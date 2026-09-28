import 'package:flutter/material.dart';

class CustomTextForm extends StatefulWidget {
  final String label;
  final IconData icon;
  final IconData? iconSuffix;
  final bool isObscure;

  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;

  const CustomTextForm({
    super.key,
    required this.label,
    required this.icon,
    this.iconSuffix,
    this.isObscure = false,
    this.controller,
    this.validator,
    this.keyboardType,
  });

  @override
  State<CustomTextForm> createState() => _CustomTextFormState();
}

class _CustomTextFormState extends State<CustomTextForm> {
  late bool _obscure;

  @override
  void initState() {
    super.initState();
    _obscure = widget.isObscure;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 320,
      child: TextFormField(
        controller: widget.controller,
        validator: widget.validator,
        keyboardType: widget.keyboardType,
        obscureText: _obscure,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 20,
          ),
          labelText: widget.label,

          prefixIcon: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 10,
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(
                widget.icon,
                color: Colors.white,
                size: 18,
              ),
            ),
          ),

          prefixIconConstraints: const BoxConstraints(
            minWidth: 50,
            minHeight: 50,
          ),

          suffixIcon: widget.isObscure
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      _obscure = !_obscure;
                    });
                  },
                  icon: Icon(
                    _obscure
                        ? Icons.visibility
                        : Icons.visibility_off,
                    color: Colors.red,
                  ),
                )
              : widget.iconSuffix != null
                  ? Icon(widget.iconSuffix)
                  : null,
        ),
      ),
    );
  }
}