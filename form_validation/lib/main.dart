import 'package:flutter/material.dart';
import 'auth_form/sign_up_form.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Registration';

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
          backgroundColor: Colors.indigo,
        ),
        body: SignUpForm(),
      ),
    );
  }
}
