import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:zumda/app/app_icons.dart';
import 'package:zumda/app/app_routes.dart';
import 'package:zumda/core/utils.dart';
import 'package:zumda/features/order/presentation/widget/Item_widget.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  _userPageTap() {
    setState(() {
      Get.offNamed(AppRoutes.USER);
    });
  }

  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context).size.width;
    SizeConfig().init(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Gap(SizeConfig.calculateBlockHorizontal(40)),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.calculateBlockHorizontal(16.0)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Новые',
                    style: TextStyle(
                      fontSize: SizeConfig.calculateTextSize(28),
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _userPageTap();
                    },
                    child: Container(
                      width: 36,
                      height: 36,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35),
                          color: Colors.black),
                      child: const Image(
                        image: AssetImage('assets/images/img_4.png'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Gap(68),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.calculateBlockHorizontal(26)),
              child: Column(
                children: [
                  Card(
                    margin: EdgeInsets.only(
                        bottom: SizeConfig.calculateBlockVertical(20.0)),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                        side: const BorderSide(color: Color(0xFFB4271B))),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: SizeConfig.calculateBlockHorizontal(40),
                                width: SizeConfig.calculateBlockHorizontal(40),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(35),
                                  color: Colors.red[900],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SvgPicture.asset(
                                    AppIcons.FOOD_BANK,
                                  ),
                                ),
                              ),
                              Gap(SizeConfig.calculateBlockHorizontal(16)),
                              Text(
                                'Заказ №23',
                                style: TextStyle(
                                  color: const Color(0xFF201A19),
                                  fontSize: SizeConfig.calculateTextSize(22),
                                ),
                              )
                            ],
                          ),
                          Gap(SizeConfig.calculateBlockVertical(32)),
                          const Column(
                            children: [
                              ItemWidget(
                                firstTitle: 'Плов Чайханский с бараниной',
                                secondTitle: '1 шт.',
                              ),
                              ItemWidget(
                                firstTitle: 'Манты с говядиной',
                                secondTitle: '4 шт.',
                              ),
                              ItemWidget(
                                firstTitle: 'Манты с говядиной',
                                secondTitle: '4 шт.',
                              ),
                            ],
                          ),
                          Gap(SizeConfig.calculateBlockVertical(24)),
                          Row(
                            children: [
                              Text(
                                'Сумма заказа: 140 000 сум',
                                style: TextStyle(
                                  color: const Color(0xFF534341),
                                  fontSize: SizeConfig.calculateTextSize(15),
                                  fontFamily: 'Martian Mono',
                                  fontWeight: FontWeight.w500,
                                  height: 1.43,
                                ),
                              )
                            ],
                          ),
                          Gap(SizeConfig.calculateBlockVertical(34)),
                          Row(
                            children: [
                              Text(
                                '23.01.2023\n15:11',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: SizeConfig.calculateTextSize(11),
                                  fontWeight: FontWeight.w500,
                                  height: 1.45,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.only(
                        bottom: SizeConfig.calculateBlockVertical(20.0)),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                        side: const BorderSide(color: Color(0xFFB4271B))),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: SizeConfig.calculateBlockHorizontal(40),
                                width: SizeConfig.calculateBlockHorizontal(40),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(35),
                                  color: Colors.red[900],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SvgPicture.asset(
                                    AppIcons.FOOD_BANK,
                                  ),
                                ),
                              ),
                              Gap(SizeConfig.calculateBlockHorizontal(16)),
                              const Text(
                                'Заказ №23',
                                style: TextStyle(
                                  color: Color(0xFF201A19),
                                  fontSize: 22.0,
                                ),
                              )
                            ],
                          ),
                          Gap(SizeConfig.calculateBlockVertical(32)),
                          const Column(
                            children: [
                              ItemWidget(
                                firstTitle: 'Плов Чайханский с бараниной',
                                secondTitle: '1 шт.',
                              ),
                              ItemWidget(
                                firstTitle: 'Манты с говядиной',
                                secondTitle: '4 шт.',
                              ),
                              ItemWidget(
                                firstTitle: 'Манты с говядиной',
                                secondTitle: '4 шт.',
                              ),
                            ],
                          ),
                          Gap(SizeConfig.calculateBlockVertical(24)),
                          Row(
                            children: [
                              Text(
                                'Сумма заказа: 140 000 сум',
                                style: TextStyle(
                                  color: const Color(0xFF534341),
                                  fontSize: SizeConfig.calculateTextSize(15),
                                  fontFamily: 'Martian Mono',
                                  fontWeight: FontWeight.w500,
                                  height: 1.43,
                                ),
                              )
                            ],
                          ),
                          Gap(SizeConfig.calculateBlockVertical(34)),
                          Row(
                            children: [
                              Text(
                                '23.01.2023\n15:11',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: SizeConfig.calculateTextSize(11),
                                  fontWeight: FontWeight.w500,
                                  height: 1.45,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.only(
                        bottom: SizeConfig.calculateBlockVertical(20.0)),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                        side: const BorderSide(color: Color(0xFFB4271B))),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: SizeConfig.calculateBlockHorizontal(40),
                                width: SizeConfig.calculateBlockHorizontal(40),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(35),
                                  color: Colors.red[900],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SvgPicture.asset(
                                    AppIcons.FOOD_BANK,
                                  ),
                                ),
                              ),
                              Gap(SizeConfig.calculateBlockHorizontal(16)),
                              const Text(
                                'Заказ №23',
                                style: TextStyle(
                                  color: Color(0xFF201A19),
                                  fontSize: 22.0,
                                ),
                              )
                            ],
                          ),
                          Gap(SizeConfig.calculateBlockVertical(32)),
                          const Column(
                            children: [
                              ItemWidget(
                                firstTitle: 'Плов Чайханский с бараниной',
                                secondTitle: '1 шт.',
                              ),
                              ItemWidget(
                                firstTitle: 'Манты с говядиной',
                                secondTitle: '4 шт.',
                              ),
                              ItemWidget(
                                firstTitle: 'Манты с говядиной',
                                secondTitle: '4 шт.',
                              ),
                            ],
                          ),
                          Gap(SizeConfig.calculateBlockVertical(24)),
                          Row(
                            children: [
                              Text(
                                'Сумма заказа: 140 000 сум',
                                style: TextStyle(
                                  color: const Color(0xFF534341),
                                  fontSize: SizeConfig.calculateTextSize(15),
                                  fontFamily: 'Martian Mono',
                                  fontWeight: FontWeight.w500,
                                  height: 1.43,
                                ),
                              )
                            ],
                          ),
                          Gap(SizeConfig.calculateBlockVertical(34)),
                          Row(
                            children: [
                              Text(
                                '23.01.2023\n15:11',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: SizeConfig.calculateTextSize(11),
                                  fontWeight: FontWeight.w500,
                                  height: 1.45,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.only(
                        bottom: SizeConfig.calculateBlockVertical(20.0)),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                        side: const BorderSide(color: Color(0xFFB4271B))),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: SizeConfig.calculateBlockHorizontal(40),
                                width: SizeConfig.calculateBlockHorizontal(40),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(35),
                                  color: Colors.red[900],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SvgPicture.asset(
                                    AppIcons.FOOD_BANK,
                                  ),
                                ),
                              ),
                              Gap(SizeConfig.calculateBlockHorizontal(16)),
                              const Text(
                                'Заказ №23',
                                style: TextStyle(
                                  color: Color(0xFF201A19),
                                  fontSize: 22.0,
                                ),
                              )
                            ],
                          ),
                          Gap(SizeConfig.calculateBlockVertical(32)),
                          const Column(
                            children: [
                              ItemWidget(
                                firstTitle: 'Плов Чайханский с бараниной',
                                secondTitle: '1 шт.',
                              ),
                              ItemWidget(
                                firstTitle: 'Манты с говядиной',
                                secondTitle: '4 шт.',
                              ),
                              ItemWidget(
                                firstTitle: 'Манты с говядиной',
                                secondTitle: '4 шт.',
                              ),
                            ],
                          ),
                          Gap(SizeConfig.calculateBlockVertical(24)),
                          Row(
                            children: [
                              Text(
                                'Сумма заказа: 140 000 сум',
                                style: TextStyle(
                                  color: const Color(0xFF534341),
                                  fontSize: SizeConfig.calculateTextSize(15),
                                  fontFamily: 'Martian Mono',
                                  fontWeight: FontWeight.w500,
                                  height: 1.43,
                                ),
                              )
                            ],
                          ),
                          Gap(SizeConfig.calculateBlockVertical(34)),
                          Row(
                            children: [
                              Text(
                                '23.01.2023\n15:11',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: SizeConfig.calculateTextSize(11),
                                  fontWeight: FontWeight.w500,
                                  height: 1.45,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
