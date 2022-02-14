import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: FittedBox(
            child: Image.network(
                'http://ukrainiandatingblog.com/wp-content/uploads/2012/04/My-Thoughts.jpg'),
            fit: BoxFit.fill,
          ),
        ),
      ),
       
    );
  }
}