import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool like = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Mission 1",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Stack(
        children: [
          SizedBox(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.lightBlue.shade900,
                    Colors.white,
                  ],
                ),
              ),
              child: Column(
                children: [
                  Flexible(
                    flex: 2,
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      color: Colors.amber,
                      child: Image.asset(
                        'images/dining.jpeg',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  // foto row
                  Flexible(
                    flex: 1,
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Flexible(
                            flex: 1,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: AspectRatio(
                                aspectRatio: 1.0,
                                child: Image.asset(
                                  'images/kamar1.jpeg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: AspectRatio(
                                aspectRatio: 1.0,
                                child: Image.asset(
                                  'images/kamar2.webp',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: AspectRatio(
                                aspectRatio: 1.0,
                                child: Image.asset(
                                  'images/herobg.jpeg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: AspectRatio(
                                aspectRatio: 1.0,
                                child: Image.asset(
                                  'images/outdoor.jpeg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Flexible(
                    flex: 4,
                    child: Column(
                      children: [
                        Text(
                          "Welcome to Golden Tulip Holland Batu",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                            clipBehavior: Clip.antiAlias,
                            padding: EdgeInsets.all(8),
                            child: Text(
                              '''
Bagaimana cara mencapai Golden Tulip Holland Resort?
Golden Tulip Holland Resort Batu dekat ke kota Malang 45 Menit, dari Bandara Abdulrachman Saleh 55 menit, 49 menit dengan Mobil Dan 10 menit dari tempat wisata di Kota Batu. Hotel ini menawarkan pemandangan bukit yang spektakuler terletak di jantung tempat rekreasi di Batu udara segar menanti, dan Anda benar-benar dapat merasakan bahwa Anda menjangkau dan menyentuh Gunung Panderman atau Arjuna dari balkon pribadi.

Apakah acara atau seminar dapat diselenggarakan di Golden Tulip Holland Resort?
Sebagai tuan rumah yang sering ke acara-acara yang paling dipoles di Batu, Golden Tulip Holland Resort dengan mudah menggabungkan semua elemen penting untuk membawa bahkan urusan yang paling luar biasa untuk hidup.

Fasilitas dan jenis kamar apa saja yang tersedia di Golden Tulip Holland Resort?
Resor kami, dengan 260 kamar & villa, terletak di gambaran hijau dengan udara pegunungan yang sejuk segar. Semua kamar & vila kami menyediakan balkon pribadi di mana Anda dapat memilih pemandangan kota atau gunung.

Apa jenis makanan yang disediakan di Golden Tulip Holland Resort?
Makanan dan minuman adalah bagian penting dari kehidupan. Inilah mengapa kami ingin setiap makanan menjadi pengalaman kuliner tanpa peduli apakah Anda sedang bepergian atau hanya bermunculan di hotel terdekat untuk sarapan, makan siang, makan siang atau makan malam! Tergantung di bar harus menyenangkan dan mudah, atau sekadar bersantai.
                        ''',
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 14,
                                color: Colors.black,
                              ),
                              textAlign: TextAlign.start,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          // button
          Positioned(
            top: 16,
            left: 16,
            child: FloatingActionButton(
              onPressed: () {
                setState(() {
                  like = !like;
                });
              },
              backgroundColor: Colors.white,
              elevation: 10,
              shape: const CircleBorder(),
              child: Icon(
                Icons.favorite,
                color: like ? Colors.red.shade900 : Colors.grey.shade400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
