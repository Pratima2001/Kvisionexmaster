import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../API/Api.dart';

class ManagePartButton extends StatefulWidget {
  ManagePartButton({
    Key key,
  }) : super(key: key);

  @override
  _ManageProductPageButton1State createState() => _ManageProductPageButton1State();
}

class _ManageProductPageButton1State extends State< ManagePartButton> {
  ScrollController _con;
  final _partName = TextEditingController();
  final _partNameInTamil = TextEditingController();
  String _department ;
  final _weight = TextEditingController();
  String _podiName ;
  final _gattiRequired = TextEditingController();
  String selectedValue="no";
  String _dropDownValue;
  var tcVisibility = false;


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color(0xfff7f7f7),
      
      body: SingleChildScrollView(
        controller: _con,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
//            Padding(
//                padding: EdgeInsets.fromLTRB(30, 59, 0,0),
//                child: IconButton(icon: Icon(Icons.arrow_back,color: Colors.black,), onPressed: null)),
            Transform.translate(
              offset: Offset(20.0, 45.0),
              child: IconButton(onPressed: (){
                Navigator.pop(context);
              },icon: Icon(Icons.arrow_back,color: Colors.black,size: 35)),
            ),
            Transform.translate(
              offset: Offset(30.0, 55.0),
              child: Text(
                'Add a \nPart Master',
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
              child: Text(
                'Part Name',
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
              offset: Offset(30.0, 110.0),
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
              offset: Offset(46.0, 63.0),
              child:
              // Adobe XD layer: 'Value' (text)
              TextFormField(
                controller: _partName,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(50)
                ],
                cursorColor: const Color(0x6b000000),
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: "Product Name",
                  hintStyle: TextStyle(fontSize: 14),
                  border: InputBorder.none,
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(30.0, 80.0),
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
              offset: Offset(30.0, 90.0),
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
              offset: Offset(46.0, 42.0),
              child:
              // Adobe XD layer: 'Value' (text)
              TextFormField(
                controller: _partNameInTamil,
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
              offset: Offset(30.0, 60.0),
              child: Text(
                'Department',
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
              offset: Offset(30.0,70.0),
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
              offset: Offset(46.0, 25.0),
              child:
              // Adobe XD layer: 'Value' (text)
              DropdownButton(
                hint: _department== null
                    ? Text("Select department")
                    : Text(
                  _department,
                  style: TextStyle(color: Colors.blue),
                ),
                isExpanded: true,
                iconSize: 30.0,
                style: TextStyle(color: Colors.blue),
                items: ['LOOSE', 'ARUMBU', 'JALRA','GETTIPOO'].map(
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
                      _department= val;
                    },
                  );
                },
              ),
            ),

            Transform.translate(
              offset: Offset(214.0, -65.0),
              child: Text(
                'Weight/pcs',
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
              offset: Offset(214.0, -48.0),
              child:
                  // Adobe XD layer: 'Area [DISPLAY_ELEME…' (shape)
                  Container(
                width: 169.0,
                height: 48.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.0),
                  color: const Color(0xffffffff),
                ),
              ),
            ),

            Transform.translate(
              offset: Offset(230.0, -98.0),
              child:
                  // Adobe XD layer: 'Value' (text)
              TextFormField(
                controller: _weight,
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  //FilteringTextInputFormatter.digitsOnly
                ],
                cursorColor: const Color(0x6b000000),
                //keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: "0",
                  hintStyle: TextStyle(fontSize: 14),
                  border: InputBorder.none,
                ),
              ),
            ),

