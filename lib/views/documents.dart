import 'dart:collection';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_crud_1/models/mysql.dart';
import 'package:flutter_crud_1/models/user.dart';


class DocumentScreen extends StatefulWidget{
  DocumentScreen({ Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _DocumentScreenState createState() => _DocumentScreenState();
}

Future<List<User>> getmySQLData() async{
  var db = Mysql();
  String sql = 'select nome, codigo from teste.usuario';
  final List<User> mylist = [];

  await db.getConnection().then((conn) async {
    await conn.query(sql).then((results) {
      for(var res in results){
        final User myuser = User(name: res['nome'].toString(), codigo: res['codigo'].toString());
        mylist.add(myuser);
      }
    }).onError((error, stackTrace) {
      print(error);
      return null;
    });
    conn.close();
  });
  return mylist;
}

Future<void> addSQLData(String nome, String codigo) async{
  var db = Mysql();
  await db.getConnection().then((conn) async
  {
    var result = await conn.query('insert into teste.usuario (nome, codigo) values (?, ?)', [nome, codigo]);
  }
  );
}

class _DocumentScreenState extends State<DocumentScreen>{
  int _counter = 0;
  var db = new Mysql();
  var usuario = '';

  void _getCostumer(){
    db.getConnection().then((conn) {
      String sql = 'select nome from teste.usuario';
      conn.query(sql).then((results) {
        for(int i = 0; i < results.length; i++/*var row in results*/){
          setState(() {
            usuario = results.elementAt(i)['nome'].toString();
          });

        }
      });
      conn.close();
    });
  }
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('Teste'),),
      body: Center(
        child: FutureBuilder<List<User>>(
            future: getmySQLData(),
            builder: (BuildContext context, snapshot){
              if(snapshot.connectionState == ConnectionState.waiting){
                return const CircularProgressIndicator();
              } else if (snapshot.hasError) {
                return Text(snapshot.error.toString());
              }
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index){
                  final user = snapshot.data![index];
                  return ListTile(
                    title: Text('nome: '+user.name),
                    subtitle: Text('codigo: '+user.codigo),
                  );
                },
              );
            }
        ),
      ),
    );


    /*return Scaffold(
      appBar: AppBar(title: Text('Teste'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'usuario:',
            ),
            *//*Text(
             '$usuario',
            ),*//*
            ListTile(
              title: Text('$usuario'),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _getCostumer,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );*/
  }
}

/*class DocumentScreen extends StatelessWidget{

  const DocumentScreen({Key? key}) : super(key : key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Read Documents"),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
          child: StreamBuilder(
            stream: FirebaseFirestore.instance.collection('/usuario/registro/registro_usuario').snapshots(), //
            builder: (_, AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot){
              if(snapshot.hasData && snapshot.data != null){
                if(snapshot.data!.docs.isNotEmpty){
                  return ListView.separated(
                    itemBuilder: (_, int index){
                      Map<String, dynamic> docData = snapshot.data!.docs[index].data();
                      Map<String, dynamic> docData2 = snapshot.data!.docs[index].data();


                      if(docData.isEmpty){
                        return Text("Document is Empty");
                      }

                      //String usuario = snapshot.data!.docs.elementAt(index).get("usuario");
                      String nome = snapshot.data!.docs.elementAt(index).get("nome");
                      String codigo = snapshot.data!.docs.elementAt(index).get("codigo");
                      //String resposta = snapshot.data!.docs.elementAt(index).get("resposta");


                      *//*return ListTile(
                        title: Text(nome),
                        subtitle: Text(codigo),
                      );*//*

                      return ListView(
                        shrinkWrap: true,
                        padding: const EdgeInsets.all(20.0),
                        children: <Widget>[
                          Text(nome),
                          Text(codigo),
                          //Text(resposta),

                        ],
                      );
                    },
                    separatorBuilder: (_,__){
                      return const Divider();
                    },
                    itemCount: snapshot.data!.docs.length,
                  );
                }else{
                  return Center(
                    child: Text("Document aren't available"),
                  );
                }
              }else{
                return Center(
                  child: Text("Getting Error"),
                );
              }
            },
          )),
    );

  }
}

Future <void> _print() async{
  CollectionReference citiesRef = FirebaseFirestore.instance.collection("cities");
  CollectionReference citiesRef1 = FirebaseFirestore.instance.collection("cities");

  Map<String, Object> ggbData = new HashMap<String, Object>();
  ggbData.update("resposta", (value) => "Golden Gate Bridge") ;
  ggbData.update("codigo", (value) => "4654564") ;
  citiesRef.doc("SF").collection("landmarks").add(ggbData);


}*/
