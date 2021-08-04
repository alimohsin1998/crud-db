import 'package:crud_db/Global%20Widgets/GlobalTextField.dart';
import 'package:crud_db/dbhelper.dart';
import 'package:flutter/material.dart';

class Creation extends StatefulWidget {
  const Creation({ Key? key }) : super(key: key);

  @override
  _CreationState createState() => _CreationState();
}

class _CreationState extends State<Creation> {

final dbhelper = DatabaseHelper.instance;
final nameController=TextEditingController();
final ageController=TextEditingController();
late int age;
late String name;
void insertdata() async {
  Map<String, dynamic> row = {
    DatabaseHelper.columnName : "ali",
    DatabaseHelper.columnAge: "22",
  };

  final id = await dbhelper.insert(row);
  print(id);
}  
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
                      GlobalTextField("Enter Name", "Name",nameController),
                      SizedBox(height: 12.0),
                      GlobalTextField("Enter Age", "Age",ageController),
                      SizedBox(height: 12.0),
                      MaterialButton(
                        onPressed: insertdata,
                        color: Theme.of(context).primaryColor,
                        child: Text("Add data"),
                      ),
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