import 'package:flutter/material.dart';

class CustomTextForm extends StatefulWidget {
  final String label;
  final IconData icon;
  final IconData? iconSuffix;
  final bool isObscure;

  const CustomTextForm({super.key, required this.label, required this.icon, this.iconSuffix, this.isObscure = false});

  @override
  State<CustomTextForm> createState() => _CustomTextFormState();
}

class _CustomTextFormState extends State<CustomTextForm> {
  late bool _obscure;
  @override
  void initState(){
    super.initState();
    _obscure = widget.isObscure;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      child: TextFormField(
        obscureText: _obscure,
        decoration: InputDecoration(
          labelText: widget.label,
          prefixIcon: Icon(widget.icon),
          suffixIcon: widget.isObscure ? IconButton(onPressed: ()
            {
              setState(() {
                _obscure = !_obscure;
              });
            },
            icon: Icon(_obscure ? Icons.visibility : Icons.visibility_off)
          ) : null,
        ),
      ),
    );
  }
}