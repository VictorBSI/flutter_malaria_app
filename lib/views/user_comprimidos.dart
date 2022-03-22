import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_crud_1/models/mysql.dart';
import 'package:flutter_crud_1/routes/app_routes.dart';

Future<void> addSQLData(String resposta, String usuario, String explique) async {
  var db = Mysql();
  return await db.getConnection().then((result){
    result.query('insert into malaria.user_comprimidos (resposta, usuario, explique) values (?, ?, ?)', [resposta, usuario, explique]);
  });
}

class UserComprimidos extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _UserComprimidos();
}

class _UserComprimidos extends State<UserComprimidos>{
  int _value = 1;
  String tomou = 'Sim';
  String explique = '';
  @override
  Widget build(BuildContext context){
    final Map<String, Object> rcvdData = ModalRoute.of(context)!.settings.arguments as Map<String, Object>;
    return Scaffold(
      appBar: AppBar(
        title: Text('Adesão ao tratamento'),
        centerTitle: true,
          backgroundColor: Colors.cyan,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(top: 120, left: 20, right: 20),
          child: ListView(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 20),
                child: Text('Quando teve malária, tomou os comprimidos do jeito que o profissional de saúde lhe orientou?',
                    style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24), textAlign: TextAlign.justify,),
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
                                  onChanged: (value)async{
                                    setState(() {
                                      tomou = 'Sim';
                                      _value = int.parse(value.toString());
                                    });
                                },),
                                Expanded(child: Text('Sim', maxLines: 2, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black54)))
                              ],
                            )
                        ),
                        Padding(padding: EdgeInsets.only(right: 30)),
                        Flexible(
                            flex: 1,
                            child: Row(
                              children: [
                                Radio(
                                  value: 0,
                                  groupValue: _value,
                                  onChanged: (value)async{
                                    setState(() {
                                      tomou = 'Não';
                                      _value = int.parse(value.toString());
                                    });
                                },),
                                Expanded(child: Text('Não', maxLines: 2, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black54)))
                              ],
                            )
                        ),
                      ],
                    )
                  ],
                ),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Explique',
                  contentPadding: new EdgeInsets.fromLTRB(0, 10, 10, 0),),
                onChanged: (value)async{
                  explique = value;
                },
              ),
              ElevatedButton.icon(
                  onPressed: () async {
                    await addSQLData(tomou, rcvdData['codigo'].toString(), explique);
                    Navigator.of(context).pushNamed(AppRoutes.USER_MOTIVO, arguments: {"codigo": rcvdData['codigo'].toString()});
                    },
                  icon: Icon(Icons.arrow_forward),
                  label: Text('Próximo'),
                  style: ElevatedButton.styleFrom(primary: Colors.cyan))
            ],
          ),
        ),
      ),
    );
  }
}