import 'package:flutter/material.dart';
import 'package:volkan_kafe/soguklar.dart';

class Nargileler extends StatelessWidget {
  const Nargileler({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Nargileler"),
        backgroundColor: const Color.fromARGB(255, 36, 113, 160),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Opacity(
              opacity: 0.3,
              child: Image.network(
                "https://www.tanyanargile.com.tr/wp-content/uploads/2023/09/fruit-flavor-hookah-isolated-on-black-background-2021-09-03-17-47-07-utc.webp", // Arka plan resmi URL'si
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListView(
            children: [
              Soguklar.icecekKart(context, "Elma", "https://www.tanyanargile.com.tr/wp-content/uploads/2023/09/fruit-flavor-hookah-isolated-on-black-background-2021-09-03-17-47-07-utc.webp", 300),
              Soguklar.icecekKart(context, "Elma-Nane", "https://www.tanyanargile.com.tr/wp-content/uploads/2023/09/fruit-flavor-hookah-isolated-on-black-background-2021-09-03-17-47-07-utc.webp", 300),
              Soguklar.icecekKart(context, "Kavun", "https://www.tanyanargile.com.tr/wp-content/uploads/2023/09/fruit-flavor-hookah-isolated-on-black-background-2021-09-03-17-47-07-utc.webp", 300),
              Soguklar.icecekKart(context, "Al-Fakher", "https://www.tanyanargile.com.tr/wp-content/uploads/2023/09/fruit-flavor-hookah-isolated-on-black-background-2021-09-03-17-47-07-utc.webp", 300),
              Soguklar.icecekKart(context, "Pişmiş Şeftali", "https://www.tanyanargile.com.tr/wp-content/uploads/2023/09/fruit-flavor-hookah-isolated-on-black-background-2021-09-03-17-47-07-utc.webp", 350),
              Soguklar.icecekKart(context, "Dejavu", "https://www.tanyanargile.com.tr/wp-content/uploads/2023/09/fruit-flavor-hookah-isolated-on-black-background-2021-09-03-17-47-07-utc.webp", 350),
              Soguklar.icecekKart(context, "Love 69", "https://www.tanyanargile.com.tr/wp-content/uploads/2023/09/fruit-flavor-hookah-isolated-on-black-background-2021-09-03-17-47-07-utc.webp", 350),
              Soguklar.icecekKart(context, "Laddy Killer", "https://www.tanyanargile.com.tr/wp-content/uploads/2023/09/fruit-flavor-hookah-isolated-on-black-background-2021-09-03-17-47-07-utc.webp", 350),
              Soguklar.icecekKart(context, "Special", "https://www.tanyanargile.com.tr/wp-content/uploads/2023/09/fruit-flavor-hookah-isolated-on-black-background-2021-09-03-17-47-07-utc.webp", 400),
            ],
          ),
        ],
      ),
    );
  }
}
