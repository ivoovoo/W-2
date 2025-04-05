import 'package:flutter/material.dart';

class CustomKeyboard extends StatelessWidget {
  final Function(String) onKeyTap;
  final VoidCallback onBackspace;

  const CustomKeyboard({
    Key? key,
    required this.onKeyTap,
    required this.onBackspace,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: Color.fromRGBO(255, 255, 255, 0.1),
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 380, // Ограничение по высоте для клавиатуры
            child: GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, // 3 кнопки в строке
                mainAxisSpacing: 8, // Расстояние между строками
                crossAxisSpacing: 8, // Расстояние между кнопками
                childAspectRatio: 1.5, // Соотношение сторон кнопок (ширина/высота)
              ),
              itemCount: 12, // 10 цифр + backspace + пустая кнопка
              itemBuilder: (context, index) {
                if (index == 9) {
                  return TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero, // Убираем внутренние отступы
                      backgroundColor: Colors.transparent,
                    ),
                    child: const Icon(Icons.add, size: 30,color: Colors.white,), // Уменьшаем иконку
                  ); // Пустая кнопка
                } else if (index == 11) {
                  return TextButton(
                    onPressed: onBackspace,
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero, // Убираем внутренние отступы
                      backgroundColor: Colors.transparent,
                    ),
                    child: const Icon(Icons.backspace, size: 20,color: Colors.white,), // Уменьшаем иконку
                  );
                } else {
                  final value = index == 10 ? '0' : '${index + 1}';
                  return TextButton(
                    onPressed: () => onKeyTap(value),
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero, // Убираем внутренние отступы
                      backgroundColor: Colors.transparent,
                    ),
                    child: Text(
                      value,
                      style: const TextStyle(
                        fontSize: 26, // Увеличиваем размер текста
                        color: Colors.white, // Делаем текст белым
                        fontWeight: FontWeight.w500, // Делаем текст жирным
                      ), // Уменьшаем размер текста
                    ),
                  );
                }
              },
            ),
          )

        ],
      ),
    );
  }
}
