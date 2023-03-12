import 'package:address_book/src/features/address/screens/screens.dart';
import 'package:address_book/src/features/authentication/screens/screens.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AddressBook());
}

class AddressBook extends StatelessWidget {
  const AddressBook({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Address Book',
      theme: ThemeData(
        fontFamily: "Inter",
        primarySwatch: Colors.purple,
        inputDecorationTheme: const InputDecorationTheme(
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.purple)),
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.black)),
          hintStyle: TextStyle(color: Colors.black12),
        ),
      ),
      home: const AddressListing(),
    );
  }
}

