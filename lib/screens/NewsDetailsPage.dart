import 'package:flutter/material.dart';
import 'package:kalbela_test_project/widgets/NewsDetails.dart';

class NewsDetailsPage extends StatefulWidget {
  const NewsDetailsPage({super.key});

  @override
  State<NewsDetailsPage> createState() => _NewsDetailsPageState();
}

class _NewsDetailsPageState extends State<NewsDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NewsDetails"),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: NewsDetails(
        title: 'জার্মানির ফ্রাঙ্কফুর্টে হবে বাংলা বইমেলা',
        author: 'জার্মানি প্রতিনিধি',
        dateTime: '২৫ সেপ্টেম্বর ২০২৩, ০৯:৫৩ এএম | অনলাইন সংস্করণ',
        imageUrl: 'https://www.kalbela.com/assets/news_photos/2023/09/25/image_26258_1695611049.jpg',
        imageCaption: 'জার্মানিতে বাংলা বইমেলা আয়োজকদের একাংশ। ছবি : কালবেলা',
        content: 'জার্মানির ফ্রাঙ্কফুর্টে বাংলা ভাষার বইমেলার আয়োজনের ঘোষণা দিয়েছেন প্রবাসী '
            'বাংলাদেশিরা। ২১ অক্টোবর এ মেলা হবে। আয়োজকরা জানান, যেখানে বাংলা ভাষার '
            'জনগোষ্ঠী রয়েছে সেখানেই ভাষা, সাহিত্য ও সংস্কৃতির চর্চা আবশ্যক। এতে আমাদের '
            'শেকড়ের বন্ধন আরও জোরালো হবে। এ চিন্তা থেকেই মেলার আয়োজন করা হচ্ছে।আয়োজকরা আরও জানান, '
            'এ মেলার মাধ্যমে প্রবাসী বাঙালিদের মধ্যে একটি ঐক্য গড়ার চেষ্টা করা হবে। নতুন প্রজন্মকে সম্পৃক্ত করে'
            ' প্রবাসে বাংলা চর্চাকে আরও সমৃদ্ধ করার প্রয়াস থাকবে। এদিকে মেলা উপলক্ষে সম্প্রতি সংবাদ '
            'সম্মেলন করেন আয়োজকরা। এতে হাফিজুর রহমান আলম, খালেদ ইসলাম, আতিকুর রহমান সবুজ, '
            'হাবিব বাবুল, হাকিম টিটু, ময়দুল ইসলাম তালুদার, বাবু সরদার উপস্থিত ছিলেন। সুধীজনদের মধ্যে খ'
            'দকার গনি, হাবিবুর রহমান হেলাল, খান লিটন, ফয়সাল আহমেদ উপস্থিত ছিলেন।আয়োজকদের পক্ষ '
            'থেকে জানানো হয়, জার্মানিসহ ইউরোপের বিভিন্ন দেশ থেকে বাঙালি লেখক, কবি, সাহিত্যিকরা বই '
            'মেলাতে অংশ নেবেন। তারা তাদের বইয়ের প্রেক্ষাপট সম্পর্কে বক্তব্য দেবেন। বইয়ের আলোচনার '
            'পাশাপাশি মেলায় গান, আবৃত্তি ও আপ্যায়নের ব্যবস্থা থাকবে।',
      ),
    );
  }
}
