import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget{
  final String title;
  final IconData icons;
  final List<String> imgs;
  
  const MenuPage({
   super.key,
   required this.title,
   required this.icons,
   required this.imgs,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        foregroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(icons),
            Text(title),
          ]
        ),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child:  GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
            itemCount: imgs.length,
            itemBuilder: (context, index) {
              return Image(
                image: NetworkImage(imgs[index]),
              );
            }
          ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue),
                foregroundColor: MaterialStateProperty.all(Colors.white)
              ),
              onPressed: (){
                Navigator.pop(context);
              },
              child:const Text("Kembali"),
            )
         
        ],
      )
    );
  }
}