
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:jobhub/views/common/common.dart';

class SignupScreen extends StatefulWidget {

  const SignupScreen({ super.key });

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {

  final TextEditingController name = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  void dispose() {
    name.dispose();
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: CustomAppBar(
          text: "Sign Up",
          child: GestureDetector(
            onTap: () => context.pop(),
            child: const Icon(CupertinoIcons.arrow_left),
          ),
        ),
      ),

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [

            const HeightSpacer(size: 50),

            ReusableText(
              text: "Hello, Welcome!",
              style: appstyle(30, Color(kDark.value), FontWeight.w600)
            ),

            ReusableText(
              text: "Fill the details to signup for an account",
              style: appstyle(16, Color(kDark.value), FontWeight.w600)
            ),

            const HeightSpacer(size: 50),

            CustomTextField(
              controller: name,
              keyboardType: TextInputType.text,
              hintText: "Full Name",
              validator: (name) {
                if (name!.isEmpty) {
                  return "Please enter a valid value";
                }
                return null;
              },
              suffixIcon: const Icon(Icons.person),
            ),

            const HeightSpacer(size: 20),

            CustomTextField(
              controller: email,
              keyboardType: TextInputType.emailAddress,
              hintText: "Email",
              validator: (email) {
                if (email!.isEmpty || !email.contains("@")) {
                  return "Please enter a valid email";
                }
                return null;
              },
              suffixIcon: const Icon(Icons.email_outlined),
            ),

            const HeightSpacer(size: 20),

            CustomTextField(
              controller: password,
              keyboardType: TextInputType.text,
              hintText: "Password",
              obscureText: true,
              validator: (password) {
                if (password!.isEmpty) {
                  return "Please enter a valid password";
                }

                if (password.length < 7) {
                  return "The password must have at least 7 characters";
                }

                return null;
              },

              // TODO: Toggle obscureText
              suffixIcon: GestureDetector(
                child: Icon(Icons.visibility, color: Color(kDark.value)),
              ),
            ),

            const HeightSpacer(size: 10),

            Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: () => context.push('/auth/login'),
                child: ReusableText(
                  text: "Login",
                  style: appstyle(14, Color(kDark.value), FontWeight.w500),
                ),
              ),
            ),

            const HeightSpacer(size: 50),

            CustomButton(
              onTap: () {},
              text: "Sign Up",
            )

          ],
        ),
      ),
    );
  }
}