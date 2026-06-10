import 'package:flutter/material.dart';

class BuildAccountRow extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String label;
  final String value; // 1. Novo parâmetro para o valor do final

  const BuildAccountRow({
    super.key,
    required this.icon,
    required this.iconColor,
    required this.label,
    required this.value, // Requerido no construtor
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {}, // É uma boa prática definir o onTap ao usar InkWell
      child: Padding(
        // 2. Ajustado para dar espaço apenas em cima/baixo, aproximando o ícone da esquerda
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 4.0),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: iconColor.withValues(alpha: 0.1),
                shape: BoxShape.circle,
              ),
              child: Icon(icon, color: iconColor, size: 24),
            ),
            const SizedBox(width: 16.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    label,
                    style: const TextStyle(
                      fontWeight: FontWeight.w500, // Ajustado para coincidir com o design original
                      fontSize: 16,
                      color: Color(0xFF333333),
                    ),
                  ),
                ],
              ),
            ),
            // 3. Novo widget de texto alinhado na extrema direita
            Text(
              value,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}