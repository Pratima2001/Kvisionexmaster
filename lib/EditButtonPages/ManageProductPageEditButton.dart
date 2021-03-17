import 'dart:io';

import 'package:adobe_xd/adobe_xd.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:kvmaster/API/Api.dart';
import 'package:kvmaster/PartRequiremenet/ManageProductsPartRequirment.dart';
import 'package:kvmaster/pickImageController.dart';
class ManageProductPageEditButton extends StatefulWidget {

  ManageProductPageEditButton({
    Key key,this.id,this.productName,this.productNameInTamil,this.productType,this.body,this.pidi,this.approxWeightSmall,this.approxWeightMedium,this.approxWeightBig,this.mainBodyProductName,this.kanni,this.weight
  }) : super(key: key);
  String id;
  String productName;
  String productNameInTamil;
  String productType;
  String body;
  String pidi;
  String approxWeightSmall;
  String approxWeightMedium;
  String approxWeightBig;
  String mainBodyProductName;
  String kanni;
  String weight;
  @override
  _ManageProductPageButton1State createState() => _ManageProductPageButton1State();
}

class _ManageProductPageButton1State extends State<ManageProductPageEditButton> {
  ScrollController _con;
  final _productName          = TextEditingController();
  final _productNameInTamil    = TextEditingController();
//  final _productType           = TextEditingController();
//  final _body                 = TextEditingController();
  final _pidi                 = TextEditingController();
  final _approxWeightSmall     = TextEditingController();
  final _approxWeightMedium    = TextEditingController();
  final _approxWeightBig        = TextEditingController();
 // final _mainBodyProductName    = TextEditingController();
  final _kanni                  = TextEditingController();
  final _weight                = TextEditingController();
  File _userImageFile1 = File('');
  String _userImageUrlFromFB1 = '';

  File _userImageFile2 = File('');
  String _userImageUrlFromFB2 = '';

  File _userImageFile3 = File('');
  String _userImageUrlFromFB3 = '';

