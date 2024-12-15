// import 'package:flutter/material.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
// import 'package:social_network/data.dart';
//
// class CustomFilterWidget extends StatefulWidget {
//   // final List<BlurButton> categoriesBlurButtonList;
//   User user;
//
//   CustomFilterWidget({
//     super.key,
//     required this.user,
//   });
//
//   @override
//   State<CustomFilterWidget> createState() => _CustomFilterWidgetState();
// }
//
// class _CustomFilterWidgetState extends State<CustomFilterWidget>
//     with TickerProviderStateMixin {
//   List _itemKeys = [];
//   final ScrollController _scrollController = ScrollController();
//   final Duration _animationDuration = const Duration(milliseconds: 500);
//   late List<AnimationController> _subcategoriesAnimationControllerList;
//   late List<Animation<double>> _subcategoriesAnimationList;
//   /*final List<GlobalKey> _categoriesKeys = List.generate(
//       Categories.getData.length, (int index) => GlobalKey());*/
//
//   @override
//   void initState() {
//     super.initState();
//     // _itemKeys = List.generate(10, (int index) => GlobalKey());
//     _subcategoriesAnimationControllerList = List.generate(
//         widget.user.filters.getData.length,
//         (int index) =>
//             AnimationController(duration: _animationDuration, vsync: this));
//     _subcategoriesAnimationList = List.generate(
//         widget.user.filters.getData.length,
//         (int index) => CurvedAnimation(
//             parent: _subcategoriesAnimationControllerList[index],
//             curve: Curves.easeInOut,
//             reverseCurve: Curves.easeInOut));
//   }
//
//   @override
//   void dispose() {
//     for (var elem in _subcategoriesAnimationControllerList) {
//       elem.dispose();
//     }
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<ProfileCubit, ProfileState>(
//       builder: (context, state) {
//         // CustomFilterElements.printData();
//         return SizedBox(
//           height: 40.h,
//           child: Row(
//             children: [
//               SizedBox(
//                 width: MediaQuery.of(context).size.width,
//                 child: ListView.builder(
//                     scrollDirection: Axis.horizontal,
//                     controller: _scrollController,
//                     itemCount: widget.user.filters.getData.length,
//                     itemBuilder: (BuildContext context, int index) {
//                       return Row(
//                         children: [
//                           Padding(
//                             padding: EdgeInsets.only(left: 8.w),
//                             child: BlurButton(
//                               // key: _categoriesKeys[index],
//                               text: widget.user.filters.getData[index].name,
//                               onTap: () {
//                                 context
//                                     .read<ProfileCubit>()
//                                     .setChosenStatesToFilterElement(index);
//                                 setState(() {
//                                   if (widget
//                                       .user.filters.getData[index].isChosen) {
//                                     _subcategoriesAnimationControllerList[index]
//                                         .forward();
//                                   } else {
//                                     _subcategoriesAnimationControllerList[index]
//                                         .reverse();
//                                   }
//                                 });
//                                 _scrollController.position;
//                                 /*Scrollable.ensureVisible(
//                                   context,
//                               duration: _animationDuration);*/
//                               },
//                               isChosen:
//                                   widget.user.filters.getData[index].isChosen,
//                             ),
//                           ),
//                           widget.user.filters.getData[index].subcategories !=
//                                   null
//                               ? SizeTransition(
//                                   sizeFactor:
//                                       _subcategoriesAnimationList[index],
//                                   axis: Axis.horizontal,
//                                   axisAlignment: -1.0,
//                                   child: ListView.builder(
//                                       shrinkWrap: true,
//                                       physics:
//                                           const NeverScrollableScrollPhysics(),
//                                       scrollDirection: Axis.horizontal,
//                                       itemCount: widget.user.filters
//                                           .getData[index].subcategories!.length,
//                                       itemBuilder:
//                                           (BuildContext context, int subIndex) {
//                                         return Padding(
//                                           padding: EdgeInsets.symmetric(
//                                               horizontal: 4.w),
//                                           child: BlurButton(
//                                             text: widget
//                                                 .user
//                                                 .filters
//                                                 .getData[index]
//                                                 .subcategories![subIndex]
//                                                 .name,
//                                             onTap: () {
//                                               context
//                                                   .read<ProfileCubit>()
//                                                   .setChosenStatesToSubcategory(
//                                                       index, subIndex);
//                                             },
//                                             isChosen: widget
//                                                 .user
//                                                 .filters
//                                                 .getData[index]
//                                                 .subcategories![subIndex]
//                                                 .isChosen,
//                                           ),
//                                         );
//                                       }),
//                                 )
//                               : const SizedBox.shrink(),
//                         ],
//                       );
//                     }),
//               ),
//               /*SizedBox(
//             height: 40.h,
//             child: ListView.builder(
//                 itemCount: 5,
//                 scrollDirection: Axis.horizontal,
//                 itemBuilder: (BuildContext context, int index) {
//                   return Container(
//                     width: 50,
//                     height: 50,
//                     color: Colors.green,
//                   );
//                 }),
//           )*/
//             ],
//           ),
//         );
//       },
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:social_network/data.dart';
//
// class CustomFilterWidget extends StatefulWidget {
//   final User user;
//
//   CustomFilterWidget({
//     Key? key,
//     required this.user,
//   }) : super(key: key);
//
//   @override
//   State<CustomFilterWidget> createState() => _CustomFilterWidgetState();
// }
//
// class _CustomFilterWidgetState extends State<CustomFilterWidget>
//     with TickerProviderStateMixin {
//   final ScrollController _scrollController = ScrollController();
//   final Duration _animationDuration = const Duration(milliseconds: 500);
//   late List<AnimationController> _subcategoriesAnimationControllers;
//   late List<Animation<double>> _subcategoriesAnimations;
//
//   @override
//   void initState() {
//     super.initState();
//     _initAnimations();
//   }
//
//   void _initAnimations() {
//     _subcategoriesAnimationControllers = List.generate(
//       widget.user.filters.getData.length,
//       (int index) => AnimationController(
//         duration: _animationDuration,
//         vsync: this,
//       ),
//     );
//     _subcategoriesAnimations = _subcategoriesAnimationControllers
//         .map(
//           (controller) => CurvedAnimation(
//             parent: controller,
//             curve: Curves.easeInOut,
//             reverseCurve: Curves.easeInOut,
//           ),
//         )
//         .toList();
//   }
//
//   @override
//   void dispose() {
//     for (var controller in _subcategoriesAnimationControllers) {
//       controller.dispose();
//     }
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;
//
//     return BlocBuilder<ProfileCubit, ProfileState>(
//       builder: (context, state) {
//         return SizedBox(
//           height: 40.h,
//           child: Row(
//             children: [
//               SizedBox(
//                 width: screenWidth,
//                 child: ListView.builder(
//                   scrollDirection: Axis.horizontal,
//                   controller: _scrollController,
//                   itemCount: widget.user.filters.getData.length,
//                   itemBuilder: (BuildContext context, int index) {
//                     final filter = widget.user.filters.getData[index];
//                     final isChosen = filter.isChosen;
//
//                     return Row(
//                       children: [
//                         Padding(
//                           padding: EdgeInsets.only(left: 8.w),
//                           child: BlurButton(
//                             text: filter.name,
//                             onTap: () {
//                               _onCategoryTap(index);
//                             },
//                             isChosen: isChosen,
//                           ),
//                         ),
//                         if (filter.subcategories != null)
//                           SizeTransition(
//                             sizeFactor: _subcategoriesAnimations[index],
//                             axis: Axis.horizontal,
//                             child: Row(
//                               children:
//                                   filter.subcategories!.map((subcategory) {
//                                 return Padding(
//                                   padding:
//                                       EdgeInsets.symmetric(horizontal: 4.w),
//                                   child: BlurButton(
//                                     text: subcategory.name,
//                                     onTap: () {
//                                       context
//                                           .read<ProfileCubit>()
//                                           .setChosenStatesToSubcategory(
//                                               index,
//                                               filter.subcategories!
//                                                   .indexOf(subcategory));
//                                     },
//                                     isChosen: subcategory.isChosen,
//                                   ),
//                                 );
//                               }).toList(),
//                             ),
//                           ),
//                       ],
//                     );
//                   },
//                 ),
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }
//
//   void _onCategoryTap(int index) {
//     final filter = widget.user.filters.getData[index];
//     context.read<ProfileCubit>().setChosenStatesToFilterElement(index);
//
//     setState(() {
//       if (filter.isChosen) {
//         _subcategoriesAnimationControllers[index].forward();
//       } else {
//         _subcategoriesAnimationControllers[index].reverse();
//       }
//     });
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_network/data.dart';

