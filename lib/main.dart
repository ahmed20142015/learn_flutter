import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(home: HomePage()));

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new MyApp();
}

class MyApp extends State<HomePage> {

  final userNameController = new TextEditingController();
  var userName = "";
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: new AppBar(
        title: new Text("Learn Flutter"),
        backgroundColor: Colors.redAccent,
      ),
      drawer: Drawer( child: new ListView(children: <Widget>[
          new DrawerHeader(child:Image.asset(
            'images/lake.jpg',
            width: 200.0,
            height: 100.0,
            fit: BoxFit.cover,
          ),),
        new ListTile(
          leading: new Icon(Icons.android),
          onTap:(){},
          title: Text("Android"),),
          new ListTile(
            leading: new Icon(Icons.question_answer),
            onTap:(){},
            title: Text("Iphone"),),
          new ListTile(
            leading: new Icon(Icons.adjust),
            onTap:(){},
            title: Text("Java"),),
          new ListTile(
            leading: new Icon(Icons.android),
            onTap:(){},
            title: Text("Android"),),
          new ListTile(
            leading: new Icon(Icons.android),
            onTap:(){},
            title: Text("Android"),),
        ],)
      ),
      bottomNavigationBar:
          new BottomNavigationBar(items: <BottomNavigationBarItem>[
        new BottomNavigationBarItem(
            icon: new Icon(Icons.home), title: new Text("home")),
        new BottomNavigationBarItem(
            icon: new Icon(Icons.home), title: new Text("home")),
        new BottomNavigationBarItem(
            icon: new Icon(Icons.home), title: new Text("home"))
      ]),
      floatingActionButton: new FloatingActionButton(
        onPressed: (){
          var snakBar = new SnackBar(backgroundColor:Colors.green,content: new Text("Hello SnackBar"));
          Scaffold.of(context).showSnackBar(snakBar);
        },
        child: Icon(Icons.access_alarm),
      ),
      body: SingleChildScrollView(
        child: new Column(
          children: <Widget>[
            new Card(
              child: new Container(
                height: 150.0,
                child: new Column(children: <Widget>[
                  new TextField(controller: userNameController),
                  new InkWell(child: new Icon(Icons.edit),onTap: (){
                    setState((){
                      userName = userNameController.text;
                    });
                  },),
                  new Text("Hello $userName")
                ],)
              ),
            ),
            new Card(
              child: new Container(
                height: 150.0,
              ),
            ),
            new Card(
              child: new Container(
                height: 150.0,
              ),
            ),
            new Card(
              child: new Container(
                height: 150.0,
              ),
            ),
            new Card(
              child: new Container(
                height: 150.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
