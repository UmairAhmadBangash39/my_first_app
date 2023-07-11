import 'package:flutter/material.dart';
import 'package:my_first_app/create_account_screen.dart';
import 'package:my_first_app/login_screen.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerifyCodeScreen extends StatefulWidget {
  const VerifyCodeScreen({super.key});

  @override
  State<VerifyCodeScreen> createState() => _VerifyCodeScreenState();
}

class _VerifyCodeScreenState extends State<VerifyCodeScreen> {
  final String requiredNumber = "1234";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("images/topleftline.png",),
                    Image.asset("images/toprightline.png"),
                  ],
                ),
                Center(
                  child: Image.asset(
                    "images/login.png",
                    width: 110.51,
                    height: 107.24,
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
                Column(
                  children: [
                    Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 21),
                          child: Text(
                            "Verify Code",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 21),
                          child: Text(
                            "The Conformation Code Was Sent email",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 80),
                      child: PinCodeTextField(
                        appContext: context,
                        length: 4,
                        onChanged: (value) {
                          print("value");
                        },
                        pinTheme: PinTheme(
                          //fieldOuterPadding: EdgeInsets.symmetric(horizontal: 15),
                          shape: PinCodeFieldShape.box,
                          borderRadius: BorderRadius.circular(10),
                          fieldHeight: 50,
                          fieldWidth: 50,
                          inactiveColor: Colors.orange,
                          selectedColor: Colors.orange,
                          activeColor: Colors.orange,
                        ),
                        onCompleted: (value) {
                          if (value == requiredNumber) {
                            print("valid pin");
                          } else {
                            print("invalid pin");
                          }
                          ;
                        },
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),

                        InkWell(
                            onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (ctx)=>LoginScreen()));
                      },
                      child: Container(
                        width: 327,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13),
                            gradient: LinearGradient(colors: [
                              Color(0xffF2994A),
                              Color(0xffF2A44A),
                              Color(0xffF2C94C),
                            ]),
                            color: Colors.orange),
                        child: const Center(
                            child: Text(
                          "Recover Password",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        )),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const Text(
                      "OR",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 2),
                          child: Image.asset(
                            "images/google.png",
                            height: 25,
                            width: 25,
                          ),
                        ),
                        Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: Image.asset(
                                "images/facebook.png",
                                height: 25,
                                width: 25,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              child: Image.asset(
                                "images/twitter.png",
                                height: 25,
                                width: 25,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:  [
                        Text("Don't have an account?"),
                          InkWell(
                            onTap: (){
                              print("object");
                              Navigator.push(context, MaterialPageRoute(builder: (ctx)=>CreateAcountScreen()));
                            },
                          child: Container(
                            child: Text(
                              "SignUp",
                              style: TextStyle(
                                  color: Colors.orange,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
          SizedBox(
            height: 87,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset("images/bottomleftline.png"),
              Image.asset("images/bottomrightline.png"),

            ],
          ),
          ],
            ),
          ),
        ),
      ),
    );
  }
}
