import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:jipbang/component/custom_ellipses.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(
    //     SystemUiOverlayStyle(statusBarBrightness: Brightness.light));
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    List _requestDate = [
      '2022. 11. 16',
      '2022. 11. 15',
      '2022. 11. 15',
    ];
    List _region = [
      '서울시 관악구 신림동',
      '서울시 관악구 보라매동',
      '서울시 관악구 신림동',
    ];
    List _monthlyCharge = [
      '보증금 500~1000/월세 40~45',
      '보증금 100~200/월세 50~55',
      '보증금 300~500/월세 ~40',
    ];
    List _adCharge = [
      '관리비 10만원 내외',
      '관리비 10만원 내외',
      '관리비 10만원 내외',
    ];
    List _requestContents = [
      '6개월 정도 짧게 거주하려고 하는데 단기임대를 해주는 곳이 많지가 않네요 6개월 단기임대 가능한 곳을 찾고있어요 그리고 채광이 좋은 집이면 좋겠어요!',
      '보증금 저렴하고 월세도 저렴한 곳 찾고 있어요 좋은 곳 알려주세요',
      '인테리어 화이트톤으로 깔끔하고 화장실도 대리석인 곳 알려주세요',
    ];
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              systemOverlayStyle: SystemUiOverlayStyle.light,
              toolbarHeight: 80.0,
              title: Container(
                child: Text(
                  '중개사님 요청이 왔어요!',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ),
              elevation: 0,
              backgroundColor: Colors.white,
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                return Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    height: 310,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.grey.withOpacity(0.6),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                              ),
                              color: Color(0xffF0F0F0)),
                          height: 50,
                          width: double.infinity,
                          child: Text(
                            '요청 받은 날짜 : ${_requestDate[index]}',
                            style: TextStyle(color: Color(0xff808080)),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '${_region[index]}',
                                style: TextStyle(color: Color(0xff5E5E5E)),
                              ),
                              Text(
                                '${_monthlyCharge[index]}',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '${_adCharge[index]}',
                                style: TextStyle(color: Color(0xff5E5E5E)),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(15),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 74,
                                height: 30,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(99),
                                    color: Color(0xff3056D3)),
                                child: Center(
                                  child: Text(
                                    '분리형',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                width: 74,
                                height: 30,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(99),
                                    color: Color(0xff3056D3)),
                                child: Center(
                                  child: Text(
                                    '안전시설',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 8,
                              ),
                              Container(
                                child: Text(
                                  '요청사항',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Get.toNamed("/regist");
                                },
                                child: Container(
                                    child: CustomPaint(
                                  size: Size(double.infinity, 50),
                                  painter: MyTextPainter(
                                      text: TextSpan(
                                          text: '${_requestContents[index]}',
                                          style:
                                              TextStyle(color: Colors.black87)),
                                      ellipsis: "...더보기",
                                      maxLines: 2),
                                )),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }, childCount: _region.length),
            ),
          ],
        ),
      ),
    );
  }
}
