import 'package:flutter/material.dart';

class CardComponent extends StatelessWidget {
  List _region = [
    '서울시 관악구 신림동',
    '서울시 관악구 보라매동',
  ];
  List _monthlyCharge = [
    '보증금 500~1000/월세 40~45',
    '보증금 100~200/월세 50~55',
  ];
  List _adCharge = [
    '관리비 10만원 내외',
    '관리비 10만원 내외',
  ];

  Widget _cardtitle(index) {
    return Container(
      child: Column(
        children: [
          Text('${_region[index]}'),
          Text('${_monthlyCharge[index]}'),
          Text('${_adCharge[index]}'),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var index = _region.length;
    return Container(
      child: Column(
        children: [
          _cardtitle(index),
        ],
      ),
    );
  }
}
