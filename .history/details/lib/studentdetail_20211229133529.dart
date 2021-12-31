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
                      SizedBox(height: 20,),
                      Row(children: [
                        Text('Student ID :'),
                        SizedBox(width:20),
                          Flexible(
                          child: Container(
                            width: 200,
                            height: 20,
                            child: TextField(
                              cursorColor: Colors.red,
                              style: TextStyle(
                              fontSize: 15,
                              fontWeight:FontWeight.bold,
                              ),
                              decoration: InputDecoration(
                                border: OutlineInputBorder()
                              ),
                            ),
                          ),
                        ),


                      ],),
                      SizedBox(height: 15,),
                      Row(children: [
                        Text('Full Name :'),
                        SizedBox(width:20),
                          Flexible(
                          child: Container(
                            width: 350,
                            height: 20,
                            child: TextField(
                              cursorColor: Colors.red,
                              style: TextStyle(
                              fontSize: 15,
                              fontWeight:FontWeight.bold,
                              ),
                              decoration: InputDecoration(
                                border: OutlineInputBorder()
                              ),
                            ),
                          ),
                        ),


                      ],),
                      SizedBox(height:20),
                      Row(children: [
                        Text('Nationality:')
                      ],),
                      SizedBox(height:20),
                      Row(children: [
                        Text('Birth Date:')
                      ],),
                      SizedBox(height:20),
                      Row(children: [
                        Text('Category:')
                      ],),
                      SizedBox(height:20),
                      Row(children: [
                        Text('Phone No:'),
                        SizedBox(width:20),
                          Flexible(
                          child: Container(
                            width: 350,
                            height: 20,
                            child: TextField(
                              cursorColor: Colors.red,
                              style: TextStyle(
                              fontSize: 15,
                              fontWeight:FontWeight.bold,
                              ),
                              decoration: InputDecoration(
                                border: OutlineInputBorder()
                              ),
                            ),
                          ),
                        ),
                      ],),
                      SizedBox(height:20),
                      Row(children: [
                        Text('Is Married:')
                      ],),
                      SizedBox(height:20),
                      Row(children: [
                        Text('Address')
                      ],),
                      SizedBox(height:20),
                      Row(children: [
                        Text('Father Name:'),
                        SizedBox(width:20),
                          Flexible(
                          child: Container(
                            width: 350,
                            height: 20,
                            child: TextField(
                              cursorColor: Colors.red,
                              style: TextStyle(
                              fontSize: 15,
                              fontWeight:FontWeight.bold,
                              ),
                              decoration: InputDecoration(
                                border: OutlineInputBorder()
                              ),
                            ),
                          ),
                        ),
                      ],),
                      SizedBox(height:20),
                      Row(children: [
                        Text('Father Phone: '),
                        SizedBox(width:20),
                          Flexible(
                          child: Container(
                            width: 150,
                            height: 20,
                            child: TextField(
                              cursorColor: Colors.red,
                              style: TextStyle(
                              fontSize: 15,
                              fontWeight:FontWeight.bold,
                              ),
                              decoration: InputDecoration(
                                border: OutlineInputBorder()
                              ),
                            ),
                          ),
                        ),

                      ],),
                      SizedBox(height:20),
                      Row(children: [
                        Text('Join Date:')
                      ],),
                      SizedBox(height:20),
                      Row(children: [
                        Text('Email ID:'),
                        SizedBox(width:20),
                          Flexible(
                          child: Container(
                            width: 350,
                            height: 20,
                            child: TextField(
                              cursorColor: Colors.red,
                              style: TextStyle(
                              fontSize: 15,
                              fontWeight:FontWeight.bold,
                              ),
                              decoration: InputDecoration(
                                border: OutlineInputBorder()
                              ),
                            ),
                          ),
                        ),
                      ],),
                      SizedBox(height:20),
                      Row(children: [
                        Text('Status:')
                      ],),
                      SizedBox(height:20),
                      Row(children: [
                        Text('Citizenship No:'),
                        SizedBox(width:20),
                          Flexible(
                          child: Container(
                            width: 140,
                            height: 20,
                            child: TextField(
                              cursorColor: Colors.red,
                              style: TextStyle(
                              fontSize: 15,
                              fontWeight:FontWeight.bold,
                              ),
                              decoration: InputDecoration(
                                border: OutlineInputBorder()
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 15,),
                        Text('Passport :'),
                        SizedBox(width:20),
                          Flexible(
                          child: Container(
                            width: 140,
                            height: 20,
                            child: TextField(
                              cursorColor: Colors.red,
                              style: TextStyle(
                              fontSize: 15,
                              fontWeight:FontWeight.bold,
                              ),
                              decoration: InputDecoration(
                                border: OutlineInputBorder()
                              ),
                            ),
                          ),
                        ),
                      ],),
                      SizedBox(height:15),
                      Row(children: [
                        Text('Reference From:')
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
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text('Image'),
                  
                    Container(
                    width: double.infinity,
                    height:300,
                    decoration: BoxDecoration(border: Border.all(style: BorderStyle.solid,color:Colors.black26)),
                    child: Column(children: [
                      Container(
                        width: 100,
                        height: 100,
                        color:Colors.grey

                      ),
                      Row(children: [
                        
                      ],)
                    ],),
                    ),

                ],
                ),
              ),
            ),
            ],
            ),
           Padding(
             padding: const EdgeInsets.only(left:650.0,top:15,bottom: 5),
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