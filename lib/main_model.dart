import 'package:flutter/material.dart';

class MainModel extends ChangeNotifier{
   String konText = "kon";

  void ChangeKonText(){
    konText = "kon_1111";
    notifyListeners();
  }
}