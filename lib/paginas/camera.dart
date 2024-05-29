import 'dart:io';
import 'dart:typed_data';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:image_picker/image_picker.dart';

class CameraPage extends StatefulWidget {
  const CameraPage({super.key});

  @override
  State<CameraPage> createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {

  final Gemini gemini = Gemini.instance;

  List<ChatMessage> messages = [];

  int activeIndex = 0;
  ChatUser currentUser = ChatUser(id: "0", firstName: "User");
  ChatUser geminiUser = ChatUser(id: "1", firstName: "Gemini", profileImage: "assets/sao_camilo.png");

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
  width: 400,
  padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
  child: CarouselSlider.builder(
        carouselController: controller,        
        options: CarouselOptions(
          height: 55,
          enlargeCenterPage: true,
          
          viewportFraction: 0.2,
          onPageChanged: (index, reason) => 
          setState(() => activeIndex = index),
        ),
        itemCount: urlImages.length,
        itemBuilder: (context, index, realIndex) {
          final urlImage = urlImages[index];
          final isActive = index == activeIndex;
          final double scale = isActive? 1.0 : 0.9;

          return GestureDetector(
            onTap: () {
              controller.animateToPage(index);
            },
            child: Transform.scale(
              scale: scale,
              child: buildImage(urlImage, index),
            ),
          );
        },
      ),
);

Widget buildImage(String urlImage, int index) => Container(
    
    color: Colors.transparent,
    
    child: Image.asset
    (urlImage,
    fit: BoxFit.cover,
    ),
  );

Widget buildIndicator() => AnimatedSmoothIndicator(
  activeIndex: activeIndex,
   count: urlImages.length);

  void previous() => controller.previousPage(duration: const Duration(milliseconds: 500));
  
  void next() => controller.nextPage(duration: const Duration(milliseconds: 500));

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Scaffold(
      
      appBar: AppBar(
        leading:  IconButton(onPressed: () {
          Navigator.of(context).pop();
        }, icon: const Icon(Icons.close)),
        backgroundColor: Colors.transparent,
        title: const Text('FeedIT x Gemini'),
        centerTitle: true,
      ),

  //FRUTAS | LEGUMES | CARNES E OVOS | CEREAIS | TUBERCULOS | PÃES E RAIZES | LEGUMINOSAS | LEITES E DERIVADOS | DOCES | SALGADINHOS

      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildImageSlider(),
        ],
      ),
      body: _buildUI(),
      

      




    );
  }
  Widget _buildUI() {
    return DashChat(
      inputOptions: InputOptions(trailing: [
        IconButton(onPressed: _sendMediaMessage, icon: const Icon(Icons.image),)
      ],
      
      inputTextStyle: const TextStyle(
        color: Colors.black,
      ),
      sendButtonBuilder: (Function _sendMessage) {
        return IconButton(onPressed: () => _sendMessage(), icon: const Icon(Icons.send, color: Colors.white,) );
      },
      inputDecoration: InputDecoration(
        hintText: "Clique no icone e envie seu alimento",
        hintStyle: const TextStyle(color: Colors.black),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        fillColor: Colors.white,
        filled: true,
        iconColor: Colors.white
      )
      ),
      messageOptions: const MessageOptions(
        currentUserTextColor: Colors.white
      ),
      currentUser: currentUser,
      onSend: _sendMessage,
      messages: messages,
      
      );
  }
  void _sendMessage(ChatMessage chatMessage){
    setState(() {
      messages = [chatMessage, ...messages];
    });
    try {
      String question = chatMessage.text;
      List<Uint8List>? images;
      if(chatMessage.medias?.isNotEmpty ?? false){
        images = [
          File(chatMessage.medias!.first.url).readAsBytesSync()
          ];
        
      }
      gemini.streamGenerateContent(question, images: images,).listen((event) {
        ChatMessage? lastMessage = messages.firstOrNull;
        if (lastMessage != null && lastMessage.user == geminiUser){
          lastMessage = messages.removeAt(0);
          String response = event.content?.parts?.fold("", (previous, current) => "$previous ${current.text}") ?? "";
          lastMessage.text += response;
          setState(() {
            messages = [lastMessage!, ...messages];
          });
        }else{
          String response = event.content?.parts?.fold("", (previous, current) => "$previous ${current.text}") ?? "";
          ChatMessage message = ChatMessage(user: geminiUser, createdAt: DateTime.now(), text: response,);
          setState(() {
            messages = [message, ...messages];
          });
        }
      });
        
    } catch (e){
      print(e);
    }
  }
  void _sendMediaMessage() async {
    ImagePicker picker = ImagePicker();
    XFile? file = await picker.pickImage(source: ImageSource.gallery);
    if (file != null) {
      ChatMessage chatMessage = ChatMessage(user: currentUser, createdAt: DateTime.now(), text:"What food is that?", medias: [
        ChatMedia(url: file.path, fileName: "", type: MediaType.image)
      ]);

      _sendMessage(chatMessage);
    }
  }
}