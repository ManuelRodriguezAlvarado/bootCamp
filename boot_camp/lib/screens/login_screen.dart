import 'package:flutter/material.dart';

import '../component/combo_empresa.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _checkbox = false;

  @override
  Widget build(BuildContext context) {
    
    TextStyle fontSizeTitle= const TextStyle(fontSize: 30,color:Colors.white,);
    TextStyle fontSizeSubTitle= const TextStyle(fontSize: 20,color:Colors.white,);
    TextStyle fontSizeRotulo= const TextStyle(fontSize: 15,color:Colors.white,);
    TextStyle TextInput= const TextStyle(fontSize: 10,color:Colors.white,);
    

    return Scaffold(
      appBar: AppBar(
        title: const Text('WebHelp'),
        elevation: 10.0,
        backgroundColor:Color.fromARGB(255, 6, 99, 94),
      ),
      backgroundColor:Color.fromARGB(255, 6, 103, 116),
      body: Center(
        child: Column(
              mainAxisAlignment: MainAxisAlignment.center,              
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget> [
                SizedBox(height: 20,),
                Text('Bienvenid@',style: fontSizeTitle),
                Text('Inicia sesión para continuar',style: fontSizeSubTitle),
                SizedBox(height: 40,),
                Text('Empresa',style: fontSizeRotulo),
                ComboEmpresa(),
                SizedBox(height: 20,),
                Text('Usuario',style: fontSizeRotulo),
                TextField(decoration: InputDecoration(
                  hintText: "Usuario"
                ),style: TextInput),
                SizedBox(height: 20,),
                Text('Contraseña',style: fontSizeRotulo),
                 TextField(obscureText: true,decoration: InputDecoration(
                  hintText: "Contraseña"
                ),style: TextInput),
                SizedBox(height: 20,),
                ElevatedButton(onPressed: (){}, 
                  child: const Text("Iniciar sesión"),
                    style:ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 6, 99, 94),                      
                    )
                    ),
                SizedBox(height: 20,),
                CheckboxListTile(
                title: const Text('Remember Password', style: TextStyle(color: Colors.white),),
                value: _checkbox,
                onChanged: (value) {
                  setState(() => _checkbox = !_checkbox);},
              ),               
              ],
            ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      
        
      ); 

      
  }
}