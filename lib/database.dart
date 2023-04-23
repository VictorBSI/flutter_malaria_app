class DataBase {

  String get getDataBase{
    return '192.168.100.8';//'malaria.iec.gov.br';
  }
}
/*import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class Database {
  late FirebaseFirestore firestore;

  initialise() {
    firestore = FirebaseFirestore.instance;
  }


  Future<void> create(String nome, sexo, String endereco,
      Timestamp data_nascimento) async {
    try {
      await firestore.collection("usuario").add({
        'nome': nome,
      });
    } catch (e) {
      print(e);
    }
  }
}*/