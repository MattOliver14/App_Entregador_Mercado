import 'package:flutter/material.dart';

class Request extends StatefulWidget {
  const Request({Key key}) : super(key: key);

  @override
  State<Request> createState() => _RequestState();
}

class _RequestState extends State<Request> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.deepPurple),
          backgroundColor: Colors.white,
          title: Text(
            "Pedido Nº 5458",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
            child: Container(
                color: Colors.white,
                child: Column(children: <Widget>[
                  Divider(),
                  Padding(
                    padding: EdgeInsets.fromLTRB(7, 10, 7, 0),
                    child: ListTile(
                      title: Text('Pão de Açúcar'),
                      subtitle: Text(
                        'Av. Interlagos 521, - Jd Brasil\n15/01/2021',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                  Divider(),
                  ListTile(
                    leading: Image.asset('assets/cafe.png'),
                    title: Row(children: <Widget>[
                      Expanded(flex: 3,
                        child: Text('Café pilão torrado e moido - 500g', style: TextStyle(fontSize: 14),),
                      ),
                      Expanded(
                        child: Text(
                          'RS: 30,00',
                          style: TextStyle(color: Colors.grey,fontSize: 14),),
                      ),
                    ]),
                    subtitle: Text("02 x RS: 15,00"),
                  ),
                  Divider(),
                  ListTile(
                    leading: Image.asset('assets/cafe.png'),
                    title: Row(children: <Widget>[
                      Expanded(flex: 3,
                        child: Text('Café pilão torrado e moido - 500g', style: TextStyle(fontSize: 14),),
                      ),
                      Expanded(
                        child: Text(
                          'RS: 30,00',
                          style: TextStyle(color: Colors.grey,fontSize: 14),),
                      ),
                    ]),
                    subtitle: Text("02 x RS: 15,00"),
                  ),
                  Divider(),
                  ListTile(
                    leading: Image.asset('assets/cafe.png'),
                    title: Row(children: <Widget>[
                      Expanded(flex: 3,
                        child: Text('Café pilão torrado e moido - 500g', style: TextStyle(fontSize: 14),),
                      ),
                      Expanded(
                        child: Text(
                          'RS: 30,00',
                          style: TextStyle(color: Colors.grey,fontSize: 14),),
                      ),
                    ]),
                    subtitle: Text("02 x RS: 15,00"),
                  ),
                  Divider(),
                  Padding(padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: Column(
                        children: <Widget> [
                          Row(children: <Widget>[
                            Expanded(flex: 3,
                              child: Text("Subtotal"),),
                            Expanded(child: Text("RS: 90,00", textAlign: TextAlign.right,))]),
                          SizedBox(height: 10,),
                          Row(children: <Widget>[
                            Expanded(flex: 3,
                                child: Text("Taxa de entrega")),
                            Expanded(child: Text("RS: 5,00",textAlign: TextAlign.right,))]),
                          SizedBox(height: 10,),
                          Row(children: <Widget>[
                            Expanded(flex: 3,
                                child: Text("Valor total")),
                            Expanded(child: Text("RS: 95,00",textAlign: TextAlign.right,))]),
                          SizedBox(height: 10,),
                        ],
                      )
                  ),
                  Divider(),
                  Padding(padding: EdgeInsets.fromLTRB(0, 10, 25, 40),
                    child: ListTile(
                      title: Text("Endereço de Entrega"),
                      subtitle: Text("Av. Ipiranga, 500 -Ap 62 - Centro - São paulo"),
                    ),),
                ]))));
  }
}
