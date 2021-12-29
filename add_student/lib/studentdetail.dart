import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class StudentDetail extends StatefulWidget {
  const StudentDetail({Key? key}) : super(key: key);

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

  final nationality = ["Nepalese", "Chinese", "American", "Indian"];
  String? value;

  final discount = ["No Discount", "5 %", "10 %", "15 %"];
  String? dvalue;

  final category = ["Student", "Teacher"];
  String? cvalue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Student'),
        centerTitle: true,
        backgroundColor: const Color(0xff3742fa),
        actions: <Widget>[
          Image.asset(
            'images/card.png',
            fit: BoxFit.contain,
            height: 20,
            width: 40,
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            child: const Text('ID Card'),
            margin: const EdgeInsets.only(top: 15),
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20),
              child: Row(
                children: const [
                  Text('Student Information'),
                  SizedBox(width: 20),
                  Text('Other Information'),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  width: 500,
                  height: 600,
                  decoration: BoxDecoration(
                      border: Border.all(
                          style: BorderStyle.solid, color: Colors.black12)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('01:Student Information'),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text("Student ID:"),
                            Flexible(
                              child: Container(
                                height: 30,
                                width: 240,
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
                            ),
                            const SizedBox(width: 60),
                            RichText(
                                text: TextSpan(
                                    style: const TextStyle(
                                        decoration: TextDecoration.underline,
                                        color: Colors.blue),
                                    text: "Retrieve Enquiry",
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () async {
                                        var url =
                                            "https://docs.flutter.dev/cookbook/forms/text-input";
                                        if (await canLaunch(url)) {
                                          await launch(url);
                                        } else {
                                          throw "Cannot Load";
                                        }
                                      })),
                          ],
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            const Text("Full Name:"),
                            Flexible(
                              child: Container(
                                height: 30,
                                width: 400,
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
                          ],
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            Column(
                              children: const [
                                Text("Nationality:"),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  height: 20,
                                  width: 150,
                                  color: Colors.brown[50],
                                  // decoration: BoxDecoration(
                                  //     border:
                                  //         Border.all(color: Colors.black45)),
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton(
                                        value: value,
                                        items: nationality
                                            .map(buildMenuItem)
                                            .toList(),
                                        onChanged: (value) => setState(() {
                                              this.value = value as String?;
                                            })),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 50),
                            Column(
                              children: const [
                                Text("Gender:"),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  height: 20,
                                  width: 150,
                                  color: Colors.brown[50],
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton(
                                        value: value,
                                        items: nationality
                                            .map(buildMenuItem)
                                            .toList(),
                                        onChanged: (value) => setState(() {
                                              this.value = value as String?;
                                            })),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Text("Birth Date:"),
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
                          ],
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            Column(
                              children: [Text("Category: ")],
                            ),
                            Column(
                              children: [
                                Container(
                                  height: 20,
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
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  width: 440,
                  height: 600,
                  decoration: BoxDecoration(
                      border: Border.all(
                          style: BorderStyle.solid, color: Colors.black26)),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('02: Choose at least 1 batch'),
                        Container(
                          width: double.infinity,
                          height: 160,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  style: BorderStyle.solid,
                                  color: Colors.black26)),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text('03: Choose at least 1 pckage'),
                        Container(
                          width: double.infinity,
                          height: 160,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  style: BorderStyle.solid,
                                  color: Colors.black26)),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        const Text('04: Amount Information'),
                        Container(
                            width: double.infinity,
                            height: 160,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  style: BorderStyle.solid,
                                  color: Colors.black26),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      const Text("Subtotal:"),
                                      const SizedBox(width: 80),
                                      Flexible(
                                          child: Container(
                                              height: 30,
                                              width: 260,
                                              child: TextFormField(
                                                validator: myvalidation,
                                                cursorColor: Colors.red,
                                                style: const TextStyle(
                                                    fontSize: 12),
                                                decoration:
                                                    const InputDecoration(
                                                  border: OutlineInputBorder(
                                                      borderSide: BorderSide()),
                                                ),
                                              )))
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Column(
                                        children: const [
                                          Text("Discount %"),
                                        ],
                                      ),
                                      // Column(
                                      //   children: [
                                      //     Container(
                                      //       width: 100,
                                      //       decoration: BoxDecoration(
                                      //           border: Border.all(
                                      //               color: Colors.black45)),
                                      //       child: DropdownButtonHideUnderline(
                                      //         child: DropdownButton(
                                      //             value: dvalue,
                                      //             items: discount
                                      //                 .map(buildMenuItem)
                                      //                 .toList(),
                                      //             onChanged: (value) =>
                                      //                 setState(() {
                                      //                   this.dvalue =
                                      //                       value as String?;
                                      //                 })),
                                      //       ),
                                      //     )
                                      //   ],
                                      // )
                                      Container(
                                        width: 200,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            TextField(
                                              decoration: InputDecoration(
                                                  border: OutlineInputBorder(),
                                                  hintText: "0"),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(),
                                  Row()
                                ],
                              ),
                            )),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  width: 250,
                  height: 600,
                  decoration: BoxDecoration(
                      border: Border.all(
                          style: BorderStyle.solid, color: Colors.black26)),
                  child: Column(
                    children: [Text('Student')],
                  ),
                ),
              ],
            ),
            Padding(
                padding: const EdgeInsets.only(left: 500.0, top: 20),
                child: Row(
                  children: [
                    OutlinedButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.save),
                        label: Text('Save'),
                        style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          primary: Colors.white,
                        )),
                    SizedBox(
                      width: 20,
                    ),
                    OutlinedButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.report),
                        label: Text('Report'),
                        style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          primary: Colors.white,
                        )),
                    SizedBox(
                      width: 20,
                    ),
                    OutlinedButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.cancel),
                        label: Text('Cancel'),
                        style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.red,
                          primary: Colors.white,
                        )),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}

DropdownMenuItem<String> buildMenuItem(String item) =>
    DropdownMenuItem(value: item, child: Text(item, style: TextStyle()));
