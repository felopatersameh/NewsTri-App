import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../shared/Components/build_articals.dart';
import '../../shared/Components/loading.dart';
import '../../shared/Cubit News/cubit_news.dart';
import '../../shared/Cubit News/states_news.dart';

var searchControl = TextEditingController();

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CubitNews, StatesNews>(
      listener: (context, state) {},
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: AppBar(),
            body: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 22, horizontal: 20),
                  child: SearchBar(
                    controller: searchControl,
                    onChanged: (value) {
                      CubitNews.get(context).getSearch(value);
                    },
                    leading: const Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Icon(
                        Icons.search_outlined,
                        size: 35,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Expanded(
                  child: ConditionalBuilder(
                      condition: CubitNews.get(context).searchNews.isNotEmpty,
                      builder: (context) => ListView.separated(
                            physics: const BouncingScrollPhysics(),
                            itemCount: CubitNews.get(context).searchNews.length,
                            itemBuilder: (context, index) => Articles(
                                articles:
                                    CubitNews.get(context).searchNews[index]),
                            scrollDirection: Axis.vertical,
                            separatorBuilder: (context, index) => const Divider(
                                thickness: 1, color: Colors.blueGrey),
                          ),
                      fallback: (BuildContext context) => loading()),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
