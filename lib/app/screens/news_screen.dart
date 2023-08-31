import 'package:eccomerce_app/models/news.dart';
import 'package:eccomerce_app/models/post.dart';
import 'package:eccomerce_app/theme/app_theme.dart';
import 'package:eccomerce_app/utils/my_behavior.dart';
import 'package:eccomerce_app/widgets/actions_review_widget.dart';
import 'package:eccomerce_app/widgets/card_news_widget.dart';
import 'package:eccomerce_app/widgets/news_widget.dart';
import 'package:eccomerce_app/widgets/post_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('News', style: GoogleFonts.roboto(
            fontSize: 14.sp
        ),),
        centerTitle: true,
        elevation: 0,
        leading: IconButton(onPressed: (){
          Get.back();
        }, icon: Icon(Icons.arrow_back_outlined)) ,
        actions: [
          Padding(
            padding:  EdgeInsetsDirectional.only(end: 20.w),
            child: SvgPicture.asset('assets/icons/share_news.svg'),
          )

        ],

      ),
      body: ScrollConfiguration(
        behavior: MyBehavior(),
        child: SingleChildScrollView(

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
SizedBox(height: 30.h,),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20.w),
                child: Text('Porsche\'s First Electric Car Named Taycan; Will Rival Tesla Model S ', style: GoogleFonts.roboto(fontSize: 20.sp, fontWeight: FontWeight.bold),),
              ),
              NewsWidget(news: News(
                  idAuthor: '1',
                  nameAuther: 'Anas',
                  urlImage: 'https://firebasestorage.googleapis.com/v0/b/learning---firebase-flutter.appspot.com/o/forProject%2Fproportion169.png?alt=media&token=99f80390-140b-46e2-a88b-b2dbfe0bbbe5',
                  descriptionAuther: 'BMW 3 Series owner',
                  tilte: 'Porsche has announced the name of its Tesla Model S rival, the production-spec Mission E concept. Called the Taycan, the electric sedan is all set to get into production by next year, ahead of its international debut in 2020. The Taycan will be the first electric car by Porsche and it will continue to be a performance-oriented sportscar staying true to the Porsche tradition.',
                  images: [
                    'https://firebasestorage.googleapis.com/v0/b/learning---firebase-flutter.appspot.com/o/forProject%2Fproportion169.png?alt=media&token=99f80390-140b-46e2-a88b-b2dbfe0bbbe5',
                    'https://firebasestorage.googleapis.com/v0/b/learning---firebase-flutter.appspot.com/o/forProject%2Fproportion169.png?alt=media&token=99f80390-140b-46e2-a88b-b2dbfe0bbbe5'
                  ],
                  datePublish: DateTime.now(),

              ),),
              SizedBox(height: 30.h,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Text(
                  'Related',
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w700,
                      fontSize: 20.sp,
                      color: Colors.black),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              ScrollConfiguration(
                behavior: MyBehavior(),
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: (){
                        Get.toNamed('/view_vedio_screen');
                      },
                      child: CardNewsWidget(
                          title: 'Porsche Type 997 911 GT2 RSR Flat Out At Monza',
                          publisher: 'By Akshit',
                          datePublish: 'Sep 05,2020',
                          urlImage:
                          'https://firebasestorage.googleapis.com/v0/b/learning---firebase-flutter.appspot.com/o/forProject%2FRectangle%20496.png?alt=media&token=df9f8892-dd4e-4cb0-85b9-ec45990976dd'),
                    );
                  },
                  itemCount: 5,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: ActionsReviewWidget(),

    );
  }
}