  String _productType;
  String _body;
  String _mainBodyProductName ;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color(0xfff7f7f7),
      body: SingleChildScrollView(
        controller: _con,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Transform.translate(
              offset: Offset(20.0, 45.0),
              child: IconButton(onPressed: (){
                Navigator.pop(context);
              },icon: Icon(Icons.arrow_back,color: Colors.black,size: 35)),
            ),
            Transform.translate(
              offset: Offset(30.0, 75.0),
              child: Text(
                'Add a \nProduct',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 30,
                  color: const Color(0xff000000),
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Transform.translate(
              offset: Offset(30.0, 100.0),
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
                    Padding(
                      padding: EdgeInsets.fromLTRB(8, 31, 0, 0),
                      child: Container(

                        // Adobe XD layer: 'Value' (text)
                        child:TextFormField(
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
                    ),
                  ],
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(30.0, 115.0),
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
            Transform.translate(
              offset: Offset(30.0, 123.0),
              child:
              // Adobe XD layer: 'Area [DISPLAY_ELEME…' (shape)
              Container(
                width: 352.0,
                height: 48.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.0),
                  color: const Color(0xffffffff),
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(46.0, 75.0),
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
                  hintText:widget.productNameInTamil,
                  hintStyle: TextStyle(fontSize: 14),
                  border: InputBorder.none,
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(30.0, 90.0),
              child: Text(
                'Product Type',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  color: const Color(0xff000000),
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Transform.translate(
              offset: Offset(30.0, 100.0),
              child:
              // Adobe XD layer: 'Area [DISPLAY_ELEME…' (shape)
              Container(
                width: 352.0,
                height: 48.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.0),
                  color: const Color(0xffffffff),
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(46.0, 50.0),
              child:
              // Adobe XD layer: 'Value' (text)
              DropdownButton(
                hint: _productType == null
                    ? Text(widget.productType)
                    : Text(
                  _productType,
                  style: TextStyle(color: Colors.blue),
                ),
                isExpanded: true,
                iconSize: 30.0,
                style: TextStyle(color: Colors.blue),
                items: ['ANKLETS', 'WAIST CHAIN', 'TOE RINGS'].map(
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
                      _productType= val;
                    },
                  );
                },
              ),
            ),
            Transform.translate(
              offset: Offset(30.0, 62.0),
              child: Text(
                'Body',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  color: const Color(0xff000000),
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Transform.translate(
              offset: Offset(30.0, 72.0),
              child:
              // Adobe XD layer: 'Area [DISPLAY_ELEME…' (shape)
              Container(
                width: 168.0,
                height: 48.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.0),
                  color: const Color(0xffffffff),
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(46.0, 24.0),
              child:
              // Adobe XD layer: 'Value' (text)
              DropdownButton(
                hint: _body== null
                    ? Text(widget.body)
                    : Text(
                  _body,
                  style: TextStyle(color: Colors.blue),
                ),
                isExpanded: true,
                iconSize: 20.0,
                style: TextStyle(color: Colors.blue),
                items: ['LOOSE KOKKI', 'KUSBU KOKKI', 'SCHAIN KOKKI','LOOSE BILLAI','JALRA','URUTTU','DESIGN'].map(
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
                      _body = val;
                    },
                  );
                },
              ),
            ),
            Transform.translate(
              offset: Offset(214.0, -50.0),
              child: Text(
                'Pidi',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  color: const Color(0xff000000),
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.left,
              ),
            ),

            Transform.translate(
              offset: Offset(214.0, -43.0),
              child:
              // Adobe XD layer: 'Area [DISPLAY_ELEME…' (shape)
              Container(
                width: 168.0,
                height: 48.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.0),
                  color: const Color(0xffffffff),
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(230.0,-90.0),
              child:
              // Adobe XD layer: 'Value' (text)
              TextFormField(
                controller: _pidi,
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  //FilteringTextInputFormatter.digitsOnly
                ],
                cursorColor: const Color(0x6b000000),

                decoration: InputDecoration(
                  hintText: widget.pidi,
                  hintStyle: TextStyle(fontSize: 14),
                  border: InputBorder.none,
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(30.0, -75.0),
              child: Text(
                'Approx Weight',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  color: const Color(0xff000000),
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Transform.translate(
              offset: Offset(30.0, -67.0),
              child:
              // Adobe XD layer: 'Area [DISPLAY_ELEME…' (shape)
              Container(
                width: 352.0,
                height: 122.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.0),
                  color: const Color(0xffffffff),
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(63.2, -172.0),
              child:
              // Adobe XD layer: 'Value' (text)
              SizedBox(
                width: 46.0,
                child: Text(
                  'Small',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14,
                    color: const Color(0xff3e3e3e),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(171.2, -187.0),
              child:
              // Adobe XD layer: 'Value' (text)
              SizedBox(
                width: 70.0,
                child: Text(
                  'Medium',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14,
                    color: const Color(0xff3e3e3e),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(312.5,-202),
              child:
              // Adobe XD layer: 'Value' (text)
              SizedBox(
                width: 29.0,
                child: Text(
                  'Big',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14,
                    color: const Color(0xff3e3e3e),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(78.0, -180.0),
              child:
              // Adobe XD layer: 'Value' (text)
              TextFormField(
                controller: _approxWeightSmall,
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  //FilteringTextInputFormatter.digitsOnly
                ],
                cursorColor: const Color(0x6b000000),
                // keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: widget.approxWeightSmall,
                  hintStyle: TextStyle(fontSize: 14),
                  border: InputBorder.none,
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(198.0, -228.0),
              child:
              // Adobe XD layer: 'Value' (text)
              TextFormField(
                controller: _approxWeightMedium,
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  //FilteringTextInputFormatter.digitsOnly
                ],
                cursorColor: const Color(0x6b000000),
                // keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: widget.approxWeightMedium,
                  hintStyle: TextStyle(fontSize: 14),
                  border: InputBorder.none,
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(319.0, -277.0),
              child:
              // Adobe XD layer: 'Value' (text)
              TextFormField(
                controller: _approxWeightBig,
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                 // FilteringTextInputFormatter.digitsOnly
                ],
                cursorColor: const Color(0x6b000000),
                // keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: widget.approxWeightBig,
                  hintStyle: TextStyle(fontSize: 14),
                  border: InputBorder.none,
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(30.0,-205.0),
              child: Text(
                'Pictures',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  color: const Color(0xff000000),
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Transform.translate(
              offset: Offset(30.0, -190.0),
              child: GestureDetector(
                onTap: () {
                  PickImageController.instance.cropImageFromFile().then((croppedFile) {
                    if (croppedFile != null) {
                      setState(() {
                        _userImageFile1 = croppedFile;
                        _userImageUrlFromFB1 = '';
                      });
                    } else {
                      _showDialog('Pick Image error');
                    }
                  });
                },
                child: Container(
                  width: 226.0,
                  height: 226.0,
                  decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                  ),
                  child: Card(
                    child: _userImageUrlFromFB1 != ''
                        ? Image.network(_userImageUrlFromFB1)
                        : (_userImageFile1.path != '')
                        ? Image.file(_userImageFile1,
                        fit: BoxFit.fill)
                        : Icon(Icons.add_photo_alternate,
                        size: 60, color: Colors.grey[700]),
                  ),
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(274.0, -415.0),
              child: Container(
                width: 108.0,
                height: 108.0,
                decoration: BoxDecoration(
                  color: const Color(0xffffffff),
                ),
                child: Card(
                  child: _userImageUrlFromFB2 != ''
                      ? Image.network(_userImageUrlFromFB2)
                      : (_userImageFile2.path != '')
                      ? Image.file(_userImageFile2,
                      fit: BoxFit.fill)
                      : Icon(Icons.add_photo_alternate,
                      size: 60, color: Colors.grey[700]),
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(274.0, -408.0),
              child: Container(
                width: 108.0,
                height: 108.0,
                decoration: BoxDecoration(
                  color: const Color(0xffffffff),
                ),
                child: Card(
                  child: _userImageUrlFromFB3 != ''
                      ? Image.network(_userImageUrlFromFB3)
                      : (_userImageFile3.path != '')
                      ? Image.file(_userImageFile3,
                      fit: BoxFit.fill)
                      : Icon(Icons.add_photo_alternate,
                      size: 60, color: Colors.grey[700]),
                ),
              ),

            ),
//            Transform.translate(
//              offset: Offset(30.0, -390.0),
//              child:
//              // Adobe XD layer: 'Area [DISPLAY_ELEME…' (shape)
//              Container(
//                width: 137.0,
//                height: 36.0,
//                decoration: BoxDecoration(
//                  borderRadius: BorderRadius.circular(6.0),
//                  color: const Color(0xffabdc55),
//                ),
//              ),
//            ),
//            Transform.translate(
//              offset: Offset(58.0, -415.0),
//              child: GestureDetector(
//                onTap: (){
//                  print("0");
//                },
//                child: Text(
//                  'Choose File',
//                  style: TextStyle(
//                    fontFamily: 'Poppins',
//                    fontSize: 13,
//                    color: const Color(0xff000000),
//                    fontWeight: FontWeight.w300,
//                  ),
//                  textAlign: TextAlign.left,
//                ),
//              ),
//            ),
            Transform.translate(
              offset: Offset(29.0, -380.0),
              child: Text(
                'Part Requirments',
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
              offset: Offset(30.0, -365.0),
              child: Text(
                'Main body',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  color: const Color(0xff000000),
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Transform.translate(
              offset: Offset(30.0,-356.0),
              child:
              // Adobe XD layer: 'Area [DISPLAY_ELEME…' (shape)
              Container(
                width: 352.0,
                height: 48.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.0),
                  color: const Color(0xffffffff),
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(46.0, -406.0),
              child:
              // Adobe XD layer: 'Value' (text)
              DropdownButton(
                hint: _mainBodyProductName== null
                    ? Text(widget.mainBodyProductName)
                    : Text(
                  _mainBodyProductName,
                  style: TextStyle(color: Colors.blue),
                ),
                isExpanded: true,
                iconSize: 20.0,
                style: TextStyle(color: Colors.blue),
                items: ['LOOSE KOKKI', 'KUSBU KOKKI', 'SCHAIN KOKKI','LOOSE BILLAI'].map(
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
                      _mainBodyProductName = val;
                    },
                  );
                },
              ),
            ),

            Transform.translate(
              offset: Offset(30.0, -385.0),
              child: Text(
                'Kaani /inch',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  color: const Color(0xff000000),
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Transform.translate(
              offset: Offset(214.0, -404.0),
              child: Text(
                'Weight /Inch',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  color: const Color(0xff000000),
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Transform.translate(
              offset: Offset(30.0, -395.0),
              child:
              // Adobe XD layer: 'Area [DISPLAY_ELEME…' (shape)
              Container(
                width: 168.0,
                height: 48.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.0),
                  color: const Color(0xffffffff),
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(46.0, -444.0),
              child:
              // Adobe XD layer: 'Value' (text)
              TextFormField(
                controller: _kanni,
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  //FilteringTextInputFormatter.digitsOnly
                ],
                cursorColor: const Color(0x6b000000),
                // keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: widget.kanni,
                  hintStyle: TextStyle(fontSize: 14),
                  border: InputBorder.none,
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(214.0, -490.0),
              child:
              // Adobe XD layer: 'Area [DISPLAY_ELEME…' (shape)
              Container(
                width: 168.0,
                height: 48.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.0),
                  color: const Color(0xffffffff),
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(230.0, -538.0),
              child:
              // Adobe XD layer: 'Value' (text)
              TextFormField(
                controller: _weight,
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                 // FilteringTextInputFormatter.digitsOnly
                ],
                cursorColor: const Color(0x6b000000),
                // keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: widget.weight,
                  hintStyle: TextStyle(fontSize: 14),
                  border: InputBorder.none,
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(29.0, -514.0),
              child: Container(
                width: 354.0,
                height: 50.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13.0),
                  color: const Color(0xff3e45a9),
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(90.0, -550.0),
              child: GestureDetector(
                onTap: (){
                  print("tap");
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => ManageProductPagePartRequirement()));
                },
                child: Text(
                  'Proceed to part requirments',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    color: const Color(0xffffffff),
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),

            Transform.translate(
              offset: Offset(260.0, -509.0),
              child: SizedBox(
                width: 68.0,
                height: 68.0,
                child: Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 0.0, 68.0, 68.0),
                      size: Size(68.0, 68.0),
                      pinLeft: true,
                      pinRight: true,
                      pinTop: true,
                      pinBottom: true,
                      child: Stack(
                        children: <Widget>[
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(0.0, 0.0, 68.0, 68.0),
                            size: Size(68.0, 68.0),
                            pinLeft: true,
                            pinRight: true,
                            pinTop: true,
                            pinBottom: true,
                            child: GestureDetector(
                              onTap: (){
                                print("save");
                                FirebaseController.instanace.saveUserImageToFirebaseStorage(_productName.text,_productName.text,_productNameInTamil.text,_productType,
                                    _body,_pidi.text,_approxWeightSmall.text,_approxWeightMedium.text,_approxWeightBig.text,_mainBodyProductName,_kanni.text
                                    ,_weight.text,_userImageFile1).then((data) async {
                                  print(data);
                                  if(data==null){
                                    _showDialog("Problem Occurred While Saving Your Data! Please try again.");
                                  }else{
                                    _showDialog("Upload Successfully");
                                  }
                                });
                              },
                              child: Container(
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
                            ),
                          ),
                        ],
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(20.0, 23.3, 27.6, 20.6),
                      size: Size(68.0, 68.0),
                      fixedWidth: true,
                      fixedHeight: true,
                      child:
                      // Adobe XD layer: 'Icon awesome-check' (shape)
                      SvgPicture.string(
                        _svg_2re1gg,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
              ),
            ),

          ],
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


const String _svg_lxlhxi =
    '<svg viewBox="27.0 33.0 27.0 18.0" ><path transform="translate(22.5, 24.0)" d="M 31.5 16.5 L 10.24499988555908 16.5 L 15.61499977111816 11.11499977111816 L 13.5 9 L 4.5 18 L 13.5 27 L 15.61499977111816 24.88500022888184 L 10.24499988555908 19.5 L 31.5 19.5 L 31.5 16.5 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_q9e8kj =
    '<svg viewBox="-10.5 435.6 423.0 771.8" ><path transform="translate(-10.5, 1183.5)" d="M 423 0 L 0 0" fill="none" stroke="#ffffff" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="matrix(0.0, -1.0, 1.0, 0.0, 344.6, 1218.66)" d="M 13.3046989440918 12.15153884887695 L 17.81447410583496 7.645312309265137 C 18.14800643920898 7.31178092956543 18.14800643920898 6.772452354431152 17.81447410583496 6.442469120025635 C 17.48094177246094 6.10893726348877 16.94161605834961 6.112485408782959 16.60808372497559 6.442469120025635 L 11.49866008758545 11.54834365844727 C 11.17577266693115 11.87123107910156 11.16867733001709 12.38926887512207 11.47382164001465 12.72280120849609 L 16.60453414916992 17.86415672302246 C 16.77130126953125 18.03092384338379 16.99128913879395 18.1125316619873 17.20773124694824 18.1125316619873 C 17.42417144775391 18.1125316619873 17.64416122436523 18.03092384338379 17.81092643737793 17.86415672302246 C 18.14445877075195 17.53062629699707 18.14445877075195 16.99129867553711 17.81092643737793 16.66131401062012 L 13.3046989440918 12.15153884887695 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="matrix(0.0, -1.0, 1.0, 0.0, 162.6, 553.66)" d="M 13.3046989440918 12.15153884887695 L 17.81447410583496 7.645312309265137 C 18.14800643920898 7.31178092956543 18.14800643920898 6.772452354431152 17.81447410583496 6.442469120025635 C 17.48094177246094 6.10893726348877 16.94161605834961 6.112485408782959 16.60808372497559 6.442469120025635 L 11.49866008758545 11.54834365844727 C 11.17577266693115 11.87123107910156 11.16867733001709 12.38926887512207 11.47382164001465 12.72280120849609 L 16.60453414916992 17.86415672302246 C 16.77130126953125 18.03092384338379 16.99128913879395 18.1125316619873 17.20773124694824 18.1125316619873 C 17.42417144775391 18.1125316619873 17.64416122436523 18.03092384338379 17.81092643737793 17.86415672302246 C 18.14445877075195 17.53062629699707 18.14445877075195 16.99129867553711 17.81092643737793 16.66131401062012 L 13.3046989440918 12.15153884887695 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="matrix(0.0, -1.0, 1.0, 0.0, 342.6, 453.66)" d="M 13.3046989440918 12.15153884887695 L 17.81447410583496 7.645312309265137 C 18.14800643920898 7.31178092956543 18.14800643920898 6.772452354431152 17.81447410583496 6.442469120025635 C 17.48094177246094 6.10893726348877 16.94161605834961 6.112485408782959 16.60808372497559 6.442469120025635 L 11.49866008758545 11.54834365844727 C 11.17577266693115 11.87123107910156 11.16867733001709 12.38926887512207 11.47382164001465 12.72280120849609 L 16.60453414916992 17.86415672302246 C 16.77130126953125 18.03092384338379 16.99128913879395 18.1125316619873 17.20773124694824 18.1125316619873 C 17.42417144775391 18.1125316619873 17.64416122436523 18.03092384338379 17.81092643737793 17.86415672302246 C 18.14445877075195 17.53062629699707 18.14445877075195 16.99129867553711 17.81092643737793 16.66131401062012 L 13.3046989440918 12.15153884887695 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_6ckzk0 =
    '<svg viewBox="29.0 616.5 353.0 111.6" ><path transform="translate(143.5, 616.5)" d="M 0 0 L 0 111.6341552734375" fill="none" stroke="#f7f7f7" stroke-width="2" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(268.5, 616.5)" d="M 0 0 L 0 111.6341552734375" fill="none" stroke="#f7f7f7" stroke-width="2" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(29.0, 663.0)" d="M 0 0 L 353 0" fill="none" stroke="#f7f7f7" stroke-width="2" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_249lk0 =
    '<svg viewBox="60.5 704.5 294.0 1.0" ><path transform="translate(60.5, 704.5)" d="M 0 0 L 55 0" fill="none" fill-opacity="0.34" stroke="#707070" stroke-width="1" stroke-opacity="0.34" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(178.5, 704.5)" d="M 0 0 L 55 0" fill="none" fill-opacity="0.34" stroke="#707070" stroke-width="1" stroke-opacity="0.34" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(299.5, 704.5)" d="M 0 0 L 55 0" fill="none" fill-opacity="0.34" stroke="#707070" stroke-width="1" stroke-opacity="0.34" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_1nvote =
    '<svg viewBox="361.5 1418.0 8.9 8.9" ><path transform="translate(357.04, 1413.55)" d="M 4.5 11.58080101013184 L 4.5 13.44482803344727 L 6.364027976989746 13.44482803344727 L 11.86166954040527 7.947187900543213 L 9.997641563415527 6.083159446716309 L 4.5 11.58080101013184 Z M 13.30318450927734 6.505672454833984 C 13.49704265594482 6.311813831329346 13.49704265594482 5.998656749725342 13.30318450927734 5.804798603057861 L 12.14003086090088 4.641644477844238 C 11.9461727142334 4.447785377502441 11.63301658630371 4.447785377502441 11.43915748596191 4.641644477844238 L 10.52951145172119 5.551290035247803 L 12.3935375213623 7.415318965911865 L 13.30318450927734 6.505672454833984 Z" fill="#abdc55" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_2re1gg =
    '<svg viewBox="327.0 742.3 27.6 20.6" ><path transform="translate(327.0, 737.67)" d="M 9.379925727844238 24.7669792175293 L 0.4044407606124878 15.79149436950684 C -0.1347895711660385 15.25226497650146 -0.1347895711660385 14.37796306610107 0.4044407606124878 13.83867931365967 L 2.357202291488647 11.8858642578125 C 2.896432399749756 11.34657955169678 3.770787239074707 11.34657955169678 4.310017585754395 11.8858642578125 L 10.35633277893066 17.93212509155273 L 23.30686950683594 4.981643676757813 C 23.84609794616699 4.442413330078125 24.7204532623291 4.442413330078125 25.25968360900879 4.981643676757813 L 27.21244621276855 6.93445873260498 C 27.75167655944824 7.473689079284668 27.75167655944824 8.347990036010742 27.21244621276855 8.887274742126465 L 11.33274078369141 24.76703262329102 C 10.79345607757568 25.3062629699707 9.919155120849609 25.3062629699707 9.379925727844238 24.7669792175293 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_rr2kwi =
    '<svg viewBox="361.5 1476.0 8.9 8.9" ><path transform="translate(357.04, 1471.55)" d="M 4.5 11.58080101013184 L 4.5 13.44482803344727 L 6.364027976989746 13.44482803344727 L 11.86166954040527 7.947187900543213 L 9.997641563415527 6.083159446716309 L 4.5 11.58080101013184 Z M 13.30318450927734 6.505672454833984 C 13.49704265594482 6.311813831329346 13.49704265594482 5.998656749725342 13.30318450927734 5.804798603057861 L 12.14003086090088 4.641644477844238 C 11.9461727142334 4.447785377502441 11.63301658630371 4.447785377502441 11.43915748596191 4.641644477844238 L 10.52951145172119 5.551290035247803 L 12.3935375213623 7.415318965911865 L 13.30318450927734 6.505672454833984 Z" fill="#abdc55" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
