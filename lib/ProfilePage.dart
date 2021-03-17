import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff3e45a9),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(216.0, 114.9),
            child: SizedBox(
              width: 145.0,
              height: 615.0,
              child: Stack(
                children: <Widget>[
                  Container(
                    width: 145.0,
                    height: 615.3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(41.0),
                      color: const Color(0xffffffff),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x29000000),
                          offset: Offset(-10, 3),
                          blurRadius: 55,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(52.0, 562.0),
            child:
                // Adobe XD layer: 'MESSAGES' (text)
                Text(
              'Parts',
              style: TextStyle(
                fontFamily: 'TT Norms Pro',
                fontSize: 17,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w500,
                height: 3.235294117647059,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(52.0, 606.0),
            child:
                // Adobe XD layer: 'MESSAGES' (text)
                Text(
              'Departments',
              style: TextStyle(
                fontFamily: 'TT Norms Pro',
                fontSize: 17,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w500,
                height: 3.235294117647059,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(52.0, 472.0),
            child:
                // Adobe XD layer: 'NOTIFICATIONS' (text)
                Text(
              'Bodies',
              style: TextStyle(
                fontFamily: 'TT Norms Pro',
                fontSize: 18,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w500,
                height: 3.2222222222222223,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(52.0, 427.0),
            child:
                // Adobe XD layer: 'EXPLORE' (text)
                Text(
              'Types',
              style: TextStyle(
                fontFamily: 'TT Norms Pro',
                fontSize: 17,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w500,
                height: 3.235294117647059,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(52.0, 218.0),
            child: Container(
              width: 57.0,
              height: 56.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.cover,
                ),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(52.0, 284.0),
            child:
                // Adobe XD layer: 'name' (group)
                SizedBox(
              width: 107.0,
              height: 51.0,
              child: Stack(
                children: <Widget>[
                  // Adobe XD layer: 'John Doe' (text)
                  Text(
                    'John Doe',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 20,
                      color: const Color(0xffffffff),
                      fontWeight: FontWeight.w700,
                      height: 1.75,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Transform.translate(
                    offset: Offset(0.0, 34.0),
                    child:
                        // Adobe XD layer: 'San Francisco, CA' (text)
                        Text(
                      'San Francisco, CA',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 12,
                        color: const Color(0xffffffff),
                        height: 2.4166666666666665,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(52.0, 518.0),
            child:
                // Adobe XD layer: 'MESSAGES' (text)
                Text(
              'Variations',
              style: TextStyle(
                fontFamily: 'TT Norms Pro',
                fontSize: 17,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w500,
                height: 3.235294117647059,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(52.0, 383.0),
            child:
                // Adobe XD layer: 'FEED' (text)
                Text(
              'Products',
              style: TextStyle(
                fontFamily: 'TT Norms Pro',
                fontSize: 17,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w500,
                height: 1.4705882352941178,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(241.3, 87.6),
            child: SizedBox(
              width: 299.0,
              height: 680.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 299.0, 679.6),
                    size: Size(299.0, 679.6),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(42.0),
                        color: const Color(0xfffbfbfb),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0x24000000),
                            offset: Offset(-10, 3),
                            blurRadius: 30,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(20.7, 94.4, 117.0, 29.0),
                    size: Size(299.0, 679.6),
                    child: Text(
                      'Dashboard',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 21,
                        color: const Color(0xff000000),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(23.7, 148.4, 122.0, 136.0),
                    size: Size(299.0, 679.6),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(23.7, 443.4, 122.0, 135.0),
                    size: Size(299.0, 679.6),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(155.7, 148.4, 122.0, 136.0),
                    size: Size(299.0, 679.6),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(155.7, 443.4, 122.0, 135.0),
                    size: Size(299.0, 679.6),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(23.7, 296.4, 159.0, 135.0),
                    size: Size(299.0, 679.6),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(194.7, 296.4, 83.0, 135.0),
                    size: Size(299.0, 679.6),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(62.7, 227.4, 44.0, 31.0),
                    size: Size(299.0, 679.6),
                    child: Text(
                      'Manage\nProducts',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 10,
                        color: const Color(0xff000000),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(63.7, 522.4, 42.0, 31.0),
                    size: Size(299.0, 679.6),
                    child: Text(
                      'Manage\nParts',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 10,
                        color: const Color(0xff000000),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(62.7, 172.4, 43.0, 43.0),
                    size: Size(299.0, 679.6),
                    child: Stack(
                      children: <Widget>[
                        Container(
                          width: 43.0,
                          height: 43.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.elliptical(9999.0, 9999.0)),
                            color: const Color(0xfff7f7f7),
                          ),
                        ),
                        Transform.translate(
                          offset: Offset(12.6, 11.6),
                          child:
                              // Adobe XD layer: 'Icon feather-box' (group)
                              SizedBox(
                            width: 19.0,
                            height: 21.0,
                            child: Stack(
                              children: <Widget>[
                                SvgPicture.string(
                                  _svg_xc67qg,
                                  allowDrawingOutsideViewBox: true,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(62.7, 467.4, 43.0, 43.0),
                    size: Size(299.0, 679.6),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                        color: const Color(0xfff7f7f7),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(195.7, 228.4, 42.0, 31.0),
                    size: Size(299.0, 679.6),
                    child: Text(
                      'Manage\nTypes',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 10,
                        color: const Color(0xff000000),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(195.7, 524.4, 42.0, 31.0),
                    size: Size(299.0, 679.6),
                    child: Text(
                      'Manage\nTypes',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 10,
                        color: const Color(0xff000000),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(81.7, 375.4, 42.0, 31.0),
                    size: Size(299.0, 679.6),
                    child: Text(
                      'Manage\nBodies',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 10,
                        color: const Color(0xff000000),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(211.7, 375.4, 50.0, 31.0),
                    size: Size(299.0, 679.6),
                    child: Text(
                      'Manage\nVariations',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 10,
                        color: const Color(0xff000000),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(195.7, 172.4, 43.0, 43.0),
                    size: Size(299.0, 679.6),
                    child: Stack(
                      children: <Widget>[
                        Container(
                          width: 43.0,
                          height: 43.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.elliptical(9999.0, 9999.0)),
                            color: const Color(0xfff7f7f7),
                          ),
                        ),
                        Transform.translate(
                          offset: Offset(15.0, 15.0),
                          child: SizedBox(
                            width: 13.0,
                            height: 12.0,
                            child: Stack(
                              children: <Widget>[
                                Transform.translate(
                                  offset: Offset(4.4, 1.8),
                                  child: SvgPicture.string(
                                    _svg_kvvcnn,
                                    allowDrawingOutsideViewBox: true,
                                  ),
                                ),
                                Container(
                                  width: 3.0,
                                  height: 4.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                        Radius.elliptical(9999.0, 9999.0)),
                                    color: const Color(0xffabdc55),
                                    border: Border.all(
                                        width: 1.0,
                                        color: const Color(0xffabdc55)),
                                  ),
                                ),
                                Transform.translate(
                                  offset: Offset(0.0, 5.0),
                                  child: Container(
                                    width: 3.0,
                                    height: 3.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.elliptical(9999.0, 9999.0)),
                                      color: const Color(0xffabdc55),
                                      border: Border.all(
                                          width: 1.0,
                                          color: const Color(0xffabdc55)),
                                    ),
                                  ),
                                ),
                                Transform.translate(
                                  offset: Offset(0.0, 9.0),
                                  child: Container(
                                    width: 3.0,
                                    height: 3.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.elliptical(9999.0, 9999.0)),
                                      color: const Color(0xffabdc55),
                                      border: Border.all(
                                          width: 1.0,
                                          color: const Color(0xffabdc55)),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(195.7, 467.4, 43.0, 43.0),
                    size: Size(299.0, 679.6),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                        color: const Color(0xfff7f7f7),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(82.7, 320.4, 41.0, 42.0),
                    size: Size(299.0, 679.6),
                    child: Stack(
                      children: <Widget>[
                        Container(
                          width: 41.0,
                          height: 42.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.elliptical(9999.0, 9999.0)),
                            color: const Color(0xfff7f7f7),
                          ),
                        ),
                        Transform.translate(
                          offset: Offset(11.4, 11.8),
                          child: SizedBox(
                            width: 17.0,
                            height: 17.0,
                            child: Stack(
                              children: <Widget>[
                                SvgPicture.string(
                                  _svg_ilaj6o,
                                  allowDrawingOutsideViewBox: true,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(216.7, 320.4, 40.0, 42.0),
                    size: Size(299.0, 679.6),
                    child: Stack(
                      children: <Widget>[
                        Container(
                          width: 40.0,
                          height: 42.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.elliptical(9999.0, 9999.0)),
                            color: const Color(0xfff7f7f7),
                          ),
                        ),
                        Transform.translate(
                          offset: Offset(12.8, 11.6),
                          child: SvgPicture.string(
                            _svg_upcv6l,
                            allowDrawingOutsideViewBox: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(72.7, 479.2, 24.9, 20.7),
                    size: Size(299.0, 679.6),
                    child: Stack(
                      children: <Widget>[
                        SizedBox(
                          width: 15.0,
                          height: 17.0,
                          child: Stack(
                            children: <Widget>[
                              SizedBox(
                                width: 15.0,
                                height: 17.0,
                                child: Stack(
                                  children: <Widget>[
                                    SvgPicture.string(
                                      _svg_2bmuze,
                                      allowDrawingOutsideViewBox: true,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Transform.translate(
                          offset: Offset(13.2, 0.0),
                          child: SizedBox(
                            width: 12.0,
                            height: 21.0,
                            child: Stack(
                              children: <Widget>[
                                SizedBox(
                                  width: 12.0,
                                  height: 21.0,
                                  child: Stack(
                                    children: <Widget>[
                                      SvgPicture.string(
                                        _svg_abdfmo,
                                        allowDrawingOutsideViewBox: true,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(209.7, 479.2, 8.4, 11.2),
                    size: Size(299.0, 679.6),
                    child: SvgPicture.string(
                      _svg_8sjvxg,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(211.1, 483.4, 1.0, 1.0),
                    size: Size(299.0, 679.6),
                    child: SvgPicture.string(
                      _svg_95cx85,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(214.9, 493.9, 2.1, 2.1),
                    size: Size(299.0, 679.6),
                    child: SvgPicture.string(
                      _svg_9dozh5,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(215.9, 488.3, 1.0, 1.0),
                    size: Size(299.0, 679.6),
                    child: SvgPicture.string(
                      _svg_9v9k1b,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(213.5, 488.3, 1.0, 1.0),
                    size: Size(299.0, 679.6),
                    child: SvgPicture.string(
                      _svg_wbf7kv,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(213.5, 483.4, 1.0, 1.0),
                    size: Size(299.0, 679.6),
                    child: SvgPicture.string(
                      _svg_wxrjc3,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(213.5, 485.8, 1.0, 1.0),
                    size: Size(299.0, 679.6),
                    child: SvgPicture.string(
                      _svg_6pinc1,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(215.9, 485.8, 1.0, 1.0),
                    size: Size(299.0, 679.6),
                    child: SvgPicture.string(
                      _svg_k07pt,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(211.1, 485.8, 1.0, 1.0),
                    size: Size(299.0, 679.6),
                    child: SvgPicture.string(
                      _svg_6mzbgx,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(211.1, 488.3, 1.0, 1.0),
                    size: Size(299.0, 679.6),
                    child: SvgPicture.string(
                      _svg_paikwp,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(215.9, 483.4, 1.0, 1.0),
                    size: Size(299.0, 679.6),
                    child: SvgPicture.string(
                      _svg_17n8q1,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(208.3, 491.1, 15.4, 7.7),
                    size: Size(299.0, 679.6),
                    child: SvgPicture.string(
                      _svg_uz2zrs,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(209.7, 492.5, 12.6, 4.9),
                    size: Size(299.0, 679.6),
                    child: SvgPicture.string(
                      _svg_d3omhj,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(220.1, 480.3, 7.7, 18.4),
                    size: Size(299.0, 679.6),
                    child: SvgPicture.string(
                      _svg_cxt1gb,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(246.7, 46.4, 27.0, 27.0),
                    size: Size(299.0, 679.6),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                        image: DecorationImage(
                          image: const AssetImage(''),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(20.9, 54.5, 31.2, 17.9),
                    size: Size(299.0, 679.6),
                    child: Stack(
                      children: <Widget>[
                        SvgPicture.string(
                          _svg_17nqew,
                          allowDrawingOutsideViewBox: true,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_xc67qg =
    '<svg viewBox="0.0 0.0 18.5 20.7" ><path transform="translate(-4.5, -3.0)" d="M 23.02731895446777 17.41110038757324 L 23.02731895446777 9.176737785339355 C 23.02656745910645 8.442028045654297 22.63430404663086 7.763410091400146 21.99802589416504 7.396055221557617 L 14.79295539855957 3.27887487411499 C 14.1560230255127 2.911143064498901 13.37129402160645 2.911143064498901 12.7343635559082 3.27887487411499 L 5.529295444488525 7.396056175231934 C 4.893017292022705 7.763410091400146 4.500754356384277 8.442028045654297 4.5 9.176737785339355 L 4.5 17.41110038757324 C 4.500754356384277 18.14581108093262 4.893017292022705 18.82442474365234 5.529295444488525 19.1917839050293 L 12.7343635559082 23.3089656829834 C 13.37129402160645 23.67670059204102 14.15602493286133 23.67670059204102 14.79295539855957 23.3089656829834 L 21.99802589416504 19.19178581237793 C 22.63430404663086 18.82442665100098 23.02656745910645 18.14581108093262 23.02731895446777 17.41110038757324 Z" fill="#3e45a9" stroke="#abdc55" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" /><path transform="translate(-4.63, -5.34)" d="M 4.905000686645508 10.44000053405762 L 13.89074897766113 15.63794231414795 L 22.87649536132813 10.44000053405762" fill="#3e45a9" stroke="#abdc55" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" /><path transform="translate(-8.74, -7.71)" d="M 18 28.37529563903809 L 18 18" fill="#3e45a9" stroke="#abdc55" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_kvvcnn =
    '<svg viewBox="4.3 1.5 8.5 10.1" ><path transform="translate(-120.01, -229.94)" d="M 132.3217620849609 236.0000457763672 L 124.700325012207 236.0000457763672 C 124.4582290649414 236.0000457763672 124.2619857788086 236.2435302734375 124.2619857788086 236.5438995361328 C 124.2619857788086 236.8442840576172 124.4582290649414 237.0877685546875 124.700325012207 237.0877685546875 L 132.3217620849609 237.0877685546875 C 132.5638580322266 237.0877685546875 132.7601318359375 236.8442840576172 132.7601318359375 236.5438995361328 C 132.7601318359375 236.2435302734375 132.5638580322266 236.0000457763672 132.3217620849609 236.0000457763672 Z" fill="#3e45a9" stroke="#3e45a9" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-120.01, -84.55)" d="M 132.3217620849609 86 L 124.700325012207 86 C 124.4582290649414 86 124.2619857788086 86.24349975585938 124.2619857788086 86.54388427734375 C 124.2619857788086 86.84428405761719 124.4582290649414 87.08777618408203 124.700325012207 87.08777618408203 L 132.3217620849609 87.08777618408203 C 132.5638580322266 87.08777618408203 132.7601318359375 86.84428405761719 132.7601318359375 86.54388427734375 C 132.7601318359375 86.24349975585938 132.5638580322266 86 132.3217620849609 86 Z" fill="#3e45a9" stroke="#3e45a9" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-120.01, -375.51)" d="M 132.3217620849609 386.0000305175781 L 124.700325012207 386.0000305175781 C 124.4582290649414 386.0000305175781 124.2619857788086 386.2434997558594 124.2619857788086 386.5439147949219 C 124.2619857788086 386.8442993164063 124.4582290649414 387.0877990722656 124.700325012207 387.0877990722656 L 132.3217620849609 387.0877990722656 C 132.5638580322266 387.0877990722656 132.7601318359375 386.8442993164063 132.7601318359375 386.5439147949219 C 132.7601318359375 386.2434997558594 132.5638580322266 386.0000305175781 132.3217620849609 386.0000305175781 Z" fill="#3e45a9" stroke="#3e45a9" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ilaj6o =
    '<svg viewBox="0.0 0.0 16.8 16.8" ><path transform="translate(0.0, 0.0)" d="M 16.67414283752441 14.3534460067749 L 15.09646701812744 12.77576637268066 C 14.76480484008789 12.44410419464111 14.19894218444824 12.68040561676025 14.19894218444824 13.14739799499512 L 14.19894218444824 14.02388763427734 L 2.804594039916992 14.02388763427734 L 2.804594039916992 2.629538774490356 L 3.681082248687744 2.629538774490356 C 4.1501784324646 2.629538774490356 4.383674621582031 2.061574935913086 4.052712917327881 1.732015490531921 L 2.475034475326538 0.1543366461992264 C 2.269585371017456 -0.05111219361424446 1.936519980430603 -0.05111219361424446 1.73107123374939 0.1543366461992264 L 0.1540936827659607 1.732015490531921 C -0.1761670559644699 2.061574935913086 0.05732937529683113 2.629538774490356 0.5257245898246765 2.629538774490356 L 1.402212738990784 2.629538774490356 L 1.402212738990784 14.02388763427734 L 0.7010222673416138 14.02388763427734 C 0.3132639229297638 14.02388763427734 -0.0001682673319010064 14.33802223205566 -0.0001682673319010064 14.72507667541504 C -0.0001682673319010064 15.112135887146 0.3132638931274414 15.42626667022705 0.7010222673416138 15.42626667022705 L 1.402212738990784 15.42626667022705 L 1.402212738990784 16.1274585723877 C 1.402212738990784 16.51451873779297 1.715644955635071 16.82864952087402 2.103403091430664 16.82864952087402 C 2.491162061691284 16.82864952087402 2.804593563079834 16.51451873779297 2.804593563079834 16.1274585723877 L 2.804593563079834 15.42626667022705 L 14.19894218444824 15.42626667022705 L 14.19894218444824 16.30275726318359 C 14.19894218444824 16.7718563079834 14.76760768890381 17.00324630737305 15.09646701812744 16.67438888549805 L 16.67414283752441 15.09670925140381 C 16.87959289550781 14.89126110076904 16.87959289550781 14.55889701843262 16.67414283752441 14.3534460067749 Z" fill="#abdc55" stroke="#abdc55" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-0.92, -2.07)" d="M 10.90833187103271 4 L 15.81666660308838 6.103571891784668 L 10.90833187103271 8.207141876220703 L 6.000000476837158 6.103571891784668 L 10.90833187103271 4 Z" fill="#3e45a9" stroke="#3e45a9" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-0.92, -3.62)" d="M 10.20714092254639 10.97875881195068 L 6.000000476837158 9.175997734069824 L 6.000000476837158 13.25973129272461 C 6.000000476837158 13.40487575531006 6.089051246643066 13.53529930114746 6.224380970001221 13.58718776702881 L 10.20714092254639 15.11858654022217 L 10.20714092254639 10.97875881195068 Z" fill="#3e45a9" stroke="#3e45a9" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-3.31, -3.62)" d="M 14 10.97875881195068 L 14 15.1185884475708 L 17.98276138305664 13.58648777008057 C 18.11809158325195 13.53530311584473 18.20713996887207 13.40487957000732 18.20713996887207 13.25973510742188 L 18.20713996887207 9.176000595092773 L 14 10.97875881195068 Z" fill="#3e45a9" stroke="#3e45a9" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_upcv6l =
    '<svg viewBox="12.6 11.8 14.6 16.5" ><path transform="translate(-41.23, 11.83)" d="M 55.41875076293945 3.95341968536377 L 56.16596603393555 3.197190284729004 L 56.16596603393555 15.58257293701172 C 56.16596603393555 16.10153961181641 56.58666610717773 16.52224349975586 57.10562896728516 16.52224349975586 C 57.62459945678711 16.52224349975586 58.04531097412109 16.10153961181641 58.04531097412109 15.58257293701172 L 58.04531097412109 3.21882963180542 L 58.80046463012695 3.964999675750732 C 58.98357391357422 4.14595365524292 59.22225952148438 4.236251831054688 59.46085357666016 4.236251831054688 C 59.70322036743164 4.236251831054688 59.94551849365234 4.143054008483887 60.12930679321289 3.957034349441528 C 60.49409103393555 3.587878942489624 60.49050140380859 2.992914438247681 60.12135314941406 2.628161191940308 L 57.73601913452148 0.2712515890598297 C 57.56007766723633 0.09740345925092697 57.32277679443359 -1.364043242801927e-07 57.07557678222656 -1.364043242801927e-07 C 57.0737190246582 -1.364043242801927e-07 57.07181930541992 -1.364043242801927e-07 57.06996154785156 1.776209319359623e-05 C 56.82074737548828 0.001503336941823363 56.58233642578125 0.1019496843218803 56.40718460083008 0.2792164087295532 L 54.08193588256836 2.632528066635132 C 53.7171630859375 3.001684665679932 53.72074127197266 3.596630811691284 54.08990097045898 3.961401700973511 C 54.45903396606445 4.326156139373779 55.05401611328125 4.322593688964844 55.41875076293945 3.95341968536377 Z" fill="#3e45a9" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-291.32, 11.83)" d="M 312.2002563476563 8.778242111206055 C 311.5221862792969 9.42206859588623 310.7800598144531 10.00394821166992 310.1716918945313 10.71795463562012 C 309.5496826171875 11.44787311553955 309.1249084472656 12.318528175354 308.8334350585938 13.22812938690186 C 308.617431640625 13.90224170684814 308.5111694335938 14.8808765411377 308.4588928222656 15.5100269317627 C 308.4140625 16.04921722412109 308.8361206054688 16.51304244995117 309.377197265625 16.51835632324219 L 309.3961486816406 16.51853561401367 C 309.8840026855469 16.52335357666016 310.2924499511719 16.15075874328613 310.3329162597656 15.66461658477783 C 310.377685546875 15.12690830230713 310.4662475585938 14.27771759033203 310.6409912109375 13.74668502807617 C 310.97998046875 12.71659278869629 311.5594177246094 11.72680377960205 312.4058532714844 11.03194808959961 C 313.9770202636719 9.742147445678711 315.4047546386719 8.386675834655762 315.8332214355469 6.306333065032959 C 316.0416870117188 5.293975830078125 316.0555419921875 4.235405921936035 316.1251525878906 3.205598592758179 L 316.893798828125 3.965066909790039 C 317.0768737792969 4.14601993560791 317.3155517578125 4.236318111419678 317.55419921875 4.236318111419678 C 317.7965087890625 4.236318111419678 318.0387878417969 4.143120765686035 318.2225952148438 3.957101821899414 C 318.58740234375 3.587945699691772 318.5838317871094 2.992981672286987 318.2146911621094 2.628228664398193 L 315.8293151855469 0.2713012993335724 C 315.4601440429688 -0.09345214813947678 314.8651733398438 -0.08989034593105316 314.5004272460938 0.2792661190032959 L 312.1751403808594 2.632577896118164 C 311.8104248046875 3.001734256744385 311.8139343261719 3.596698045730591 312.1831665039063 3.961451530456543 C 312.55224609375 4.326204299926758 313.1472473144531 4.322642803192139 313.5119934082031 3.953486680984497 L 314.2398071289063 3.216892004013062 C 314.1790771484375 4.125991821289063 314.1341247558594 5.028863430023193 313.9544067382813 5.919547080993652 C 313.72119140625 7.075002193450928 313.0431213378906 7.977944374084473 312.2002563476563 8.778242111206055 Z" fill="#abdc55" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_2bmuze =
    '<svg viewBox="0.0 0.0 15.5 16.9" ><path transform="translate(0.0, -43.24)" d="M 13.51479816436768 51.6179313659668 L 11.72310066223145 51.6179313659668 L 11.72310066223145 46.99346542358398 L 7.828291893005371 46.99346542358398 L 7.828291893005371 45.20176696777344 C 7.828291893005371 44.11554718017578 6.947741508483887 43.23500061035156 5.861526966094971 43.23500061035156 C 4.77531099319458 43.23500061035156 3.894761085510254 44.11554718017578 3.894761085510254 45.20176696777344 L 3.894761085510254 46.99346542358398 L 0 46.99346542358398 L 0 60.17592239379883 L 3.89480996131897 60.17592239379883 L 3.89480996131897 58.38423538208008 C 3.89480996131897 57.29801559448242 4.775359630584717 56.4174690246582 5.861575603485107 56.4174690246582 C 6.947790622711182 56.4174690246582 7.82834005355835 57.29801559448242 7.82834005355835 58.38423538208008 L 7.82834005355835 60.17592239379883 L 11.72315120697021 60.17592239379883 L 11.72315120697021 55.55145263671875 L 13.5148458480835 55.55145263671875 C 14.60106086730957 55.55145263671875 15.48161315917969 54.67090606689453 15.48161315917969 53.58469009399414 C 15.48161315917969 52.49847793579102 14.60101318359375 51.6179313659668 13.51479816436768 51.6179313659668 Z" fill="#3e45a9" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_abdfmo =
    '<svg viewBox="0.0 0.0 11.7 20.7" ><path transform="translate(-271.0, -43.24)" d="M 278.8283386230469 46.99346542358398 L 278.8283386230469 45.20176696777344 C 278.8283386230469 44.11554718017578 277.9477844238281 43.23500061035156 276.8616027832031 43.23500061035156 C 275.7753601074219 43.23500061035156 274.8948364257813 44.11554718017578 274.8948364257813 45.20176696777344 L 274.8948364257813 46.99346542358398 L 271.0000305175781 46.99346542358398 L 271.0000305175781 50.1585693359375 L 271.3322448730469 50.1585693359375 C 273.2214660644531 50.1585693359375 274.7583923339844 51.69551467895508 274.7583923339844 53.58469009399414 C 274.7583923339844 55.47387313842773 273.2214660644531 57.01081466674805 271.3322448730469 57.01081466674805 L 271.0000305175781 57.01081466674805 L 271.0000305175781 60.17592239379883 L 274.8948364257813 60.17592239379883 L 274.8948364257813 61.96762466430664 C 274.8948364257813 63.05383682250977 275.7753601074219 63.93438339233398 276.8616027832031 63.93438339233398 C 277.9477844238281 63.93438339233398 278.8283386230469 63.05383682250977 278.8283386230469 61.96762466430664 L 278.8283386230469 60.17592239379883 L 282.72314453125 60.17592239379883 L 282.72314453125 46.99346542358398 L 278.8283386230469 46.99346542358398 Z" fill="#abdc55" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_8sjvxg =
    '<svg viewBox="-1181.0 698.8 8.4 11.2" ><path transform="translate(-1213.04, 698.81)" d="M 33.04698181152344 2.791946411132813 L 32 2.791946411132813 L 32 11.16778564453125 L 40.37583541870117 11.16778564453125 L 40.37583541870117 2.791946411132813 L 39.328857421875 2.791946411132813 L 39.328857421875 1.395973205566406 L 37.93288421630859 1.395973205566406 L 37.93288421630859 0 L 34.44295120239258 0 L 34.44295120239258 1.395973205566406 L 33.04698181152344 1.395973205566406 L 33.04698181152344 2.791946411132813 Z M 34.79194259643555 10.46979999542236 L 32.69798278808594 10.46979999542236 L 32.69798278808594 8.375840187072754 L 34.79194259643555 8.375840187072754 L 34.79194259643555 10.46979999542236 Z M 34.79194259643555 8.026845932006836 L 32.69798278808594 8.026845932006836 L 32.69798278808594 5.932886123657227 L 34.79194259643555 5.932886123657227 L 34.79194259643555 8.026845932006836 Z M 37.58389282226563 3.489933252334595 L 39.67784881591797 3.489933252334595 L 39.67784881591797 5.583892822265625 L 37.58389282226563 5.583892822265625 L 37.58389282226563 3.489933252334595 Z M 37.58389282226563 5.932886123657227 L 39.67784881591797 5.932886123657227 L 39.67784881591797 8.026845932006836 L 37.58389282226563 8.026845932006836 L 37.58389282226563 5.932886123657227 Z M 37.58389282226563 8.375840187072754 L 39.67784881591797 8.375840187072754 L 39.67784881591797 10.46979999542236 L 37.58389282226563 10.46979999542236 L 37.58389282226563 8.375840187072754 Z M 35.14094161987305 3.489933252334595 L 37.23489761352539 3.489933252334595 L 37.23489761352539 5.583892822265625 L 35.14094161987305 5.583892822265625 L 35.14094161987305 3.489933252334595 Z M 35.14094161987305 5.932886123657227 L 37.23489761352539 5.932886123657227 L 37.23489761352539 8.026845932006836 L 35.14094161987305 8.026845932006836 L 35.14094161987305 5.932886123657227 Z M 35.14094161987305 8.375840187072754 L 37.23489761352539 8.375840187072754 L 37.23489761352539 10.46979999542236 L 35.14094161987305 10.46979999542236 L 35.14094161987305 8.375840187072754 Z M 34.79194259643555 3.489933252334595 L 34.79194259643555 5.583892822265625 L 32.69798278808594 5.583892822265625 L 32.69798278808594 3.489933252334595 L 34.79194259643555 3.489933252334595 Z M 34.79194259643555 3.489933252334595" fill="#3e45a9" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_95cx85 =
    '<svg viewBox="-1179.6 703.0 1.0 1.0" ><path transform="translate(-1243.65, 607.0)" d="M 64 96.00000762939453 L 64.69799041748047 96.00000762939453 L 64.69799041748047 96.69798278808594 L 64 96.69798278808594 L 64 96.00000762939453 Z M 64 96.00000762939453" fill="#abdc55" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_9dozh5 =
    '<svg viewBox="-1175.8 713.5 2.1 2.1" ><path transform="translate(-1327.81, 377.47)" d="M 154.0939483642578 337.0469665527344 C 154.0939483642578 337.6251525878906 153.6251525878906 338.0939331054688 153.0469665527344 338.0939331054688 C 152.4687957763672 338.0939331054688 152 337.6251525878906 152 337.0469665527344 C 152 336.46875 152.4687957763672 336 153.0469665527344 336 C 153.6251525878906 336 154.0939483642578 336.46875 154.0939483642578 337.0469665527344 Z M 154.0939483642578 337.0469665527344" fill="#3e45a9" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_9v9k1b =
    '<svg viewBox="-1174.8 707.9 1.0 1.0" ><path transform="translate(-1350.76, 499.88)" d="M 176 208.0000152587891 L 176.697998046875 208.0000152587891 L 176.697998046875 208.6979827880859 L 176 208.6979827880859 L 176 208.0000152587891 Z M 176 208.0000152587891" fill="#abdc55" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_wbf7kv =
    '<svg viewBox="-1177.2 707.9 1.0 1.0" ><path transform="translate(-1297.2, 499.88)" d="M 120.0000076293945 208.0000152587891 L 120.6979827880859 208.0000152587891 L 120.6979827880859 208.6979827880859 L 120.0000076293945 208.6979827880859 L 120.0000076293945 208.0000152587891 Z M 120.0000076293945 208.0000152587891" fill="#abdc55" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_wxrjc3 =
    '<svg viewBox="-1177.2 703.0 1.0 1.0" ><path transform="translate(-1297.2, 607.0)" d="M 120.0000076293945 96.00000762939453 L 120.6979827880859 96.00000762939453 L 120.6979827880859 96.69798278808594 L 120.0000076293945 96.69798278808594 L 120.0000076293945 96.00000762939453 Z M 120.0000076293945 96.00000762939453" fill="#abdc55" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_6pinc1 =
    '<svg viewBox="-1177.2 705.4 1.0 1.0" ><path transform="translate(-1297.2, 553.44)" d="M 120.0000076293945 152 L 120.6979827880859 152 L 120.6979827880859 152.6979827880859 L 120.0000076293945 152.6979827880859 L 120.0000076293945 152 Z M 120.0000076293945 152" fill="#abdc55" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_k07pt =
    '<svg viewBox="-1174.8 705.4 1.0 1.0" ><path transform="translate(-1350.76, 553.44)" d="M 176 152 L 176.697998046875 152 L 176.697998046875 152.6979827880859 L 176 152.6979827880859 L 176 152 Z M 176 152" fill="#abdc55" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_6mzbgx =
    '<svg viewBox="-1179.6 705.4 1.0 1.0" ><path transform="translate(-1243.65, 553.44)" d="M 64 152 L 64.69799041748047 152 L 64.69799041748047 152.6979827880859 L 64 152.6979827880859 L 64 152 Z M 64 152" fill="#abdc55" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_paikwp =
    '<svg viewBox="-1179.6 707.9 1.0 1.0" ><path transform="translate(-1243.65, 499.88)" d="M 64 208.0000152587891 L 64.69799041748047 208.0000152587891 L 64.69799041748047 208.6979827880859 L 64 208.6979827880859 L 64 208.0000152587891 Z M 64 208.0000152587891" fill="#abdc55" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_17n8q1 =
    '<svg viewBox="-1174.8 703.0 1.0 1.0" ><path transform="translate(-1350.76, 607.0)" d="M 176 96.00000762939453 L 176.697998046875 96.00000762939453 L 176.697998046875 96.69798278808594 L 176 96.69798278808594 L 176 96.00000762939453 Z M 176 96.00000762939453" fill="#abdc55" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_uz2zrs =
    '<svg viewBox="-1182.4 710.7 15.4 7.7" ><path transform="translate(-1182.44, 438.67)" d="M 0 279.6778564453125 L 15.35570526123047 279.6778564453125 L 15.35570526123047 272 L 0 272 L 0 279.6778564453125 Z M 0.6979866027832031 274.0939636230469 L 1.046980023384094 274.0939636230469 C 1.625170230865479 274.0939636230469 2.093960046768188 273.6251831054688 2.093960046768188 273.0469665527344 L 2.093960046768188 272.6979370117188 L 13.26174640655518 272.6979370117188 L 13.26174640655518 273.0469665527344 C 13.26174640655518 273.6251831054688 13.73053455352783 274.0939636230469 14.30872535705566 274.0939636230469 L 14.65771865844727 274.0939636230469 L 14.65771865844727 277.5838928222656 L 14.30872535705566 277.5838928222656 C 13.73053455352783 277.5838928222656 13.26174640655518 278.0526733398438 13.26174640655518 278.630859375 L 13.26174640655518 278.9798583984375 L 2.093960046768188 278.9798583984375 L 2.093960046768188 278.630859375 C 2.093960046768188 278.0526733398438 1.625170230865479 277.5838928222656 1.046980023384094 277.5838928222656 L 0.6979866027832031 277.5838928222656 L 0.6979866027832031 274.0939636230469 Z M 0.6979866027832031 274.0939636230469" fill="#abdc55" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_d3omhj =
    '<svg viewBox="-1181.0 712.1 12.6 4.9" ><path transform="translate(-1213.04, 408.07)" d="M 33.36103820800781 308.8859558105469 L 43.20273971557617 308.8859558105469 C 43.34366226196289 308.2010803222656 43.87891387939453 307.6658325195313 44.56377792358398 307.5248718261719 L 44.56377792358398 305.361083984375 C 43.87891387939453 305.2201538085938 43.34366226196289 304.6848449707031 43.20273971557617 304 L 33.36103820800781 304 C 33.22011566162109 304.6848449707031 32.68486404418945 305.2201843261719 32 305.361083984375 L 32 307.5248718261719 C 32.68486404418945 307.6658325195313 33.22011566162109 308.2010803222656 33.36103820800781 308.8859558105469 Z M 40.72483825683594 306.0939331054688 L 42.12081527709961 306.0939331054688 L 42.12081527709961 306.7919921875 L 40.72483825683594 306.7919921875 L 40.72483825683594 306.0939331054688 Z M 38.28189086914063 304.6980285644531 C 39.24554061889648 304.6980285644531 40.02685165405273 305.4793395996094 40.02685165405273 306.4429931640625 C 40.02685165405273 307.4066162109375 39.24554061889648 308.1879272460938 38.28189086914063 308.1879272460938 C 37.3182487487793 308.1879272460938 36.53692626953125 307.4066162109375 36.53692626953125 306.4429931640625 C 36.53811264038086 305.4796752929688 37.31858444213867 304.6991882324219 38.28189086914063 304.6980285644531 Z M 34.44296646118164 306.0939331054688 L 35.83893966674805 306.0939331054688 L 35.83893966674805 306.7919921875 L 34.44296646118164 306.7919921875 L 34.44296646118164 306.0939331054688 Z M 34.44296646118164 306.0939331054688" fill="#abdc55" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_cxt1gb =
    '<svg viewBox="-1170.6 699.9 7.7 18.4" ><path transform="translate(-1442.57, 674.62)" d="M 274.4429626464844 30.47522735595703 L 273.0469665527344 30.47522735595703 L 273.0469665527344 32.56918716430664 L 272 32.56918716430664 L 272 35.36112594604492 L 276.1878662109375 35.36112594604492 L 276.1878662109375 43.73696899414063 L 279.6778564453125 43.73696899414063 L 279.6778564453125 32.56918716430664 L 278.630859375 32.56918716430664 L 278.630859375 30.47522735595703 L 277.2348937988281 30.47522735595703 L 277.2348937988281 27.68327903747559 L 276.6342163085938 27.68327903747559 L 275.8389282226563 25.29689979553223 L 275.0436706542969 27.68327903747559 L 274.4429626464844 27.68327903747559 L 274.4429626464844 30.47522735595703 Z M 278.2818603515625 33.26717376708984 L 278.9798583984375 33.26717376708984 L 278.9798583984375 43.03899002075195 L 278.2818603515625 43.03899002075195 L 278.2818603515625 33.26717376708984 Z M 276.8858947753906 31.87119674682617 L 277.5838928222656 31.87119674682617 L 277.5838928222656 43.03899002075195 L 276.8858947753906 43.03899002075195 L 276.8858947753906 31.87119674682617 Z M 275.4899291992188 30.47522735595703 L 276.1878662109375 30.47522735595703 L 276.1878662109375 34.66313934326172 L 275.4899291992188 34.66313934326172 L 275.4899291992188 30.47522735595703 Z M 273.3960266113281 34.66313934326172 L 272.6979370117188 34.66313934326172 L 272.6979370117188 33.26717376708984 L 273.3960266113281 33.26717376708984 L 273.3960266113281 34.66313934326172 Z M 274.7919311523438 34.66313934326172 L 274.0939636230469 34.66313934326172 L 274.0939636230469 31.87119674682617 L 274.7919311523438 31.87119674682617 L 274.7919311523438 34.66313934326172 Z M 274.7919311523438 34.66313934326172" fill="#3e45a9" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_17nqew =
    '<svg viewBox="0.0 0.0 31.2 17.9" ><path transform="translate(-4.5, -10.12)" d="M 23.31374359130859 11.76097774505615 L 5.317988395690918 11.76097774505615 C 4.868094444274902 11.76097774505615 4.5 11.39288234710693 4.5 10.94298839569092 L 4.5 10.94298839569092 C 4.5 10.4930944442749 4.868094444274902 10.125 5.317988395690918 10.125 L 23.31374359130859 10.125 C 23.76364135742188 10.125 24.13173484802246 10.4930944442749 24.13173484802246 10.94298839569092 L 24.13173484802246 10.94298839569092 C 24.13173484802246 11.39288234710693 23.76364135742188 11.76097774505615 23.31374359130859 11.76097774505615 Z" fill="#3e45a9" stroke="#000000" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-4.5, -8.75)" d="M 34.36388778686523 18.51097679138184 L 5.798430442810059 18.51097679138184 C 5.084292888641357 18.51097679138184 4.5 18.14288139343262 4.5 17.6929874420166 L 4.5 17.6929874420166 C 4.5 17.24309349060059 5.084292888641357 16.875 5.798430442810059 16.875 L 34.36388778686523 16.875 C 35.07802200317383 16.875 35.66231918334961 17.24309349060059 35.66231918334961 17.6929874420166 L 35.66231918334961 17.6929874420166 C 35.66231918334961 18.14288139343262 35.07802200317383 18.51097679138184 34.36388778686523 18.51097679138184 Z" fill="#3e45a9" stroke="#000000" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-4.5, -7.37)" d="M 16.8189754486084 25.26097679138184 L 5.035606861114502 25.26097679138184 C 4.741023063659668 25.26097679138184 4.5 24.89287948608398 4.5 24.44298934936523 L 4.5 24.44298934936523 C 4.5 23.99309349060059 4.741023063659668 23.62499809265137 5.035606861114502 23.62499809265137 L 16.8189754486084 23.62499809265137 C 17.11355781555176 23.62499809265137 17.35457992553711 23.99309349060059 17.35457992553711 24.44298934936523 L 17.35457992553711 24.44298934936523 C 17.35457992553711 24.89287948608398 17.11355781555176 25.26097679138184 16.8189754486084 25.26097679138184 Z" fill="#3e45a9" stroke="#000000" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
