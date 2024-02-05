import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomOpinionContainer extends StatefulWidget {
  final String imageUrl;
  final String name;
  final String occupation;
  final String opinionTitle;
  final String opinionDetails;

  CustomOpinionContainer({
    required this.imageUrl,
    required this.name,
    required this.occupation,
    required this.opinionTitle,
    required this.opinionDetails,
  });

  @override
  State<CustomOpinionContainer> createState() => _CustomOpinionContainerState();
}

class _CustomOpinionContainerState extends State<CustomOpinionContainer> {
  final controller = PageController();
  final pages = List.generate(
    4,
        (index) => Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.grey.shade300,
      ),
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      child: Container(
        height: 280,
        child: Center(
          child: Text(
            "Page $index",
            style: TextStyle(color: Colors.indigo),
          ),
        ),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 3,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFFFFF9E1),
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.red,
            offset: Offset(0, -4),
          ),
          BoxShadow(
            color: Colors.red,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Image.network("https://www.kalbela.com/assets/verified_icon/opinion-v2.png"),
                SizedBox(width: 8),
                Text(
                  'মতামত',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          SizedBox(
            height: 180,
            width: MediaQuery.of(context).size.width,
            child: PageView.builder(
              controller: controller,
              itemCount: pages.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Container(
                              width: 80.0,
                              height: 80.0,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.red, width: 2),
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: NetworkImage(widget.imageUrl),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Text(
                              widget.name,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              widget.occupation,
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black54,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 6.0),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.opinionTitle,
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 15.0),
                              Text(
                                widget.opinionDetails,
                                maxLines: 4,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 14.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 20),
          SmoothPageIndicator(
            controller: controller,
            count: pages.length,
            effect: const WormEffect(
              activeDotColor: Colors.black,
              dotHeight: 12,
              dotWidth: 12,
              type: WormType.thinUnderground,
            ),
          ),
        ],
      ),
    );
  }
}
