import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kvmaster/FrontPages/ManageBodies.dart';
import 'package:kvmaster/FrontPages/ManageDepartments.dart';
import 'package:kvmaster/FrontPages/ManageParts.dart';
import 'package:kvmaster/FrontPages/ManageProducts.dart';
import 'package:kvmaster/FrontPages/ManageTypes.dart';
import 'package:kvmaster/ProfilePage.dart';


import 'FrontPages/ManageVaritaion.dart';

class DashBoa1 extends StatefulWidget {
  DashBoa1({
    Key key,
  }) : super(key: key);
  @override
  _State createState() => _State();
}

class _State extends State<DashBoa1> {



  @override
  Widget build(BuildContext context) {
    ScrollController _controller;
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: const Color(0xfff7f7f7),
      body: SingleChildScrollView(
        controller: _controller,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: <Widget>[

            Transform.translate(
              offset: Offset(27.3, 70.2),
              child: SizedBox(
                width: 100.0,
                height: 100.0,
                child: Column(

                  children: <Widget>[
                    Container(
                      height: 18,
                      child: IconButton(
                        onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (_) => ProfilePage()));
                        },
                        icon: SvgPicture.string(
                          _svg_jhrurq,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ) ,
                      ),
                    ),

                    Container(
                      height: 18,
                      child: IconButton(
                        onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (_) => ProfilePage()));
                        },
                        icon: SvgPicture.string(
                          _svg_vedr8j,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Container(
                      height: 18,
                      child: IconButton(
                        onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (_) => ProfilePage()));
                        },
                        icon: SvgPicture.string(
                          _svg_8g71ar,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),

                      ),
                    ),
//
                  ],
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(27.0, 40.0),
              child: Text(
                'Dashboard',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 30,
                  color: const Color(0xff000000),
                ),
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(height: 30,),
            Container(
              height: 187,
              margin: EdgeInsets.only(left: 30, top: 33, right: 31),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: MediaQuery.of(context).size.width/2.6,
                      height: 187,

                      child: FlatButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (_) => new1()));
                        },
                        color: const Color(0xffffffff),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusDirectional.circular(20)
                        ),
                                            

                        textColor: Color.fromARGB(255, 0, 0, 0),
                        padding: EdgeInsets.all(0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Stack(
                              children: <Widget>[
                                Container(
                                  width: 59.0,
                                  height: 58.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                        Radius.elliptical(9999.0, 9999.0)),
                                    color: const Color(0xfff7f7f7),
                                  ),
                                ),
                                Transform.translate(
                                  offset: Offset(17.1, 15.0),
                                  child:
                                  // Adobe XD layer: 'Icon feather-box' (group)
                                  SizedBox(
                                    width: 25.0,
                                    height: 28.0,
                                    child: Stack(
                                      children: <Widget>[
                                        SvgPicture.string(
                                          _svg_im9lze,
                                          allowDrawingOutsideViewBox: true,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 19,
                            ),
                            Text(
                              "Manage\nProducts",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color:  const Color(0x6b000000),
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: MediaQuery.of(context).size.width/2.4,
                      height: 187,
                      child: FlatButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (_) => ManageTypes()));
                        },
                        color: const Color(0xffffffff),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusDirectional.circular(20)
                        ),
                        textColor: Color.fromARGB(255, 0, 0, 0),
                        padding: EdgeInsets.all(0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Stack(
                              children: <Widget>[
                                Container(
                                  width: 58.0,
                                  height: 58.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                        Radius.elliptical(9999.0, 9999.0)),
                                    color: const Color(0xfff7f7f7),
                                  ),
                                ),
                                Transform.translate(
                                  offset: Offset(20.0, 21.0),
                                  child: SizedBox(
                                    width: 17.0,
                                    height: 16.0,
                                    child: Stack(
                                      children: <Widget>[
                                        Transform.translate(
                                          offset: Offset(5.4, 1.2),
                                          child: SvgPicture.string(
                                            _svg_nbr0do,
                                            allowDrawingOutsideViewBox: true,
                                          ),
                                        ),
                                        Container(
                                          width: 4.0,
                                          height: 5.0,
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
                                          offset: Offset(0.0, 7.0),
                                          child: Container(
                                            width: 4.0,
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
                                          offset: Offset(0.0, 12.0),
                                          child: Container(
                                            width: 4.0,
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
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Manage\nTypes",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color:  const Color(0x6b000000),
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Container(
              height: 187,

              margin: EdgeInsets.only(left: 30, top: 16, right: 31),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: MediaQuery.of(context).size.width/2.1,
                      height: 187,
                      child: FlatButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (_) => ManageBodies()));
                        },
                        color: const Color(0xffffffff),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusDirectional.circular(20)
                        ),
                        textColor: Color.fromARGB(255, 0, 0, 0),
                        padding: EdgeInsets.all(0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Stack(
                              children: <Widget>[
                                Container(
                                  width: 58.0,
                                  height: 58.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                        Radius.elliptical(9999.0, 9999.0)),
                                    color: const Color(0xfff7f7f7),
                                  ),
                                ),
                                Transform.translate(
                                  offset: Offset(17.0, 16.8),
                                  child: SizedBox(
                                    width: 23.0,
                                    height: 23.0,
                                    child: Stack(
                                      children: <Widget>[
                                        SvgPicture.string(
                                          _svg_lzir8j,
                                          allowDrawingOutsideViewBox: true,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Manage\nBodies",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: const Color(0x6b000000),
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: MediaQuery.of(context).size.width/3,
                      height: 187,
                      child: FlatButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (_) => ManageVaritaion()));
                        },
                        color:const Color(0xffffffff),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusDirectional.circular(20)
                        ),
                        textColor: Color.fromARGB(255, 0, 0, 0),
                        padding: EdgeInsets.all(0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Stack(
                              children: <Widget>[
                                Container(
                                  width: 56.0,
                                  height: 57.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                        Radius.elliptical(9999.0, 9999.0)),
                                    color: const Color(0xfff7f7f7),
                                  ),
                                ),
                                Transform.translate(
                                  offset: Offset(18.2, 16.5),
                                  child: SvgPicture.string(
                                    _svg_l1d0y1,
                                    allowDrawingOutsideViewBox: true,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 21,
                            ),
                            Text(
                              "Manage\nVariations",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: const Color(0x6b000000),
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 0,
            ),
            Container(
              height: 187,
              margin: EdgeInsets.only(left: 30, right: 25, bottom: 50),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      width: MediaQuery.of(context).size.width/2.5,
                      height: 167,
                      child: FlatButton(
                        onPressed: () =>{
                        Navigator.of(context).push(MaterialPageRoute(
                        builder: (_) => ManageParts()))
                        },
                        color:const Color(0xffffffff),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusDirectional.circular(20)
                        ),
                        textColor: Color.fromARGB(255, 0, 0, 0),
                        padding: EdgeInsets.all(0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 56.0,
                              height: 57.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                    Radius.elliptical(9999.0, 9999.0)),
                                color: const Color(0xfff7f7f7),
                              ),
                              child: Pinned.fromSize(
                                bounds: Rect.fromLTWH(67.0, 75.0, 34.3, 28.5),
                                size: Size(168.0, 187.0),
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(0.0, 0.0, 21.3, 23.3),
                                      size: Size(34.3, 28.5),
                                      child: Stack(
                                        children: <Widget>[
                                          SizedBox(
                                            width: 21.0,
                                            height: 23.0,
                                            child: Stack(
                                              children: <Widget>[
                                                SvgPicture.string(
                                                  _svg_m99pzj,
                                                  allowDrawingOutsideViewBox: true,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(18.1, 0.0, 16.1, 28.5),
                                      size: Size(34.3, 28.5),
                                      child: Stack(
                                        children: <Widget>[
                                          SizedBox(
                                            width: 16.0,
                                            height: 28.0,
                                            child: Stack(
                                              children: <Widget>[
                                                SvgPicture.string(
                                                  _svg_ae18ie,
                                                  allowDrawingOutsideViewBox: true,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 19,
                            ),
                            Text(
                              "Manage\nParts",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: const Color(0x6b000000),
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      width: MediaQuery.of(context).size.width/2.4,
                      height: 167,
                      child: FlatButton(
                        onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (_) => ManageDepartments()));
                        },
                        color:const Color(0xffffffff),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusDirectional.circular(20)
                        ),
                        textColor: Color.fromARGB(255, 0, 0, 0),
                        padding: EdgeInsets.all(0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 56.0,
                              height: 57.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                    Radius.elliptical(9999.0, 9999.0)),
                                color: const Color(0xfff7f7f7),
                              ),
                              child: Pinned.fromSize(
                                bounds: Rect.fromLTWH(67.0, 75.0, 34.3, 28.5),
                                size: Size(168.0, 187.0),
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(73.9, 49.0, 11.5, 15.4),
                                      size: Size(168.0, 187.0),
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child: SvgPicture.string(
                                        _svg_kd48f5,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(81.1, 69.2, 2.9, 2.9),
                                      size: Size(168.0, 187.0),
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child: SvgPicture.string(
                                        _svg_wprlsb,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(72.0, 65.3, 21.1, 10.6),
                                      size: Size(168.0, 187.0),
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child: SvgPicture.string(
                                        _svg_dzdnhm,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(73.9, 67.2, 17.3, 6.7),
                                      size: Size(168.0, 187.0),
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child: SvgPicture.string(
                                        _svg_jruod0,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(88.3, 50.5, 10.6, 25.4),
                                      size: Size(168.0, 187.0),
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child: SvgPicture.string(
                                        _svg_x9h5n7,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Manage\nDepartments",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color:  const Color(0x6b000000),
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                              ),
                            ),
                          ],
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
    );
  }
}



const String _svg_im9lze =
    '<svg viewBox="0.0 0.0 25.5 28.4" ><path transform="translate(-4.5, -3.0)" d="M 29.98106575012207 22.81878280639648 L 29.98106575012207 11.49386119842529 C 29.98003196716309 10.48339748382568 29.4405460357666 9.550079345703125 28.56545639038086 9.04484748840332 L 18.65614891052246 3.382388591766357 C 17.7801628112793 2.876638889312744 16.70090484619141 2.876638889312744 15.82491970062256 3.382389068603516 L 5.915615558624268 9.044848442077637 C 5.040526866912842 9.550079345703125 4.50103759765625 10.48339748382568 4.5 11.49386119842529 L 4.5 22.81878280639648 C 4.50103759765625 23.82924652099609 5.040526866912842 24.7625617980957 5.915615558624268 25.26779747009277 L 15.82491970062256 30.93025970458984 C 16.70090484619141 31.43601226806641 17.78016471862793 31.43601226806641 18.65614891052246 30.93025970458984 L 28.56545639038086 25.26779937744141 C 29.4405460357666 24.76256370544434 29.98003196716309 23.82924652099609 29.98106956481934 22.81878280639648 Z" fill="#3e45a9" stroke="#abdc55" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" /><path transform="translate(-4.52, -3.42)" d="M 4.905000686645508 10.4399995803833 L 17.2633171081543 17.5888557434082 L 29.62163162231445 10.4399995803833" fill="#3e45a9" stroke="#abdc55" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" /><path transform="translate(-5.26, -3.85)" d="M 18 32.2693977355957 L 18 18" fill="#3e45a9" stroke="#abdc55" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_nbr0do =
    '<svg viewBox="5.0 1.3 11.7 13.9" ><path transform="translate(-119.24, -228.39)" d="M 135.3467864990234 236.0000305175781 L 124.8648452758789 236.0000305175781 C 124.5318756103516 236.0000305175781 124.2619857788086 236.3348999023438 124.2619857788086 236.7480316162109 C 124.2619857788086 237.1611633300781 124.5318756103516 237.4960327148438 124.8648452758789 237.4960327148438 L 135.3467864990234 237.4960327148438 C 135.6797485351563 237.4960327148438 135.9496765136719 237.1611633300781 135.9496765136719 236.7480316162109 C 135.9496765136719 236.3348999023438 135.6797485351563 236.0000305175781 135.3467864990234 236.0000305175781 Z" fill="#3e45a9" stroke="#3e45a9" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-119.24, -84.73)" d="M 135.3467864990234 86 L 124.8648452758789 86 C 124.5318756103516 86 124.2619857788086 86.33489227294922 124.2619857788086 86.74802398681641 C 124.2619857788086 87.16115570068359 124.5318756103516 87.49604034423828 124.8648452758789 87.49604034423828 L 135.3467864990234 87.49604034423828 C 135.6797485351563 87.49604034423828 135.9496765136719 87.16115570068359 135.9496765136719 86.74802398681641 C 135.9496765136719 86.33489227294922 135.6797485351563 86 135.3467864990234 86 Z" fill="#3e45a9" stroke="#3e45a9" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-119.24, -372.3)" d="M 135.3467864990234 386.0000305175781 L 124.8648452758789 386.0000305175781 C 124.5318756103516 386.0000305175781 124.2619857788086 386.3348999023438 124.2619857788086 386.748046875 C 124.2619857788086 387.1611633300781 124.5318756103516 387.4960632324219 124.8648452758789 387.4960632324219 L 135.3467864990234 387.4960632324219 C 135.6797485351563 387.4960632324219 135.9496765136719 387.1611633300781 135.9496765136719 386.748046875 C 135.9496765136719 386.3348999023438 135.6797485351563 386.0000305175781 135.3467864990234 386.0000305175781 Z" fill="#3e45a9" stroke="#3e45a9" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_lzir8j =
    '<svg viewBox="0.0 0.0 23.1 23.1" ><path transform="translate(0.0, 0.0)" d="M 22.93256378173828 19.74054718017578 L 20.76274490356445 17.57072639465332 C 20.30660247802734 17.11458396911621 19.52836036682129 17.4395751953125 19.52836036682129 18.08184242248535 L 19.52836036682129 19.28729820251465 L 3.857437372207642 19.28729820251465 L 3.857437372207642 3.616374731063843 L 5.062892913818359 3.616374731063843 C 5.708052635192871 3.616374731063843 6.02918529510498 2.835240125656128 5.574005126953125 2.381989002227783 L 3.404185771942139 0.2121690660715103 C 3.12162709236145 -0.07038967311382294 2.663553714752197 -0.07038967311382294 2.380995273590088 0.2121690660715103 L 0.212139904499054 2.381989002227783 C -0.2420756816864014 2.835240125656128 0.07905762642621994 3.616374731063843 0.7232529520988464 3.616374731063843 L 1.92870831489563 3.616374731063843 L 1.92870831489563 19.28729820251465 L 0.9643440246582031 19.28729820251465 C 0.4310505986213684 19.28729820251465 -2.027792652370408e-05 19.71933364868164 -2.027792652370408e-05 20.25166130065918 C -2.027792652370408e-05 20.78399276733398 0.431050568819046 21.21602439880371 0.9643440246582031 21.21602439880371 L 1.92870831489563 21.21602439880371 L 1.92870831489563 22.18038940429688 C 1.92870831489563 22.71272087097168 2.359779119491577 23.14475440979004 2.893072366714478 23.14475440979004 C 3.426366329193115 23.14475440979004 3.857436895370483 22.71272087097168 3.857436895370483 22.18038940429688 L 3.857436895370483 21.21602439880371 L 19.52836036682129 21.21602439880371 L 19.52836036682129 22.42148208618164 C 19.52836036682129 23.0666446685791 20.31045913696289 23.3848819732666 20.76274490356445 22.93259429931641 L 22.93256378173828 20.76277542114258 C 23.21512222290039 20.48021697998047 23.21512222290039 20.02310943603516 22.93256378173828 19.74054718017578 Z" fill="#abdc55" stroke="#abdc55" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(0.99, -1.35)" d="M 12.75054836273193 4 L 19.50110054016113 6.893093585968018 L 12.75054836273193 9.786184310913086 L 6 6.893093585968018 L 12.75054836273193 4 Z" fill="#3e45a9" stroke="#3e45a9" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(0.99, -1.53)" d="M 11.7861852645874 11.65537929534912 L 6 9.175998687744141 L 6 14.79245662689209 C 6 14.9920768737793 6.122474670410156 15.17145156860352 6.308596611022949 15.2428150177002 L 11.7861852645874 17.34898567199707 L 11.7861852645874 11.65537929534912 Z" fill="#3e45a9" stroke="#3e45a9" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(0.7, -1.53)" d="M 14 11.65537929534912 L 14 17.34898567199707 L 19.47758865356445 15.24185085296631 C 19.6637134552002 15.17145442962646 19.78618621826172 14.99207973480225 19.78618621826172 14.79245853424072 L 19.78618621826172 9.176000595092773 L 14 11.65537929534912 Z" fill="#3e45a9" stroke="#3e45a9" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_l1d0y1 =
    '<svg viewBox="308.2 366.5 20.1 22.7" ><path transform="translate(254.36, 366.52)" d="M 56.02230834960938 5.437233448028564 L 57.04996109008789 4.397172927856445 L 57.04996109008789 21.43108940124512 C 57.04996109008789 22.14483642578125 57.62856674194336 22.72344207763672 58.34231185913086 22.72344207763672 C 59.05605697631836 22.72344207763672 59.63466644287109 22.14483642578125 59.63466644287109 21.43108940124512 L 59.63466644287109 4.426934242248535 L 60.67324829101563 5.453160285949707 C 60.92509460449219 5.702030181884766 61.25335311889648 5.82621955871582 61.58151245117188 5.82621955871582 C 61.91484069824219 5.82621955871582 62.24807357788086 5.698042392730713 62.5008544921875 5.442205429077148 C 63.00253677368164 4.934496402740479 62.99760818481445 4.116227626800537 62.48990249633789 3.614573955535889 L 59.20929718017578 0.3730588853359222 C 58.96731948852539 0.1339613795280457 58.64095687866211 -1.36404310069338e-07 58.30097961425781 -1.36404310069338e-07 C 58.29841995239258 -1.36404310069338e-07 58.29581069946289 -1.36404310069338e-07 58.29325485229492 2.447983024467248e-05 C 57.95049667358398 0.002067626919597387 57.62260437011719 0.1402139067649841 57.3817138671875 0.3840130865573883 L 54.18374252319336 3.620579719543457 C 53.68206787109375 4.128289699554443 53.68698883056641 4.946533203125 54.19469833374023 5.448211669921875 C 54.70238494873047 5.949866771697998 55.52067565917969 5.944967746734619 56.02230834960938 5.437233448028564 Z" fill="#3e45a9" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(5.99, 366.52)" d="M 313.6056823730469 12.07290840148926 C 312.6731567382813 12.95837879180908 311.6524963378906 13.75865268707275 310.8157348632813 14.74064350128174 C 309.9603271484375 15.74451732635498 309.3760986328125 16.94194984436035 308.9752502441406 18.19294738769531 C 308.67822265625 19.12006950378418 308.5320434570313 20.46601104736328 308.4601440429688 21.33129692077637 C 308.3984985351563 22.0728588104248 308.97900390625 22.71076774597168 309.7231140136719 22.71807670593262 L 309.7492065429688 22.71832275390625 C 310.4201049804688 22.72494697570801 310.9818420410156 22.21250915527344 311.0374755859375 21.54390716552734 C 311.0990600585938 20.80438613891602 311.2208862304688 19.63647079467773 311.4612426757813 18.90612983703613 C 311.927490234375 17.48941802978516 312.7243347167969 16.12813949584961 313.8884887695313 15.17248630523682 C 316.0493774414063 13.39859104156494 318.0129699707031 11.53437805175781 318.6021728515625 8.673233032226563 C 318.888916015625 7.280914306640625 318.9079895019531 5.825037002563477 319.0036926269531 4.408718109130859 L 320.0608215332031 5.45323371887207 C 320.3126220703125 5.702103137969971 320.640869140625 5.826292037963867 320.9690551757813 5.826292037963867 C 321.3023986816406 5.826292037963867 321.6356201171875 5.698115348815918 321.8883972167969 5.442278861999512 C 322.3901062011719 4.934569358825684 322.3851623535156 4.1163010597229 321.87744140625 3.614647388458252 L 318.5967712402344 0.373108297586441 C 318.089111328125 -0.1285459697246552 317.2708129882813 -0.1236473396420479 316.7691955566406 0.3840624988079071 L 313.5711975097656 3.62062931060791 C 313.0695495605469 4.128338813781738 313.0744323730469 4.946606636047363 313.5821838378906 5.448261260986328 C 314.08984375 5.949914455413818 314.9081420898438 5.945016384124756 315.4097595214844 5.437306880950928 L 316.4107666015625 4.424250602722168 C 316.3273010253906 5.674557685852051 316.2654418945313 6.916298866271973 316.0182189941406 8.141276359558105 C 315.697509765625 9.730401992797852 314.764892578125 10.97224140167236 313.6056823730469 12.07290840148926 Z" fill="#abdc55" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_m99pzj =
    '<svg viewBox="0.0 0.0 21.3 23.3" ><path transform="translate(0.0, -43.24)" d="M 18.58722877502441 54.76424407958984 L 16.1230640411377 54.76424407958984 L 16.1230640411377 48.40410232543945 L 10.76643943786621 48.40410232543945 L 10.76643943786621 45.93994140625 C 10.76643943786621 44.44604110717773 9.555397033691406 43.23500061035156 8.06149959564209 43.23500061035156 C 6.567600727081299 43.23500061035156 5.356559276580811 44.44604110717773 5.356559276580811 45.93994140625 L 5.356559276580811 48.40410232543945 L 0 48.40410232543945 L 0 66.53426361083984 L 5.356626510620117 66.53426361083984 L 5.356626510620117 64.07009887695313 C 5.356626510620117 62.57620239257813 6.567667484283447 61.36516189575195 8.061566352844238 61.36516189575195 C 9.555464744567871 61.36516189575195 10.76650619506836 62.57620239257813 10.76650619506836 64.07009887695313 L 10.76650619506836 66.53426361083984 L 16.12313270568848 66.53426361083984 L 16.12313270568848 60.17412567138672 L 18.58729553222656 60.17412567138672 C 20.0811939239502 60.17412567138672 21.292236328125 58.96308135986328 21.292236328125 57.46918487548828 C 21.292236328125 55.97528457641602 20.08112716674805 54.76424407958984 18.58722877502441 54.76424407958984 Z" fill="#3e45a9" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ae18ie =
    '<svg viewBox="0.0 0.0 16.1 28.5" ><path transform="translate(-271.0, -43.24)" d="M 281.7665100097656 48.40410232543945 L 281.7665100097656 45.93994140625 C 281.7665100097656 44.44604110717773 280.5554809570313 43.23500061035156 279.0615844726563 43.23500061035156 C 277.5676879882813 43.23500061035156 276.3566284179688 44.44604110717773 276.3566284179688 45.93994140625 L 276.3566284179688 48.40410232543945 L 271 48.40410232543945 L 271 52.75714874267578 L 271.4570007324219 52.75714874267578 C 274.0552368164063 52.75714874267578 276.1690368652344 54.87094879150391 276.1690368652344 57.46918487548828 C 276.1690368652344 60.06741714477539 274.0552368164063 62.18121719360352 271.4570007324219 62.18121719360352 L 271 62.18121719360352 L 271 66.53426361083984 L 276.3566284179688 66.53426361083984 L 276.3566284179688 68.99842834472656 C 276.3566284179688 70.49232482910156 277.5676879882813 71.703369140625 279.0615844726563 71.703369140625 C 280.5554809570313 71.703369140625 281.7665100097656 70.49232482910156 281.7665100097656 68.99842834472656 L 281.7665100097656 66.53426361083984 L 287.1231384277344 66.53426361083984 L 287.1231384277344 48.40410232543945 L 281.7665100097656 48.40410232543945 Z" fill="#abdc55" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_r1f0f =
    '<svg viewBox="288.8 651.8 1.0 1.0" ><path transform="translate(224.84, 555.76)" d="M 64 96 L 64.9599609375 96 L 64.9599609375 96.9599609375 L 64 96.9599609375 L 64 96 Z M 64 96" fill="#abdc55" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_pq6h3g =
    '<svg viewBox="295.6 658.5 1.0 1.0" ><path transform="translate(119.56, 450.48)" d="M 176 208 L 176.9599609375 208 L 176.9599609375 208.9599609375 L 176 208.9599609375 L 176 208 Z M 176 208" fill="#abdc55" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_mmwlcd =
    '<svg viewBox="292.2 658.5 1.0 1.0" ><path transform="translate(172.2, 450.48)" d="M 120 208 L 120.9599609375 208 L 120.9599609375 208.9599609375 L 120 208.9599609375 L 120 208 Z M 120 208" fill="#abdc55" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_m7squi =
    '<svg viewBox="292.2 651.8 1.0 1.0" ><path transform="translate(172.2, 555.76)" d="M 120 96 L 120.9599609375 96 L 120.9599609375 96.9599609375 L 120 96.9599609375 L 120 96 Z M 120 96" fill="#abdc55" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_pkns80 =
    '<svg viewBox="292.2 655.1 1.0 1.0" ><path transform="translate(172.2, 503.12)" d="M 120 152 L 120.9599609375 152 L 120.9599609375 152.9599609375 L 120 152.9599609375 L 120 152 Z M 120 152" fill="#abdc55" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_kkkkjr =
    '<svg viewBox="295.6 655.1 1.0 1.0" ><path transform="translate(119.56, 503.12)" d="M 176 152 L 176.9599609375 152 L 176.9599609375 152.9599609375 L 176 152.9599609375 L 176 152 Z M 176 152" fill="#abdc55" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ssx9j5 =
    '<svg viewBox="288.8 655.1 1.0 1.0" ><path transform="translate(224.84, 503.12)" d="M 64 152 L 64.9599609375 152 L 64.9599609375 152.9599609375 L 64 152.9599609375 L 64 152 Z M 64 152" fill="#abdc55" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_rqhrgc =
    '<svg viewBox="288.8 658.5 1.0 1.0" ><path transform="translate(224.84, 450.48)" d="M 64 208 L 64.9599609375 208 L 64.9599609375 208.9599609375 L 64 208.9599609375 L 64 208 Z M 64 208" fill="#abdc55" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_kd48f5 =
    '<svg viewBox="286.9 646.0 11.5 15.4" ><path transform="translate(254.92, 646.0)" d="M 33.43993759155273 3.839831590652466 L 32 3.839831590652466 L 32 15.35932636260986 L 43.51949310302734 15.35932636260986 L 43.51949310302734 3.839831590652466 L 42.07955932617188 3.839831590652466 L 42.07955932617188 1.919915795326233 L 40.15964126586914 1.919915795326233 L 40.15964126586914 0 L 35.3598518371582 0 L 35.3598518371582 1.919915795326233 L 33.43993759155273 1.919915795326233 L 33.43993759155273 3.839831590652466 Z M 35.8398323059082 14.39936828613281 L 32.95995712280273 14.39936828613281 L 32.95995712280273 11.51949501037598 L 35.8398323059082 11.51949501037598 L 35.8398323059082 14.39936828613281 Z M 35.8398323059082 11.03951549530029 L 32.95995712280273 11.03951549530029 L 32.95995712280273 8.159642219543457 L 35.8398323059082 8.159642219543457 L 35.8398323059082 11.03951549530029 Z M 39.67966461181641 4.799789428710938 L 42.55953598022461 4.799789428710938 L 42.55953598022461 7.679663181304932 L 39.67966461181641 7.679663181304932 L 39.67966461181641 4.799789428710938 Z M 39.67966461181641 8.159642219543457 L 42.55953598022461 8.159642219543457 L 42.55953598022461 11.03951549530029 L 39.67966461181641 11.03951549530029 L 39.67966461181641 8.159642219543457 Z M 39.67966461181641 11.51949501037598 L 42.55953598022461 11.51949501037598 L 42.55953598022461 14.39936828613281 L 39.67966461181641 14.39936828613281 L 39.67966461181641 11.51949501037598 Z M 36.31980895996094 4.799789428710938 L 39.19968414306641 4.799789428710938 L 39.19968414306641 7.679663181304932 L 36.31980895996094 7.679663181304932 L 36.31980895996094 4.799789428710938 Z M 36.31980895996094 8.159642219543457 L 39.19968414306641 8.159642219543457 L 39.19968414306641 11.03951549530029 L 36.31980895996094 11.03951549530029 L 36.31980895996094 8.159642219543457 Z M 36.31980895996094 11.51949501037598 L 39.19968414306641 11.51949501037598 L 39.19968414306641 14.39936828613281 L 36.31980895996094 14.39936828613281 L 36.31980895996094 11.51949501037598 Z M 35.8398323059082 4.799789428710938 L 35.8398323059082 7.679663181304932 L 32.95995712280273 7.679663181304932 L 32.95995712280273 4.799789428710938 L 35.8398323059082 4.799789428710938 Z M 35.8398323059082 4.799789428710938" fill="#3e45a9" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_wprlsb =
    '<svg viewBox="294.1 666.2 2.9 2.9" ><path transform="translate(142.12, 330.16)" d="M 154.8798828125 337.43994140625 C 154.8798828125 338.2351379394531 154.2351379394531 338.8798828125 153.43994140625 338.8798828125 C 152.6447448730469 338.8798828125 152 338.2351379394531 152 337.43994140625 C 152 336.6447143554688 152.6447448730469 336 153.43994140625 336 C 154.2351379394531 336 154.8798828125 336.6447143554688 154.8798828125 337.43994140625 Z M 154.8798828125 337.43994140625" fill="#3e45a9" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_dzdnhm =
    '<svg viewBox="285.0 662.3 21.1 10.6" ><path transform="translate(285.0, 390.32)" d="M 0 282.5595397949219 L 21.11907386779785 282.5595397949219 L 21.11907386779785 272 L 0 272 L 0 282.5595397949219 Z M 0.9599578976631165 274.8798828125 L 1.439936876296997 274.8798828125 C 2.235136032104492 274.8798828125 2.879873752593994 274.2351379394531 2.879873752593994 273.43994140625 L 2.879873752593994 272.9599609375 L 18.23920059204102 272.9599609375 L 18.23920059204102 273.43994140625 C 18.23920059204102 274.2351379394531 18.88393592834473 274.8798828125 19.67913627624512 274.8798828125 L 20.15911483764648 274.8798828125 L 20.15911483764648 279.6796875 L 19.67913627624512 279.6796875 C 18.88393592834473 279.6796875 18.23920059204102 280.3244018554688 18.23920059204102 281.1195983886719 L 18.23920059204102 281.5995788574219 L 2.879873752593994 281.5995788574219 L 2.879873752593994 281.1195983886719 C 2.879873752593994 280.3244018554688 2.235136032104492 279.6796875 1.439936876296997 279.6796875 L 0.9599578976631165 279.6796875 L 0.9599578976631165 274.8798828125 Z M 0.9599578976631165 274.8798828125" fill="#abdc55" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_jruod0 =
    '<svg viewBox="286.9 664.2 17.3 6.7" ><path transform="translate(254.92, 360.24)" d="M 33.87187194824219 310.7197265625 L 47.40739822387695 310.7197265625 C 47.60121917724609 309.77783203125 48.33735656738281 309.0416870117188 49.27927017211914 308.8478698730469 L 49.27927017211914 305.8718872070313 C 48.33735656738281 305.6780700683594 47.60121154785156 304.9419250488281 47.40739822387695 304.0000305175781 L 33.87187194824219 304.0000305175781 C 33.67805480957031 304.9419250488281 32.94191360473633 305.6781005859375 32.00000381469727 305.8718872070313 L 32.00000381469727 308.8478698730469 C 32.94191360473633 309.0416870117188 33.67805480957031 309.77783203125 33.87187194824219 310.7197265625 Z M 43.99948883056641 306.8798828125 L 45.91940307617188 306.8798828125 L 45.91940307617188 307.83984375 L 43.99948883056641 307.83984375 L 43.99948883056641 306.8798828125 Z M 40.63963317871094 304.9599609375 C 41.9649658203125 304.9599609375 43.03953170776367 306.0345458984375 43.03953170776367 307.35986328125 C 43.03953170776367 308.6852111816406 41.9649658203125 309.759765625 40.63963317871094 309.759765625 C 39.31430816650391 309.759765625 38.23973846435547 308.6852111816406 38.23973846435547 307.35986328125 C 38.24137878417969 306.0350036621094 39.31477355957031 304.9616088867188 40.63963317871094 304.9599609375 Z M 35.35986709594727 306.8798828125 L 37.27978515625 306.8798828125 L 37.27978515625 307.83984375 L 35.35986709594727 307.83984375 L 35.35986709594727 306.8798828125 Z M 35.35986709594727 306.8798828125" fill="#abdc55" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_x9h5n7 =
    '<svg viewBox="301.3 647.5 10.6 25.4" ><path transform="translate(29.32, 622.22)" d="M 275.35986328125 32.41877746582031 L 273.43994140625 32.41877746582031 L 273.43994140625 35.29864883422852 L 272 35.29864883422852 L 272 39.13848114013672 L 277.759765625 39.13848114013672 L 277.759765625 50.65797424316406 L 282.5595397949219 50.65797424316406 L 282.5595397949219 35.29864883422852 L 281.1195983886719 35.29864883422852 L 281.1195983886719 32.41877746582031 L 279.1996765136719 32.41877746582031 L 279.1996765136719 28.57894325256348 L 278.3735656738281 28.57894325256348 L 277.27978515625 25.29690170288086 L 276.1860046386719 28.57894325256348 L 275.35986328125 28.57894325256348 L 275.35986328125 32.41877746582031 Z M 280.6396484375 36.25860595703125 L 281.5995788574219 36.25860595703125 L 281.5995788574219 49.69802093505859 L 280.6396484375 49.69802093505859 L 280.6396484375 36.25860595703125 Z M 278.7197265625 34.33869171142578 L 279.6796875 34.33869171142578 L 279.6796875 49.69802093505859 L 278.7197265625 49.69802093505859 L 278.7197265625 34.33869171142578 Z M 276.7998046875 32.41877746582031 L 277.759765625 32.41877746582031 L 277.759765625 38.17852020263672 L 276.7998046875 38.17852020263672 L 276.7998046875 32.41877746582031 Z M 273.919921875 38.17852020263672 L 272.9599609375 38.17852020263672 L 272.9599609375 36.25860595703125 L 273.919921875 36.25860595703125 L 273.919921875 38.17852020263672 Z M 275.83984375 38.17852020263672 L 274.8798828125 38.17852020263672 L 274.8798828125 34.33869171142578 L 275.83984375 34.33869171142578 L 275.83984375 38.17852020263672 Z M 275.83984375 38.17852020263672" fill="#3e45a9" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_9iql1n =
    '<svg viewBox="295.6 651.8 1.0 1.0" ><path transform="translate(119.56, 555.76)" d="M 176 96 L 176.9599609375 96 L 176.9599609375 96.9599609375 L 176 96.9599609375 L 176 96 Z M 176 96" fill="#abdc55" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_jhrurq =
    '<svg viewBox="27.3 70.2 27.0 2.3" ><path transform="translate(22.8, 60.08)" d="M 30.375 12.375 L 5.625 12.375 C 5.006249904632568 12.375 4.5 11.86874961853027 4.5 11.25 L 4.5 11.25 C 4.5 10.63125038146973 5.006249904632568 10.125 5.625 10.125 L 30.375 10.125 C 30.99374961853027 10.125 31.5 10.63125038146973 31.5 11.25 L 31.5 11.25 C 31.5 11.86874961853027 30.99374961853027 12.375 30.375 12.375 Z" fill="#3e45a9" stroke="#3e45a9" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_vedr8j =
    '<svg viewBox="27.3 81.4 42.9 2.3" ><path transform="translate(22.8, 64.51)" d="M 45.57252883911133 19.125 L 6.285762786865234 19.125 C 5.303592681884766 19.125 4.5 18.61874961853027 4.5 18 L 4.5 18 C 4.5 17.38125038146973 5.303592681884766 16.875 6.285762786865234 16.875 L 45.57252883911133 16.875 C 46.55469512939453 16.875 47.35829162597656 17.38125038146973 47.35829162597656 18 L 47.35829162597656 18 C 47.35829162597656 18.61874961853027 46.55469512939453 19.125 45.57252883911133 19.125 Z" fill="#3e45a9" stroke="#3e45a9" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_8g71ar =
    '<svg viewBox="27.3 92.6 17.7 2.3" ><path transform="translate(22.8, 68.94)" d="M 21.44258117675781 25.875 L 5.236633777618408 25.875 C 4.831485271453857 25.875 4.5 25.36874961853027 4.5 24.75 L 4.5 24.75 C 4.5 24.13125038146973 4.831485271453857 23.625 5.236633777618408 23.625 L 21.44258117675781 23.625 C 21.84772872924805 23.625 22.17921447753906 24.13125038146973 22.17921447753906 24.75 L 22.17921447753906 24.75 C 22.17921447753906 25.36874961853027 21.84772872924805 25.875 21.44258117675781 25.875 Z" fill="#3e45a9" stroke="#3e45a9" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
