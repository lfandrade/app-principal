import 'package:flutter/material.dart';
import 'package:microapp_pix/pix_screen.dart';
import 'package:microapp_home/home_screen.dart';
import 'package:microapp_cartoes/cartoes_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Principal',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainScreen(),
      routes: {
        '/pix': (context) => PixScreen(),
        '/home': (context) => HomeScreen(),
        '/cartoes': (context) => CartoesScreen(),
      },
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Principal'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
              child: Text('Ir para Home'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pix');
              },
              child: Text('Ir para Pix'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/cartoes');
              },
              child: Text('Ir para Cartões'),
            ),
          ],
        ),
      ),
    );
  }
}
