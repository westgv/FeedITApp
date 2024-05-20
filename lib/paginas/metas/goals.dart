import 'package:flutter/material.dart';
import 'package:flutter_application_3/constants/colors.dart';

class GoalsPage extends StatefulWidget {
  const GoalsPage({super.key});

  @override
  State<GoalsPage> createState() => _GoalsPageState();
}

class _GoalsPageState extends State<GoalsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Goals"),
        centerTitle: true,
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
        backgroundColor: CustomColor.scaffoldBg,
      ),

      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Week Goals", style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),),
            const SizedBox(height: 30,),
            Column(
              children: [
                Row(
                  children: [
                    // utilizar uma lista com metas e uma loop de repeticao conforme a necessidade das metas.
                    const Text("Uma meta que o medico disse"),
                    IconButton(onPressed: () {}, icon: const Icon(Icons.check, color: Colors.green,)),

                  ],
                )

              ],
            )

          ],
        ),
      ),
    );
  }
}