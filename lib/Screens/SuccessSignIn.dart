import 'package:flutter/material.dart';
import 'package:kalpas_login_news/Screens/News.dart';

import 'Favorite.dart';
class SuccessLogIn extends StatefulWidget {
  const SuccessLogIn({Key? key}) : super(key: key);

  @override
  _SuccessLogInState createState() => _SuccessLogInState();
}

class _SuccessLogInState extends State<SuccessLogIn> {
  int selectedState=0;
  List screen=[
    NewsDetail(),
    Favorite()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[selectedState],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedState,
        onTap: (value){
          setState(() {
            selectedState=value;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.list),
          label: "News",
          backgroundColor: Colors.red),
          BottomNavigationBarItem(icon: Icon(Icons.local_activity),
              label: "Favorite"),
        ],
      ),
    );
  }
}
