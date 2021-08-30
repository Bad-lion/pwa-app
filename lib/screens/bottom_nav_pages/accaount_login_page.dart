import 'package:flutter/material.dart';
import 'bottom_nav_exports.dart';

class AccaountPage extends StatefulWidget {
  AccaountPage({Key? key}) : super(key: key);

  @override
  _AccaountPageState createState() => _AccaountPageState();
}

class _AccaountPageState extends State<AccaountPage> {
  bool _remeberBool = true;

  @override
  Widget build(BuildContext context) {
    return DismissKeyboard(
      child: Scaffold(
        appBar:
            SecondaryAppBar(titleText: 'Login', ctx: context, backBtn: false),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: kSpacing48),
                Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      InputFormTextWidget(hint: 'Your Email'),
                      SizedBox(height: kSpacing24),
                      InputFormTextWidget(hint: 'Password'),
                      SizedBox(height: kSpacing40),
                      Row(
                        children: [
                          Checkbox(
                              value: _remeberBool,
                              onChanged: (value) {
                                setState(() {
                                  _remeberBool = !_remeberBool;
                                });
                              }),
                          Text('Remeber me', style: kItemTitle2TS)
                        ],
                      ),
                      SizedBox(height: kSpacing80),
                      MainButton(func: (ctx) {}, ctx: context, title: 'LOGIN'),
                      SizedBox(height: kSpacing40),
                      Text('Forgotten password?',
                          textAlign: TextAlign.center, style: kUnderLineTS),
                      SizedBox(height: 38),
                      Text(
                        'Don’t have an account yet?',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: kFontSize16,
                            fontWeight: FontWeight.w600,
                            color: kprimeryColor),
                      ),
                      SizedBox(height: kSpacing24),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AccountRegisterPage(),
                            ),
                          );
                        },
                        child: Text('Register now',
                            textAlign: TextAlign.center, style: kUnderLineTS),
                      ),
                      SizedBox(height: kSpacing32),
                      Text(
                        'Looking for an order?',
                        style: kitemSizeTS,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: kSpacing16),
                      Container(
                        decoration: BoxDecoration(
                            border:
                                Border.all(width: 2, color: ksecondaryColor)),
                        height: 52,
                        margin: EdgeInsets.symmetric(horizontal: 65),
                        child: Center(
                          child: Text(
                            'ORDERS AND RETURNS',
                            style: TextStyle(
                              color: kdark,
                              fontSize: kFontSize16,
                              fontWeight: kFontWeight600,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
