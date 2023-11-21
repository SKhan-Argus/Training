import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_tutorial/list_provider.dart';


class SecondPage extends StatefulWidget {

  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {


  @override
  Widget build(BuildContext context) {

     return Consumer<NumbersListProvider>(
       builder:
           (BuildContext context, NumbersListProvider value, Widget? child) =>
           Scaffold(
             floatingActionButton: FloatingActionButton(
               onPressed: () {
                value.add();
               },
               child: Icon(Icons.add),
             ),
             appBar: AppBar(),
             body: SizedBox(
               child: Column(
                 children: [
                   Text(
                     value.numbers.last.toString(),
                     style: TextStyle(
                       fontSize: 30,
                     ),
                   ),
                   Expanded(
                     child: ListView.builder(
                         itemCount: value.numbers.length,
                         itemBuilder: (BuildContext context, int index) {
                           return Text(
                             value.numbers[index].toString(),
                             style: TextStyle(
                               fontSize: 30,
                             ),
                           );
                         }),
                   ),
                 ],
               ),
             ),
           ),
     );

  }
}
