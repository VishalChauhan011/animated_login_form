import 'package:flutter/material.dart';
import 'primary_button.dart';
import 'custom_button.dart';
import 'input_with_icon.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  int _pageState = 0;
  Color _backgroundColor = Colors.white;
  Color _headingColor = const Color(0xFF40284A);
  double _loginOpacity = 1;

  double _loginWidth = 0;
  double _loginTop = 100;

  double _loginYOFFSet = 0;
  double _loginXOFFSet = 0;
  double _registerOFFSet = 0;

  double windowHeight = 0;
  double windowWidth = 0;

  @override
  Widget build(BuildContext context) {
    windowHeight = MediaQuery.of(context).size.height;
    windowWidth = MediaQuery.of(context).size.width;

    switch (_pageState) {
      case 0:
        _backgroundColor = Colors.white;
        _headingColor = const Color(0xFF40284A);

        _loginWidth = windowWidth;
        _loginOpacity = 1;
        _loginTop = 100;

        _loginYOFFSet = windowHeight;
        _loginXOFFSet = 0;
        _registerOFFSet = windowHeight;
        break;
      case 1:
        _backgroundColor = const Color(0xFFD34C59);
        _headingColor = Colors.white;

        _loginWidth = windowWidth;
        _loginOpacity = 1;
        _loginTop = 90;

        _loginYOFFSet = 270;
        _loginXOFFSet = 0;
        _registerOFFSet = windowHeight;
        break;
      case 2:
        _backgroundColor = const Color(0xFFD34C59);
        _headingColor = Colors.white;

        _loginWidth = windowWidth - 40;
        _loginOpacity = 0.7;
        _loginTop = 80;

        _loginYOFFSet = 250;
        _loginXOFFSet = 20;
        _registerOFFSet = 270;
        break;
    }

    return Stack(
      children: [
        AnimatedContainer(
          curve: Curves.fastLinearToSlowEaseIn,
          duration: const Duration(
            milliseconds: 1000,
          ),
          color: _backgroundColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    _pageState = 0;
                  });
                },
                child: AnimatedContainer(
                  duration: const Duration(
                    milliseconds: 1000,
                  ),
                  curve: Curves.fastLinearToSlowEaseIn,
                  margin: EdgeInsets.only(
                    top: _loginTop,
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Smart Learn',
                        style: TextStyle(
                          fontFamily: 'Nunito',
                          color: _headingColor,
                          fontSize: 45,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 15),
                        child: Text(
                          'Feel free to learn and implement.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            color: _headingColor,
                            fontFamily: 'Nunito',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsetsDirectional.all(25),
                child: Center(
                  child: Image.asset('assets/images/splash.png'),
                ),
              ),
              Container(
                margin:const EdgeInsetsDirectional.all(32),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      if (_pageState != 0) {
                        _pageState = 0;
                      } else {
                        _pageState = 1;
                      }
                    });
                  },
                  child: PrimaryButton(
                    textButton: 'Get Started',
                  ),
                ),
              ),
            ],
          ),
        ),
        AnimatedContainer(
          duration: const Duration(
            milliseconds: 1000,
          ),
          width: _loginWidth,
          curve: Curves.fastLinearToSlowEaseIn,
          transform: Matrix4.translationValues(_loginXOFFSet, _loginYOFFSet, 1),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            color: Colors.white.withOpacity(_loginOpacity),
          ),
          child: Column(
            children: [

              Container(
                margin:const EdgeInsets.only(bottom: 32,top: 32),
                child: const Text(
                  "Login To Continue",
                  style: TextStyle(
                      fontSize: 20
                  ),
                ),
              ),
              InputWithIcon(
                icon: Icons.email,
                hint: "Enter Email...",
              ),
              const SizedBox(height: 20,),
              InputWithIcon(
                icon: Icons.vpn_key,
                hint: "Enter Password...",
              ),
              Container(
                margin:const EdgeInsetsDirectional.only(start: 32,top: 32,end: 32),
                child: PrimaryButton(textButton: 'LogIn'),
              ),
              GestureDetector(
                onTap: (){
                  setState(() {
                    _pageState=2;
                  });
                },
                child: Container(
                  margin:const EdgeInsetsDirectional.only(start: 32,top: 20,end: 32),
                  child: CustomButton(
                    txtButton: 'Register',
                  ),
                ),
              ),
            ],
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              _pageState = 1;
            });
          },
          child: AnimatedContainer(
            duration: const Duration(
              milliseconds: 2000,
            ),
            curve: Curves.fastLinearToSlowEaseIn,
            transform: Matrix4.translationValues(0, _registerOFFSet, 1),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              color: Colors.white,
            ),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 32,top: 32),
                  child:const Text(
                    "Create a New Account",
                    style: TextStyle(
                        fontSize: 20
                    ),
                  ),
                ),
                InputWithIcon(
                  icon: Icons.email,
                  hint: "Enter Email...",
                ),
               const SizedBox(height: 20,),
                InputWithIcon(
                  icon: Icons.vpn_key,
                  hint: "Enter Password...",
                ),
                Container(
                  margin: const EdgeInsetsDirectional.only(start: 32,end: 32,top: 32),
                  child: PrimaryButton(
                    textButton: 'Create Account',
                  ),
                ),
               const SizedBox(height: 20,),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      _pageState=1;
                    });
                  },
                  child: Container(
                    margin: const EdgeInsetsDirectional.only(start: 32,end: 32),
                    child: CustomButton(
                      txtButton: 'Back to LogIn',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
