/*
//Textos y edicion de textos
Text(
'You have pushed the button this many times:',
textAlign: TextAlign.center,
overflow: TextOverflow.ellipsis,
style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20, color: Colors.white,backgroundColor: Colors.black),
),

Text(
'$_counter',
style: Theme.of(context).textTheme.headline1,//const TextStyle(fontWeight: FontWeight.bold),
),

//Imagenes
body: Container(
  height: 3480,
  width: double.infinity,
  decoration: const BoxDecoration(
  image: DecorationImage(
  image: AssetImage("images/siliconbackground.png"),
  fit: BoxFit.cover),
),
),
body:  Center(
  child: Image.network(
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNo4MiEeqFZL2avP-NNymFLiqbXXnxmWc5PlIz0Hm4d63dTlaNt6pb1uKZBydAR81zD3g&usqp=CAU",
    height: 200,
    width: 200,
    fit: BoxFit.fill,
  ),
)
body: Center(
    child: Icon(
      Icons.access_alarm,
      size: 120,
      color: Colors.black,)
),
body: Center(
          child: IconButton(
            icon: Icon(Icons.close),
            onPressed: (){
              print("hola");
            },
          ),
        ),

//Practica de scaffold
home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: (){
        },),
        drawer: Drawer(),
        endDrawer: Drawer(),
        backgroundColor: Colors.black,
      ),

//practica appbar
appBar: AppBar(
  title: const Text('Material App Bar'),
  actions: <Widget>[
    IconButton(onPressed: _add, icon: Icon(Icons.add)),
    IconButton(onPressed: _add, icon: Icon(Icons.remove))
  ],
  elevation: 0,
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
  leading: IconButton(
    icon: Icon(Icons.arrow_back),
    onPressed: _add,
  )
),

Practica Columna
body:SizedBox(
          width: double.infinity, //Para que la columna se ponga realmente en la esquina de la pantalla
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, //start, center, end, spacearound,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Container(
                  color: Colors.orange,
                  height: 100,
                  width:100
              ),
              Text("Ola"),
              Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNo4MiEeqFZL2avP-NNymFLiqbXXnxmWc5PlIz0Hm4d63dTlaNt6pb1uKZBydAR81zD3g&usqp=CAU",
              ),
            ],
          ),
      ),
      ),

Filas
        body: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(child: Text("Activar Sonido")),
                Icon(Icons.android),
                Switch(
                  value: true,
                  onChanged: (value){},
                ),
              ],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Activar Sonido"),
                Icon(Icons.android),
                Switch(
                  value: true,
                  onChanged: (value){},
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.black,
                ),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.orange,
                ),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.black,
                ),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.orange,
                ),
              ],

            )
          ],
        )
 */

import 'package:fichaje/main.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: MyHomePage(),
    );
  }
}

  class MyHomePage extends StatelessWidget{
    MyHomePage({super.key});

    List<String> names = ["Mario", "Juan", "Marta"];
    @override
    Widget build(BuildContext context){
      return Scaffold(
        appBar: AppBar(
          title: Text("List View"),
        ),
        body: ListView.builder(
          itemCount: names.length,
          itemBuilder: (BuildContext context, int index) {
            final name = names[index];
            return ListTile(
              title: Text(name),
              leading: Icon(Icons.person),
              onTap: (){
                print(name);
              },
            );
          },
        ),

      );
    }
  }

  void _add() {
    print("hola");
  }

