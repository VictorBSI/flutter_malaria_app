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
            stream: FirebaseFirestore.instance.collection("/resposta/GjPewnIdUJUpJzVrHYZB/user_agentes").snapshots(), //
            builder: (_, AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot){
              if(snapshot.hasData && snapshot.data != null){
                if(snapshot.data!.docs.isNotEmpty){
                  return ListView.separated(
                    itemBuilder: (_, int index){
                      Map<String, dynamic> docData = snapshot.data!.docs[index].data();

                      if(docData.isEmpty){
                        return Text("Document is Empty");
                      }

                      String usuario = snapshot.data!.docs.elementAt(index).get("usuario");
                      String resposta = snapshot.data!.docs.elementAt(index).get("resposta");


                      /*return ListTile(
                        title: Text(nome),
                        subtitle: Text(codigo),
                      );*/

                      return ListView(
                        shrinkWrap: true,
                        padding: const EdgeInsets.all(20.0),
                        children: <Widget>[
                          Text(resposta),
                          Text(usuario),

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

