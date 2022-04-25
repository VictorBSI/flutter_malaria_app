import 'package:flutter/material.dart';
import 'package:flutter_crud_1/provider/users.dart';
import 'package:flutter_crud_1/routes/app_routes.dart';
import 'package:flutter_crud_1/views/clock.dart';
import 'package:flutter_crud_1/views/documents.dart';
import 'package:flutter_crud_1/views/login_page.dart';
import 'package:flutter_crud_1/views/sign_up_page.dart';
import 'package:flutter_crud_1/views/trat_falciparum.dart';
import 'package:flutter_crud_1/views/trat_falciparum_gestante.dart';
import 'package:flutter_crud_1/views/trat_malarae.dart';
import 'package:flutter_crud_1/views/trat_mista.dart';
import 'package:flutter_crud_1/views/trat_recorrencia60_vivax.dart';
import 'package:flutter_crud_1/views/trat_registro.dart';
import 'package:flutter_crud_1/views/trat_vivax_deficiencia_g6pd.dart';
import 'package:flutter_crud_1/views/trat_vivax_ovale.dart';
import 'package:flutter_crud_1/views/trat_vivax_ovale_gestante.dart';
import 'package:flutter_crud_1/views/user_agentes.dart';
import 'package:flutter_crud_1/views/user_bem.dart';
import 'package:flutter_crud_1/views/user_casa.dart';
import 'package:flutter_crud_1/views/user_comprimidos.dart';
import 'package:flutter_crud_1/views/user_cura.dart';
import 'package:flutter_crud_1/views/user_diagnostico.dart';
import 'package:flutter_crud_1/views/user_escolaridade.dart';
import 'package:flutter_crud_1/views/user_evitar.dart';
import 'package:flutter_crud_1/views/user_form.dart';
import 'package:flutter_crud_1/views/user_home.dart';
import 'package:flutter_crud_1/views/user_list.dart';
import 'package:flutter_crud_1/views/user_localizada.dart';
import 'package:flutter_crud_1/views/user_mal.dart';
import 'package:flutter_crud_1/views/user_motivo.dart';
import 'package:flutter_crud_1/views/user_naoseguir.dart';
import 'package:flutter_crud_1/views/user_ocupacao.dart';
import 'package:flutter_crud_1/views/user_orientacoes.dart';
import 'package:flutter_crud_1/views/user_pessoas.dart';
import 'package:flutter_crud_1/views/user_registro.dart';
import 'package:flutter_crud_1/views/user_remedio.dart';
import 'package:flutter_crud_1/views/user_renda.dart';
import 'package:flutter_crud_1/views/user_residencia.dart';
import 'package:flutter_crud_1/views/user_seguir.dart';
import 'package:flutter_crud_1/views/user_sobraram.dart';
import 'package:flutter_crud_1/views/user_tempo.dart';
import 'package:flutter_crud_1/views/user_tipo.dart';
import 'package:flutter_crud_1/views/user_vezes.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _fbApp = Firebase.initializeApp();
  final _formKey = GlobalKey<FormState>();
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        key: _formKey,
        providers: [
          ChangeNotifierProvider(
            create: (ctx) => Users(),
            ),
          ],
          child: FutureBuilder( //MaterialApp
            future: _fbApp,
            builder: (context, snapshot){
              if(snapshot.hasError){
                print('You have an error! ${snapshot.error.toString()}');
                return Text('Something went wrong!');
              } else if (snapshot.hasData){
                return MaterialApp(
                  title: 'Flutter Demo',
                  theme: ThemeData(
                    primarySwatch: Colors.blue,
                    visualDensity: VisualDensity.adaptivePlatformDensity,
                  ),
                  routes: {
                    AppRoutes.HOME: (_) => LoginPage(),
                    AppRoutes.USER_FORM: (_) => UserForm(),
                    AppRoutes.USER_RESIDENCIA: (_) => UserResidencia(),
                    AppRoutes.USER_REGISTRO: (_) => UserRegistro(),
                    AppRoutes.USER_CASA: (_) => UserCasa(),
                    AppRoutes.USER_LOCALIZADA: (_) => UserLocalizada(),
                    AppRoutes.USER_OCUPACAO: (_) => UserOcupacao(),
                    AppRoutes.USER_ESCOLARIDADE: (_) => UserEscolaridade(),
                    AppRoutes.USER_DIAGNOSTICO: (_) => UserDiagnostico(),
                    AppRoutes.USER_ORIENTACOES: (_) => UserOrientacoes(),
                    AppRoutes.USER_AGENTES: (_) => UserAgentes(),
                    AppRoutes.USER_EVITAR: (_) => UserEvitar(),
                    AppRoutes.USER_CURA: (_) => UserCura(),
                    AppRoutes.USER_VEZES: (_) => UserVezes(),
                    AppRoutes.USER_TIPO: (_) => UserTipo(),
                    AppRoutes.USER_TEMPO: (_) => UserTempo(),
                    AppRoutes.USER_COMPRIMIDOS: (_) => UserComprimidos(),
                    AppRoutes.USER_MOTIVO: (_) => UserMotivo(),
                    AppRoutes.USER_SOBRARAM: (_) => UserSobraram(),
                    AppRoutes.USER_SEGUIR: (_) => UserSeguir(),
                    AppRoutes.USER_NAOSEGUIR: (_) => UserNaoseguir(),
                    AppRoutes.USER_REMEDIO: (_) => UserRemedio(),
                    AppRoutes.USER_BEM: (_) => UserBem(),
                    AppRoutes.USER_MAL: (_) => UserMal(),
                    AppRoutes.URL_SIGN_UP: (_) => SignUpPage(),
                    AppRoutes.LOGIN: (_) => LoginPage(),
                    AppRoutes.USER_PESSOAS: (_) => UserPessoas(),
                    AppRoutes.USER_RENDA: (_) => UserRenda(),
                    AppRoutes.USER_HOME: (_) => UserHome(),
                    AppRoutes.USER_TRAT: (_) => UserTratamento(),
                    AppRoutes.TRAT_VIVAX_OVALE: (_) => VivaxOvale(),
                    AppRoutes.TRAT_VIVAX_OVALE_GESTANTE: (_) => VivaxOvaleGestante(),
                    AppRoutes.TRAT_MALARAE: (_) => Malarae(),
                    AppRoutes.TRAT_FALCIPARUM: (_) => Falciparum(),
                    AppRoutes.TRAT_FALCIPARUM_GESTANTE: (_) => FalciparumGestante(),
                    AppRoutes.TRAT_MISTA: (_) => Mista(),
                    AppRoutes.DOCUMENTS: (_) => Relatorio(),
                    AppRoutes.CLOCK: (_) => Clock(),
                    AppRoutes.TRAT_RECORRENCIA60_VIVAX: (_) => VivaxOvaleRecorrencia(),
                    AppRoutes.TRAT_VIVAX_DEFICIENCIA_G6PD: (_) => VivaxDeficienciaG6pd(),
                  },
                );
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
           /* title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
              visualDensity: VisualDensity.adaptivePlatformDensity,
            ),
            routes:{
              AppRoutes.HOME: (_) => LoginPage(),
              AppRoutes.USER_FORM: (_) => UserForm(),
              AppRoutes.USER_RESIDENCIA: (_) => UserResidencia(),
              AppRoutes.USER_REGISTRO: (_) => UserRegistro(),
              AppRoutes.USER_CASA: (_) => UserCasa(),
              AppRoutes.USER_LOCALIZADA: (_) => UserLocalizada(),
              AppRoutes.USER_OCUPACAO: (_) => UserOcupacao(),
              AppRoutes.USER_ESCOLARIDADE: (_) => UserEscolaridade(),
              AppRoutes.USER_DIAGNOSTICO: (_) => UserDiagnostico(),
              AppRoutes.USER_ORIENTACOES: (_) => UserOrientacoes(),
              AppRoutes.USER_AGENTES: (_) => UserAgentes(),
              AppRoutes.USER_EVITAR: (_) => UserEvitar(),
              AppRoutes.USER_CURA: (_) => UserCura(),
              AppRoutes.USER_VEZES: (_) => UserVezes(),
              AppRoutes.USER_TIPO: (_) => UserTipo(),
              AppRoutes.USER_TEMPO: (_) => UserTempo(),
              AppRoutes.USER_COMPRIMIDOS: (_) => UserComprimidos(),
              AppRoutes.USER_MOTIVO: (_) => UserMotivo(),
              AppRoutes.USER_SOBRARAM: (_) => UserSobraram(),
              AppRoutes.USER_SEGUIR: (_) => UserSeguir(),
              AppRoutes.USER_NAOSEGUIR: (_) => UserNaoseguir(),
              AppRoutes.USER_REMEDIO: (_) => UserRemedio(),
              AppRoutes.USER_BEM: (_) => UserBem(),
              AppRoutes.USER_MAL: (_) => UserMal(),
              AppRoutes.URL_SIGN_UP: (_) => SignUpPage(),
              AppRoutes.LOGIN: (_) => LoginPage(),
              AppRoutes.USER_PESSOAS: (_) => UserPessoas(),
              AppRoutes.USER_RENDA: (_) => UserRenda(),
            },*/
          ),

      );

  }
}
/*
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
*/