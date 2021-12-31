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
        backgroundColor: Color(0xff3742fa),
        actions: <Widget>[
          Image.asset('images/card.png',fit: BoxFit.contain,height: 20,width: 40,), 
          Container(padding: const EdgeInsets.all(8.0),
           child: Text('ID Card'),
           margin: EdgeInsets.only(top: 15),),

          
        ],
        
        ),
        body: SafeArea(child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20,left: 20 ),
              child: Row(children: [
              Text('Student Information'),
              SizedBox(width:20),
              Text('Other Information'),
              ],),
            ),
            SizedBox(height:10),
            Row(
              children: [
                Container(
                  margin:EdgeInsets.only(left: 20),
                  width: 500,
                  height: 600,
                  decoration: BoxDecoration(border: Border.all(style: BorderStyle.solid,color: Colors.black26)),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment:CrossAxisAlignment.start,
                      children: [
                      
                      Text('01. Student Information'),
                      Row(children: [
                        Text('Student ID'),
                        
                          Flexible(
                          child: Container(
                            width: 50,
                            child: TextField(
                              cursorColor: Colors.red,
                              style: TextStyle(
                              fontSize: 20,
                              fontWeight:FontWeight.bold,
                              ),
                              decoration: InputDecoration(
                                border: OutlineInputBorder()
                              ),
                            ),
                          ),
                        ),


                      ],)

            ],
            ),
                  ),
                ),
            SizedBox(width: 20),
            Container(
              width: 500,
                  height: 600,
                  decoration: BoxDecoration(border: Border.all(style: BorderStyle.solid,color:Colors.black26)),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text('02: Choose at least 1 batch'),
                  Container(
                  width: double.infinity,
                  height: 160,
                  decoration: BoxDecoration(border: Border.all(style: BorderStyle.solid,color:Colors.black26)),
                  ),
                  SizedBox(height: 20,),
                  Text('03: Choose at least 1 pckage'),
                  Container(
                  width: double.infinity,
                  height: 160,
                  decoration: BoxDecoration(border: Border.all(style: BorderStyle.solid,color:Colors.black26)),
                  ),
                  SizedBox(height: 20,),
                  Text('04: Amount Information'),
                  Container(
                  width: double.infinity,
                  height: 160,
                  decoration: BoxDecoration(border: Border.all(style: BorderStyle.solid,color:Colors.black26)),
                  ),
                  

                ],
                ),
              ),
            ),
            SizedBox(width: 20),
            Container(
              width: 400,
                  height: 600,
                  decoration: BoxDecoration(border: Border.all(style: BorderStyle.solid,color:Colors.black26)),
              child: Column(children: [
                Text('Student')

              ],
              ),
            ),
            ],
            ),
           Padding(
             padding: const EdgeInsets.only(left:500.0,top:20),
             child: Row(
               children: [
              OutlinedButton.icon(onPressed: (){},icon: const Icon(Icons.save), label:Text('Save'),style:OutlinedButton.styleFrom(
                    backgroundColor: Colors.blue,
                   primary: Colors.white,
              )),
                 SizedBox(width: 20,),
                 OutlinedButton.icon(onPressed: (){},icon: const Icon(Icons.report), label:Text('Report'),style:OutlinedButton.styleFrom(
                   backgroundColor: Colors.blue,
                   primary: Colors.white,
                 )),
                 SizedBox(width: 20,),
                 OutlinedButton.icon(onPressed: (){},icon: const Icon(Icons.cancel), label:Text('Cancel'),style:OutlinedButton.styleFrom(
                   backgroundColor: Colors.red,
                   primary: Colors.white,
                 )),
               ],
             ),
           ) 
          ],
        )),
      
    );
  }
}