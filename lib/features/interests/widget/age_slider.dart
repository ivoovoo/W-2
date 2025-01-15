import 'package:flutter/material.dart';

class AgeSlider extends StatefulWidget {
  const AgeSlider({
    super.key,
    required this.ageMax,
    required this.ageMin,
    required this.onChangedAgeMax,
    required this.onChangedAgeMin,
  });

  final double ageMin;
  final double ageMax;
  final ValueChanged<double> onChangedAgeMin;
  final ValueChanged<double> onChangedAgeMax;

  @override
  _AgeSliderState createState() => _AgeSliderState();
}

class _AgeSliderState extends State<AgeSlider> {
  late RangeValues _currentRangeValues;

  @override
  void initState() {
    _currentRangeValues = RangeValues(widget.ageMin, widget.ageMax);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '${_currentRangeValues.start.toInt()}',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff7fbbfb),
                  fontFamily: "Inter"),
            ),
            Text(
              '${_currentRangeValues.end.toInt()}',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                fontFamily: "Inter",
                color: Color(0xffff8bad),
              ),
            ),
          ],
        ),
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            trackHeight: 10.0,
            thumbShape: const RoundSliderThumbShape(
              enabledThumbRadius: 25.0,
              elevation: 5,
            ),
            thumbColor: Color(0xff7fbbfb),
            overlayColor: Colors.pink.withOpacity(0.2),
            rangeTrackShape: CustomTrackShape(),
            // Кастомная форма трека
            activeTrackColor: Colors.transparent,
            inactiveTrackColor: Colors.transparent,
          ),
          child: RangeSlider(
            values: _currentRangeValues,
            min: 18,
            max: 100,
            onChanged: (RangeValues values) {
              setState(() {
                _currentRangeValues = values;
                // Передаем обновленные значения через соответствующие callbacks
                widget.onChangedAgeMin(values.start);
                widget.onChangedAgeMax(values.end);
              });
            },
          ),
        ),
      ],
    );
  }
}

class CustomTrackShape extends RangeSliderTrackShape {
  @override
  Rect getPreferredRect({
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    Offset offset = Offset.zero,
    bool isEnabled = false,
    bool isDiscrete = false,
  }) {
    final double trackHeight = sliderTheme.trackHeight ??
        10.0; // Увеличили высоту трека для лучшей видимости
    final double trackLeft = 0; // Убрали отступ слева
    final double trackTop = (parentBox.size.height - trackHeight) / 2;
    final double trackWidth = parentBox.size.width; // Трек на всю ширину
    return Rect.fromLTWH(trackLeft, trackTop, trackWidth, trackHeight);
  }

  @override
  void paint(
    PaintingContext context,
    Offset offset, {
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required Animation<double> enableAnimation,
    required Offset startThumbCenter,
    required Offset endThumbCenter,
    bool isDiscrete = false,
    bool isEnabled = false,
    required TextDirection textDirection,
  }) {
    final Rect trackRect = getPreferredRect(
      parentBox: parentBox,
      sliderTheme: sliderTheme,
      isEnabled: isEnabled,
      isDiscrete: isDiscrete,
      offset: offset,
    );

    final Radius trackRadius = Radius.circular(8.0); // Радиус скругления углов

    // Градиентная кисть для активной части
    final Paint activePaint = Paint()
      ..shader = LinearGradient(
        colors: [
          Color(0xff82bafa),
          Color(0xffff8bad),
        ],
      ).createShader(Rect.fromPoints(startThumbCenter, endThumbCenter));

    // Белая кисть для неактивной части
    final Paint inactivePaint = Paint()..color = Colors.white;

    // Тень для всего трека
    final Paint shadowPaint = Paint()
      ..color = Colors.grey.withOpacity(0.3) // Полупрозрачная серая тень
      ..maskFilter = MaskFilter.blur(BlurStyle.normal, 4); // Размытие тени

    // Левая часть до первого ползунка
    final Rect leftTrackSegment = Rect.fromLTRB(
      trackRect.left,
      trackRect.top,
      startThumbCenter.dx,
      trackRect.bottom,
    );

    // Средняя часть между ползунками (активная часть)
    final Rect activeTrackSegment = Rect.fromLTRB(
      startThumbCenter.dx,
      trackRect.top,
      endThumbCenter.dx,
      trackRect.bottom,
    );

    // Правая часть после второго ползунка
    final Rect rightTrackSegment = Rect.fromLTRB(
      endThumbCenter.dx,
      trackRect.top,
      trackRect.right,
      trackRect.bottom,
    );

    // Рисуем тень под всей областью трека
    context.canvas.drawRRect(
      RRect.fromRectAndRadius(trackRect, trackRadius), // Скругление углов
      shadowPaint,
    );

    // Рисуем трек
    context.canvas.drawRRect(
      RRect.fromRectAndRadius(
          leftTrackSegment, trackRadius), // Левая белая часть
      inactivePaint,
    );
    context.canvas.drawRRect(
      RRect.fromRectAndRadius(
          activeTrackSegment, trackRadius), // Средняя часть с градиентом
      activePaint,
    );
    context.canvas.drawRRect(
      RRect.fromRectAndRadius(
          rightTrackSegment, trackRadius), // Правая белая часть
      inactivePaint,
    );
  }
}
