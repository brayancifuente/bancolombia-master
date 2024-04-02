
import 'package:bancolombia/screens/icons.dart';
import 'package:bancolombia/views/Sign_in.dart';
import 'package:flutter/material.dart'; 

class Settings extends StatefulWidget {
  const Settings({super.key});
  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  int selectedIndex = 0;

  final List<Map<String, dynamic>> iconData = [
    {
      'iconPath': 'lib/icons/user.png',
      'label': 'Tu usuario',
      'color': Colors.white
    },
    {
      'iconPath': 'lib/icons/padlock.png',
      'label': 'Bloqueos',
      'color': Colors.white
    },
    {
      'iconPath': 'lib/icons/shield.png',
      'label': 'Seguridad',
      'color': Colors.white
    },
    {
      'iconPath': 'lib/icons/wallet.png',
      'label': 'Administrar\n Billetera',
      'color': Colors.white
    },
    {
      'iconPath': 'lib/icons/money.png',
      'label': 'Administrar \n Transfiya',
      'color': Colors.white
    },
    {
      'iconPath': 'lib/icons/location.png',
      'label': 'Visitanos',
      'color': Colors.white
    },
    {
      'iconPath': 'lib/icons/private.png',
      'label': 'Protección de datos',
      'color': Colors.white
    },
    {
      'iconPath': 'lib/icons/terms.png',
      'label': 'Términos y\n condiciones',
      'color': Colors.white
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Color(0xF7F7F7F7),
            child: Padding(
              padding: EdgeInsets.only(top: 0),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 0,
                  childAspectRatio: 1.5,
                ),
                itemCount: iconData.length,
                itemBuilder: (context, index) {
                  return Flexible(
                    child: IconLabelWidget(
                      iconPath: iconData[index]['iconPath'],
                      label: iconData[index]['label'],
                      color: iconData[index]['color'],
                    ),
                  );
                },
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              color: Colors.white,
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
                  'Ingresar',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
