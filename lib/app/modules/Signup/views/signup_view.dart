import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fore_cash/app/data/Notificationkey.dart';
import 'package:fore_cash/app/modules/Login/views/login_view.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(Appcolor.bgcolor),
        body: Column(
          children: [
            Container(
              height: 50,
              width: 200,
              margin: EdgeInsets.only(top: 35),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/logo.png"), fit: BoxFit.fill),
                // color: Colors.teal,
              ),
            ),
            Align(
              child: Container(
                margin: EdgeInsets.only(top: 25),
                child: Column(
                  children: [
                    Text(
                      "Get Started with Forecash",
                      style: GoogleFonts.montserrat(
                          fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Create your New Account",
                      style: GoogleFonts.montserrat(
                          color: Color(Appcolor.txtgrey),
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 35),
            textbox(
              text: "Full Name",
              hinttxt: "Name",
            ),
            SizedBox(height: 30),
            textbox(
              text: "Email",
              hinttxt: "Email address",
            ),
            SizedBox(height: 30),
            passwordbox(
              text: "Password",
              hinttxt: "Password",
            ),
            Spacer(),
            bottombtn(),
          ],
        ));
  }

  Widget textbox({required String text, required String hinttxt}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: GoogleFonts.montserrat(
            fontSize: 16,
            color: Color(Appcolor.txtgrey),
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 5),
        Container(
          height: 50,
          width: Get.width - 50,
          decoration: BoxDecoration(
            color: Color(Appcolor.boxcolor),
            borderRadius: BorderRadius.circular(8),
          ),
          child: TextFormField(
            validator: (value) {
              if (value!.isEmpty) {
                return "Email can't be Empty";
              }
              return null;
            },
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 10),
              hintText: hinttxt,
              hintStyle: GoogleFonts.montserrat(
                  fontSize: 16, fontWeight: FontWeight.w400),
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }

  Widget passwordbox({required String text, required String hinttxt}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: GoogleFonts.montserrat(
            fontSize: 16,
            color: Color(Appcolor.txtgrey),
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 5),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          height: 50,
          width: Get.width - 50,
          decoration: BoxDecoration(
            color: Color(Appcolor.boxcolor),
            borderRadius: BorderRadius.circular(8),
          ),
          child: TextFormField(
            validator: (value) {
              if (value!.isEmpty) {
                return "Password can't be Empty";
              } else if (value.length < 8) {
                return "Password Length Shoul Be 8 Latters";
              }
              return null;
            },
            obscureText: true,
            decoration: InputDecoration(
              suffixIcon: Icon(CupertinoIcons.eye_fill),
              hintText: hinttxt,
              hintStyle: GoogleFonts.montserrat(
                  fontSize: 16, fontWeight: FontWeight.w400),
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }

  Widget bottombtn() {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 25,
      ),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 50,
              width: Get.width - 50,
              decoration: BoxDecoration(
                color: Color(Appcolor.green),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                  child: Text(
                "SignUp",
                style: GoogleFonts.montserrat(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(Appcolor.bgcolor)),
              )),
            ),
          ),
          SizedBox(height: 10),
          GestureDetector(
            onTap: () {
              Get.to(LoginView());
            },
            child: RichText(
              text: TextSpan(
                text: 'Already Have An Account? ',
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: Color(Appcolor.txtgrey)),
                children: <TextSpan>[
                  TextSpan(
                      text: 'Login',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(Appcolor.green))),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
