import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class Terms extends StatelessWidget {
  const Terms({super.key});

  final String markDown = """IMPORTANT:

THESE TERMS AND CONDITIONS (“Conditions”) DEFINE THE BASIS UPON WHICH GETT WILL PROVIDE YOU WITH ACCESS TO THE GETT MOBILE APPLICATION PLATFORM, PURSUANT TO WHICH YOU WILL BE ABLE TO REQUEST CERTAIN TRANSPORTATION SERVICES FROM THIRD PARTY DRIVERS BY PLACING ORDERS THROUGH GETT’S MOBILE APPLICATION PLATFORM. THESE CONDITIONS (TOGETHER WITH THE DOCUMENTS REFERRED TO HEREIN) SET OUT THE TERMS OF USE ON WHICH YOU MAY, AS A CUSTOMER, USE THE APP AND REQUEST TRANSPORTATION SERVICES. BY USING THE APP AND TICKING THE ACCEPTANCE BOX, YOU INDICATE THAT YOU ACCEPT THESE TERMS OF USE WHICH APPLY, AMONG OTHER THINGS, TO ALL SERVICES HEREINUNDER TO BE RENDERED TO OR BY YOU VIA THE APP WITHIN THE UK AND THAT YOU AGREE TO ABIDE BY THEM. USE THE APP AND REQUEST TRANSPORTATION SERVICES. BY USING THE APP AND TICKING THE ACCEPTANCE BOX, YOU INDICATE THAT YOU ACCEPT THESE TERMS OF USE WHICH APPLY, AMONG OTHER THINGS, TO ALL SERVICES HEREINUNDER TO BE RENDERED TO OR BY YOU VIA THE APP WITHIN THE UK AND THAT YOU AGREE TO ABIDE BY THEM. """;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back_ios_new),
      ),
      body: Column(
        children: [
          Text(
            'Terms & Conditions',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'TAXI CUSTOMER TERMS &\nCONDITIONS',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 13,
            ),
            textAlign: TextAlign.center,
          ),
          Expanded(
            child: Markdown(
              data: markDown,
            ),
          ),
        ],
      ),
    );
  }
}
