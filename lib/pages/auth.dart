import 'package:flutter/material.dart';

import './products.dart';

class AuthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: RaisedButton(
          color: Theme.of(context).primaryColor,
          child: Text('LOGIN'),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => ProductsPage()),
            );
          },
        ),
      ),
    );
  }
}
