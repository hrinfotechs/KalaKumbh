import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kalakumbh/ext/extentions.dart';
import 'package:kalakumbh/pages/base_page.dart';
import 'package:kalakumbh/route/routes.dart';
import 'package:kalakumbh/widget/common_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return BasePage(
      title: 'Login',
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Padding(
            //   padding: EdgeInsets.all(16.0),
            //   child: Image(
            //     image: AssetImage('assets/images/nacho.png'),
            //     height: 200,
            //     width: double.infinity,
            //     fit: BoxFit.fill,
            //   ),
            // ),
            AppTextField(
              controller: _emailController,
              hint: 'Email',
              validator: (value) {
                if (value is String && value.isEmpty) {
                  return 'Please enter your email';
                } else if (value is String && !value.isEmail) {
                  return 'Please enter valid Email';
                }
                return null;
              },
            ),
            SizedBox(height: 10.h),
            AppTextField(
              isSecure: !_passwordVisible,
              controller: _passwordController,
              hint: 'Password',
              validator: (value) {
                if (value is String && value.isEmpty) {
                  return 'Please enter your Password';
                } else if (value is String && !value.isPassword) {
                  return 'Please enter valid Password';
                }
                return null;
              },
              suffixIcon: IconButton(
                icon: Icon(
                  _passwordVisible ? Icons.visibility : Icons.visibility_off,
                  color: Colors.grey,
                ),
                onPressed: () {
                  setState(() {
                    _passwordVisible = !_passwordVisible;
                  });
                },
              ),
            ),
            SizedBox(height: 10.h),
            AppButton(
              title: 'Login',
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, AppRoutes.login, (route) => false);
              },
            ),
            SizedBox(height: 16.h),
          ],
        ),
      ),
    );
  }
}
