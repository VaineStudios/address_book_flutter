import 'package:address_book/src/features/addresses/models/address_model.dart';
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

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: (){},
        child: Icon(Icons.add, color: Palette.gradient2)
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

                        onPressed: (){},
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
