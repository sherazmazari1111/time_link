import 'package:flutter/material.dart';
class CustomTextFieldForCustomers extends StatefulWidget {
  const CustomTextFieldForCustomers({Key? key}) : super(key: key);

  @override
  State<CustomTextFieldForCustomers> createState() => _CustomTextFieldForCustomersState();
}

class _CustomTextFieldForCustomersState extends State<CustomTextFieldForCustomers> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(



        enabledBorder: UnderlineInputBorder( //<-- SEE HERE
          borderSide: BorderSide(
              color: Colors.white),
        ),
focusedBorder: UnderlineInputBorder(borderSide:BorderSide(color: Colors.white) ),

labelStyle: TextStyle(color: Colors.white),
      ),
    );
  }
}
