import 'package:flutter/material.dart';

class StudentDetail extends StatefulWidget {
  const StudentDetail({ Key? key }) : super(key: key);

  @override
  _StudentDetailState createState() => _StudentDetailState();
}

class _StudentDetailState extends State<StudentDetail> {
   final _formkey = GlobalKey<FormState>();
  String result = " ";
  String? myvalidation(value) {
    if (value == null || value.isEmpty) {
      return "Field is empty";
    }
    if (value.length < 4) {
      return "enter character more than 4";
    }
    return null;
  }
  final gender = ["Male","Female","Other"];
  String? gvalue;
  final nationality = ["Nepalese", "Chinese", "American", "Indian"];
  String? value;

  final discount = ["No Discount", "5 %", "10 %", "15 %"];
  String? dvalue;

  final category = ["Student", "Teacher"];
  String? cvalue;
  final marriage = ["Yes", "No"];
  String? mvalue;

  static const int numItems = 1;
  List<bool> selected = List<bool>.generate(numItems, (int index) => false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Student'),
        centerTitle: true,
        backgroundColor: Color(0xff273c75),
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
                        Text('Student ID :',style:TextStyle(
                          color:Colors.blue,
                        )),
                        SizedBox(width:20),
                          Flexible(
                          child: Container(
                            width: 200,
                            height: 30,
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
                      SizedBox(height: 10,),
                      Row(children: [
                        Text('Full Name :',style:TextStyle(
                          color:Colors.blue,
                        )),
                        SizedBox(width:20),
                          Flexible(
                          child: Container(
                            width: 350,
                            height: 30,
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
                      SizedBox(height:10),
                      Row(children: [
                        Text('Nationality:',style:TextStyle(
                          color:Colors.blue,
                        )
                        ),
                        SizedBox(width: 20,),
                        Container(
                                  height: 30,
                                  width: 150,
                                  color: Colors.brown[50],
                                  // decoration: BoxDecoration(
                                  //     border:
                                  //         Border.all(color: Colors.black45)),
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton(
                                        value: value,
                                        items: nationality.map(buildMenuItem).toList(),
                                            
                                            
                                        onChanged: (value) => setState(() {
                                              this.value = value as String?;
                                            })),
                                  ),
                                ),
                                SizedBox(width: 20,),
                                Text('Gender'),
                                SizedBox(width: 20,),
                                Container(
                                  height: 30,
                                  width: 150,
                                  color: Colors.brown[50],
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton(
                                        value: gvalue,
                                        items: gender
                                            .map(buildMenuItem)
                                            .toList(),
                                        onChanged: (value) => setState(() {
                                              this.gvalue = value as String?;
                                            })),
                                  ),
                                ),
                      ],),
                      SizedBox(height:10),
                      Row(children: [
                        Text('Birth Date:',style:TextStyle(
                          color:Colors.blue,
                        )),
                        SizedBox(width: 20,),
                        Flexible(
                              child: Container(
                                height: 30,
                                width: 250,
                                child: TextFormField(
                                  validator: myvalidation,
                                  cursorColor: Colors.red,
                                  style: const TextStyle(fontSize: 12),
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide()),
                                  ),
                                ),
                              ),
                            )
                      ],),
                      SizedBox(height:10),
                      Row(children: [
                        Text('Category:',style:TextStyle(
                          color:Colors.blue,
                        )),
                        SizedBox(width: 20,),
                        Container(
                                  height: 30,
                                  width: 300,
                                  color: Colors.brown[50],
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton(
                                        value: cvalue,
                                        items: category
                                            .map(buildMenuItem)
                                            .toList(),
                                        onChanged: (value) => setState(() {
                                              this.cvalue = (value as String?);
                                            })),
                                  ),
                                )
                      ],),
                      SizedBox(height:10),
                      Row(children: [
                        Text('Phone No:',style:TextStyle(
                          color:Colors.blue,
                        )),
                        SizedBox(width:20),
                          Flexible(
                          child: Container(
                            width: 350,
                            height: 30,
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
                      SizedBox(height:10),
                      Row(children: [
                        Text('Is Married:',style:TextStyle(
                          color:Colors.blue,
                        )),SizedBox(width: 20,),
                        Container(
                                  height: 30,
                                  width: 150,
                                  color: Colors.brown[50],
                                  // decoration: BoxDecoration(
                                  //     border:
                                  //         Border.all(color: Colors.black45)),
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton(
                                        value: mvalue,
                                        items:marriage.map(buildMenuItem).toList(),
                                            
                                            
                                        onChanged: (value) => setState(() {
                                              this.mvalue = value as String?;
                                            })),
                                  ),
                                ),
                      ],),
                      SizedBox(height:10),
                      Row(children: [
                        Text('Address:',style:TextStyle(
                          color:Colors.blue,
                        )),
                         SizedBox(width:20),
                          Flexible(
                          child: Container(
                            width: 350,
                            height: 30,
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
                      SizedBox(height:10),
                      Row(children: [
                        Text('Father Name:',style:TextStyle(
                          color:Colors.blue,
                        )),
                        SizedBox(width:20),
                          Flexible(
                          child: Container(
                            width: 350,
                            height: 30,
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
                      SizedBox(height:10),
                      Row(children: [
                        Text('Father Phone: ',style:TextStyle(
                          color:Colors.blue,
                        )),
                        SizedBox(width:20),
                          Flexible(
                          child: Container(
                            width: 150,
                            height: 30,
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
                      SizedBox(height:10),
                      Row(children: [
                        Text('Join Date:',style:TextStyle(
                          color:Colors.blue,
                        ))
                      ],),
                      SizedBox(height:10),
                      Row(children: [
                        Text('Email ID:',style:TextStyle(
                          color:Colors.blue,
                        )),
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
                      SizedBox(height:10),
                      Row(children: [
                        Text('Status:',style:TextStyle(
                          color:Colors.blue,
                        ))
                      ],),
                      SizedBox(height:10),
                      Row(children: [
                        Text('Citizenship No:',style:TextStyle(
                          color:Colors.blue,
                        )),
                        SizedBox(width:20),
                          Flexible(
                          child: Container(
                            width: 140,
                            height: 30,
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
                        Text('Passport :',style:TextStyle(
                          color:Colors.blue,
                        )),
                        SizedBox(width:20),
                          Flexible(
                          child: Container(
                            width: 140,
                            height: 30,
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
                      SizedBox(height:10),
                      Row(children: [
                        Text('Reference From:',style:TextStyle(
                          color:Colors.blue,
                        ))
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
                          height: 140,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  style: BorderStyle.solid,
                                  color: Colors.black26)),
                          child: DataTable(
                            columns: const <DataColumn>[
                              DataColumn(
                                label: Text(
                                  'Id',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              DataColumn(
                                label: Text(
                                  'Batch Name',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                            rows: List<DataRow>.generate(
                              numItems,
                              (int index) => DataRow(
                                color:
                                    MaterialStateProperty.resolveWith<Color?>(
                                        (Set<MaterialState> states) {
                                  // All rows will have the same selected color.
                                  if (states.contains(MaterialState.selected)) {
                                    return Theme.of(context)
                                        .colorScheme
                                        .primary
                                        .withOpacity(0.08);
                                  }
                                }),
                                cells: <DataCell>[
                                  DataCell(Text('$index')),
                                  const DataCell(Text('Computer Basic Batch'))
                                ],
                                selected: selected[index],
                                onSelectChanged: (bool? value) {
                                  setState(() {
                                    selected[index] = value!;
                                  });
                                },
                              ),
                            ),
                          ),
                        ),
                  SizedBox(height: 20,),
                  Text('03: Choose at least 1 pckage'),
                  Container(
                          width: double.infinity,
                          height: 140,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  style: BorderStyle.solid,
                                  color: Colors.black26)),
                          child: SingleChildScrollView(
                            child: DataTable(
                              columns: const <DataColumn>[
                                DataColumn(
                                  label: Text(
                                    'Id',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                DataColumn(
                                  label: Text(
                                    'Package Name',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                DataColumn(
                                  label: Text(
                                    'Amount',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                              rows: List<DataRow>.generate(
                                numItems,
                                (int index) => DataRow(
                                  color:
                                      MaterialStateProperty.resolveWith<Color?>(
                                          (Set<MaterialState> states) {
                                    // All rows will have the same selected color.
                                    if (states
                                        .contains(MaterialState.selected)) {
                                      return Theme.of(context)
                                          .colorScheme
                                          .primary
                                          .withOpacity(0.08);
                                    }
                                  }),
                                  cells: <DataCell>[
                                    DataCell(Text('$index')),
                                    const DataCell(
                                        Text('Computer Basic Batch')),
                                    const DataCell(Text('4000'))
                                  ],
                                  selected: selected[index],
                                  onSelectChanged: (bool? value) {
                                    setState(() {
                                      selected[index] = value!;
                                    });
                                  },
                                ),
                              ),
                            ),
                          ),
                        ),
                  SizedBox(height: 20,),
                  Text('04: Amount Information'),
                  Container(
                  width: double.infinity,
                  height: 210,
                  decoration: BoxDecoration(border: Border.all(style: BorderStyle.solid,color:Colors.black26)),
                  child: Padding(
                    padding: const EdgeInsets.only(left:10),
                    child: Column(children: [
                     Row(children: [
                       Text('Sub Total :',style:TextStyle(
                          color:Colors.blue,
                        )),
                          SizedBox(width:50),
                            Flexible(
                            child: Container(
                              width: 200,
                              height: 30,
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
                     ],
                     ),
                     SizedBox(height: 5,),
                     Row(children: [
                       Text('Discount % :',style:TextStyle(
                          color:Colors.blue,
                        )),
                          SizedBox(width:41),
                            Flexible(
                            child: Container(
                              width: 200,
                              height: 30,
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
                          SizedBox(width:30),
                            Flexible(
                            child: Container(
                              width: 180,
                              height: 30,
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
                     ],
                     ),
                     SizedBox(height: 5,),
                     Row(children: [
                       Text('Total amount :',style:TextStyle(
                          color:Colors.blue,
                        )),
                          SizedBox(width:25),
                            Flexible(
                            child: Container(
                              width: 200,
                              height: 30,
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
                     ],
                     ),
                     SizedBox(height: 5,),
                     Row(children: [
                       Text('Paid fee :',style:TextStyle(
                          color:Colors.blue,
                        )),
                          SizedBox(width:55),
                            Flexible(
                            child: Container(
                              width: 200,
                              height: 30,
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
                     ],
                     ),
                     SizedBox(height: 5,),
                     Row(children: [
                       Text('Advance fee :',style:TextStyle(
                          color:Colors.blue,
                        )),
                          SizedBox(width:30),
                            Flexible(
                            child: Container(
                              width: 200,
                              height: 30,
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
                     ],
                     ),
                     SizedBox(height: 5,),
                     Row(children: [
                       Text('Due fee :',style:TextStyle(
                          color:Colors.blue,
                        )),
                          SizedBox(width:58),
                            Flexible(
                            child: Container(
                              width: 200,
                              height: 30,
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
                     ],
                     ),

                    ],),
                  ),
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                  Text('Image'),
                  
                    Container(
                      
                    width: 300,
                    height:200,
                    decoration: BoxDecoration(border: Border.all(style: BorderStyle.solid,color:Colors.black26)),
                    child: Column(children: [
                      Container(
                        margin: EdgeInsets.only(top:20),
                        width: 200,
                        height: 100,
                        color:Colors.grey.shade200

                      ),
                      SizedBox(height: 30,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                        OutlinedButton.icon(onPressed: (){},icon: const Icon(Icons.upload),label:Text('Upload'),style:OutlinedButton.styleFrom(
                         backgroundColor: Color(0xff273c75),
                        primary: Colors.white,
                        )),
                        SizedBox(width: 20,),
                        OutlinedButton.icon(onPressed: (){},icon: const Icon(Icons.delete), label:Text('Delete'),style:OutlinedButton.styleFrom(
                          backgroundColor: Color(0xffd63031),
                          primary: Colors.white,
                        )),
                      ],)
                    ],),
                    ),
                    SizedBox(height: 50,),
                    Text('Important Notes'),
                    Container(
                      width: 300,
                      height: 300,
                      //color:Colors.red,
                      child: TextField(
                        maxLines:30,
                        cursorColor: Colors.red,
                        style: TextStyle(
                              //fontSize: 50,
                              fontWeight:FontWeight.bold,
                              //height: 10,
                              ),
                        decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "N/A",
                              ),

                      ),
                    )

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
                    backgroundColor: Color(0xff273c75),
                   primary: Colors.white,
              )),
                 SizedBox(width: 20,),
                 OutlinedButton.icon(onPressed: (){},icon: const Icon(Icons.report), label:Text('Report'),style:OutlinedButton.styleFrom(
                   backgroundColor: Color(0xff273c75),
                   primary: Colors.white,
                 )),
                 SizedBox(width: 20,),
                 OutlinedButton.icon(onPressed: (){},icon: const Icon(Icons.cancel), label:Text('Cancel'),style:OutlinedButton.styleFrom(
                   backgroundColor: Color(0xffd63031),
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
DropdownMenuItem<String> buildMenuItem(String item) =>
    DropdownMenuItem(value: item, child: Text(item, style: TextStyle()));