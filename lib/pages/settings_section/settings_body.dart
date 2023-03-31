// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../../components/button.dart' as customButton_style;

class SettingsBody extends StatelessWidget {
  const SettingsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          SizedBox(
            height: 100,
          ),
          Center(
            child: SizedBox(
              child: Text(
                'Instelling',
                style: TextStyle(fontSize: 60, color: Colors.black),
              ),
            ),
          ),
          Divider(
            height: 40,
            thickness: 1,
            indent: 30,
            endIndent: 30,
            color: Colors.black,
          ),
          SizedBox(
            height: 40,
          ),
          customButton_style.CustomButton(
            buttonText: 'Profiel',
            buttonWidth: double.infinity,
            buttonMargin: const EdgeInsets.fromLTRB(15, 10, 30, 20),
            buttonHeight: 90,
            fontSize: 35,
            onPressed: () {},
          ),
          SizedBox(
            height: 20,
          ),
          customButton_style.CustomButton(
            buttonText: 'XXXX',
            buttonWidth: double.infinity,
            buttonMargin: const EdgeInsets.fromLTRB(15, 10, 30, 20),
            buttonHeight: 90,
            fontSize: 35,
            onPressed: () {},
          ),
          SizedBox(
            height: 20,
          ),
          customButton_style.CustomButton(
            buttonText: 'Profiel',
            buttonWidth: double.infinity,
            buttonMargin: const EdgeInsets.fromLTRB(15, 10, 30, 20),
            buttonHeight: 90,
            fontSize: 35,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
