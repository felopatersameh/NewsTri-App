import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../shared/Components/loading.dart';
import '../../shared/Components/build_articals.dart';
import '../../shared/Cubit News/cubit_news.dart';
import '../../shared/Cubit News/states_news.dart';

class ScienceScreen extends StatelessWidget {
  const ScienceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CubitNews, StatesNews>(
        listener: (context, state) {},
        builder: (context, state) => ConditionalBuilder
          (
          condition: CubitNews.get(context).scienceNews.isNotEmpty,
          builder: (context) => ListView.separated(
            physics: const BouncingScrollPhysics(),
            itemCount: CubitNews.get(context).scienceNews.length,
            itemBuilder: (context, index) => Articles(articles:CubitNews.get(context).scienceNews[index]),
            scrollDirection: Axis.vertical,
            separatorBuilder: (context, index) => const Divider(thickness: 1, color: Colors.blueGrey) ,
          ),
          fallback: (BuildContext context) => loading()
        )
    );
  }
}
