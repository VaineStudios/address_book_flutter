import 'package:address_book/src/features/address/models/address_model.dart';
import 'package:address_book/src/features/address/screens/screens.dart';
import 'package:address_book/src/features/user/screens/screens.dart';
import 'package:animations/animations.dart';
import 'package:address_book/src/utilities/palette.dart';
import 'package:flutter/material.dart';

class AddressListing extends StatefulWidget {
  const AddressListing({Key? key}) : super(key: key);

  @override
  State<AddressListing> createState() => _AddressListingState();
}

class _AddressListingState extends State<AddressListing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,

        elevation: 1,
        title: Text("Addresses", style: TextStyle(color: Palette.primary),),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=> const ProfileScreen())
            );
            }, icon: CircleAvatar(backgroundImage: AssetImage("assets/images/image_container.png"),)),
          SizedBox(width:20),
        ],
      ),
      body: SafeArea(
        child: ListView.builder(
            itemCount: Address.addressSample.length,
            itemBuilder: (context, index){
              var address = Address.addressSample[index];
          return buildAddressCard(address);
        },
        )
      ),

      floatingActionButton: OpenContainer(  
        closedShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),

        transitionDuration: Duration(milliseconds: 500),
        transitionType: ContainerTransitionType.fade,
        closedBuilder: (BuildContext context, VoidCallback openContainer){
          return FloatingActionButton(
              backgroundColor: Colors.white,
              onPressed: openContainer,
              child: Icon(Icons.add, color: Palette.gradient2)
          );
        },
        openBuilder: (BuildContext context, VoidCallback _ ){
          return AddAddress();
        },
      ),
    );
  }

  Card buildAddressCard(Address address) {
    return Card(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(address.address_1, style: TextStyle(fontSize: 16)),
                      Text(address.address_2, style: TextStyle(fontSize: 16)),
                      Text(address.city, style: TextStyle(fontSize: 16)),
                      Text(address.parish, style: TextStyle(fontSize: 16)),

                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextButton(
                        onPressed: (){},
                        style: TextButton.styleFrom(
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap
                        ),
                        child: Text("Edit", style: TextStyle(color: Palette.primary),)
                    ),
                    TextButton(
                        style: TextButton.styleFrom(
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,

                        ),

                        onPressed: (){
                          showDialog(
                              context: context,
                              builder: (_){
                            return AlertDialog(
                              content: RichText(
                                textAlign: TextAlign.center,
                                  text: TextSpan(

                                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.normal, color: Colors.black87),

                                      children: [
                                        const TextSpan(text: "Are you sure you want to delete your "),
                                        TextSpan(style: const TextStyle(fontWeight: FontWeight.bold), text: address.address_1),
                                        const TextSpan(text:" address?")
                                      ],),
                                ),
                                actions: [
                                TextButton(onPressed: (){Navigator.pop(context);}, child:const Text("No")),
                                TextButton(onPressed: (){}, child:const Text("Yes")),
                              ],
                            );
                          });
                        },
                        child: Text("Delete", style: TextStyle(color: Palette.gradient2),)
                    ),

                  ],
                )
              ],
            ),
          ),
        );
  }
}
