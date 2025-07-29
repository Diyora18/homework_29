import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Categorycard extends StatelessWidget {
  String images;
  String textName;
  String textDetail;
  String textMinute;
  String textStar;

  Categorycard({
    super.key,
    required this.images,
    required this.textName,
    required this.textDetail,
    required this.textMinute,
    required this.textStar,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 168,
      height: 229,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: 158,
              height: 84,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(14),
                  bottomLeft: Radius.circular(14),
                ),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 15, top:6,bottom: 6, right: 15),

                child: SizedBox(
                  height: 84,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        textName,
                        style: TextStyle(
                          color: Color(0xFF3E2823),
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      SizedBox(
                        width: 128,
                        child: Text(
                          textDetail,
                          maxLines: 2,

                          style: TextStyle(
                            color: Color(0xFF3E2823),
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                          ),
                        ),
                      ),
                      Spacer(),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Row(
                          children: [
                            Text(
                              textStar,
                              style: TextStyle(
                                color: Color(0xFFEC888D),
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(width: 5),
                            SvgPicture.asset("assets/star.svg"),
                            Spacer(),
                            SvgPicture.asset("assets/clock.svg"),
                            SizedBox(width: 6),
                            Text(
                              textMinute,
                              style: TextStyle(
                                color: Color(0xFFEC888D),
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          Align(
            alignment: Alignment.topCenter,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: Image.asset(
                images,
                fit: BoxFit.cover,
                width: 168,
                height: 155,

              ),
            ),
          ),
        ],
      ),
    );
  }
}
