import 'package:address_book/src/features/authentication/screens/screens.dart';
import 'package:address_book/src/shared/shared.dart';
import 'package:address_book/src/utilities/palette.dart';
import 'package:flutter/material.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {



  //Global key for FormState
  final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:Container( height: MediaQuery.of(context).size.height,
                decoration: const BoxDecoration(
                image: DecorationImage( image: AssetImage("assets/images/image_container_2.png"), fit:BoxFit.cover,scale: 1.0,alignment: Alignment.bottomCenter)),
                child:Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                          width: double.infinity,
                          // height: MediaQuery.of(context).size.height * .7,
                          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
                          decoration: const BoxDecoration(
                          color: Colors.white,
                          boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 5, blurStyle: BlurStyle.normal, spreadRadius: 1),],
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40))
                          ),
                          child:Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Center(child: Text("Welcome Back ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: Palette.gradient1))),
                              SizedBox(height:5),
                              Center(child: Text("Lets get back to work.", style: TextStyle(fontSize: 16, color: Colors.black38))),

                              SizedBox(height: 20),
                              Form(
                                  key: _formKey,
                                  child: Column(
                                    children: [
                                      // Form Fields
                                      Column(
                                        children: [
                                          TextFormField(

                                            // The validator receives the text that the user has entered.
                                            validator: (value) {
                                              if (value == null || value.isEmpty) {
                                                return 'Please enter some text';
                                              }
                                              return null;
                                            },

                                            keyboardType: TextInputType.emailAddress,
                                            maxLines: 1,
                                            decoration: const InputDecoration(
                                                prefixIcon: Icon(Icons.email_outlined),
                                                label: Text("Email"),
                                                enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.black))

                                            ),
                                          ),
                                          SizedBox(height: 10),
                                          TextFormField(

                                            // The validator receives the text that the user has entered.
                                            validator: (value) {
                                              if (value == null || value.isEmpty) {
                                                return 'Please enter some text';
                                              }
                                              return null;
                                            },

                                            maxLines: 1,
                                            obscureText: true,
                                            decoration: const InputDecoration(
                                                prefixIcon: Icon(Icons.lock_outline),
                                                label: Text("Password"),
                                                enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.black))
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 20),
                                      Align(alignment:Alignment.centerLeft,child: TextButton(onPressed: (){}, child: Text("Forgot Password?"))),
                                      SizedBox(height:20),
                                      RoundedButtonWidget(buttonText: "Login", width: double.infinity, onpressed: (){}),
                                      SizedBox(height:20),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text("Don't have an Account? "),
                                          GestureDetector(
                                            child: Text("Register", style:TextStyle(color: Palette.gradient2, fontWeight:FontWeight.bold)),
                                            onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen())),
                                          ),
                                        ],
                                      )
                                    ],
                                  )
                              ),
                            ],
                )

            ),
          )
        )
      ),
    );
  }
}
