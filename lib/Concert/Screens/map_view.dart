

import '../../core/router/app_router.dart';
import '../Components/list_widget.dart';
import '../Components/lower_widget.dart';
import '../Components/map.dart';
import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

import 'buy_tickets.dart';

class MapView extends StatefulWidget {
  const MapView({super.key});

  @override
  State<MapView> createState() => _MapViewState();
}

class _MapViewState extends State<MapView> {
  SfRangeValues _values = SfRangeValues(40.0, 80.0);
  final TextEditingController _addressController = TextEditingController();
  final MapController mapController = MapController.withUserPosition(
    trackUserLocation: UserTrackingOption(
      enableTracking: true,
      unFollowUser: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          MapScreen(),
          Positioned(
            top: 60,
            right: 0,
            left: 0,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 51,
                          width: double.infinity,
                          child: TextField(
                            controller: _addressController,
                            decoration: InputDecoration(
                              hintText: 'Find for food or restaurant...',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                borderSide: BorderSide.none,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                borderSide:
                                    BorderSide
                                        .none, // Бесцветная рамка (когда поле активно)
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                borderSide:
                                    BorderSide
                                        .none, // Бесцветная рамка (когда поле в фокусе)
                              ),
                              filled: true,
                              // Заливка фона
                              fillColor: Colors.white,
                              // Цвет фона
                              prefixIcon: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => BuyTickets()));
                                },
                                child: Icon(
                                  Icons.arrow_back_ios_new,
                                ),
                              ), // Иконка слева
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      GestureDetector(
                        onTap: () => openFullScreenModal(context),
                        child: Container(
                          width: 51,
                          height: 51,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: SvgPicture.asset('assets/Group 18497.svg'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ListWidget(path: 'assets/sport_map.svg', name: 'Sports'),
                      ListWidget(path: 'assets/music_map.svg', name: 'Music'),
                      ListWidget(path: 'assets/food_map.svg', name: 'Food'),
                      ListWidget(path: 'assets/art_map.svg', name: 'Art'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 30,
            right: 20,
            left: 20,
            child: Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [LowerWidget(), LowerWidget(), LowerWidget()],
                ),
              ),
            ),
          ),
          Positioned(
            right: 20,
            bottom: 180,
            child: GestureDetector(
              onTap: () {
                _openBottomSheet(context);
              },
              child: Container(
                width: 51,
                height: 51,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.white,
                ),
                child: Center(child: SvgPicture.asset('assets/but.svg')),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _selectButton(int index) {
    setState(() {
      _buttons[index]['isSelected'] = !_buttons[index]['isSelected'];
    });
  }

  final List<Map<String, dynamic>> _buttons = [
    {'icon': 'assets/sport_fil.svg', 'label': 'Sports', 'isSelected': false},
    {'icon': 'assets/music_fil.svg', 'label': 'Music', 'isSelected': true},
    {'icon': 'assets/art_fil.svg', 'label': 'Art', 'isSelected': true},
    {'icon': 'assets/food_fil.svg', 'label': 'Food', 'isSelected': false},
    {'icon': 'assets/food_fil.svg', 'label': 'Food', 'isSelected': false},
  ];

  void _openBottomSheet(BuildContext context) {
    int value = 1;
    showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: Colors.white,
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (BuildContext context, setState) {
            return Container(
              height: MediaQuery.of(context).size.height * 0.75,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Filter',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 25,
                        color: Colors.black,
                      ),
                    ),
                    Container(
                      height: 120,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        // Горизонтальная прокрутка
                        itemCount: _buttons.length,
                        itemBuilder: (context, index) {
                          final button = _buttons[index];
                          return Container(
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      _selectButton(index); // Выделение кнопки
                                    },
                                    child: Container(
                                      width: 64,
                                      height: 64,
                                      decoration: BoxDecoration(
                                        color:
                                            button['isSelected']
                                                ? Color.fromRGBO(
                                                  86,
                                                  105,
                                                  255,
                                                  1,
                                                )
                                                : Colors.white,
                                        shape: BoxShape.circle, // Круглая форма
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: SvgPicture.asset(
                                          button['icon'], // Путь к SVG-файлу
                                          width: 25,
                                          height: 25,
                                          color:
                                              button['isSelected']
                                                  ? Colors.white
                                                  : Colors.grey[400],
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  // Отступ между кнопкой и текстом
                                  // Название кнопки
                                  Text(
                                    button['label'],
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Time & Date',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 20),
                    CustomSlidingSegmentedControl<int>(
                      isStretch: true,
                      initialValue: 1,
                      children: {
                        1: Text(
                          'Today',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: value == 1 ? Colors.white : Colors.black,
                          ),
                        ),
                        2: Text(
                          'Tomorrow',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: value == 2 ? Colors.white : Colors.black,
                          ),
                        ),
                        3: Text(
                          'This week',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: value == 3 ? Colors.white : Colors.black,
                          ),
                        ),
                      },
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          width: 0.5,
                          color: Colors.grey.withOpacity(0.5),
                        ),
                      ),
                      thumbDecoration: BoxDecoration(
                        color: Color.fromRGBO(86, 105, 255, 1),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      padding: 8,
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeInToLinear,
                      onValueChanged: (value) {
                        print(value);
                      },
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: 242,
                      height: 42,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 0.5,
                          color: Colors.grey.withOpacity(0.2),
                        ),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset('assets/cal_fil.svg'),
                          Text('   Choose from calender  '),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                            color: Color.fromRGBO(86, 105, 255, 1),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Location',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: double.infinity,
                      height: 60,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 0.5,
                          color: Colors.grey.withOpacity(0.2),
                        ),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 45,
                                  height: 45,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    color: Color.fromRGBO(86, 105, 255, 0.1),
                                  ),
                                  child: Center(
                                    child: Container(
                                      width: 30,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                        color: Colors.white,
                                      ),
                                      child: Center(
                                        child: SvgPicture.asset(
                                          'assets/loc_fil.svg',
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Text('  New Yourk, USA'),
                              ],
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 15,
                              color: Color.fromRGBO(86, 105, 255, 1),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Location',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          '\$20-\$120',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: Color.fromRGBO(63, 56, 221, 1),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 40),
                    SfRangeSlider(
                      min: 0.0,
                      max: 100.0,
                      values: _values,
                      interval: 20,
                      showTicks: true,
                      showLabels: true,
                      enableTooltip: true,
                      minorTicksPerInterval: 1,
                      onChanged: (SfRangeValues values) {
                        setState(() {
                          _values = values;
                        });
                      },
                    ),
                    SizedBox(height: 40),

                    Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Container(
                            width: double.infinity,
                            height: 58,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                              border: Border.all(
                                width: 0.5,
                                color: Colors.grey.withOpacity(0.5),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'Reset',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          flex: 3,
                          child: Container(
                            width: double.infinity,
                            height: 58,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Color.fromRGBO(86, 105, 255, 1),
                            ),
                            child: Center(
                              child: Text(
                                'Apply',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
