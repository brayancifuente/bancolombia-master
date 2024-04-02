import 'package:bancolombia/views/Explore/index.dart';
import 'package:bancolombia/views/Home.dart';
import 'package:bancolombia/views/Request.dart';
import 'package:bancolombia/views/Settings.dart';
import 'package:bancolombia/views/Transactions.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final screens = [
      const Home(),
      const Transactions(),
      const Explore(),
      const Request(),
      const Settings()
    ];
    List<String> labels = [
      'Inicio',
      'Transacciones',
      'Explorar',
      'Trámites y solicitudes',
      'Ajustes',
    ];
    String selectedLabel = labels[selectedIndex];

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 120,
        backgroundColor: Colors.white, // Cambiado el color a blanco
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'lib/icons/bancolombia_icon.png',
              width: 20,
              height: 20,
            ),
            SizedBox(height: 20),
            Text(
              selectedLabel,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
        centerTitle: true,
        elevation: 0,
        shadowColor: Colors.transparent,
      ),
      body: IndexedStack(
        index: selectedIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: <Widget>[
            _buildBottomNavigationBarItem('lib/icons/home.png', 'Inicio', 0),
            _buildBottomNavigationBarItem(
                'lib/icons/credit-card.png', 'Transacciones', 1),
            _buildBottomNavigationBarItem(
                'lib/icons/application.png', 'Explorar', 2),
            _buildBottomNavigationBarItem(
                'lib/icons/user-interface.png', 'Trámites y solicitudes', 3),
            _buildBottomNavigationBarItem(
                'lib/icons/setting.png', 'Ajustes', 4),
          ],
          mainAxisAlignment: MainAxisAlignment.spaceAround,
        ),
        color: Colors.white,
        elevation: 0,
      ),
    );
  }

  Expanded _buildBottomNavigationBarItem(
      String iconPath, String label, int index) {
    return Expanded(
      child: InkWell(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Container(
          color: selectedIndex == index ? Colors.yellow : Colors.transparent,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                iconPath,
                color: Colors.black,
                width: 20,
                height: 20,
              ),
              SizedBox(height: 2),
              Text(
                label,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 9,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
