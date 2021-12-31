import 'package:flutter/material.dart';

class Devices extends StatefulWidget {
  const Devices({Key? key, required this.title, required this.room})
      : super(key: key);

  final String title;
  final int room;

  @override
  _DevicesState createState() => _DevicesState();
}

class _DevicesState extends State<Devices> {
  List<String> listtt = [
    'assets/images/out.jpg',
    'assets/images/toilet.jpg',
    'assets/images/living room.jpg',
    'assets/images/bedroom.jpg',
    'assets/images/kitchen.jpg',
    'assets/images/garage.jpg',
  ]; //complete the image list
  Color myHexColor = Color.fromRGBO(0, 0, 0, 1);
  int _tonggle = 1;
  double llamp = 0.5;
  var respond = "OFF";
  void _onClick() {
    setState(() {
      if (_tonggle == 1) {
        respond = "ON";
        llamp = 1.0;
        myHexColor = Color.fromRGBO(0, 0, 0, 0);
        _tonggle--;
      } else {
        respond = "OFF";
        llamp = 0.2;
        myHexColor = Color.fromRGBO(0, 0, 0, 1);
        _tonggle++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 144,
      margin: EdgeInsets.only(
        left: 16,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: 0),
                padding: EdgeInsets.only(left: 16),
                height: 100,
                width: MediaQuery.of(context).size.width / 2.3,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(listtt[widget.room]),
                      fit: BoxFit.fill,
                      colorFilter:
                          ColorFilter.mode(myHexColor, BlendMode.darken)),
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.black87, width: 0.5),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: _onClick,
                          child: Icon(Icons.power),
                        ), //change the icon to turn on icon
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, bottom: 5),
                      child: Text(
                        widget.title,
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2.0,
                            color: Colors.white),
                      ),
                    ),
                    Row(
                      children: [
                        Opacity(
                          opacity: llamp,
                          child: Container(
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.red),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            '$respond',
                            style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 2.0,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
