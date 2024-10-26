import 'package:flutter/cupertino.dart';
import 'package:volkan_kafe/At%C4%B1%C5%9Ft%C4%B1rmal%C4%B1klar.dart';
import 'package:volkan_kafe/kahvalt%C4%B1lar.dart';
import 'package:volkan_kafe/nargileler.dart';
import 'package:volkan_kafe/s%C4%B1caklar.dart';
import 'package:volkan_kafe/soguklar.dart';
import 'package:flutter/material.dart';
import 'package:volkan_kafe/tatl%C4%B1lar.dart';

class Kafe extends StatefulWidget {
  const Kafe({super.key});
  @override
  State<Kafe> createState() => _KafeState();
}
class _KafeState extends State<Kafe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const   Color.fromARGB(255, 36, 113, 160),
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Rana Cafe",
            style: TextStyle(fontSize: 26, fontFamily: "Roboto",color: Colors.white),
          ),
        ),
        backgroundColor:const  Color.fromARGB(255, 29, 56, 96),
      ),
      body: Stack(
        children: [
          // Arka plan resmi
          Opacity(
            opacity: 1.0, 
            child: Image.network(
              'https://e1.pxfuel.com/desktop-wallpaper/816/690/desktop-wallpaper-bubble-backgrounds-blue-bubble-background.jpg',
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
          ),
          ListView(
            children: [
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(builder: (context) => const Soguklar()),
                  );
                },
                child: const CardKullanimi(kategori: "Soğuk İçecekler"),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(builder: (context) => const Sicaklar()),
                  );
                },
                child: const CardKullanimi(kategori: "Sıcak İçecekler"),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                   CupertinoPageRoute(builder: (context) => const Tatlilar()),
                  );
                },
                child: const CardKullanimi(kategori: "Tatlılar"),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(builder: (context) => const Nargileler()),
                  );
                },
                child: const CardKullanimi(kategori: "Nargileler"),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(builder: (context) => const Atistirmaliklar()),
                  );
                },
                child: const CardKullanimi(kategori: "Atıştırmalıklar"),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                  CupertinoPageRoute(builder: (context) => const Kahvaltilar()),
                  );
                },
                child: const CardKullanimi(kategori: "Kahvaltılar"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
class CardKullanimi extends StatelessWidget {
  final String kategori;
  const CardKullanimi({required this.kategori, super.key});
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 29, 56, 96),
      margin: const EdgeInsets.all(10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: SizedBox(
        width: double.infinity,
        height: 100,
        child: Center(
          child: Text(
            kategori,
            style: const TextStyle(fontSize: 22,color: Colors.white),
          ),
        ),
      ),
    );
  }
}
