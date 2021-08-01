import "package:flutter/material.dart";
import 'package:flutter_app/Pages/Pacer.dart';

class TheTables extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: Column(
        children: [
          Pacer("The Table"),
          Table(
            // defaultColumnWidth: FixedColumnWidth(120.0),
            border: TableBorder.all(
              width: 2.0,
              color: Colors.black54,
              style: BorderStyle.solid
            ),
            children: [
              TableRow(
                children: [
                  Column(children: [Padding(padding: const EdgeInsets.all(8.0), child: Text("R1C1"),),],),
                  Column(children: [Text("R1C2"),],),
                  Column(children: [Text('R1C3'),],),
                ]
              ),
              TableRow(
                children: [
                  Column(children: [Text("R2C1"),],),
                  Column(children: [Text("R2C2"),],),
                  Column(children: [Text('R2C3'),],),
                ]
              ),
              TableRow(
                children: [
                  Column(children: [Text("R3C1"),],),
                  Column(children: [Text("R3C2"),],),
                  Column(children: [Text('R3C3'),],),
                ]
              ),
            ],
          ),

          Pacer("The Data Table"),
          DataTable(
            columns: [
              DataColumn(label: Expanded(child: Text("Head 1", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),))),
              DataColumn(label: Expanded(child: Text("Head 2", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),))),
              DataColumn(label: Expanded(child: Text("Head 3", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),))),
            ],
            rows: List.generate(8, (int i){
              return DataRow(
                cells: [
                  DataCell( Text("Row${i+1} x cell 1", style: TextStyle(color: Colors.blue, fontSize: 16),)),
                  DataCell( Text("Row${i+1} x cell 2", style: TextStyle(color: Colors.blue, fontSize: 16),)),
                  DataCell( Text("Row${i+1} x cell 3", style: TextStyle(color: Colors.blue, fontSize: 16),)),
                ]
              );
            })
          )
        ],
      ),
    );
  }
}


// DataRow(cells: [
// DataCell( Text("Row1 x cell 1", style: TextStyle(color: Colors.blue, fontSize: 16),)),
// DataCell( Text("Row1 x cell 2", style: TextStyle(color: Colors.blue, fontSize: 16),)),
// DataCell( Text("Row1 x cell 3", style: TextStyle(color: Colors.blue, fontSize: 16),)),
// ]),
// DataRow(cells: [
// DataCell( Text("Row1 x cell 1", style: TextStyle(color: Colors.blue, fontSize: 16),)),
// DataCell( Text("Row1 x cell 2", style: TextStyle(color: Colors.blue, fontSize: 16),)),
// DataCell( Text("Row1 x cell 3", style: TextStyle(color: Colors.blue, fontSize: 16),)),
// ]),
// DataRow(cells: [
// DataCell( Text("Row1 x cell 1", style: TextStyle(color: Colors.blue, fontSize: 16),)),
// DataCell( Text("Row1 x cell 2", style: TextStyle(color: Colors.blue, fontSize: 16),)),
// DataCell( Text("Row1 x cell 3", style: TextStyle(color: Colors.blue, fontSize: 16),)),
// ]),
// DataRow(
// ]),