import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:kvmaster/Filter/ManageProductFilterPage.dart';
import 'package:kvmaster/Filter/ManageProductFilterPage.dart';

class ManageProductFilter extends StatefulWidget {
  ManageProductFilter({
    Key key,
  }) : super(key: key);

  @override
  _ManageProductPageButton1State createState() =>
      _ManageProductPageButton1State();
}

class _ManageProductPageButton1State extends State<ManageProductFilter> {
  bool val = true;
  bool productType = false;
  String productTypeVal;
  bool body = false;
  String bodyVal;
  bool pidi = false;
  String pidiVal;
  ScrollController con;
  int height;

  @override
  Widget build(BuildContext context) {
    _showDialog(String msg) {
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: Text(msg),
            );
          });
    }

    return Scaffold(
        backgroundColor: const Color(0xfff7f7f7),
        body: OrientationBuilder(builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            height = MediaQuery.of(context).size.height.toInt();
          } else {
            height = MediaQuery.of(context).size.width.toInt();
          }
          return SingleChildScrollView(
              controller: con,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: height.toDouble(),
                color: const Color(0x612e74bf),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Transform.translate(
                      offset: Offset(27.0, 66.0),
                      child: Text(
                        'Products Listed',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 22,
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    Center(
                      child: Container(
                        width: 303,
                        height: 450,
                        decoration: BoxDecoration(
                          color: const Color(0xffffffff),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0x29000000),
                              offset: Offset(0, 22),
                              blurRadius: 22,
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: 140,
                              padding:
                                  EdgeInsets.only(left: 15, right: 15, top: 20),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Filters',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 22,
                                          color: const Color(0xff000000),
                                          fontWeight: FontWeight.w700,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                      Text(
                                        'Remove Filters',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 13,
                                          color: const Color(0xa6000000),
                                          fontWeight: FontWeight.w300,
                                        ),
                                        textAlign: TextAlign.right,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '\n\nProduct Type1',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 12,
                                          color: const Color(0xff000000),
                                          fontWeight: FontWeight.w300,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Product Type',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 12,
                                          color: const Color(0xff000000),
                                          fontWeight: FontWeight.w300,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                      Checkbox(
                                        activeColor: const Color(0xff3e45a9),
                                        checkColor: Colors.white,
                                        value: productType,
                                        onChanged: (val1) {
                                          setState(() {
                                            productType = val1;
                                            if (productType == true) {
                                              productTypeVal = "productType";
                                            }
                                          });
                                        },
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Divider(),
                            Container(
                              height: 80,
                              padding:
                                  EdgeInsets.only(left: 15, right: 15, top: 0),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '\nBody1',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 12,
                                          color: const Color(0xff000000),
                                          fontWeight: FontWeight.w300,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Body2',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 12,
                                          color: const Color(0xff000000),
                                          fontWeight: FontWeight.w300,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                      Checkbox(
                                        activeColor: const Color(0xff3e45a9),
                                        checkColor: Colors.white,
                                        value: body,
                                        onChanged: (val1) {
                                          setState(() {
                                            body = val1;
                                            if (body == true) {
                                              bodyVal = "body";
                                            }
                                          });
                                        },
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Divider(),
                            Container(
                              height: 80,
                              padding:
                                  EdgeInsets.only(left: 15, right: 15, top: 0),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '\nPidi1',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 12,
                                          color: const Color(0xff000000),
                                          fontWeight: FontWeight.w300,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Pidi2',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 12,
                                          color: const Color(0xff000000),
                                          fontWeight: FontWeight.w300,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                      Checkbox(
                                        hoverColor: const Color(0xff3e45a9),
                                        activeColor: const Color(0xff3e45a9),
                                        checkColor: Colors.white,
                                        value: pidi,
                                        onChanged: (val1) {
                                          setState(() {
                                            pidi = val1;
                                            if (pidi == true) {
                                              pidiVal = "pidi";
                                            }
                                          });
                                        },
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Divider(),
                            Container(
                                margin: EdgeInsets.only(top: 25),
                                child: Center(
                                    child: RaisedButton(
                                  color: const Color(0xff3e45a9),
                                  shape: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: const Color(0xff3e45a9),
                                    ),
                                    borderRadius: BorderRadius.circular(13.0),
                                  ),
                                  onPressed: () {
                                    print("tap");
                                    if (productType == true && body == true) {
                                      _showDialog(
                                          "Select One option for Filter.");
                                    } else if (body == true) {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (_) =>
                                                  ManageProductFilterPage(
                                                    filter: bodyVal,
                                                  )));
                                    } else if (pidi == true) {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (_) =>
                                                  ManageProductFilterPage(
                                                    filter: pidiVal,
                                                  )));
                                    } else if (productType == true &&
                                        body == true) {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (_) =>
                                                  ManageProductFilterPage(
                                                    filter: productTypeVal,
                                                  )));
                                    }
                                  },
                                  child: Text(
                                    '  Apply Filters  ',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 13,
                                      color: const Color(0xffffffff),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                )))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ));
        }));
  }
}

