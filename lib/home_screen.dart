import 'package:flutter/material.dart';
import 'device.dart';

final List<Widget> devices = [
  Devices(
    title: 'Patio',
    room: 0,
  ),
  Devices(
    title: 'Toilet',
    room: 1,
  ),
  Devices(
    title: 'Living Room',
    room: 2,
  ),
  Devices(
    title: 'Bedroom',
    room: 3,
  ),
  Devices(
    title: 'Kitchen',
    room: 4,
  ),
  Devices(
    title: 'Garage',
    room: 5,
  ),
];

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text("Layout"),
        bottom: TabBar(
          tabs: [
            Tab(
              text: 'All',
            ),
            Tab(
              text: 'Outdoor',
            ),
            Tab(
              text: 'Indoor',
            )
          ],
        ),
        elevation: 0,
      ),
      backgroundColor: Colors.blueGrey,
      body: Container(
        padding: EdgeInsets.only(top: 16),
        child: TabBarView(children: [
          Wrap(
            children: devices,
            runSpacing: 0,
            spacing: 0,
            direction: Axis.vertical,
          ),
          Wrap(
            children: [devices[0], devices[5]],
          ),
          Wrap(
            children: [devices[1], devices[2], devices[3], devices[4]],
          ),
        ]),
      ),
    );
  }
}
