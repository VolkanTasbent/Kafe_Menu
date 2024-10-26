import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:volkan_kafe/kafe.dart';

class Soguklar extends StatelessWidget {
  const Soguklar({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 36, 113, 160),
        title: const Text('Soğuk İçecekler'),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Opacity(
              opacity: 0.3,
              child: Image.network(
                "https://www.kutluparkmenu.com/wp-content/uploads/2022/02/Cappy-Meyve-Sulari.jpg", 
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListView(
            children: [
              icecekKart(
                context,
                "Capy Çeşitleri",
                "https://www.kutluparkmenu.com/wp-content/uploads/2022/02/Cappy-Meyve-Sulari.jpg",
                50,
              ),
              icecekKart(
                context,
                "Fanta",
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRqvvdo1F5tsuKoSWOEuyMhzhpTBOMTIe3M1Q&s",
                50,
              ),
              icecekKart(
                context,
                "Kola",
                "https://bonvila.com/cdn/shop/products/Canofcoke.jpg?v=1600959786",
                50,
              ),
              icecekKart(
                context,
                "Limonata",
                "https://www.ardaninmutfagi.com/wp-content/uploads/2019/05/Limonata-3-d.jpg",
                50,
              ),
              icecekKart(
                context,
                "Lipton",
                "https://ideacdn.net/idea/fz/64/myassets/products/760/lipton-ice-tea-seftali-aromali-icecek-kutu-330-ml.jpg?revision=1697143329",
                50,
              ),
              icecekKart(
                context,
                "Ayran",
                "https://cdnprod.mopas.com.tr/sys-master-mopascdncontainer/heb/h06/9008508108830/864690_0_521Wx521H",
                30,
              ),
            ],
          ),
        ],
      ),
    );
  }
  static Widget icecekKart(BuildContext context, String isim, String resimUrl, int fiyat) {
    return TextButton(
      onPressed: () {
        Navigator.pop(
          context,
          CupertinoPageRoute(
            builder: (context) => const Kafe(),
          ),
        );
      },
      child: Column(
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                resimUrl,
                width: 250,
                height: 250,
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(height: 15),
          Text(
            "$isim: $fiyat TL",
            style: const TextStyle(
              fontSize: 22,
              fontFamily: "Bold",
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
