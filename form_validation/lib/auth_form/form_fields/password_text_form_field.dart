import 'package:flutter/material.dart';

class PasswordTextFormField extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PasswordTextFormField();
  }
}

class _PasswordTextFormField extends State<PasswordTextFormField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        obscureText: _obscureText,
        decoration: InputDecoration(
          hintText: "Password",
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(color: Colors.black12),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(color: Colors.indigoAccent),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(color: Colors.red),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(color: Colors.red),
          ),
          prefixIcon: Icon(
            Icons.vpn_key,
            size: 20,
            color: Colors.black54,
          ),
          suffixIcon: GestureDetector(
            onTap: () {
              setState(() {
                _obscureText = !_obscureText;
              });
            },
            child: new Icon(
                _obscureText ? Icons.visibility_off : Icons.visibility),
          ),
        ),
        validator: (value) {
          return validatePassword(value);
        },
      ),
    );
  }

  String validatePassword(String value) {
    String pattern =
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
    RegExp regExp = new RegExp(pattern);
    if (!regExp.hasMatch(value)) {
      return 'Please enter valid password. '
          'Password must contain:'
          '\n* 1 Upper case letter.'
          '\n* 1 Lower case letter.'
          '\n* 1 Number.'
          '\n* 1 Special Character.';
    }
    return null;
  }
}
