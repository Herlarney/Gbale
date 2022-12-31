import 'package:flutter/material.dart';
import 'package:gbale/view/homepage/components/feed.dart';
import 'package:gbale/view/homepage/components/home.dart';
import 'package:gbale/view/homepage/components/home.dart';
import 'package:gbale/view/homepage/components/log_out.dart';
import 'package:gbale/view/homepage/homepage_viewmodel.dart';
import 'package:stacked/stacked.dart';

class HomePageView extends StatelessWidget {
  HomePageView({super.key});

  @override
  Widget build(BuildContext context) =>
      ViewModelBuilder<HomePageViewModel>.reactive(
        viewModelBuilder: () => HomePageViewModel(),
        builder: (context, model, child) => Scaffold(
          body: getViewForIndex(model.currentIndex),
          backgroundColor: Colors.white,
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: model.currentIndex,
              onTap: model.setIndex,
              elevation: 2,
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.white,
              selectedItemColor: Colors.blueGrey,
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.home_mini_sharp,
                      color: Colors.green,
                    ),
                    label: 'Home'),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.feed,
                      color: Colors.green,
                    ),
                    label: 'Feed'),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.power_input_outlined,
                      color: Colors.green,
                    ),
                    label: 'LogOut'),
              ]),
        ),
      );
}

getViewForIndex(int index) {
  switch (index) {
    case 0:
      return const Home();
    case 1:
      return const FeedView();
    case 2:
      const LogOut();
      break;
    default:
      return const Home();
  }
}
