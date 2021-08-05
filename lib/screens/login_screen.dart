import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1_gsg/Botton_bar_screen.dart';
import 'package:project1_gsg/widget/social_card.dart';

enum AuthMode { Signup, Login }

class LoginScreen extends StatefulWidget {
  static String routeName = "/log";


  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  AuthMode authMode = AuthMode.Login;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 110,
              ),
              Text(
                "dribbble ",
                style: TextStyle(
                  color: Colors.purple.withAlpha(55),
                  fontSize: (70),
                  fontWeight: FontWeight.bold,
                  fontFamily: "Dancing Script",
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                "Welcome ",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: (28),
                  fontWeight: FontWeight.bold,
                  fontFamily: "Sans serif",
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Sign in with your email and password  \nor continue with social media",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.purple.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(32),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.purple.withOpacity(0.2),
                        spreadRadius: 3,
                        blurRadius: 5,
                        offset: Offset(0, 5), // changes position of shadow
                      ),
                    ]),
                child: TextField(
                  decoration: InputDecoration(
                    hintStyle: TextStyle(fontSize: 17),
                    hintText: 'Enter your email',
                    suffixIcon: Icon(
                      Icons.email_outlined,
                      color: Colors.purple.withOpacity(0.9),
                    ),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(20),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.purple.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(32),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.purple.withOpacity(0.2),
                        spreadRadius: 3,
                        blurRadius: 5,
                        offset: Offset(0, 5), // changes position of shadow
                      ),
                    ]),
                child: TextField(
                  decoration: InputDecoration(
                    hintStyle: TextStyle(fontSize: 17),
                    hintText: 'Enter your password',
                    suffixIcon: Icon(
                      Icons.lock_outline,
                      color: Colors.purple.withOpacity(0.9),
                    ),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(20),
                  ),
                ),
              ),
              authMode == AuthMode.Signup
                  ? Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.purple.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(32),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.purple.withOpacity(0.2),
                                  spreadRadius: 3,
                                  blurRadius: 5,
                                  offset:
                                      Offset(0, 5), // changes position of shadow
                                ),
                              ]),
                          child: TextField(
                            decoration: InputDecoration(
                              hintStyle: TextStyle(fontSize: 17),
                              hintText: 'Enter your username ',
                              suffixIcon: Icon(
                                Icons.person_outline,
                                color: Colors.purple.withOpacity(0.9),
                              ),
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.all(20),
                            ),
                          ),
                        ),
                      ],
                    )
                  : SizedBox(
                      height: 20,
                    ),
              Row(
                children: [
                  SizedBox(

                    width: 15,
                  ),
                  Text(
                    "forget password?",
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                      fontSize: (18),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.pushReplacementNamed(context, BNbar.routeName);
                },
                child: Container(
                  width: 150,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: authMode == AuthMode.Login ?
                       Text(
                            "LogIn",
                            style: TextStyle(color: Colors.white),
                          )
                        : Text(
                            "Sign Up",
                            style: TextStyle(color: Colors.white),
                          ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),

              authMode == AuthMode.Login ? Text("__________or signup with__________",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                ),

              ):
              Text(
                "__________or signIn with__________",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                ),
              ),

              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialCard(
                    icon: "assets/icons/google-icon.svg",
                    press: () {},
                  ),
                  SocialCard(
                    icon: "assets/icons/facebook-2.svg",
                    press: () {},
                  ),
                  SocialCard(
                    icon: "assets/icons/twitter.svg",
                    press: () {},
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),


              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don’t have an account? ",
                    style: TextStyle(fontSize: (16)),
                  ),
                  GestureDetector(
                    // onTap: () => Navigator.pushNamed(context, SignUpScreen.routeName),
                    onTap: () {
                      setState(() {
                        authMode = authMode == AuthMode.Login ? AuthMode.Signup : AuthMode.Login;

                      });
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                          fontSize: (16),
                          color: Colors.purple.shade500),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
