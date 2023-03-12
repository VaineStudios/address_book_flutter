import 'package:address_book/src/features/user/models/models.dart';
import 'package:address_book/src/features/user/widgets/circle_avatar.dart';
import 'package:address_book/src/shared/rounded_button.dart';
import 'package:flutter/material.dart';


class UpdateProfileScreen extends StatefulWidget {
  const UpdateProfileScreen({Key? key}) : super(key: key);

  @override
  State<UpdateProfileScreen> createState() => _UpdateProfileScreenState();
}

class _UpdateProfileScreenState extends State<UpdateProfileScreen> {

  final GlobalKey<FormState> _updateFormKey = GlobalKey<FormState>();
  TextEditingController first_name_ctrl = TextEditingController();
  TextEditingController last_name_ctrl = TextEditingController();
  TextEditingController email_ctrl = TextEditingController();
  TextEditingController mobile_number_ctrl = TextEditingController();
  TextEditingController home_number_ctrl = TextEditingController();


  @override
  void initState() {
    super.initState();
    first_name_ctrl.text = User.sampleUser.first_name;
    last_name_ctrl.text = User.sampleUser.last_name;
    email_ctrl.text = User.sampleUser.email;
    mobile_number_ctrl.text = User.sampleUser.mobile_number;
    home_number_ctrl.text = User.sampleUser.home_number;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1.0,
        leading: IconButton(onPressed: ()=> Navigator.pop(context), icon: Icon(Icons.arrow_back_rounded, size: 30, color: Colors.black)),
        title: Text("Edit Profile", style: TextStyle(color: Colors.black))
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Hero(
                tag: "profile_image",
                child: CircleImage(imageProvider: AssetImage("assets/images/image_container.png"), radius: 100)
              ,),
            Form(
              key: _updateFormKey,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    buildTextFormField("First Name", controller: first_name_ctrl),
                    buildTextFormField("Last Name", controller: last_name_ctrl),
                    buildTextFormField("Email",controller: email_ctrl),
                    buildTextFormField("Mobile Number",controller: mobile_number_ctrl),
                    buildTextFormField("Home Number",controller: home_number_ctrl),
                ],
              ),
            ),

            ),
            const SizedBox(height: 20),
            RoundedButtonWidget(buttonText: "Update Profile", width: double.infinity, onpressed: ()=> Navigator.pop(context)),
            const SizedBox(height: 30),
            TextButton(onPressed: () { },
            child: Text("Reset Password"))
          ],
        ),
      )
    );
  }
  TextFormField buildTextFormField(String label, { Color enabledBorderColor = Colors.black, Color focusedBorderColor = Colors.purple, bool obscureText = false, IconData? iconData = null, TextInputType inputType= TextInputType.text, TextEditingController? controller = null} ) {
    return TextFormField(
      // The validator receives the text that the user has entered.
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter some text';
        }
        return null;
      },
      controller: controller,
      keyboardType: inputType,
      maxLines: 1,
      obscureText: obscureText,
      decoration: InputDecoration(
        prefixIcon: iconData != null ? Icon(iconData) : null,
        label: Text(label),

      ),
    );
  }

}
