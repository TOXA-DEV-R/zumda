import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:zumda/core/utils.dart';
import 'package:zumda/widgets/dot_widget.dart';

class ItemWidget extends StatelessWidget {
  final String _firstTitle;
  final String _secondTitle;

  const ItemWidget(
      {super.key, required String firstTitle, required String secondTitle})
      : _secondTitle = secondTitle,
        _firstTitle = firstTitle;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Container(
      width: SizeConfig.screenWidth,
      clipBehavior: Clip.antiAlias,
      decoration: const BoxDecoration(),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Gap(10),
              const DotWidget(),
              const Gap(10),
              Text(
                _firstTitle,
                style: TextStyle(
                  color: const Color(0xFF201A19),
                  fontSize: SizeConfig.calculateTextSize(14),
                  fontWeight: FontWeight.w500,
                  height: 1.43,
                ),
              ),
            ],
          ),
          Text(
            _secondTitle,
            style: TextStyle(
              color: Colors.black,
              fontSize: SizeConfig.calculateTextSize(14),
              fontWeight: FontWeight.w500,
              height: 1.43,
            ),
          ),
        ],
      ),
    );
  }
}
