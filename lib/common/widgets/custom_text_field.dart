import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomSingleTextField extends StatelessWidget {
  const CustomSingleTextField({
    super.key,
    required this.hintText,
    this.title,
    this.trailingWidget,
    this.hasSuffixIcon = true,
    this.icon,
    this.suffixIcon,
  });

  CustomSingleTextField copyWith({
    String? title,
    String? hintText,
    Widget? icon,
    Widget? suffixIcon,
    Widget? trailingWidget,
    bool? hasSuffixIcon,
    bool? isInMultiWidget,
  }) {
    return CustomSingleTextField(
      hintText: hintText ?? this.hintText,
      title: title ?? this.title,
      icon: icon ?? this.icon,
      suffixIcon: suffixIcon ?? this.suffixIcon,
      trailingWidget: trailingWidget ?? this.trailingWidget,
      hasSuffixIcon: hasSuffixIcon ?? this.hasSuffixIcon,
    );
  }

  final String? title;
  final String hintText;
  final Widget? icon;
  final Widget? suffixIcon;
  final Widget? trailingWidget;
  final bool hasSuffixIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title != null
            ? Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Text(
                  title!,
                  style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            : const SizedBox.shrink(),
        Row(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 14,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 8,
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        style: const TextStyle(
                          fontSize: 18,
                        ),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.zero,
                          icon: icon,
                          isDense: true,
                          hintText: hintText,
                          hintStyle: const TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    hasSuffixIcon
                        ? SizedBox(width: suffixIcon == null ? 0 : 12)
                        : const SizedBox.shrink(),
                    hasSuffixIcon
                        ? suffixIcon ??
                            const Icon(
                              CupertinoIcons.back,
                              textDirection: TextDirection.rtl,
                              color: Colors.grey,
                              size: 18,
                            )
                        : const SizedBox.shrink(),
                  ],
                ),
              ),
            ),
            trailingWidget != null
                ? Expanded(child: trailingWidget!)
                : const SizedBox.shrink(),
          ],
        ),
      ],
    );
  }
}

class CustomMultiTextFields extends StatelessWidget {
  const CustomMultiTextFields({
    super.key,
    required this.title,
    required this.textFields,
  });

  final String title;
  final List<CustomSingleTextField> textFields;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: GoogleFonts.montserrat(
            textStyle: const TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 10),
        // ...[...textFields].map(
        //   (e) => e.copyWith(
        //     isInMultiWidget: true,
        //     title: null,
        //   ),
        // ),

        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(4),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 8,
              ),
            ],
          ),
          child: Column(
            children: textFields.asMap().entries.map(
              (element) {
                var index = element.key;
                var textField = element.value;
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 0,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        child: Row(
                          children: [
                            Expanded(
                              child: TextField(
                                style: const TextStyle(
                                  fontSize: 18,
                                ),
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.zero,
                                  icon: textField.icon,
                                  isDense: true,
                                  hintText: textField.hintText,
                                  hintStyle: const TextStyle(
                                    color: Colors.grey,
                                    fontSize: 16,
                                  ),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                            textField.hasSuffixIcon
                                ? SizedBox(
                                    width:
                                        textField.suffixIcon == null ? 0 : 12)
                                : const SizedBox.shrink(),
                            textField.hasSuffixIcon
                                ? textField.suffixIcon ??
                                    const Icon(
                                      CupertinoIcons.back,
                                      textDirection: TextDirection.rtl,
                                      color: Colors.grey,
                                      size: 18,
                                    )
                                : const SizedBox.shrink(),
                          ],
                        ),
                      ),
                    ),
                    index == textFields.length - 1
                        ? const SizedBox.shrink()
                        : Divider(
                            color: Colors.grey.shade300,
                          ),
                  ],
                );
              },
            ).toList(),
          ),

          // ListView.separated(
          //   physics: const NeverScrollableScrollPhysics(),
          //   itemCount: textFields.length,
          //   itemBuilder: (context, index) {
          //     var textField = textFields[index];
          //     return Text(textField.hintText);

          //   },
          //   separatorBuilder: (context, index) => Divider(
          //     color: Colors.black,
          //   ),
          // ),
        ),
      ],
    );
  }
}
