import 'dart:async';
import 'dart:collection';
import 'dart:convert';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_crud_1/routes/app_routes.dart';
import 'package:syncfusion_flutter_pdf/pdf.dart';

import 'package:flutter_crud_1/mobile.dart';

class UserHome extends StatelessWidget{
  CollectionReference _collectionRef =
  FirebaseFirestore.instance.collection('usuario');

   Future<String> getData() async {
    Completer<String> completer = Completer();
    List<String> list = [];
    // Get docs from collection reference
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance.collection("usuario").get();


    final allData = querySnapshot.docs.map((doc) => doc.data()).toList();
    for(int i = 0; i < querySnapshot.size; i++){
      var a = querySnapshot.docs[i];
      print(allData[i]);
      Container(
          child: ListTile(
            title: Text(allData[i].toString()),
          )
      );
      list.add(allData[i].toString());
    }
    completer.complete(list.toString());
    return completer.future;
  }


  @override
  Widget build(BuildContext context){


    getData();
    return
      /*Scaffold(
          appBar: AppBar(
            title: Text('Início'),
            centerTitle: true,
            backgroundColor: Colors.cyan,
          ),
          body: StreamBuilder(
            stream: FirebaseFirestore.instance
                .collection('usuario')
                .snapshots(),
            builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
                return Column(
                  children: <Widget>[
                    Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Row(
                          children: [for(int i = 0; i < 5; i++)
                                  Text(streamSnapshot.data?.docs[i]['codigo']),]
                        )
                    )
                    ]
                    ),
                    Row(
                        children: [
                          Flexible(
                              flex: 1,
                              child: Row(
                                  children: [for(int i = 0; i < 5; i++)
                                    Text(streamSnapshot.data?.docs[i]['nome']),]
                              )
                          )
                        ]
                    ),
                    Row(
                        children: [
                          Flexible(
                              flex: 1,
                              child: Row(
                                  children: [for(int i = 0; i < 5; i++)
                                    Text(streamSnapshot.data?.docs[i]['sexo']),]
                              )
                          )
                        ]
                    ),

                  ]
              ,
                );
             *//* return ListView.builder(
                itemCount: streamSnapshot.data?.docs.length,
                itemBuilder: (ctx, index) =>
                    Text(streamSnapshot.data?.docs[index]['nome']),
              );*//*
            },
          )
      );*/
      Scaffold(
        appBar: AppBar(
          title: Text('Início'),
          centerTitle: true,
          backgroundColor: Colors.cyan,
        ),
        body: Center(
            child:Padding(
              padding: EdgeInsets.only(top: 30,),
              child: ListView(
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 60,
                    decoration: BoxDecoration(
                      /*color: Colors.cyan,
                      borderRadius: BorderRadius.circular(30.0),*/
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            offset: const Offset(
                              5.0,
                              5.0,
                            ),
                            blurRadius: 10.0,
                            spreadRadius: 2.0,
                          ), //BoxShadow
                          BoxShadow(
                            color: Colors.white,
                            offset: const Offset(0.0, 0.0),
                            blurRadius: 0.0,
                            spreadRadius: 0.0,
                          ), //BoxShadow
                        ]
                    ),
                    child: GestureDetector(
                        onTap: (){
                          Navigator.of(context).pushNamed(AppRoutes.USER_REGISTRO);
                        },
                        child: ListTile(
                          title: Text('Pesquisa', textAlign: TextAlign.center, style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 20),),
                        )),),
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 60,
                    decoration: BoxDecoration(
                      /*color: Colors.cyan,
                      borderRadius: BorderRadius.circular(30.0),*/
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            offset: const Offset(
                              5.0,
                              5.0,
                            ),
                            blurRadius: 10.0,
                            spreadRadius: 2.0,
                          ), //BoxShadow
                          BoxShadow(
                            color: Colors.white,
                            offset: const Offset(0.0, 0.0),
                            blurRadius: 0.0,
                            spreadRadius: 0.0,
                          ), //BoxShadow
                        ]
                    ),
                    child: GestureDetector(
                        onTap: (){
                          Navigator.of(context).pushNamed(AppRoutes.USER_TRAT);
                        },
                        child: ListTile(
                          title: Text('Tratamento', textAlign: TextAlign.center, style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 20)),
                        )),),
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 60,
                    decoration: BoxDecoration(
                      /*color: Colors.cyan,
                      borderRadius: BorderRadius.circular(30.0),*/
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            offset: const Offset(
                              5.0,
                              5.0,
                            ),
                            blurRadius: 10.0,
                            spreadRadius: 2.0,
                          ), //BoxShadow
                          BoxShadow(
                            color: Colors.white,
                            offset: const Offset(0.0, 0.0),
                            blurRadius: 0.0,
                            spreadRadius: 0.0,
                          ), //BoxShadow
                        ]
                    ),
                    child: GestureDetector(
                        onTap: (){
                          Navigator.of(context).pushNamed(AppRoutes.DOCUMENTS);
                        },
                        child: ListTile(
                          title: Text('Documents', textAlign: TextAlign.center, style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 20)),
                        )),),
                    /*child: ElevatedButton(
                        onPressed: _createPDF,
                        child: ListTile(
                          title: Text('Gerar PDF', textAlign: TextAlign.center, style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 20)),
                        )),),*/

                ],
              ),
            ),



        )
    );

  }

  Future <void> _createPDF() async{
    PdfDocument document = PdfDocument();
    final page = document.pages.add();

    page.graphics.drawString('Welcome to PDF', PdfStandardFont(PdfFontFamily.helvetica, 30));

    PdfGrid grid = PdfGrid();
    grid.style = PdfGridStyle(
      font: PdfStandardFont(PdfFontFamily.helvetica, 30),
      cellPadding: PdfPaddings(left: 5, right: 2, top: 2, bottom: 2)
    );

    grid.columns.add(count: 3);
    grid.headers.add(1);

    PdfGridRow header = grid.headers[0];
    header.cells[0].value = 'Roll No';
    header.cells[1].value = 'Name';
    header.cells[2].value = 'Class';

    PdfGridRow row = grid.rows.add();
    row.cells[0].value = '1';
    row.cells[1].value = 'Arya';
    row.cells[2].value = '6';

    row = grid.rows.add();
    row.cells[0].value = '2';
    row.cells[1].value = 'John';
    row.cells[2].value = '9';

    row = grid.rows.add();
    row.cells[0].value = '3';
    row.cells[1].value = 'Tony';
    row.cells[2].value = '8';

    grid.draw(page: document.pages.add(), bounds: const Rect.fromLTWH(0, 0, 0, 0));


    List<int> bytes = document.save();
    document.dispose();

    saveAndLaunchFile(bytes, 'Output.pdf');
  }
}

/*
Container(
child: Scaffold(
body: StreamBuilder(
stream: FirebaseFirestore.instance
    .collection('usuario')
.snapshots(),
builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
return ListView.builder(
itemCount: 1,//streamSnapshot.data?.docs.length,
itemBuilder: (ctx, index) =>
Text(streamSnapshot.data?.docs[index][0]),
);
},
)
),
)*/
