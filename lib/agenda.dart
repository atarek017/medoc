import 'package:flutter/material.dart';
import 'drawer.dart';

class Agenda extends StatefulWidget {
  @override
  _AgendaState createState() => _AgendaState();
}

class _AgendaState extends State<Agenda> {
  @override
  Widget build(BuildContext context) {
    double _appWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: Color.fromARGB(255, 2, 173, 90),
        drawer: contentDrawer(context, "agenda"),
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              backgroundColor: Color.fromARGB(255, 2, 173, 90),
              expandedHeight: 380.0,
              elevation: 0,
              title: Text('Agenda'),
              centerTitle: true,
              flexibleSpace: FlexibleSpaceBar(
                background: Center(
                  child: appBarContent(_appWidth),
                ),
              ),
            ),
            SliverFixedExtentList(
              itemExtent: 130.0,
              delegate: SliverChildListDelegate(
                [
                  timeSlot('9 March 2019', 15),
                  eventSlot(
                    '',
                    'Prof. Abdul Basit',
                    'Burden Of Diabetes in MENA (New Updates)',
                    '08:30-09:00',
                  ),
                  eventSlot('', 'Dr. Nadia Ghanam',
                      'Obesity in SA: Is it a problem?', '09:00-09:25'),
                  eventSlot(
                      '',
                      'Dr. Saad Alzahrani',
                      'T2DM treatment: Challenges. Opportunities, and Advances',
                      '09:25-09:50'),
                  eventSlot('', 'COFFEE', '', '09:50-10:10'),
                  eventSlot(
                      '',
                      'Prof. Jean Claude Mbanya',
                      'Ominous Octet: Is it all in type 2 diabetes?',
                      '10:10-10:40'),
                  eventSlot(
                      '',
                      'Dr. Stanislav Glezer',
                      'Does Insulin Pump therapies really works in T2DM?',
                      '10:40-11:10'),
                  eventSlot('', 'Satellite Symposium I:  ', '', '11:35-12:20'),
                  eventSlot('', 'PRAYER AND BREAK', '', '12:30-13:00'),
                  eventSlot('', 'Prof. Osama Hamdy', 'Medical management',
                      '13:00-13:25'),
                  eventSlot(
                      '',
                      'Prof. Dario Tuccinardi',
                      'Bariatric surgery and incretin secretion',
                      '13:25-13:50'),
                  eventSlot('', 'Satellite Symposium II:  ', '', '13:50-14:20'),
                  eventSlot(
                      '',
                      'Prof. Osama Hamdy',
                      'Nutrition & Lifestyle for management of type 2 diabetes:\n What Do we know by 2019?',
                      '14:30-14:55'),
                  eventSlot(
                      '',
                      'Prof. Khalid Alrubian',
                      'For Obese Diabetic: Which is more safe remain obese or surgery?',
                      '14:55-15:25'),
                  eventSlot(
                      '',
                      'Prof. Jeanine Roeters Van Lennep',
                      'Familial Hypercholesterolemia:\n How to screen and diagnose?',
                      '15:25-15:55'),
                  eventSlot('', 'PRAYER AND LUNCH', '', '16:00-17:00'),
                  timeSlot('10 March 2019', 18),
                  eventSlot(
                      '',
                      'Dr. Ebtessam Baessa',
                      'LADA and MODY: When to suspect and How to manage?',
                      '08:30-09:00'),
                  eventSlot(
                      '',
                      'Prof. Osama Hamdy',
                      'Future of Diabetes Technology: Where are we going?',
                      '09:00-09:25'),
                  eventSlot(
                      '',
                      'Dr. Mohammed Alharbi',
                      'Type 2 diabetes in young and adolescents',
                      '09:25-09:50'),
                  eventSlot('', 'COFFEE', '', '10:00-10:30'),
                  
                 
                 
                  timeSlot('11 March 2019', 18),
                  eventSlot('', 'Dr. Eman Alfadhli',
                      'Future Landscape: Beta cell replacement', '08:30-09:00'),
                  eventSlot(
                      '',
                      'Prof. Jean Claude Mbanya',
                      'In T2DM: Is it Glycemic target or Outcome?',
                      '09:00-09:25'),
                  eventSlot(
                      '',
                      'Dr. Adnan Alshaikh',
                      'Emerging role of Adjunctive therapies for Type 1 Diabetes.',
                      '09:25-09:50'),
                  eventSlot('', 'COFFEE', '', '10:00-10:30'),
                  eventSlot(
                      '',
                      'Dr. Raed Aldahash',
                      'Simplifying Insulin Therapy for Better Patient Outcome',
                      '10:30-10:55'),
                  eventSlot('', 'Dr. Abdulqawi Almansari',
                      'Management of Hypertension: Update', '10:55-11:15'),
                  eventSlot(
                      '',
                      'Dr. Hossam Elghaitani',
                      'Dyslipidemia Management: What guidelines says?',
                      '11:15-11:35'),
                  eventSlot('', 'Satellite Symposium V: ', '', '11:35-12:20'),
                  eventSlot('', 'PRAYER AND COFFEE', '', '12:30-13:00'),
                  eventSlot('', 'Satellite Symposium VI: ', '', '113:00-13:30'),
                  eventSlot(
                      '',
                      'Prof. Ahmed Aljedai',
                      'Cost Effectiveness of Diabetes Management',
                      '113:30-14:00'),
                  eventSlot('', 'Saudi FDA',
                      'PharmacoVigilance and SAE reporting', '14:00-14:25'),
                  eventSlot(
                      '',
                      'Dr. Anwar Jammah',
                      'Guidelines Applicability in Saudi Population',
                      '14:25-14:50'),
                  eventSlot(
                      '',
                      'Dr. Rayan Alshareef',
                      'Diabetic Eye disease: When and How to screen for?',
                      '14:50-15:10'),
                  eventSlot(
                      '',
                      'PROF. ABDULRAHMAN ALSHEIKH ',
                      'CONCLUSION REMARKS\nEND OF THE CONFERENCE',
                      '15:20-15:30'),
                  eventSlot('', 'PRAYER AND LUNCH', '', '15:30-17:00'),
                ],
              ),
            ),
          ],
        ));
  }

  Widget appBarContent(double _appWidth) {
    return Container(
      width: _appWidth,
      child: Stack(
        children: <Widget>[
          Image.asset(
            'assets/pics/pattern.png',
            height: 410.0,
            width: _appWidth,
            fit: BoxFit.cover,
          ),
          Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/pics/time.png',
                width: 38,
                height: 46,
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
              ),
              Text(
                'Hello!',
                style: TextStyle(
                    fontSize: 36.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
              ),
              Text(
                'This is the agenda for the MEDOC19 conference from 8 to 11 March',
                style: TextStyle(color: Colors.white, fontSize: 18),
                textAlign: TextAlign.center,
              ),
            ],
          )),
        ],
      ),
    );
  }

  Widget timeSlot(String date, int events) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Padding(padding: EdgeInsets.only(top: 20)),
        Image.asset(
          'assets/pics/event.png',
          width: 9,
          height: 13,
        ),
        Padding(padding: EdgeInsets.only(top: 8)),
        Text(
          date,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 26),
        ),
        Padding(padding: EdgeInsets.only(top: 8)),
        Text(
          '$events Events',
          style: TextStyle(color: Colors.white, fontSize: 12),
        ),
      ],
    );
  }

  Widget eventSlot(String img, String title, String description, String time) {
    return Card(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(padding: EdgeInsets.only(right: 5)),
          // img != ''
          //     ? Image.asset(
          //         img,
          //         width: 84,
          //         height: 84,
          //       )
          //     : Container(),
          Padding(padding: EdgeInsets.only(right: 10)),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            
            children: <Widget>[
              Text(
                title,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              Padding(padding: EdgeInsets.only(top: 8)),
              Container(
               
                width: MediaQuery.of(context).size.width*.9,
                child: Text(
                  description,
                  style: TextStyle(color: Colors.black, fontSize: 12),
                  maxLines: 2,
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 8)),
              Text(
                time,
                style: TextStyle(fontSize: 12),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