            Transform.translate(
              offset: Offset(30.0, -79.0),
              child: Text(
                'Podi Name',
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
              offset: Offset(30.0, -73.0),
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
              offset: Offset(46.0, -119.0),
              child:
                  // Adobe XD layer: 'Value' (text)
              DropdownButton(
                hint: _podiName== null
                    ? Text("Select Podi ")
                    : Text(
                  _podiName,
                  style: TextStyle(color: Colors.blue),
                ),
                isExpanded: true,
                iconSize: 30.0,
                style: TextStyle(color: Colors.blue),
                items: ['10 Pallu', '20 Pallu', '23 Pallu','30 Pallu'].map(
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
                      _podiName= val;
                    },
                  );
                },
              ),
            ),

            Transform.translate(
              offset: Offset(30.0, -105.0),
              child: Text(
                'Gatti Required',
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
              offset: Offset(30.0, -100.0),
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
              offset: Offset(46.0, -145.0),
              child:
              // Adobe XD layer: 'Value' (text)
              TextFormField(
                controller: _gattiRequired,
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                 // FilteringTextInputFormatter.digitsOnly
                ],
                cursorColor: const Color(0x6b000000),
              //  keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: "0",
                  hintStyle: TextStyle(fontSize: 14),
                  border: InputBorder.none,
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(30.0, -135.0),
              child: Text(
                'Kambi Type',
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
              offset: Offset(29.0, -121.0),
              child: SizedBox(
                width: 50.0,
                height: 23.0,
                child: Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(22.0, 0.0, 28.0, 23.0),
                      size: Size(50.0, 23.0),
                      pinRight: true,
                      pinTop: true,
                      pinBottom: true,
                      fixedWidth: true,
                      child: GestureDetector(
                        onTap: (){
                         setState(() {
                           selectedValue="yes";
                           tcVisibility = true;
                         });
                        },
                        child: Text(
                          'Yes',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            color: const Color(0xff000000),
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(0.0,-0),
                      child: Container(
                        width: 17.0,
                        height: 17.0,
                        decoration: BoxDecoration(
                          borderRadius:
                          BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                          color:(selectedValue!="yes")?  const Color(0xffffffff):const Color(0xffabdc55),
                          border: Border.all(width: 2.0, color: const Color(0xffffffff)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(123.0, -144.0),
              child: GestureDetector(
                onTap: (){
                  setState(() {
                    selectedValue="no";
                    tcVisibility = false;
                  });
                },
                child: Text(
                  'No',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    color: const Color(0xff000000),
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),



            Transform.translate(
              offset: Offset(101.0,-162),
              child: Container(
                width: 17.0,
                height: 17.0,
                decoration: BoxDecoration(
                  borderRadius:
                  BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                  color:(selectedValue!="no")?  const Color(0xffffffff):const Color(0xffabdc55),
                  border: Border.all(width: 2.0, color: const Color(0xffffffff)),
                ),
              ),
            ),

            Visibility(
              visible: tcVisibility,
              child: Transform.translate(
                offset: Offset(30.0, -150.0),
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
            ),
            Visibility(
              visible: tcVisibility,
              child: Transform.translate(
                offset: Offset(46.0, -197.0),
                child:
                // Adobe XD layer: 'Value' (text)
                DropdownButton(
                  hint: _dropDownValue == null
                      ? Text('Select Kambi Type')
                      : Text(
                    _dropDownValue,
                    style: TextStyle(color: Colors.blue),
                  ),
                  isExpanded: true,
                  iconSize: 30.0,
                  style: TextStyle(color: Colors.blue),
                  items: ['3.5 Pidi Kambi', '25 Pidi Kambi', '5 Pidi Sathuram','7 Pidi Sathuram'].map(
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
                        _dropDownValue = val;
                      },
                    );
                  },
                ),
              ),
            ),


            Transform.translate(
              offset: Offset(280.0, -280.0),
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
                                FirebaseController.instanace.productPartMaster(_partName.text,_partName.text,_partNameInTamil.text,_department,_weight.text,_podiName,_gattiRequired.text,_dropDownValue).then((data) async {
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

const String _svg_2re1gg =
    '<svg viewBox="327.0 742.3 27.6 20.6" ><path transform="translate(327.0, 737.67)" d="M 9.379925727844238 24.7669792175293 L 0.4044407606124878 15.79149436950684 C -0.1347895711660385 15.25226497650146 -0.1347895711660385 14.37796306610107 0.4044407606124878 13.83867931365967 L 2.357202291488647 11.8858642578125 C 2.896432399749756 11.34657955169678 3.770787239074707 11.34657955169678 4.310017585754395 11.8858642578125 L 10.35633277893066 17.93212509155273 L 23.30686950683594 4.981643676757813 C 23.84609794616699 4.442413330078125 24.7204532623291 4.442413330078125 25.25968360900879 4.981643676757813 L 27.21244621276855 6.93445873260498 C 27.75167655944824 7.473689079284668 27.75167655944824 8.347990036010742 27.21244621276855 8.887274742126465 L 11.33274078369141 24.76703262329102 C 10.79345607757568 25.3062629699707 9.919155120849609 25.3062629699707 9.379925727844238 24.7669792175293 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_2w2b9w =
    '<svg viewBox="27.0 33.0 335.7 504.8" ><path transform="translate(22.5, 24.0)" d="M 31.5 16.5 L 10.24499988555908 16.5 L 15.61499977111816 11.11499977111816 L 13.5 9 L 4.5 18 L 13.5 27 L 15.61499977111816 24.88500022888184 L 10.24499988555908 19.5 L 31.5 19.5 L 31.5 16.5 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="matrix(0.0, -1.0, 1.0, 0.0, 166.48, 443.41)" d="M 2.05412220954895 5.957890033721924 L 6.563897609710693 1.451663255691528 C 6.897429943084717 1.118131875991821 6.897429943084717 0.5788033604621887 6.563897609710693 0.2488201260566711 C 6.23036527633667 -0.08471173048019409 5.691039562225342 -0.08116358518600464 5.357507228851318 0.2488201260566711 L 0.2480833679437637 5.354694843292236 C -0.07480405271053314 5.677582263946533 -0.08189938962459564 6.195620059967041 0.223244920372963 6.529152393341064 L 5.353957653045654 11.67050743103027 C 5.520724773406982 11.8372745513916 5.740712642669678 11.91888236999512 5.957154750823975 11.91888236999512 C 6.173594951629639 11.91888236999512 6.393584728240967 11.8372745513916 6.560349941253662 11.67050743103027 C 6.893882274627686 11.33697700500488 6.893882274627686 10.79764938354492 6.560349941253662 10.46766471862793 L 2.05412220954895 5.957890033721924 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="matrix(0.0, -1.0, 1.0, 0.0, 344.6, 549.06)" d="M 13.3046989440918 12.15153884887695 L 17.81447410583496 7.645312309265137 C 18.14800643920898 7.31178092956543 18.14800643920898 6.772452354431152 17.81447410583496 6.442469120025635 C 17.48094177246094 6.10893726348877 16.94161605834961 6.112485408782959 16.60808372497559 6.442469120025635 L 11.49866008758545 11.54834365844727 C 11.17577266693115 11.87123107910156 11.16867733001709 12.38926887512207 11.47382164001465 12.72280120849609 L 16.60453414916992 17.86415672302246 C 16.77130126953125 18.03092384338379 16.99128913879395 18.1125316619873 17.20773124694824 18.1125316619873 C 17.42417144775391 18.1125316619873 17.64416122436523 18.03092384338379 17.81092643737793 17.86415672302246 C 18.14445877075195 17.53062629699707 18.14445877075195 16.99129867553711 17.81092643737793 16.66131401062012 L 13.3046989440918 12.15153884887695 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_u4562k =
    '<svg viewBox="29.0 704.0 17.0 17.0" ><path transform="translate(29.0, 704.0)" d="M 8.5 0 C 13.19441986083984 0 17 3.805579662322998 17 8.5 C 17 13.19441986083984 13.19441986083984 17 8.5 17 C 3.805579662322998 17 0 13.19441986083984 0 8.5 C 0 3.805579662322998 3.805579662322998 0 8.5 0 Z" fill="#ffffff" stroke="none" stroke-width="2" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
