import 'package:flutter/material.dart';
import 'package:netflixapp/core/colors/colors.dart';
import 'package:netflixapp/core/constants.dart';
import 'package:netflixapp/presentation/Home/widget/custom_button_widget.dart';
import 'package:netflixapp/presentation/widgets/video_widget.dart';

class ComingSoon extends StatelessWidget {
  final String id;
  final String month;
  final String day;
  final String posterPath;
  final String movieName;
  final String description;
  const ComingSoon({
    Key? key,
    required this.id,
    required this.month,
    required this.day,
    required this.posterPath,
    required this.movieName,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: 50,
          height: 450,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(month,
                  style: const TextStyle(fontSize: 16, color: kGreyColor)),
              Text(
                day,
                style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 4),
              )
            ],
          ),
        ),
        SizedBox(
          width: size.width - 50,
          height: 450,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VideoWidget(url: posterPath,),
              Row(
                //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      movieName,
                      maxLines: 1,
                      overflow: TextOverflow.clip,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                      
                    ),
                  ),
                 
                  const CustomButtonWidget(
                    icon: Icons.notification_add,
                    title: "Remind me",
                    iconSize: 20,
                    textSize: 16,
                  ),
                  kWidth,
                  const CustomButtonWidget(
                    icon: Icons.info_outline,
                    title: "Info",
                    iconSize: 20,
                    textSize: 16,
                  ),
                  kWidth
                ],
              ),
              Text("Coming on $day $month"),
              kHeight,
               Text(
                movieName,
                style:const TextStyle(
                  fontSize: 18,
                  color: kGreyColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              kHeight,
               Text(
                description,
                maxLines: 4,
                style:const TextStyle(
                  fontSize: 16,
                  color: kGreyColor,
                  wordSpacing: 1,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
