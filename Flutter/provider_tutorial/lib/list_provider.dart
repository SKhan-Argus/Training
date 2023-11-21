
import 'package:flutter/cupertino.dart';

class NumbersListProvider extends ChangeNotifier{
  List<int> numbers = [0];

  void add(){
    numbers.add(numbers.last+1);
    notifyListeners();
  }
}