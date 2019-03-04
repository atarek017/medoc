import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:latlong/latlong.dart';
import 'drawer.dart';
import 'package:url_launcher/url_launcher.dart';

class Venue extends StatefulWidget {
  @override
  _VenueState createState() => _VenueState();
}

class _VenueState extends State<Venue> {
  final String _mapKey =
      'pk.eyJ1IjoiYWhtZWRtYWdkeWIiLCJhIjoiY2pyYTd0OTY5MGY4MDQzbGh4cmQzeWx4bSJ9.Txn91d-9CXigyXE2PQ6LHw';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: contentDrawer(context, "venue"),
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text("Venue"),
        centerTitle: true,
      ),
      body: bodyStack(),
    );
  }

  Widget bodyStack() {
    return Stack(
      children: <Widget>[
        makeMap(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(left: 16),
                child: Text(
                  'Park Hyatt',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 255, 216, 61),
                  ),
                )),
            Padding(padding: EdgeInsets.only(top: 10)),
            Container(
              margin: EdgeInsets.only(left: 16),
              child: Text(
                'Jeddah, Saudi Arabia',
                style: TextStyle(fontSize: 12, color: Colors.white),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
          ],
        ),
      ],
    );
  }

  Widget makeMap() {
    _openMap() async {
      // Android
      const url = 'geo:21.5139555,39.1567691';
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        // iOS
        const url = 'http://maps.apple.com/?ll=21.5139555,39.1567691';
        if (await canLaunch(url)) {
          await launch(url);
        } else {
          throw 'Could not launch $url';
        }
      }
    }

    return FlutterMap(
      options: new MapOptions(
        center: LatLng(21.5139555, 39.1567691),
        zoom: 17.0,
      ),
      layers: [
        new TileLayerOptions(
          urlTemplate:
              'https://api.mapbox.com/styles/v1/mohamedfadel/cjr95qxh706ij2spbsfz4xm2u/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoibW9oYW1lZGZhZGVsIiwiYSI6ImNqcjZ1bzZxcTBlaXQ0M2xoaHBjMTQ1cmYifQ.dWQ_VlgfHOm6tq86pDQxcw',
          additionalOptions: {
            'accessToken': _mapKey,
            'id': 'mapbox.streets',
          },
        ),
        new MarkerLayerOptions(
          markers: [
            new Marker(
              width: 50.0,
              height: 50.0,
              point: new LatLng(21.5139555, 39.1567691),
              builder: (ctx) => new Container(
                    child: InkWell(
                      onTap: () {
                        _openMap();
                      },
                      child: Image.asset(
                        'assets/pics/logo.png',
                        width: 27,
                        height: 27,
                      ),
                    ),
                  ),
            ),
          ],
        ),
      ],
    );
  }
}
