import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'AppColors.dart';

class bottomNavigator extends StatefulWidget {
  const bottomNavigator({super.key});

  @override
  State<bottomNavigator> createState() => _bottomNavigatorState();
}

class _bottomNavigatorState extends State<bottomNavigator> {
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 34),
        child: Container(
          width: 281,
          height: 56,
          decoration: BoxDecoration(
            color: Color(0xFFFD5D69),
            borderRadius: BorderRadius.circular(33),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SvgPicture.asset("assets/Home.svg"),
              SvgPicture.asset("assets/message.svg"),
              SvgPicture.asset("assets/romb.svg"),
              SvgPicture.asset("assets/person.svg"),
            ],
          ),
        ),
      ),
    );
  }
}
class BottomNavigationBarGradient extends StatelessWidget{
  const BottomNavigationBarGradient({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [AppColors.beige, Colors.transparent],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter)
      ),
    );

  }
}