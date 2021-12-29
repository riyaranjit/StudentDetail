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
  String? nvalue;

  final gender = ["M", "F"];
  String? gvalue;

  final discount = ["No Discount", "5 %", "10 %", "15 %"];
  String? dvalue;

  final category = ["Student", "Teacher"];
  String? cvalue;

  static const int numItems = 1;
  List<bool> selected = List<bool>.generate(numItems, (int index) => false);

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
                                        value: nvalue,
                                        items: nationality
                                            .map(buildMenuItem)
                                            .toList(),
                                        onChanged: (value) => setState(() {
                                              this.nvalue = value as String?;
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
                                        value: gvalue,
                                        items:
                                            gender.map(buildMenuItem).toList(),
                                        onChanged: (value) => setState(() {
                                              this.gvalue = value as String?;
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
                        const Text('02: Choose at least 1 batch'),
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
                        const SizedBox(
                          height: 20,
                        ),
                        const Text('03: Choose at least 1 package'),
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
                        const SizedBox(
                          height: 20,
                        ),
                        const Text('04: Amount Information'),
                        Container(
                            width: double.infinity,
                            height: 200,
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
                                      const SizedBox(width: 63),
                                      Flexible(
                                          child: Container(
                                              height: 30,
                                              width: 270,
                                              child: const TextField(
                                                style: TextStyle(fontSize: 12),
                                                decoration: InputDecoration(
                                                  hintText: "0",
                                                  border: OutlineInputBorder(
                                                      borderSide: BorderSide()),
                                                ),
                                              )))
                                    ],
                                  ),
                                  const SizedBox(height: 5),
                                  Row(
                                    children: [
                                      Column(
                                        children: const [
                                          Text("Discount %"),
                                        ],
                                      ),
                                      SizedBox(width: 50),
                                      Column(
                                        children: [
                                          Container(
                                            width: 120,
                                            height: 30,
                                            color: Colors.brown[50],
                                            child: DropdownButtonHideUnderline(
                                              child: DropdownButton(
                                                  value: dvalue,
                                                  items: discount
                                                      .map(buildMenuItem)
                                                      .toList(),
                                                  onChanged: (value) =>
                                                      setState(() {
                                                        this.dvalue =
                                                            value as String?;
                                                      })),
                                            ),
                                          )
                                        ],
                                      ),
                                      const SizedBox(
                                        width: 30,
                                      ),
                                      Column(
                                        children: [
                                          Container(
                                              width: 120,
                                              height: 30,
                                              color: Colors.brown[50],
                                              child: TextFormField(
                                                style: const TextStyle(
                                                    fontSize: 12),
                                                decoration:
                                                    const InputDecoration(
                                                  border: OutlineInputBorder(
                                                      borderSide: BorderSide()),
                                                ),
                                              ))
                                        ],
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 5),
                                  Row(
                                    children: [
                                      const Text("Total Amount:"),
                                      const SizedBox(width: 30),
                                      Flexible(
                                          child: Container(
                                              height: 30,
                                              width: 270,
                                              child: const TextField(
                                                style: TextStyle(fontSize: 12),
                                                decoration: InputDecoration(
                                                  hintText: "0",
                                                  border: OutlineInputBorder(
                                                      borderSide: BorderSide()),
                                                ),
                                              )))
                                    ],
                                  ),
                                  const SizedBox(height: 5),
                                  Row(
                                    children: [
                                      const Text("Paid Fee:"),
                                      const SizedBox(width: 62),
                                      Flexible(
                                          child: Container(
                                              height: 30,
                                              width: 270,
                                              child: const TextField(
                                                style: TextStyle(fontSize: 12),
                                                decoration: InputDecoration(
                                                  hintText: "0",
                                                  border: OutlineInputBorder(
                                                      borderSide: BorderSide()),
                                                ),
                                              )))
                                    ],
                                  ),
                                  const SizedBox(height: 5),
                                  Row(
                                    children: [
                                      const Text("Advance Fee:"),
                                      const SizedBox(width: 35),
                                      Flexible(
                                          child: Container(
                                              height: 30,
                                              width: 270,
                                              child: const TextField(
                                                style: TextStyle(fontSize: 12),
                                                decoration: InputDecoration(
                                                  hintText: "0",
                                                  border: OutlineInputBorder(
                                                      borderSide: BorderSide()),
                                                ),
                                              )))
                                    ],
                                  ),
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

DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
    value: item, child: Text(item, style: TextStyle(fontSize: 12)));
