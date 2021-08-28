import 'package:flutter/material.dart';
import 'package:flutter_crud/views/user_list.dart';

class Inicio extends StatefulWidget {
  const Inicio({key}) : super(key: key);

  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Stack(
        children: [
          Form(
            child: ListView(
              children: <Widget>[
                SizedBox(height: 100),
                Center(
                  child: Text(
                    "Lista de Contatos",
                    style: TextStyle(color: Colors.black87, fontSize: 40),
                  ),
                ),
                Image.asset("imagens/imagem.jpg"),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    onPrimary: Colors.black12,
                    primary: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => UserList()));
                  },
                  child: Text(
                    "Contatos",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
