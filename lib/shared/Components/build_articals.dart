import 'package:flutter/material.dart';

import 'constant.dart';

class Articles extends StatelessWidget {
  const Articles({
    super.key,
    this.articles,
  });

  final dynamic articles;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        openLink(articles);
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              if (articles['urlToImage'] != null &&
                  articles['urlToImage'] != '')
                SizedBox(
                    height: 100,
                    width: 100,
                    child: Image(
                      image: NetworkImage('${articles['urlToImage']}'),
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) =>
                          const Icon(Icons.broken_image),
                      filterQuality: FilterQuality.high,
                    )),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      '${articles['title']}',
                      textDirection: TextDirection.rtl,
                      maxLines: 3,
                      textAlign: TextAlign.right,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    const SizedBox(height: 10),
                    Text('${articles['publishedAt']}',
                        textDirection: TextDirection.rtl,
                        maxLines: 1,
                        style: Theme.of(context).textTheme.bodySmall)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
