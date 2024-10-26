import 'package:flutter/material.dart';
import 'package:volkan_kafe/soguklar.dart';

class Kahvaltilar extends StatelessWidget {
  const Kahvaltilar({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kahvaltılar"),
        backgroundColor: const Color.fromARGB(255, 36, 113, 160),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Opacity(
              opacity: 0.3, 
              child: Image.network(
                "https://yakaetlokantasi.com/storage/images/feCbzP0BLrDXXbiT.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          // İçerik
          ListView(
            children: [
              Soguklar.icecekKart(
                context,
                "Tabak Kahvaltı",
                "https://yakaetlokantasi.com/storage/images/feCbzP0BLrDXXbiT.jpg",
                250,
              ),
              Soguklar.icecekKart(
                context,
                "Serpme Kahvaltı(2 kişilik)",
                "https://cdn.firsatbufirsat.com/files/images/deal/image/400x400/97/973083_7fdc.jpg?r=2",
                700,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
