
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import '../../Modules/search/search_screen.dart';
import '../../shared/Cubit News/cubit_news.dart';
import '../../shared/Cubit News/states_news.dart';




class NewsLayout extends StatelessWidget {
  const NewsLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CubitNews, StatesNews>(
      listener: (context, state) {},
      builder: (context, state) => Scaffold(
        appBar: AppBar(
          title: const Text('Tri-News'),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => const SearchScreen()) , );
                },
                icon: const Icon(Icons.search)),
            IconButton(
                onPressed: () {
                  CubitNews.get(context).changeThemesDark();
                },
                icon: const Icon(Icons.mode_night_outlined)),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: CubitNews.get(context).bottomNav,
          currentIndex: CubitNews.get(context).currentIndex,
          onTap: (value) {
            CubitNews.get(context).buttonNavigator(value);
          },
        ),
        body: CubitNews.get(context).screens[CubitNews.get(context).currentIndex],
      ),
    );
  }
}
