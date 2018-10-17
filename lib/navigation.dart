import 'package:flutter/material.dart';

//void main() => runApp(new MaterialApp(home: new HomePage(),));

class HomePage extends StatelessWidget {
  GlobalKey <ScaffoldState>globalKey = new GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: globalKey,
    appBar: new AppBar(title: new Text(""),),
      floatingActionButton: FloatingActionButton(onPressed: (){




    //    Navigator.push(context, new MaterialPageRoute(builder: (context) => new AboutPage()));
      }),
      body: new Center(child: new RaisedButton(onPressed: (){
        var snakBar = new SnackBar(backgroundColor:Colors.green,content: new Text("Hello SnackBar"));
        globalKey.currentState.showSnackBar(snakBar);
      }),),
      
    );
  }
}

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title: new Text(""),),
      body: new Center(child: new Text("Ahmed El3shry"),),

    );
  }
}

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title: new Text(""),),
      body: new Center(child: new Text("Ahmed El3shry"),),

    );
  }
}
