import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../API/Api.dart';

class ManageDepartmentEditButton extends StatefulWidget {
  ManageDepartmentEditButton({
    Key key,this.id,this.departmentName,this.departmentNameInTamil,this.group,this.wastage
  }) : super(key: key);
  String id;
  String departmentName;
  String departmentNameInTamil;
  String group;
  String wastage;

  @override
  _ManageProductPageButton1State createState() => _ManageProductPageButton1State();
}

class _ManageProductPageButton1State extends State< ManageDepartmentEditButton> {
  ScrollController _con;
  final _departmentName = TextEditingController();
  final _departmentNameInTamil = TextEditingController();
  String _group ;
  final _wastage = TextEditingController();


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color(0xfff7f7f7),
      body: SingleChildScrollView(
        controller: _con,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Transform.translate(
              offset: Offset(20.0, 45.0),
              child: IconButton(onPressed: (){
                Navigator.pop(context);
              },icon: Icon(Icons.arrow_back,color: Colors.black,size: 35)),
            ),
            SizedBox(height: 30,),
            Transform.translate(
              offset: Offset(30.0, 25.0),
              child: Text(
                'Add a\nDepartment',
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
              offset: Offset(30.0, 55.0),
              child: Text(
                'Department Name',
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
              offset: Offset(30.0, 65.0),
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
              offset: Offset(46.0, 20),
              child:
              // Adobe XD layer: 'Value' (text)
              TextFormField(
                controller: _departmentName,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(50)
                ],
                cursorColor: const Color(0x6b000000),
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: widget.departmentName,
                  hintStyle: TextStyle(fontSize: 14),
                  border: InputBorder.none,
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(30.0, 35.0),
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
              offset: Offset(30.0, 45.0),
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
              offset: Offset(46.0, 00.0),
              child:
              // Adobe XD layer: 'Value' (text)
              TextFormField(
                controller: _departmentNameInTamil,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(50)
                ],
                cursorColor: const Color(0x6b000000),
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: widget.departmentNameInTamil,
                  hintStyle: TextStyle(fontSize: 14),
                  border: InputBorder.none,
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(30.0, 10.0),
              child: Text(
                'Group',
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
              offset: Offset(30.0, 20.0),
              child:
              // Adobe XD layer: 'Area [DISPLAY_ELEME…' (shape)
              Container(
                width: 353.0,
                height: 48.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.0),
                  color: const Color(0xffffffff),
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(46.0, -25.0),
              child:
              // Adobe XD layer: 'Value' (text)
              DropdownButton(
                hint: _group== null
                    ? Text(widget.group)
                    : Text(
                  _group,
                  style: TextStyle(color: Colors.blue),
                ),
                isExpanded: true,
                iconSize: 30.0,
                style: TextStyle(color: Colors.blue),
                items: ['LOOSE', 'MELTHOTH', 'JALRA'].map(
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
                      _group= val;
                    },
                  );
                },
              ),
            ),

            Transform.translate(
              offset: Offset(30.0, -15.0),
              child: Text(
                'Wastage',
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
              offset: Offset(30.0, -5.0),
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
              offset: Offset(46.0, -53.0),
              child:
              // Adobe XD layer: 'Value' (text)
              TextFormField(
                controller: _wastage,
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                 // FilteringTextInputFormatter.digitsOnly
                ],
                cursorColor: const Color(0x6b000000),
                //keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: widget.wastage,
                  hintStyle: TextStyle(fontSize: 14),
                  border: InputBorder.none,
                ),
              ),
            ),

            Transform.translate(
              offset: Offset(307.0, -30.0),
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
                                FirebaseController.instanace.productDepartmentMaster(_departmentName.text,_departmentName.text,_departmentNameInTamil.text,_group,_wastage.text).then((data) async {
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
const String _svg_upfvnq =
    '<svg viewBox="-10.5 33.0 423.0 485.5" ><path transform="translate(22.5, 24.0)" d="M 31.5 16.5 L 10.24499988555908 16.5 L 15.61499977111816 11.11499977111816 L 13.5 9 L 4.5 18 L 13.5 27 L 15.61499977111816 24.88500022888184 L 10.24499988555908 19.5 L 31.5 19.5 L 31.5 16.5 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-10.5, 518.5)" d="M 423 0 L 0 0" fill="none" stroke="#ffffff" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="matrix(0.0, -1.0, 1.0, 0.0, 351.48, 443.41)" d="M 2.05412220954895 5.957890033721924 L 6.563897609710693 1.451663255691528 C 6.897429943084717 1.118131875991821 6.897429943084717 0.5788033604621887 6.563897609710693 0.2488201260566711 C 6.23036527633667 -0.08471173048019409 5.691039562225342 -0.08116358518600464 5.357507228851318 0.2488201260566711 L 0.2480833679437637 5.354694843292236 C -0.07480405271053314 5.677582263946533 -0.08189938962459564 6.195620059967041 0.223244920372963 6.529152393341064 L 5.353957653045654 11.67050743103027 C 5.520724773406982 11.8372745513916 5.740712642669678 11.91888236999512 5.957154750823975 11.91888236999512 C 6.173594951629639 11.91888236999512 6.393584728240967 11.8372745513916 6.560349941253662 11.67050743103027 C 6.893882274627686 11.33697700500488 6.893882274627686 10.79764938354492 6.560349941253662 10.46766471862793 L 2.05412220954895 5.957890033721924 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
