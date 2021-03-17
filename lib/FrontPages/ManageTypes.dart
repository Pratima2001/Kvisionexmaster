import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kvmaster/API/Api.dart';
import 'package:kvmaster/EditButtonPages/ManageTypeEditButton.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:kvmaster/OnButtonClickPages/ManageTypeButton.dart';


class ManageTypes extends StatefulWidget {
  ManageTypes({
    Key key,
  }) : super(key: key);
  @override
  _State createState() => _State();
}

class _State extends State<ManageTypes> {
  @override
  Widget build(BuildContext context) {
    var lengthdocument=0;
    List<DocumentSnapshot> length;
    final orientation = MediaQuery.of(context).orientation;
    final FirebaseDatabase database = FirebaseDatabase.instance;
    return Scaffold(
       floatingActionButton: 
    
      Container(width: 65,
                      height: 65,
                     
                      
                      child:
                         FittedBox(child: FloatingActionButton(
                          backgroundColor:  const Color(0xff3e45a9),
                          child:
                          // Adobe XD layer: 'Icon awesome-plus' (shape)
                          SvgPicture.string(
                        _svg_obtgp1,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                           onPressed: (){
                              Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => ManageTypeButton()));
                
                         }),),
                    
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.elliptical(9999.0, 9999.0)),
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
     
      backgroundColor: const Color(0xfff7f7f7),
      body: Stack(
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
            offset: Offset(27.0, 90.0),
            child: Text(
              'Product Master types',
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
            offset: Offset(31.0, 137.0),
            child: SingleChildScrollView(
              child: Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 20,
                  runSpacing: 20,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height,
                      child: StreamBuilder(
                        stream: FirebaseFirestore.instance.collection("ProductTypeMaster")
                            .orderBy("createdAt", descending: true).snapshots(),
                        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                          if (!snapshot.hasData) {
                            return CircularProgressIndicator();
                          }
                          return Expanded(
                            child: Flex(
                                direction: Axis.vertical,
                                children: [
                                  GridView.builder(
                                    physics: ScrollPhysics(),
                                    scrollDirection: Axis.vertical,
                                    shrinkWrap: true,
                                    itemCount: snapshot.data.docs.length,
                                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      crossAxisSpacing: 10.0,
                                      mainAxisSpacing: 10,
                                    ),
                                    itemBuilder: (BuildContext context, int index) {
                                      return SizedBox(
                                        width: 350.0,
                                        height: 180.0,
                                        child: Stack(
                                          children: <Widget>[
                                            Container(
                                              width: 165.0,
                                              height: 180.0,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(27.0),
                                                color: const Color(0xfffddfce),
                                              ),
                                            ),
                                            Transform.translate(
                                              offset: Offset(55.0, 72.0),
                                              child: SizedBox(
                                                width: 56.0,
                                                height: 45.0,
                                                child: Stack(
                                                  children: <Widget>[
                                                    Pinned.fromSize(
                                                      bounds: Rect.fromLTWH(0.0, 0.0, 56.0, 23.0),
                                                      size: Size(56.0, 45.0),
                                                      pinLeft: true,
                                                      pinRight: true,
                                                      pinTop: true,
                                                      fixedHeight: true,
                                                      child: Text(
                                                        snapshot.data.documents[index].get('productName'),
                                                        style: TextStyle(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 14,
                                                          color: const Color(0xff000000),
                                                          fontWeight: FontWeight.w500,
                                                        ),
                                                        textAlign: TextAlign.center,
                                                      ),
                                                    ),
                                                    Pinned.fromSize(
                                                      bounds: Rect.fromLTWH(5.0, 24.0, 46.0, 21.0),
                                                      size: Size(56.0, 45.0),
                                                      pinLeft: true,
                                                      pinRight: true,
                                                      pinBottom: true,
                                                      fixedHeight: true,
                                                      child: Text(
                                                        snapshot.data.documents[index].get('productNameInTamil'),
                                                        style: TextStyle(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 12,
                                                          color: const Color(0x8f000000),
                                                        ),
                                                        textAlign: TextAlign.center,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Transform.translate(
                                              offset: Offset(92.0, 18.0),
                                              child: SizedBox(
                                                width: 57.0,
                                                height: 27.0,
                                                child: Stack(
                                                  children: <Widget>[
                                                    Pinned.fromSize(
                                                      bounds: Rect.fromLTWH(30.0, 0.0, 27.0, 27.0),
                                                      size: Size(57.0, 27.0),
                                                      child: Container(
                                                        decoration: BoxDecoration(
                                                          borderRadius: BorderRadius.circular(5.0),
                                                          color: const Color(0xfff7f7f7),
                                                        ),
                                                      ),
                                                    ),
                                                    Pinned.fromSize(
                                                      bounds: Rect.fromLTWH(0.0, 0.0, 27.0, 27.0),
                                                      size: Size(57.0, 27.0),
                                                      child: Container(
                                                        decoration: BoxDecoration(
                                                          borderRadius: BorderRadius.circular(5.0),
                                                          color: const Color(0xfff7f7f7),
                                                        ),
                                                      ),
                                                    ),
                                                    Pinned.fromSize(
                                                      bounds: Rect.fromLTWH(36.3, 6.3, 13.8, 13.8),
                                                      size: Size(57.0, 27.0),
                                                      child:
                                                      // Adobe XD layer: 'Icon material-edit' (shape)
                                                      GestureDetector(
                                                        onTap: () {
                                                          print("Edit");
                                                          Navigator.of(context).push(MaterialPageRoute(
                                                              builder: (_) => ManageTypeEditButton(id:snapshot.data.documents[index].get('userId') ,productName: snapshot.data.documents[index].get('productName') ,productNameInTamil: snapshot.data.documents[index].get('productNameInTamil') ,bodies: snapshot.data.documents[index].get('bodies') ,variations: snapshot.data.documents[index].get('variations') ,)));
                                                        },
                                                        child: SvgPicture.string(
                                                          _svg_amx086,
                                                          allowDrawingOutsideViewBox: true,
                                                          fit: BoxFit.fill,
                                                        ),
                                                      ),
                                                    ),
                                                    Pinned.fromSize(
                                                      bounds: Rect.fromLTWH(8.5, 5.9, 11.0, 14.1),
                                                      size: Size(57.0, 27.0),
                                                      child:
                                                      // Adobe XD layer: 'Icon material-delete' (shape)
                                                      GestureDetector(
                                                        onTap: () {

                                                          showDialog(
                                                            context: context,
                                                            builder: (context) {
                                                              return AlertDialog(
                                                                title: Text('Are you sure?'),
                                                                content: Text('Do you want to delete '+snapshot.data.documents[index].get('productName'),style: TextStyle(color: Colors.red),),
                                                                actions: <Widget>[
                                                                  FlatButton(
                                                                    child: Text('No'),
                                                                    onPressed: () {
                                                                      Navigator.of(context).pop(false);
                                                                    },
                                                                  ),
                                                                  FlatButton(
                                                                    child: Text('Yes'),
                                                                    onPressed: () {

                                                                      print("delete");

                                                                      FirebaseController.instanace.productTypeMasterDelete( snapshot.data.documents[index].get('userId')).then((data) async {
                                                                        print(data);
                                                                        if(data==null){
                                                                          _showDialog("Problem Occurred While Deleting Data! Please try again.");
                                                                        }else{
                                                                          _showDialog("Deleted Successfully");
                                                                        }
                                                                      });
                                                                      Navigator.of(context).pop(false);
                                                                    },
                                                                  )
                                                                ],
                                                              );
                                                            },
                                                          );

                                                        },
                                                        child: SvgPicture.string(
                                                          _svg_rmirba,
                                                          allowDrawingOutsideViewBox: true,
                                                          fit: BoxFit.fill,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                ]),
                          );
                        },

                      )

                    ),
                  ]),
            ),
          ),
       
//          Transform.translate(
//            offset: Offset(307.0, 719.0),
//            child: SizedBox(
//              width: 68.0,
//              height: 68.0,
//              child: Stack(
//                children: <Widget>[
//                  Pinned.fromSize(
//                    bounds: Rect.fromLTWH(0.0, 0.0, 68.0, 68.0),
//                    size: Size(68.0, 68.0),
//                    pinLeft: true,
//                    pinRight: true,
//                    pinTop: true,
//                    pinBottom: true,
//                    child: GestureDetector(
//                      onTap: (){
//                        print("tap");
//                        Navigator.of(context).push(MaterialPageRoute(
//                            builder: (_) => ManageTypeButton()));
//                      },
//                      child: Container(
//                        decoration: BoxDecoration(
//                          borderRadius:
//                              BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
//                          color: const Color(0xff3e45a9),
//                          boxShadow: [
//                            BoxShadow(
//                              color: const Color(0x29000000),
//                              offset: Offset(0, 22),
//                              blurRadius: 22,
//                            ),
//                          ],
//                        ),
//                      ),
//                    ),
//                  ),
//                  Pinned.fromSize(
//                    bounds: Rect.fromLTWH(21.0, 20.6, 26.8, 26.8),
//                    size: Size(68.0, 68.0),
//                    fixedWidth: true,
//                    fixedHeight: true,
//                    child:
//                        // Adobe XD layer: 'Icon awesome-plus' (shape)
//                        SvgPicture.string(
//                      _svg_obtgp1,
//                      allowDrawingOutsideViewBox: true,
//                      fit: BoxFit.fill,
//                    ),
//                  ),
//                ],
//              ),
//            ),
//          ),
        ],
      ),
    );

  }

  Widget showProducts() {
    return SizedBox(
      width: 350.0,
      height: 180.0,
      child: Stack(
        children: <Widget>[
          Container(
            width: 165.0,
            height: 180.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(27.0),
              color: const Color(0xfffddfce),
            ),
          ),
          Transform.translate(
            offset: Offset(55.0, 72.0),
            child: SizedBox(
              width: 56.0,
              height: 45.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 56.0, 23.0),
                    size: Size(56.0, 45.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    fixedHeight: true,
                    child: Text(
                      'Mango',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16,
                        color: const Color(0xff000000),
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(5.0, 24.0, 46.0, 21.0),
                    size: Size(56.0, 45.0),
                    pinLeft: true,
                    pinRight: true,
                    pinBottom: true,
                    fixedHeight: true,
                    child: Text(
                      'anklet',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 15,
                        color: const Color(0x8f000000),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(92.0, 18.0),
            child: SizedBox(
              width: 57.0,
              height: 27.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(30.0, 0.0, 27.0, 27.0),
                    size: Size(57.0, 27.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: const Color(0xfff7f7f7),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 27.0, 27.0),
                    size: Size(57.0, 27.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: const Color(0xfff7f7f7),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(36.3, 6.3, 13.8, 13.8),
                    size: Size(57.0, 27.0),
                    child:
                        // Adobe XD layer: 'Icon material-edit' (shape)
                        GestureDetector(
                      onTap: () {
                        print("Edit");
                      },
                      child: SvgPicture.string(
                        _svg_amx086,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(8.5, 5.9, 11.0, 14.1),
                    size: Size(57.0, 27.0),
                    child:
                        // Adobe XD layer: 'Icon material-delete' (shape)
                        GestureDetector(
                      onTap: () {
                        print("delete");
                      },
                      child: SvgPicture.string(
                        _svg_rmirba,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
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
