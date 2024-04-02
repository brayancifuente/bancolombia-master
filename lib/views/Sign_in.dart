import 'package:bancolombia/views/Sign_up.dart';
import 'package:flutter/material.dart';

class Sign_in extends StatefulWidget {
  const Sign_in({super.key});
  @override
  State<Sign_in> createState() => _Sign_inState();
}

class _Sign_inState extends State<Sign_in> {
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
          actions: [
            Row(
              children: [
                Text(
                  'Continuar',
                  style: TextStyle(fontSize: 12),
                ),
                IconButton(
                  icon: Icon(Icons.chevron_right),
                  onPressed: () {},
                )
              ],
            ),
          ],
        ),
        body: Container(
            color: Color(0xF7F7F7F7),
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Center(
                child: Column(
                  children: <Widget>[
                    Text(
                      '¡Hola!',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Si aún no has creado el usuario, ingresa el número del documento de identidad.',
                      style: TextStyle(fontSize: 16),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 15),
                    Container(
                      height: 90,
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: 25.0, bottom: 4.0, left: 8.0, right: 8.0),
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                            labelText: 'Ingresa el usuario',
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.amber,
                                width: 2.0,
                              ),
                            ),
                            labelStyle: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontFamily: 'NeoRegular',
                              fontWeight: FontWeight.w400,
                            ),
                            prefixIcon: Container(
                              margin: EdgeInsets.all(5),
                              width: 20,
                              height: 20,
                              child: Image.asset('lib/icons/user.png'),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 25),
                    Container(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFFEDEDED), 
                        ),
                        child: Text(
                          'CONTINUAR',
                          style: TextStyle(
                            color: Color(0xFF333333), 
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 25),
                    RawMaterialButton(
                      onPressed: () {},
                      elevation: 2.0,
                      fillColor: Colors.white,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Image.asset(
                              'lib/icons/fingerprint-scan.png',
                              width: 40,
                              height: 40,
                            ),
                          ),
                          Text(
                            'Ingresa con \n huella',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 9,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      constraints: BoxConstraints.tightFor(
                        width: 96,
                        height: 96,
                      ),
                      shape: CircleBorder(),
                    ),
                    SizedBox(height: 25),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Sign_up()),
                        );
                      },
                      child: Text(
                        '¿No eres cliente?',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.black,
                          decorationThickness: 2,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )));
  }
}
