import 'package:flutter/material.dart';
import 'package:flutter_read/content_pager.dart';
//底部导航框架搭建
class TabNavigator extends StatefulWidget {
  @override
  _TabNavigatorState createState() => _TabNavigatorState();
}

class _TabNavigatorState extends State<TabNavigator> {

  final _defaultColor = Colors.grey;
  final _activeColor = Colors.blue;
  int _currentIndex = 0;
  final ContentPagerController _contentPagerController = ContentPagerController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          //颜色线性渐变
          gradient: LinearGradient(
            colors: [
              Color(0xffedeef0),
              Color(0xffe6e7e9),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          )
        ),
        child: ContentPager(
          contentPagerController: _contentPagerController,
          onPageChanged: (int index){
            setState(() {
              _currentIndex = index; 
            });
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index){
          //控制内容区域滚动到制定位置
          _contentPagerController.jumpToPage(index);
          //修改当前状态
          setState(() {
            _currentIndex = index; 
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
        _bottomItem('本周', Icons.folder, 0),
        _bottomItem('分享', Icons.explore, 1),
        _bottomItem('免费', Icons.donut_small, 2),
        _bottomItem('长安', Icons.person, 3),
      ]),
    );
  }

  //封装底部Tab
  _bottomItem(String title,IconData icon,int index){
    return BottomNavigationBarItem(
      icon: Icon(
        icon,color:_defaultColor,
        ),
      activeIcon: Icon(
        icon,
        color: _activeColor,
      ),
      title: Text(
        title,
        style:TextStyle(
          color: _currentIndex != index ? _defaultColor : _activeColor
        ),
      ),
    );
  }
}