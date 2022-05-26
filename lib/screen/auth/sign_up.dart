import 'package:flutter/material.dart';
import 'package:talk/screen/auth/login.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({Key? key}) : super(key: key);

  final GlobalKey<FormState> _signUpKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 19, 25, 31),
        // ignore: avoid_unnecessary_containers
        body: Container(
          child: ListView(
            shrinkWrap: true,
            children: [
              const SizedBox(height: 50),
              // ignore: avoid_unnecessary_containers
              Container(
                child: const Center(
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 1.8,
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.only(top: 40),
                child: Form(
                  // ignore: unnecessary_this
                  key: this._signUpKey,
                  child: ListView(
                    children: [
                      _commonTextFormField(hintText: 'Email'),
                      _commonTextFormField(hintText: 'Password'),
                      _commonTextFormField(hintText: 'Confirm Password'),
                      _signUpButton(context),
                    ],
                  ),
                ),
              ),
              const Center(
                child: Text(
                  'Or Continue With',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
              _socialMediaIntegrationButton(context),

              _switchToLogin(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _commonTextFormField({required String hintText}) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 40),
      child: TextFormField(
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: const TextStyle(color: Colors.white),
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 2.0),
            )),
      ),
    );
  }

  Widget _signUpButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20, bottom: 50),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: Size(MediaQuery.of(context).size.width - 60, 30),
          elevation: 5.0,
          primary: Color.fromRGBO(57, 60, 80, 1),
          padding: EdgeInsets.only(
            left: 20,
            right: 20,
            top: 7,
            bottom: 7,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        // ignore: sort_child_properties_last
        child: const Text(
          'Sign Up',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        onPressed: (() {}),
      ),
    );
  }

  Widget _socialMediaIntegrationButton(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/google.png",
            width: 50.0,
          ),
          const SizedBox(
            width: 40,
          ),
          Image.asset(
            "assets/images/facebook.png",
            width: 50.0,
          ),
        ],
      ),
    );
  }

  Widget _switchToLogin(BuildContext context) {
    return ElevatedButton(
      // ignore: sort_child_properties_last
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            'Already have an account?',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              letterSpacing: 1.8,
            ),
          ),
          SizedBox(
            width: 10,
          
          ),
          Text(
            'Login',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 15,
              letterSpacing: 1.8,
            ),
          ),
        ],
      ),
      style: ElevatedButton.styleFrom(
        elevation: 0.0,
        primary: Color.fromRGBO(34, 40, 60, 1),
      ),
      onPressed: (() {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return LoginPage();
        }));
      }),
    );
  }
}
