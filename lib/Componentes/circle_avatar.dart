import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:neon_circular_timer/neon_circular_timer.dart';

Container circleAvatar(double largura, Color cor, double altura, String img) {
  return Container(
    width: largura,
    height: altura,
    margin: const EdgeInsets.all(8),
    child: CircleAvatar(
      backgroundColor: cor,
      radius: 50,
      backgroundImage: AssetImage(img),
    ),
  );
}

Container circle(controller, double largura, Color cor, double altura) {
  return Container(
    width: largura,
    height: altura,
    margin: const EdgeInsets.all(8),
    child: CircleAvatar(
      backgroundColor: cor,
      radius: 150,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          NeonCircularTimer(
            width: 200,
            duration: 300,
            controller: controller,
            neumorphicEffect: true,
            innerFillGradient: const LinearGradient(
              colors: [Color.fromARGB(255, 151, 25, 16),Color.fromARGB(255, 151, 25, 16)],
            ),
            neonGradient: const LinearGradient(
              colors: [ Color.fromARGB(255, 151, 25, 16), Color.fromARGB(255, 151, 25, 16)],
            ),
          ),
        ],
      ),
    ),
  );
}
