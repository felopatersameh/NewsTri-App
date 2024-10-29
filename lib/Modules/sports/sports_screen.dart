import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../shared/Components/loading.dart';
import '../../shared/Components/build_articals.dart';
import '../../shared/Cubit News/cubit_news.dart';
import '../../shared/Cubit News/states_news.dart';

class SportssScreen extends StatelessWidget {
  const SportssScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CubitNews, StatesNews>(
        listener: (context, state) {},
        builder: (context, state) => ConditionalBuilder(
            condition: CubitNews.get(context).sportsNews.isNotEmpty,
            builder: (context) => ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  itemCount: CubitNews.get(context).sportsNews.length,
                  itemBuilder: (context, index) => Articles(
                      articles: CubitNews.get(context).sportsNews[index]),
                  scrollDirection: Axis.vertical,
                  separatorBuilder: (context, index) => const Divider(
                    thickness: 1,
                    color: Colors.blueGrey,
                  ),
                ),
            fallback: (BuildContext context) => loading()));
  }
}
