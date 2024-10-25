import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:social_network/src/features/info/model/info_model.dart';

import '../../repository/info_repository.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({
    super.key,
    this.infoModel = InfoRepository.info,
  });

  final InfoModel infoModel;

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  final List<String> _results = [];
  final TextEditingController _controller = TextEditingController();
  String _birthDate = '';

  @override
  void initState() {
    super.initState();
    _birthDate = '25-10-2024'; // Изначальное значение
    _controller.text = _birthDate;
    calculateAllNumbers(_birthDate);
  }

  // Форматтер для ввода даты в формате дд-мм-гггг с автоматическим тире
  final List<TextInputFormatter> dateInputFormatters = [
    FilteringTextInputFormatter.digitsOnly,
    LengthLimitingTextInputFormatter(8),
    _DateFormatter(),
  ];

  // Функция для сведения числа к однозначному
  int reduceToSingleDigit(int number) {
    while (number >= 10) {
      number =
          number.toString().split('').map(int.parse).reduce((a, b) => a + b);
    }
    return number;
  }

  // Расчет Числа Жизненного Пути
  int calculateLifePathNumber(String birthDate) {
    final digits =
        birthDate.replaceAll('-', '').split('').map(int.parse).toList();
    return reduceToSingleDigit(digits.reduce((a, b) => a + b));
  }

  // Расчет Кармического Числа
  int calculateKarmaNumber(String birthDate) {
    final parts = birthDate.split('-');
    final year = int.parse(parts[2]);
    final day = int.parse(parts[0]);
    return reduceToSingleDigit((year - day).abs());
  }

  // Расчет Энергии Дня, Месяца и Года
  List<int> calculateEnergyOfDayMonthYear(String birthDate) {
    final parts = birthDate.split('-');
    final day = reduceToSingleDigit(int.parse(parts[0]));
    final month = reduceToSingleDigit(int.parse(parts[1]));
    final year = reduceToSingleDigit(
        parts[2].split('').map(int.parse).reduce((a, b) => a + b));
    return [day, month, year];
  }

  // Расчет Числа Судьбы
  int calculateDestinyNumber(String birthDate) {
    final parts = birthDate.split('-');
    final day = int.parse(parts[0]);
    final month = int.parse(parts[1]);
    final year = int.parse(parts[2]);
    return reduceToSingleDigit(day + month + year);
  }

  // Расчет Числа Личного Года
  int calculatePersonalYearNumber(String birthDate) {
    final parts = birthDate.split('-');
    final currentYear = DateTime.now().year;
    final day = int.parse(parts[0]);
    final month = int.parse(parts[1]);
    return reduceToSingleDigit(currentYear + day + month);
  }

  // Расчет Числа Зрелости
  int calculateMaturityNumber(String birthDate) {
    final lifePathNumber = calculateLifePathNumber(birthDate);
    final destinyNumber = calculateDestinyNumber(birthDate);
    return reduceToSingleDigit(lifePathNumber + destinyNumber);
  }

  // Расчет Числа Вызова
  int calculateChallengeNumber(String birthDate) {
    final parts = birthDate.split('-');
    final day = int.parse(parts[0]);
    final month = int.parse(parts[1]);
    return reduceToSingleDigit((day - month).abs());
  }

  // Расчет всех чисел
  void calculateAllNumbers(String birthDate) {
    final energies = calculateEnergyOfDayMonthYear(birthDate);

    _results.clear();
    _results
        .add('Число Жизненного Пути: ${calculateLifePathNumber(birthDate)}');
    _results.add('Кармическое Число: ${calculateKarmaNumber(birthDate)}');
    _results.add('Энергия Дня: ${energies[0]}');
    _results.add('Энергия Месяца: ${energies[1]}');
    _results.add('Энергия Года: ${energies[2]}');
    _results.add('Число Судьбы: ${calculateDestinyNumber(birthDate)}');
    _results
        .add('Число Личного Года: ${calculatePersonalYearNumber(birthDate)}');
    _results.add('Число Зрелости: ${calculateMaturityNumber(birthDate)}');
    _results.add('Число Вызова: ${calculateChallengeNumber(birthDate)}');

    setState(() {}); // Обновление состояния для отображения новых результатов
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
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
                  'Дата рождения',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
                ShaderMask(
                  shaderCallback: (bounds) => const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xff7fbbfb),
                      Color(0xffa3eebe),
                    ],
                  ).createShader(
                    Rect.fromLTWH(0.0, 0.0, bounds.width, bounds.height),
                  ),
                  child: Text(
                    widget.infoModel.rating.toString(),
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Inter',
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
            BirthDateInputWidget(
              controller: _controller,
              onBirthDateChanged: (String date) {
                _birthDate = date;
                if (_birthDate.isNotEmpty && _birthDate.length == 10) {
                  calculateAllNumbers(_birthDate);
                }
              },
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xff000000).withOpacity(0.05),
                      offset: Offset(0, 0), // Смещение по X и Y
                      blurRadius: 25, // Радиус размытия
                      spreadRadius: 0, // Радиус распространения
                    ),
                  ],
                ),
                child: ListView(
                  padding: const EdgeInsets.all(15),
                  children: [
                    ..._results.map(
                      (result) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 3),
                        child: Text(
                          result,
                          style: const TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontFamily: 'Inter',
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
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
                  'Благодарю!',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}

class BirthDateInputWidget extends StatelessWidget {
  final TextEditingController controller;
  final ValueChanged<String> onBirthDateChanged;

  BirthDateInputWidget({
    Key? key,
    required this.controller,
    required this.onBirthDateChanged,
  }) : super(key: key);

  // Форматтер для ввода даты с автоматическим добавлением тире
  final List<TextInputFormatter> dateInputFormatters = [
    FilteringTextInputFormatter.digitsOnly,
    LengthLimitingTextInputFormatter(8),
    _DateFormatter(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(27),
        boxShadow: const [
          BoxShadow(
            color: Color(0x1F8386A3), // Цвет тени с 12% непрозрачностью
            offset: Offset(0, 0), // Смещение по X и Y
            blurRadius: 10, // Радиус размытия
            spreadRadius: 0, // Радиус распространения
          ),
        ],
        gradient: const LinearGradient(
          colors: [
            Color(0xff7fbbfb),
            Color(0xffff8bad),
          ],
        ),
      ),
      child: TextField(
        textAlign: TextAlign.center,
        controller: controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(27),
            borderSide: BorderSide.none,
          ),
          hintText: 'дд-мм-гггг',
          hintStyle: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w500,
            fontFamily: 'Inter',
          ),
        ),
        keyboardType: TextInputType.datetime,
        inputFormatters: dateInputFormatters,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w500,
          fontFamily: 'Inter',
        ),
        onChanged: onBirthDateChanged,
        onSubmitted: (value) {
          if (value.isNotEmpty && value.length == 10) {
            onBirthDateChanged(value);
          }
        },
      ),
    );
  }
}

// Класс для форматирования ввода даты с автоматическим добавлением тире
class _DateFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    String newText = newValue.text;

    // Удаляем все тире и пробелы
    newText = newText.replaceAll('-', '');

    if (newText.length >= 3) {
      newText = newText.substring(0, 2) + '-' + newText.substring(2);
    }
    if (newText.length >= 6) {
      newText =
          newText.substring(0, 5) + '-' + newText.substring(5, newText.length);
    }

    return TextEditingValue(
      text: newText,
      selection: TextSelection.collapsed(offset: newText.length),
    );
  }
}
