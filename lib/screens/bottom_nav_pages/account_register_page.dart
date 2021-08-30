import 'package:flutter/material.dart';
import 'package:pwa/utils/exports.dart';
import 'bottom_nav_exports.dart';

class AccountRegisterPage extends StatelessWidget {
  const AccountRegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SecondaryAppBar(
        ctx: context,
        titleText: "Register",
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: kSpacing48),
              InputFormTextWidget(hint: 'Your email'),
              SizedBox(height: kSpacing24),
              InputFormTextWidget(hint: 'First name'),
              SizedBox(height: kSpacing24),
              InputFormTextWidget(hint: 'Last name'),
              SizedBox(height: kSpacing24),
              InputFormTextWidget(hint: 'Password'),
              SizedBox(height: kSpacing40),
              MainButton(
                  func: (val) {}, ctx: context, title: 'CREATE AND ACCOUNT'),
              SizedBox(height: kSpacing22),
              Text(
                'or log in to your account',
                style: TextStyle(
                    fontSize: 14, fontWeight: FontWeight.w500, color: kdark),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
