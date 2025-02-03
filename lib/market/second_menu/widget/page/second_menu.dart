import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:social_network/core/blocs/keyboard_cubit/keyboard_cubit.dart';
import 'package:social_network/core/widgets/gradient_icon_button.dart';
import 'package:social_network/features/auth_screen/state/auth_cubit.dart';
import 'package:social_network/market/first_menu/widget/house_card.dart';
import 'package:social_network/market/second_menu/repository/second_menu_repository.dart';
import '../../../../core/constants/gen/assets.gen.dart';
import '../../../first_menu/widget/widget.dart';
import '../../../theme/style.dart';

class SecondMenuScreen extends StatefulWidget {
  const SecondMenuScreen({super.key});

  @override
  State<SecondMenuScreen> createState() => _SecondMenuScreenState();
}

class _SecondMenuScreenState extends State<SecondMenuScreen>
    with TickerProviderStateMixin, WidgetsBindingObserver {
  int? selectedButton = 0; // Хранит индекс выбранной кнопки
  ImagePicker imagePicker = ImagePicker();

  void onButtonPressed(int index) {
    setState(() {
      _isDrawerOpen = !_isDrawerOpen;
      selectedButton = index; // Устанавливаем выбранную кнопку
    });
  }

  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.removeObserver(this);
    _controller = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    )..repeat(reverse: true); // Повторяем анимацию

    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _toggleMap() {
    setState(() {
      _isMapVisible = !_isMapVisible;
      if (_isMapVisible) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    });
  }

  bool _isMapVisible = false;

  final List<String> distances = SecondMenuRepository.distances;
  final List<String> images = SecondMenuRepository.images;
  final List<String> names = SecondMenuRepository.names;
  final List<String> descriptions = SecondMenuRepository.descriptions;
  final List<Map<String, String>> items = SecondMenuRepository.items;

  int? selectedOption = 0; // Хранит индекс выбранной кнопки

  void onOptionPressed(int index) {
    setState(() {
      selectedOption = index; // Устанавливаем выбранную кнопку
    });
  }

  final List<String> messages = [];
  final TextEditingController _textEditingControllercontroller =
      TextEditingController();

  void _sendMessage() {
    if (_textEditingControllercontroller.text.isNotEmpty) {
      setState(() {
        messages.add(_textEditingControllercontroller.text);
        _textEditingControllercontroller.clear();
      });
    }
  }

  bool _isDrawerOpen = false;

  void _toggleDrawer() {
    setState(() {
      _isDrawerOpen = !_isDrawerOpen;
    });
  }

  bool isKeyboardVisible2 = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                AnimatedBuilder(
                  animation: _animation,
                  builder: (context, child) {
                    return Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.lightBlue.withOpacity(_animation.value),
                            Colors.blue.withOpacity(1 - _animation.value),
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MenuButtonWidget(
                              index: 0,
                              isSelected: selectedButton == 0,
                              onPressed: onButtonPressed,
                              text: 'WHAT',
                              assetName:
                                  'assets/images_of_market/component1.svg'),
                          MenuButtonWidget(
                              index: 1,
                              isSelected: selectedButton == 1,
                              onPressed: onButtonPressed,
                              text: 'PRICE',
                              assetName:
                                  'assets/images_of_market/wavy_check.svg'),
                          MenuButtonWidget(
                              index: 2,
                              isSelected: selectedButton == 2,
                              onPressed: onButtonPressed,
                              text: 'LOCATION',
                              assetName:
                                  'assets/images_of_market/location_icon.svg'),
                          Container(
                            width: 180,
                            height: 1,
                            decoration:
                                const BoxDecoration(color: Colors.white),
                          ),
                          MenuButtonWidget(
                              index: 3,
                              isSelected: selectedButton == 3,
                              onPressed: onButtonPressed,
                              text: 'INFORMATION',
                              assetName: 'assets/images_of_market/planet.svg'),
                          MenuButtonWidget(
                              index: 4,
                              isSelected: selectedButton == 4,
                              onPressed: onButtonPressed,
                              text: 'HOW MANY',
                              assetName: 'assets/images_of_market/bag-03.svg'),
                          MenuButtonWidget(
                              index: 5,
                              isSelected: selectedButton == 5,
                              onPressed: onButtonPressed,
                              text: 'CONNECT',
                              assetName:
                                  'assets/images_of_market/new_message_icon.svg'),
                          Container(
                            width: 180,
                            height: 1,
                            decoration:
                                const BoxDecoration(color: Colors.white),
                          ),
                          MenuButtonWidget(
                              index: 6,
                              isSelected: selectedButton == 6,
                              onPressed: onButtonPressed,
                              text: 'PHOTO',
                              assetName:
                                  'assets/images_of_market/image-no-borders.svg'),
                          MenuButtonWidget(
                              index: 7,
                              isSelected: selectedButton == 7,
                              onPressed: onButtonPressed,
                              text: 'CONDITION',
                              assetName: 'assets/images_of_market/leaves.svg'),
                          MenuButtonWidget(
                              index: 8,
                              isSelected: selectedButton == 8,
                              onPressed: onButtonPressed,
                              text: 'DELIVERY',
                              assetName: 'assets/images_of_market/globe.svg'),
                          SvgPicture.asset(
                              'assets/images_of_market/new_plus_icon.svg'),
                        ],
                      ),
                    );
                  },
                ),
                AnimatedScale(
                  alignment: Alignment.centerRight,
                  scale: _isDrawerOpen ? 0.5 : 1.0,
                  duration: const Duration(milliseconds: 300),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(250, 250, 250, 1),
                      borderRadius:
                          _isDrawerOpen ? BorderRadius.circular(20) : null,
                    ),
                    child: Stack(
                      children: [
                        ListView(
                          children: [
                            // SizedBox(height:MediaQuery.paddingOf(context).top),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 10,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Jakarta',
                                    style: Style.AppBarTxtStyle,
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: SvgPicture.asset(
                                        'assets/images_of_market/notification_icon.svg'),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 30,
                              child: ListView(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                scrollDirection: Axis.horizontal,
                                children: [
                                  SelectOptionItem(
                                    selectOptionText: 'House',
                                    index: 0,
                                    isSelected: selectedOption == 0,
                                    onPressed: onOptionPressed,
                                  ),
                                  const SizedBox(width: 10),
                                  SelectOptionItem(
                                    selectOptionText: 'Apartment',
                                    index: 1,
                                    isSelected: selectedOption == 1,
                                    onPressed: onOptionPressed,
                                  ),
                                  const SizedBox(width: 10),
                                  SelectOptionItem(
                                    selectOptionText: 'Hotel',
                                    index: 2,
                                    isSelected: selectedOption == 2,
                                    onPressed: onOptionPressed,
                                  ),
                                  const SizedBox(width: 10),
                                  SelectOptionItem(
                                    selectOptionText: 'Villa',
                                    index: 3,
                                    isSelected: selectedOption == 3,
                                    onPressed: onOptionPressed,
                                  ),
                                  const SizedBox(width: 10),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '@goioga',
                                    style: Style.AppBarTxtStyle.copyWith(
                                        fontSize: 16),
                                  ),
                                  Text(
                                    'See more',
                                    style: Style.AppBarTxtStyle.copyWith(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 272,
                              child: ListView.separated(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                scrollDirection: Axis.horizontal,
                                itemCount: names.length,
                                itemBuilder: (context, index) {
                                  return GestureDetector(
                                    onTap: _toggleMap,
                                    child: HouseCard(
                                      pathToImage: images[0],
                                      name: names[0],
                                      address: descriptions[0],
                                    ),
                                  );
                                },
                                separatorBuilder: (context, index) {
                                  return const SizedBox(width: 10);
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(9),
                                    child: SizedBox(
                                      height: 100,
                                      width: 100,
                                      child: Image.asset(
                                        'assets/images_of_market/txtfield1.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(9),
                                    child: SizedBox(
                                      height: 100,
                                      width: 100,
                                      child: Image.asset(
                                        'assets/images_of_market/txtfield1.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 8,
                            ),
                            child: Column(
                              children: [
                                BlocProvider<AuthCubit>(
                                  create: (context) => AuthCubit(),
                                  child: BlocBuilder<AuthCubit, AuthhState>(
                                    builder: (context, state) {
                                      return Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Expanded(
                                            child: Container(
                                              height: 48,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: Colors.white,
                                              ),
                                              child: Row(
                                                children: [
                                                  InkWell(
                                                    onTap: () {
                                                      imagePicker.pickImage(
                                                          source: ImageSource
                                                              .gallery);
                                                    },
                                                    child: SvgPicture.asset(
                                                      'assets/images_of_market/clip_icon.svg',
                                                      height: 40.0,
                                                      width: 48.0,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                  // const SizedBox(width: 10),
                                                  Expanded(
                                                    child: TextField(
                                                      controller:
                                                          _textEditingControllercontroller,
                                                      decoration:
                                                          const InputDecoration(
                                                        border:
                                                            InputBorder.none,
                                                        contentPadding:
                                                            EdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        10),
                                                        hintText:
                                                            'WHAT’S YOU SELL?',
                                                        hintStyle: TextStyle(
                                                          fontSize: 12,
                                                          fontFamily: 'Raleway',
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color: Colors.grey,
                                                        ),
                                                      ),
                                                      onChanged: (value) {
                                                        context
                                                            .read<AuthCubit>()
                                                            .definitionColorsGradientIconButton(
                                                                value);
                                                      },
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          const SizedBox(width: 20),
                                          GradientIconButton(
                                            onTap: () {},
                                            firstGradientColor: context
                                                .read<AuthCubit>()
                                                .firstGradientColorForGradientIconButton,
                                            secondGradientColor: context
                                                .read<AuthCubit>()
                                                .secondGradientColorForGradientIconButton,
                                            icon: Assets.icons.upArrow,
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          BlocBuilder<KeyboardCubit, KeyboardState>(
            builder: (context, state) {
              if (state is KeyboardInitial) {
                isKeyboardVisible2 = false;
              } else {
                isKeyboardVisible2 = true;
              }
              return Visibility(
                visible: !isKeyboardVisible2,
                child: SizedBox(height: 60.h),
              );
            },
          ),
        ],
      ),
    );
  }
}
