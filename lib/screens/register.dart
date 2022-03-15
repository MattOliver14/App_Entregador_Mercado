import 'package:flutter/material.dart';
import 'package:user_edink/screens/login.dart';

import 'homepage.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordcontroller = TextEditingController();
  TextEditingController _addresscontroller = TextEditingController();
  TextEditingController _NeighborhoodController = TextEditingController();
  TextEditingController _CityController = TextEditingController();
  TextEditingController _UfController = TextEditingController();
  TextEditingController _ZipController = TextEditingController();
  bool _checked1 = false;
  bool _checked2 = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
      decoration: const BoxDecoration(
        color: Colors.white
        // gradient: LinearGradient(
        //   begin: Alignment.topCenter,
        //   end: Alignment(
        //     0.0,
        //     0.9,
        //   ),
        //   // 10% of the width, so there are ten blinds.
        //   colors: <Color>[
        //     Color(0xff00cbff),
        //     Color(0xff008fe2),
        //     Color(0xff002dcf),
        //   ],
        // ),
      ),
      child: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Center(
                child: SizedBox(
                    width: 200, child: Image.asset('assets/logo.png')),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(15, 0, 15, 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Column(children: <Widget>[
                const Padding(
                  padding: EdgeInsets.fromLTRB(16, 30, 16, 0),
                  child: Text(
                    "Cadastre-se",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 5, 30, 10),
                  child: TextFormField(
                    controller: _nameController,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Campo Obrigatório!';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff004ed2),
                        ),),
                      //border: OutlineInputBorder(),
                      labelText: 'Nome',
                      hintText: 'Digite seu nome',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 5, 30, 10),
                  child: TextFormField(
                    controller: _emailController,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Campo Obrigatório!';
                      }
                      if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                          .hasMatch(value)) {
                        return 'Entre com e-mail valido.';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff004ed2),
                        ),),
                      //border: OutlineInputBorder(),
                      labelText: 'E-mail',
                      hintText: 'Entre com o seu E-mail',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 5, 30, 10),
                  child: TextFormField(
                    controller: _passwordcontroller,
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    validator: (value) {
                      return value == "" ? "Campo Obrigatório!" : null;
                    },
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff004ed2),
                          ),),
                        //border: OutlineInputBorder(),
                        labelText: 'Senha',
                        hintText: 'Entre com a sua senha'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 5, 30, 10),
                  child: TextFormField(
                    controller: _addresscontroller,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Campo Obrigatório!';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff004ed2),
                        ),),
                      //border: OutlineInputBorder(),
                      labelText: 'Endereço',
                      hintText: 'Digite seu Endereço',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 5, 30, 10),
                  child: TextFormField(
                    controller: _NeighborhoodController,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Campo Obrigatório!';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff004ed2),
                        ),),
                      //border: OutlineInputBorder(),
                      labelText: 'Bairro',
                      hintText: 'Digite seu Bairro',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 5, 30, 10),
                  child: Row(
                    children: <Widget>[
                      Expanded( flex: 2,
                        child: TextFormField(
                        controller: _CityController,
                        keyboardType: TextInputType.text,
                        validator: (value) {
                          return value == "" ? "Campo Obrigatório!" : null;
                        },
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xff004ed2),
                              ),),
                            //border: OutlineInputBorder(),
                            labelText: 'Cidade',
                            hintText: 'Digite uma Cidade'),
                      ),),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(child: TextFormField(
                        controller: _UfController,
                        keyboardType: TextInputType.text,
                        validator: (value) {
                          return value == "" ? "Campo Obrigatório!" : null;
                        },
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xff004ed2),
                              ),),
                            //border: OutlineInputBorder(),
                            labelText: 'UF',
                            hintText: 'UF'),
                      ),)
                    ],
                  ),
                ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 5, 30, 10),
                    child: TextFormField(
                      controller: _ZipController,
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Campo Obrigatório!';
                        }
                        return null;
                      },
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff004ed2),
                          ),),
                        //border: OutlineInputBorder(),
                        labelText: 'CEP',
                        hintText: 'Digite seu CEP',
                      ),
                    ),
                  ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 20, 30, 5),
              child: Container(
                height: 50,
                width: size.width * 0.92,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xff7d00c6)
                  ),
                  child: const Text(
                    'Criar minha conta',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  }
                ),
              ),
            ),
                Padding(
                  padding: EdgeInsets.fromLTRB(16, 20, 16, 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text('já tem uma conta?',
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xff5c5c5c),
                          )),
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Login()),
                            );
                          },
                          child: const Text(
                            'Login',
                            style: TextStyle(
                                fontSize: 18,
                                color: Color(0xff7d00c6),
                                fontWeight: FontWeight.bold),
                          ))
                    ],
                  ),
                ),
          ],
        ),
      ),
    ])))));
  }
}