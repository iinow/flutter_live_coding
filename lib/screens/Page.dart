import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        _buildTop(),
        _buildMiddle(),
        _buildBottom(),
      ],
    );
  }

  Widget _buildTop() {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Vihicle(
                icon: Icons.local_taxi,
                name: '택시',
              ),
              Vihicle(
                icon: Icons.local_taxi,
                name: '블랙',
              ),
              Vihicle(
                icon: Icons.local_taxi,
                name: '바이크',
              ),
              Vihicle(
                icon: Icons.local_taxi,
                name: '대리',
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Vihicle(
                icon: Icons.local_taxi,
                name: '택시',
              ),
              Vihicle(
                icon: Icons.local_taxi,
                name: '블랙',
              ),
              Vihicle(
                icon: Icons.local_taxi,
                name: '바이크',
              ),
              Vihicle(
                icon: Icons.local_taxi,
                name: '대리',
                show: false,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildMiddle() {
    final dummyItems = [
      'https://img5.goodfon.com/wallpaper/nbig/e/16/evgenii-diogtev-angliiskii-buldog-sobaka-morda-vzgliad-tiomn.jpg',
      'https://img1.goodfon.com/wallpaper/nbig/8/f4/pes-sobaka-ushki-morda-nos.jpg',
      'https://img3.goodfon.com/wallpaper/nbig/a/ed/sobaka-drug-vzglyad-beg.jpg',
    ];
    return CarouselSlider(
      height: 150,
      autoPlay: true,
      items: dummyItems.map(
        (url) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    url,
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          );
        },
      ).toList(),
    );
  }

  Widget _buildBottom() {
    final items = List.generate(10, (i) {
      return ListTile(
        leading: Icon(Icons.notifications_none),
        title: Text('[이벤트] 이것은 공지사항입니다.'),
      );
    });
    return ListView(
      // physics: NeverScrollableScrollPhysics(),
      physics: const AlwaysScrollableScrollPhysics(),
      shrinkWrap: true,
      children: items,
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '이용 서비스',
        style: TextStyle(fontSize: 40),
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  const Page3({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '내 정보',
        style: TextStyle(fontSize: 40),
      ),
    );
  }
}

class Vihicle extends StatefulWidget {
  Vihicle({Key key, this.icon, this.name, this.show = true}) : super(key: key);

  final IconData icon;
  final String name;
  final bool show;

  @override
  _VihicleState createState() => _VihicleState();
}

class _VihicleState extends State<Vihicle> {
  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: widget.show ? 1 : 0,
      child: InkWell(
        onTap: () {
          print('클릭');
        },
        child: Column(
          children: [
            Icon(
              widget.icon,
              size: 40,
            ),
            Text(widget.name),
          ],
        ),
      ),
    );
  }
}
