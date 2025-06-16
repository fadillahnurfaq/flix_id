import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../misc/misc.dart';
import 'widgets.dart';

class AppForm extends StatefulWidget {
  final String? title;
  final String? initialValue;
  final TextEditingController? controller;
  final VoidCallback? onTap;
  final void Function(String)? onSubmit;
  final void Function(String?)? onSaved;
  final String? Function(String?)? validator;
  final Widget? prefix;
  final Widget? suffix;
  final FocusNode? focusNode;
  final String? hintText;
  final String? labelText;
  final bool isMandatory;
  final TextStyle? hintStyle;
  final String? suffixText;
  final EdgeInsetsGeometry? contentPadding;
  final Color? focusColor;
  final Color? fillColor;
  final bool? readOnly;
  final bool obscureText;
  final TextInputAction? styleTextInputAction;
  final TextInputType? keyboardType;
  final Function(String)? onChanged;
  final int? maxLines;
  final int? maxLength;
  final bool showCounter;
  final bool isPassword;
  final bool isLastForm;
  final bool isNumberOnly;

  const AppForm({
    super.key,
    this.title,
    this.initialValue,
    this.controller,
    this.onTap,
    this.onSubmit,
    this.onSaved,
    this.validator,
    this.prefix,
    this.suffix,
    this.obscureText = false,
    this.maxLines,
    this.maxLength,
    this.keyboardType,
    this.hintText,
    this.labelText,
    this.isMandatory = false,
    this.hintStyle,
    this.suffixText,
    this.contentPadding,
    this.focusNode,
    this.focusColor,
    this.fillColor,
    this.readOnly,
    this.styleTextInputAction,
    this.onChanged,
    this.showCounter = true,
    this.isPassword = false,
    this.isLastForm = false,
    this.isNumberOnly = false,
  });

  @override
  State<AppForm> createState() => _AppFormState();
}

class _AppFormState extends State<AppForm> {
  bool isHide = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.title != null) ...[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: AppText(text: widget.title!, textStyle: AppTextStyle.h4),
              ),
              if (widget.isMandatory)
                AppText(
                  text: " *",
                  textStyle: AppTextStyle.h4.copyWith(color: AppColors.red),
                ),
            ],
          ),
          const SpaceHeight(10.0),
        ],
        TextFormField(
          style: AppTextStyle.h4.copyWith(fontWeight: AppTextStyle.regular),
          initialValue: widget.initialValue,
          readOnly: widget.readOnly ?? false,
          maxLines: widget.maxLines ?? 1,
          maxLength: widget.maxLength,
          onTap: widget.onTap,
          controller: widget.controller,
          focusNode: widget.focusNode,
          validator:
              widget.validator ??
              (widget.isMandatory ? Validator.required : null),
          textInputAction: widget.isLastForm
              ? TextInputAction.done
              : widget.styleTextInputAction ?? TextInputAction.next,
          keyboardType: widget.isPassword
              ? TextInputType.visiblePassword
              : widget.isNumberOnly
              ? TextInputType.number
              : widget.keyboardType,
          onChanged: widget.onChanged,
          onFieldSubmitted: widget.onSubmit,
          onSaved: widget.onSaved,
          cursorColor: AppColors.ghostWhite,
          obscureText: widget.isPassword ? isHide : widget.obscureText,
          buildCounter: widget.showCounter
              ? (
                  context, {
                  required currentLength,
                  required isFocused,
                  required maxLength,
                }) {
                  if (maxLength != null) {
                    return Container(
                      padding: EdgeInsets.zero,
                      margin: EdgeInsets.zero,
                      transform: Matrix4.translationValues(
                        0,
                        -kToolbarHeight - 15.0,
                        0.0,
                      ),
                      child: AppText(
                        text: "$currentLength/$maxLength",
                        textStyle: AppTextStyle.regularStyle.copyWith(
                          fontSize: 10.0,
                        ),
                      ),
                    );
                  }
                  return null;
                }
              : null,
          decoration: InputDecoration(
            label: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                AppText(
                  text: widget.labelText ?? "",
                  textStyle: AppTextStyle.h4.copyWith(
                    color: AppColors.ghostWhite,
                  ),
                ),
                if (widget.isMandatory && widget.labelText != null)
                  AppText(
                    text: " *",
                    textStyle: AppTextStyle.h4.copyWith(color: AppColors.red),
                  ),
              ],
            ),
            floatingLabelBehavior: widget.labelText?.isNotEmpty == true
                ? null
                : FloatingLabelBehavior.always,
            hintText: widget.hintText,
            hintStyle:
                widget.hintStyle ??
                AppTextStyle.h4.copyWith(color: AppColors.grey),
            suffixText: widget.suffixText,
            suffixStyle: AppTextStyle.h4.copyWith(color: AppColors.ghostWhite),
            contentPadding: widget.contentPadding ?? const EdgeInsets.all(10),
            prefixIcon: widget.prefix,
            suffixIcon: widget.isPassword
                ? GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    onTap: () {
                      setState(() {
                        isHide = !isHide;
                      });
                    },
                    child: Icon(
                      isHide ? Icons.visibility_off : Icons.visibility,
                      color: AppColors.ghostWhite,
                    ),
                  )
                : widget.suffix,
            filled: true,
            fillColor: widget.fillColor ?? Colors.transparent,
            counterText: widget.showCounter ? null : "",
            enabledBorder: _border(color: AppColors.grey),
            focusedBorder: _border(
              indent: widget.readOnly == true ? 1.0 : 2.0,
              color:
                  widget.focusColor ??
                  (widget.readOnly == true
                      ? AppColors.grey
                      : AppColors.ghostWhite),
            ),
            errorBorder: _border(color: Colors.red),
            focusedErrorBorder: _border(
              indent: 2.0,
              color: widget.focusColor ?? AppColors.ghostWhite,
            ),
          ),
          inputFormatters: widget.isNumberOnly
              ? [FilteringTextInputFormatter.digitsOnly]
              : [],
        ),
      ],
    );
  }

  OutlineInputBorder _border({final double? indent, final Color? color}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: BorderSide(
        width: indent ?? 1,
        color: color ?? AppColors.ghostWhite,
      ),
    );
  }
}
