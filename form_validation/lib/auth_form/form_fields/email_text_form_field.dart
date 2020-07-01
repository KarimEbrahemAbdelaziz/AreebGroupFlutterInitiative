import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class EmailTextFormField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.email,
            size: 20,
            color: Colors.black54,
          ),
          hintText: "Email",
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
        ),
        validator: (value) {
          if (!EmailValidator.validate(value)) {
            return 'Please enter a valid Email.';
          }
          return null;
        },
      ),
    );
  }
}
