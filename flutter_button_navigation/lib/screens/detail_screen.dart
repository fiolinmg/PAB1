import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_button_navigation/models/candi.dart';

class DetailScreen extends StatelessWidget {
  final Candi varCandi;
  const DetailScreen({super.key, required this.varCandi}); 
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // ---------- HEADER ------------
              Stack(
                children: [
                  //GAMBAR UTAMA
                  Padding (
                    padding: const EdgeInsets.symmetric(horizontal:8, vertical: 8),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.asset(
                        varCandi.imageAsset,
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: 200,
                      ),
                    ),
                  ),
                  //TOMBOL BACK
                  Container(
                    margin: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.5),
                      shape: BoxShape.circle
                    ),
                    child: IconButton(
                      onPressed: (){
                        Navigator.pop(context);
                      }, 
                      icon: const Icon(Icons.arrow_back)),
                  )
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              // ------------ INFO -------------
              Padding(padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  //Nama Candi & Tombol Favorite
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        varCandi.name,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                      ),
                      IconButton(
                        onPressed: () {}, icon: const Icon(Icons.favorite))
                    ],
                  ),
                  const SizedBox(
                        height: 16,
                  ),
                  // ----------------- INFO -----------------
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              varCandi.name,
                              style: const TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            IconButton(
                                onPressed: () {}, icon: const Icon(Icons.favorite)),
                          ],
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.location_on,
                              color: Colors.red,
                            ),
                            const SizedBox(width: 8),
                            const SizedBox(
                              width: 70,
                              child: Text(
                                'Lokasi',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Text(': ${varCandi.location}')
                          ],
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.calendar_month,
                              color: Colors.blue,
                            ),
                            const SizedBox(width: 8),
                            const SizedBox(
                              width: 70,
                              child: Text(
                                'Dibangun',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Text(': ${varCandi.built}')
                          ],
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.house,
                              color: Colors.green,
                            ),
                            const SizedBox(width: 8),
                            const SizedBox(
                              width: 70,
                              child: Text(
                                'Tipe',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Text(': ${varCandi.type}')
                          ],
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Divider(
                          color: Colors.deepPurple.shade100,
                          thickness: 1,
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        // Deskripsi
                        Text(
                          varCandi.description,
                          textAlign: TextAlign.justify,
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Divider(
                          color: Colors.deepPurple.shade100,
                          thickness: 1,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.all(16),
                      child: SizedBox(
                        height: 200,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: varCandi.imageUrls.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 8),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(16),
                                child: CachedNetworkImage(
                                  imageUrl: varCandi.imageUrls[index],
                                  placeholder: (context, url) => Transform.scale(
                                    scale: 0.2,
                                    child: CircularProgressIndicator(),
                                  ),
                                  errorWidget: (context, url, error) =>
                                      const Icon(Icons.error),
                                  width: 200,
                                  height: 200,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            );
                          },
                        ),
                      ))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}
