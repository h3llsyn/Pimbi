import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String? label;
  final IconData? icon;
  final double? iconSize; // <--- Novo parâmetro opcional para o tamanho do ícone
  final VoidCallback? onPressed;

  const Button({
    super.key,
    this.label,
    this.icon,
    this.iconSize,
    required this.onPressed,
  }) : assert(label != null || icon != null, 'É necessário informar label ou icon');

  @override
  Widget build(BuildContext context) {
    final bool isIconMode = icon != null;
    final double defaultIconSize = iconSize ?? 30.0; // Usa o tamanho passado ou 30 por padrão

    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        enabledMouseCursor: SystemMouseCursors.click,
        backgroundColor: Colors.red,
        overlayColor: Colors.white,
        
        // Se tiver ícone, o tamanho do botão se ajusta ou fica no padrão 60x60
        fixedSize: isIconMode ? const Size(60, 60) : const Size(320, 50),
        
        shape: isIconMode 
            ? const CircleBorder() 
            : RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              
        padding: isIconMode ? EdgeInsets.zero : null,
      ),
      child: isIconMode
          ? Icon(
              icon,
              color: Colors.white,
              size: defaultIconSize, // <--- Aplicado aqui
            )
          : Text(
              label ?? '',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
    );
  }
}