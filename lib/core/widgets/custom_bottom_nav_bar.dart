import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:social_network/data.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({
    super.key,
    required this.navigationShell,
    required this.child,
  });

  final StatefulNavigationShell navigationShell;
  final Widget child;

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int _currentPage = 0;

  // @override
  // void didChangeDependencies() {
  //   super.didChangeDependencies();
  //   // Получаем текущую ветку навигации и обновляем _currentPage
  //   final currentBranchIndex = widget.navigationShell.currentIndex;
  //   if (currentBranchIndex != _currentPage) {
  //     _updatePage(currentBranchIndex);
  //   }
  // }

  void _updatePage(int page) {
    setState(() {
      _currentPage = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge,
        overlays: [SystemUiOverlay.top]);
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarIconBrightness: Brightness.light));
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          widget.child,
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 60.h,
              decoration: BoxDecoration(
                color: _currentPage == 3 || _currentPage == 4
                    ? Colors.white
                    : _currentPage != 2
                        ? Colors.grey.withOpacity(
                            0.15,
                          )
                        : Colors.white.withOpacity(0.15),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.r),
                  topRight: Radius.circular(30.r),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05), // цвет тени
                    spreadRadius: 0,
                    blurRadius: 15,
                    offset: Offset(0, 0), // смещение тени
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _CustomButtonNavBar(
                      function: () {
                        // SystemChrome.setSystemUIOverlayStyle(
                        //     const SystemUiOverlayStyle(
                        //         statusBarIconBrightness: Brightness.light));
                        widget.navigationShell.goBranch(0);
                        _updatePage(0);
                      },
                      svgPath: _firstIconDefinition(_currentPage)),
                  _CustomButtonNavBar(
                      function: () {
                        SystemChrome.setSystemUIOverlayStyle(
                            const SystemUiOverlayStyle(
                                statusBarIconBrightness: Brightness.dark));
                        widget.navigationShell.goBranch(1);
                        _updatePage(1);
                        // _pageController.jumpToPage(1);
                        // BlocProvider.of<HomeScreenAndProfileScreenCubit>(
                        //         context)
                        //     .itsMyProfile();
                        // BlocProvider.of<HomeScreenAndProfileScreenCubit>(
                        //         context)
                        //     .notMyContent();
                      },
                      svgPath: _secondIconDefinition(_currentPage)),
                  GradientIconButton(
                    onTap: () {
                      widget.navigationShell.goBranch(2);
                      _updatePage(2);
                      // _pageController.jumpToPage(2);
                      // BlocProvider.of<HomeScreenAndProfileScreenCubit>(
                      //         context)
                      //     .itsMyProfile();
                      // BlocProvider.of<HomeScreenAndProfileScreenCubit>(
                      //         context)
                      //     .notMyContent();
                    },
                    firstGradientColor: AppColors.kBlueColor1,
                    secondGradientColor: AppColors.kGreenColor1,
                    icon: Assets.icons.upArrow,
                  ),
                  _CustomButtonNavBar(
                      function: () {
                        widget.navigationShell.goBranch(3);
                        _updatePage(3);
                        // _pageController.jumpToPage(3);
                        // BlocProvider.of<HomeScreenAndProfileScreenCubit>(
                        //         context)
                        //     .notMyContent();
                        // BlocProvider.of<HomeScreenAndProfileScreenCubit>(
                        //         context)
                        //     .itsMyProfile();
                      },
                      svgPath: _fourthIconDefinition(_currentPage)),
                  _CustomButtonNavBar(
                    function: () {
                      widget.navigationShell.goBranch(4);
                      _updatePage(4);
                      // _pageController.jumpToPage(4);
                    },
                    svgPath: _fifthIconDefinition(_currentPage),
                    color: _fifthIconColorDefinition(_currentPage),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  String _firstIconDefinition(int currentPage) {
    String icon = Assets.icons.activeHome;

    switch (currentPage) {
      case 0:
        return icon = Assets.icons.activeHome;
      case 1:
      case 2:
        return icon = Assets.icons.inactiveHome;
      case 3:
      case 4:
        return icon = Assets.icons.inactiveHome2;
    }

    return icon;
  }

  String _secondIconDefinition(int currentPage) {
    String icon = Assets.icons.inactiveSearch;

    switch (currentPage) {
      case 0:
        return icon = Assets.icons.inactiveSearch;
      case 1:
        return icon = Assets.icons.activeSearch;
      case 2:
        return icon = Assets.icons.inactiveSearch;
      case 3:
      case 4:
        return icon = Assets.icons.inactiveSearch2;
    }

    return icon;
  }

  String _fourthIconDefinition(int currentPage) {
    String icon = Assets.icons.inactiveMessage;

    switch (currentPage) {
      case 0:
      case 1:
      case 2:
        return icon = Assets.icons.inactiveMessage;
      case 3:
        return icon = Assets.icons.activeMessage;
      case 4:
        return icon = Assets.icons.inactiveMessage2;
    }

    return icon;
  }

  String _fifthIconDefinition(int currentPage) {
    String icon = Assets.icons.inactiveProfile;

    switch (currentPage) {
      case 0:
      case 1:
      case 2:
        return icon = Assets.icons.inactiveProfile;
      case 3:
        return icon = Assets.icons.inactiveProfile;
      case 4:
        return icon = Assets.icons.activeProfile;
    }
    return icon;
  }

  Color _fifthIconColorDefinition(int currentPage) {
    Color iconColor = Colors.white;

    switch (currentPage) {
      case 0:
      case 1:
      case 2:
        return iconColor = Colors.white;
      case 3:
        return iconColor = Colors.grey[400]!;
      case 4:
        return iconColor = Colors.black;
    }

    return iconColor;
  }
}

class _CustomButtonNavBar extends StatelessWidget {
  void Function() function;
  String svgPath;
  Color? color;

  _CustomButtonNavBar({
    required this.function,
    required this.svgPath,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: function,
        borderRadius: BorderRadius.circular(16.r),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
          child: SvgPicture.asset(svgPath,
              colorFilter: color != null
                  ? ColorFilter.mode(color!, BlendMode.modulate)
                  : null),
        ),
      ),
    );
  }
}
