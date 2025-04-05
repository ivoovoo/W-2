import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:pdf/pdf.dart';
import 'package:printing/printing.dart';
import '../Style/style.dart';
class BoardingPass extends StatefulWidget {
  const BoardingPass({super.key});

  @override
  State<BoardingPass> createState() => _BoardingPassState();
}

class _BoardingPassState extends State<BoardingPass>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Color?> _colorAnimation1;
  late Animation<Color?> _colorAnimation2;
  Future<void> _createPdf() async {
    final pdf = pw.Document();

    pdf.addPage(
      pw.Page(
        build: (pw.Context context) {
          return pw.Center(
            child: pw.Text('Hello, this is a PDF document!'),
          );
        },
      ),
    );

    await Printing.layoutPdf(
      onLayout: (PdfPageFormat format) async => pdf.save(),
    );
  }



  @override
  void initState() {
    super.initState();

    // Инициализация AnimationController
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 5),
    )..repeat(reverse: true); // Бесконечная анимация

    // Создание анимации для первого цвета
    _colorAnimation1 = ColorTween(
      begin: Color.fromRGBO(163, 191, 243, 1),
      end: Color.fromRGBO(252, 252, 254, 1),
    ).animate(_controller);

    // Создание анимации для второго цвета
    _colorAnimation2 = ColorTween(
      begin: Color.fromRGBO(252, 252, 254, 1),
      end: Color.fromRGBO(163, 191, 243, 1),
    ).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose(); // Освобождение ресурсов
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return Container(
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [_colorAnimation1.value!, _colorAnimation2.value!],
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 50),
                  Stack(
                    children: [
                      Positioned(
                        top: 15,
                        right: 0,
                        left: 0,
                        child: Image.asset('assets/Rectangle 292.png'),
                      ),
                      Container(
                        width: double.infinity,
                        height: 750,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage('assets/Base.png'),fit: BoxFit.cover)
                        ),
                        child:
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 56.0,vertical: 30),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Column(
                                        children: [
                                          Image.asset('assets/image 13.png'),
                                          Text('Air Canada',style: Style().prompt_style.copyWith(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 11,
                                          ),),
                                        ],
                                      ),
                                      Text('December 16h, 2022',style: Style().prompt_style.copyWith(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 13,
                                      ),),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 30,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        Text('07h05',style: Style().prompt_style.copyWith(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 15,
                                        ),),
                                        Text('YUL',style: Style().prompt_style.copyWith(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 13,
                                          color: Colors.black.withOpacity(0.6),
                                        ),),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        SvgPicture.asset('assets/fly.svg'),
                                        Text('13h00',style: Style().prompt_style.copyWith(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 13,
                                          color: Colors.black.withOpacity(0.6),
                                        ),),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text('20h05',style: Style().prompt_style.copyWith(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 15,
                                        ),),
                                        Text('NRT',style: Style().prompt_style.copyWith(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 13,
                                          color: Colors.black.withOpacity(0.6),
                                        ),),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(height: 25,),
                                Container(
                                  width: double.infinity,
                                  height: 0.5,
                                  color: Colors.black.withOpacity(0.3),
                                ),
                                SizedBox(height: 15,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        Text('Economy',style: Style().prompt_style.copyWith(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 13,
                                          color: Colors.black.withOpacity(0.6),
                                        ),),
                                        Text('Class',style: Style().prompt_style.copyWith(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 11,
                                        ),),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text('8',style: Style().prompt_style.copyWith(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 13,
                                          color: Colors.black.withOpacity(0.6),
                                        ),),
                                        Text('Gate',style: Style().prompt_style.copyWith(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 11,
                                        ),),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text('3',style: Style().prompt_style.copyWith(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 13,
                                          color: Colors.black.withOpacity(0.6),
                                        ),),
                                        Text('Terminal',style: Style().prompt_style.copyWith(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 11,
                                        ),),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text('AC006',style: Style().prompt_style.copyWith(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 13,
                                          color: Colors.black.withOpacity(0.6),
                                        ),),
                                        Text('Flight',style: Style().prompt_style.copyWith(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 11,
                                        ),),
                                      ],
                                    ),

                                  ],
                                ),
                                SizedBox(height: 15,),
                                Container(
                                  width: double.infinity,
                                  height: 0.5,
                                  color: Colors.black.withOpacity(0.3),
                                ),
                                SizedBox(height: 15,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset('assets/Ellipse 48.png'),
                                        SizedBox(width: 10,),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('Catherine Dion',style: Style().prompt_style.copyWith(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 15,
                                            ),),
                                            Text('24 years, Female',style: Style().prompt_style.copyWith(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 13,
                                              color: Colors.black.withOpacity(0.6),
                                            ),),
                                          ],
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        SvgPicture.asset('assets/Sofa.svg'),
                                        Text(' 29A',style: Style().prompt_style.copyWith(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15,
                                        ),),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(height: 15,),
                                Container(
                                  width: 270,
                                  height: 0.5,
                                  color: Colors.black.withOpacity(0.3),
                                ),
                                SizedBox(height: 15,),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Image.asset('assets/Scan.png'),
                                ),
                              ],
                            ),
                          ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: _createPdf,
                    child: Container(
                      width: 108,
                      height: 54,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        gradient: LinearGradient(colors: [
                          Color.fromRGBO(185, 201, 233, 1),
                          Color.fromRGBO(158, 177, 214, 1),
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          children: [
                            Container(
                              width: 44,
                              height: 44,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                gradient: LinearGradient(colors: [
                                  Color.fromRGBO(185, 201, 233, 1),
                                  Color.fromRGBO(158, 177, 214, 1),
                                ],
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight),
                              ),
                              child: Center(child: SvgPicture.asset('assets/print.svg')),
                            ),
                            Text('Print',style: Style().prompt_style.copyWith(
                              fontWeight: FontWeight.w400,
                            ),),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

// class DashedLinePainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     final Paint paint = Paint()
//       ..color = Colors.black // Цвет линии
//       ..strokeWidth = 2 // Толщина линии
//       ..style = PaintingStyle.stroke;
//
//     final double dashWidth = 300; // Длина штриха
//     final double dashSpace = 5; // Расстояние между штрихами
//     double startX = 0;
//
//     // Рисуем пунктирную линию
//     while (startX < size.width) {
//       canvas.drawLine(
//         Offset(startX, size.height / 2), // Начальная точка
//         Offset(startX + dashWidth, size.height / 2), // Конечная точка
//         paint,
//       );
//       startX += dashWidth + dashSpace; // Перемещаемся к следующему штриху
//     }
//   }
//
//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return false;
//   }
// }

