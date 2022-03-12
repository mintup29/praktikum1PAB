import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnotherPage extends StatefulWidget {
  const AnotherPage({Key? key}) : super(key: key);

  @override
  State<AnotherPage> createState() => _AnotherPageState();
}

class _AnotherPageState extends State<AnotherPage> {
  int angka = 0;

  void tambah(){
    setState(() {
      angka++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("VickoApp"),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.only(left: 16, right: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                  angka.toString(),
                  style: TextStyle(fontSize: 50, color: Colors.purple)),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(onPressed: (){
                      tambah();
                    }, child: Text("Tambah")),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: ElevatedButton(onPressed: (){
                      setState(() {
                        angka--;
                      });
                    }, child: Text("Kurang")),
                  ),
                ],),

              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(onPressed: (){
                      setState(() {
                        angka = 0;
                      });
                    }, child: Text("Reset"),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),),
      ),
      // floatingActionButton: FloatingActionButton(onPressed: () {
      //   setState(() {
      //     angka*=2;
      //   });
      // },),
    );
  }
}
