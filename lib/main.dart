import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue[100],
        appBar: AppBar(
          title: Text("i'm poor"),
          backgroundColor: Colors.lightBlue[500],
        ),
        body: Builder(
          builder: (context) =>
              Center(
                child: GestureDetector(
                  onTap: () {
                    final snackBar = SnackBar(content: Text('Diamante'),
                    action: SnackBarAction(
                    label: 'Fechar',
                    onPressed: () {},
                    ),
                    );
                    Scaffold.of(context).showSnackBar(snackBar);
                  },

                  child: Image(
                    image: AssetImage('images/diamond.png'),
                    width: 300,
                    height: 300,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
        ),)
      ,
    )
    ,
  );
}

void _showToast(BuildContext context) {
  final scaffold = Scaffold.of(context);
  scaffold.showSnackBar(
    SnackBar(
      content: const Text('Added to favorite'),
      action: SnackBarAction(
          label: 'UNDO', onPressed: scaffold.hideCurrentSnackBar),
    ),
  );
}
