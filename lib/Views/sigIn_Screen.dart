import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:newsapp/CustomWidgets/Buttons/round_button.dart';
import 'package:newsapp/CustomWidgets/Dropsdowns/dropsdowns.dart';
import 'package:newsapp/CustomWidgets/Textfields/textfileds.dart';
import 'package:newsapp/CustomWidgets/Texts/text.dart';

class signIn_secreen extends StatefulWidget {
  const signIn_secreen({Key? key}) : super(key: key);

  @override
  State<signIn_secreen> createState() => _signIn_secreenState();
}

class _signIn_secreenState extends State<signIn_secreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final contactController = TextEditingController();
  final formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    var appSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(13.0),
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: appSize.height * 0.09),
                text(
                  title: "SignIn",
                  textColor: Colors.deepPurple,
                  fontSize: appSize.width * 0.09,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(height: appSize.height * 0.09),
                textFiled(
                  hintText: 'Enter Your Email',
                  inputType: TextInputType.emailAddress,
                  controller: emailController,
                  regexPattern: r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
                  validator: (value) {
                    if ( value.isEmpty) {
                      return "Enter Email";
                    }
                    else if (!RegExp(r'^[\w-.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
                      return "Enter valid Email";
                    }
                    return null;
                  },
                  onChange: (value) {},
                  borderColor: Colors.black,
                  textColor: Colors.black,
                  focusedBorderColor: Colors.black,
                  radius: appSize.height * 0.03,
                ),
                SizedBox(height: appSize.height * 0.04),
                textFiled(
                  hintText: 'Enter Your Password',
                  inputType: TextInputType.visiblePassword,
                  controller: passwordController,
                  regexPattern: r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d@$!%*?&]{8,}$',
                  validator: (value) {
                    if (value.isEmpty ) {
                      return "Enter Password";
                    }
                    else if (!RegExp(r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d@$!%*?&]{6,}$').hasMatch(value)) {
                      return "Password must be at least 6 characters  ";
                    }
                    return null;
                  },
                  onChange: (value) {},
                  borderColor: Colors.black,
                  textColor: Colors.black,
                  focusedBorderColor: Colors.black,
                  radius: appSize.height * 0.03,
                ),
                SizedBox(height: appSize.height * 0.05),
                textFiled(
                  hintText: 'Contact Number',
                  inputType: TextInputType.phone,
                  controller: contactController,
                  regexPattern: r'^\+?[1-9]\d{1,14}$',
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Enter Contact Number";
                    }
                    else if (!RegExp(r'^\+?[1-9]\d{1,14}$').hasMatch(value)) {
                      return "Enter valid Contact Number";
                    }
                    return null;
                  },
                  onChange: (value) {},
                  borderColor: Colors.black,
                  textColor: Colors.black,
                  focusedBorderColor: Colors.black,
                  radius: appSize.height * 0.03,
                ),
                SizedBox(height: appSize.height * 0.05),
                dropsDowns(
                  borderColor: Colors.black,
                  focusedBorderColor: Colors.black,
                  title1: 'user',
                  title2: 'login',
                  title3: 'admin',
                  radius: appSize.height * 0.03,
                  validator: (value) {
                    if (value == null) {
                      return "Please Select Option";
                    }
                    return null;
                  },
                  radius2: appSize.height * 0.03,
                  hintText: 'Select Option',
                ),
                SizedBox(height: appSize.height * 0.05),
                RoundButton(
                  title: "SignIn",
                  onTap: () {
                    if (formKey.currentState!.validate()) {

                    }
                  },
                  color: Colors.deepPurple,
                  textColor: Colors.white,
                  buttonHeight: appSize.height * 0.06,
                  buttonWidth: appSize.width * 0.95,
                  radius: appSize.height * 0.03,
                  fontSize: appSize.height * 0.024,
                  fontFamily: 'Pacifico',
                ),
                SizedBox(height: appSize.height * 0.02),
                Text("or"),
                SizedBox(height: appSize.height * 0.02),
                RoundButton(
                  title: "login",
                  onTap: () {

                      context.go("/login");

                  },
                  color: Colors.deepPurple,
                  textColor: Colors.white,
                  buttonHeight: appSize.height * 0.06,
                  buttonWidth: appSize.width * 0.95,
                  radius: appSize.height * 0.03,
                  fontSize: appSize.height * 0.024,
                  fontFamily: 'Pacifico',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

