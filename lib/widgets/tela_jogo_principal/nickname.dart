import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../styles/styles.dart';

class NickNameField extends StatelessWidget {
  const NickNameField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 5, 10, 5),
      decoration: kNickNameDecoration,
      child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: SizedBox(
            width: 300,
            height: 50,
            child: TextField(
              style: TextStyle(
                  color: CustomColor.scaffoldBg,
                  fontSize: 30,
                  fontWeight: FontWeight.w500),
              decoration: InputDecoration(
                suffixIcon: Icon(
                  Icons.brush,
                  color: CustomColor.scaffoldBg,
                ),
                hintText: 'NickName',
                hintMaxLines: 1,
                border: InputBorder.none,
                hintStyle: TextStyle(
                  color: CustomColor.scaffoldBg,
                  fontSize: 30,
                ),
              ),
              textAlign: TextAlign.center,
            ),
          )),
    );
  }
}
