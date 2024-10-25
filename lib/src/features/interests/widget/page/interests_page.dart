import 'package:flutter/material.dart';
import 'package:social_network/src/features/interests/repository/interests_repository.dart';
import 'package:social_network/src/features/interests/widget/age_slider.dart';
import 'package:social_network/src/features/interests/widget/interests_item.dart';

class InterestsPage extends StatefulWidget {
  const InterestsPage(
      {super.key, this.nameOfCity = 'Москва', this.title = 'Moskvin'});

  final String nameOfCity;
  final String title;

  @override
  State<InterestsPage> createState() => _InterestsPageState();
}

class _InterestsPageState extends State<InterestsPage> {
  late List<String> interestsItems;
  List<String> selectedInterests = [];
  late List<Widget> interestsWidgets;

  void _onInterestClicked(String interest, bool isSelected) {
    setState(() {
      if (isSelected) {
        selectedInterests.add(interest);
      } else {
        selectedInterests.remove(interest);
      }
    });
  }

  @override
  void initState() {
    interestsItems = InterestsRepository.interests;
    interestsWidgets = interestsItems
        .map(
          (element) => InterestsItem(
            text: element,
            isSelected: selectedInterests.contains(element),
            onClicked: (isSelected) {
              _onInterestClicked(element, isSelected);
            },
          ),
        )
        .toList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 22,
        ),
        child: Column(
          children: [
            const SizedBox(height: 44),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.arrow_back_ios,
                    size: 25,
                    color: Colors.black,
                  ),
                ),
                Text(
                  widget.title,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
                Container(
                  height: 34,
                  width: 100,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(27),
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xffff8bad),
                        Color(0xff7fbbfb),
                      ],
                    ),
                  ),
                  child: Text(
                    widget.nameOfCity,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Inter',
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Expanded(
              child: PageView.builder(
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  return ListView(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    children: [
                      Wrap(
                        spacing: 15,
                        runSpacing: 15,
                        alignment: WrapAlignment.start,
                        runAlignment: WrapAlignment.start,
                        crossAxisAlignment: WrapCrossAlignment.start,
                        children: interestsWidgets,
                      ),
                    ],
                  );
                },
              ),
            ),
            AgeSlider(),
            const SizedBox(height: 20),
            InkWell(
              onTap: () {},
              child: Container(
                alignment: Alignment.center,
                constraints: const BoxConstraints(
                  minWidth: double.infinity,
                  maxHeight: 54,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(34),
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xff7fbbfb),
                      Color(0xff9586fd),
                    ],
                  ),
                ),
                child: const Text(
                  'Применить',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
