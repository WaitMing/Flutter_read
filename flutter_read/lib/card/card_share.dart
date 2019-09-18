import 'package:flutter/widgets.dart';
import 'package:flutter_read/card/base_card.dart';


//分享联名卡
class CardShare extends BaseCard{
  _CardShareState createState() => _CardShareState();
}
class _CardShareState extends BaseCardState{
  
  @override
  bottomContent() {
    // TODO: implement bottomContent
    return Expanded(
      child: Container(
        // constraints: BoxConstraints.expand(),
        margin: EdgeInsets.only(top: 20),
        decoration: BoxDecoration(
          color: Color(0xfff6f7f9),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(top: 20,left: 15,bottom: 20),
                child: Image.network('http://www.devio.org/io/flutter_beauty/card_list.png'),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: bottomTitle('854652人 , 参与活动'),
              ),
            )
          ],
        ),
      ),
    );
  }
  
  @override
  topTitle(String title) {
    // TODO: implement topTitle
    return super.topTitle('分享得联名卡');
  }

  @override
  Widget subTitle(String title) {
    // TODO: implement subTitle
    return super.subTitle('分享给朋友最多可获得12天无限卡');
  }

  @override
  topTitle2() {
    // TODO: implement topTitle2
    return Padding(
      padding: EdgeInsets.only(bottom: 5),
      child: Text(
        '/ 第19期',
        style: TextStyle(
          fontSize: 10,
        ),
      ),
    );
  }
}