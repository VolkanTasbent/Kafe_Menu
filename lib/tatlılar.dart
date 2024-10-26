import 'package:flutter/material.dart';
import 'package:volkan_kafe/soguklar.dart';

class Tatlilar extends StatelessWidget {
  const Tatlilar({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tatlılar"),
        backgroundColor: const Color.fromARGB(255, 36, 113, 160),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Opacity(
              opacity: 0.3, 
              child: Image.network(
                "https://bursabalik.com/wp-content/uploads/2024/03/Sutlac.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListView(
            children: [
              Soguklar.icecekKart(
                context,
                "Fırında Sütlaç",
                "https://bursabalik.com/wp-content/uploads/2024/03/Sutlac.jpg",
                70,
              ),
              Soguklar.icecekKart(
                context,
                "Supangle",
                "https://static.ticimax.cloud/cdn-cgi/image/width=-,quality=85/44211/uploads/urunresimleri/buyuk/supangle-35f-9c.jpg",
                80,
              ),
              Soguklar.icecekKart(
                context,
                "Magnolia",
                "https://www.karaca.com/blog/wp-content/uploads/2023/12/magnolia1.webp",
                70,
              ),
              Soguklar.icecekKart(
                context,
                "Baklava (6 adet)",
                "https://upload.wikimedia.org/wikipedia/commons/c/c7/Baklava%281%29.png",
                100,
              ),
              Soguklar.icecekKart(
                context,
                "Triliçe",
                "https://img-s1.onedio.com/id-58bff00b8f92ded60e345fc3/rev-0/w-600/h-368/f-jpg/s-da884238dffe19f7a23cc9f71a6e004af1bfee37.jpg",
                70,
              ),
              Soguklar.icecekKart(
                context,
                "Ekler (6 adet)",
                "https://images.deliveryhero.io/image/fd-tr/LH/nkjk-listing.jpg",
                75,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
