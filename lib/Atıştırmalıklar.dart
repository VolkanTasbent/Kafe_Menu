import 'package:flutter/material.dart';
import 'package:volkan_kafe/soguklar.dart';

class Atistirmaliklar extends StatelessWidget {
  const Atistirmaliklar({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Atıştırmalıklar"),
        backgroundColor: const Color.fromARGB(255, 36, 113, 160),
      ),
      body: Stack(
        children: [
          // Arka plan resmi
          Positioned.fill(
            child: Opacity(
              opacity: 0.3, 
              child: Image.network(
                "https://cdn.yemek.com/mnresize/1250/832/uploads/2021/09/baharatli-patates-kizartmasi-tarifi.jpg", // Arka plan resmi URL'si
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListView(
            children: [
              Soguklar.icecekKart(context, "Patates Kızartması", "https://cdn.yemek.com/mnresize/1250/832/uploads/2021/09/baharatli-patates-kizartmasi-tarifi.jpg", 90),
              Soguklar.icecekKart(context, "Kaşarlı Tost", "https://images.deliveryhero.io/image/fd-tr/Products/38763788.jpg?width=%s", 80),
              Soguklar.icecekKart(context, "Sebzeli Tost", "https://images.deliveryhero.io/image/fd-tr/Products/39551205.jpg?width=%s", 90),
              Soguklar.icecekKart(context, "Karışık Tost", "https://images.deliveryhero.io/image/fd-tr/Products/42727425.jpg?width=%s", 100),
              Soguklar.icecekKart(context, "Kaşar-Kavurmalı Tost", "https://images.deliveryhero.io/image/fd-tr/Products/42727800.jpg?width=%s", 120),
              Soguklar.icecekKart(context, "Süper Karışık Tost", "https://images.deliveryhero.io/image/fd-tr/Products/61225199.jpg?width=%s", 150),
              Soguklar.icecekKart(context, "Soğan Halkası", "https://biqmenu.com/kavuskafe/assets/uploads/urunler/4fda8-sog-an-halkasi.jpg", 110),
              Soguklar.icecekKart(context, "Nugget", "https://www.ardaninmutfagi.com/wp-content/uploads/2022/05/tavuk-nugget-t.jpg", 130),
              Soguklar.icecekKart(context, "Dana Köfte Ekmek", "https://www.gdlemre.com/wp-content/uploads/2023/10/kofte-ekmek_MTAzNDUwNTM2_1.jpg", 150),
            ],
          ),
        ],
      ),
    );
  }
}
