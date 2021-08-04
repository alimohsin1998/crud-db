import 'package:crud_db/dbhelper.dart';
import 'package:flutter/material.dart';

class Retrieval extends StatefulWidget{

  @override
  _RetrievalState createState() => _RetrievalState();
}

class _RetrievalState extends State<Retrieval> {
  late Map data;
  final dbhelper = DatabaseHelper.instance;

  void display () async{
    var allData = await dbhelper.displayData();
    allData.forEach((row) { 
      setState(() {
        data=row;
      });
      print(row); 
      });
  }

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 50.0,),
          MaterialButton(
            onPressed: display,
            color: Theme.of(context).primaryColor,
            child: Text("Retrieve Data"),
          ),
          Text("id: "+ data["id"]),
          Text("name: "+ data["name"]),
          Text("id: "+ data["age"]),
        ],
      ),
    );
  }
}