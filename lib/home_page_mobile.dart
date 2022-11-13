import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';


class HomePageMobile extends StatefulWidget {
  const HomePageMobile({Key? key}) : super(key: key);

  @override
  State<HomePageMobile> createState() => _HomePageStateMobile();
}

class _HomePageStateMobile extends State<HomePageMobile> {

  launchURL(String url) async {
    if (await canLaunchUrlString(url)) {
      await launchURL(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {

    return ScreenUtilInit(
      builder: (context, child) => Scaffold(
          body: SafeArea(
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/Background_Image.jpeg'),
                      fit: BoxFit.cover
                  )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 100.sp,
                        width: 120.sp,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/logos/astro_logo.png')
                            )
                        ),
                      ),
                      Container(
                        height: 100.sp,
                        width: 120.sp,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/logos/sntc_logo.png')
                            )
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0.sp, 0.sp, 0.sp, 0.sp),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Text(
                                "B E W A R E ! ! !",
                                style: GoogleFonts.creepster(
                                  textStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 70.sp,
                                    color: Colors.white,
                                  ),
                                )
                            ),
                            Text(
                                "B E W A R E ! ! !",
                                style: GoogleFonts.creepster(
                                  textStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 70.sp,
                                    foreground: Paint()
                                      ..style = PaintingStyle.stroke
                                      ..strokeWidth = 1.sp
                                      ..color = Colors.black,
                                  ),
                                )
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0.sp, 0.sp, 0.sp, 150.sp),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Stack(
                              children: [
                                Text(
                                    "You are gonna get",
                                    style: GoogleFonts.creepster(
                                      textStyle: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30.sp,
                                        color: Colors.white,
                                      ),
                                    )
                                ),
                                Text(
                                    "You are gonna get",
                                    style: GoogleFonts.creepster(
                                      textStyle: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30.sp,
                                        foreground: Paint()
                                          ..style = PaintingStyle.stroke
                                          ..strokeWidth = 1.sp
                                          ..color = Colors.black,
                                      ),
                                    )
                                )
                              ],
                            ),
                            Stack(
                              children: [
                                Text(
                                    "sucked into a BLACKHOLE!",
                                    style: GoogleFonts.creepster(
                                      textStyle: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30.sp,
                                        color: Colors.white,
                                      ),
                                    )
                                ),
                                Text(
                                    "sucked into a BLACKHOLE!",
                                    style: GoogleFonts.creepster(
                                      textStyle: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30.sp,
                                        foreground: Paint()
                                          ..style = PaintingStyle.stroke
                                          ..strokeWidth = 1.sp
                                          ..color = Colors.black,
                                      ),
                                    )
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () {
                              const url = "https://www.instagram.com/astro.iitbhu/";
                              launchURL(url);
                            },
                            child: Container(
                              height: 70.sp,
                              width: 70.sp,
                              padding: EdgeInsets.all(12.sp),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(35.sp),
                                color: Colors.white,
                              ),
                              child: Image.asset('icons/instagram.png'),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              const url = "WhatsApp";
                              launchURL(url);
                            },
                            child: Container(
                              height: 70.sp,
                              width: 70.sp,
                              padding: EdgeInsets.all(12.sp),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(35.sp),
                                color: Colors.white,
                              ),
                              child: Image.asset('icons/whatsapp.png'),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              const url = "https://www.facebook.com/astro.iitbhu/";
                              launchURL(url);
                            },
                            child: Container(
                              height: 70.sp,
                              width: 70.sp,
                              padding: EdgeInsets.all(12.sp),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(35.sp),
                                color: Colors.white,
                              ),
                              child: Image.asset('icons/facebook.png'),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0.sp, 20.sp, 0.sp, 40.sp),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: () {
                                const url = "Discord";
                                launchURL(url);
                              },
                              child: Container(
                                height: 70.sp,
                                width: 70.sp,
                                padding: EdgeInsets.all(12.sp),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(35.sp),
                                  color: Colors.white,
                                ),
                                child: Image.asset('icons/discord.png'),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                const url = "https://www.linkedin.com/company/astroiitbhu/";
                                launchURL(url);
                              },
                              child: Container(
                                height: 70.sp,
                                width: 70.sp,
                                padding: EdgeInsets.all(12.sp),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(35.sp),
                                  color: Colors.white,
                                ),
                                child: Image.asset('icons/linkedin.png'),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                const url = "https://astroiitbhu.in/";
                                launchURL(url);
                              },
                              child: Container(
                                height: 70.sp,
                                width: 70.sp,
                                padding: EdgeInsets.all(12.sp),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(35.sp),
                                  color: Colors.white,
                                ),
                                child: Image.asset('icons/website.png'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
      ),
      designSize: const Size(480, 850),
    );
  }
}