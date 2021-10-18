import 'package:flutter/material.dart';
import 'package:fore_cash/app/data/Notificationkey.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/connect_bank_account_controller.dart';

class ConnectBankAccountView extends GetView<ConnectBankAccountController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(Appcolor.bgcolor),
        body: SingleChildScrollView(
          child: Column(
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
                        "Connect Bank Account",
                        style: GoogleFonts.montserrat(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30),
              searchBox(hinttxt: "Search For Your Bank"),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: GridView.builder(
                    itemCount: 10,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisExtent: 100,
                      mainAxisSpacing: 10,
                    ),
                    itemBuilder: (context, ind) {
                      return bankdata();
                    }),
              )
            ],
          ),
        ));
  }

  Widget searchBox({required String hinttxt}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 5),
        Container(
          padding: EdgeInsets.only(left: 10),
          height: 50,
          width: Get.width - 50,
          decoration: BoxDecoration(
            color: Color(Appcolor.boxcolor),
            borderRadius: BorderRadius.circular(8),
          ),
          child: TextFormField(
            decoration: InputDecoration(
              icon: Icon(Icons.search),
              contentPadding: EdgeInsets.symmetric(horizontal: 0),
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

  Widget bankdata() {
    return Container(
      height: 100,
      width: Get.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.black),
      ),
      child: Image.asset("assets/bank/bank of america.png"),
    );
  }
}
