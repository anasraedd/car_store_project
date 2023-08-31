import 'package:cached_network_image/cached_network_image.dart';
import 'package:eccomerce_app/models/post.dart';
import 'package:eccomerce_app/theme/app_theme.dart';
import 'package:eccomerce_app/widgets/post_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class CommunityScreen extends StatelessWidget {
  const CommunityScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 30.h,
        ),
        SizedBox(
          height: 73.h,
          child: Padding(
            padding: EdgeInsetsDirectional.only(start: 10.w),
            child: ListView.builder(
                itemCount: 10,
                physics: BouncingScrollPhysics(
                  decelerationRate: ScrollDecelerationRate.fast,
                ),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsetsDirectional.symmetric(horizontal: 7.5.w),
                    child: Column(
                      children: [
                        Container(
                          color: secondaryColor,
                          height: 52,
                          width: 52,
                          child: ClipRRect(
                            clipBehavior: Clip.hardEdge,
                            borderRadius: BorderRadius.circular(55555),

                            // backgroundColor: secondaryColor,

                            child: CachedNetworkImage(
                              height: 52,
                              width: 52,
                              imageUrl:
                                  'https://firebasestorage.googleapis.com/v0/b/learning---firebase-flutter.appspot.com/o/forProject%2F-qm2h18.jpg?alt=media&token=9b7af4ec-a00b-44d7-8061-dc8b57be48ac',
                              fit: BoxFit.cover,
                              placeholder: (context, url) =>
                                  SpinKitFadingCircle(
                                color: Colors.grey.shade500,
                                size: 52.0,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        Text(
                          'Abbey',
                          style: GoogleFonts.inter(
                              fontSize: 14.sp, color: Colors.grey),
                        )
                      ],
                    ),
                  );
                }),
          ),
        ),
        SizedBox(
          height: 40.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Row(
            children: [
              Text(
                'Recommend',
                style: GoogleFonts.inter(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.bold,
                    color: primaryColor),
              ),
              Icon(
                Icons.arrow_drop_down_outlined,
                color: primaryColor,
              )
            ],
          ),
        ),
        SizedBox(
          height: 30.h,
        ),
        Expanded(
          child: ListView.builder(
              physics: BouncingScrollPhysics(
                decelerationRate: ScrollDecelerationRate.fast,
              ),
              itemCount: 10,
              itemBuilder: (context, index) {
                return PostWidget(Post(
                    idAuthor: '1',
                    nameAuther: 'Anas',
                    urlImage: 'https://firebasestorage.googleapis.com/v0/b/learning---firebase-flutter.appspot.com/o/forProject%2Fproportion169.png?alt=media&token=99f80390-140b-46e2-a88b-b2dbfe0bbbe5',
                    descriptionAuther: 'BMW 3 Series owner',
                    tilte: 'Volkswagen T-Roc: Interior dimensions revealed',
                    images: [
                      'https://firebasestorage.googleapis.com/v0/b/learning---firebase-flutter.appspot.com/o/forProject%2Fproportion169.png?alt=media&token=99f80390-140b-46e2-a88b-b2dbfe0bbbe5',
                      'https://firebasestorage.googleapis.com/v0/b/learning---firebase-flutter.appspot.com/o/forProject%2Fproportion169.png?alt=media&token=99f80390-140b-46e2-a88b-b2dbfe0bbbe5'
                    ],
                    datePublish: DateTime.now(),
                    numberLikes: 59,
                    comments: ['AAAA', 'BBBBB', 'CCCCC', 'DDDD'],
                    numberShare: 34));
              }),
        )
      ],
    );
  }
}
