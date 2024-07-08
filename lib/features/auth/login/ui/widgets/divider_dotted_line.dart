import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

import '../../../../../core/theming/app_text_style.dart';

class DividerDottedLine extends StatelessWidget {
  const DividerDottedLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsetsDirectional.only(end: 15),
            child: DottedLine(
              dashLength: 6.0,
              dashGapLength: 6.0,
              lineThickness: 1.0,
              dashColor: Colors.grey,
            ),
          ),
        ),
        Text(
          "Or",
          style: AppTextStyle.font15DarkLighterRegular,
        ),
        Expanded(
            child: Padding(
          padding: const EdgeInsetsDirectional.only(start: 15),
          child: DottedLine(
            dashLength: 6.0,
            dashGapLength: 6.0,
            lineThickness: 1.0,
            dashColor: Colors.grey,
          ),
        )),
      ],
    );
  }
}
