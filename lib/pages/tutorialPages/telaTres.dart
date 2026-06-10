import 'package:flutter/material.dart';
import 'package:pimbi/components/buildAccountRow.dart';
import 'package:pimbi/components/pularBotao.dart';

class TelaTres extends StatelessWidget {
  const TelaTres({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          PularBotao(),
          Image.asset(
            'assets/images/apple-pimbi-bracinhos.png',
            height: 200, width: 200
          ),
          Container(
            margin: const EdgeInsets.all(16.0), 
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0), 
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.9),
              borderRadius: BorderRadius.circular(24.0),
              border: Border.all(
                color: const Color(0xFF5D201C).withValues(alpha: 0.08), // Tom avermelhado bem suave
                width: 1.0,
              ),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xFF5D201C).withValues(alpha: 0.03),
                  blurRadius: 15.0,
                  offset: const Offset(0, 5),
                ),
              ],
            ),
            child: const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                BuildAccountRow(
                  icon: Icons.timer,
                  iconColor: Colors.red,
                  label: 'Tempo focado',
                  value: '25:00',
                ),
                Divider(),
                BuildAccountRow(
                  icon: Icons.shield,
                  iconColor: Colors.red,
                  label: 'Ciclos hoje',
                  value: '4'
                ),
                Divider(),
                BuildAccountRow(
                  icon: Icons.check_circle,
                  iconColor: Colors.red,
                  label: 'Foco de hoje',
                  value: '100%'
                ),
              ],
            ),
          ),
        ],
      )
    );
  }
}