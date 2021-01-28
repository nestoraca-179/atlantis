import 'package:flutter/material.dart';

class LoadingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
              //crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  child: CircularProgressIndicator(
                    backgroundColor: Color.fromRGBO(0, 188, 212, 100),
                    valueColor: new AlwaysStoppedAnimation<Color>(
                        Color.fromRGBO(102, 255, 153, 100)),
                    strokeWidth: 20,
                  ),
                  height: 200.0,
                  width: 200.0,
                ),
              ]),
        ),
      ),
    );
  }
}
