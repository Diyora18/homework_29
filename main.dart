
import 'package:flutter/material.dart';
import 'package:homework_29/App_Bar.dart';
import 'package:homework_29/categories.dart';
import 'package:homework_29/utils/AppColors.dart';

import 'BottomNavigator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> categories = [
    "Breakfast",
    "Lunch",
    "Dinner",
    "Vegan",
    "Dessert",
    "Drinks",
    "Sea Food",
  ];


  int selectedIndex = 0;

  List<Categorycard> category = [
    Categorycard(images: 'assets/pic2.png',
        textName: 'Eggs Benedict',
        textDetail: "Muffin with Canadian bacon",
        textMinute: '15min',
        textStar: '5'),
    Categorycard(images: 'assets/pic1.png',
        textName: 'French Toast',
        textDetail: "Delicious slices of Bread",
        textMinute: '20min',
        textStar: '5'),
    Categorycard(images: 'assets/pic3.png',
        textName: 'Oatmeal and Nut',
        textDetail: "Wholesome bread for breakfast",
        textMinute: '35min',
        textStar: '4'),
    Categorycard(images: 'assets/pic4.jpg',
        textName: 'Still Life Potato',
        textDetail: "Earthy, textured, rustic charm",
        textMinute: '30min',
        textStar: '4'),
    Categorycard(images: 'assets/pic5.png',
        textName: 'Oatmeal',
        textDetail: "muffin with Canadian bacon",
        textMinute: '15min',
        textStar: '5'),
    Categorycard(images: 'assets/pic6.png',
        textName: 'Oatmeal',
        textDetail: "Wholesome bread for breakfast",
        textMinute: '15min',
        textStar: '5'),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: AppColors.background,
      appBar: CustomAppBar(
        selectedIndex: selectedIndex,
        categories: categories,
        onCategoryTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
      body: GridView.builder(
        padding: EdgeInsets.symmetric( horizontal: 24),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 25,
          childAspectRatio: 200/250,
          mainAxisSpacing: 25,

        ),

        itemCount: category.length,


        itemBuilder: (context, index) {
          final categoryItem = category[index];
          return Categorycard(images: categoryItem.images,
              textName: categoryItem.textName,
              textDetail: categoryItem.textDetail,
              textMinute: categoryItem.textMinute,
              textStar: categoryItem.textStar);
        },
      ),

      bottomNavigationBar: bottomNavigator(),


    );

  }
}
