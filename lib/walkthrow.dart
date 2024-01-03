import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:orthophonienewversion/auth/signIn.dart';
import 'package:orthophonienewversion/model/onboarding-model.dart';
import 'package:orthophonienewversion/utils/app-navigator.dart';
import 'package:orthophonienewversion/utils/config.dart';
import 'package:orthophonienewversion/utils/dotIndicator.dart';
import 'package:orthophonienewversion/utils/shared-pref-helper.dart';


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
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return Scaffold(
    //  backgroundColor: context.scaffoldBackgroundColor,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [

          Positioned(
            top: width*0.3,
            width: width,
            height: height,
            child: PageView.builder(
              itemCount: pages.length,
              itemBuilder: (BuildContext context, int index) {
                WalkThroughModelClass page = pages[index];
                return Container(
                  padding: EdgeInsets.only(left: width*0.05, right: width*0.05),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                     // Image.asset(page.image!, height:height* 0.55),
                      Center(
                        child: SizedBox(
                            height:height*0.5,
                            child: Lottie.asset('assets/lottie/speech.json')),
                      ),

                      Text(page.title.toString(),  textAlign: TextAlign.center,  style: TextStyle(
                        fontSize: width*0.06,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'myriadBold',
                      ),),

                      Text(page.subTitle.toString(), textAlign: TextAlign.center,
                        style: TextStyle(
                        fontSize: width*0.045,
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
            bottom: width*0.05,
            left: width*0.05,
            right:width*0.05,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  style: ButtonStyle(padding: MaterialStateProperty.all(EdgeInsets.zero)),
                  onPressed: ()  {

                    push(context: context, screen: SignInScreen());
                /*    await setValue(IS_FIRST_TIME, false);
                    DashboardScreen().launch(context, isNewTask: true, pageRouteAnimation: PageRouteAnimation.Fade);
                */  },
                  child: Text("تخطي", style: TextStyle(
                      fontSize:  width*0.04,
                      color: Colors.grey,
                      fontFamily: 'myriad',

                  ),),
                ),
                DotIndicator(
                  pageController: pageController,
                  pages: pages,
                  indicatorColor: primaryColor,
                  unselectedIndicatorColor: primaryColor,
                  currentBoxShape: BoxShape.circle,
                  boxShape: BoxShape.circle,
                  dotSize: 6,
                ),
                SizedBox(
                  width: width*0.3,
                  child: TextButton(
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(EdgeInsets.zero),
                      backgroundColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
                        // Use different colors based on the button state
                        if (states.contains(MaterialState.pressed)) {
                          return pinklight; // Background color when pressed
                        }
                        return primaryColor; // Default background color
                      }),
                    ),
                    onPressed: () async {
                      if (currentPosition == 3) {

                          await SharedPreferencesHelper.setBool("FIRST_USE",true);
                           pushAndRemove(context: context, screen: SignInScreen());
                         } else {
                           pageController.nextPage(duration:const Duration(milliseconds: 500), curve: Curves.linearToEaseOut);
                      }
                    },
                    child: Text(
                      currentPosition == 3 ? "إبدأ" : "التالي",
                      style:  TextStyle(
                        fontSize: width*0.04,
                        color: Colors.white, // Text color
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
