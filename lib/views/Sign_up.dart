import 'package:bancolombia/views/Sign_in.dart';
import 'package:flutter/material.dart';

class Sign_up extends StatefulWidget {
  const Sign_up({super.key});
  @override
  State<Sign_up> createState() => _Sign_upState();
}

class _Sign_upState extends State<Sign_up> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leadingWidth: 80,
          backgroundColor: Color(0xF7F7F7F7),
          title: Image.asset(
            'lib/icons/bancolombia_icon.png',
            width: 20,
            height: 20,
          ),
          centerTitle: true,
          elevation: 0,
          shadowColor: Colors.transparent,
          leading: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(Icons.close),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              Text(
                'Cerrar',
                style: TextStyle(fontSize: 12),
              ),
            ],
          ),
        ),
        body: Stack(children: [
          Container(
            color: Color(0xF7F7F7F7),
            child: Center(
              child: Column(
                children: <Widget>[
                  Text(
                    '¿Aún no eres cliente?',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Conoce todos los productos y servicios que tenemos para ti',
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  Image.asset('lib/icons/register.png', fit: BoxFit.scaleDown),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.all(10),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.yellow,
                  padding: EdgeInsets.symmetric(vertical: 15),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Sign_in()),
                  );
                },
                child: Text(
                  'QUIERO SER CLIENTE',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
        ]));
  }
}
