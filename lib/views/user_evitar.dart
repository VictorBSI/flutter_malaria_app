import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_crud_1/database.dart';
import 'package:flutter_crud_1/routes/app_routes.dart';
import 'package:http/http.dart' as http;

class UserEvitar extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _UserEvitar();
}

class _UserEvitar extends State<UserEvitar>{
  DataBase dado = new DataBase();
  int _value = 1;
  int _value1 = 1;
  String orientacoes = 'Sim';
  String informacoes = 'Sim';
  @override
  Widget build(BuildContext context){
    String fonte = dado.getDataBase;
    final Map<String, Object> rcvdData = ModalRoute.of(context)!.settings.arguments as Map<String, Object>;
    return Scaffold(
      appBar: AppBar(
        title: Text('Orientações Terapêuticas'),
        centerTitle: true,
          backgroundColor: Colors.cyan,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(top: 80, left: 20, right: 20),
          child: ListView(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 20),
                child: Text('Recebeu orientações para evitar o consumo de bebida alcoólica durante o tratamento?',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    //height: 5,
                    fontSize: 24,
                    color: Colors.black54,),
                  textAlign: TextAlign.justify,),
              ),
              Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Flexible(
                            flex: 1,
                            child: Row(
                              children: [
                                Radio(
                                  value: 1,
                                  groupValue: _value,
                                  onChanged: (value){
                                    setState(() {
                                      orientacoes= 'Sim';
                                      _value = int.parse(value.toString());
                                    });
                                },),
                                Expanded(child: Text('Sim', maxLines: 2, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: Colors.black54),))
                              ],
                            )
                        ),
                        Padding(padding: EdgeInsets.all(40)),
                        Flexible(
                            flex: 1,
                            child: Row(
                              children: [
                                Radio(
                                  value: 0,
                                  groupValue: _value,
                                  onChanged: (value){
                                  setState(() {
                                    orientacoes= 'Não';
                                    _value = int.parse(value.toString());
                                  });
                                },),
                                Expanded(child: Text('Não', maxLines: 2, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: Colors.black54)))
                              ],
                            )
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 20),
                child: Text('Recebeu outras informações sobre a malária, além das orientações sobre o tratamento?',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    //height: 5,
                    fontSize: 24,
                    color: Colors.black54,),
                  textAlign: TextAlign.justify,),
              ),
              Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Flexible(
                            flex: 1,
                            child: Row(
                              children: [
                                Radio(
                                  value: 1,
                                  groupValue: _value1,
                                  onChanged: (value){
                                    setState(() {
                                      informacoes = 'Sim';
                                      _value1 = int.parse(value.toString());
                                    });
                                  },),
                                Expanded(child: Text('Sim', maxLines: 2, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: Colors.black54)))
                              ],
                            )
                        ),
                        Padding(padding: EdgeInsets.all(40)),
                        Flexible(
                            flex: 1,
                            child: Row(
                              children: [
                                Radio(
                                  value: 0,
                                  groupValue: _value1,
                                  onChanged: (value){
                                    setState(() {
                                      informacoes = 'Não';
                                      _value1 = int.parse(value.toString());
                                    });
                                  },),
                                Expanded(child: Text('Não', maxLines: 2, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: Colors.black54)))
                              ],
                            )
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.all(10)),
              ElevatedButton.icon(
                  onPressed: ()async{
                    await http.post(Uri.parse("http://$fonte/malaria/addEvitar.php"), body: {
                      "resposta_1": orientacoes,
                      "resposta_2": informacoes,
                      "usuario": rcvdData['codigo'].toString(),
                    });
                    Navigator.of(context).pushNamed(AppRoutes.USER_CURA, arguments: {"codigo": rcvdData['codigo'].toString(), "data_nascimento": rcvdData['data_nascimento']});
                    },
                  icon: Icon(Icons.arrow_forward),
                  label: Text('Próximo'),
                  style: ElevatedButton.styleFrom(primary: Colors.cyan)
              ),
            ],
          ),
        ),
      ),
    );
  }
}