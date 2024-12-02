import 'package:flutter/material.dart';
import 'package:flutter_navigation/views/dashboard.dart';
import 'package:flutter_navigation/views/homepage.dart';
import 'package:flutter_navigation/views/menu_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => const HomePage(),
        '/dashboard':(context) => const Dashboard(),
        '/pantai' : (context) => const MenuPage(
          title: "Pantai", 
          icons: Icons.beach_access,
          imgs: [
            
            "http://2.bp.blogspot.com/-CebjBAkWKcE/VBuaPVcuu4I/AAAAAAAAL8U/T6w0sRv__-w/s1600/Gambar%2BPantai%2BBali%2B2015%2BBeautiful%2BBeach.jpg",
            "https://ik.imagekit.io/tvlk/blog/2024/07/KVQ00j1N-shutterstock_2216666285.jpg",
          ],
          description: "Pantai adalah sebuah bentuk geografis yang terdiri dari pasir, dan terdapat di daerah pesisir laut. Daerah pantai menjadi batas antara daratan dan perairan laut.[1] Kawasan pantai berbeda dengan pesisir walaupun antara keduanya saling berkaitan.",
          ),
        '/gunung' : (context) => const MenuPage(
          title: "Gunung", 
          icons: Icons.terrain,
          imgs: [
            "https://asset.kompas.com/crops/nZ4d9g3IT3_BkpGyL91Hax_BJy0=/0x0:1800x1200/750x500/data/photo/2022/07/30/62e53356296a4.jpg",
            "https://akcdn.detik.net.id/visual/2019/07/31/f21f3789-9569-48a2-82e7-b80a60f843a0_169.jpeg"
          ],
          description: "Gunung adalah bukit yang sangat besar dan tinggi, biasanya tingginya lebih dari 600 meter.[1] Gunung biasanya memiliki sisi curam yang secara signifikan menyingkap batuan dasarnya.",
          ),
        '/budaya' : (context) => const MenuPage(
          title: "Budaya", 
          icons: Icons.museum,
          imgs: [
            "https://1.bp.blogspot.com/-Y5khBQFfJ1c/U2oy1MZdUFI/AAAAAAAADqk/62uwwie-ETE/s1600/1227568386_1395428670.jpg",
            "https://2.bp.blogspot.com/--ySdBmNVT9w/Wmu6gPdYWCI/AAAAAAAAA6E/ixwFwkA8aZATKkD26Iek7No2MIJEolbPwCLcBGAs/s1600/Beragam%2BMacam%2BBudaya%2BIndonesia.jpg"
          ],
          description: "Budaya adalah cara hidup yang berkembang dan dimiliki oleh seseorang atau sekelompok orang dan diwariskan dari generasi ke generasi namun tidak turun temurun[1].",
          ),
        '/kuliner' : (context) => const MenuPage(
          title: "Kuliner", 
          icons: Icons.restaurant,
          imgs: [
            "https://4.bp.blogspot.com/-Yord0VT13ic/WaEOIFvBDHI/AAAAAAAAAGM/IuM0m_xUazcpfp7OkGLeeoINu0L3_1ljwCLcBGAs/s1600/kuliner-nusantara.jpg",
            "https://ik.imagekit.io/tvlk/blog/2023/04/Kopi-Kalibrantas-Wisata-Kuliner-Malang-Terbaru-2023-1024x767.jpg?tr=dpr-2,w-675"
          ],
          description: "Makanan atau panganan merupakan salah satu zat yang dimakan oleh makhluk hidup untuk mendapatkan nutrisi yang kemudian diolah menjadi energi. Karbohidrat, lemak, protein, vitamin, dan mineral merupakan nutrien dalam makanan yang dibutuhkan oleh tubuh.",
          ),

      },
      initialRoute: "/",
    );
  }
}

