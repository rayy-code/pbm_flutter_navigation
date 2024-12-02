import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Beranda', style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.blue),
              foregroundColor: MaterialStateProperty.all(Colors.white)
            ),
            onPressed: (){
              Navigator.pushNamed(context, '/dashboard');
            },
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(Icons.dashboard),
                Text("Go To Dashboard")
              ],
            ),
          ),
          ),
          
          GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            crossAxisSpacing: 20.0,
            mainAxisSpacing: 20.0,
            padding: const EdgeInsets.all(20.0),
            children: <Widget>[
              ElevatedButton.icon(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                  foregroundColor: MaterialStateProperty.all(Colors.white)
                ),
                onPressed: (){
                  Navigator.pushNamed(context, "/pantai");
                }, 
                icon: const Icon(Icons.beach_access),
                label: const Text("Pantai")
              ),
              ElevatedButton.icon(
                style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue),
                foregroundColor: MaterialStateProperty.all(Colors.white)
              ),
                onPressed: (){
                  Navigator.pushNamed(context, "/gunung");
                }, 
                icon: const Icon(Icons.terrain),
                label: const Text("Gunung")
              ),
              ElevatedButton.icon(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                  foregroundColor: MaterialStateProperty.all(Colors.white)
                ),
                onPressed: (){
                  Navigator.pushNamed(context, "/budaya");
                }, 
                icon: const Icon(Icons.museum),
                label: const Text("Budaya")
              ),
              ElevatedButton.icon(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                  foregroundColor: MaterialStateProperty.all(Colors.white)
                ),
                onPressed: (){
                  Navigator.pushNamed(context, "/kuliner");
                }, 
                icon: const Icon(Icons.restaurant),
                label: const Text("Kuliner")
              ),
            ],
          )
        ],
      )
    );
  }
}