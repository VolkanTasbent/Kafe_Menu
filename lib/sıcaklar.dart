import 'package:flutter/material.dart';
import 'package:volkan_kafe/soguklar.dart';

class Sicaklar extends StatelessWidget {
  const Sicaklar({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sıcak İçecekler"),
        backgroundColor: const Color.fromARGB(255, 36, 113, 160),
      ),
      body: Stack(
        children: [
          // Arka plan resmi
          Positioned.fill(
            child: Opacity(
              opacity: 0.3, 
              child: Image.network(
                 "https://sakiproducts.com/cdn/shop/articles/What-is-Turkish-Coffee-Thumbnail_640x640.jpg?v=1656428495", 
                fit: BoxFit.cover,
              ),
            ),
          ),
          // İçerik
          ListView(
            children: [
              Soguklar.icecekKart(
                context,
                "Çay",
                "https://www.popeyes.com.tr/cmsfiles/products/cay.png?v=280",
                20,
              ),
              Soguklar.icecekKart(
                context,
                "Türk Kahvesi",
                "https://sakiproducts.com/cdn/shop/articles/What-is-Turkish-Coffee-Thumbnail_640x640.jpg?v=1656428495",
                70,
              ),
              Soguklar.icecekKart(
                context,
                "Filtre Kahve",
                "https://dozze.com.tr/cdn/shop/articles/filtre-kahve-faydalari-dozze.jpg?v=1699899885",
                60,
              ),
              Soguklar.icecekKart(
                context,
                "Latte",
                "https://www.coffeeisland.com.cy/assets/img/product/LatteSingleEstate16oz1.png",
                80,
              ),
              Soguklar.icecekKart(
                context,
                "Sahlep",
                "https://atisbutikrestaurant.com.tr/wp-content/uploads/2021/07/Sahlep.jpg",
                60,
              ),
              Soguklar.icecekKart(
                context,
                "Sıcak Çikolata",
                "https://birzamanlar.tubatux.com/wp-content/uploads/2022/04/11-Sicak-Cikolata-scaled-1.jpeg",
                70,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
