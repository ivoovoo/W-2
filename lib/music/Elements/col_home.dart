import 'package:flutter/material.dart';
import 'package:social_network/music/Elements/row_column.dart';

class ColumElement extends StatelessWidget {
  const ColumElement({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          RowElement(
            name: 'Redbone',
            svgPath: 'assets/m1.png',
            time: '6:19',
            number: '1',
          ),
          RowElement(
            name: '3005',
            svgPath: 'assets/m2.png',
            time: '3:54',
            number: '2',
          ),
          RowElement(
            name: 'Les',
            svgPath: 'assets/m3.png',
            time: '5:17',
            number: '3',
          ),
        ],
      ),
    );
  }
}
