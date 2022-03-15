import 'package:flutter/material.dart';
import 'package:user_edink/screens/marketplace.dart';
import 'package:user_edink/screens/shopping_cart.dart';

import 'drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<bool> isSelected;

  @override
  void initState() {
    isSelected = [true, false];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavDrawer(),
        appBar: AppBar(
            elevation: 0.0,
            iconTheme: IconThemeData(color: Colors.deepPurple),
            backgroundColor: Colors.white,
            title: Text(
              "Sivir delivery",
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
                      padding: const EdgeInsets.fromLTRB(25, 7, 25, 7),
                      child: Text(
                        'Receber em casa',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(25, 7, 25, 7),
                      child: Text(
                        'Retirar na loja',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                  onPressed: (int index) {
                    setState(() {
                      for (int i = 0; i < isSelected.length; i++) {
                        isSelected[i] = i == index;
                      }
                    });
                  },
                  isSelected: isSelected,
                ),
              ),
              Divider(),
              Padding(
                  padding: EdgeInsets.fromLTRB(7, 10, 7, 2),
                child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Marketplace()));
                    },
                  child: Card(
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          const ListTile(
                            leading: Icon(
                              Icons.store_mall_directory_rounded,
                              size: 50,
                            ),
                            title: Text('Pão de Açúcar'),
                            subtitle: Text('Av. interlagos, 521 - Jd Brasil'),
                          ),
                          Row(
                            children: <Widget>[
                              Expanded(
                                  child: Icon(
                                Icons.attach_money_sharp,
                                size: 20,
                                color: Colors.grey,
                              )),
                              Expanded(
                                flex: 15,
                                child: Text(
                                  "Taxa de entrega: RS:5,00",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              )
                            ],
                          ),
                          Row(children: <Widget>[
                            Expanded(
                                child: Icon(
                              Icons.attach_money_sharp,
                              size: 20,
                              color: Colors.grey,
                            )),
                            Expanded(
                                flex: 15,
                                child: Text("Compra minima: RS:30,00",
                                    style: TextStyle(color: Colors.grey)))
                          ]),
                        ]),
                  )),),
              Divider(),
              Padding(
                  padding: EdgeInsets.fromLTRB(7, 10, 7, 2),
                child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Marketplace()));
                    },
                  child: Card(
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          const ListTile(
                            leading: Icon(
                              Icons.store_mall_directory_rounded,
                              size: 50,
                            ),
                            title: Text('Pão de Açúcar'),
                            subtitle: Text('Av. interlagos, 521 - Jd Brasil'),
                          ),
                          Row(
                            children: <Widget>[
                              Expanded(
                                  child: Icon(
                                Icons.attach_money_sharp,
                                size: 20,
                                color: Colors.grey,
                              )),
                              Expanded(
                                flex: 15,
                                child: Text(
                                  "Taxa de entrega: RS:5,00",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              )
                            ],
                          ),
                          Row(children: <Widget>[
                            Expanded(
                                child: Icon(
                              Icons.attach_money_sharp,
                              size: 20,
                              color: Colors.grey,
                            )),
                            Expanded(
                                flex: 15,
                                child: Text("Compra minima: RS:30,00",
                                    style: TextStyle(color: Colors.grey)))
                          ]),
                        ]),
                  )),),
              Padding(
                  padding: EdgeInsets.fromLTRB(7, 10, 7, 2),
                child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Marketplace()));
                    },
                  child: Card(
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          const ListTile(
                            leading: Icon(
                              Icons.store_mall_directory_rounded,
                              size: 50,
                            ),
                            title: Text('Pão de Açúcar'),
                            subtitle: Text('Av. interlagos, 521 - Jd Brasil'),
                          ),
                          Row(
                            children: <Widget>[
                              Expanded(
                                  child: Icon(
                                Icons.attach_money_sharp,
                                size: 20,
                                color: Colors.grey,
                              )),
                              Expanded(
                                flex: 15,
                                child: Text(
                                  "Taxa de entrega: RS:5,00",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              )
                            ],
                          ),
                          Row(children: <Widget>[
                            Expanded(
                                child: Icon(
                              Icons.attach_money_sharp,
                              size: 20,
                              color: Colors.grey,
                            )),
                            Expanded(
                                flex: 15,
                                child: Text("Compra minima: RS:30,00",
                                    style: TextStyle(color: Colors.grey)))
                          ]),
                        ]),
                  ))),
              Padding(
                  padding: EdgeInsets.fromLTRB(7, 10, 7, 2),
                child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Marketplace()));
                    },
                  child: Card(
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          const ListTile(
                            leading: Icon(
                              Icons.store_mall_directory_rounded,
                              size: 50,
                            ),
                            title: Text('Pão de Açúcar'),
                            subtitle: Text('Av. interlagos, 521 - Jd Brasil'),
                          ),
                          Row(
                            children: <Widget>[
                              Expanded(
                                  child: Icon(
                                Icons.attach_money_sharp,
                                size: 20,
                                color: Colors.grey,
                              )),
                              Expanded(
                                flex: 15,
                                child: Text(
                                  "Taxa de entrega: RS:5,00",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              )
                            ],
                          ),
                          Row(children: <Widget>[
                            Expanded(
                                child: Icon(
                              Icons.attach_money_sharp,
                              size: 20,
                              color: Colors.grey,
                            )),
                            Expanded(
                                flex: 15,
                                child: Text("Compra minima: RS:30,00",
                                    style: TextStyle(color: Colors.grey)))
                          ]),
                        ]),
                  ))),
            ],
          ),
        )));
  }
}
