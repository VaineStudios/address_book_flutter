import 'package:address_book/src/features/user/models/models.dart';
import 'package:address_book/src/shared/rounded_button.dart';
import 'package:address_book/src/utilities/palette.dart';
import 'package:flutter/material.dart';
import 'package:address_book/src/features/user/widgets/widgets.dart';


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(onPressed: ()=> Navigator.pop(context), icon: Icon(Icons.arrow_back_rounded, size: 30,),),
        ),
        body: Column(
            children: [
              Expanded(
                  child:Column(
                    children: [
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            constraints: const BoxConstraints(
                                maxHeight: 200
                            ),
                            decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Palette.gradient1,
                                    Palette.gradient2
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                )
                            ),

                          ),
                          Positioned(
                              bottom: -50,
                              left: 20,
                              child: CircleImage(imageProvider: AssetImage("assets/images/image_container.png"),radius: 50,)
                          ),
                          Positioned(
                              bottom: -50,
                              left: 140,
                              child: Column(
                                children: [
                                  Text(User.sampleUser.first_name + " "+ User.sampleUser.last_name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
                                  Text(User.sampleUser.email, style: TextStyle(color: Colors.grey[400]),)
                                ],
                              )
                          )

                        ],
                      ),
                      SizedBox(height: 80),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                          children: [
                            const Text("Mobile Number: ", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                            Text(User.sampleUser.mobile_number)
                          ],
                        ),
                      ),
                      SizedBox(height:10),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                          children: [
                            const Text("Home Number: ", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                            Text(User.sampleUser.home_number)
                          ],
                        ),
                      ),
                      SizedBox(height: 30),
                    ],
                  )
              ),
              RoundedButtonWidget(buttonText: "Update Profile", width: double.infinity, onpressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=> Container())))
            ]
        )

    );
  }
}
