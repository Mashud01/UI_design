import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Color(0xff81D4FA),

      child: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: FittedBox(
            child: Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/f/f6/Map_Bandarban.jpg'),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
