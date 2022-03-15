import 'package:flutter/material.dart';
import 'package:user_edink/screens/product.dart';
import 'package:user_edink/screens/shopping_cart.dart';

class Marketplace extends StatefulWidget {
  const Marketplace({Key key}) : super(key: key);

  @override
  State<Marketplace> createState() => _MarketplaceState();
}

class _MarketplaceState extends State<Marketplace> {
  //List<bool> isSelected;
  List<bool> _selections = List.generate(4, (_) => false);

  @override
  void initState() {
    _selections = [true, false, false, false];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            elevation: 0.0,
            iconTheme: IconThemeData(color: Colors.deepPurple),
            backgroundColor: Colors.white,
            title: Text(
              "Mercado selecionado",
              style: TextStyle(color: Colors.black),
            ),
            centerTitle: true,
            actions: <Widget>[
              FlatButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ShoppingCart()));
                },
                color: Colors.white,
                padding: EdgeInsets.fromLTRB(10, 13, 0, 0),
                child: Column(
                  children: <Widget>[
                    Icon(
                      Icons.shopping_cart,
                      color: Colors.deepPurple,
                      size: 30,
                    ),
                    // Text("Carrinho", style: TextStyle(color: Colors.green),)
                  ],
                ),
              ),
            ]),
        body: SingleChildScrollView(
            child: Container(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    ("Av. Interlagos, 521 - Jd Brasil"),
                    style: TextStyle(color: Colors.grey),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(5, 10, 10, 10),
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: Icon(
                      Icons.attach_money_sharp,
                      size: 20,
                      color: Colors.grey,
                    )),
                    Expanded(
                      flex: 9,
                      child: Text(
                        "Taxa de entrega: RS:5,00",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    Expanded(
                        child: Icon(
                      Icons.attach_money_sharp,
                      size: 20,
                      color: Colors.grey,
                    )),
                    Expanded(
                        flex: 9,
                        child: Text("Compra minima: RS:30,00",
                            style: TextStyle(color: Colors.grey)))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(7, 10, 7, 20),
                child: TextField(
                  decoration: InputDecoration(
                      labelText: "Pesquisar...",
                      // hintText: "Pesquisar...",
                      prefixIcon: Icon(Icons.search),
                      suffixIcon: TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.deepPurple,
                              fixedSize: Size(100, 60)),
                          child: Text(
                            'Buscar',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          onPressed: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(builder: (context) => HomePage()),
                            // );
                          }),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(14)))),
                  // topLeft: Radius.circular(14),
                  // bottomLeft: Radius.circular(14))))),
                ),
              ),
              Padding(
                  padding: EdgeInsets.all(7),
                  child: ToggleButtons(
                      borderColor: Colors.grey,
                      fillColor: Colors.deepPurple,
                      borderWidth: 1,
                      selectedBorderColor: Colors.grey,
                      selectedColor: Colors.white,
                      borderRadius: BorderRadius.circular(7),
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 7, 10, 7),
                          child: Text(
                            'Alimento',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 7, 10, 7),
                          child: Text(
                            'Bebidas',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 7, 10, 7),
                          child: Text(
                            'Limpeza',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 7, 10, 7),
                          child: Text(
                            'Eletronico',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ],
                      isSelected: _selections,
                      onPressed: (int index) {
                        setState(() {
                          for (int i = 0; i < _selections.length; i++) {
                            _selections[i] = i == index;
                          }
                        });
                      })),
              Divider(),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 7, 10, 7),
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Product()));
                            },
                            child: Column(children: <Widget>[
                              Image.asset(
                                "assets/cafe.png",
                                scale: 10,
                              ),
                              Text(
                                "Café Pilão\n Torrado e Moido",
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                "RS: 15,00",
                                style: TextStyle(color: Colors.deepPurple),
                              ),
                              Text("500g")
                            ]))),
                    Expanded(
                      child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Product()));
                          },
                        child: Column(children: <Widget>[
                      Image.asset("assets/cafe.png", scale: 10),
                      Text(
                        "Café Pilão\n Torrado e Moido",
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        "RS: 15,00",
                        style: TextStyle(color: Colors.deepPurple),
                      ),
                      Text("500g")
                    ])))
                  ],
                ),
              ),
              Divider(),
              Padding(
                  padding: EdgeInsets.fromLTRB(10, 7, 10, 7),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Product()));
                              },
                              child: Column(children: <Widget>[
                                Image.asset(
                                  "assets/cafe.png",
                                  scale: 10,
                                ),
                                Text(
                                  "Café Pilão\n Torrado e Moido",
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  "RS: 15,00",
                                  style: TextStyle(color: Colors.deepPurple),
                                ),
                                Text("500g")
                              ]))),
                      Expanded(
                        child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Product()));
                            },
                          child: Column(children: <Widget>[
                        Image.asset("assets/cafe.png", scale: 10),
                        Text(
                          "Café Pilão\n Torrado e Moido",
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          "RS: 15,00",
                          style: TextStyle(color: Colors.deepPurple),
                        ),
                        Text("500g")
                      ])))
                    ],
                  ))
            ],
          ),
        )));
  }
}
