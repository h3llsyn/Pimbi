import 'dart:math' as math;
import 'package:Pimbi/components/button.dart';
import 'package:flutter/material.dart';

class TelaPomodoro extends StatelessWidget {
  final String tempo;
  final String mensagem;

  const TelaPomodoro({
    super.key,
    this.tempo = "25:00",
    this.mensagem = "Foque no que importa!",
  });

  @override
  Widget build(BuildContext context) {
    const double tamanho = 260;
    const double tamanhoIcone = 65;

    return SingleChildScrollView(
      child: Column(
        children: [
          // Aumenta esta altura para descer a maçã e o círculo no ecrã
          const SizedBox(height: 60), // <-- Altera aqui para ajustar a posição vertical
          
          // Componente do Timer Circular
          SizedBox(
            width: tamanho,
            height: tamanho,
            child: Stack(
              alignment: Alignment.center,
              clipBehavior: Clip.none,
              children: [
                // 1. Desenha o arco circular com a abertura no topo
                CustomPaint(
                  size: const Size(tamanho, tamanho),
                  painter: _CircularProgressPainter(
                    corGradienteInicio: const Color(0xFFFFB3B3),
                    corGradienteFim: const Color(0xFFFF5252),
                    espessuraBorda: 7.0,
                    anguloAbertura: 0.60,
                  ),
                ),

                // 2. Textos centralizados
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      tempo,
                      style: const TextStyle(
                        fontSize: 54,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF222222),
                        height: 1.0,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      mensagem,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Color(0xFF666666),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),

                // 3. Ícone posicionado no topo do arco
                Positioned(
                  top: -tamanhoIcone / 2, // Posição exata sobre a abertura do arco
                  child: Image.asset(
                    'assets/images/apple-pimbi-happy-abu.png',
                    width: tamanhoIcone,
                    height: tamanhoIcone,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 16),
          Text(
            'Ciclo 1 de 4 - Meta de hoje: 4',
            style: TextStyle(
              color: Color(0xFF666666),
              fontSize: 12
            ),
          ),
          const SizedBox(height: 24),
          Button(
            onPressed: (){},
            icon: Icons.play_arrow_rounded,
            iconSize: 42,
          ),
        ],
      ),
    );
  }
}

class _CircularProgressPainter extends CustomPainter {
  final Color corGradienteInicio;
  final Color corGradienteFim;
  final double espessuraBorda;
  final double anguloAbertura;

  _CircularProgressPainter({
    required this.corGradienteInicio,
    required this.corGradienteFim,
    required this.espessuraBorda,
    required this.anguloAbertura,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final double center = size.width / 2;
    final double radius = (size.width - espessuraBorda) / 2;

    final double startAngle = -math.pi / 2 + (anguloAbertura / 2);
    final double sweepAngle = (2 * math.pi) - anguloAbertura;

    final rect = Rect.fromCircle(
      center: Offset(center, center),
      radius: radius,
    );

    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = espessuraBorda
      ..strokeCap = StrokeCap.round
      ..shader = SweepGradient(
        colors: [corGradienteInicio, corGradienteFim, corGradienteInicio],
        stops: const [0.0, 0.5, 1.0],
        transform: GradientRotation(startAngle),
      ).createShader(rect);

    canvas.drawArc(rect, startAngle, sweepAngle, false, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}