

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prova_flutter/zone.dart';



class MyPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Zone"),
        backgroundColor: Color.fromARGB(255, 160, 25, 29)
      ),

      body: MyListView()._myListViewWithCustomIconAndCard(context),
    );
  }
}

class MyListView extends StatelessWidget {

  Widget _myListViewWithCustomIconAndCard(BuildContext context) {

    final zones = [
      new Zone(0,  "Via Vigneti 78", "Canosa", "70124"),
      new Zone(1,  "Via Vigneti 78", "Canosa", "70124"),
      new Zone(2,  "Via Vigneti 78", "Canosa", "70124"),
      new Zone(3,  "Via Vigneti 78", "Canosa", "70124"),
      new Zone(4,  "Via Vigneti 78", "Canosa", "70124"),
      new Zone(5,  "Via Vigneti 78", "Canosa", "70124"),
      new Zone(6,  "Via Vigneti 78", "Canosa", "70124"),
      new Zone(7,  "Via Vigneti 78", "Canosa", "70124"),
      new Zone(8,  "Via Vigneti 78", "Canosa", "70124"),
    ];

    return ListView.builder(
      itemCount: zones.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Card(//definisco la forma
            elevation: 3,
            shape: StadiumBorder(
                side: BorderSide(
                  color: Color.fromARGB(255, 160, 25, 29),
                  width: 1.0,
                )
            ),
            child: InkWell(
              customBorder: StadiumBorder(
                  side: BorderSide(
                    color: Color.fromARGB(255, 160, 25, 29),
                    width: 1.0,
                  )
              ),
              onTap: () => print("portami da leo"),
              child: ListTile(
                leading: Icon(Icons.add_business_outlined, color: Colors.black, size: 20),
                title: Text ('Zona cantina'),
                subtitle: Text (zones[index].id.toString() ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget build(BuildContext context) => Container();

}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'assets',

        home: MyPage()
    );
  }
}

void main() => runApp(MyApp());
