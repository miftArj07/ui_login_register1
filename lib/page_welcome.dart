import 'package:flutter/material.dart';
import 'package:register_login_screen_ui/page_login.dart';
import 'package:register_login_screen_ui/page_register.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: Column(
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text('WELCOME',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
                  SizedBox(height: 20),
                  Text(
                      'UI Register, Login dan Splashscreen menggunakan flutter',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey[700], fontSize: 15))
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height / 3,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/welcome.png'))),
              ),
              SizedBox(height: 100),
              Column(
                children: <Widget>[
                  MaterialButton(
                    height: 60,
                    minWidth: double.infinity,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(50)),
                    child: Text('Login',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 18)),
                  ),
                  SizedBox(height: 20),
                   MaterialButton(
                    height: 60,
                    minWidth: double.infinity,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignUpPage()));
                    },
                    color: Color(0xff0095ff),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    child: Text('Sign Up',
                        style: TextStyle(color: Colors.white,
                            fontWeight: FontWeight.w600, fontSize: 18)),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
