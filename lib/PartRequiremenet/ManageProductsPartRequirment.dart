import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kvmaster/API/Api.dart';
import 'package:kvmaster/PartRequiremenet/PartRequirmentAddMore.dart';
import 'package:kvmaster/OnButtonClickPages/ManageProductPageButton1.dart';
import 'package:kvmaster/PartRequiremenet/PartRequirementAddMoreEditButton.dart';
import 'PartRequirmentAddMore.dart';

class ManageProductPagePartRequirement extends StatefulWidget {
  ManageProductPagePartRequirement({
    Key key,
  }) : super(key: key);
  @override
  _State createState() => _State();
}

class _State extends State<ManageProductPagePartRequirement> {
  ScrollController _controller;
  final _EmailorMobileNo = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xfff7f7f7),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Transform.translate(
                offset: Offset(20.0, 45.0),
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon:
                        Icon(Icons.arrow_back, color: Colors.black, size: 35)),
              ),

              Transform.translate(
                offset: Offset(30.0, 75.0),
                child: Text(
                  'Part\nRequirments',
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
                offset: Offset(30.0, 98.0),
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
                offset: Offset(46.0, 65.0),
                child:
                    // Adobe XD layer: 'Value' (text)
                    TextFormField(
                  controller: _EmailorMobileNo,
                  cursorColor: const Color(0x6b000000),
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: "Mango",
                    hintStyle: TextStyle(fontSize: 14),
                    border: InputBorder.none,
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(30.0, 77.0),
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
                offset: Offset(30.0, 88.0),
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
                offset: Offset(46.0, 40.0),
                child:
                    // Adobe XD layer: 'Value' (text)
                    TextFormField(
                  controller: _EmailorMobileNo,
                  cursorColor: const Color(0x6b000000),
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: "0",
                    hintStyle: TextStyle(fontSize: 14),
                    border: InputBorder.none,
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(214.0, -36.0),
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
                offset: Offset(214.0, -27.0),
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
                offset: Offset(230.0, -74.0),
                child:
                    // Adobe XD layer: 'Value' (text)
                    TextFormField(
                  controller: _EmailorMobileNo,
                  cursorColor: const Color(0x6b000000),
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: "0",
                    hintStyle: TextStyle(fontSize: 14),
                    border: InputBorder.none,
                  ),
                ),
              ),

              Transform.translate(
                offset: Offset(31.0, -49.0),
                child:
                    // Adobe XD layer: 'Area [DISPLAY_ELEME…' (shape)
                    Container(
                  width: 351.0,
                  height: 59.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.0),
                    color: const Color(0xffffffff),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(40.0, -85.0),
                child:
                    // Adobe XD layer: 'Value' (text)
                    SizedBox(
                  width: 72.0,
                  child: Text(
                    'Part Name',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 11,
                      color: const Color(0xff3e3e3e),
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(143.6, -99.0),
                child:
                    // Adobe XD layer: 'Value' (text)
                    SizedBox(
                  width: 65.0,
                  child: Text(
                    'No. of Pcs',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 11,
                      color: const Color(0xff3e3e3e),
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(243.6, -110.0),
                child:
                    // Adobe XD layer: 'Value' (text)
                    SizedBox(
                  width: 65.0,
                  child: Text(
                    'Condition',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 11,
                      color: const Color(0xff3e3e3e),
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
//
              Transform.translate(
                offset: Offset(50.0, -100.0),
                child: SingleChildScrollView(
                  child: Wrap(
                      alignment: WrapAlignment.center,
                      spacing: 10,
                      runSpacing: 10,
                      children: [
                        Container(
                            child: StreamBuilder(
                          stream: FirebaseFirestore.instance
                              .collection("PartRequirement")
                              .orderBy("createdAt", descending: true)
                              .snapshots(),
                          builder: (BuildContext context,
                              AsyncSnapshot<dynamic> snapshot) {
                            if (!snapshot.hasData) {
                              return CircularProgressIndicator();
                            }
                            return Expanded(
                              child: Flex(direction: Axis.vertical, children: [
                                ListView.builder(
                                  physics: ScrollPhysics(),
                                  scrollDirection: Axis.vertical,
                                  shrinkWrap: true,
                                  itemCount: snapshot.data.docs.length,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return SizedBox(
                                      width: 165.0,
                                      height: 42.0,
                                      child: Stack(
                                        children: <Widget>[
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                snapshot.data.documents[index]
                                                    .get('partName'),
                                              ),
                                              SizedBox(
                                                width: 70,
                                              ),
                                              Text(
                                                snapshot.data.documents[index]
                                                    .get('noOfPcs'),
                                              ),
                                              SizedBox(
                                                width: 80,
                                              ),
                                              Text(
                                                snapshot.data.documents[index]
                                                    .get('condition'),
                                              ),
                                              IconButton(
                                                  icon: Icon(
                                                    Icons.delete,
                                                    color: Colors.red,
                                                  ),
                                                  onPressed: () {
                                                    FirebaseController.instanace
                                                        .partRequirementDelete(
                                                            snapshot
                                                                .data
                                                                .documents[
                                                                    index]
                                                                .get('userId'))
                                                        .then((data) async {
                                                      print(data);
                                                      if (data == null) {
                                                        _showDialog(
                                                            "Problem Occurred While Deleting Data! Please try again.");
                                                      } else {
                                                        _showDialog(
                                                            "Deleted Successfully");
                                                      }
                                                    });
                                                  }),
                                              IconButton(
                                                  icon: Icon(
                                                    Icons.edit,
                                                    color: Colors.green,
                                                  ),
                                                  onPressed: () {
                                                    Navigator.of(context).push(MaterialPageRoute(
                                                        builder: (_) => PartRequirementAddMoreEditButton(
                                                            partName: snapshot
                                                                .data
                                                                .documents[
                                                                    index]
                                                                .get(
                                                                    'partName'),
                                                            noOfPcs: snapshot
                                                                .data
                                                                .documents[
                                                                    index]
                                                                .get('noOfPcs'),
                                                            dropValue: snapshot
                                                                .data
                                                                .documents[index]
                                                                .get('condition'),
                                                            id: snapshot.data.documents[index].get('userId'))));
                                                  }),
                                            ],
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              ]),
                            );
                          },
                        )),
                      ]),
                ),
              ),
              Transform.translate(
                offset: Offset(300.0, -50.0),
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
                                onTap: () {
                                  print("right");
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (_) =>
                                          ManageProductPageButton1()));
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

              Transform.translate(
                offset: Offset(50.0, -100.0),
                child: SizedBox(
                  width: 137.0,
                  height: 36.0,
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(0.0, 0.0, 137.0, 36.0),
                        size: Size(137.0, 36.0),
                        pinLeft: true,
                        pinRight: true,
                        pinTop: true,
                        pinBottom: true,
                        child:
                            // Adobe XD layer: 'Area [DISPLAY_ELEME…' (shape)

                            Container(
                          child: RaisedButton(
                              color: const Color(0xffabdc55),
                              shape: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: const Color(0xffabdc55),
                                ),
                                borderRadius: BorderRadius.circular(6.0),
                              ),
                              child: Text(
                                'Add More',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 13,
                                  color: const Color(0xff000000),
                                  fontWeight: FontWeight.w300,
                                ),
                                textAlign: TextAlign.left,
                              ),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        PartRequirementAddMore()));
                              }),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.0),
                            color: const Color(0xffabdc55),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
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

const String _svg_oirerx =
    '<svg viewBox="-10.5 33.0 423.0 215.4" ><path transform="translate(22.5, 24.0)" d="M 31.5 16.5 L 10.24499988555908 16.5 L 15.61499977111816 11.11499977111816 L 13.5 9 L 4.5 18 L 13.5 27 L 15.61499977111816 24.88500022888184 L 10.24499988555908 19.5 L 31.5 19.5 L 31.5 16.5 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-10.5, 224.5)" d="M 423 0 L 0 0" fill="none" stroke="#ffffff" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="matrix(0.0, -1.0, 1.0, 0.0, 344.6, 259.66)" d="M 13.3046989440918 12.15153884887695 L 17.81447410583496 7.645312309265137 C 18.14800643920898 7.31178092956543 18.14800643920898 6.772452354431152 17.81447410583496 6.442469120025635 C 17.48094177246094 6.10893726348877 16.94161605834961 6.112485408782959 16.60808372497559 6.442469120025635 L 11.49866008758545 11.54834365844727 C 11.17577266693115 11.87123107910156 11.16867733001709 12.38926887512207 11.47382164001465 12.72280120849609 L 16.60453414916992 17.86415672302246 C 16.77130126953125 18.03092384338379 16.99128913879395 18.1125316619873 17.20773124694824 18.1125316619873 C 17.42417144775391 18.1125316619873 17.64416122436523 18.03092384338379 17.81092643737793 17.86415672302246 C 18.14445877075195 17.53062629699707 18.14445877075195 16.99129867553711 17.81092643737793 16.66131401062012 L 13.3046989440918 12.15153884887695 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_6pqpz9 =
    '<svg viewBox="30.0 397.4 353.0 207.9" ><path transform="translate(125.08, 397.4)" d="M 0 0 L 0 207.8634185791016" fill="none" stroke="#f7f7f7" stroke-width="2" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(228.88, 397.4)" d="M 0 0 L 0 207.8634185791016" fill="none" stroke="#f7f7f7" stroke-width="2" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(329.88, 397.4)" d="M 0 0 L 0 207.8634185791016" fill="none" stroke="#f7f7f7" stroke-width="2" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(30.0, 436.0)" d="M 0 0 L 353 0" fill="none" stroke="#f7f7f7" stroke-width="2" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_h4sihz =
    '<svg viewBox="30.0 470.5 353.0 112.0" ><path transform="translate(56.16, 470.49)" d="M 0 0 L 45.67086791992188 0" fill="none" fill-opacity="0.34" stroke="#707070" stroke-width="1" stroke-opacity="0.34" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(154.14, 470.49)" d="M 0 0 L 45.67086791992188 0" fill="none" fill-opacity="0.34" stroke="#707070" stroke-width="1" stroke-opacity="0.34" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(247.5, 470.49)" d="M 0 0 L 59.67086791992188 0" fill="none" fill-opacity="0.34" stroke="#707070" stroke-width="1" stroke-opacity="0.34" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(247.5, 526.49)" d="M 0 0 L 59.67086791992188 0" fill="none" fill-opacity="0.34" stroke="#707070" stroke-width="1" stroke-opacity="0.34" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(247.5, 582.49)" d="M 0 0 L 59.67086791992188 0" fill="none" fill-opacity="0.34" stroke="#707070" stroke-width="1" stroke-opacity="0.34" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(30.0, 492.0)" d="M 0 0 L 353 0" fill="none" stroke="#f7f7f7" stroke-width="2" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_fg9hi =
    '<svg viewBox="30.0 526.5 353.0 21.5" ><path transform="translate(56.16, 526.49)" d="M 0 0 L 45.67086791992188 0" fill="none" fill-opacity="0.34" stroke="#707070" stroke-width="1" stroke-opacity="0.34" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(154.14, 526.49)" d="M 0 0 L 45.67086791992188 0" fill="none" fill-opacity="0.34" stroke="#707070" stroke-width="1" stroke-opacity="0.34" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(30.0, 548.0)" d="M 0 0 L 353 0" fill="none" stroke="#f7f7f7" stroke-width="2" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_3ivw7k =
    '<svg viewBox="56.2 582.5 143.7 1.0" ><path transform="translate(56.16, 582.49)" d="M 0 0 L 45.67086791992188 0" fill="none" fill-opacity="0.34" stroke="#707070" stroke-width="1" stroke-opacity="0.34" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(154.14, 582.49)" d="M 0 0 L 45.67086791992188 0" fill="none" fill-opacity="0.34" stroke="#707070" stroke-width="1" stroke-opacity="0.34" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_m20hcl =
    '<svg viewBox="343.5 458.8 27.0 9.2" ><path transform="translate(357.04, 454.55)" d="M 4.5 11.58080101013184 L 4.5 13.44482803344727 L 6.364027976989746 13.44482803344727 L 11.86166954040527 7.947187900543213 L 9.997641563415527 6.083159446716309 L 4.5 11.58080101013184 Z M 13.30318450927734 6.505672454833984 C 13.49704265594482 6.311813831329346 13.49704265594482 5.998656749725342 13.30318450927734 5.804798603057861 L 12.14003086090088 4.641644477844238 C 11.9461727142334 4.447785377502441 11.63301658630371 4.447785377502441 11.43915748596191 4.641644477844238 L 10.52951145172119 5.551290035247803 L 12.3935375213623 7.415318965911865 L 13.30318450927734 6.505672454833984 Z" fill="#abdc55" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(336.03, 454.34)" d="M 8.008495330810547 12.63593101501465 C 8.008495330810547 13.19527626037598 8.466142654418945 13.65292167663574 9.025487899780273 13.65292167663574 L 13.09345245361328 13.65292167663574 C 13.65279769897461 13.65292167663574 14.11044311523438 13.19527626037598 14.11044311523438 12.63593101501465 L 14.11044311523438 6.53398323059082 L 8.008495330810547 6.53398323059082 L 8.008495330810547 12.63593101501465 Z M 14.61894035339355 5.008495807647705 L 12.83920383453369 5.008495807647705 L 12.33070945739746 4.5 L 9.788229942321777 4.5 L 9.27973461151123 5.008495807647705 L 7.5 5.008495807647705 L 7.5 6.025486946105957 L 14.61894035339355 6.025486946105957 L 14.61894035339355 5.008495807647705 Z" fill="#e53c3c" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_oc6iou =
    '<svg viewBox="343.5 516.8 27.0 9.2" ><path transform="translate(357.04, 512.55)" d="M 4.5 11.58080101013184 L 4.5 13.44482803344727 L 6.364027976989746 13.44482803344727 L 11.86166954040527 7.947187900543213 L 9.997641563415527 6.083159446716309 L 4.5 11.58080101013184 Z M 13.30318450927734 6.505672454833984 C 13.49704265594482 6.311813831329346 13.49704265594482 5.998656749725342 13.30318450927734 5.804798603057861 L 12.14003086090088 4.641644477844238 C 11.9461727142334 4.447785377502441 11.63301658630371 4.447785377502441 11.43915748596191 4.641644477844238 L 10.52951145172119 5.551290035247803 L 12.3935375213623 7.415318965911865 L 13.30318450927734 6.505672454833984 Z" fill="#abdc55" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(336.03, 512.34)" d="M 8.008495330810547 12.63593101501465 C 8.008495330810547 13.19527626037598 8.466142654418945 13.65292167663574 9.025487899780273 13.65292167663574 L 13.09345245361328 13.65292167663574 C 13.65279769897461 13.65292167663574 14.11044311523438 13.19527626037598 14.11044311523438 12.63593101501465 L 14.11044311523438 6.53398323059082 L 8.008495330810547 6.53398323059082 L 8.008495330810547 12.63593101501465 Z M 14.61894035339355 5.008495807647705 L 12.83920383453369 5.008495807647705 L 12.33070945739746 4.5 L 9.788229942321777 4.5 L 9.27973461151123 5.008495807647705 L 7.5 5.008495807647705 L 7.5 6.025486946105957 L 14.61894035339355 6.025486946105957 L 14.61894035339355 5.008495807647705 Z" fill="#e53c3c" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_2re1gg =
    '<svg viewBox="327.0 742.3 27.6 20.6" ><path transform="translate(327.0, 737.67)" d="M 9.379925727844238 24.7669792175293 L 0.4044407606124878 15.79149436950684 C -0.1347895711660385 15.25226497650146 -0.1347895711660385 14.37796306610107 0.4044407606124878 13.83867931365967 L 2.357202291488647 11.8858642578125 C 2.896432399749756 11.34657955169678 3.770787239074707 11.34657955169678 4.310017585754395 11.8858642578125 L 10.35633277893066 17.93212509155273 L 23.30686950683594 4.981643676757813 C 23.84609794616699 4.442413330078125 24.7204532623291 4.442413330078125 25.25968360900879 4.981643676757813 L 27.21244621276855 6.93445873260498 C 27.75167655944824 7.473689079284668 27.75167655944824 8.347990036010742 27.21244621276855 8.887274742126465 L 11.33274078369141 24.76703262329102 C 10.79345607757568 25.3062629699707 9.919155120849609 25.3062629699707 9.379925727844238 24.7669792175293 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_irlb6z =
    '<svg viewBox="343.5 568.8 27.0 9.2" ><path transform="translate(357.04, 564.55)" d="M 4.5 11.58080101013184 L 4.5 13.44482803344727 L 6.364027976989746 13.44482803344727 L 11.86166954040527 7.947187900543213 L 9.997641563415527 6.083159446716309 L 4.5 11.58080101013184 Z M 13.30318450927734 6.505672454833984 C 13.49704265594482 6.311813831329346 13.49704265594482 5.998656749725342 13.30318450927734 5.804798603057861 L 12.14003086090088 4.641644477844238 C 11.9461727142334 4.447785377502441 11.63301658630371 4.447785377502441 11.43915748596191 4.641644477844238 L 10.52951145172119 5.551290035247803 L 12.3935375213623 7.415318965911865 L 13.30318450927734 6.505672454833984 Z" fill="#abdc55" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(336.03, 564.34)" d="M 8.008495330810547 12.63593101501465 C 8.008495330810547 13.19527626037598 8.466142654418945 13.65292167663574 9.025487899780273 13.65292167663574 L 13.09345245361328 13.65292167663574 C 13.65279769897461 13.65292167663574 14.11044311523438 13.19527626037598 14.11044311523438 12.63593101501465 L 14.11044311523438 6.53398323059082 L 8.008495330810547 6.53398323059082 L 8.008495330810547 12.63593101501465 Z M 14.61894035339355 5.008495807647705 L 12.83920383453369 5.008495807647705 L 12.33070945739746 4.5 L 9.788229942321777 4.5 L 9.27973461151123 5.008495807647705 L 7.5 5.008495807647705 L 7.5 6.025486946105957 L 14.61894035339355 6.025486946105957 L 14.61894035339355 5.008495807647705 Z" fill="#e53c3c" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
