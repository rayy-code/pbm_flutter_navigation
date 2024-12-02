import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget{

  //membuat permintaan sebagai parameter
  final String title;
  final IconData icons;
  final List<String> imgs;
  final String description;
  
  //mendefinisikan bahwa permintaan/parameter harus dimasukkan ketika ingin menggunakan Widget/halaman ini
  const MenuPage({
   super.key,
   required this.title,
   required this.icons,
   required this.imgs,
   required this.description
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar
      appBar: AppBar(

        //mengatur backgorund appBar
        backgroundColor: Colors.lightBlueAccent,

        //mengatur foreground (warna teks) appBar
        foregroundColor: Colors.white,

        //mengatur tulisan di AppBar yang dibungkus dengan widget Row supaya urutan widget horizontal
        title: Row(

          //mengatur alignment supaya rata kiri
          mainAxisAlignment: MainAxisAlignment.start,

          //mengisi Row
          children: [

            //icons
            Icon(icons),

            //text pada AppBar berupa title
            Text(title),
          ]
        ),
      ),
      //membungkus body dengan ListView supaya menjadi satu halaman yang disusun secara vertikal
      body: ListView(
        children: <Widget>[

          //membuat padding / jarak terhadap ukuran layar
          Padding(
            padding: const EdgeInsets.all(16.0),

            //membuat komponen berupa grid supaya tersusun secara baris dan kolom
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

          //mengatur jarak antara gambar dengan tombol kembali
          const SizedBox(height: 20),

          Text(description),

          //mengatur jarak antara gambar dengan tombol kembali
          const SizedBox(height: 20),

          //tombol/button untuk kembali ke halaman awal
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