import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  const Product({Key key}) : super(key: key);

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.deepPurple),
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
            child: Container(
                color: Colors.white,
                child: Align(
                    alignment: Alignment.center,
                    child: Column(children: <Widget>[
                      Image.asset(
                        "assets/cafe.png",
                        scale: 5,
                      ),
                      Text(
                        "Café Pilão Torrado e Moido",
                        style: TextStyle(fontSize: 18),
                        textAlign: TextAlign.center,
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                              child: Text(
                            "500g",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.grey, fontSize: 18),
                          )),
                          Expanded(
                              child: Text(
                            "RS: 15,00",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.deepPurple, fontSize: 18),
                          ))
                        ],
                      ),
                      Divider(),
                      Padding(
                          padding: EdgeInsets.all(20),
                          child: Text(
                            "O café Pilão Tradicional, de intensidade 8, disponível na embalagem almofada, tem um ponto de torra acentuado e um processo de moagem fina e uniforme, que garantem e preservam seu sabor forte e encorpado. É perfeito para o seu dia a dia.",
                            style: TextStyle(color: Colors.grey),
                          )),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 200, 20, 20),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: FloatingActionButton(
                                splashColor: Colors.blueGrey,
                                backgroundColor: Colors.deepPurple,
                                onPressed: _decrementCounter,
                                tooltip: 'Increment',
                                child: const Icon(Icons.remove,color: Colors.white,),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Align(
                                alignment: Alignment.center,
                              child: Text(
                                '$_counter',
                                style: Theme.of(context).textTheme.headline4,

                              ),
                            ),
                            ),
                            Expanded(
                              flex: 1,
                              child: FloatingActionButton(
                                splashColor: Colors.blueGrey,
                                backgroundColor: Colors.deepPurple,
                                onPressed: _incrementCounter,
                                tooltip: 'Increment',
                                child: const Icon(Icons.add,color: Colors.white,),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              flex: 4,
                              child:  Container(
                                  height: 45,
                                  width: size.width * 0.92,
                                  decoration: BoxDecoration(
                                      color: Color(0xff7d00c6),
                                      borderRadius: BorderRadius.circular(15)),
                                  child: TextButton(
                                      style: TextButton.styleFrom(
                                        backgroundColor: Color(0xff7d00c6),
                                      ),
                                      child: Text(
                                        'Adicionar ao carinho',
                                        style: TextStyle(color: Colors.white, fontSize: 18),
                                      ),
                                      onPressed: () {
                                        // Navigator.push(
                                        //   context,
                                        //   MaterialPageRoute(builder: (context) => HomePage()),
                                        // );
                                      })),
                            )
                          ],
                        ),
                      )
                    ])))));
  }
}
