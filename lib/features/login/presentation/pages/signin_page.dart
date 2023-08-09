import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:zumda/app/app_colors.dart';
import 'package:zumda/app/app_images.dart';
import 'package:zumda/core/utils.dart';
import 'package:zumda/features/login/presentation/controller/login_controller.dart';
import 'package:zumda/widgets/bg_widget.dart';

class SigninPage extends StatefulWidget {
  SigninPage({super.key});

  final _controller = Get.put(SigninController());

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context).size.width;
    SizeConfig().init(context);

    return Scaffold(
      body: BackgroundWidget(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: SizeConfig.calculateBlockVertical(70),
                      right: SizeConfig.calculateBlockHorizontal(30),
                    ),
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
                    child: GestureDetector(
                      onTap: () {
                        Utils.makePhoneCall("+998930775777");
                      },
                      child: const Center(
                        child: Icon(
                          Icons.phone_outlined,
                          size: 24.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const Gap(57.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    AppImages.TIME,
                    width: 280.0,
                    height: 140.0,
                  ),
                ],
              ),
              const Gap(60.0),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.calculateBlockHorizontal(30)),
                child: Form(
                    key: widget._controller.formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: widget._controller.emailController,
                          validator: (input) =>
                              input!.trim().isEmpty ? 'Неверные данные.' : null,
                          style: TextStyle(
                            color: AppColors.BLACK,
                            fontSize: SizeConfig.calculateTextSize(16),
                            fontWeight: FontWeight.w400,
                          ),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: AppColors.ANTIQUEWHITE,
                            focusColor: AppColors.BLACK,
                            hintText: '+998 93 286 54 63',
                            labelText: 'Логин',
                            suffixIcon: GestureDetector(
                              onTap: () =>
                                  widget._controller.emailController.text = '',
                              child: Icon(
                                Icons.cancel_outlined,
                                color: Colors.black,
                                size: SizeConfig.calculateTextSize(24),
                              ),
                            ),
                            labelStyle: TextStyle(
                              color: AppColors.BLACK,
                              fontSize: SizeConfig.calculateTextSize(16),
                              fontWeight: FontWeight.w400,
                            ),
                            hintStyle: TextStyle(
                              color: Colors.black,
                              fontSize: SizeConfig.calculateTextSize(16),
                              fontWeight: FontWeight.w400,
                              height: 1.50,
                            ),
                            enabledBorder: const UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.red, width: 2.0),
                            ),
                            focusedBorder: const UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: AppColors.BLACK, width: 2),
                            ),
                          ),
                        ),
                        const Gap(40),
                        TextFormField(
                          controller: widget._controller.passwordController,
                          validator: (input) =>
                              widget._controller.validatorPassword(input),
                          obscureText: true,
                          style: TextStyle(
                            color: AppColors.BLACK,
                            fontSize: SizeConfig.calculateTextSize(16),
                            fontWeight: FontWeight.w400,
                          ),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: AppColors.ANTIQUEWHITE,
                            labelText: 'Пароль',
                            suffixIcon: GestureDetector(
                              onTap: () => widget
                                  ._controller.passwordController.text = '',
                              child: Icon(
                                Icons.cancel_outlined,
                                color: Colors.black,
                                size: SizeConfig.calculateTextSize(24),
                              ),
                            ),
                            labelStyle: TextStyle(
                              color: AppColors.BLACK,
                              fontSize: SizeConfig.calculateTextSize(16),
                              fontWeight: FontWeight.w400,
                            ),
                            hintStyle: TextStyle(
                              color: Colors.black,
                              fontSize: SizeConfig.calculateTextSize(16),
                              fontWeight: FontWeight.w400,
                              height: 1.50,
                            ),
                            enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.red,
                                width: 2.0,
                              ),
                            ),
                            focusedBorder: const UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: AppColors.BLACK, width: 2),
                            ),
                          ),
                        )
                      ],
                    )),
              ),
              const Gap(60),
              GestureDetector(
                onTap: widget._controller.submit,
                child: Center(
                  child: Container(
                    width: SizeConfig.calculateBlockHorizontal(80.0),
                    height: 40,
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      color: const Color(0xFFFEF1EE),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      shadows: const [
                        BoxShadow(
                          color: Color(0x26000000),
                          blurRadius: 3,
                          offset: Offset(0, 1),
                          spreadRadius: 1,
                        ),
                        BoxShadow(
                          color: Color(0x4C000000),
                          blurRadius: 2,
                          offset: Offset(0, 1),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: widget._controller.isLoading
                        ? const Center(
                            child: CircularProgressIndicator(),
                          )
                        : const Center(
                            child: Text(
                              'Войти',
                              style: TextStyle(
                                color: Color(0xFF410000),
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                height: 1.43,
                              ),
                            ),
                          ),
                  ),
                ),
              ),
              const Gap(30),
              GestureDetector(
                onTap: () {
                  //Utils.makePhoneCall("+998930775777");
                },
                child: Container(
                  child: const Center(
                    child: Text(
                      'Забыли пароль?',
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                ),
              ),
              const Gap(30),
              Container(
                child: const Center(
                  child: Text(
                    'Вас нет в нашей системе? Создать аккаунт',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              const Gap(5.0)
            ],
          ),
        ),
      ),
    );
  }
}

//906675878 973141411
