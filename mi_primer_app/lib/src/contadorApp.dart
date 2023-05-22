import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text Field Focus',
      home: MyCustomForm(),
      theme: ThemeData(
        primaryColor: Colors.lightBlue,
        backgroundColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          color: Colors.lightBlue,
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.lightBlue,
        ),
        bottomAppBarColor: Colors.grey[300],
      ),
    );
  }
}

class MyCustomForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void showAlert() {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Alerta'),
            content: Text('¡Bienvenido esto es un virus!'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Cerrar'),
              ),
            ],
          );
        },
      );
    }

    void exitApp() {
      Navigator.of(context).pop();
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Aplicacion de Santiago',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 150.0,
              backgroundColor: Colors.lightBlue,
              child: ClipOval(
                child: Image.asset(
                  'assets/imagen1.jpg',
                  fit: BoxFit.cover,
                  width: 300.0,
                  height: 300.0,
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Mi nombre es Santiago y soy estudiante de desarrollo de software.\nMe gustan los gatos, tengo 21 años y vivo en Carcelén',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[300],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: ElevatedButton.icon(
                onPressed: () {
                  showAlert();
                },
                icon: Icon(Icons.info),
                label: Text('Mostrar Alerta'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.lightBlue,
                  onPrimary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 12.0),
                ),
              ),
            ),
            SizedBox(width: 8.0),
            Expanded(
              child: ElevatedButton.icon(
                onPressed: () {
                  exitApp();
                },
                icon: Icon(Icons.exit_to_app),
                label: Text('Salir'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.lightBlue,
                  onPrimary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 12.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
