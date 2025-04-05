import 'package:flutter/material.dart';

class ProcentWidget extends StatelessWidget {
  const ProcentWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 16,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Colors.white.withOpacity(0.5),
      ),
      child: const Row(
        children: [
          Text('2,35%',style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 12,
            color: Color.fromRGBO(71, 102, 249, 1),
          ),),
          // Icon(Icons.arrow_drop_up),
        ],
      ),
    );
  }
}
