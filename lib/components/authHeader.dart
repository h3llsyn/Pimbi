import 'package:flutter/material.dart';

class AuthHeader extends StatelessWidget {

  final String logoEscrita;
  final String titulo;
  final String subtitulo;
  final String logoApple;

  const AuthHeader({
    super.key,
    required this.logoEscrita,
    required this.titulo,
    required this.subtitulo,
    required this.logoApple,
  });

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      width: double.infinity,
      height: 260,

      child: Stack(
        children: [

          Positioned(
            left: 10,
            top: 10,
            child: Image.asset(
              logoEscrita,
              width: 190,
              height: 190,
            ),
          ),

          Positioned(
            left: 23,
            top: 155,
            child: Text(
              titulo,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),

          Positioned(
            left: 25,
            top: 195,
            child: Text(
              subtitulo,
              style: const TextStyle(
                fontSize: 12,
                color: Color.fromARGB(255, 99, 99, 99),
              ),
            ),
          ),

          Positioned(
            right: 0,
            top: 40,
            child: Image.asset(
              logoApple,
              width: 170,
              height: 170,
            ),
          ),
        ],
      ),
    );
  }
}