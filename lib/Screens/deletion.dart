import 'package:crud_db/Global%20Widgets/GlobalTextField.dart';
import 'package:crud_db/dbhelper.dart';
import 'package:flutter/material.dart';

class Deletion extends StatefulWidget {
  const Deletion({ Key? key }) : super(key: key);

  @override
  _DeletionState createState() => _DeletionState();
}

class _DeletionState extends State<Deletion> {
  final dbhelper = DatabaseHelper.instance;
  final idController=TextEditingController();
  
  void insertdata() async {
    Map<String, dynamic> row = {
    DatabaseHelper.columnName : "",
    DatabaseHelper.columnAge: 20,
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
                      GlobalTextField("Enter ID", "ID",idController),
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