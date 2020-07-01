import 'package:flutter/material.dart';
import 'form_fields/password_text_form_field.dart';
import 'form_fields/phone_number_text_form_field.dart';
import 'form_fields/email_text_form_field.dart';
import 'form_fields/name_text_form_field.dart';

// SignUp Form widget.
class SignUpForm extends StatefulWidget {
  @override
  SignUpFormState createState() {
    return SignUpFormState();
  }
}

// State class that holds the data related to the form.
class SignUpFormState extends State<SignUpForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  final _formKey = GlobalKey<FormState>();
  bool _auto_validate = false;

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Container(
      padding: EdgeInsets.only(top: 32, left: 16, right: 16),
      child: Form(
        key: _formKey,
        autovalidate: _auto_validate,
        child: Column(
          children: <Widget>[
            NameTextFormField(),
            SizedBox(height: 16),
            EmailTextFormField(),
            SizedBox(height: 16),
            PhoneNumberTextFormField(),
            SizedBox(height: 16),
            PasswordTextFormField(),
            Container(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              margin: EdgeInsets.symmetric(vertical: 64.0),
              child: ButtonTheme(
                minWidth: double.infinity,
                height: 45.0,
                child: RaisedButton(
                  color: Colors.indigo,
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      Scaffold.of(context).showSnackBar(
                        SnackBar(
                          duration: Duration(seconds: 2),
                          content: Text('Your data is Correct 🎉🚀'),
                        ),
                      );
                    } else {
                      setState(() => _auto_validate = true);
                    }
                  },
                  child: Text('REGISTER'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
