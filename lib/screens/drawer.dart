import 'package:flutter/material.dart';

import 'myrequests.dart';

class NavDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Drawer(
        child: SingleChildScrollView(
        child: Column(children: <Widget>[

          Padding(padding: EdgeInsets.fromLTRB(30, 80, 30, 20),
              child: CircleAvatar(radius: (80),
        backgroundColor: Colors.white,
        child: ClipRRect(
          borderRadius:BorderRadius.circular(80),
          child: Image.asset("assets/sivir_icon.png"),
        )
    )
    ),
        Padding(padding: EdgeInsets.fromLTRB(30, 10, 30, 30),
          child: ListTile(
            title: Text("Sivir de shurima", textAlign:TextAlign.center,),
            subtitle: Text("Sivir@entregadora.com.br", textAlign:TextAlign.center,),
          )
        ),
         Container(
           height: 2,
           width: size.width * 0.92,
           color: Colors.grey,
         ),
          Container(
              height: 55,
              width: size.width * 0.92,
              child: TextButton(
                  child: Text(
                    'Meus Pedidos',
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyRequests()),
                    );
                  })),
          Container(
            height: 2,
            width: size.width * 0.92,
            color: Colors.grey,
          ),
          Container(
              height: 55,
              width: size.width * 0.92,
              child: TextButton(
                  child: Text(
                    'Meu perfil',
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => HomePage()),
                    // );
                  })),
          Container(
            height: 2,
            width: size.width * 0.92,
            color: Colors.grey,
          ),
          Container(
              height: 55,
              width: size.width * 0.92,
              child: TextButton(
                  child: Text(
                    'Desconectar',
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //    MaterialPageRoute(builder: (context) => HomePage()),
                    // );
                  })),
          Container(
            height: 2,
            width: size.width * 0.92,
            color: Colors.grey,
          ),

  ]  )
    ));
  }
}