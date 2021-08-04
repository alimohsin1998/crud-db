import 'package:crud_db/Global%20Widgets/GlobalButton.dart';
import 'package:flutter/material.dart';

import 'Screens/creation.dart';
import 'Screens/deletion.dart';
import 'Screens/retrieval.dart';
import 'Screens/updation.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GlobalButton(Colors.green, "Create", (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Creation()));}),
          SizedBox(height: 20.0,),
          GlobalButton(Colors.green, "Retrieve", (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Retrieval()));}),
          SizedBox(height: 20.0,),
          GlobalButton(Colors.green, "Update", (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Updation()));}),
          SizedBox(height: 20.0,),
          GlobalButton(Colors.green, "Delete", (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Deletion()));}),
          SizedBox(height: 20.0,),
        ],
      ),
    );
  }
}