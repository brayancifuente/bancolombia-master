import 'package:bancolombia/screens/icons.dart';
import 'package:flutter/material.dart';

class Explore extends StatefulWidget {
  const Explore({super.key});
  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  int selecteIndex = 0;
  final List<Map<String, dynamic>> iconDataParaTi = [
    {
      'iconPath': 'lib/icons/terms.png',
      'label': 'Puntos Colombia',
      'color': Color.fromARGB(255, 252, 216, 169)
    },
    {
      'iconPath': 'lib/icons/terms.png',
      'label': 'Ofertas',
      'color': Color.fromARGB(255, 252, 216, 169)
    },
    {
      'iconPath': 'lib/icons/terms.png',
      'label': 'Tus Compras',
      'color': Color.fromARGB(255, 252, 216, 169)
    }
  ];
  final List<Map<String, dynamic>> iconDataTransporte = [
    {
      'iconPath': 'lib/icons/money.png',
      'label': 'Recargar transporte',
      'color': Color.fromARGB(255, 214, 204, 61)
    },
    {
      'iconPath': 'lib/icons/location.png',
      'label': 'Muverang',
      'color': Color.fromARGB(255, 214, 204, 61)
    },
    {
      'iconPath': 'lib/icons/private.png',
      'label': 'Tu Movilidad',
      'color': Color.fromARGB(255, 214, 204, 61)
    },
    {
      'iconPath': 'lib/icons/terms.png',
      'label': 'Comprar Flypass',
      'color': Color.fromARGB(255, 214, 204, 61)
    },
  ];
  final List<Map<String, dynamic>> iconDataHogar = [
    {
      'iconPath': 'lib/icons/padlock.png',
      'label': 'Recargar celular',
      'color': Color.fromARGB(255, 158, 197, 94)
    },
    {
      'iconPath': 'lib/icons/shield.png',
      'label': 'Tu inmobiliario',
      'color': Color.fromARGB(255, 158, 197, 94)
    },
    {
      'iconPath': 'lib/icons/wallet.png',
      'label': 'Contratar Mis Aliados',
      'color': Color.fromARGB(255, 158, 197, 94)
    },
  ];
  final List<Map<String, dynamic>> iconDia = [
    {
      'iconPath': 'lib/icons/terms.png',
      'label': 'Dia a Dia',
      'color': const Color.fromARGB(255, 255, 162, 162)
    },
    {
      'iconPath': 'lib/icons/user.png',
      'label': 'Bolsillos',
      'color': const Color.fromARGB(255, 255, 162, 162)
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      IconLabelWidget(
        iconPath: '',
        label: '',
        color: '',
      )
    ]);
  }
}
