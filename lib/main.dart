import 'package:coriander_2/main_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: ChangeNotifierProvider<MainModel>(
        create: (_) => MainModel(),
        child: Scaffold(
          appBar: AppBar(
            title: Text("coriander_2"),
          ),
          body: Consumer<MainModel>(builder: (context, model, child) {
            return Center(
              child: Column(
                children: [
                  Text(
                    model.konText,
                    style: const TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  RaisedButton(
                    onPressed: () {
                      //TODO
                      model.ChangeKonText();
                    },
                    child: const Text("Push"),
                  )
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
