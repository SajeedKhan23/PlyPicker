import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:login_registration/providers/news_provider.dart';
import 'package:login_registration/services/api_service.dart';
import 'package:login_registration/services/shared_services.dart';
import 'package:login_registration/widgets/news_card.dart';
import 'package:login_registration/widgets/search_field.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Riverpod state management
    final newsState = ref.watch(newsProvider);
    final news = newsState.newsModel;
    final isLoading = newsState.isLoading;

    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter+NodeJS+JWT'),
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.logout,
              color: Colors.black,
            ),
            onPressed: () {
              SharedService.logout(context);
            },
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Column(
          children: [
            SearchField(), // Add your SearchField widget here
            isLoading
                ? SizedBox(
                    height: MediaQuery.of(context).size.height / 2,
                    child: const Center(
                      child: CircularProgressIndicator(),
                    ),
                  )
                : Expanded(
                    child: ListView.builder(
                      itemCount: news.articles!.length,
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                        return NewsCard(article: news.articles![index]);
                      },
                    ),
                  )
          ],
        ),
      ),
    );
  }
}