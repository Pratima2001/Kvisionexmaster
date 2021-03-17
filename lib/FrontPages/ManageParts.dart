import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:kvmaster/API/Api.dart';
import 'package:kvmaster/Filter/ManagePartFilter.dart';
import 'package:kvmaster/OnButtonClickPages/ManagePartButton.dart';

import '../EditButtonPages/ManagePartEditButton.dart';


class ManageParts extends StatefulWidget {
  ManageParts({
    Key key,
  }) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<ManageParts> {
  @override
  Widget build(BuildContext context) {

    final orientation = MediaQuery.of(context).orientation;
    ScrollController _con;
    return Scaffold(
      backgroundColor: const Color(0xfff7f7f7),
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
                             Navigator.of(context).push(MaterialPageRoute(
                              builder: (_) => ManagePartButton()));
                       
                                    
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
      
     
      body: SingleChildScrollView(
        controller: _con,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Transform.translate(
              offset: Offset(27.0, 49.0),
              child: GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child:Icon(Icons.arrow_back,color: Colors.black,size: 35,)
              ),
            ),
             Transform.translate(
              offset: Offset(MediaQuery.of(context).size.width.toDouble()-55, 110.0),
              child: IconButton(icon: Image.asset("assets/images/filter.png",width: 30,height: 30,), 
              onPressed: (){
                 Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => ManagePartFilter()));
               
                
              })
            ),
            Transform.translate(
              offset: Offset(27.0, 76.0),
              child: Text(
                'Part Master',
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
              offset: Offset(31.0, 107.0),
              child: SingleChildScrollView(
                child: Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 20,
                  runSpacing: 20,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height,
                      child: StreamBuilder(
                        stream: FirebaseFirestore.instance.collection("ProductPartMaster")
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
                                        width: 165.0,
                                        height: 132.0,
                                        child: Stack(
                                          children: <Widget>[
                                            Container(
                                              width: 165.0,
                                              height: 132.0,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(27.0),
                                                color: const Color(0xfffddfce),
                                              ),
                                            ),
                                            Transform.translate(
                                              offset: Offset(49.4, 57.0),
                                              child: SizedBox(
                                                width: 67.0,
                                                child: Text(
                                                  snapshot.data.documents[index].get('partName'),
                                                  style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontSize: 14,
                                                    color: const Color(0xff000000),
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                            ),
                                            Transform.translate(
                                              offset: Offset(49.4, 75.0),
                                              child: SizedBox(
                                                width: 67.0,
                                                child: Text(
                                                  snapshot.data.documents[index].get('partNameInTamil'),
                                                  style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontSize: 13,
                                                    color: const Color(0xff000000),
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                            ),
                                            Transform.translate(
                                              offset: Offset(49.4, 95.0),
                                              child: SizedBox(
                                                width: 67.0,
                                                child: Text(
                                                  snapshot.data.documents[index].get('department'),
                                                  style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontSize: 12,
                                                    color: const Color(0xff000000),
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                            ),
                                            Transform.translate(
                                              offset: Offset(104.0, 18.0),
                                              child: SizedBox(
                                                width: 45.0,
                                                height: 22.0,
                                                child: Stack(
                                                  children: <Widget>[
                                                    Transform.translate(
                                                      offset: Offset(23.0, 0.0),
                                                      child: Container(
                                                        width: 22.0,
                                                        height: 22.0,
                                                        decoration: BoxDecoration(
                                                          borderRadius: BorderRadius.circular(5.0),
                                                          color: const Color(0xfff7f7f7),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      width: 21.0,
                                                      height: 22.0,
                                                      decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(5.0),
                                                        color: const Color(0xfff7f7f7),
                                                      ),
                                                    ),
                                                    Pinned.fromSize(
                                                      bounds: Rect.fromLTWH(36.3, 6.3, 13.8, 13.8),
                                                      size: Size(57.0, 27.0),
                                                      child:
                                                      // Adobe XD layer: 'Icon material-edit' (shape)
                                                      GestureDetector(
                                                        onTap: (){
                                                          print("Edit");
                                                          Navigator.of(context).push(MaterialPageRoute(
                                                              builder: (_) => ManagePartEditButton(id:snapshot.data.documents[index].get('userId') ,partName: snapshot.data.documents[index].get('partName'),partnameInTamil: snapshot.data.documents[index].get('partNameInTamil'),department: snapshot.data.documents[index].get('department'),podiName: snapshot.data.documents[index].get('podiName'),gattiRequired: snapshot.data.documents[index].get('gattiRequired'),weight: snapshot.data.documents[index].get('weightOrPcs'),)));
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
                                                        onTap: (){
                                                          showDialog(
                                                            context: context,
                                                            builder: (context) {
                                                              return AlertDialog(
                                                                title: Text('Are you sure?'),
                                                                content: Text('Do you want to delete '+snapshot.data.documents[index].get('partName'),style: TextStyle(color: Colors.red),),
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
                                                                      FirebaseController.instanace.productPartMasterDelete( snapshot.data.documents[index].get('userId')).then((data) async {
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
                  ]
                ),
              ),
            ),
        
// filterrrr
            

          ],
        ),
      ),
    );
  }

  Widget showProduct(){
    return SizedBox(
      width: 165.0,
      height: 132.0,
      child: Stack(
        children: <Widget>[
          Container(
            width: 165.0,
            height: 132.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(27.0),
              color: const Color(0xfffddfce),
            ),
          ),
          Transform.translate(
            offset: Offset(49.4, 57.0),
            child: SizedBox(
              width: 67.0,
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
          ),
          Transform.translate(
            offset: Offset(104.0, 18.0),
            child: SizedBox(
              width: 45.0,
              height: 22.0,
              child: Stack(
                children: <Widget>[
                  Transform.translate(
                    offset: Offset(23.0, 0.0),
                    child: Container(
                      width: 22.0,
                      height: 22.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: const Color(0xfff7f7f7),
                      ),
                    ),
                  ),
                  Container(
                    width: 21.0,
                    height: 22.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: const Color(0xfff7f7f7),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(36.3, 6.3, 13.8, 13.8),
                    size: Size(57.0, 27.0),
                    child:
                    // Adobe XD layer: 'Icon material-edit' (shape)
                    GestureDetector(
                      onTap: (){
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
                      onTap: (){
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

const String _svg_6o80u5 =
    '<svg viewBox="129.8 152.9 33.2 11.6" ><path transform="translate(147.51, 148.62)" d="M 4.5 13.44657421112061 L 4.5 15.80150890350342 L 6.796969890594482 15.80150890350342 L 13.57150173187256 8.856019973754883 L 11.27453136444092 6.50108528137207 L 4.5 13.44657421112061 Z M 15.34782409667969 7.034870147705078 C 15.58670806884766 6.789958000183105 15.58670806884766 6.394328117370605 15.34782409667969 6.149415969848633 L 13.91451549530029 4.679935455322266 C 13.67563247680664 4.435021877288818 13.28974151611328 4.435021877288818 13.05085563659668 4.679935455322266 L 11.92993450164795 5.829143524169922 L 14.22690296173096 8.184079170227051 L 15.34782409667969 7.034870147705078 Z" fill="#abdc55" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(122.31, 148.36)" d="M 8.12660026550293 14.77859497070313 C 8.12660026550293 15.48524761199951 8.690540313720703 16.06341743469238 9.379799842834473 16.06341743469238 L 14.39259624481201 16.06341743469238 C 15.08185577392578 16.06341743469238 15.64579486846924 15.48524761199951 15.64579486846924 14.77859497070313 L 15.64579486846924 7.069649696350098 L 8.12660026550293 7.069649696350098 L 8.12660026550293 14.77859497070313 Z M 16.27239608764648 5.142412185668945 L 14.07929515838623 5.142412185668945 L 13.45269680023193 4.5 L 10.31969833374023 4.5 L 9.693099021911621 5.142412185668945 L 7.5 5.142412185668945 L 7.5 6.427236557006836 L 16.27239608764648 6.427236557006836 L 16.27239608764648 5.142412185668945 Z" fill="#e53c3c" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_obtgp1 =
    '<svg viewBox="328.0 739.6 26.8 26.8" ><path transform="translate(328.0, 737.37)" d="M 24.84039115905762 12.75939655303955 L 16.24179458618164 12.75939655303955 L 16.24179458618164 4.160799026489258 C 16.24179458618164 3.105679750442505 15.3861141204834 2.25 14.33099460601807 2.25 L 12.42019557952881 2.25 C 11.36507511138916 2.25 10.50939559936523 3.105679750442505 10.50939559936523 4.160799026489258 L 10.50939559936523 12.75939655303955 L 1.910799264907837 12.75939655303955 C 0.8556798100471497 12.75939655303955 0 13.61507606506348 0 14.67019557952881 L 0 16.58099555969238 C 0 17.6361141204834 0.8556798100471497 18.49179458618164 1.910799264907837 18.49179458618164 L 10.50939559936523 18.49179458618164 L 10.50939559936523 27.09039115905762 C 10.50939559936523 28.1455078125 11.36507511138916 29.00119018554688 12.42019557952881 29.00119018554688 L 14.33099460601807 29.00119018554688 C 15.3861141204834 29.00119018554688 16.24179458618164 28.1455078125 16.24179458618164 27.09039115905762 L 16.24179458618164 18.49179458618164 L 24.84039115905762 18.49179458618164 C 25.89550971984863 18.49179458618164 26.75119018554688 17.6361141204834 26.75119018554688 16.58099555969238 L 26.75119018554688 14.67019557952881 C 26.75119018554688 13.61507606506348 25.89550971984863 12.75939655303955 24.84039115905762 12.75939655303955 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_g4wkax =
    '<svg viewBox="27.0 33.0 355.0 57.0" ><path transform="translate(364.59, 72.59)" d="M 16.59087181091309 0 L 0.8169402480125427 0 C 0.09214209765195847 0 -0.2735889256000519 0.8794271945953369 0.2399712651968002 1.392987489700317 L 6.527878761291504 7.681847095489502 L 6.527878761291504 14.68771934509277 C 6.527878761291504 14.9539680480957 6.657791137695313 15.20348930358887 6.875930309295654 15.35621356964111 L 9.595877647399902 17.25949859619141 C 10.13248920440674 17.63512229919434 10.87979602813721 17.25443267822266 10.87979602813721 16.59100341796875 L 10.87979602813721 7.681847095489502 L 17.16787528991699 1.392987489700317 C 17.68038177490234 0.8804472088813782 17.31716728210449 0 16.59087181091309 0 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(22.5, 24.0)" d="M 31.5 16.5 L 10.24499988555908 16.5 L 15.61499977111816 11.11499977111816 L 13.5 9 L 4.5 18 L 13.5 27 L 15.61499977111816 24.88500022888184 L 10.24499988555908 19.5 L 31.5 19.5 L 31.5 16.5 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_amx086 =
    '<svg viewBox="159.3 154.3 13.8 13.8" ><path transform="translate(154.85, 149.75)" d="M 4.5 15.43387126922607 L 4.5 18.31168746948242 L 7.377816200256348 18.31168746948242 L 15.86545658111572 9.824048042297363 L 12.98764038085938 6.946230888366699 L 4.5 15.43387126922607 Z M 18.09096717834473 7.598536491394043 C 18.3902587890625 7.299243927001953 18.3902587890625 6.815770149230957 18.09096717834473 6.516478538513184 L 16.29520988464355 4.720720291137695 C 15.9959192276001 4.421426773071289 15.51244640350342 4.421426773071289 15.21315288543701 4.720720291137695 L 13.80877780914307 6.125094413757324 L 16.68659210205078 9.002911567687988 L 18.09096717834473 7.598536491394043 Z" fill="#abdc55" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_rmirba =
    '<svg viewBox="131.5 153.9 11.0 14.1" ><path transform="translate(124.04, 149.43)" d="M 8.285051345825195 17.06081581115723 C 8.285051345825195 17.92437171936035 8.991598129272461 18.63091659545898 9.855154037475586 18.63091659545898 L 16.13556098937988 18.63091659545898 C 16.99911689758301 18.63091659545898 17.70566177368164 17.92437171936035 17.70566177368164 17.06081581115723 L 17.70566177368164 7.640205383300781 L 8.285051345825195 7.640205383300781 L 8.285051345825195 17.06081581115723 Z M 18.49071502685547 5.285051345825195 L 15.74303436279297 5.285051345825195 L 14.95798492431641 4.5 L 11.03272914886475 4.5 L 10.24767875671387 5.285051345825195 L 7.5 5.285051345825195 L 7.5 6.85515308380127 L 18.49071502685547 6.85515308380127 L 18.49071502685547 5.285051345825195 Z" fill="#e53c3c" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_lxlhxi =
    '<svg viewBox="27.0 33.0 27.0 18.0" ><path transform="translate(22.5, 24.0)" d="M 31.5 16.5 L 10.24499988555908 16.5 L 15.61499977111816 11.11499977111816 L 13.5 9 L 4.5 18 L 13.5 27 L 15.61499977111816 24.88500022888184 L 10.24499988555908 19.5 L 31.5 19.5 L 31.5 16.5 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
