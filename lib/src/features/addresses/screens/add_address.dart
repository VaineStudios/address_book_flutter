import 'package:address_book/src/shared/shared.dart';
import 'package:address_book/src/utilities/palette.dart';
import 'package:flutter/material.dart';

import '../models/models.dart';


class AddAddress extends StatefulWidget {
  const AddAddress({Key? key}) : super(key: key);
  @override
  State<AddAddress> createState() => _AddAddressState();
}

class _AddAddressState extends State<AddAddress> {

  //Key to identify and manipulate form.
  final GlobalKey _formKey = GlobalKey<FormState>();
  String _dropdownVal = Parish.sampleParishes[0].id;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1.0,
        title: Text("Create Address", style: TextStyle(color: Palette.primary),),
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back_rounded, color: Colors.black, size: 30,),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          key: _formKey,
          child: Column(
            children: [

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
                  label: Text("Find Address"),
                  contentPadding: EdgeInsets.zero



                ),
              ),
              SizedBox(height:5),
              Align(alignment:Alignment.bottomLeft, child: GestureDetector(onTap: (){}, child: const Text("Enter Address Manually", style: TextStyle(color: Colors.blueAccent, fontSize: 12, fontWeight: FontWeight.bold),))),
              SizedBox(height:10),

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
                    // prefixIcon: Icon(Icons.lock_outline),
                    label: Text("Address Line 1"),
                    contentPadding: EdgeInsets.zero

                ),
              ),
              SizedBox(height:10),

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
                  // prefixIcon: Icon(Icons.lock_outline),
                  label: Text("Address Line 2"),
                    contentPadding: EdgeInsets.zero

                ),
              ),
              SizedBox(height:10),

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
                  // prefixIcon: Icon(Icons.lock_outline),
                  label: Text("City"),
                    contentPadding: EdgeInsets.zero

                ),
              ),
              SizedBox(height:10),

              DropdownButtonFormField(
                isExpanded: true,
                items: Parish.sampleParishes.map((parish){return DropdownMenuItem(child: Text(parish.parishName), value: parish.id,);}).toList(),
                onChanged: (value){
                  _dropdownVal = value!;
                  setState(() {});
                },
                value: _dropdownVal

              ),
              SizedBox(height: 20),
              RoundedButtonWidget(buttonText: "Save Address", width: double.infinity, onpressed: (){})
            ],
          )
        )
      ),
    );
  }
}
