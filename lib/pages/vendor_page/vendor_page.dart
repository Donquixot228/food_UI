import 'package:flutter/material.dart';
import 'package:native_splash_video/animations/fade_animation.dart';
import 'package:native_splash_video/animations/page_transition.dart';
import 'package:native_splash_video/animations/slide_animation.dart';
import 'package:native_splash_video/data.dart';
import 'package:native_splash_video/pages/home_page/widgets/clipped_container.dart';
import 'package:native_splash_video/pages/pruduct_page/product_page.dart';
import 'package:native_splash_video/pages/vendor_page/widgets/product_item_card.dart';
import 'package:native_splash_video/pages/vendor_page/widgets/vendor_info_card.dart';
import 'package:native_splash_video/utils/utils.dart';
import 'package:native_splash_video/widgets/custom_app_bar.dart';


class VendorPage extends StatefulWidget {
  const VendorPage({Key? key}) : super(key: key);

  @override
  _VendorPageState createState() => _VendorPageState();
}

class _VendorPageState extends State<VendorPage> {
  late double _height;

  final _duration = const Duration(milliseconds: 750);
  final _psudoDuration = const Duration(milliseconds: 150);

  _navigate() async {
    await _animateContainerFromBottomToTop();

    //push to products screen
    //wait till product is pooped
    await Navigation.push(
      context,
      customPageTransition: PageTransition(
        child: const ProductPage(),
        type: PageTransitionType.fadeIn,
      ),
    );

    await _animateContainerFromTopToBottom();
  }

  _navigateBack() async {
    await _animateContainerFromBottomToTop();

    Navigation.pop(context);
  }

  _animateContainerFromBottomToTop() async {
    //Animate back to default value
    _height = MediaQuery.of(context).padding.top + rh(50);
    setState(() {});

    //Wait till animation is finished
    await Future.delayed(_duration);
  }

  _animateContainerFromTopToBottom() async {
    //Wait
    await Future.delayed(_psudoDuration);

    //Animate from top to bottom
    _height = MediaQuery.of(context).size.height;
    setState(() {});
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    //Default height

    _height = MediaQuery.of(context).padding.top + rh(50);
    setState(() {});

    //Animate Container from Top to bottom
    _animateContainerFromTopToBottom();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: AnimatedContainer(
        height: _height,
        duration: _duration,
        padding: EdgeInsets.only(bottom: rh(20)),
        curve: Curves.fastOutSlowIn,
        decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: rh(380),
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      left: 0,
                      height: rf(330),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.asset(
                          'assets/images/temp_vendor_bg.png',
                          width: 100 * SizeConfig.heightMultiplier,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      child: CustomAppBar(
                        onBackTap: _navigateBack,
                      ),
                    ),
                    const Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: ClippedContainer(
                        backgroundColor: Colors.white,
                        child: VendorInfoCard(
                          title: 'New York Donut',
                          rating: 4.2,
                          sideImagePath: 'assets/images/temp_vendor_logo.png',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: rh(space5x)),
              FadeAnimation(
                intervalStart: 0.4,
                duration: const Duration(milliseconds: 1250),
                child: SlideAnimation(
                  begin: const Offset(0, 100),
                  intervalStart: 0.4,
                  duration: const Duration(milliseconds: 1250),
                  child: ListView.separated(
                    itemCount: productList.length,
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    separatorBuilder: (BuildContext context, int index) {
                      return Divider(
                        height: rh(space4x),
                        endIndent: rw(20),
                        indent: rw(20),
                      );
                    },
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: _navigate,
                        child: ProductItem(
                          imagePath: productList[index]['imagePath'],
                          title: productList[index]['title'],
                          detail: productList[index]['detail'],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
