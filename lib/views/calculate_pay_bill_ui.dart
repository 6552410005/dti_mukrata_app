// ignore_for_file: prefer_const_constructors, prefer_final_fields, sort_child_properties_last

import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";

class CalculatePayBillUI extends StatefulWidget {
  const CalculatePayBillUI({super.key});

  @override
  State<CalculatePayBillUI> createState() => _CalculatePayBillUIState();
}

class _CalculatePayBillUIState extends State<CalculatePayBillUI> {
  List<String> _mList = [
    'ไม่เป็นสมาชิก',
    'สมาชิก Silver Member ลด 5%',
    'สมาชิก Gold Member ลด 10%',
    'สมาชิก Platinum Member ลด 20%',
  ];
  String _member = 'ไม่เป็นสมาชิก';

  int pl = 1;
  String fd = 'นํ้าดื่ม';
  bool? adultStatus = false;
  bool? kidStatus = false;
  bool? waterStatus = false;
  TextEditingController adultCtrl = TextEditingController(text: '');
  TextEditingController kidCtrl = TextEditingController(text: '');
  TextEditingController cokeCtrl = TextEditingController(text: '');
  TextEditingController waterCtrl = TextEditingController(text: '');

  FocusNode focusNode = FocusNode();
  String hintText = '0';
  @override
  void initState() {
    super.initState();
    focusNode.addListener(() {
      if (focusNode.hasFocus) {
        hintText = '';
      } else {
        hintText = '0';
      }
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.003,
              ),
              ClipRRect(
                child: Image.asset(
                  'assets/images/camera.jpg',
                  width: MediaQuery.of(context).size.width * 0.65,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Padding(
                padding: EdgeInsets.only(
                    right: MediaQuery.of(context).size.width * 0.6),
                child: Text(
                  'จำนวนคน',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.height * 0.025,
                  ),
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.12,
                  ),
                  Checkbox(
                    onChanged: (param) {
                      setState(() {
                        adultStatus = param;
                        adultCtrl.text = '';
                      });
                    },
                    value: adultStatus,
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 2.5),
                    child: Text(
                      'ผู้ใหญ่ 299 บาท/คน จำนวน',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: MediaQuery.of(context).size.height * 0.018,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.02,
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 3, right: 25, left: 15),
                      child: TextField(
                        controller: adultCtrl,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(
                            RegExp(r'^[0-9]+.?[0-9]*'),
                          ),
                        ],
                        enabled: adultStatus,
                        textAlign: TextAlign.center,
                        //focusNode: focusNode,
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          hintText: hintText,
                          hintStyle: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.height * 0.020,
                            color: Colors.grey,
                          ),
                          suffixIcon: Padding(
                            padding: EdgeInsets.only(left: 25, top: 12),
                            child: Text(
                              'คน',
                              style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.020,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.12,
                  ),
                  Checkbox(
                    onChanged: (param) {
                      setState(() {
                        kidStatus = param;
                        kidCtrl.text = '';
                      });
                    },
                    value: kidStatus,
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 2.5),
                    child: Text(
                      'เด็ก 69 บาท/คน จำนวน',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: MediaQuery.of(context).size.height * 0.018,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.02,
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 3, right: 25, left: 15),
                      child: TextField(
                        controller: kidCtrl,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(
                            RegExp(r'^[0-9]+.?[0-9]*'),
                          ),
                        ],
                        enabled: kidStatus,
                        textAlign: TextAlign.center,
                        //focusNode: focusNode,
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          hintText: hintText,
                          hintStyle: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.height * 0.020,
                            color: Colors.grey,
                          ),
                          suffixIcon: Padding(
                            padding: EdgeInsets.only(left: 25, top: 12),
                            child: Text(
                              'คน',
                              style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.020,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Padding(
                padding: EdgeInsets.only(
                    right: MediaQuery.of(context).size.width * 0.50),
                child: Text(
                  'บุปเฟต์นํ้าดื่ม',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.height * 0.025,
                  ),
                ),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.125,
                      ),
                      Row(
                        children: [
                          Radio(
                            value: 'รับ',
                            groupValue: fd,
                            onChanged: (paramValue) {
                              setState(() {
                                fd = paramValue!;
                                waterStatus = false;
                                cokeCtrl.text = '';
                                waterCtrl.text = '';
                              });
                            },
                          ),
                          Text(
                            'รับ 25 บาท/หัว',
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.125,
                      ),
                      Radio(
                        value: 'ไม่รับ',
                        groupValue: fd,
                        onChanged: (paramValue) {
                          setState(() {
                            fd = paramValue!;
                            waterStatus = true;
                          });
                        },
                      ),
                      Text(
                        'ไม่รับ',
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(width: MediaQuery.of(context).size.width * 0.25),
                      Padding(
                        padding: EdgeInsets.only(bottom: 2.5),
                        child: Text(
                          'โค้ก 20 บาท/ขวด จำนวน',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize:
                                MediaQuery.of(context).size.height * 0.018,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.02,
                      ),
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding:
                              EdgeInsets.only(bottom: 3, right: 25, left: 15),
                          child: TextField(
                            controller: cokeCtrl,
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              FilteringTextInputFormatter.allow(
                                RegExp(r'^[0-9]+.?[0-9]*'),
                              ),
                            ],
                            enabled: waterStatus,
                            textAlign: TextAlign.center,
                            //focusNode: focusNode,
                            decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              hintText: hintText,
                              hintStyle: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.020,
                                color: Colors.grey,
                              ),
                              suffixIcon: Padding(
                                padding: EdgeInsets.only(left: 25, top: 12),
                                child: Text(
                                  'ขวด',
                                  style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.020,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(width: MediaQuery.of(context).size.width * 0.25),
                      Padding(
                        padding: EdgeInsets.only(bottom: 2.5),
                        child: Text(
                          'นํ้าเปล่า 15 บาท/ขวด จำนวน',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize:
                                MediaQuery.of(context).size.height * 0.018,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.02,
                      ),
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding:
                              EdgeInsets.only(bottom: 3, right: 25, left: 15),
                          child: TextField(
                            controller: waterCtrl,
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              FilteringTextInputFormatter.allow(
                                RegExp(r'^[0-9]+.?[0-9]*'),
                              ),
                            ],
                            enabled: waterStatus,
                            textAlign: TextAlign.center,
                            //focusNode: focusNode,
                            decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              hintText: hintText,
                              hintStyle: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.020,
                                color: Colors.grey,
                              ),
                              suffixIcon: Padding(
                                padding: EdgeInsets.only(left: 25, top: 12),
                                child: Text(
                                  'ขวด',
                                  style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.020,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width * 0.45),
                    child: Text(
                      'ประเภทสมาชิก',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).size.height * 0.025,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 45,
                      right: 45,
                    ),
                    child: DropdownButton(
                      value: _member,
                      onChanged: (paramValue) {
                        setState(() {
                          _member = paramValue!;
                        });
                      },
                      items: _mList
                          .map((e) => DropdownMenuItem(
                                value: e,
                                child: Row(
                                  children: [
                                    Text(e),
                                  ],
                                ),
                              ))
                          .toList(),
                      isExpanded: true,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.1,
                      ),
                      Expanded(
                        child: ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            FontAwesomeIcons.moneyBill1Wave,
                            color: Colors.white,
                          ),
                          label: Text(
                            'คำนวณเงิน',
                            style: TextStyle(color: Colors.white),
                          ),
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            backgroundColor: Colors.deepOrange,
                            fixedSize: Size.fromHeight(
                              50.0,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.02,
                      ),
                      Expanded(
                        child: ElevatedButton.icon(
                          onPressed: () {
                            setState(() {});
                          },
                          icon: Icon(
                            Icons.cancel,
                            color: Colors.white,
                          ),
                          label: Text(
                            'ยกเลิก',
                            style: TextStyle(color: Colors.white),
                          ),
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              backgroundColor: Color.fromARGB(255, 43, 39, 39),
                              fixedSize: Size.fromHeight(
                                55.0,
                              )),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.1,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.08,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
