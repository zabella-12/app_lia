import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:app_lia/page/login.dart';
import 'package:app_lia/page/start.dart';

class Busca_Emp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: ListView(
          //CABEÇA
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
              height: 20,
            ),
            //CABEÇALHO
            Text(
              "Confira as empresas disponíveis para o trabalho voluntário.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Divider(),
            SizedBox(
              height: 10,
            ),

            //INICIO DOS BLOCOS

            Container(
              margin: EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              height: 150,
              child: Container(
                  height: 500,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Text('hello')),
            ),

            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              height: 150,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                        height:500,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Column(
                          children: <Widget>[
                            Row(children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Container(
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Text(
                                      'Raia Drogasil. SA',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Text(
                                      'Industria Farmaceutica',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                      ),
                                    ),
                                  )
                                ],
                              ),

                            ],),
                            Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.blueAccent,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Text(
                                'Industria Farmaceutica1',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                ),
                              ),
                            )
                          ],
                        )),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              height: 150,
              child: Container(
                  height: 500,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Text('hello')),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              height: 150,
              child: Container(
                  height: 500,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Text('hello')),
            ),
            SizedBox(
              height: 10,
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
