import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test_app_flutter/app/resources/app_colors.dart';

class BaseInput extends StatefulWidget {
  const BaseInput({
    this.text,
    this.label,
    this.hint,
    this.error,
    this.borderColor = Colors.transparent,
    this.messageColor = AppColors.error,
    this.onChanged,
    this.autoFocus = false,
    this.maxLength,
    this.inputFormatters,
    this.keyboardType,
    this.autofillHints,
    this.needCounter = false,
    this.textAlign = TextAlign.start,
    this.maxLines = 1,
    this.minLines,
    this.obscureText = false,
    this.textStyle,
    this.hintStyle,
    this.labelStyle =
        const TextStyle(fontWeight: FontWeight.w400, fontSize: 14, color: AppColors.onPrimary),
    this.prefix,
    this.radius = 20,
    this.containerPadding = const EdgeInsets.all(15),
    this.color = AppColors.primary,
    this.trailingIcon,
    this.readOnly = false,
    this.contentPadding = const EdgeInsets.all(8),
    this.onSuffixTap,
    this.onTap,
  });

  final String? text;
  final String? label;
  final String? hint;
  final String? error;
  final bool obscureText;
  final ValueChanged<String>? onChanged;
  final bool autoFocus;
  final int? maxLength;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;
  final Iterable<String>? autofillHints;
  final bool needCounter;
  final TextAlign textAlign;
  final int maxLines;
  final int? minLines;
  final TextStyle? textStyle;
  final TextStyle? hintStyle;
  final TextStyle labelStyle;
  final EdgeInsets contentPadding;
  final Widget? trailingIcon;
  final double radius;
  final EdgeInsets containerPadding;
  final Color color;
  final VoidCallback? onSuffixTap;
  final VoidCallback? onTap;
  final Color? borderColor;
  final Color? messageColor;
  final Widget? prefix;
  final bool readOnly;

  @override
  _BaseInputState createState() => _BaseInputState();
}

class _BaseInputState extends State<BaseInput> {
  late TextEditingController _controller;
  late FocusNode _focus;
  late InputBorder _border = OutlineInputBorder(
    borderSide: BorderSide(color: AppColors.gray1),
    borderRadius: BorderRadius.all(Radius.circular(12)),
  );

  InputBorder _errorBorder = const OutlineInputBorder(
    borderSide: const BorderSide(color: AppColors.error),
    borderRadius: BorderRadius.all(Radius.circular(12)),
  );

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    _focus = FocusNode(debugLabel: widget.label);
    _focus.addListener(() {
      setState(() {});
    });
  }

  @override
  void didUpdateWidget(covariant BaseInput oldWidget) {
    if (widget.text != _controller.text) {
      _controller.text = widget.text ?? '';
      setState(() {});
    }
    super.didUpdateWidget(oldWidget);

  }

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (widget.label != null) ...[
            _buildLabel(widget.label ?? ''),
            const SizedBox(height: 9),
          ],
          _buildForm(context),
        ],
      );

  Widget _buildError(BuildContext context) => Padding(
        padding: const EdgeInsets.only(top: 4, left: 12),
        child: Text(
          widget.error!,
          style: TextStyle(color: widget.messageColor, fontSize: 12, fontWeight: FontWeight.w400),
        ),
      );

  Widget _buildLabel(String text) => Text(
        text,
        style: widget.labelStyle,
      );

  Widget _buildForm(BuildContext context) => TextFormField(
        readOnly: widget.readOnly,
        focusNode: _focus,
        obscureText: widget.obscureText,
        controller: _controller,
        style: widget.textStyle,
        maxLength: widget.maxLength,
        maxLines: widget.maxLines,
        minLines: widget.minLines,
        inputFormatters: widget.inputFormatters,
        keyboardType: widget.keyboardType,
        onChanged: widget.onChanged,
        onTap: widget.onTap,
        textAlign: widget.textAlign,
        autofillHints: widget.autofillHints,
        decoration: InputDecoration(
          counterText: widget.needCounter ? null : '',
          hintText: widget.hint,
          hintStyle: widget.hintStyle,
          filled: true,
          fillColor: widget.color,
          errorText: widget.error,
          errorBorder: _errorBorder,
          focusedErrorBorder: _errorBorder,
          enabledBorder: _border,
          focusedBorder: _border,
          border: _border,
          contentPadding: widget.contentPadding,
          prefixIcon: widget.prefix != null
              ? Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
                  child: widget.prefix,
                )
              : null,
          suffixIcon: widget.trailingIcon != null
              ? Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
                  child: widget.trailingIcon,
                )
              : null,
        ),
      );
}
