import 'package:flutter/material.dart';

import '../../New Wallet/Elements/contact_widget.dart';

class Contacts extends StatelessWidget {
  final int tab;

  const Contacts({super.key, required this.tab});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.arrow_back),
                Text(
                  'Contacts',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(8, 36, 49, 1),
                  ),
                ),
                SizedBox(width: 20),
              ],
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromRGBO(242, 242, 244, 1.0),
                  hintText: '  Search',
                  hintStyle: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(44,58, 75, 1),
                  ),
                  // Цвет подсказки
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide.none),
                  suffixIcon: Icon(
                    Icons.search_rounded,
                    color: Color.fromRGBO(44,58, 75, 1),
                  ),
                ),
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(44,58, 75, 1),
                ),
              ),
            ),

            ContactWidget(imgPath: 'assets/img1.png', name: 'Samantha', trc: 'djoaeifjodsicjvoiej3901fsedfs',),
            ContactWidget(imgPath: 'assets/img2.png', name: 'Rose Hope', trc: 'djoaeifjodsicjvoiej3901fsedfs',),
            ContactWidget(imgPath: 'assets/img3.png', name: 'Angela Smith', trc: 'djoaeifjodsicjvoiej3901fsedfs',),

            Padding(
              padding: const EdgeInsets.only(top: 20.0,bottom: 10),
              child: Row(
                children: [
                  Text('All Contacts',style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(8, 36, 49, 0.5),
                  ),),
                ],
              ),
            ),
            ContactWidget(imgPath: 'assets/img4.png', name: 'Andrea Summer', trc: 'djoaeifjodsicjvoiej3901fsedfs',),
            ContactWidget(imgPath: 'assets/img5.png', name: 'Karen William', trc: 'djoaeifjodsicjvoiej3901fsedfs',),
            ContactWidget(imgPath: 'assets/img6.png', name: 'Thomas Wise', trc: 'djoaeifjodsicjvoiej3901fsedfs',),


          ],
        ),
      ),
    );
  }
}

