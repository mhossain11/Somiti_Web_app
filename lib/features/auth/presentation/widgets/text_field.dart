import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.controller,
    this.labelText = "", this.maxLength,
    this.maxLine,
    this.keyboardType,
    this.readOnly = false,
    this.validator,
    this.enabled,
    this.isRequired = false,
    required this.prefixIcon,
  });

  final TextEditingController controller;
  final String labelText;
  final int? maxLength;
  final int? maxLine;
  final TextInputType? keyboardType;
  final bool readOnly;
  final String? Function(String?)? validator;
  final bool? enabled;
  final bool isRequired;
  final IconData prefixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(

      maxLength:maxLength,
      maxLines: maxLine,
      keyboardType: keyboardType,
      controller: controller,
      readOnly: readOnly,
      enabled: enabled,
      validator: validator,
      decoration: InputDecoration(
        label: RichText(
          text: TextSpan(
            text: labelText,
            style: TextStyle(
                color: Colors.black,fontSize: 16),
            children: isRequired ? [
              TextSpan(
                text: ' *',
                style: TextStyle(color: Colors.red),
              ),
            ]: []
),
      ),

        prefixIcon: Icon(
          prefixIcon,
          color: Colors.grey.shade600,
        ),

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide.none,
        ),

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(
            color: Colors.grey,
            width: 1.5,
          ),
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(
            color: Colors.blue,
            width: 1.5,
          ),
        ),
      )
    );
  }
}


class CustomTextFieldPassword extends StatefulWidget {
  const CustomTextFieldPassword({
    super.key,
    required this.controller,
    this.labelText = "",
    this.keyboardType,
    this.validator,
    this.isRequired = false,
    required this.prefixIcon,
  });

  final TextEditingController controller;
  final String labelText;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final bool isRequired;
  final IconData prefixIcon;

  @override
  State<CustomTextFieldPassword> createState() => _CustomTextFieldPasswordState();
}

class _CustomTextFieldPasswordState extends State<CustomTextFieldPassword> {
  bool isObscure = true;
  bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      validator: widget.validator,
      decoration: InputDecoration(
        label: RichText(
          text: TextSpan(
              text: widget.labelText,
              style: TextStyle(color: Colors.black,fontSize: 16),
              children: widget.isRequired ? [
                TextSpan(
                  text: ' *',
                  style: TextStyle(color: Colors.red),
                ),
              ]: []
          ),
        ),
        prefixIcon: Icon(
          widget.prefixIcon,
          color: Colors.grey.shade600,
        ),
        filled: true,
        fillColor: Colors.grey.shade100,

        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 16,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide.none,
        ),

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(
            color: Colors.grey,
            width: 1.5,
          ),
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(
            color: Colors.blue,
            width: 1.5,
          ),
        ),
        suffixIcon: IconButton(onPressed: (){
          setState(() {
            isObscure = !isObscure;
            isObscureText = !isObscureText;
          });
        },
            icon:Icon(isObscure? Icons.visibility_off: Icons.visibility)
      ),
    ),
      keyboardType: widget.keyboardType,
      obscureText: isObscureText,
    );
  }
}

