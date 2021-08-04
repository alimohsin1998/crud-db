import 'package:crud_db/Global%20Widgets/GlobalTextField.dart';
import 'package:flutter/material.dart';

class Updation extends StatefulWidget {
  const Updation({ Key? key }) : super(key: key);

  @override
  _UpdationState createState() => _UpdationState();
}

class _UpdationState extends State<Updation> {
  final idController=TextEditingController();
  final nameController=TextEditingController();
  final ageController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Form(
                  
                  child: Column(
                    children: [
                      GlobalTextField("Enter ID", "ID",idController),
                      SizedBox(height: 12.0),
                      GlobalTextField("Enter Name", "Name",nameController),
                      SizedBox(height: 12.0),
                      GlobalTextField("Enter Age", "Age",ageController),
                      SizedBox(height: 12.0),
                    ],
                  ),
                ),
          
              ],
            ),
          ),
        ),
      ),
    );
  }
}