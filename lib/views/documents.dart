import 'dart:collection';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class DocumentScreen extends StatelessWidget{

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


                      /*return ListTile(
                        title: Text(nome),
                        subtitle: Text(codigo),
                      );*/

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


}
