import 'package:flutter/material.dart';
import 'package:kalbela_test_project/widgets/CustomMarquee.dart';

class NewsDetails extends StatelessWidget {
  final String title;
  final String author;
  final String dateTime;
  final String imageUrl;
  final String content;
  final String imageCaption;

  const NewsDetails({
    Key? key,
    required this.title,
    required this.author,
    required this.dateTime,
    required this.imageUrl,
    required this.content,
    required this.imageCaption,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> marqueeTexts = [
      'Flutter is an amazing framework for app development!',
      'Custom Marquee widget can display a list of strings!',
      'You can customize the behavior of the marquee.',
    ];
    return ListView(
      children: [
        CustomMarquee(
            title: title, texts: marqueeTexts,
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "প্রচ্ছদ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    "assets/icons/arrow-forward.png",
                    height: 14,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "প্রচ্ছদ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ],
              ),
              SizedBox(height: 8,),
              Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
              Row(
                children: [
                  Icon(Icons.person),
                  SizedBox(
                    width: 6,
                  ),
                  Text(author),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.calendar_month),
                  SizedBox(
                    width: 6,
                  ),
                  Text(dateTime),
                ],
              ),
              SizedBox(height: 8,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset(
                    "assets/icons/facebook.png",
                    height: 40,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    "assets/icons/messenger.png",
                    height: 40,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    "assets/icons/whatsapp.png",
                    height: 40,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    "assets/icons/twitter.png",
                    height: 40,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    "assets/icons/linkedin.png",
                    height: 40,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    "assets/icons/duplicate.png",
                    height: 40,
                  ),
                ],
              ),
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(
                imageUrl),
            SizedBox(height: 8,),
            Text(imageCaption),
            Divider(),
          ],
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: Text(content),
        ),
      ],
    );
  }
}
