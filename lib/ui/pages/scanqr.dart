import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreatScreen extends StatefulWidget {
  const CreatScreen({Key? key}) : super(key: key);



  @override
  State<CreatScreen> createState() => _CreatScreenState();
}

class _CreatScreenState extends State<CreatScreen> {
  var qrstr='Add Data';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Creating QR code'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BarcodeWidget(
            data: qrstr,
            barcode: Barcode.qrCode(),
            color: Colors.deepOrange,
            height: 250,
            width: 250,
          ),
          Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width*.8,
            child: TextField(
              onChanged: (val)
              {
                setState(() {
                  qrstr=val;
                });
              },
              decoration: const InputDecoration(
                hintText: 'Enter your data here',
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.deepOrange,
                    width: 2,
                  )
                )
              ),
            ),
          ),
          SizedBox(width: MediaQuery.of(context).size.width,)
        ],
      ),
    );
  }
}

