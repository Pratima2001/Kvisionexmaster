import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kvmaster/API/Api.dart';

class PartRequirementAddMoreEditButton extends StatefulWidget {
  PartRequirementAddMoreEditButton(
      {Key key, this.partName, this.noOfPcs, this.dropValue, this.id})
      : super(key: key);
  String id;
  String partName;
  String noOfPcs;
  String dropValue;
  @override
  _State createState() => _State();
}

class _State extends State<PartRequirementAddMoreEditButton> {
  final _partName = TextEditingController();
  final _noOfpcs = TextEditingController();
  ScrollController scrollController;
  String _dropDownValue1;
  @override
  Widget build(BuildContext context) {
    int height;
    return Scaffold(
        backgroundColor: const Color(0xfff7f7f7),
        body: OrientationBuilder(builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            height = MediaQuery.of(context).size.height.toInt();
          } else {
            height = MediaQuery.of(context).size.width.toInt();
          }
          return SingleChildScrollView(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Transform.translate(
                offset: Offset(0, 0),
                child: Container(
                  width: 436.0,
                  height: height.toDouble(),
                  decoration: BoxDecoration(
                    color: const Color(0x612e74bf),
                    border:
                        Border.all(width: 1.0, color: const Color(0x61707070)),
                  ),
                  child: Column(
                    children: <Widget>[
                      Transform.translate(
                        offset: Offset(.3, 120.0),
                        child: Container(
                            child: Container(
                          padding: EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    'Details',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 22,
                                      color: const Color(0xff000000),
                                      fontWeight: FontWeight.w700,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: SvgPicture.string(
                                      _svg_t8s3v9,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Part Name',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 12,
                                  color: const Color(0xff000000),
                                  fontWeight: FontWeight.w500,
                                ),
                                textAlign: TextAlign.left,
                              ),
                              Container(
                                  width: 252.0,
                                  height: 32.0,
                                  margin: EdgeInsets.only(left: 5, top: 5),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6.0),
                                    color: const Color(0xfff7f7f7),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: TextFormField(
                                      controller: _partName,
                                      inputFormatters: [
                                        LengthLimitingTextInputFormatter(50)
                                      ],
                                      cursorColor: const Color(0x6b000000),
                                      keyboardType: TextInputType.text,
                                      decoration: InputDecoration(
                                        hintText: widget.partName,
                                        hintStyle: TextStyle(fontSize: 10),
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  )),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                'No of pcs',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 12,
                                  color: const Color(0xff000000),
                                  fontWeight: FontWeight.w500,
                                ),
                                textAlign: TextAlign.left,
                              ),
                              Container(
                                  width: 252.0,
                                  height: 32.0,
                                  margin: EdgeInsets.only(left: 5, top: 5),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6.0),
                                    color: const Color(0xfff7f7f7),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: TextFormField(
                                      controller: _noOfpcs,
                                      inputFormatters: [
                                        LengthLimitingTextInputFormatter(50)
                                      ],
                                      cursorColor: const Color(0x6b000000),
                                      keyboardType: TextInputType.text,
                                      decoration: InputDecoration(
                                        hintText: widget.noOfPcs,
                                        hintStyle: TextStyle(fontSize: 10),
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  )),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                'Condition',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 12,
                                  color: const Color(0xff000000),
                                  fontWeight: FontWeight.w500,
                                ),
                                textAlign: TextAlign.left,
                              ),
                              Container(
                                width: 252.0,
                                padding: EdgeInsets.only(left: 10),
                                height: 32.0,
                                margin: EdgeInsets.only(left: 5, top: 5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6.0),
                                  color: const Color(0xfff7f7f7),
                                ),
                                child: DropdownButton(
                                  hint: _dropDownValue1 == null
                                      ? Text(widget.dropValue)
                                      : Text(
                                          _dropDownValue1,
                                          style: TextStyle(color: Colors.blue),
                                        ),
                                  isExpanded: true,
                                  iconSize: 10.0,
                                  style: TextStyle(color: Colors.blue),
                                  items: ['Small', 'Bunch'].map(
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
                                        _dropDownValue1 = val;
                                      },
                                    );
                                  },
                                ),
                              ),
                              SizedBox(
                                height: 100,
                              ),
                              Container(
                                alignment: Alignment.bottomCenter,
                                width: 120.8,
                                height: 31.0,
                                child: RaisedButton(
                                    color: const Color(0xff3e45a9),
                                    shape: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(13.0),
                                        borderSide: BorderSide(
                                            color: const Color(0xff3e45a9))),
                                    child: Text(
                                      "Add",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    onPressed: () {
                                      print("tap");
                                      FirebaseController.instanace
                                          .partRequirementEdit(
                                              widget.id,
                                              _partName.text,
                                              _noOfpcs.text,
                                              _dropDownValue1.toString())
                                          .then((data) async {
                                        print(data);
                                        if (data == null) {
                                          _showDialog(
                                              "Problem Occurred While Saving Your Data! Please try again.");
                                        } else {
                                          _showDialog("Upload Successfully");
                                        }
                                      });
                                    }),
                              )
                            ],
                          ),
                          width: 303.0,
                          height: 395.0,
                          decoration: BoxDecoration(
                            color: const Color(0xffffffff),
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0x29000000),
                                offset: Offset(0, 22),
                                blurRadius: 22,
                              ),
                            ],
                          ),
                        )),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ));
        }));
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

