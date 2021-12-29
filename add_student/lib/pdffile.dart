import 'package:flutter/material.dart';

class PdfViewer extends StatelessWidget {
  const PdfViewer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 30, 0, 0),
                  child: Column(
                    children: const [
                      CircleAvatar(
                        backgroundColor: Colors.red,
                        backgroundImage: AssetImage("../images/card.png"),
                        radius: 50,
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 400,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: const [
                        Text(
                          "Institute Management Software",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Row(
                      children: const [
                        Text(
                          "Phone:04327564, Address: Pokhara",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w300),
                        )
                      ],
                    ),
                    Row(
                      children: const [
                        Text(
                          "Reg. No: 978764578687475",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w300),
                        )
                      ],
                    ),
                    Row(
                      children: const [
                        Text(
                          "Student Admission Form",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          const Divider(
            thickness: 2,
            color: Colors.black87,
            indent: 50,
            endIndent: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 70),
            child: Row(
              children: const [
                Text(
                  "Student Id: 3",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                )
              ],
            ),
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 70),
            child: Row(
              children: const [
                Text(
                  "Full Name: Sudip Neupane",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                )
              ],
            ),
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 70),
            child: Row(
              children: const [
                Text(
                  "Address: Butwal",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                )
              ],
            ),
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 70),
            child: Row(
              children: const [
                Text(
                  "Phone:93843658345",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                )
              ],
            ),
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 70),
            child: Row(
              children: const [
                Text(
                  "Batch:Computer Basic Batch 1",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                )
              ],
            ),
          ),
          DataTable(columns: const [
            DataColumn(
                label: Text(
              "Birth Date",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            )),
            DataColumn(
                label: Text(
              "CitizenShip No",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            )),
            DataColumn(
                label: Text(
              "Passport No",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            )),
            DataColumn(
                label: Text(
              "Nationality",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            ))
          ], rows: const [
            DataRow(cells: [
              DataCell(Text("2001-12-23")),
              DataCell(Text("04-2837547838-89")),
              DataCell(Text("928756378")),
              DataCell(Text("Nepalese")),
            ])
          ]),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Container(
              height: 100,
              width: 600,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black54,
                ),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Column(
                children: [
                  Row(
                    children: const [
                      Text(
                        "Category: focus Education, Gender:Male, Marital Status: Unmarried",
                        textAlign: TextAlign.start,
                      )
                    ],
                  ),
                  Row(
                    children: const [
                      Text(
                        "SEE Year:N/A, Grade:N/A, Symbol No: N/A",
                        textAlign: TextAlign.start,
                      )
                    ],
                  ),
                  Row(
                    children: const [
                      Text(
                        "Email Id: sudip123@gmail.com",
                        textAlign: TextAlign.start,
                      )
                    ],
                  ),
                  Row(
                    children: const [
                      Text(
                        "Enrolled Package: Computer Basic Course, Last Printed on: 12/23/2021",
                        textAlign: TextAlign.start,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Text("fndsj"),
          Flexible(
            child: DataTable(columns: const [
              DataColumn(
                  label: Text(
                "Birth Date",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              )),
              DataColumn(
                  label: Text(
                "CitizenShip No",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              )),
              DataColumn(
                  label: Text(
                "Passport No",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              )),
              DataColumn(
                  label: Text(
                "Nationality",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ))
            ], rows: const [
              DataRow(cells: [
                DataCell(Text("2001-12-23")),
                DataCell(Text("04-2837547838-89")),
                DataCell(Text("928756378")),
                DataCell(Text("Nepalese")),
              ])
            ]),
          ),
        ],
      ),
    );
  }
}
