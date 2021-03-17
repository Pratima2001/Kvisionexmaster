import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kvmaster/Login_Register/LoginPage.dart';

import 'package:shared_preferences/shared_preferences.dart';

import '../API/Api.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({
    Key key,
  }) : super(key: key);
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _isLoading = true;
  ScrollController _controller;
  final _firstName = TextEditingController();
  final _lastName = TextEditingController();
  final _phone = TextEditingController();
  final _phoneCode = TextEditingController();
  final _emailID = TextEditingController();
  final _gender = TextEditingController();
  final _password = TextEditingController();
  final _country = TextEditingController();
  final _city = TextEditingController();
  final _referalCode = TextEditingController();

  @override
  Widget build(BuildContext context) {



    return Scaffold(
      backgroundColor: const Color(0xff3e45a9),
      body: SingleChildScrollView(
        controller: _controller,
        child: Stack(
          children: <Widget>[
            Transform.translate(
              offset: Offset(-4.0, 120.0),
              child: Container(
                width: 421.0,
                height: 1061.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(74.0),
                  color: const Color(0xffffffff),
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(25.0, 176.0),
              child: Text(
                'Register',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 31,
                  color: const Color(0xff000000),
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Transform.translate(
              offset: Offset(37.0, 649.8),
              child: SvgPicture.string(
                _svg_s462qq,
                allowDrawingOutsideViewBox: true,
              ),
            ),
            Transform.translate(
              offset: Offset(25.0, 276.0),
              child: SizedBox(
                width: 339.0,
                height: 34.0,
                child: Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 34.1, 338.5, 1.0),
                      size: Size(338.5, 34.1),
                      pinLeft: true,
                      pinRight: true,
                      pinBottom: true,
                      fixedHeight: true,
                      child: SvgPicture.string(
                        _svg_r39q64,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(5.0, 0.0, 85.0, 23.0),
                      size: Size(338.5, 34.1),
                      pinLeft: true,
                      pinTop: true,
                      fixedWidth: true,
                      fixedHeight: true,
                      child: TextFormField(
                        controller: _firstName,
                        cursorColor: const Color(0x6b000000),
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintText: "First Name",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(25.0, 344.0),
              child: SizedBox(
                width: 339.0,
                height: 34.0,
                child: Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 34.5, 338.5, 1.0),
                      size: Size(338.5, 34.5),
                      pinLeft: true,
                      pinRight: true,
                      pinBottom: true,
                      fixedHeight: true,
                      child: SvgPicture.string(
                        _svg_nz7c93,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(5.0, 0.0, 85.0, 23.0),
                      size: Size(338.5, 34.5),
                      pinLeft: true,
                      pinTop: true,
                      fixedWidth: true,
                      fixedHeight: true,
                      child: TextFormField(
                        controller: _lastName,
                        cursorColor: const Color(0x6b000000),
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintText: "Last Name",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(25.0, 476.0),
              child: SizedBox(
                width: 339.0,
                height: 34.0,
                child: Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 0.0, 338.5, 34.3),
                      size: Size(338.5, 34.3),
                      pinLeft: true,
                      pinRight: true,
                      pinTop: true,
                      pinBottom: true,
                      child: Stack(
                        children: <Widget>[
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(0.0, 34.3, 338.5, 1.0),
                            size: Size(338.5, 34.3),
                            pinLeft: true,
                            pinRight: true,
                            pinBottom: true,
                            fixedHeight: true,
                            child: SvgPicture.string(
                              _svg_nz7c93,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(5.0, 0.0, 72.0, 23.0),
                            size: Size(338.5, 34.3),
                            pinLeft: true,
                            pinTop: true,
                            fixedWidth: true,
                            fixedHeight: true,
                            child: TextFormField(
                              controller: _emailID,
                              cursorColor: const Color(0x6b000000),
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                hintText: "E-mail ID",
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(25.0, 684.0),
              child: SizedBox(
                width: 339.0,
                height: 34.0,
                child: Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 0.0, 338.5, 34.5),
                      size: Size(338.5, 34.5),
                      pinLeft: true,
                      pinRight: true,
                      pinTop: true,
                      pinBottom: true,
                      child: Stack(
                        children: <Widget>[
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(0.0, 34.5, 338.5, 1.0),
                            size: Size(338.5, 34.5),
                            pinLeft: true,
                            pinRight: true,
                            pinBottom: true,
                            fixedHeight: true,
                            child: SvgPicture.string(
                              _svg_nz7c93,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(5.0, 0.0, 64.0, 23.0),
                            size: Size(338.5, 34.5),
                            pinLeft: true,
                            pinTop: true,
                            fixedWidth: true,
                            fixedHeight: true,
                            child: TextFormField(
                              controller: _country,
                              cursorColor: const Color(0x6b000000),
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                hintText: "Country",
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(25.0, 820.0),
              child: SizedBox(
                width: 339.0,
                height: 34.0,
                child: Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 34.3, 338.5, 1.0),
                      size: Size(338.5, 34.3),
                      pinLeft: true,
                      pinRight: true,
                      pinBottom: true,
                      fixedHeight: true,
                      child: SvgPicture.string(
                        _svg_nz7c93,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(5.0, 0.0, 108.0, 23.0),
                      size: Size(338.5, 34.3),
                      pinLeft: true,
                      pinTop: true,
                      fixedWidth: true,
                      fixedHeight: true,
                      child:TextFormField(
                        controller: _referalCode,
                        cursorColor: const Color(0x6b000000),
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintText: "Refferal Code",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(261.0, 0.0, 68.0, 23.0),
                      size: Size(338.5, 34.3),
                      pinRight: true,
                      pinTop: true,
                      fixedWidth: true,
                      fixedHeight: true,
                      child: Text(
                        'Optional',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          color: const Color(0x6b000000),
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(25.0, 412.0),
              child: SizedBox(
                width: 339.0,
                height: 30.0,
                child: Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 29.9, 338.5, 1.0),
                      size: Size(338.5, 29.9),
                      pinLeft: true,
                      pinRight: true,
                      pinBottom: true,
                      fixedHeight: true,
                      child: SvgPicture.string(
                        _svg_kt1fez,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(85.0, 0.0, 85.0, 30.0),
                      size: Size(338.5, 29.9),
                      pinTop: true,
                      fixedWidth: true,
                      fixedHeight: true,
                      child:TextFormField(
                        controller: _phone,
                        cursorColor: const Color(0x6b000000),
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[
                          //FilteringTextInputFormatter.digitsOnly
                        ],
                        decoration: InputDecoration(
                          hintText: "Phone",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(33.0, 10.0, 30.0, 23.0),
                      size: Size(338.5, 29.9),
                      pinLeft: true,
                      pinTop: true,
                      fixedWidth: true,
                      fixedHeight: true,
                      child: TextFormField(
                        controller: _phoneCode,
                        cursorColor: const Color(0x6b000000),
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[
                          //FilteringTextInputFormatter.digitsOnly
                        ],
                        decoration: InputDecoration(
                          hintText: "+91",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(5.0, 3.0, 23.0, 16.0),
                      size: Size(338.5, 29.9),
                      pinLeft: true,
                      pinTop: true,
                      fixedWidth: true,
                      fixedHeight: true,
                      child:
                          // Adobe XD layer: 'flag-of-pakistan' (shape)
                          Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: const AssetImage(''),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(73.5, 0.9, 1.0, 21.0),
                      size: Size(338.5, 29.9),
                      pinTop: true,
                      fixedWidth: true,
                      fixedHeight: true,
                      child: SvgPicture.string(
                        _svg_xqkbcu,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(25.0, 544.0),
              child: SizedBox(
                width: 339.0,
                height: 35.0,
                child: Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 34.7, 338.5, 1.0),
                      size: Size(338.5, 34.7),
                      pinLeft: true,
                      pinRight: true,
                      pinBottom: true,
                      fixedHeight: true,
                      child: SvgPicture.string(
                        _svg_nz7c93,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(5.0, 0.0, 322.1, 23.0),
                      size: Size(338.5, 34.7),
                      pinLeft: true,
                      pinRight: true,
                      pinTop: true,
                      fixedHeight: true,
                      child: Stack(
                        children: <Widget>[
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(0.0, 0.0, 59.0, 23.0),
                            size: Size(322.1, 23.0),
                            pinLeft: true,
                            pinTop: true,
                            pinBottom: true,
                            fixedWidth: true,
                            child: TextFormField(
                              controller: _gender,
                              cursorColor: const Color(0x6b000000),
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                hintText: "Gender",
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(307.7, 8.8, 14.4, 8.2),
                            size: Size(322.1, 23.0),
                            child:
                                // Adobe XD layer: 'Icon ionic-ios-arro…' (shape)
                                SvgPicture.string(
                              _svg_j0kwlq,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(25.0, 752.0),
              child: SizedBox(
                width: 339.0,
                height: 34.0,
                child: Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 34.3, 338.5, 1.0),
                      size: Size(338.5, 34.3),
                      pinLeft: true,
                      pinRight: true,
                      pinBottom: true,
                      fixedHeight: true,
                      child: SvgPicture.string(
                        _svg_nz7c93,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(5.0, 0.0, 322.1, 23.0),
                      size: Size(338.5, 34.3),
                      pinLeft: true,
                      pinRight: true,
                      pinTop: true,
                      fixedHeight: true,
                      child: Stack(
                        children: <Widget>[
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(0.0, 0.0, 31.0, 23.0),
                            size: Size(322.1, 23.0),
                            pinLeft: true,
                            pinTop: true,
                            pinBottom: true,
                            fixedWidth: true,
                            child: TextFormField(
                              controller: _city,
                              cursorColor: const Color(0x6b000000),
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                hintText: "City",
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(307.7, 8.3, 14.4, 8.2),
                            size: Size(322.1, 23.0),
                            child:
                                // Adobe XD layer: 'Icon ionic-ios-arro…' (shape)
                                SvgPicture.string(
                              _svg_j0kwlq,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(42.0, 613.0),
              child: SizedBox(
                width: 324.0,
                height: 23.0,
                child: Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 0.0, 77.0, 23.0),
                      size: Size(324.0, 23.0),
                      pinLeft: true,
                      pinTop: true,
                      pinBottom: true,
                      fixedWidth: true,
                      child:TextFormField(
                        controller: _password,
                        cursorColor: const Color(0x6b000000),
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintText: "Password",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(280.2, 6.4, 17.8, 11.4),
                      size: Size(324.0, 23.0),
                      child:
                          // Adobe XD layer: 'Icon ionic-ios-eye' (group)
                          Stack(
                        children: <Widget>[
                          SvgPicture.string(
                            _svg_6l3xba,
                            allowDrawingOutsideViewBox: true,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          
           Transform.translate(
              offset: Offset(124.0, 898.0),
              child: Container(
                width: 164.0,
                height: 50.0,
                child: RaisedButton(
                  child: Text(
                  'Register',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 18,
                    color: const Color(0xffffffff),
                  ),
                  textAlign: TextAlign.left,
                ),
                  color: const Color(0xffabdc55),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(33.0),
                 
                  ),
                  onPressed: (){
                    
                   
                      FirebaseController.instanace.saveUserDataToFirebaseDatabase(_firstName.text.toString(),_firstName.text.toString(),_phone.text.toString(),_phoneCode.text.toString(),_emailID.text.toString(),_gender.text.toString(),_password.text.toString()
                      ,_password.text.toString(),_country.text.toString(),_city.text.toString(),_referalCode.text.toString()).then((data) async {
                    print(data);
                    _moveToChatList(data);
                  });
                    
                    

                }),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(33.0),
                  color: const Color(0xffabdc55),
                  
                ),
              ),
            ),
           
          
          
          
          
           Transform.translate(
              offset: Offset(40.7, 50.5),
              child: GestureDetector(
                onTap: (){
                  print("tap");


                },
                child: SvgPicture.string(
                  _svg_baihf,
                  allowDrawingOutsideViewBox: true,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _moveToChatList(data) async {
    if(data != null) {
      SharedPreferences pref = await SharedPreferences.getInstance();
      pref.setString("id", data);
      pref.setString("name", _firstName.text);
      pref.setBool("isLoggedIn", true);
      Navigator.of(context).push(MaterialPageRoute(
          builder: (_) => LoginPage()));

    }
    else { _showDialog('Save user data error'); }
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

const String _svg_r39q64 =
    '<svg viewBox="0.0 34.1 338.5 1.0" ><path transform="translate(0.0, 34.13)" d="M 0 0 L 338.5 0" fill="none" fill-opacity="0.51" stroke="#989898" stroke-width="1" stroke-opacity="0.51" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_s462qq =
    '<svg viewBox="37.0 649.8 338.5 1.0" ><path transform="translate(37.0, 649.85)" d="M 0 0 L 338.5 0" fill="none" fill-opacity="0.51" stroke="#989898" stroke-width="1" stroke-opacity="0.51" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_nz7c93 =
    '<svg viewBox="0.0 34.5 338.5 1.0" ><path transform="translate(0.0, 34.45)" d="M 0 0 L 338.5 0" fill="none" fill-opacity="0.51" stroke="#989898" stroke-width="1" stroke-opacity="0.51" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_kt1fez =
    '<svg viewBox="0.0 30.0 338.5 1.0" ><path transform="translate(0.0, 29.97)" d="M 0 0 L 338.5 0" fill="none" fill-opacity="0.51" stroke="#989898" stroke-width="1" stroke-opacity="0.51" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_xqkbcu =
    '<svg viewBox="73.5 1.0 1.0 21.0" ><path transform="translate(73.5, 0.96)" d="M 0 0 L 0 21" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_j0kwlq =
    '<svg viewBox="307.7 8.5 14.4 8.2" ><path transform="matrix(-1.0, 0.0, 0.0, -1.0, 322.05, 16.75)" d="M 7.201084136962891 2.481450080871582 L 12.6447582244873 7.929409980773926 C 13.04767799377441 8.332329750061035 13.6992015838623 8.332329750061035 14.09783363342285 7.929409980773926 C 14.50075340270996 7.526494026184082 14.49646759033203 6.874966621398926 14.09783363342285 6.472048759460449 L 7.929765701293945 0.2996940612792969 C 7.539707183837891 -0.09036540985107422 6.913897514343262 -0.09893798828125 6.510980606079102 0.269688606262207 L 0.3000454902648926 6.46776294708252 C 0.0985865592956543 6.669222831726074 0 6.934977531433105 0 7.196442604064941 C 0 7.457913398742676 0.0985865592956543 7.723666191101074 0.3000454902648926 7.925126075744629 C 0.7029633522033691 8.328043937683105 1.354489803314209 8.328043937683105 1.753121376037598 7.925126075744629 L 7.201084136962891 2.481450080871582 Z" fill="#000000" fill-opacity="0.42" stroke="none" stroke-width="1" stroke-opacity="0.42" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_6l3xba =
    '<svg viewBox="0.0 0.0 17.8 11.4" ><path transform="translate(-2.25, -7.87)" d="M 11.12434387207031 7.874999046325684 C 7.936513900756836 7.874999046325684 5.422726631164551 9.881271362304688 2.417283773422241 13.1602954864502 C 2.19921088218689 13.40215873718262 2.195245742797852 13.76296997070313 2.413318872451782 14.00483322143555 C 4.986580371856689 16.84770965576172 7.25454044342041 19.29409408569336 11.12434387207031 19.29409408569336 C 14.94656753540039 19.29409408569336 17.8132381439209 16.21331596374512 19.85122871398926 13.98104286193848 C 20.06137466430664 13.75107574462891 20.07326698303223 13.40215873718262 19.87105560302734 13.1602954864502 C 17.79341316223145 10.64254379272461 14.91881370544434 7.874999046325684 11.12434387207031 7.874999046325684 Z M 11.29880237579346 17.14904975891113 C 9.197372436523438 17.24420928955078 7.468647956848145 15.5154857635498 7.567771911621094 13.41802024841309 C 7.651036262512207 11.58620643615723 9.133933067321777 10.10330867767334 10.965744972229 10.02004432678223 C 13.06717681884766 9.924885749816895 14.79590129852295 11.6536111831665 14.69677734375 13.75107765197754 C 14.61351108551025 15.58288955688477 13.13061714172363 17.0657844543457 11.29880237579346 17.14904975891113 Z" fill="#000000" fill-opacity="0.45" stroke="none" stroke-width="1" stroke-opacity="0.45" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-7.16, -10.33)" d="M 16.03809547424316 14.17404365539551 C 16.03809547424316 13.9361457824707 16.08171081542969 13.71014213562012 16.1610107421875 13.50396347045898 C 16.12135887145996 13.50396347045898 16.08171081542969 13.49999809265137 16.03809547424316 13.49999809265137 C 14.57502365112305 13.49999809265137 13.39743041992188 14.74499702453613 13.50844764709473 16.23185920715332 C 13.60360717773438 17.4728946685791 14.60277938842773 18.47206497192383 15.84381103515625 18.56722259521484 C 17.33067321777344 18.67824172973633 18.5756721496582 17.50064849853516 18.5756721496582 16.03757667541504 C 18.5756721496582 15.98603248596191 18.57170677185059 15.93448829650879 18.57170677185059 15.88294219970703 C 18.34967041015625 15.9820671081543 18.10780715942383 16.03757667541504 17.85008430480957 16.03757667541504 C 16.85091400146484 16.03757667541504 16.03809547424316 15.20096778869629 16.03809547424316 14.17404365539551 Z" fill="#000000" fill-opacity="0.45" stroke="none" stroke-width="1" stroke-opacity="0.45" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_baihf =
    '<svg viewBox="40.7 50.5 27.0 18.0" ><path transform="translate(36.2, 41.5)" d="M 31.5 16.5 L 10.24499988555908 16.5 L 15.61499977111816 11.11499977111816 L 13.5 9 L 4.5 18 L 13.5 27 L 15.61499977111816 24.88500022888184 L 10.24499988555908 19.5 L 31.5 19.5 L 31.5 16.5 Z" fill="#ffffff" fill-opacity="0.65" stroke="none" stroke-width="1" stroke-opacity="0.65" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
