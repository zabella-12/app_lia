import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:app_lia/page/login.dart';
import 'package:app_lia/page/busca_emp.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
        top: 10,),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            SizedBox(
              width: 200,
              height: 50,
              child: Image.asset("assets/images/logo2.png"),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(),
            SizedBox(
              width: 128,
              height: 128,
              child: Icon(
                Icons.account_circle,
                color: Colors.black54,
                size: 150,
                semanticLabel: 'Figura do usuário',
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.only(),
              width: 1,
              child: Text(
                "Olá, Lucas",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.only(),
              width: 1,
              child: Text(
                "Esse é seu perfil, complete-o e se destaque!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(left: 50, right: 50),
              padding: EdgeInsets.only(),
              width: 1,
              child: Divider(),
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.only(),
              width: 1,
              child: Text(
                "Nível 1",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black12,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Iniciante",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black12,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.only(),
              width: 1,
              child: Text(
                "Ainda não sabemos muito sobre você. Para que possa usufruir dos recursos da plataforma nos conte sobre suas habilidades.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(50),
              padding: EdgeInsets.only(),
              width: 1,
              height: 50.0,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Busca_Emp()),
                  );
                },
                child: Container(
                 decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black54,
                      style: BorderStyle.solid,

                      width: 1.0,
                    ),
                    color: Colors.transparent,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Center(
                        child: Text(
                          "Suba de nível",
                          style: TextStyle(
                            color: Colors.black54,
                            fontFamily: 'Montserrat',
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 1,
            ),
            Container(
              height: 60,
              color: Colors.white,
              child: BottomNavigationBar(
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                      icon: Icon(Icons.assignment),
                      title: Text("Questionário")),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home), title: Text("Inicio")),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.business_center),
                      title: Text("Estágio")),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _HomeScreenState extends State<HomeScreen> {
  int _indiceAtual = 0;
  final List<Widget> _telas = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _telas[_indiceAtual],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indiceAtual,
        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.person), title: Text("Minha conta")),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_basket), title: Text("Meus pedidos")),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), title: Text("Favoritos")),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _indiceAtual = index;
    });
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}
