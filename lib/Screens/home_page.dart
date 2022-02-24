import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BizCard'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            _getCard(),
            _getAvatar(),
          ],
        ),
      ),
    );
  }

  Container _getCard() {
    return Container(
      width: 320,
      height: 200,
      margin: EdgeInsets.all(30.0),
      decoration: BoxDecoration(
        color: Colors.blueAccent,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Tabitha Mutinda',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18,
            color: Colors.white,
          ),
          ),
          Text('Tabithamutinda.com',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.italic,
            fontSize: 14,
          ),),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.email_outlined),
              Text('Email: tabby@devs.mobi')
            ],
          )
        ],
      ),
    );
  }

  Container _getAvatar() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(50.0)),
        border: Border.all(color: Colors.yellowAccent,width: 1.2),
        image: DecorationImage(image: NetworkImage("https://picsum.photos/200/300"),
        fit: BoxFit.cover,
        ),
      ),
    );
  }
}
