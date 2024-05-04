import 'package:flutter/material.dart';
import 'package:get/get.dart';


class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page',),
        leading: const Icon(Icons.person),
        actions: [IconButton(onPressed: () {
          Get.back();
        } , icon: const Icon(Icons.logout))]
        ,),
        body: _body(),
        );
  }
  _body() {
    return Container();
  }
}