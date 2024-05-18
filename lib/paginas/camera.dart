import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_3/constants/colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CameraPage extends StatefulWidget {
  const CameraPage({super.key});

  @override
  State<CameraPage> createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  int activeIndex = 0;
  final controller = CarouselController();
  final urlImages = [
    //Cereais index 0
    'assets/cereais.png',
    //Leite e Derivados index 1
    'assets/leite_derivados.png',
    //Doces e Guloseimas index 2
    'assets/doces.png',
    //Massa index 3
    'assets/massa.png',
    //Legumes index 4
    'assets/legumes.png',
    //Leguminosas index 5
    'assets/leguminosas.png',
    //Pães index 6
    'assets/pao.png',
    //Proteina index 7
    'assets/proteina.png',
    //Frutas index 8
    'assets/frutas.png',
  ];

Widget buildImageSlider() => Container(
  width: 200,
  padding: EdgeInsets.fromLTRB(10, 0, 10, 5),
  child: CarouselSlider.builder(
        carouselController: controller,        
        options: CarouselOptions(
          height: 50,
          enlargeCenterPage: true,
          onPageChanged: (index, reason) => 
          setState(() => activeIndex = index),
        ),
        itemCount: urlImages.length,
        itemBuilder: (context, index, realIndex) {
          final urlImage = urlImages[index];
      
          return buildImage(urlImage, index);
        },
      ),
);

Widget buildImage(String urlImage, int index) => Container(
    
    color: Colors.transparent,
    width: 50,
    child: Image.asset
    (urlImage,
    fit: BoxFit.cover,),
  );

Widget buildIndicator() => AnimatedSmoothIndicator(
  activeIndex: activeIndex,
   count: urlImages.length);

  void previous() => controller.previousPage(duration: const Duration(milliseconds: 500));
  
  void next() => controller.nextPage(duration: const Duration(milliseconds: 500));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:  IconButton(onPressed: () {
          Navigator.of(context).pop();
        }, icon: const Icon(Icons.close)),
        backgroundColor: Colors.transparent,
        title: const Text('FeedIT'),
        centerTitle: true,
      ),

  //FRUTAS | LEGUMES | CARNES E OVOS | CEREAIS | TUBERCULOS | PÃES E RAIZES | LEGUMINOSAS | LEITES E DERIVADOS | DOCES | SALGADINHOS

      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: previous,
             icon: const Icon(Icons.arrow_back)),
          SizedBox(width: 15,),
          buildImageSlider(),
          SizedBox(width: 15,),
          IconButton(
            onPressed: next,
             icon: const Icon(Icons.arrow_forward)),
        ],
      ),
      

      body: Container(
        decoration: BoxDecoration(
          color: Colors.white
        ),
        
      ),




    );
    
    
  }
}