const String _svg_pu9ksy =
    '<svg viewBox="-10.5 33.0 423.0 671.5" ><path transform="translate(22.5, 24.0)" d="M 31.5 16.5 L 10.24499988555908 16.5 L 15.61499977111816 11.11499977111816 L 13.5 9 L 4.5 18 L 13.5 27 L 15.61499977111816 24.88500022888184 L 10.24499988555908 19.5 L 31.5 19.5 L 31.5 16.5 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-10.5, 224.5)" d="M 423 0 L 0 0" fill="none" stroke="#ffffff" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="matrix(0.0, -1.0, 1.0, 0.0, 344.6, 259.66)" d="M 13.3046989440918 12.15153884887695 L 17.81447410583496 7.645312309265137 C 18.14800643920898 7.31178092956543 18.14800643920898 6.772452354431152 17.81447410583496 6.442469120025635 C 17.48094177246094 6.10893726348877 16.94161605834961 6.112485408782959 16.60808372497559 6.442469120025635 L 11.49866008758545 11.54834365844727 C 11.17577266693115 11.87123107910156 11.16867733001709 12.38926887512207 11.47382164001465 12.72280120849609 L 16.60453414916992 17.86415672302246 C 16.77130126953125 18.03092384338379 16.99128913879395 18.1125316619873 17.20773124694824 18.1125316619873 C 17.42417144775391 18.1125316619873 17.64416122436523 18.03092384338379 17.81092643737793 17.86415672302246 C 18.14445877075195 17.53062629699707 18.14445877075195 16.99129867553711 17.81092643737793 16.66131401062012 L 13.3046989440918 12.15153884887695 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(178.5, 704.5)" d="M 0 0 L 55 0" fill="none" fill-opacity="0.34" stroke="#707070" stroke-width="1" stroke-opacity="0.34" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(299.5, 704.5)" d="M 0 0 L 55 0" fill="none" fill-opacity="0.34" stroke="#707070" stroke-width="1" stroke-opacity="0.34" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_6pqpz9 =
    '<svg viewBox="30.0 397.4 353.0 207.9" ><path transform="translate(125.08, 397.4)" d="M 0 0 L 0 207.8634185791016" fill="none" stroke="#f7f7f7" stroke-width="2" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(228.88, 397.4)" d="M 0 0 L 0 207.8634185791016" fill="none" stroke="#f7f7f7" stroke-width="2" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(329.88, 397.4)" d="M 0 0 L 0 207.8634185791016" fill="none" stroke="#f7f7f7" stroke-width="2" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(30.0, 436.0)" d="M 0 0 L 353 0" fill="none" stroke="#f7f7f7" stroke-width="2" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_gfcbhn =
    '<svg viewBox="30.0 470.5 353.0 21.5" ><path transform="translate(56.16, 470.49)" d="M 0 0 L 45.67086791992188 0" fill="none" fill-opacity="0.34" stroke="#707070" stroke-width="1" stroke-opacity="0.34" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(154.14, 470.49)" d="M 0 0 L 45.67086791992188 0" fill="none" fill-opacity="0.34" stroke="#707070" stroke-width="1" stroke-opacity="0.34" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(254.62, 470.49)" d="M 0 0 L 45.67086791992188 0" fill="none" fill-opacity="0.34" stroke="#707070" stroke-width="1" stroke-opacity="0.34" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(30.0, 492.0)" d="M 0 0 L 353 0" fill="none" stroke="#f7f7f7" stroke-width="2" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ny6iiv =
    '<svg viewBox="30.0 526.5 353.0 21.5" ><path transform="translate(56.16, 526.49)" d="M 0 0 L 45.67086791992188 0" fill="none" fill-opacity="0.34" stroke="#707070" stroke-width="1" stroke-opacity="0.34" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(154.14, 526.49)" d="M 0 0 L 45.67086791992188 0" fill="none" fill-opacity="0.34" stroke="#707070" stroke-width="1" stroke-opacity="0.34" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(254.62, 526.49)" d="M 0 0 L 45.67086791992188 0" fill="none" fill-opacity="0.34" stroke="#707070" stroke-width="1" stroke-opacity="0.34" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(30.0, 548.0)" d="M 0 0 L 353 0" fill="none" stroke="#f7f7f7" stroke-width="2" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_hsldat =
    '<svg viewBox="56.2 582.5 244.1 1.0" ><path transform="translate(56.16, 582.49)" d="M 0 0 L 45.67086791992188 0" fill="none" fill-opacity="0.34" stroke="#707070" stroke-width="1" stroke-opacity="0.34" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(154.14, 582.49)" d="M 0 0 L 45.67086791992188 0" fill="none" fill-opacity="0.34" stroke="#707070" stroke-width="1" stroke-opacity="0.34" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(254.62, 582.49)" d="M 0 0 L 45.67086791992188 0" fill="none" fill-opacity="0.34" stroke="#707070" stroke-width="1" stroke-opacity="0.34" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_m20hcl =
    '<svg viewBox="343.5 458.8 27.0 9.2" ><path transform="translate(357.04, 454.55)" d="M 4.5 11.58080101013184 L 4.5 13.44482803344727 L 6.364027976989746 13.44482803344727 L 11.86166954040527 7.947187900543213 L 9.997641563415527 6.083159446716309 L 4.5 11.58080101013184 Z M 13.30318450927734 6.505672454833984 C 13.49704265594482 6.311813831329346 13.49704265594482 5.998656749725342 13.30318450927734 5.804798603057861 L 12.14003086090088 4.641644477844238 C 11.9461727142334 4.447785377502441 11.63301658630371 4.447785377502441 11.43915748596191 4.641644477844238 L 10.52951145172119 5.551290035247803 L 12.3935375213623 7.415318965911865 L 13.30318450927734 6.505672454833984 Z" fill="#abdc55" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(336.03, 454.34)" d="M 8.008495330810547 12.63593101501465 C 8.008495330810547 13.19527626037598 8.466142654418945 13.65292167663574 9.025487899780273 13.65292167663574 L 13.09345245361328 13.65292167663574 C 13.65279769897461 13.65292167663574 14.11044311523438 13.19527626037598 14.11044311523438 12.63593101501465 L 14.11044311523438 6.53398323059082 L 8.008495330810547 6.53398323059082 L 8.008495330810547 12.63593101501465 Z M 14.61894035339355 5.008495807647705 L 12.83920383453369 5.008495807647705 L 12.33070945739746 4.5 L 9.788229942321777 4.5 L 9.27973461151123 5.008495807647705 L 7.5 5.008495807647705 L 7.5 6.025486946105957 L 14.61894035339355 6.025486946105957 L 14.61894035339355 5.008495807647705 Z" fill="#e53c3c" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_oc6iou =
    '<svg viewBox="343.5 516.8 27.0 9.2" ><path transform="translate(357.04, 512.55)" d="M 4.5 11.58080101013184 L 4.5 13.44482803344727 L 6.364027976989746 13.44482803344727 L 11.86166954040527 7.947187900543213 L 9.997641563415527 6.083159446716309 L 4.5 11.58080101013184 Z M 13.30318450927734 6.505672454833984 C 13.49704265594482 6.311813831329346 13.49704265594482 5.998656749725342 13.30318450927734 5.804798603057861 L 12.14003086090088 4.641644477844238 C 11.9461727142334 4.447785377502441 11.63301658630371 4.447785377502441 11.43915748596191 4.641644477844238 L 10.52951145172119 5.551290035247803 L 12.3935375213623 7.415318965911865 L 13.30318450927734 6.505672454833984 Z" fill="#abdc55" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(336.03, 512.34)" d="M 8.008495330810547 12.63593101501465 C 8.008495330810547 13.19527626037598 8.466142654418945 13.65292167663574 9.025487899780273 13.65292167663574 L 13.09345245361328 13.65292167663574 C 13.65279769897461 13.65292167663574 14.11044311523438 13.19527626037598 14.11044311523438 12.63593101501465 L 14.11044311523438 6.53398323059082 L 8.008495330810547 6.53398323059082 L 8.008495330810547 12.63593101501465 Z M 14.61894035339355 5.008495807647705 L 12.83920383453369 5.008495807647705 L 12.33070945739746 4.5 L 9.788229942321777 4.5 L 9.27973461151123 5.008495807647705 L 7.5 5.008495807647705 L 7.5 6.025486946105957 L 14.61894035339355 6.025486946105957 L 14.61894035339355 5.008495807647705 Z" fill="#e53c3c" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_2re1gg =
    '<svg viewBox="327.0 742.3 27.6 20.6" ><path transform="translate(327.0, 737.67)" d="M 9.379925727844238 24.7669792175293 L 0.4044407606124878 15.79149436950684 C -0.1347895711660385 15.25226497650146 -0.1347895711660385 14.37796306610107 0.4044407606124878 13.83867931365967 L 2.357202291488647 11.8858642578125 C 2.896432399749756 11.34657955169678 3.770787239074707 11.34657955169678 4.310017585754395 11.8858642578125 L 10.35633277893066 17.93212509155273 L 23.30686950683594 4.981643676757813 C 23.84609794616699 4.442413330078125 24.7204532623291 4.442413330078125 25.25968360900879 4.981643676757813 L 27.21244621276855 6.93445873260498 C 27.75167655944824 7.473689079284668 27.75167655944824 8.347990036010742 27.21244621276855 8.887274742126465 L 11.33274078369141 24.76703262329102 C 10.79345607757568 25.3062629699707 9.919155120849609 25.3062629699707 9.379925727844238 24.7669792175293 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_irlb6z =
    '<svg viewBox="343.5 568.8 27.0 9.2" ><path transform="translate(357.04, 564.55)" d="M 4.5 11.58080101013184 L 4.5 13.44482803344727 L 6.364027976989746 13.44482803344727 L 11.86166954040527 7.947187900543213 L 9.997641563415527 6.083159446716309 L 4.5 11.58080101013184 Z M 13.30318450927734 6.505672454833984 C 13.49704265594482 6.311813831329346 13.49704265594482 5.998656749725342 13.30318450927734 5.804798603057861 L 12.14003086090088 4.641644477844238 C 11.9461727142334 4.447785377502441 11.63301658630371 4.447785377502441 11.43915748596191 4.641644477844238 L 10.52951145172119 5.551290035247803 L 12.3935375213623 7.415318965911865 L 13.30318450927734 6.505672454833984 Z" fill="#abdc55" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(336.03, 564.34)" d="M 8.008495330810547 12.63593101501465 C 8.008495330810547 13.19527626037598 8.466142654418945 13.65292167663574 9.025487899780273 13.65292167663574 L 13.09345245361328 13.65292167663574 C 13.65279769897461 13.65292167663574 14.11044311523438 13.19527626037598 14.11044311523438 12.63593101501465 L 14.11044311523438 6.53398323059082 L 8.008495330810547 6.53398323059082 L 8.008495330810547 12.63593101501465 Z M 14.61894035339355 5.008495807647705 L 12.83920383453369 5.008495807647705 L 12.33070945739746 4.5 L 9.788229942321777 4.5 L 9.27973461151123 5.008495807647705 L 7.5 5.008495807647705 L 7.5 6.025486946105957 L 14.61894035339355 6.025486946105957 L 14.61894035339355 5.008495807647705 Z" fill="#e53c3c" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_t8s3v9 =
    '<svg viewBox="318.2 137.9 12.9 12.9" ><path transform="translate(315.58, 136.0)" d="M 15.35812950134277 12.29571723937988 C 15.35807800292969 12.29566669464111 15.35802841186523 12.29561614990234 15.35797691345215 12.2955904006958 L 11.44306755065918 8.38059139251709 L 15.35798931121826 4.465593338012695 L 15.35814189910889 4.46546745300293 C 15.39885520935059 4.424701690673828 15.43028926849365 4.375626564025879 15.45029449462891 4.321596622467041 C 15.50380325317383 4.178228855133057 15.47327995300293 4.010539054870605 15.35799217224121 3.89525032043457 L 13.50859546661377 2.045869112014771 C 13.39330768585205 1.930605888366699 13.22566890716553 1.900107622146606 13.082275390625 1.953618288040161 C 13.02824974060059 1.973635315895081 12.97917079925537 2.005056619644165 12.93837833404541 2.045743227005005 C 12.93837833404541 2.045793771743774 12.93832874298096 2.04581880569458 12.9382791519165 2.045869112014771 L 9.023305892944336 5.960892677307129 L 5.108332633972168 2.045894384384155 L 5.108206272125244 2.04576849937439 C 5.067437171936035 2.005077600479126 5.018373489379883 1.973655223846436 4.964360237121582 1.953643321990967 C 4.820942878723145 1.900107502937317 4.653303146362305 1.930631041526794 4.538013935089111 2.045894384384155 L 2.688607692718506 3.895301342010498 C 2.573319435119629 4.010589599609375 2.542820930480957 4.1782546043396 2.596331596374512 4.321621894836426 C 2.616355419158936 4.3756422996521 2.647785663604736 4.424712657928467 2.68848180770874 4.465493679046631 C 2.68853235244751 4.465518474578857 2.688557624816895 4.465569019317627 2.688607692718506 4.465619564056396 L 6.603606224060059 8.38059139251709 L 2.688607692718506 12.29561614990234 L 2.688507080078125 12.29574203491211 C 2.647818088531494 12.33652210235596 2.616381168365479 12.38558197021484 2.596331596374512 12.43958759307861 C 2.542795658111572 12.58295631408691 2.573319435119629 12.75064563751221 2.688607692718506 12.86593437194824 L 4.53801441192627 14.71531581878662 C 4.653328418731689 14.83060550689697 4.820968151092529 14.86110305786133 4.96436071395874 14.80759143829346 C 5.018377304077148 14.78755950927734 5.067446708679199 14.75613117218018 5.108231067657471 14.71543979644775 C 5.108257293701172 14.7153902053833 5.108307838439941 14.71536540985107 5.108357906341553 14.7153148651123 L 9.023331642150879 10.80031585693359 L 12.93830490112305 14.7153148651123 L 12.93845558166504 14.71541500091553 C 12.97922801971436 14.75611591339111 13.02828884124756 14.78755187988281 13.08230209350586 14.80758857727051 C 13.22569465637207 14.8611011505127 13.39338493347168 14.83060264587402 13.50862312316895 14.7153148651123 L 15.35800457000732 12.8659086227417 C 15.47329330444336 12.75061893463135 15.50381660461426 12.58292961120605 15.45030498504639 12.43956184387207 C 15.43027687072754 12.38554573059082 15.39883708953857 12.33648204803467 15.35813236236572 12.29571437835693 Z" fill="#3e45a9" fill-opacity="0.5" stroke="#ffffff" stroke-width="1" stroke-opacity="0.5" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_sdzp5r =
    '<svg viewBox="307.3 357.0 8.5 4.6" ><path transform="matrix(0.0, -1.0, 1.0, 0.0, 307.28, 361.6)" d="M 1.377196073532104 4.266263961791992 L 4.400794506072998 1.039492249488831 C 4.624413013458252 0.8006605505943298 4.624413013458252 0.4144638776779175 4.400794506072998 0.1781725734472275 C 4.177175998687744 -0.06065955758094788 3.815582990646362 -0.05811876431107521 3.591965436935425 0.1781725734472275 L 0.166328638792038 3.834334373474121 C -0.05015257000923157 4.065544605255127 -0.05490997433662415 4.436495780944824 0.149675577878952 4.675327301025391 L 3.589585065841675 8.35689640045166 C 3.70139479637146 8.476312637329102 3.848887205123901 8.534749984741211 3.994001150131226 8.534749984741211 C 4.139114856719971 8.534749984741211 4.286607265472412 8.476312637329102 4.398416042327881 8.35689640045166 C 4.622034549713135 8.11806583404541 4.622034549713135 7.731869220733643 4.398416042327881 7.495577812194824 L 1.377196073532104 4.266263961791992 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