class CustomFilterWidget extends StatefulWidget {
  final User user;

  CustomFilterWidget({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  State<CustomFilterWidget> createState() => _CustomFilterWidgetState();
}

class _CustomFilterWidgetState extends State<CustomFilterWidget>
    with TickerProviderStateMixin {
  final ScrollController _scrollController = ScrollController();
  final Duration _animationDuration = const Duration(milliseconds: 300);

  // Ленивая инициализация контроллеров и анимаций для подкатегорий
  final Map<int, AnimationController> _subcategoriesAnimationControllers = {};
  final Map<int, Animation<double>> _subcategoriesAnimations = {};

  @override
  void dispose() {
    for (var controller in _subcategoriesAnimationControllers.values) {
      controller.dispose();
    }
    super.dispose();
  }

  Animation<double> _getSubcategoryAnimation(int index) {
    if (!_subcategoriesAnimationControllers.containsKey(index)) {
      final controller = AnimationController(
        duration: _animationDuration,
        vsync: this,
      );
      _subcategoriesAnimationControllers[index] = controller;
      _subcategoriesAnimations[index] = CurvedAnimation(
        parent: controller,
        curve: Curves.easeInOut,
        reverseCurve: Curves.easeInOut,
      );
    }
    return _subcategoriesAnimations[index]!;
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return BlocBuilder<ProfileCubit, ProfileeState>(
      builder: (context, state) {
        return SizedBox(
          height: 40.h,
          child: RepaintBoundary(
            // Оборачиваем в RepaintBoundary для уменьшения перерисовок
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              controller: _scrollController,
              itemCount: widget.user.filters.getData.length,
              itemBuilder: (BuildContext context, int index) {
                final filter = widget.user.filters.getData[index];
                final isChosen = filter.isChosen;

                return Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 8.w),
                      child: BlurButton(
                        text: filter.name,
                        onTap: () {
                          _onCategoryTap(index);
                        },
                        isChosen: isChosen,
                      ),
                    ),
                    if (filter.subcategories != null)
                      SizeTransition(
                        sizeFactor: _getSubcategoryAnimation(index),
                        axis: Axis.horizontal,
                        child: Wrap(
                          spacing: 4.w,
                          children: filter.subcategories!.map((subcategory) {
                            final subIndex =
                                filter.subcategories!.indexOf(subcategory);
                            return BlurButton(
                              text: subcategory.name,
                              onTap: () {
                                context
                                    .read<ProfileCubit>()
                                    .setChosenStatesToSubcategory(
                                        index, subIndex);
                              },
                              isChosen: subcategory.isChosen,
                            );
                          }).toList(),
                        ),
                      ),
                  ],
                );
              },
            ),
          ),
        );
      },
    );
  }

  void _onCategoryTap(int index) {
    final filter = widget.user.filters.getData[index];
    context.read<ProfileCubit>().setChosenStatesToFilterElement(index);

    final controller = _subcategoriesAnimationControllers[index];
    if (controller != null) {
      filter.isChosen ? controller.forward() : controller.reverse();
    }
  }
}
