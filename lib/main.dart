import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_test_slack_week/home/home_widget.dart';
import 'package:flutter_test_slack_week/moviesBloc/movie_details_widget.dart';

import 'moviesBloc/movie_list_widget.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    timeDilation = 2.0; ///Used for slowing the animations

    return MaterialApp(
      title: 'Flutter Slack Week',
      initialRoute: Home.routeName,
      routes: {
        Home.routeName: (_) => Home(),
        MovieList.routeName: (_) => MovieList(),
        MovieDetails.routeName: (_) => MovieDetails()
      },
    );
  }
}
