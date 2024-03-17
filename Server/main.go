package main

import (
	"database/sql"
	//"math/rand"
	"net/http"
	//"time"
	"fmt"
	_ "github.com/go-sql-driver/mysql"
	"github.com/labstack/echo"
	"github.com/labstack/echo/middleware"
)

type User struct {
	ID       int    `json:"id"`
	Username string `json:"username"`
	Password string `json:"password"`
	Email    string `json:"email"`
}

// createUser handles the creation of a new user.
func createUser(c echo.Context) error {
	username := c.FormValue("username")
	password := c.FormValue("password")
	email := c.FormValue("email")

	// Open database connection
	db, err := sql.Open("mysql", "root:root@tcp(localhost:3306)/cai")
	if err != nil {
		return err
	}
	defer db.Close()

	// Begin database transaction
	tx, err := db.Begin()
	if err != nil {
		return err
	}

	// Check if username already exists
	var count int
	err = tx.QueryRow("SELECT COUNT(*) FROM users WHERE username=?", username).Scan(&count)
	if err != nil {
		tx.Rollback()
		return err
	}
	if count > 0 {
		tx.Rollback()
		return c.JSON(http.StatusBadRequest, map[string]string{"message": "Username already exists"})
	}

	// Insert new user
	_, err = tx.Exec("INSERT INTO users (username, password, email) VALUES (?, ?, ?)", username, password, email)
	if err != nil {
		tx.Rollback()
		return err
	}

	// Commit transaction
	err = tx.Commit()
	if err != nil {
		tx.Rollback()
		return err
	}

	return c.JSON(http.StatusCreated, map[string]string{"message": "User created successfully"})
}

// login handles user login.
func login(c echo.Context) error {
	var data map[string]string
	if err:=c.Bind(&data) ; err!=nil{
		return err
	}

	db, err := sql.Open("mysql", "root:root@tcp(localhost:3306)/cai")
	if err != nil {
		return err
	}
	defer db.Close()

	var user User
	rows,err := db.Query("SELECT id, username,email FROM users WHERE username=? AND password=?", data["username"], data["password"])
	rowsCount:=0
	for rows.Next(){
		rowsCount++
		var id int 
		var username string
		var email string
		if err:=rows.Scan(&id,&username,&email);

		err!=nil{
			panic(err.Error())
		}
		fmt.Println(id)
		user.ID=id 
		user.Username=username
		user.Email=email
	}
	if err != nil {
		return c.JSON(http.StatusUnauthorized, map[string]string{"message": "Invalid username or password"})
	}

	return c.JSON(http.StatusOK, user)
}
/* func resetPassword(c echo.Context) error {
// forgotPassword handles the "forgot password" functionality.
username := c.FormValue("username")
newPassword := generateRandomPassword(8)

db, err := sql.Open("mysql", "root:root@tcp(localhost:3306)/cai")
if err != nil {
	return err
}
defer db.Close()

// Update the user's password in the database
_, err = db.Exec("UPDATE users SET password=? WHERE username=?", newPassword, username)
if err != nil {
	return err
}

// Send the new password to the user's email (not implemented in this example)

return c.JSON(http.StatusOK, map[string]string{"message": "Password reset successful. New password sent to email."})
}

func generateRandomPassword(length int) string {
	rand.Seed(time.Now().UnixNano())
	charset := "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
	password := make([]byte, length)
	for i := range password {
		password[i] = charset[rand.Intn(len(charset))]
	}
	return string(password)
}


 */
 func main() {
	e := echo.New()

	// Add CORS middleware
	e.Use(middleware.CORSWithConfig(middleware.CORSConfig{
		AllowOrigins: []string{"*"}, // Replace with your Flutter frontend URL
		AllowHeaders: []string{echo.HeaderOrigin, echo.HeaderContentType, echo.HeaderAccept},
	}))

	// Define API endpoints
	e.POST("/login", login)
	e.POST("/createUser", createUser)
	// e.POST("/resetPassword", resetPassword)

	// Start the server
	e.Logger.Fatal(e.Start(":8080"))
}