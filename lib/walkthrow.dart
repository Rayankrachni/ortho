import 'package:flutter/material.dart';
import 'package:orthophonienewversion/model/onboarding-model.dart';
import 'package:orthophonienewversion/utils/config.dart';
import 'package:orthophonienewversion/utils/decoration.dart';
import 'package:orthophonienewversion/utils/dotIndicator.dart';


class WalkThroughScreen extends StatefulWidget {
  @override
  _WalkThroughScreenState createState() => _WalkThroughScreenState();
}

class _WalkThroughScreenState extends State<WalkThroughScreen> {
  List<WalkThroughModelClass> pages = [];
  int currentPosition = 0;
  PageController pageController = PageController();

  @override
  void initState() {
    super.initState();
    init();


  }

  init() async {
    pageController = PageController(initialPage: 0);

      pages.add(WalkThroughModelClass(title: "حصيلة الارطوفونية", image: "assets/onboarding1.png", subTitle: " للاطفال المعاقين سمعيا  الحاملين لزرع قوقعي و المعين السمعي"));
      pages.add(WalkThroughModelClass(title: "اهلا انا هديل ", image:"assets/onboarding2.png", subTitle: "سعدت بمعرفتك صديقي"));
      pages.add(WalkThroughModelClass(title: "انت الان في رحلة ليست بطويلة معنا", image:"assets/onboarding1.png", subTitle: "هل انت مستعد؟"));

      setState(() {});

  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return Scaffold(
    //  backgroundColor: context.scaffoldBackgroundColor,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Positioned(
            left: 56,
            top: -304,
            child: Container(
              height: height * 0.90,
              width: width * 1.89,
              decoration: boxDecorationDefault(
                shape: BoxShape.circle,
                boxShadow: defaultBoxShadow(blurRadius: 0, spreadRadius: 0),
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            top: 106,
            width: width,
            height: height,
            child: PageView.builder(
              itemCount: pages.length,
              itemBuilder: (BuildContext context, int index) {
                WalkThroughModelClass page = pages[index];
                return Container(
                  padding:const EdgeInsets.only(left: 30, right: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(page.image!, height:height* 0.55),

                      Text(page.title.toString(),  textAlign: TextAlign.center,  style:const TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'myriadBold',
                      ),),

                      Text(page.subTitle.toString(), textAlign: TextAlign.center,
                        style:const TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                          fontFamily: 'myriad',

                      ),),
                    ],
                  ),
                );
              },
              controller: pageController,
              scrollDirection: Axis.horizontal,
              onPageChanged: (num) {
                currentPosition = num + 1;
                setState(() {});
              },
            ),
          ),
          Positioned(
            bottom: 16,
            left: 16,
            right: 16,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  style: ButtonStyle(padding: MaterialStateProperty.all(EdgeInsets.zero)),
                  onPressed: () async {
                /*    await setValue(IS_FIRST_TIME, false);
                    DashboardScreen().launch(context, isNewTask: true, pageRouteAnimation: PageRouteAnimation.Fade);
                */  },
                  child:const Text("Skip", style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                      fontFamily: 'myriad',

                  ),),
                ),
                DotIndicator(
                  pageController: pageController,
                  pages: pages,
                  indicatorColor: primaryColor,
                  unselectedIndicatorColor: Colors.green,
                  currentBoxShape: BoxShape.circle,
                  boxShape: BoxShape.circle,
                  dotSize: 6,
                ),
                TextButton(
                  style: ButtonStyle(padding: MaterialStateProperty.all(EdgeInsets.zero)),
                  onPressed: () async {
                    if (currentPosition == 3) {
                     // push(context: context, screen: SignInScreen());
                  //    await setValue(IS_FIRST_TIME, false);
                  //    DashboardScreen().launch(context, isNewTask: true, pageRouteAnimation: PageRouteAnimation.Fade);
                    } else {
                      pageController.nextPage(duration:Duration(milliseconds: 500), curve: Curves.linearToEaseOut);
                    }
                  },
                  child: Text(currentPosition == 3 ? "إبدأ" : "التالي", style:const TextStyle(
                      fontSize: 14,
                      color: Colors.black

                  ),),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
