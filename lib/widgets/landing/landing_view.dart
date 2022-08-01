import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../controllers/homeController.dart';
import '../../screens/home/components/InfoPalette.dart';
import '../../screens/home/home_content_desktop.dart';
import '../../screens/home/home_content_mobile.dart';
import '../centered_view/centered_view.dart';

class LandingView extends StatelessWidget {
  LandingView({Key? key}) : super(key: key);
  TextEditingController _textEditConName = TextEditingController();
  TextEditingController _textEditConEmail = TextEditingController();
  TextEditingController _textEditConPassword = TextEditingController();
  TextEditingController _textEditConConfirmPassword = TextEditingController();
  bool isPasswordVisible = false;
  bool isConfirmPasswordVisible = false;
  final FocusNode _emailFocus = FocusNode();
  final FocusNode _passwordFocus = FocusNode();

  final FocusNode _passwordConfirmFocus = FocusNode();
  @override
  Widget build(BuildContext context) => GetBuilder<HomeController>(
        init: HomeController(),
        builder: (controller) => ResponsiveBuilder(
          builder: (context, sizingInformation) {
            var textAlignment =
                sizingInformation.deviceScreenType == DeviceScreenType.desktop
                    ? TextAlign.left
                    : TextAlign.center;
            double titleSize =
                sizingInformation.deviceScreenType == DeviceScreenType.mobile
                    ? 50
                    : 80;

            double descriptionSize =
                sizingInformation.deviceScreenType == DeviceScreenType.mobile
                    ? 16
                    : 21;

            return Stack(children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/background.png"),
                    fit: BoxFit.cover,
                    colorFilter: new ColorFilter.mode(
                        Colors.black.withOpacity(0.4), BlendMode.darken),
                  ),
                ),
                height: Get.height,
                child: CenteredView(
                  child: Column(
                    children: <Widget>[
                      // if (sizingInformation.deviceScreenType !=
                      //     DeviceScreenType.mobile) ...[
                      //   Container(
                      //     color: Colors.black12,
                      //     width: Get.width,
                      //     child: Row(
                      //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //       children: [
                      //         Image.asset(
                      //           'assets/images/emclogo.png',
                      //           width: 200,
                      //           color: Colors.white.withOpacity(0.7),
                      //           colorBlendMode: BlendMode.modulate,
                      //         ),
                      //         Row(
                      //           children: [
                      //             TextButton(
                      //               child: Text(
                      //                 'Home',
                      //                 style: TextStyle(color: Colors.white),
                      //               ),
                      //               onPressed: () {},
                      //             ),
                      //             SizedBox(
                      //               width: 40,
                      //             ),
                      //             TextButton(
                      //               child: Text('Team',
                      //                   style: TextStyle(color: Colors.white)),
                      //               onPressed: () {},
                      //             ),
                      //             SizedBox(
                      //               width: 40,
                      //             ),
                      //             TextButton(
                      //               child: Text('About us',
                      //                   style: TextStyle(color: Colors.white)),
                      //               onPressed: () {},
                      //             ),
                      //             SizedBox(
                      //               width: 60,
                      //             ),
                      //             ElevatedButton(
                      //               child: Text('Contact'),
                      //               onPressed: () {
                      //                 Get.dialog(
                      //                   AlertDialog(
                      //                     title: Text('Contact Form'),
                      //                     content: Column(
                      //                       mainAxisSize: MainAxisSize.min,
                      //                       children: [
                      //                         Container(
                      //                           child: TextFormField(
                      //                             controller: _textEditConEmail,
                      //                             focusNode: _emailFocus,
                      //                             keyboardType: TextInputType
                      //                                 .emailAddress,
                      //                             textInputAction:
                      //                                 TextInputAction.next,
                      //                             onFieldSubmitted:
                      //                                 (String value) {
                      //                               FocusScope.of(context)
                      //                                   .requestFocus(
                      //                                       _passwordFocus);
                      //                             },
                      //                             decoration: InputDecoration(
                      //                                 labelText: 'Email',
                      //                                 icon: Icon(Icons.email)),
                      //                           ),
                      //                         ),
                      //                         Container(
                      //                           child: TextFormField(
                      //                             controller:
                      //                                 _textEditConPassword,
                      //                             focusNode: _passwordFocus,
                      //                             keyboardType:
                      //                                 TextInputType.text,
                      //                             textInputAction:
                      //                                 TextInputAction.next,
                      //                             onFieldSubmitted:
                      //                                 (String value) {
                      //                               FocusScope.of(context)
                      //                                   .requestFocus(
                      //                                       _passwordConfirmFocus);
                      //                             },
                      //                             obscureText:
                      //                                 !isPasswordVisible,
                      //                             decoration: InputDecoration(
                      //                                 labelText: 'Password',
                      //                                 suffixIcon: IconButton(
                      //                                   icon: Icon(isPasswordVisible
                      //                                       ? Icons.visibility
                      //                                       : Icons
                      //                                           .visibility_off),
                      //                                   onPressed: () {},
                      //                                 ),
                      //                                 icon:
                      //                                     Icon(Icons.vpn_key)),
                      //                           ),
                      //                         ),
                      //                         Container(
                      //                           child: TextFormField(
                      //                               controller:
                      //                                   _textEditConConfirmPassword,
                      //                               focusNode:
                      //                                   _passwordConfirmFocus,
                      //                               keyboardType:
                      //                                   TextInputType.text,
                      //                               textInputAction:
                      //                                   TextInputAction.done,
                      //                               obscureText:
                      //                                   !isConfirmPasswordVisible,
                      //                               decoration: InputDecoration(
                      //                                   labelText:
                      //                                       'Confirm Password',
                      //                                   suffixIcon: IconButton(
                      //                                     icon: Icon(
                      //                                         isConfirmPasswordVisible
                      //                                             ? Icons
                      //                                                 .visibility
                      //                                             : Icons
                      //                                                 .visibility_off),
                      //                                     onPressed: () {},
                      //                                   ),
                      //                                   icon: Icon(
                      //                                       Icons.vpn_key))),
                      //                         ),
                      //                       ],
                      //                     ),
                      //                     actions: [
                      //                       ElevatedButton(
                      //                           onPressed: () {},
                      //                           child: Text('Submit'))
                      //                     ],
                      //                   ),
                      //                 );
                      //               },
                      //             ),
                      //           ],
                      //         ),
                      //         IconButton(
                      //             onPressed: () {},
                      //             icon: Icon(FeatherIcons.search,
                      //                 color: Colors.white))
                      //       ],
                      //     ),
                      //   ),
                      // ],
                      Expanded(
                        child: ScreenTypeLayout(
                          mobile: HomeContentMobile(),
                          desktop: HomeContentDesktop(),
                        ),
                      ),
                      sizingInformation.deviceScreenType !=
                              DeviceScreenType.mobile
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IntrinsicHeight(
                                  child: Row(
                                    children: [
                                      Card(
                                        color: Colors.black12,
                                        child: Padding(
                                          padding: EdgeInsets.all(20),
                                          child: Column(
                                            children: [
                                              Text(
                                                'Get to know more about EMC \nFoundation.',
                                                textAlign: TextAlign.justify,
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      VerticalDivider(
                                        color: Colors.white,
                                        width: 10,
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Card(
                                        color: Colors.black12,
                                        child: Padding(
                                          padding: EdgeInsets.all(20),
                                          child: Column(
                                            children: [
                                              Text(
                                                'Primary focus of our mission is \nspreading awareness of the environment.',
                                                textAlign: TextAlign.justify,
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      VerticalDivider(
                                        color: Colors.white,
                                        width: 10,
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Card(
                                        color: Colors.black12,
                                        child: Padding(
                                          padding: EdgeInsets.all(20),
                                          child: Column(
                                            children: [
                                              Text(
                                                'Explore and learn about the Saxacalli\n Rainforest Centre',
                                                textAlign: TextAlign.justify,
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Column(
                                  children: [
                                    IconButton(
                                      onPressed: null,
                                      icon: Icon(
                                        FeatherIcons.facebook,
                                        color: Colors.white,
                                      ),
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(FeatherIcons.instagram),
                                      color: Colors.white,
                                    ),
                                    IconButton(
                                      onPressed: null,
                                      icon: Icon(
                                        FeatherIcons.mail,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          : IntrinsicHeight(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  if (sizingInformation.deviceScreenType !=
                                      DeviceScreenType.mobile) ...[
                                    Card(
                                      color: Colors.black12,
                                      child: Padding(
                                        padding: EdgeInsets.all(20),
                                        child: Column(
                                          children: [
                                            Text(
                                              'Get to know more about EMC \nFoundation.',
                                              textAlign: TextAlign.justify,
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Card(
                                      color: Colors.black12,
                                      child: Padding(
                                        padding: EdgeInsets.all(20),
                                        child: Column(
                                          children: [
                                            Text(
                                              'Primary focus of our mission is \nspreading awareness of the environment.',
                                              textAlign: TextAlign.justify,
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ],
                              ),
                            )
                    ],
                  ),
                ),
              ),
            ]);
          },
        ),
      );
}
