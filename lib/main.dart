import 'package:flutter/material.dart';
import 'indicatorWidget.dart';
import 'onBoardingButton.dart';
import 'onBoardingPage.dart';
import 'skipBackButton.dart';
import 'loginRegisterPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int activeIndex = 0;
  final controller = PageController();

  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> page = [
      {
        "image": "assets/image1.png",
        "text1": "Easy Streaming",
        "text2": "Choose your plan to watch live match your favourite club.",
      },
      {
        "image": "assets/image2.png",
        "text1": "Always Uptodate",
        "text2": "Stay updated with match highlight, preview and hot news.",
      },
      {
        "image": "assets/image3.png",
        "text1": "Get Amazing Reward",
        "text2": "Redeem your points to get an amazing reward",
      },
    ];
    return Scaffold(
      backgroundColor: Color(0xFF353535),
      body: Center(
        child: PageView(
          controller: controller,
          onPageChanged: (index) {
            setState(() {
              activeIndex = index;
            });
          },
          children: page.map((item) {
            return Column(
              children: [
                OnboardingPage(
                  image: item["image"],
                  title: item["text1"],
                  subtitle: item["text2"],
                ),
                SizedBox(height: 90),
                Indicator(count: page.length, activeIndex: activeIndex),
                SizedBox(height: 87),
                OnboardingButton(
                  isLastPage: activeIndex == page.length - 1,
                  onTap: () {
                    if (activeIndex < page.length - 1) {
                      controller.nextPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    }
                  },
                ),
                SizedBox(height: 16),
                SkipBackButton(
                  isFirstPage: activeIndex == 0,
                  onTap: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context) => LoginRegisterPage(),),);
                  },
                ),
              ],
            );
          }).toList(),
        ),

      ),
    );
  }
}