const String _svg_32l8oh =
    '<svg viewBox="291.0 337.9 44.8 14.1" ><path transform="translate(317.5, 333.75)" d="M 4.5 15.43387126922607 L 4.5 18.31168746948242 L 7.377816200256348 18.31168746948242 L 15.86545658111572 9.824048042297363 L 12.98764038085938 6.946230888366699 L 4.5 15.43387126922607 Z M 18.09096717834473 7.598536491394043 C 18.3902587890625 7.299243927001953 18.3902587890625 6.815770149230957 18.09096717834473 6.516478538513184 L 16.29520988464355 4.720720291137695 C 15.9959192276001 4.421426773071289 15.51244640350342 4.421426773071289 15.21315288543701 4.720720291137695 L 13.80877780914307 6.125094413757324 L 16.68659210205078 9.002911567687988 L 18.09096717834473 7.598536491394043 Z" fill="#abdc55" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(283.5, 333.43)" d="M 8.285051345825195 17.06081581115723 C 8.285051345825195 17.92437171936035 8.991598129272461 18.63091659545898 9.855154037475586 18.63091659545898 L 16.13556098937988 18.63091659545898 C 16.99911689758301 18.63091659545898 17.70566177368164 17.92437171936035 17.70566177368164 17.06081581115723 L 17.70566177368164 7.640205383300781 L 8.285051345825195 7.640205383300781 L 8.285051345825195 17.06081581115723 Z M 18.49071502685547 5.285051345825195 L 15.74303436279297 5.285051345825195 L 14.95798492431641 4.5 L 11.03272914886475 4.5 L 10.24767875671387 5.285051345825195 L 7.5 5.285051345825195 L 7.5 6.85515308380127 L 18.49071502685547 6.85515308380127 L 18.49071502685547 5.285051345825195 Z" fill="#e53c3c" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_obtgp1 =
    '<svg viewBox="328.0 739.6 26.8 26.8" ><path transform="translate(328.0, 737.37)" d="M 24.84039115905762 12.75939655303955 L 16.24179458618164 12.75939655303955 L 16.24179458618164 4.160799026489258 C 16.24179458618164 3.105679750442505 15.3861141204834 2.25 14.33099460601807 2.25 L 12.42019557952881 2.25 C 11.36507511138916 2.25 10.50939559936523 3.105679750442505 10.50939559936523 4.160799026489258 L 10.50939559936523 12.75939655303955 L 1.910799264907837 12.75939655303955 C 0.8556798100471497 12.75939655303955 0 13.61507606506348 0 14.67019557952881 L 0 16.58099555969238 C 0 17.6361141204834 0.8556798100471497 18.49179458618164 1.910799264907837 18.49179458618164 L 10.50939559936523 18.49179458618164 L 10.50939559936523 27.09039115905762 C 10.50939559936523 28.1455078125 11.36507511138916 29.00119018554688 12.42019557952881 29.00119018554688 L 14.33099460601807 29.00119018554688 C 15.3861141204834 29.00119018554688 16.24179458618164 28.1455078125 16.24179458618164 27.09039115905762 L 16.24179458618164 18.49179458618164 L 24.84039115905762 18.49179458618164 C 25.89550971984863 18.49179458618164 26.75119018554688 17.6361141204834 26.75119018554688 16.58099555969238 L 26.75119018554688 14.67019557952881 C 26.75119018554688 13.61507606506348 25.89550971984863 12.75939655303955 24.84039115905762 12.75939655303955 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_lbtdbr =
    '<svg viewBox="27.0 33.0 355.0 57.0" ><path transform="translate(22.5, 24.0)" d="M 31.5 16.5 L 10.24499988555908 16.5 L 15.61499977111816 11.11499977111816 L 13.5 9 L 4.5 18 L 13.5 27 L 15.61499977111816 24.88500022888184 L 10.24499988555908 19.5 L 31.5 19.5 L 31.5 16.5 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(364.59, 72.59)" d="M 16.59087181091309 0 L 0.8169402480125427 0 C 0.09214209765195847 0 -0.2735889256000519 0.8794271945953369 0.2399712651968002 1.392987489700317 L 6.527878761291504 7.681847095489502 L 6.527878761291504 14.68771934509277 C 6.527878761291504 14.9539680480957 6.657791137695313 15.20348930358887 6.875930309295654 15.35621356964111 L 9.595877647399902 17.25949859619141 C 10.13248920440674 17.63512229919434 10.87979602813721 17.25443267822266 10.87979602813721 16.59100341796875 L 10.87979602813721 7.681847095489502 L 17.16787528991699 1.392987489700317 C 17.68038177490234 0.8804472088813782 17.31716728210449 0 16.59087181091309 0 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_juzwha =
    '<svg viewBox="-683.0 1980.0 8.5 6.3" ><path transform="translate(-683.0, 1975.42)" d="M 2.882250070571899 10.78107452392578 L 0.124287910759449 8.023111343383789 C -0.04140529409050941 7.857418537139893 -0.04140529409050941 7.588765621185303 0.124287910759449 7.423056125640869 L 0.724327027797699 6.823000431060791 C 0.8900200724601746 6.657290458679199 1.158689379692078 6.657290458679199 1.324382543563843 6.823000431060791 L 3.182277679443359 8.680878639221191 L 7.16168212890625 4.70149040222168 C 7.327374935150146 4.535797595977783 7.596044540405273 4.535797595977783 7.761738300323486 4.70149040222168 L 8.361777305603027 5.301546573638916 C 8.527470588684082 5.467239856719971 8.527470588684082 5.735892295837402 8.361777305603027 5.901602268218994 L 3.482305526733398 10.78108978271484 C 3.316595554351807 10.9467830657959 3.047943115234375 10.9467830657959 2.882250070571899 10.78107452392578 Z" fill="#abdc55" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_fap4f0 =
    '<svg viewBox="-683.0 2081.0 8.5 6.3" ><path transform="translate(-683.0, 2076.42)" d="M 2.882250070571899 10.78107452392578 L 0.124287910759449 8.023111343383789 C -0.04140529409050941 7.857418537139893 -0.04140529409050941 7.588765621185303 0.124287910759449 7.423056125640869 L 0.724327027797699 6.823000431060791 C 0.8900200724601746 6.657290458679199 1.158689379692078 6.657290458679199 1.324382543563843 6.823000431060791 L 3.182277679443359 8.680878639221191 L 7.16168212890625 4.70149040222168 C 7.327374935150146 4.535797595977783 7.596044540405273 4.535797595977783 7.761738300323486 4.70149040222168 L 8.361777305603027 5.301546573638916 C 8.527470588684082 5.467239856719971 8.527470588684082 5.735892295837402 8.361777305603027 5.901602268218994 L 3.482305526733398 10.78108978271484 C 3.316595554351807 10.9467830657959 3.047943115234375 10.9467830657959 2.882250070571899 10.78107452392578 Z" fill="#abdc55" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_f5znbm =
    '<svg viewBox="-683.0 2211.0 8.5 6.3" ><path transform="translate(-683.0, 2206.42)" d="M 2.882250070571899 10.78107452392578 L 0.124287910759449 8.023111343383789 C -0.04140529409050941 7.857418537139893 -0.04140529409050941 7.588765621185303 0.124287910759449 7.423056125640869 L 0.724327027797699 6.823000431060791 C 0.8900200724601746 6.657290458679199 1.158689379692078 6.657290458679199 1.324382543563843 6.823000431060791 L 3.182277679443359 8.680878639221191 L 7.16168212890625 4.70149040222168 C 7.327374935150146 4.535797595977783 7.596044540405273 4.535797595977783 7.761738300323486 4.70149040222168 L 8.361777305603027 5.301546573638916 C 8.527470588684082 5.467239856719971 8.527470588684082 5.735892295837402 8.361777305603027 5.901602268218994 L 3.482305526733398 10.78108978271484 C 3.316595554351807 10.9467830657959 3.047943115234375 10.9467830657959 2.882250070571899 10.78107452392578 Z" fill="#abdc55" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_6sjw4c =
    '<svg viewBox="-942.5 2054.5 303.0 1.0" ><path transform="translate(-942.5, 2054.5)" d="M 0 0 L 303 0" fill="none" stroke="#f3f3f3" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_lpig88 =
    '<svg viewBox="-942.5 2151.5 303.0 1.0" ><path transform="translate(-942.5, 2151.5)" d="M 0 0 L 303 0" fill="none" stroke="#f3f3f3" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_zu5na =
    '<svg viewBox="-942.5 2248.5 303.0 1.0" ><path transform="translate(-942.5, 2248.5)" d="M 0 0 L 303 0" fill="none" stroke="#f3f3f3" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_6urat8 =
    '<svg viewBox="67.5 243.5 1.0 278.0" ><path transform="translate(67.5, 243.5)" d="M 0 0 L 0 58" fill="none" stroke="#f3f3f3" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(67.5, 353.5)" d="M 0 0 L 0 58" fill="none" stroke="#f3f3f3" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(67.5, 463.5)" d="M 0 0 L 0 58" fill="none" stroke="#f3f3f3" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
