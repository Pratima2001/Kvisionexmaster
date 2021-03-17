import 'package:adobe_xd/pinned.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kvmaster/EditButtonPages/ManageProductPageEditButton.dart';
import 'package:kvmaster/OnButtonClickPages/ManageProductPageButton1.dart';
import '../API/Api.dart';
import '../EditButtonPages/ManageBodiesEditButton.dart';
import '../Filter/ManageProductFilter.dart';
import '../OnButtonClickPages/ManageBodiesButton.dart';

class new1 extends StatefulWidget {
  @override
  _ManageProductPageButton1State createState() =>
      _ManageProductPageButton1State();
}

class _ManageProductPageButton1State extends State<new1> {
  @override
  Widget build(BuildContext context) {
    ScrollController _con;
    return Scaffold(
      floatingActionButton: Container(
        width: 65,
        height: 65,
        child: FittedBox(
          child: FloatingActionButton(
              backgroundColor: const Color(0xff3e45a9),
              child:
                  // Adobe XD layer: 'Icon awesome-plus' (shape)
                  SvgPicture.string(
                _svg_obtgp1,
                allowDrawingOutsideViewBox: true,
                fit: BoxFit.fill,
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => ManageProductPageButton1()));
              }),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
          color: const Color(0xff3e45a9),
          boxShadow: [
            BoxShadow(
              color: const Color(0x29000000),
              offset: Offset(0, 22),
              blurRadius: 22,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        controller: _con,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Transform.translate(
              offset: Offset(27.0, 49.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: SvgPicture.string(
                  _svg_lxlhxi,
                  allowDrawingOutsideViewBox: true,
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(27.0, 89.0),
              child: Text(
                'Product Listed',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 22,
                  color: const Color(0xff000000),
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Transform.translate(
                offset: Offset(
                    MediaQuery.of(context).size.width.toDouble() - 55, 50.0),
                child: IconButton(
                    icon: Image.asset(
                      "assets/images/filter.png",
                      width: 30,
                      height: 30,
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (_) => ManageProductFilter()));
                    })),
            Transform.translate(
              offset: Offset(5.0, 87.0),
              child: Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 20,
                  runSpacing: 20,
                  children: [
                    Container(
                        height: MediaQuery.of(context).size.height,
                        child: StreamBuilder(
                          stream: FirebaseFirestore.instance
                              .collection("ManageProducts")
                              .orderBy("createdAt", descending: true)
                              .snapshots(),
                          builder: (BuildContext context,
                              AsyncSnapshot<dynamic> snapshot) {
                            if (!snapshot.hasData) {
                              return CircularProgressIndicator();
                            }
                            return SingleChildScrollView(
                              controller: _con,
                              child: Stack(children: [
                                Container(
                                  height: 1200,
                                ),
                                //listviewbuilder
                              ]),
                            );
                          },
                        )),
                  ]),
            ),
          ],
        ),
      ),
    );
  }

