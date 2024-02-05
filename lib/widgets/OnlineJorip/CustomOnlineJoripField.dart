import 'package:flutter/material.dart';
import 'package:kalbela_test_project/widgets/OnlineJorip/SelectedRadio.dart';
import 'package:kalbela_test_project/widgets/OnlineJorip/radio.dart';
import 'package:kalbela_test_project/widgets/OnlineJorip/voted_radio.dart';

class CustomJoripField extends StatefulWidget {
  final String dateTime;
  final String title;
  final String totalVote;
  const CustomJoripField({super.key, required this.dateTime, required this.title, required this.totalVote});

  @override
  State<CustomJoripField> createState() => _CustomJoripFieldState();
}

class _CustomJoripFieldState extends State<CustomJoripField> {

  int selectedRadioButton = -1;
  bool isSelectedText = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(width: 1,color: Colors.grey.shade300),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.network("https://www.kalbela.com/assets/verified_icon/Poll-v2.png"),
                  SizedBox(width: 8,),
                  Text("অনলাইন জরিপ",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset("assets/icons/clock.png",height: 20,),
                      SizedBox(width: 5,),
                      Text(widget.dateTime),
                    ],
                  ),
                  Image.asset("assets/icons/download-to-storage-drive.png",height: 20,),
                ],
              ),
              SizedBox(height: 10,),
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                  child: Image.network("https://www.kalbela.com/assets/poll_cover_photos/photo-49.jpg",fit: BoxFit.fill,height: 200,),
              ),
              SizedBox(height: 10,),
              Text(widget.title, style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              isSelectedText == true ? Text(
                "মোট ভোট - ${widget.totalVote}",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ) : SizedBox(),
              CustomRadioButton(
                comment: "হ্যাঁ",
                isSelected: selectedRadioButton == 0,
                onChanged: (bool value) {
                  setState(() {
                    selectedRadioButton = 0;
                    isSelectedText = true;
                  });
              },
              ),
              CustomRadioButton(
                comment: "না",
                isSelected: selectedRadioButton == 1,
                onChanged: (bool value) {
                  setState(() {
                    selectedRadioButton = 1;
                    isSelectedText = true;
                  });
                },
              ),
              CustomRadioButton(
                comment: "মন্তব্য নেই",
                isSelected: selectedRadioButton == 2,
                onChanged: (bool value) {
                  setState(() {
                    selectedRadioButton = 2;
                    isSelectedText = true;
                  });
                },
              ),

              Center(child: Text("মোট ভোটদাতাঃ ${widget.totalVote} জন",style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 16),)),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/icons/facebook.png",height: 40,),
                    SizedBox(width: 10,),
                    Image.asset("assets/icons/messenger.png",height: 40,),
                    SizedBox(width: 10,),
                    Image.asset("assets/icons/whatsapp.png",height: 40,),
                    SizedBox(width: 10,),
                    Image.asset("assets/icons/twitter.png",height: 40,),
                    SizedBox(width: 10,),
                    Image.asset("assets/icons/linkedin.png",height: 40,),
                    SizedBox(width: 10,),
                    Image.asset("assets/icons/duplicate.png",height: 40,),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
