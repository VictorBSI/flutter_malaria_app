import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_crud_1/database.dart';
import 'package:http/http.dart' as http;
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

DataBase dado = new DataBase();

/// The application that contains datagrid on it.
class Relatorio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Relatório',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: DocumentsScreen(),
    );
  }
}

/// The home page of the application which hosts the datagrid.
class DocumentsScreen extends StatefulWidget {
  /// Creates the home page.
  DocumentsScreen({Key? key}) : super(key: key);

  @override
  _DocumentsScreenState createState() => _DocumentsScreenState();
}
class _DocumentsScreenState extends State<DocumentsScreen> {
  late DocumentScreenDataSource documentScreenDataSource;
  List<DocumentScreen> documentScreens = <DocumentScreen>[];
  late List<GridColumn> _columns ;

  Future<dynamic> generateDocumentList() async{

    //DocumentScreenDataSource documentScreenDataSource;
    String fonte = dado.getDataBase;
    var url = 'http://$fonte/malaria/getData.php';

    final response = await http.get(Uri.parse(url));
    var list = json.decode(response.body);
    List<DocumentScreen> _documentScreens = await list.map<DocumentScreen>((json) => DocumentScreen.fromJson(json)).toList();
    documentScreenDataSource = DocumentScreenDataSource(_documentScreens);
    return _documentScreens;
  }

  List<GridColumn> getColumns() {
    return <GridColumn>[
      GridColumn(
          columnName: 'codigo',
          //width: 70,
          label: Container(
              padding: EdgeInsets.all(16.0),
              alignment: Alignment.center,
              child: Text(
                'Codigo',
              ))),
      GridColumn(
          columnName: 'nome',
          //width: 80,
          label: Container(
              padding: EdgeInsets.all(8.0),
              alignment: Alignment.center,
              child: Text('Nome'))),
      GridColumn(
          columnName: 'data_nascimento',
          //width: 120,
          label: Container(
              padding: EdgeInsets.all(8.0),
              alignment: Alignment.center,
              child: Text(
                'Data de nascimento',
                overflow: TextOverflow.ellipsis,
              ))),
      GridColumn(
          columnName: 'endereco',
          label: Container(
              padding: EdgeInsets.all(8.0),
              alignment: Alignment.center,
              child: Text('Endereço'))),
      GridColumn(
          columnName: 'sexo',
          label: Container(
              padding: EdgeInsets.all(8.0),
              alignment: Alignment.center,
              child: Text('Sexo'))),
      GridColumn(
          columnName: 'resposta',
          label: Container(
              padding: EdgeInsets.all(8.0),
              alignment: Alignment.center,
              child: Text('Resposta'))),
    ];
  }

  @override
  void initState() {
    super.initState();

  }
  @override
  Widget build(BuildContext context){
    _columns = getColumns();
    return Scaffold(
      appBar: AppBar(
        title: Text('Relatório'),
      ),
      body: FutureBuilder<dynamic>(
        future: generateDocumentList(),
        builder: (context, data){
          return data.hasData
              ? SfDataGrid(
              source: documentScreenDataSource,
              columnWidthMode: ColumnWidthMode.auto,
              columns: _columns)
              : Center(
            child: CircularProgressIndicator(
              strokeWidth: 2,
              value: 8.0,
            ),
          );
        },
      ),
    );
  }


}


class DocumentScreenDataSource extends DataGridSource{

  DocumentScreenDataSource(this.documentScreens){
    buildDataGridRow();
  }
  late List<GridColumn> _columns ;

  void buildDataGridRow(){
    _documentDataGridRows = documentScreens.map<DataGridRow>((e) => DataGridRow(cells:[
      DataGridCell<String>(columnName: 'codigo', value: e.codigo),
      DataGridCell<String>(columnName: 'nome', value: e.nome),
      DataGridCell<String>(columnName: 'data_nascimento', value: e.data_nascimento),
      DataGridCell<String>(columnName: 'endereco', value: e.endereco),
      DataGridCell<String>(columnName: 'sexo', value: e.sexo),
      DataGridCell<String>(columnName: 'resposta', value: e.resposta),
    ])).toList();
  }

  List<DocumentScreen> documentScreens = [];

  List<DataGridRow> _documentDataGridRows = [];

  @override
  List<DataGridRow> get rows => _documentDataGridRows;

  @override
  DataGridRowAdapter buildRow(DataGridRow row){
    return DataGridRowAdapter(
        cells: row.getCells().map<Widget>((e) {
          return Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(8.0),
            child: Text(e.value.toString()),
          );
        }).toList());
  }

  void updateDataGrid() {
    notifyListeners();
  }

}

class DocumentScreen {
  String codigo;
  String nome;
  String data_nascimento;
  String endereco;
  String sexo;
  String resposta;

  DocumentScreen({required this.codigo, required this.nome, required this.data_nascimento, required this.endereco, required this.sexo, required this.resposta});
  factory DocumentScreen.fromJson(Map<String, dynamic> json){
    return DocumentScreen(
      codigo: json['codigo'] as String,
      nome: json['nome'] as String,
      data_nascimento: json['data_nascimento'] as String,
      endereco: json['endereco'] as String,
      sexo: json['sexo'] as String,
      resposta: json['resposta'] as String,
    );
  }}
/*
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
  }
}

*/