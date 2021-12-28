import 'package:flutter/material.dart';

class StudentDetail extends StatefulWidget {
  const StudentDetail({ Key? key }) : super(key: key);

  @override
  _StudentDetailState createState() => _StudentDetailState();
}

class _StudentDetailState extends State<StudentDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Student'),
        centerTitle: true,
        backgroundColor: Color(0xff0652DD),
        actions: <Widget>[
          AssetImage('images/id-card.png',fit: BoxFit.contain,height: 32,), 
              Container(padding: const EdgeInsets.all(8.0), child: Text('Solid Shop')),

          
        ],
        
        ),
      
    );
  }
}