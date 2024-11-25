import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget{
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard', style: TextStyle(color:  Colors.white),),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue),
                foregroundColor: MaterialStateProperty.all(Colors.white),
              ),
              onPressed: (){
                Navigator.pop(context);
              },
              child: const Text("Back to homepage"),
            )
          ],
        ),
      ),
    );
  }
}