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
        // colorScheme: ColorScheme.fromSwatch(primarySwatch:Colors.purple).copyWith(secondary: Colors.red)
      ),
      home: const SignUpScreen(),
    );
  }
}

