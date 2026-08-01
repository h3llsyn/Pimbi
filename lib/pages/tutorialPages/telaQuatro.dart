import 'package:flutter/material.dart';
import 'package:Pimbi/components/buildAccountRow.dart';
import 'package:Pimbi/components/buttonGoAndBack.dart';
import 'package:Pimbi/components/pularBotao.dart';
import 'package:Pimbi/pages/inicio.dart';
import 'package:Pimbi/pages/tutorialPages/telaTres.dart';

class TelaQuatro extends StatelessWidget {
  const TelaQuatro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          PularBotao(),
          Expanded(
            child: Transform.translate(
              offset: const Offset(0, -15),
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/apple-pimbi-plantinha.png'
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
                          icon: Icons.track_changes,
                          iconColor: Colors.red,
                          label: 'Defina seus objetivos',
                        ),
                        Divider(),
                        BuildAccountRow(
                          icon: Icons.signal_cellular_alt,
                          iconColor: Colors.red,
                          label: 'Crie hábitos constantes',
                        ),
                        Divider(),
                        BuildAccountRow(
                          icon: Icons.emoji_events_outlined,
                          iconColor: Colors.red,
                          label: 'Conquiste suas metas',
                        ),
                        Divider(),
                        BuildAccountRow(
                          icon: Icons.spa,
                          iconColor: Colors.red,
                          label: 'Veja seu foco florescer',
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  ButtonGoAndBack(
                    voltar: TelaTres(),
                    passar: InicioPage(),
                  ),
                  SizedBox(height: 8,),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}