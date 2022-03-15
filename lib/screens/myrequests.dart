import 'package:flutter/material.dart';
import 'package:user_edink/screens/request.dart';

class MyRequests extends StatefulWidget {
  const MyRequests({Key key}) : super(key: key);

  @override
  State<MyRequests> createState() => _MyRequestsState();
}

class _MyRequestsState extends State<MyRequests> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.deepPurple),
          backgroundColor: Colors.white,
          title: Text(
            "Meus Pedidos",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
            child: Container(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Divider(),
              Padding(
                  padding: EdgeInsets.fromLTRB(7, 10, 7, 0),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Request()));
                      },
                      child: Card(
                        child: Column(
                            // mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              const ListTile(
                                leading: Icon(
                                  Icons.store_mall_directory_rounded,
                                  size: 50,
                                ),
                                title: Text('Hirota supermercado'),
                                subtitle: Text(
                                  'Pedido 5458',
                                  style: TextStyle(color: Colors.deepPurple),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(80, 0, 20, 0),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Av. interlagos, 521 - Jd Brasil",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(80, 0, 20, 0),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("RS 520,00 - 41 itens",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(color: Colors.grey)),
                                ),
                              ),
                              Padding(
                                  padding: EdgeInsets.fromLTRB(80, 0, 20, 0),
                                  child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text("15/01/2022",
                                          textAlign: TextAlign.left,
                                          style:
                                              TextStyle(color: Colors.grey))))
                            ]),
                      ))),
              Padding(
                  padding: EdgeInsets.fromLTRB(7, 10, 7, 0),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Request()));
                      },
                      child: Card(
                        child: Column(
                            // mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              const ListTile(
                                leading: Icon(
                                  Icons.store_mall_directory_rounded,
                                  size: 50,
                                ),
                                title: Text('Hirota supermercado'),
                                subtitle: Text(
                                  'Pedido 5458',
                                  style: TextStyle(color: Colors.deepPurple),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(80, 0, 20, 0),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Av. interlagos, 521 - Jd Brasil",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(80, 0, 20, 0),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("RS 520,00 - 41 itens",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(color: Colors.grey)),
                                ),
                              ),
                              Padding(
                                  padding: EdgeInsets.fromLTRB(80, 0, 20, 0),
                                  child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text("15/01/2022",
                                          textAlign: TextAlign.left,
                                          style:
                                              TextStyle(color: Colors.grey))))
                            ]),
                      ))),
              Padding(
                  padding: EdgeInsets.fromLTRB(7, 10, 7, 0),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Request()));
                      },
                      child: Card(
                        child: Column(
                            // mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              const ListTile(
                                leading: Icon(
                                  Icons.store_mall_directory_rounded,
                                  size: 50,
                                ),
                                title: Text('Hirota supermercado'),
                                subtitle: Text(
                                  'Pedido 5458',
                                  style: TextStyle(color: Colors.deepPurple),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(80, 0, 20, 0),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Av. interlagos, 521 - Jd Brasil",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(80, 0, 20, 0),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("RS 520,00 - 41 itens",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(color: Colors.grey)),
                                ),
                              ),
                              Padding(
                                  padding: EdgeInsets.fromLTRB(80, 0, 20, 0),
                                  child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text("15/01/2022",
                                          textAlign: TextAlign.left,
                                          style:
                                              TextStyle(color: Colors.grey))))
                            ]),
                      ))),
              Padding(
                padding: EdgeInsets.fromLTRB(7, 10, 7, 0),
                child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Request()));
                    },
                    child: Card(
                      child: Column(
                          // mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            const ListTile(
                              leading: Icon(
                                Icons.store_mall_directory_rounded,
                                size: 50,
                              ),
                              title: Text('Hirota supermercado'),
                              subtitle: Text(
                                'Pedido 5458',
                                style: TextStyle(color: Colors.deepPurple),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(80, 0, 20, 0),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Av. interlagos, 521 - Jd Brasil",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(80, 0, 20, 0),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text("RS 520,00 - 41 itens",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(color: Colors.grey)),
                              ),
                            ),
                            Padding(
                                padding: EdgeInsets.fromLTRB(80, 0, 20, 0),
                                child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text("15/01/2022",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(color: Colors.grey))))
                          ]),
                    )),
              )
            ],
          ),
        )));
  }
}
