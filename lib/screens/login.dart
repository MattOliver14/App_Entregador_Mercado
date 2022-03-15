import 'package:flutter/material.dart';
import 'package:user_edink/screens/homepage.dart';
import 'package:user_edink/screens/register.dart';

class Login extends StatefulWidget {
  const Login({Key key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
                height: 900,
                width: 450,
                decoration: const BoxDecoration(color: Colors.white
                    // gradient: LinearGradient(
                    //   begin: Alignment.topCenter,
                    //   end: Alignment(
                    //     0.0,
                    //     0.5,
                    //   ),
                    //   // 10% of the width, so there are ten blinds.
                    //   colors: <Color>[
                    //     Color(0xffffffff),
                    //     Color(0xff41f3ed),
                    //     Color(0xffb016ff),
                    //   ],
                    // ),
                    ),
                child: Column(children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 80.0),
                    child: Center(
                      child: SizedBox(
                          width: 200,
                          height: 150,
                          child: Image.asset('assets/logo.png')),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(20),
                      child: Container(
                        child: Text(
                          "Acesse sua conta.",
                          style: TextStyle(fontSize: 22),
                        ),
                      )),
                  Padding(
                    padding: EdgeInsets.fromLTRB(15, 30, 15, 0),
                    child: TextFormField(
                      controller: _emailController,
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Campo Obrigatório!';
                        }
                        /*if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                        .hasMatch(value)) {
                      return 'Entre com e-mail valido.';
                    }*/
                        return null;
                      },
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff004ed2)),
                        ),
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(
                          Icons.account_circle,
                          color: Colors.grey,
                        ),
                        labelText: 'Usuario',
                        hintText: 'Usuario',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 20, bottom: 20),
                    child: TextFormField(
                      controller: _passwordcontroller,
                      obscureText: true,
                      keyboardType: TextInputType.text,
                      validator: (value) {
                        return value == "" ? "Campo Obrigatório!" : null;
                      },
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff004ed2),
                            ),
                          ),
                          prefixIcon:
                              Icon(Icons.vpn_key_outlined, color: Colors.grey),
                          border: OutlineInputBorder(),
                          labelText: 'Senha',
                          hintText: 'Entre com a sua senha'),
                    ),
                  ),
                  Container(
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
                            'Login',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => HomePage()),
                            );
                          })),
                  Padding(
                    padding: EdgeInsets.fromLTRB(250, 20, 16, 0),
                    child: GestureDetector(
                        onTap: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) => Forgot_Password()),
                          // );
                        },
                        child: const Text(
                          'Esqueci a senha!',
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xff7d00c6),
                          ),
                          textAlign: TextAlign.left,
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(16, 80, 16, 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text('Ainda não tem uma conta?',
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xff5c5c5c),
                            )),
                        GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Register()),
                              );
                            },
                            child: const Text(
                              'Cadastre-se',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Color(0xff7d00c6),
                                  fontWeight: FontWeight.bold),
                            ))
                      ],
                    ),
                  ),
                ]))));
  }
}
