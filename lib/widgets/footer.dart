import 'package:animate_icons/animate_icons.dart';
import 'package:flutter/material.dart';
import 'package:pwa/utils/exports.dart';

class Footer extends StatefulWidget {
  @override
  _FooterState createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  AnimateIconController? controller = AnimateIconController();
  // AnimateIconController? controller2 = AnimateIconController();
  // AnimateIconController? controller3 = AnimateIconController();

  // bool togglebool1 = true;
  // bool togglebool2 = true;
  // bool togglebool3 = true;
  // bool togglebool4 = true;
  // bool togglebool5 = true;
  // bool togglebool6 = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.infinity,
      color: kdarkVariant,
      child: Column(
        children: [
          Container(
            // duration: Duration(milliseconds: 500),
            // curve: Curves.easeInBack,
            width: double.infinity,
            height: 60,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 39),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'ABOUT US',
                        style: kfooterTS,
                        textAlign: TextAlign.center,
                      ),
                      AnimateIcons(
                        startIcon: Icons.keyboard_arrow_right,
                        endIcon: Icons.keyboard_arrow_down,
                        size: 23.0,
                        controller: controller!,
                        onStartIconPress: () {
                          setState(() {});

                          return true;
                        },
                        onEndIconPress: () {
                          setState(() {
                            setState(() {});
                          });
                          return true;
                        },
                        startTooltip: 'Icons.keyboard_arrow_right',
                        // add this tooltip for the end icon
                        endTooltip: 'Icons.keyboard_arrow_down',
                        duration: Duration(milliseconds: 300),
                        startIconColor: Colors.white,
                        endIconColor: Colors.white,
                        clockwise: true,
                      ),
                    ],
                  ),
                ),
                // if (!togglebool1)
                //   Container(
                //     height: 240,
                //     width: double.infinity,
                //     color: Colors.white,
                //   )
              ],
            ),
          ),
          Container(
            // duration: Duration(milliseconds: 500),
            // curve: Curves.easeInBack,
            width: double.infinity,
            height: 60,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 39),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Departments',
                        style: kfooterTS,
                        textAlign: TextAlign.center,
                      ),
                      AnimateIcons(
                        startIcon: Icons.keyboard_arrow_right,
                        endIcon: Icons.keyboard_arrow_down,
                        size: 23.0,
                        controller: controller!,
                        onStartIconPress: () {
                          setState(() {});

                          return true;
                        },
                        onEndIconPress: () {
                          setState(() {
                            setState(() {});
                          });
                          return true;
                        },
                        startTooltip: 'Icons.keyboard_arrow_right',
                        // add this tooltip for the end icon
                        endTooltip: 'Icons.keyboard_arrow_down',
                        duration: Duration(milliseconds: 300),
                        startIconColor: Colors.white,
                        endIconColor: Colors.white,
                        clockwise: true,
                      ),
                    ],
                  ),
                ),
                // if (!togglebool1)
                //   Container(
                //     height: 240,
                //     width: double.infinity,
                //     color: Colors.white,
                //   )
              ],
            ),
          ),
          Container(
            // duration: Duration(milliseconds: 500),
            // curve: Curves.easeInBack,
            width: double.infinity,
            height: 60,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 39),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Help',
                        style: kfooterTS,
                        textAlign: TextAlign.center,
                      ),
                      AnimateIcons(
                        startIcon: Icons.keyboard_arrow_right,
                        endIcon: Icons.keyboard_arrow_down,
                        size: 23.0,
                        controller: controller!,
                        onStartIconPress: () {
                          setState(() {});

                          return true;
                        },
                        onEndIconPress: () {
                          setState(() {
                            setState(() {});
                          });
                          return true;
                        },
                        startTooltip: 'Icons.keyboard_arrow_right',
                        // add this tooltip for the end icon
                        endTooltip: 'Icons.keyboard_arrow_down',
                        duration: Duration(milliseconds: 300),
                        startIconColor: Colors.white,
                        endIconColor: Colors.white,
                        clockwise: true,
                      ),
                    ],
                  ),
                ),
                // if (!togglebool1)
                //   Container(
                //     height: 240,
                //     width: double.infinity,
                //     color: Colors.white,
                //   )
              ],
            ),
          ),
          Container(
            // duration: Duration(milliseconds: 500),
            // curve: Curves.easeInBack,
            width: double.infinity,
            height: 60,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 39),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Payments & Delivery',
                        style: kfooterTS,
                        textAlign: TextAlign.center,
                      ),
                      AnimateIcons(
                        startIcon: Icons.keyboard_arrow_right,
                        endIcon: Icons.keyboard_arrow_down,
                        size: 23.0,
                        controller: controller!,
                        onStartIconPress: () {
                          setState(() {});

                          return true;
                        },
                        onEndIconPress: () {
                          setState(() {
                            setState(() {});
                          });
                          return true;
                        },
                        startTooltip: 'Icons.keyboard_arrow_right',
                        // add this tooltip for the end icon
                        endTooltip: 'Icons.keyboard_arrow_down',
                        duration: Duration(milliseconds: 300),
                        startIconColor: Colors.white,
                        endIconColor: Colors.white,
                        clockwise: true,
                      ),
                    ],
                  ),
                ),
                // if (!togglebool1)
                //   Container(
                //     height: 240,
                //     width: double.infinity,
                //     color: Colors.white,
                //   )
              ],
            ),
          ),
          Container(
            // duration: Duration(milliseconds: 500),
            // curve: Curves.easeInBack,
            width: double.infinity,
            height: 60,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 39),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Social',
                        style: kfooterTS,
                        textAlign: TextAlign.center,
                      ),
                      AnimateIcons(
                        startIcon: Icons.keyboard_arrow_right,
                        endIcon: Icons.keyboard_arrow_down,
                        size: 23.0,
                        controller: controller!,
                        onStartIconPress: () {
                          setState(() {});

                          return true;
                        },
                        onEndIconPress: () {
                          setState(() {
                            setState(() {});
                          });
                          return true;
                        },
                        startTooltip: 'Icons.keyboard_arrow_right',
                        // add this tooltip for the end icon
                        endTooltip: 'Icons.keyboard_arrow_down',
                        duration: Duration(milliseconds: 300),
                        startIconColor: Colors.white,
                        endIconColor: Colors.white,
                        clockwise: true,
                      ),
                    ],
                  ),
                ),
                // if (!togglebool1)
                //   Container(
                //     height: 240,
                //     width: double.infinity,
                //     color: Colors.white,
                //   )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
