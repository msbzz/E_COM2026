import 'package:ecom_2026/utils/app_textstyles.dart';
import 'package:flutter/material.dart';

class CustomTextField2 extends StatefulWidget {
  final String label;
  final String? hintText;
  final IconData prefixIcon;
  final TextInputType keyboardType;
  final bool isPassword;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;

  /// ✅ novo: valida ao digitar (sem precisar apertar o botão)
  final bool validateOnChange;

  const CustomTextField2({
    super.key,
    required this.label,
    required this.prefixIcon,
    this.hintText, // ✅ novo
    this.keyboardType = TextInputType.text,
    this.isPassword = false,
    this.controller,
    this.validator,
    this.onChanged,
    this.validateOnChange = true, // ✅ padrão ligado
  });

  @override
  State<CustomTextField2> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField2> {
  bool _obscureText = true;

  String? _liveError; // ✅ erro em tempo real

  void _handleChanged(String value) {
    // repassa para o pai, se existir
    widget.onChanged?.call(value);

    if (!widget.validateOnChange || widget.validator == null) return;

    final newError = widget.validator!(value);
    if (newError != _liveError) {
      setState(() => _liveError = newError);
    }
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    final hasText = (widget.controller?.text ?? '').trim().isNotEmpty;
    final isValid = widget.validator == null ? null : (_liveError == null);

    // ✅ se tem texto e é válido -> mostra ícone de ok
    final Widget? liveStatusIcon = (!hasText || widget.validator == null)
        ? null
        : (isValid == true
              ? Icon(Icons.check_circle, color: Colors.green)
              : Icon(Icons.error, color: Theme.of(context).colorScheme.error));

    // ✅ se for password, mantém o olho e coloca o status antes dele
    final Widget? suffix = widget.isPassword
        ? Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (liveStatusIcon != null) ...[
                liveStatusIcon,
                const SizedBox(width: 6),
              ],
              IconButton(
                onPressed: () => setState(() => _obscureText = !_obscureText),
                icon: Icon(
                  _obscureText ? Icons.visibility_off : Icons.visibility,
                ),
              ),
            ],
          )
        : liveStatusIcon;

    return TextFormField(
      controller: widget.controller,
      obscureText: widget.isPassword && _obscureText,
      keyboardType: widget.keyboardType,

      // ✅ validação do Form continua existindo (ao clicar no botão/submit)
      validator: widget.validator,

      // ✅ validação em tempo real
      onChanged: _handleChanged,

      style: AppTextStyle.withColor(
        AppTextStyle.bodyLarge,
        Theme.of(context).textTheme.bodyLarge!.color!,
      ),

      decoration: InputDecoration(
        labelText: widget.label,

        // ✅ hint (placeholder)
        hintText: widget.hintText,
        hintStyle: AppTextStyle.withColor(
          AppTextStyle.bodyLarge,
          isDark ? Colors.grey[500]! : Colors.grey[400]!,
        ),

        // ✅ erro em tempo real (sem precisar validar o Form)
        errorText: widget.validateOnChange ? _liveError : null,

        labelStyle: AppTextStyle.withColor(
          AppTextStyle.bodyLarge,
          isDark ? Colors.grey[400]! : Colors.grey[600]!,
        ),

        prefixIcon: Icon(
          widget.prefixIcon,
          color: isDark ? Colors.grey[400]! : Colors.grey[600]!,
        ),

        suffixIcon: suffix,

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: isDark ? Colors.grey[700]! : Colors.grey[300]!,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: isDark ? Colors.grey[700]! : Colors.grey[300]!,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Theme.of(context).primaryColor),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Theme.of(context).colorScheme.error),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Theme.of(context).colorScheme.error),
        ),
      ),
    );
  }
}
