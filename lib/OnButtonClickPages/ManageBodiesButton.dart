import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kvmaster/API/Api.dart';

class ManageBodiesButton extends StatefulWidget {
  ManageBodiesButton({
    Key key,
  }) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<ManageBodiesButton> {
  ScrollController _con;
  final _productName = TextEditingController();
  final _productNameInTamil = TextEditingController();
  final _classSize = TextEditingController();
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: const Color(0xfff7f7f7),
      body: Container(
       height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          controller: _con,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Transform.translate(
                  offset: Offset(20,60),
                  child: IconButton(icon:  Icon(Icons.arrow_back,color: Colors.black,size: 35,), onPressed:(){ Navigator.pop(context);})),

              Transform.translate(
                offset: Offset(30.0, 75.0),
                child: Text(
                  'Add a \nBody Master',
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
                offset: Offset(30.0, 120.0),
                child: Text(
                  'Body Name',
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
                offset: Offset(30.0, 132.0),
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
                offset: Offset(46.0, 85.0),
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
                    hintText: "Enter Product Name",
                    hintStyle: TextStyle(fontSize: 14),
                    border: InputBorder.none,
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(30.0, 110.0),
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
                offset: Offset(30.0, 119.0),
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
                offset: Offset(46.0, 70.0),
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
                    hintText: "Enter Product Name in Tamil",
                    hintStyle: TextStyle(fontSize: 14),
                    border: InputBorder.none,
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(30.0, 90.0),
                child: Text(
                  'Class Size',
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
                offset: Offset(46.0,50.0),
                child:
                    // Adobe XD layer: 'Value' (text)
                TextFormField(
                  controller: _classSize,
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    WhitelistingTextInputFormatter(RegExp(r'^(\d+)?\.?\d{0,2}')),
                  ],
                  cursorColor: const Color(0x6b000000),

                  decoration: InputDecoration(
                    hintText: "0-0.99",
                    hintStyle: TextStyle(fontSize: 14),
                    border: InputBorder.none,
                  ),
                ),
              ),

              Transform.translate(
                offset: Offset(256.0, 20.0),
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
                            child: Container(
                                  child: RaisedButton(
                                    
                                    color: const Color(0xff3e45a9),
                                    
                                    shape: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.elliptical(9999.0, 9999.0)),
                                        borderSide: BorderSide(color:  Color(0xff3e45a9),
                                    )
                                    

                                      
                                    ),
                                    onPressed: (){
                                     
                                      
                                  double clasSize=double.parse(_classSize.text.toString());
                                  if(clasSize<1) {
                                    print("save");
                                    FirebaseController.instanace
                                        .productBodyMaster(
                                        _productName.text, _productName.text,
                                        _productNameInTamil.text, _classSize.text)
                                        .then((data) async {
                                      print(data);
                                      if (data == null) {
                                        _showDialog(
                                            "Problem Occurred While Saving Your Data! Please try again.");
                                      } else {
                                        _showDialog("Upload Successfully");
                                      }
                                    });
                                  }else{
                                    showDialog(
                                      context: context,
                                      builder: (context) {
                                        return AlertDialog(
                                          title: Text('Alert!'),
                                          content: Text('Class Size Should be between 0-0.99',style: TextStyle(color: Colors.red),),
                                          actions: <Widget>[
                                            FlatButton(
                                              child: Text('Ok'),
                                              onPressed: () {
                                                print("delete");
                                                Navigator.of(context).pop(false);
                                              },
                                            )
                                          ],
                                        );
                                      },
                                    );
                                  }
                                },
                                
                                    ),
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
const String _svg_xkvnf0 =
    '<svg viewBox="-10.5 33.0 423.0 384.5" ><path transform="translate(22.5, 24.0)" d="M 31.5 16.5 L 10.24499988555908 16.5 L 15.61499977111816 11.11499977111816 L 13.5 9 L 4.5 18 L 13.5 27 L 15.61499977111816 24.88500022888184 L 10.24499988555908 19.5 L 31.5 19.5 L 31.5 16.5 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-10.5, 417.5)" d="M 423 0 L 0 0" fill="none" stroke="#ffffff" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
