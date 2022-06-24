import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../themes/themes.dart';
class CounterStatefulPage extends StatefulWidget {
  const CounterStatefulPage({Key? key}) : super(key: key);

  @override
  State<CounterStatefulPage> createState() => _CounterStatefulPageState();
}

class _CounterStatefulPageState extends State<CounterStatefulPage> {
  int counter=0;
  String errorMessage="";
  @override
  Widget build(BuildContext context) {
    print("Building widgets tree");
    return Scaffold(
      appBar: AppBar(title: const Text("Counter Stateful"),),
      body:  Center(
        child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Text("Counter Value => $counter", style: Theme.of(context).textTheme.headline5,),
          (errorMessage!='')?
              Text("$errorMessage", style: CustomTheme.errorTextStyle,)
              : const Text("")
      ]),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: "dec",
              onPressed: (){
              setState(() {
                if(counter>0) {
                  --counter;
                  errorMessage="";
                }else {
                  errorMessage="Counter value can not be less than 0";
                }
              });
              },
              child: const Icon(Icons.remove),
          ),
          const SizedBox(width: 8,),
          FloatingActionButton(
            heroTag: "inc",
            onPressed: (){
              setState(() {
                if(counter<10){
                ++counter;
                errorMessage="";
              }else {
                errorMessage="Counter value can not exceed 10";
              }
              });
            },
            child: const Icon(Icons.add),
          )
        ],
      ),
    );
  }
}
