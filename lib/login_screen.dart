import 'package:flutter/material.dart';
import 'package:my_first_app/create_account_screen.dart';
import 'package:my_first_app/verify_code_screen.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                            "Login",
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
                            "Please Sign in Continue",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Email",
                          filled: true,
                          fillColor: Color(0xffF1F1F1),
                          prefixIcon: Icon(Icons.email_outlined),
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(15)),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "password",
                      filled: true,
                          fillColor: const Color(0xffF1F1F1),
                          prefixIcon: const Icon(Icons.lock_outline),
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(15)),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 22,
                    ),
                    const Text(
                      "Forget Password?",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (ctx)=>VerifyCodeScreen()));

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
                        child:  Center(
                            child: InkWell(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (ctx)=>CreateAcountScreen()));

                                  },
                              child: Container(
                                child: Text(
                          "Login",
                          style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                        ),
                              ),
                            )),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const Text(
                      "OR",
                      style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
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
                              padding: const EdgeInsets.symmetric(horizontal: 15),
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
                              padding: const EdgeInsets.symmetric(horizontal: 5),
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
                              Navigator.push(context, MaterialPageRoute(builder: (ctx)=>CreateAcountScreen()));

                            },
                          child: Container(
                            child: Text(
                              "SignUp",
                              style: TextStyle(
                                  color: Colors.orange, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
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
