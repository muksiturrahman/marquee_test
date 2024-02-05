import 'package:flutter/material.dart';
import 'package:kalbela_test_project/screens/NewsDetailsPage.dart';
import 'package:kalbela_test_project/widgets/CustomMarquee.dart';
import 'package:kalbela_test_project/widgets/CustomVideoContainer.dart';
import 'package:kalbela_test_project/widgets/NewsDetails.dart';
import 'package:kalbela_test_project/widgets/OnlineJorip/CustomOnlineJoripField.dart';

import '../widgets/CustomOpinionField.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> imagePaths = [
    'https://www.kalbela.com/assets/video_cover_photos/2023/09/20/cover_photo-737.jpg',
    'https://www.kalbela.com/assets/video_cover_photos/2023/09/20/cover_photo-736.jpg',
    'https://www.kalbela.com/assets/news_photos/2023/09/21/image-25136-1695265884.jpg',
  ];

  List<String> videoTitle = [
    'যৌন হয়রানির শিকার ৮৭ শতাংশ কিশোরী',
    "২ ছাত্রলীগ নেতা মিলে পে'টালেন আরেক নেতাকে",
    'তানজিম সাকিবকে নিয়ে যা বললেন পুলিশ কর্মকর্তা যা বললেন পুলিশ কর্মকর্তা যা বললেন পুলিশ কর্মকর্তা যা বললেন পুলিশ কর্মকর্তা',
  ];

  List<String> marqueeTexts = [
    'Flutter is an amazing framework for app development!',
    'Custom Marquee widget can display a list of strings!',
    'You can customize the behavior of the marquee.',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kalbela",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: CustomMarquee(
                      title: 'সদ্যপ্রাপ্ত',
                      texts: marqueeTexts,
                  ),
                ),
                SizedBox(height: 8,),
                CustomVideoContainer(
                    imagePaths: imagePaths,
                    titles: videoTitle,
                ),
                SizedBox(height: 20,),
                CustomOpinionContainer(
                  imageUrl: 'https://www.kalbela.com/assets/author_photos/mohsin-habib.jpg',
                  name: 'মহসীন হাবিব',
                  occupation: 'সাংবাদিক ও সাহিত্যিক',
                  opinionTitle: 'সংকটে-সংগ্রামে শেখ হাসিনার সঙ্গী',
                  opinionDetails: 'ফ্রাঙ্কেনস্টাইন লেখাপড়া শিখতে গিয়ে নিজ খেয়ালেই কবরস্থান থেকে হাড়মাংস জোগাড় করে ঘরে বসেই বানিয়ে ফেলে এক দৈত্যাকৃতির মানুষ। অস্বাভাবিক চেহারা ও ভীতিকর দর্শনের কারণে ভীষণ অসন্তোষ সৃষ্টি হয় দৈত্যের মধ্যে। সেই দৈত্য কিন্তু সবসময়ই স্বীকার করেছে যে, ফ্রাঙ্কেনস্টাইনই তার সৃষ্টিকারী (ক্রিয়েটর, গড), তাকে জীবনদান করেছে। কিন্তু অসন্তোষগুলো তার চোখের সামনে বড় করে ধরা দেওয়ায় সে প্রতিশোধপরায়ণ হয়ে ওঠে।',
                ),
                SizedBox(height: 20,),
                CustomJoripField(dateTime: '১৪ সেপ্টেম্বর ২০২৩, ০৮:৩৯ পিএম', title: 'দেশে প্রথমবারের মতো ডিম, আলু ও পেঁয়াজের দাম বেঁধে দিয়েছে সরকার। নির্ধারিত দামকে আপনি কি যৌক্তিক মনে করেন?', totalVote: '৩,২২৩',),
                ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> NewsDetailsPage()));
                  },
                    child: Text("NewsDetails"),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
