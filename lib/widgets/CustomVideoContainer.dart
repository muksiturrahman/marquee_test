import 'package:flutter/material.dart';

class CustomVideoContainer extends StatefulWidget {
  final List<String> imagePaths;
  final List<String> titles;

  CustomVideoContainer({
    required this.imagePaths,
    required this.titles,
  });

  @override
  _CustomVideoContainerState createState() => _CustomVideoContainerState();
}

class _CustomVideoContainerState extends State<CustomVideoContainer> {
  PageController _pageController = PageController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.network("https://www.kalbela.com/assets/verified_icon/video-stories.png",height: 20,),
              SizedBox(width: 8,),
              Text('ভিডিও',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
            ],
          ),
          SizedBox(height: 10,),
          Stack(
            children: [
              Container(
                height: 275,
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: widget.imagePaths.length,
                  onPageChanged: (index) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            SizedBox(
                              height: 220,
                              child: Image.network(
                                widget.imagePaths[index],
                                width: double.infinity,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Positioned(
                              child: IconButton(
                                icon: Icon(
                                  Icons.play_circle_fill,
                                  size: 50.0,
                                  color: Colors.white,
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                        Text(
                          widget.titles[currentIndex],
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                bottom: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    if (currentIndex > 0)
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white,
                        ),
                        child: GestureDetector(
                          onTap: () {
                            _pageController.previousPage(
                              duration: Duration(milliseconds: 300),
                              curve: Curves.ease,
                            );
                            if (currentIndex > 0) {
                              setState(() {
                                currentIndex--;
                              });
                            }
                          },
                          child: Icon(Icons.arrow_back_ios),
                        ),
                      )
                    else
                      Container(),
                    if (currentIndex < widget.imagePaths.length - 1)
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white,
                        ),
                        child: GestureDetector(
                          onTap: () {
                            _pageController.nextPage(
                              duration: Duration(milliseconds: 300),
                              curve: Curves.ease,
                            );
                            if (currentIndex < widget.imagePaths.length - 1) {
                              setState(() {
                                currentIndex++;
                              });
                            }
                          },
                          child: Icon(Icons.arrow_forward_ios),
                        ),
                      )
                    else
                      Container(),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
