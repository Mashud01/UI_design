import 'package:flutter/material.dart';

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: FittedBox(
            child: Image.network(
                'https://www.pngall.com/wp-content/uploads/2016/04/Printer-PNG.png'),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
