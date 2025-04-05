import 'package:flutter/material.dart';

class KeyWords extends StatefulWidget {
  final int tab;
  const KeyWords({super.key, required this.tab});

  @override
  State<KeyWords> createState() => _KeyWordsState();
}

class _KeyWordsState extends State<KeyWords> {
  final List<String> words = [
    "1. then",
    "2. vacant",
    "3. girl",
    "4. exist",
    "5. avoid",
    "6. usage",
    "7. ride",
    "8. alien",
    "9. comic",
    "10. cross",
    "11. upon",
    "12. hub",
  ];

  // Список выбранных слов
  List<String> selectedWords = [];

  // Список для отслеживания состояния контейнеров (выбран или нет)
  List<bool> isSelected = List.generate(12, (index) => false);

  // Флаг для отображения виджета с выбранными контейнерами
  bool showSelectedContainer = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(31, 12, 191, 1.0),
              Color.fromRGBO(8, 3, 53, 1.0),
            ],
            begin: Alignment.topLeft,
            end: Alignment.topRight,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 55,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'KEY WORDS',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Write Seed Phrase',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(54, 41, 183, 1),
                        ),
                      ),

                      Text(
                        'Hello there, sign in to continue',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: Color.fromRGBO(52, 52, 52, 1),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      if (showSelectedContainer)
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.all(10),
                          color: Colors.white,
                          child: Column(
                            children: [
                              Text(
                                'Select each word in the order it was presented to you',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                ),
                                overflow: TextOverflow.visible,
                              ),
                              SizedBox(height: 20,),
                              Wrap(
                                spacing: 10,
                                runSpacing: 10,
                                children: selectedWords
                                    .map((word) => Container(
                                          width: 88,
                                          height: 40,
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10, vertical: 5),
                                          decoration: BoxDecoration(
                                            color: Color.fromRGBO(205, 249, 208, 1),
                                            borderRadius:
                                                BorderRadius.circular(50),
                                          ),
                                          child: Center(
                                            child: Text(
                                              word,
                                              style: TextStyle(
                                                color: Color.fromRGBO(
                                                    16, 140, 74, 1),
                                              ),
                                            ),
                                          ),
                                        ))
                                    .toList(),
                              ),
                            ],
                          ),
                        ),
                      SizedBox(height: 20),
                      // Сетка с 12 контейнерами
                      Expanded(
                        child: GridView.builder(
                          padding: EdgeInsets.all(10),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3, // 3 контейнера в строке
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            childAspectRatio:
                                88 / 40, // Соотношение сторон контейнера
                          ),
                          itemCount: words.length,
                          itemBuilder: (context, index) {
                            final word = words[index];
                            return GestureDetector(
                              onTap: isSelected[index]
                                  ? null // Если контейнер уже выбран, он становится недоступным
                                  : () {
                                      setState(() {
                                        // Добавляем слово в список выбранных
                                        selectedWords.add(word);
                                        // Помечаем контейнер как выбранный
                                        isSelected[index] = true;
                                        // Показываем виджет с выбранными контейнерами
                                        showSelectedContainer = true;
                                      });
                                    },
                              child: Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: isSelected[index]
                                      ? Color.fromRGBO(244, 244, 246, 1)// Серый цвет для выбранных контейнеров
                                      : Colors.white,
                                  // Синий цвет для доступных контейнеров
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Text(
                                  word,
                                  style: TextStyle(
                                    color:isSelected[index]? Colors.black.withOpacity(0.5) : Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 47,
                                height: 47,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Color.fromRGBO(244, 244, 246, 1),
                                ),
                                child: Center(
                                  child: Icon(Icons.arrow_back_ios,color: Colors.white,),
                                ),
                              ),
                              Image.asset('assets/Fingerprint.png'),
                              SizedBox(width: 47,),
                            ],
                          ),
                          SizedBox(height: 20,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Agree with W and our ',style: TextStyle(
                                fontSize: 12,fontWeight: FontWeight.w400,
                              ),),
                              Text('Golosary',style: TextStyle(
                                fontSize: 12,fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(8, 3, 53, 1.0),
                              ),),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
