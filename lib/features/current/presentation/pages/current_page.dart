import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:zumda/app/app_icons.dart';
import 'package:zumda/app/app_routes.dart';
import 'package:zumda/core/utils.dart';

class CurrentPage extends StatefulWidget {
  const CurrentPage({Key? key}) : super(key: key);

  @override
  State<CurrentPage> createState() => _CurrentPageState();
}

class _CurrentPageState extends State<CurrentPage> {
  void _showDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Column(
              children: [
                Icon(Icons.delete_outline, size: 25),
                SizedBox(
                  height: 15,
                ),
                Text('Вы уверены?'),
              ],
            ),
            content: const Text(
              'Действие будет необратимо.',
              style: TextStyle(fontSize: 17),
            ),
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MaterialButton(
                    onPressed: () {},
                    child: Container(
                      width: 70,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.red,
                      ),
                      child: const Center(
                        child: Text('Да'),
                      ),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {},
                    child: Container(
                      width: 70,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(width: 1, color: Colors.black26),
                      ),
                      child: const Center(
                        child: Text(
                          'Нет',
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          );
        });
  }

  _costpagecontroller() {
    setState(() {
      // Navigator.pushReplacementNamed(context, GatovPage.id);
      // Get.offNamed(AppRoutes);
    });
  }

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
                  Container(
                    child: Row(children: [
                      const Icon(
                        Icons.arrow_back_rounded,
                        size: 30,
                        color: Colors.black,
                      ),
                      const Gap(15),
                      Text(
                        'Заказ №32',
                        style: TextStyle(
                          fontSize: SizeConfig.calculateTextSize(28),
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ]),
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
            const Gap(68.0),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.calculateBlockHorizontal(24.0)),
              child: Container(
                decoration: const BoxDecoration(
                  border: Border.fromBorderSide(
                    BorderSide(
                      color: Color.fromRGBO(216, 194, 190, 1),
                      width: 1,
                    ),
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                ),
                child: Column(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        border: Border.fromBorderSide(
                          BorderSide(
                            color: Color.fromRGBO(216, 194, 190, 1),
                            width: 1,
                          ),
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      ),
                      child: Container(
                        width: SizeConfig.screenWidth,
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                                color: Colors.black12,
                                style: BorderStyle.solid),
                            top: BorderSide.none,
                            left: BorderSide.none,
                            right: BorderSide.none,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Манты с говядиной',
                                    style: TextStyle(
                                      color: Color(0xFF201A19),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      height: 1.43,
                                    ),
                                  ),
                                  Text(
                                    'Цена за 1 шт. = 7 000 сум',
                                    style: TextStyle(
                                      color: Color(0xFF201A19),
                                      fontSize: 12,
                                      fontFamily: 'Martian Mono',
                                      fontWeight: FontWeight.w400,
                                      height: 1.67,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Column(
                              children: [
                                Container(
                                  width: 80.0,
                                  height: 80.0,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('images/img_6.png'),
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(12.0),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Gap(SizeConfig.calculateBlockVertical(8.0)),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                '8 шт.: 56 000',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'Martian Mono',
                                  fontWeight: FontWeight.w300,
                                  height: 1.67,
                                ),
                              ),
                              Text(
                                '1 пакет(-а): 2 000',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'Martian Mono',
                                  fontWeight: FontWeight.w300,
                                  height: 1.67,
                                ),
                              ),
                              Text(
                                '2 контейнер(-а): 4 000',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'Martian Mono',
                                  fontWeight: FontWeight.w300,
                                  height: 1.67,
                                ),
                              ),
                              Text(
                                '=34 000 сум',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'Martian Mono',
                                  fontWeight: FontWeight.w500,
                                  height: 1.67,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Пожелание клиента',
                                style: TextStyle(
                                  color: Color(0xFF201A19),
                                  fontSize: 14,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w500,
                                  height: 1.43,
                                ),
                              ),
                              Text(
                                'Не добавляйте соусы. Спасибо.',
                                style: TextStyle(
                                  color: Color(0xFF201A19),
                                  fontSize: 12,
                                  fontFamily: 'Martian Mono',
                                  fontWeight: FontWeight.w400,
                                  height: 1.67,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            const Gap(20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26.0),
              child: Container(
                padding: const EdgeInsets.all(16.0),
                decoration: const BoxDecoration(
                  border: Border.fromBorderSide(
                    BorderSide(
                      color: Color.fromRGBO(216, 194, 190, 1),
                      width: 1,
                    ),
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                ),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        padding: const EdgeInsets.all(8.0),
                        decoration: const ShapeDecoration(
                          color: Color(0xFFB4271B),
                          shape: OvalBorder(),
                        ),
                        child: SvgPicture.asset(AppIcons.PAYMENTS),
                      ),
                      const Gap(16),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Оплата',
                            style: TextStyle(
                              color: Color(0xFF201A19),
                              fontSize: 16,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w500,
                              height: 1.50,
                            ),
                          ),
                          Text(
                            'Наличными',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF201A19),
                              fontSize: 12,
                              fontFamily: 'Martian Mono',
                              fontWeight: FontWeight.w400,
                              height: 1.67,
                            ),
                          )
                        ],
                      )
                    ]),
              ),
            ),
            const Gap(20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26.0),
              child: Container(
                padding: const EdgeInsets.all(16.0),
                decoration: const BoxDecoration(
                  border: Border.fromBorderSide(
                    BorderSide(
                      color: Color.fromRGBO(216, 194, 190, 1),
                      width: 1,
                    ),
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                ),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        padding: const EdgeInsets.all(8.0),
                        decoration: const ShapeDecoration(
                          color: Color(0xFFB4271B),
                          shape: OvalBorder(),
                        ),
                        child: SvgPicture.asset(AppIcons.PAYMENTS),
                      ),
                      const Gap(16),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Доставка',
                            style: TextStyle(
                              color: Color(0xFF201A19),
                              fontSize: 16,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w500,
                              height: 1.50,
                            ),
                          ),
                          Text(
                            'Адрес: Ислама Каримова 8, кв. 37\nСумма доставки: 30 000 сум',
                            style: TextStyle(
                              color: Color(0xFF201A19),
                              fontSize: 12,
                              fontFamily: 'Martian Mono',
                              fontWeight: FontWeight.w400,
                              height: 1.67,
                            ),
                          )
                        ],
                      )
                    ]),
              ),
            ),
            const Gap(37.0),
            Container(
              height: 140,
              color: const Color.fromRGBO(252, 223, 166, 1),
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'ИТОГ: 116 000 СУМ',
                      style: TextStyle(
                        color: Color(0xFF251A00),
                        fontSize: 14,
                        fontFamily: 'Martian Mono',
                        fontWeight: FontWeight.w600,
                        height: 1.43,
                        letterSpacing: 0.14,
                      ),
                    ),
                    Row(
                      children: [
                        IconButton(
                            iconSize: 56.0,
                            onPressed: () {},
                            icon: Container(
                              width: 56,
                              height: 56,
                              clipBehavior: Clip.antiAlias,
                              decoration: ShapeDecoration(
                                color: const Color(0xFFFFDAD5),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                shadows: const [
                                  BoxShadow(
                                    color: Color(0x4C000000),
                                    blurRadius: 3,
                                    offset: Offset(0, 1),
                                    spreadRadius: 0,
                                  ),
                                  BoxShadow(
                                    color: Color(0x26000000),
                                    blurRadius: 8,
                                    offset: Offset(0, 4),
                                    spreadRadius: 3,
                                  )
                                ],
                              ),
                              child: const Icon(Icons.close, size: 24.0),
                            )),
                        IconButton(
                            iconSize: 56.0,
                            onPressed: () {},
                            icon: Container(
                              width: 56,
                              height: 56,
                              clipBehavior: Clip.antiAlias,
                              decoration: ShapeDecoration(
                                color: const Color(0xFFFFDAD5),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                shadows: const [
                                  BoxShadow(
                                    color: Color(0x4C000000),
                                    blurRadius: 3,
                                    offset: Offset(0, 1),
                                    spreadRadius: 0,
                                  ),
                                  BoxShadow(
                                    color: Color(0x26000000),
                                    blurRadius: 8,
                                    offset: Offset(0, 4),
                                    spreadRadius: 3,
                                  )
                                ],
                              ),
                              child: const Icon(Icons.done, size: 24.0),
                            )),
                      ],
                    )
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
//948511089 958054247