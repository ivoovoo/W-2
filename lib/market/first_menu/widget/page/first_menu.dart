import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:social_network/core/core.dart';
import 'package:social_network/core/router/app_router.dart';
import 'package:social_network/core/router/app_router_names.dart';
import 'package:social_network/market/first_menu/data_provider/announcements_data_provider.dart';
import 'package:social_network/market/first_menu/logic/announcement_bloc.dart';
import 'package:social_network/market/first_menu/model/announcement_model.dart';
import 'package:social_network/market/first_menu/repository/announcement_repository.dart';
import 'package:social_network/market/first_menu/repository/first_menu_repository.dart';
import 'package:social_network/market/first_menu/widget/house_card.dart';
import 'package:social_network/market/theme/style.dart';
import '../widget.dart';

class FirstMenuScreen extends StatefulWidget {
  const FirstMenuScreen({super.key});

  @override
  State<FirstMenuScreen> createState() => _FirstMenuScreenState();
}

class _FirstMenuScreenState extends State<FirstMenuScreen>
    with SingleTickerProviderStateMixin {
  bool _isDrawerOpen = false;
  double screenWidth = 400;
  late AnnouncementBloc announcementBloc;

  void _toggleDrawer() {
    setState(() {
      _isDrawerOpen = !_isDrawerOpen;
    });
  }

  List<AnnouncementModel> announcements = [];

  final List<String> distances = FirstMenuRepository.distances;
  final List<String> images = FirstMenuRepository.images;
  final List<String> names = FirstMenuRepository.names;
  final List<String> descriptions = FirstMenuRepository.descriptions;
  final List<Map<String, String>> items = FirstMenuRepository.items;

  int? selectedOption = 0; // Хранит индекс выбранной кнопки

  void onOptionPressed(int index) {
    setState(() {
      selectedOption = index; // Устанавливаем выбранную кнопку
    });
  }

  int? selectedButton = 0; // Хранит индекс выбранной кнопки

  void onButtonPressed(int index) {
    _isDrawerOpen = false;
    setState(() {
      selectedButton = index; // Устанавливаем выбранную кнопку
    });
  }

  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    announcementBloc = AnnouncementBloc(
      AnnouncementRepository(
        localStorageDataProvider: context.read<ILocalStorageDataProvider>(),
        announcementDataProvider: AnnouncementDataProvider(),
      ),
    )..add(const AnnouncementEvent.init());
    _controller = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    )..repeat(reverse: true);

    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);
  }

  @override
  void dispose() {
    announcementBloc.close();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Column(
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
                                text: 'RENT',
                                assetName:
                                    'assets/images_of_market/building.svg'),
                            MenuButtonWidget(
                                index: 1,
                                isSelected: selectedButton == 1,
                                onPressed: onButtonPressed,
                                text: 'SERVICES',
                                assetName:
                                    'assets/images_of_market/profile_icon.svg'),
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
                                text: 'SALES',
                                assetName:
                                    'assets/images_of_market/sales_icon.svg'),
                            MenuButtonWidget(
                                index: 4,
                                isSelected: selectedButton == 4,
                                onPressed: onButtonPressed,
                                text: 'MARKETPLACE',
                                assetName:
                                    'assets/images_of_market/globe_icon.svg'),
                            MenuButtonWidget(
                                index: 5,
                                isSelected: selectedButton == 5,
                                onPressed: onButtonPressed,
                                text: 'CAR',
                                assetName:
                                    'assets/images_of_market/car_icon.svg'),
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
                                text: 'FASHION',
                                assetName:
                                    'assets/images_of_market/bag_icon1.svg'),
                            MenuButtonWidget(
                                index: 7,
                                isSelected: selectedButton == 7,
                                onPressed: onButtonPressed,
                                text: 'FOOD',
                                assetName:
                                    'assets/images_of_market/burger.svg'),
                            MenuButtonWidget(
                                index: 8,
                                isSelected: selectedButton == 8,
                                onPressed: onButtonPressed,
                                text: 'ELECTRONICS',
                                assetName:
                                    'assets/images_of_market/battery_icon.svg'),
                            InkWell(
                              child: SvgPicture.asset(
                                  'assets/images_of_market/new_plus_icon.svg'),
                              onTap: () {
                                authNotifier.switchingToSecondMenu();
                              },
                            ),
                          ],
                        ),
                      );
                    }),
                AnimatedScale(
                  alignment: Alignment.centerRight,
                  scale: _isDrawerOpen ? 0.5 : 1.0,
                  duration: const Duration(milliseconds: 300),
                  child: BlocBuilder<AnnouncementBloc, AnnouncementState>(
                    bloc: announcementBloc,
                    builder: (context, state) {
                      state.when(
                        initial: () {},
                        loadInProgress: () {},
                        loadSuccess: (announcementsResponse) {
                          announcements = announcementsResponse.myAnnouncements;
                        },
                        loadFailure: (error) {},
                      );
                      if (state is AnnouncementLoadInProgressState) {
                        return const Center(child: CircularProgressIndicator());
                      } else if (state is AnnouncementLoadFailureState) {
                        return Center(
                          child: Text(state.error),
                        );
                      }
                      return Container(
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(250, 250, 250, 1),
                          borderRadius:
                              _isDrawerOpen ? BorderRadius.circular(20) : null,
                        ),
                        child: ListView(
                          children: [
                            // SizedBox(height: MediaQuery.paddingOf(context).top),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 10,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      InkWell(
                                        onTap: _toggleDrawer,
                                        child: SvgPicture.asset(
                                          'assets/images_of_market/plus_icon.svg',
                                        ),
                                      ),
                                      const SizedBox(width: 30),
                                      Text(
                                        'Jakarta',
                                        style: Style.AppBarTxtStyle,
                                      ),
                                    ],
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: SvgPicture.asset(
                                        'assets/images_of_market/notification_icon.svg'),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20.0,
                                vertical: 10,
                              ),
                              child: Row(
                                children: [
                                  SvgPicture.asset(
                                      'assets/images_of_market/search_icon.svg'),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: Container(
                                      width: 289,
                                      height: 48,
                                      child: TextFormField(
                                        decoration: const InputDecoration(
                                            hintText:
                                                'Search address, or near you ',
                                            border: InputBorder.none),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  InkWell(
                                    child: Container(
                                      width: 48,
                                      height: 48,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        gradient: const LinearGradient(
                                          colors: [
                                            Colors.blue,
                                            Colors.lightBlueAccent
                                          ],
                                          begin: Alignment.bottomCenter,
                                          // Начало градиента снизу
                                          end: Alignment.topCenter,
                                        ),
                                      ),
                                      child: Center(
                                        child: SvgPicture.asset(
                                            'assets/images_of_market/filter_icon.svg'),
                                      ),
                                    ),
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
                                    'Near from you',
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
                                itemCount: announcements.length,
                                itemBuilder: (context, index) {
                                  return InkWell(
                                    onTap: () {
                                      context.pushNamed(
                                        AppRouterNames.modelOfHouse,
                                        extra: announcements[index],
                                      );
                                    },
                                    child: HouseCard(
                                      isNetworkImage: true,
                                      pathToImage:
                                          announcements[index].images[0].image,
                                      name: announcements[index].name,
                                      address: announcements[index].description,
                                    ),
                                    // child: SelectHouse(
                                    //   width: 226,
                                    //   imagePath: images[0],
                                    //   distanceText: distances[0],
                                    //   nameOfHouse: names[0],
                                    //   descriptionOfHouse: descriptions[0],
                                    // ),
                                  );
                                },
                                separatorBuilder: (context, index) {
                                  return const SizedBox(width: 20);
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Best for you',
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
                              height: 400,
                              child: ListView.builder(
                                dragStartBehavior: DragStartBehavior.start,
                                itemCount: items.length,
                                itemBuilder: (context, index) {
                                  final item = items[index];
                                  return InkWell(
                                    onTap: () {},
                                    child: RowOptionWidget(
                                      name: item['name']!,
                                      cost: item['cost']!,
                                      imgPath: item['imgPath']!,
                                      description1: item['description1']!,
                                      description2: item['description2']!,
                                      svgPath1: item['svgPath1']!,
                                      svgPath2: item['svgPath2']!,
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 60.h),
        ],
      ),
    );
  }
}
