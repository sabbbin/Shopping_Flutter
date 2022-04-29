import 'package:flutter/material.dart';


void main ()=>runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
home: HomePage(),
theme: ThemeData(
      brightness: Brightness.dark,
    primaryColor: Colors.lightBlue[800],
    accentColor: Colors.cyan[600],

),
));


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}




class _HomePageState extends State<HomePage> {
  String word="hello sabin";
void _changeText(){
  setState(() {
    if (word.startsWith('h')){
        word='you have clicked';
    }
    else{
      word='hello sabin';
    }
  
  });
}
Widget _bodywidget(){
  return Container(
  
    
      padding: EdgeInsets.all(10),

      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Text(word,style: TextStyle( color:Colors.green,fontSize:12),),
            RaisedButton(
              color: Colors.green,
              child:Text('Click', style: TextStyle(color:Colors.white),),
              onPressed: _changeText,
            ),
          ]
        )
        
      )
      

      );

}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('home page')
      ),
      body: _bodywidget(),
    );
  }
}