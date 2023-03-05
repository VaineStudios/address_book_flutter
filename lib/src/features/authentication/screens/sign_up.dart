import 'package:address_book/src/shared/shared.dart';
import 'package:address_book/src/utilities/palette.dart';
import 'package:flutter/material.dart';
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {



  //Global key for FormState
  final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: Stack(
        children:   [
          Positioned(top:0 ,bottom: MediaQuery.of(context).size.height * .3, child: const Image(image: AssetImage("assets/images/image_container.png"),alignment: Alignment.bottomRight, fit: BoxFit.fitWidth, )),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 5, blurStyle: BlurStyle.normal, spreadRadius: 1),],
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40))
              ),

              child: ListView(
                shrinkWrap: true,
                keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
                children: [
                  Center(child: Text("Create an Account.", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: Palette.gradient1))),
                  SizedBox(height: 20),
                  Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          // Form Fields
                          Column(
                            children: [
                              Row(
                                children:  [
                                  Expanded(child: TextFormField(
                                    // The validator receives the text that the user has entered.
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter some text';
                                      }
                                      return null;
                                    },

                                    maxLines: 1,
                                    decoration: const InputDecoration(
                                        prefixIcon: Icon(Icons.person),
                                        label: Text("First Name")
                                    ),
                                  )),
                                  SizedBox(width: 20.0,),
                                  Expanded(child: TextFormField(

                                    // The validator receives the text that the user has entered.
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter some text';
                                      }
                                      return null;
                                    },

                                    maxLines: 1,
                                    decoration: const InputDecoration(
                                        prefixIcon: Icon(Icons.person),
                                        label: Text("Last Name")
                                    ),
                                  ),)
                                ],
                              ),
                              TextFormField(

                                // The validator receives the text that the user has entered.
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter some text';
                                  }
                                  return null;
                                },


                                maxLines: 1,
                                decoration: const InputDecoration(
                                    prefixIcon: Icon(Icons.email),
                                    label: Text("Email")
                                ),
                              ),
                              TextFormField(

                                // The validator receives the text that the user has entered.
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter some text';
                                  }
                                  return null;
                                },

                                maxLines: 1,
                                decoration: const InputDecoration(
                                    prefixIcon: Icon(Icons.phone),
                                    label: Text("Mobile Number")
                                ),
                              ),
                              TextFormField(

                                // The validator receives the text that the user has entered.
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter some text';
                                  }
                                  return null;
                                },

                                maxLines: 1,
                                decoration: const InputDecoration(
                                    prefixIcon: Icon(Icons.lock),
                                    label: Text("Password")
                                ),
                              ),
                              TextFormField(

                                // The validator receives the text that the user has entered.
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter some text';
                                  }
                                  return null;
                                },

                                maxLines: 1,
                                decoration: const InputDecoration(
                                    prefixIcon: Icon(Icons.lock_outline),
                                    label: Text("Confirm Password")
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height:20),
                          RoundedButtonWidget(buttonText: "Sign Up", width: double.infinity, onpressed: (){}),
                          SizedBox(height:20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Already have an account? "),
                              GestureDetector(
                                  child: Text("Sign In", style:TextStyle(color: Palette.gradient2, fontWeight:FontWeight.bold)),
                                  onTap: (){},
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
        ],
      ),
    );
  }
}