  Widget showproduct() {
    return Container(
      height: 270,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.all(Radius.circular(27)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 180,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  left: 0,
                  top: 0,
                  right: 0,
                  child: Image.asset(
                    "assets/images/pexels-ave-calvar-martinez-5170697.png",
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  left: 22,
                  top: 24,
                  right: 22,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        height: 15,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Product type",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Color.fromARGB(255, 225, 225, 225),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            Spacer(),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Pidi",
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: Color.fromARGB(255, 225, 225, 225),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          margin: EdgeInsets.only(top: 113),
                          child: Text(
                            "Body Name",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Color.fromARGB(255, 225, 225, 225),
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            height: 45,
            margin: EdgeInsets.only(left: 22, right: 23, bottom: 26),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    width: 50,
                    height: 50,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            margin: EdgeInsets.only(bottom: 6),
                            child: Text(
                              "Mango",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Opacity(
                            opacity: 0.56,
                            child: Text(
                              "anklet",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Spacer(),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    width: 27,
                    height: 27,
                    margin: EdgeInsets.only(right: 5, bottom: 7),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Positioned(
                          right: 0,
                          bottom: 0,
                          child: Container(
                            width: 27,
                            height: 27,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 247, 247, 247),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                            ),
                            child: Container(),
                          ),
                        ),
                        Positioned(
                          right: 8,
                          bottom: 7,
                          child: Image.asset(
                            "assets/images/icon-material-delete.png",
                            fit: BoxFit.none,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    width: 27,
                    height: 27,
                    margin: EdgeInsets.only(bottom: 7),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Positioned(
                          right: 0,
                          bottom: 0,
                          child: Container(
                            width: 27,
                            height: 27,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 247, 247, 247),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                            ),
                            child: Container(),
                          ),
                        ),
                        Positioned(
                          right: 6,
                          bottom: 7,
                          child: Image.asset(
                            "assets/images/icon-material-edit.png",
                            fit: BoxFit.none,
                          ),
                        ),
                      ],
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

  _showDialog(String msg) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Text(msg),
          );
        });
  }
}

const String _svg_amx086 =
    '<svg viewBox="159.3 154.3 13.8 13.8" ><path transform="translate(154.85, 149.75)" d="M 4.5 15.43387126922607 L 4.5 18.31168746948242 L 7.377816200256348 18.31168746948242 L 15.86545658111572 9.824048042297363 L 12.98764038085938 6.946230888366699 L 4.5 15.43387126922607 Z M 18.09096717834473 7.598536491394043 C 18.3902587890625 7.299243927001953 18.3902587890625 6.815770149230957 18.09096717834473 6.516478538513184 L 16.29520988464355 4.720720291137695 C 15.9959192276001 4.421426773071289 15.51244640350342 4.421426773071289 15.21315288543701 4.720720291137695 L 13.80877780914307 6.125094413757324 L 16.68659210205078 9.002911567687988 L 18.09096717834473 7.598536491394043 Z" fill="#abdc55" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_rmirba =
    '<svg viewBox="131.5 153.9 11.0 14.1" ><path transform="translate(124.04, 149.43)" d="M 8.285051345825195 17.06081581115723 C 8.285051345825195 17.92437171936035 8.991598129272461 18.63091659545898 9.855154037475586 18.63091659545898 L 16.13556098937988 18.63091659545898 C 16.99911689758301 18.63091659545898 17.70566177368164 17.92437171936035 17.70566177368164 17.06081581115723 L 17.70566177368164 7.640205383300781 L 8.285051345825195 7.640205383300781 L 8.285051345825195 17.06081581115723 Z M 18.49071502685547 5.285051345825195 L 15.74303436279297 5.285051345825195 L 14.95798492431641 4.5 L 11.03272914886475 4.5 L 10.24767875671387 5.285051345825195 L 7.5 5.285051345825195 L 7.5 6.85515308380127 L 18.49071502685547 6.85515308380127 L 18.49071502685547 5.285051345825195 Z" fill="#e53c3c" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_obtgp1 =
    '<svg viewBox="328.0 739.6 26.8 26.8" ><path transform="translate(328.0, 737.37)" d="M 24.84039115905762 12.75939655303955 L 16.24179458618164 12.75939655303955 L 16.24179458618164 4.160799026489258 C 16.24179458618164 3.105679750442505 15.3861141204834 2.25 14.33099460601807 2.25 L 12.42019557952881 2.25 C 11.36507511138916 2.25 10.50939559936523 3.105679750442505 10.50939559936523 4.160799026489258 L 10.50939559936523 12.75939655303955 L 1.910799264907837 12.75939655303955 C 0.8556798100471497 12.75939655303955 0 13.61507606506348 0 14.67019557952881 L 0 16.58099555969238 C 0 17.6361141204834 0.8556798100471497 18.49179458618164 1.910799264907837 18.49179458618164 L 10.50939559936523 18.49179458618164 L 10.50939559936523 27.09039115905762 C 10.50939559936523 28.1455078125 11.36507511138916 29.00119018554688 12.42019557952881 29.00119018554688 L 14.33099460601807 29.00119018554688 C 15.3861141204834 29.00119018554688 16.24179458618164 28.1455078125 16.24179458618164 27.09039115905762 L 16.24179458618164 18.49179458618164 L 24.84039115905762 18.49179458618164 C 25.89550971984863 18.49179458618164 26.75119018554688 17.6361141204834 26.75119018554688 16.58099555969238 L 26.75119018554688 14.67019557952881 C 26.75119018554688 13.61507606506348 25.89550971984863 12.75939655303955 24.84039115905762 12.75939655303955 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_lxlhxi =
    '<svg viewBox="27.0 33.0 27.0 18.0" ><path transform="translate(22.5, 24.0)" d="M 31.5 16.5 L 10.24499988555908 16.5 L 15.61499977111816 11.11499977111816 L 13.5 9 L 4.5 18 L 13.5 27 L 15.61499977111816 24.88500022888184 L 10.24499988555908 19.5 L 31.5 19.5 L 31.5 16.5 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_g4wkax =
    '<svg viewBox="27.0 33.0 355.0 57.0" ><path transform="translate(364.59, 72.59)" d="M 16.59087181091309 0 L 0.8169402480125427 0 C 0.09214209765195847 0 -0.2735889256000519 0.8794271945953369 0.2399712651968002 1.392987489700317 L 6.527878761291504 7.681847095489502 L 6.527878761291504 14.68771934509277 C 6.527878761291504 14.9539680480957 6.657791137695313 15.20348930358887 6.875930309295654 15.35621356964111 L 9.595877647399902 17.25949859619141 C 10.13248920440674 17.63512229919434 10.87979602813721 17.25443267822266 10.87979602813721 16.59100341796875 L 10.87979602813721 7.681847095489502 L 17.16787528991699 1.392987489700317 C 17.68038177490234 0.8804472088813782 17.31716728210449 0 16.59087181091309 0 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(22.5, 24.0)" d="M 31.5 16.5 L 10.24499988555908 16.5 L 15.61499977111816 11.11499977111816 L 13.5 9 L 4.5 18 L 13.5 27 L 15.61499977111816 24.88500022888184 L 10.24499988555908 19.5 L 31.5 19.5 L 31.5 16.5 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
