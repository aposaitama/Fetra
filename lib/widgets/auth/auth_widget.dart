import 'package:dart_simple/widgets/auth/main_screen/main_screen_widget.dart';
import 'package:flutter/material.dart';

class AuthWidget extends StatefulWidget {
  const AuthWidget({super.key});

  @override
  State<AuthWidget> createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<AuthWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Login to your account',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        children: const [
          _HeaderWidget(),
        ],
      ),
    );
  }
}

class _HeaderWidget extends StatelessWidget {
  const _HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final textstyleHeader1 = const TextStyle(color: Colors.black, fontSize: 30);
    final textstyleHeader2 = const TextStyle(color: Colors.black, fontSize: 20);
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Text('Welcome to FETRA', style: textstyleHeader1),
          Text('The app, where you can find fellow traveler',
              style: textstyleHeader2),
          _FormWidget(),
          SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}

class _FormWidget extends StatefulWidget {
  const _FormWidget({super.key});

  @override
  State<_FormWidget> createState() => __FormWidgetState();
}

class __FormWidgetState extends State<_FormWidget> {
  final _loginTextController = TextEditingController(text: 'admin');
  final _passwordTextContoller = TextEditingController(text: '121212');

  void _auth() {
    final login = _loginTextController.text;
    final password = _passwordTextContoller.text;
    if (login == 'admin' && password == '121212') {
      print('admin rules');

      Navigator.of(context).pushReplacementNamed('/main_screen');
    } else {
      print('user rules');
    }
  }

  void _recoverPassword() {
    print('trunna to recover passwd');
  }

  @override
  Widget build(BuildContext context) {
    final formdecoration = const InputDecoration(
        border: OutlineInputBorder(
            borderSide:
                BorderSide(color: Color.fromARGB(221, 47, 255, 0), width: 0.0)),
        contentPadding: EdgeInsets.symmetric(horizontal: 10));
    final buttonTextStyle = const TextStyle(color: Colors.black, fontSize: 20);
    final buttonStyle = ButtonStyle(
        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6), // <-- Radius
        )),
        backgroundColor:
            MaterialStatePropertyAll(Color.fromARGB(255, 123, 177, 239)));
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Username'),
          TextField(
            controller: _loginTextController,
            decoration: formdecoration,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Password',
          ),
          TextField(
            controller: _passwordTextContoller,
            decoration: formdecoration,
            obscureText: true,
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                style: buttonStyle,
                onPressed: _auth,
                child: Text(
                  'Login',
                  style: buttonTextStyle,
                ),
              ),
              TextButton(
                onPressed: _recoverPassword,
                child: Text(
                  'Reset password',
                  style: buttonTextStyle,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            'If you do not have an account, registering for an account is free and simple',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(
            height: 10,
          ),
          TextButton(
            style: buttonStyle,
            onPressed: () {},
            child: Text(
              'Register',
              style: buttonTextStyle,
            ),
          ),
        ],
      ),
    );
  }
}
