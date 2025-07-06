import 'package:flutter/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../consts/colors.dart';
import '../consts/text_styles.dart';

class CustomTextFormField extends StatelessWidget {
  final TextInputType inputType;
  final bool obscureText;
  TextEditingController? controller;
  final bool isHiddenPassword;
  final String obscuringCharacter;
  final String hint;
  final String label;
  final Color? filledColor;
  bool enable;
  final Function()? onTap;

  final InputDecoration? decoration;
  final Function(String?) onSave;
  final Function(String?)? onChange;
  final Function(String?)? nextFocus;
  final Function()? onTapShowHidePassword;
  final FocusNode? focusNode;
  final String? Function(String?)? validator;
  TextInputAction? textInputAction;
  int maxLines;
  int? maxLength;
  IconData? suffixIcon;
  IconData? prefixIcon;
  List<TextInputFormatter>? inputFormatters;
  final TextStyle? labelTextStyle;
  final TextAlignVertical textAlignVertical;
  CustomTextFormField(
      {Key? key,
      required this.hint,
      required this.onSave,
      required this.inputType,
      required this.label,
      this.textAlignVertical = TextAlignVertical.center,
      this.onChange,
      this.nextFocus,
      this.validator,
      this.controller,
      this.obscureText = false,
      this.filledColor,
      this.maxLength,
      this.decoration,
      this.focusNode,
      this.maxLines = 1,
      this.isHiddenPassword = false,
      this.obscuringCharacter = "*",
      this.inputFormatters,
      this.enable = true,
      this.onTap,
      this.onTapShowHidePassword,
      this.textInputAction,
      this.suffixIcon,
      this.prefixIcon,
      this.labelTextStyle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FormField(
        validator: validator,
        builder: (FormFieldState<dynamic> field) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: controller,
                validator: validator == null
                    ? null
                    : (e) {
                        if (controller?.text.isNotEmpty ?? false)
                          return null;
                        else
                          return "";
                      },
                onSaved: onSave,
                onChanged: onChange,
                cursorColor: ColorCode.darkGrey,
                showCursor: true,
                onTap: onTap,

                enabled: enable,
                textAlign: TextAlign.start,
                keyboardType: inputType,
                maxLines: maxLines,
                minLines: maxLines >= 1 ? maxLines : 1,
                focusNode: focusNode,
                inputFormatters: inputFormatters ?? [],
                textAlignVertical: textAlignVertical,
                autovalidateMode: AutovalidateMode.disabled,
                obscureText: obscureText && isHiddenPassword,
                obscuringCharacter: obscuringCharacter,
                textInputAction: textInputAction,
                onFieldSubmitted: nextFocus,
                maxLength: maxLength,
                style: TextStyles.textMedium.copyWith(
                  color: ColorCode.darkGrey,
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
                decoration: decoration ??
                    InputDecoration(
                      filled: true,
                      hintText: hint,
                      prefixIcon: Container(
                        padding: const EdgeInsets.all(12),
                        margin: const EdgeInsets.only(right: 14),
                        decoration: BoxDecoration(
                          color: ColorCode.primary.withOpacity(0.1),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(16),
                            bottomLeft: Radius.circular(16),
                            topRight: Radius.circular(4),
                            bottomRight: Radius.circular(4),
                          ),
                        ),
                        child: Icon(prefixIcon,
                            color: ColorCode.primary, size: 22),
                      ),
                      suffixIcon: obscureText
                          ? IconButton(
                              icon: Icon(
                                isHiddenPassword
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                color: ColorCode.primary,
                              ),
                              onPressed: () {
                                onTapShowHidePassword?.call();
                              },
                            )
                          : suffixIcon != null
                              ? IconButton(
                                  icon: Icon(
                                    suffixIcon,
                                    color: ColorCode.primary,
                                  ),
                                  onPressed: onTap,
                                )
                              : null,
                      fillColor: ColorCode.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide.none),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: const BorderSide(
                              color: ColorCode.secondary, width: 2)),
                    ),
              ),
              if (field.hasError)
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text(
                    field.errorText?.toString() ?? "",
                    style: const TextStyle(color: Colors.red),
                  ),
                )
            ],
          );
        });
  }
}
