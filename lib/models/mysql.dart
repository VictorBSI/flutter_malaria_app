import 'package:mysql1/mysql1.dart';

class Mysql{
  static String host = '35.184.28.132',
                user = 'root',
                password = 'Tarso1992',
                db = 'teste';
  static int port = 3306;

  Mysql();

  Future<MySqlConnection> getConnection() async{
    var settings = new ConnectionSettings(
      host: host,
      port: port,
      user: user,
      password: password,
      db: db
    );
    return await MySqlConnection.connect(settings);
  }
}