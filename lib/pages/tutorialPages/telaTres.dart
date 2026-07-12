import 'package:flutter/material.dart';
import 'package:Pimbi/components/buildAccountRow.dart';
import 'package:Pimbi/components/buttonGoAndBack.dart';
import 'package:Pimbi/components/pularBotao.dart';
import 'package:Pimbi/pages/tutorialPages/telaDois.dart';
import 'package:Pimbi/pages/tutorialPages/telaQuatro.dart';

class TelaTres extends StatelessWidget {
  const TelaTres({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          PularBotao(),

          Transform.translate(
            offset: const Offset(0, -15),
            child: Column(
              children: [
                Image.asset(
                  'assets/images/apple-pimbi-bracinhos.png',
                  height: 180,
                  width: 180,
                ),

                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16.0),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 8.0,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.9),
                    borderRadius: BorderRadius.circular(24.0),
                    border: Border.all(
                      color: const Color(
                        0xFF5D201C,
                      ).withValues(alpha: 0.08),
                      width: 1.0,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(
                          0xFF5D201C,
                        ).withValues(alpha: 0.03),
                        blurRadius: 15.0,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: const Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      BuildAccountRow(
                        icon: Icons.access_time,
                        iconColor: Colors.red,
                        label: 'Tempo focado',
                        value: '25:00',
                      ),
                      Divider(),
                      BuildAccountRow(
                        icon: Icons.shield,
                        iconColor: Colors.red,
                        label: 'Ciclos hoje',
                        value: '4',
                      ),
                      Divider(),
                      BuildAccountRow(
                        icon: Icons.track_changes,
                        iconColor: Colors.red,
                        label: 'Foco de hoje',
                        value: '100%',
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 42),

                const Text(
                  "2. Acompanhe seu progresso",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),

                const SizedBox(height: 8),

                const Text(
                  "Veja seu desempenho diário, semanal\ne mensal para se manter motivado.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14),
                ),
              ],
            ),
          ),
          SizedBox(height: 36),
          ButtonGoAndBack(
            voltar: TelaDois(),
            passar: TelaQuatro(),
          ),
        ],
      ),
    );
  }
}