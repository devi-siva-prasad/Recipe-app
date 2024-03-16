import 'dart:ui';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:recipe/afganiMutton.dart';
import 'package:recipe/createAccount.dart';
import 'dashboard_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:convert';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  Future<void> login() async {
    final String username = usernameController.text;
    final String password = passwordController.text;
    final Uri url = Uri.parse('http://localhost:8080/login');
    final Map<String, String> header = {
      "Content-type": "application/json",
    };

    try {
      print(json);
      final response = await http.post(url,
          headers: header,
          body: '{"username":"$username","password":"$password"}');

      if (response.statusCode == 200) {
        // Handle successful login
        print(response.body);
        print('Login successful!');
        Map<String, dynamic> data = json.decode(response.body);
        // String user = data['username'];
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => DashboardPage(user: data['username'])));
      } else {
        // Handle failed login
        print('Login failed. Please try again.');
      }
    } catch (error) {
      print('An error occurred: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/login.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 100, left: 40, right: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 550,
                  height: 380,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Color.fromARGB(255, 229, 232, 235),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Login",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 35,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: 15.0),
                      // Text("Sign into Continue",
                      //     style: GoogleFonts.poppins(
                      //         textStyle:
                      //             TextStyle(fontWeight: FontWeight.w400))),
                      SizedBox(height: 30.0),
                      Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: TextField(
                          controller: passwordController,
                          scrollPadding: EdgeInsets.all(20),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 12.0),
                            icon: Icon(
                              Icons.mail,
                              color: Color.fromARGB(253, 0, 0, 0),
                            ),
                            labelText: 'username',
                            filled: false,
                            fillColor: Color.fromARGB(255, 255, 255, 255)
                                .withOpacity(1),
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      SizedBox(height: 30.0),
                      Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: TextField(
                          controller: usernameController,
                          scrollPadding: EdgeInsets.all(20),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 12.0),
                            icon: Icon(
                              Icons.lock,
                              color: Color.fromARGB(253, 0, 0, 0),
                            ),
                            labelText: 'password',
                            filled: false,
                            fillColor: Color.fromARGB(255, 255, 255, 255)
                                .withOpacity(1),
                            border: OutlineInputBorder(),
                          ),
                          obscureText: true,
                        ),
                      ),
                      SizedBox(height: 30.0),
                      ElevatedButton(
                        onPressed: login,
                        child: Text('LOGIN'),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 0, 0, 0),
                            foregroundColor: Colors.white),
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
                SizedBox(height: 16.0),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {
                          // Implement forgot password functionality
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AfganiMutton()));
                        },
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          // Implement create account functionality
                          // Navigator.pushReplacement(
                          //     context,
                          //     MaterialPageRoute(
                          //     builder: (context) => SignUp()));
                          showModalBottomSheet(
                              isScrollControlled: true,
                              context: context,
                              builder: (context) => SignUpPage());
                        },
                        child: Text(
                          'Create new Account',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
