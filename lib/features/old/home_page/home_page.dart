/*
import 'package:flutter/material.dart';
import 'package:social_network/constants.dart';
import 'package:social_network/core/widgets/tabs_list_widget.dart';
import 'package:social_network/features/home_page/models/post_model.dart';
import 'package:social_network/features/home_page/widgets/home_profiles_list.dart';
import 'package:social_network/features/home_page/widgets/post_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static List<String> items = ['Моя сцена', 'Видео', 'Музыка', 'Твиты'];
  static List<PostModel> models = [
    PostModel(
        imageUrl: 'assets/author1.png',
        authorName: 'Rastyefwwuas_wscc',
        viewedCount: 37815,
        postImage: 'assets/post1.png',
        isActive: true),
    PostModel(
        imageUrl: 'assets/author2.png',
        authorName: 'Fhdjdkd',
        viewedCount: 9115,
        postTitle: 'Новость дня!',
        postText:
            'Модель из Бразилии вышла замуж сама за себя Гигантская черепаха напала на птенца и съела его')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const HomeProfileList(),
            TabsListWidget(items: items),
            Expanded(
                child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20 * rw(context)),
              child: ListView.builder(
                itemCount: models.length,
                itemBuilder: (context, index) => Padding(
                  padding:
                      EdgeInsets.only(top: index == 0 ? 0 : 13 * rw(context)),
                  child: PostWidget(
                    postModel: models[index],
                  ),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
*/
