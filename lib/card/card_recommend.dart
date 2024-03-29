import 'package:flutter/material.dart';
import 'package:flutter_read/card/base_card.dart';

//本周卡片
class CardRecommend extends BaseCard{
  _CardRecommendState createState() => _CardRecommendState();
}

class _CardRecommendState extends BaseCardState{
  @override
  void initState() {
    subTitleColor = Color(0xffb99444);
    // TODO: implement initState
    super.initState();
  }

  @override
  bottomContent() {
    //高度撑满
    return Expanded(
      child: Container(
        constraints: BoxConstraints.expand(), //通过BoxConstraints尽可能撑满父容器
        margin: EdgeInsets.only(top: 20),
        child: Image.network(
          'http://www.devio.org/io/flutter_beauty/card_1.jpg',
          fit: BoxFit.cover,
        ),
      ),
    );
  }


  @override
  topTitle(String title) {
    // TODO: implement topTitle
    return super.topTitle('本周推荐');
  }


  Widget subTitle(String title){
    return super.subTitle('送你一天无限卡，全场书籍免费读 > ');
  }
}