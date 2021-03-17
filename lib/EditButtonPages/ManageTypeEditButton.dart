/*
*  google_pixel3_xl4_widget.dart
*  Rajesh
*
*  Created by [Author].
*  Copyright © 2018 kvisionex. All rights reserved.
    */

import 'package:adobe_xd/adobe_xd.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kvmaster/API/Api.dart';



class ManageTypeEditButton extends StatefulWidget {
  ManageTypeEditButton({
    Key key,this.id,this.productName,this.productNameInTamil,this.bodies,this.variations
  }) : super(key: key);


  String id;
  String productName;
  String productNameInTamil;
  String bodies;
  String variations;

  @override
  _State createState() => _State();
}

class _State extends State<ManageTypeEditButton> {
  final _productName           =  TextEditingController();
  final _productNameInTamil        = TextEditingController();
  String _bodies ;
  String _variations ;
  ScrollController con;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 247, 247, 247),
        ),
        child: SingleChildScrollView(
          controller: con,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Transform.translate(
                offset: Offset(-160.0, 49.0),
                child: GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child:Icon(Icons.arrow_back,color: Colors.black,size: 35,)
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  margin: EdgeInsets.only(left: 30, top: 77),
                  child: Text(
                    "Add a \nProduct type Master",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.bold,
                      fontSize: 30,

                    ),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(30.0, 25.0),
                child: SizedBox(
                  width: 352.0,
                  height: 81.0,
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(0.0, 0.0, 49.0, 23.0),
                        size: Size(352.0, 81.0),
                        pinLeft: true,
                        pinTop: true,
                        fixedWidth: true,
                        fixedHeight: true,
                        child: Text(
                          'Name',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            color: const Color(0xff000000),
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(0.0, 33.0, 352.0, 48.0),
                        size: Size(352.0, 81.0),
                        pinLeft: true,
                        pinRight: true,
                        pinBottom: true,
                        fixedHeight: true,
                        child:
                        // Adobe XD layer: 'Area [DISPLAY_ELEME…' (shape)
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.0),
                            color: const Color(0xffffffff),
                          ),
                        ),
                      ),
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(16.0, 47.0, 149.0, 20.0),
                        size: Size(352.0, 81.0),
                        pinLeft: true,
                        fixedWidth: true,
                        fixedHeight: true,
                        child:
                        // Adobe XD layer: 'Value' (text)
                        TextFormField(
                          controller: _productName,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(50)
                          ],
                          cursorColor: const Color(0x6b000000),
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: widget.productName,
                            hintStyle: TextStyle(fontSize: 14),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Transform.translate(
                offset: Offset(30.0, 38.0),
                child: SizedBox(
                  width: 352.0,
                  height: 81.0,
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(0.0, 0.0, 89.0, 23.0),
                        size: Size(352.0, 81.0),
                        pinLeft: true,
                        pinTop: true,
                        fixedWidth: true,
                        fixedHeight: true,
                        child: Text(
                          'Tamil Name',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            color: const Color(0xff000000),
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(0.0, 33.0, 352.0, 48.0),
                        size: Size(352.0, 81.0),
                        pinLeft: true,
                        pinRight: true,
                        pinBottom: true,
                        fixedHeight: true,
                        child:
                        // Adobe XD layer: 'Area [DISPLAY_ELEME…' (shape)
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.0),
                            color: const Color(0xffffffff),
                          ),
                        ),
                      ),
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(16.0, 47.0, 149.0, 20.0),
                        size: Size(352.0, 81.0),
                        pinLeft: true,
                        fixedWidth: true,
                        fixedHeight: true,
                        child:
                        // Adobe XD layer: 'Value' (text)
                        TextFormField(
                          controller: _productNameInTamil,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(50)
                          ],
                          cursorColor: const Color(0x6b000000),
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: widget.productNameInTamil,
                            hintStyle: TextStyle(fontSize: 14),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Transform.translate(
                offset: Offset(30.0, 51.0),
                child: SizedBox(
                  width: 352.0,
                  height: 81.0,
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(0.0, 0.0, 70.0, 23.0),
                        size: Size(352.0, 81.0),
                        pinLeft: true,
                        pinTop: true,
                        fixedWidth: true,
                        fixedHeight: true,
                        child: Text(
                          'Bodies',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            color: const Color(0xff000000),
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(0.0, 33.0, 352.0, 48.0),
                        size: Size(352.0, 81.0),
                        pinLeft: true,
                        pinRight: true,
                        pinBottom: true,
                        fixedHeight: true,
                        child:
                        // Adobe XD layer: 'Area [DISPLAY_ELEME…' (shape)
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.0),
                            color: const Color(0xffffffff),
                          ),
                        ),
                      ),
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(16.0, 47.0, 119.0, 20.0),
                        size: Size(352.0, 81.0),
                        pinLeft: true,
                        fixedWidth: true,
                        fixedHeight: true,
                        child:
                        // Adobe XD layer: 'Value' (text)
                        DropdownButton(
                          hint: _bodies== null
                              ? Text(widget.bodies)
                              : Text(
                            _bodies,
                            style: TextStyle(color: Colors.blue),
                          ),
                          isExpanded: true,
                          iconSize: 30.0,
                          style: TextStyle(color: Colors.blue),
                          items: ['SMALL', 'BIG', 'LARGE'].map(
                                (val) {
                              return DropdownMenuItem<String>(
                                value: val,
                                child: Text(val),
                              );
                            },
                          ).toList(),
                          onChanged: (val) {
                            setState(
                                  () {
                                _bodies= val;
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),


              Transform.translate(
                offset: Offset(30.0, 65.0),
                child: SizedBox(
                  width: 352.0,
                  height: 81.0,
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(0.0, 0.0, 80.0, 23.0),
                        size: Size(352.0, 81.0),
                        pinLeft: true,
                        pinTop: true,
                        fixedWidth: true,
                        fixedHeight: true,
                        child: Text(
                          'Variations',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            color: const Color(0xff000000),
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(0.0, 33.0, 352.0, 48.0),
                        size: Size(352.0, 81.0),
                        pinLeft: true,
                        pinRight: true,
                        pinBottom: true,
                        fixedHeight: true,
                        child:
                        // Adobe XD layer: 'Area [DISPLAY_ELEME…' (shape)
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.0),
                            color: const Color(0xffffffff),
                          ),
                        ),
                      ),
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(16.0, 47.0, 110.0, 20.0),
                        size: Size(352.0, 81.0),
                        pinLeft: true,
                        fixedWidth: true,
                        fixedHeight: true,
                        child:
                        // Adobe XD layer: 'Value' (text)
                        DropdownButton(
                          hint: _variations == null
                              ? Text(widget.variations)
                              : Text(
                            _variations,
                            style: TextStyle(color: Colors.blue),
                          ),
                          isExpanded: true,
                          iconSize: 30.0,
                          style: TextStyle(color: Colors.blue),
                          items: ['SMALL', 'BIG', 'LARGE'].map(
                                (val) {
                              return DropdownMenuItem<String>(
                                value: val,
                                child: Text(val),
                              );
                            },
                          ).toList(),
                          onChanged: (val) {
                            setState(
                                  () {
                                _variations= val;
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(260, 90, 0, 0),
                    child: Container(
                      height: 70,
                      width: 70,
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
                      child: IconButton(
                        onPressed: (){
                          print("0");
                          print(widget.id);
                          FirebaseController.instanace.productTypeMasterEdit(widget.id,_productName.text,_productNameInTamil.text,_bodies,_variations).then((data) async {
                            print(data);
                            if(data==null){
                              _showDialog("Problem Occurred While Saving Your Data! Please try again.");
                            }else{
                              _showDialog("Upload Successfully");
                            }
                          });
                        },
                        icon: SvgPicture.string(
                          _svg_2re1gg,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),


                ],
              )
            ],
          ),
        ),

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

const String _svg_2re1gg =
    '<svg viewBox="327.0 742.3 27.6 20.6" ><path transform="translate(327.0, 737.67)" d="M 9.379925727844238 24.7669792175293 L 0.4044407606124878 15.79149436950684 C -0.1347895711660385 15.25226497650146 -0.1347895711660385 14.37796306610107 0.4044407606124878 13.83867931365967 L 2.357202291488647 11.8858642578125 C 2.896432399749756 11.34657955169678 3.770787239074707 11.34657955169678 4.310017585754395 11.8858642578125 L 10.35633277893066 17.93212509155273 L 23.30686950683594 4.981643676757813 C 23.84609794616699 4.442413330078125 24.7204532623291 4.442413330078125 25.25968360900879 4.981643676757813 L 27.21244621276855 6.93445873260498 C 27.75167655944824 7.473689079284668 27.75167655944824 8.347990036010742 27.21244621276855 8.887274742126465 L 11.33274078369141 24.76703262329102 C 10.79345607757568 25.3062629699707 9.919155120849609 25.3062629699707 9.379925727844238 24.7669792175293 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_obtgp1 =
    '<svg viewBox="328.0 739.6 26.8 26.8" ><path transform="translate(328.0, 737.37)" d="M 24.84039115905762 12.75939655303955 L 16.24179458618164 12.75939655303955 L 16.24179458618164 4.160799026489258 C 16.24179458618164 3.105679750442505 15.3861141204834 2.25 14.33099460601807 2.25 L 12.42019557952881 2.25 C 11.36507511138916 2.25 10.50939559936523 3.105679750442505 10.50939559936523 4.160799026489258 L 10.50939559936523 12.75939655303955 L 1.910799264907837 12.75939655303955 C 0.8556798100471497 12.75939655303955 0 13.61507606506348 0 14.67019557952881 L 0 16.58099555969238 C 0 17.6361141204834 0.8556798100471497 18.49179458618164 1.910799264907837 18.49179458618164 L 10.50939559936523 18.49179458618164 L 10.50939559936523 27.09039115905762 C 10.50939559936523 28.1455078125 11.36507511138916 29.00119018554688 12.42019557952881 29.00119018554688 L 14.33099460601807 29.00119018554688 C 15.3861141204834 29.00119018554688 16.24179458618164 28.1455078125 16.24179458618164 27.09039115905762 L 16.24179458618164 18.49179458618164 L 24.84039115905762 18.49179458618164 C 25.89550971984863 18.49179458618164 26.75119018554688 17.6361141204834 26.75119018554688 16.58099555969238 L 26.75119018554688 14.67019557952881 C 26.75119018554688 13.61507606506348 25.89550971984863 12.75939655303955 24.84039115905762 12.75939655303955 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
