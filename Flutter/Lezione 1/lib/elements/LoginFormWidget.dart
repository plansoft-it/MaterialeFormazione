import 'package:flutter/material.dart';
import 'package:flutter_app/generated/l10n.dart';

class LoginFormWidget extends StatelessWidget {
  const LoginFormWidget(
      {Key key, @required this.controller})
      : super(key: key);

  final dynamic controller;

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment:
        CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          emailField(context),
          SizedBox(height: 20),
          passwordField(context),
        ]
    );
  }

  Semantics emailField(BuildContext context) {
    return Semantics(
        child: TextFormField(
          key: Key('et_email_address'),
          keyboardType: TextInputType.emailAddress,
          onSaved: (input) => controller.userAccount.emailAddress  = input,
          initialValue: '',
          validator: (input) => controller.isValidEmail(input) ? null : S.of(context).must_be_email_address,
          decoration: InputDecoration(
            labelText: S.of(context).email,
            labelStyle: TextStyle(
                color: Theme.of(context)
                    .accentColor),
            contentPadding: EdgeInsets.all(12),
            hintText: 'johndoe@gmail.com',
            hintStyle: TextStyle(
                color: Theme.of(context)
                    .focusColor
                    .withOpacity(0.7)),
            prefixIcon: Icon(
                Icons.alternate_email,
                color: Theme.of(context)
                    .accentColor),
            border: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Theme.of(context)
                        .focusColor
                        .withOpacity(0.2))),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Theme.of(context)
                        .focusColor
                        .withOpacity(0.5))),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Theme.of(context)
                        .focusColor
                        .withOpacity(0.2))),
          ),
        ),
        label: 'et_username');
  }

  Semantics passwordField(BuildContext context) {
    return  Semantics(
        child: TextFormField(
          key: Key('login_Password'),
          keyboardType: TextInputType.text,
          onSaved: (input) => controller.userAccount.password = input,
          validator: (input) => input.length < 3
              ? S
              .of(context)
              .should_be_more_than_3_characters
              : null,
          obscureText: controller.hidePassword,
          decoration: InputDecoration(
            labelText: S.of(context).password,
            labelStyle: TextStyle(
                color: Theme.of(context)
                    .accentColor),
            contentPadding: EdgeInsets.all(12),
            hintText: '••••••••••••',
            hintStyle: TextStyle(
                color: Theme.of(context)
                    .focusColor
                    .withOpacity(0.7)),
            prefixIcon: Icon(Icons.lock_outline,
                color: Theme.of(context)
                    .accentColor),
            suffixIcon: Semantics(
                child: IconButton(
                  onPressed: () {
                    /*
                    setState(() {
                      controller.hidePassword =
                      !controller.hidePassword;
                    });
                     */
                  },
                  color: Theme.of(context)
                      .focusColor,
                  icon: Icon(controller.hidePassword
                      ? Icons.visibility
                      : Icons.visibility_off),
                ),
                label: 'btn_show_password'),
            border: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Theme.of(context)
                        .focusColor
                        .withOpacity(0.2))),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Theme.of(context)
                        .focusColor
                        .withOpacity(0.5))),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Theme.of(context)
                        .focusColor
                        .withOpacity(0.2))),
          ),
        ),
        label: 'et_password');
  }

}