import 'package:address_book/src/shared/shared.dart';
import 'package:address_book/src/utilities/palette.dart';
import 'package:flutter/material.dart';

import 'package:address_book/src/features/address/models/models.dart';


class AddAddress extends StatefulWidget {
  const AddAddress({Key? key}) : super(key: key);
  @override
  State<AddAddress> createState() => _AddAddressState();
}

class _AddAddressState extends State<AddAddress> {

  //Key to identify and manipulate form.
  final GlobalKey _formKey = GlobalKey<FormState>();
  String _dropdownVal = Parish.sampleParishes[0].id;
  bool _manuallyAddAddress = false;
  bool _isDefault = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1.0,
        title: Text("Create Address", style: TextStyle(color: Palette.primary),),
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: (){Navigator.pop(context);},icon: Icon(Icons.arrow_back_rounded, color: Colors.black, size: 30,)),
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
              const SizedBox(height:10),
              Align(
                  alignment:Alignment.bottomLeft,
                  child: GestureDetector(
                      onTap: (){
                        _manuallyAddAddress = !_manuallyAddAddress;
                        setState(() {});
                        },
                      child: const Text("Enter Address Manually", style: TextStyle(color: Colors.blueAccent, fontSize: 12, fontWeight: FontWeight.bold),))),
              ...showManualAddressFields(),
              SizedBox(height: 10),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:[
                    Text("Set as Default Address "),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          _isDefault = !_isDefault;
                        });
                      },
                        child: ToggleSwitch(activeColor: Palette.gradient2, isActive: _isDefault,)),
                  ]),

              SizedBox(height: 20),
              
              RoundedButtonWidget(buttonText: "Save Address", width: double.infinity, onpressed: (){})
            ],
          )
        )
      ),
    );

  }
  /*
  * Shows manual AddressFields if manuallyAddAddress is set to true, if not returns a shrinked sizedbox
  * */
  showManualAddressFields(){
    if(_manuallyAddAddress){
      return [
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

        ),];
    }else{
      return [SizedBox.shrink()];
    }

  }
}
