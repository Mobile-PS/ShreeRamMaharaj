import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maharaj/utils/appbar.dart';
import 'package:maharaj/utils/colors.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

import '../utils/dummymodel/dashboard_model.dart';

class PhotoViewScreen extends StatefulWidget {
  const PhotoViewScreen({super.key});

  @override
  State<PhotoViewScreen> createState() => _PhotoViewScreenState();
}

class _PhotoViewScreenState extends State<PhotoViewScreen> {
  List<Dashboardimages> Images = Dashboardimages.Img;
  int _selectedColorIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar(title: "फोटो",),
      bottomNavigationBar: SizedBox(
        width: 50,
        height: 100,
        child: Row(
          children: [
            for (int i = 0;
            i < Images!.length;
            i++)
              GestureDetector(
                onTap: () async {

                  setState(() {
                    _selectedColorIndex = i;
                  });

                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color:
                                _selectedColorIndex == i
                                    ? kOrange
                                    : kgrey)),
                        child: Image.asset(
                          Images![i].images,
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            SizedBox(height: 10),
          ],
        ),
      ),
      body: PhotoViewGallery.builder(

        itemCount: Images.length,
        builder: (context, index) {
          return PhotoViewGalleryPageOptions(
            imageProvider: AssetImage( Images[index].images),
            minScale: PhotoViewComputedScale.contained,
            maxScale: PhotoViewComputedScale.covered * 2,
          );
        },
        pageController: PageController(initialPage: 0),
        onPageChanged: (index) {},
        scrollPhysics: BouncingScrollPhysics(),
        backgroundDecoration: BoxDecoration(
          color: Colors.white,
        ),
      ),
    );
  }
}
