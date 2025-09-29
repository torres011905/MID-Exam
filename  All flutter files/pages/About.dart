import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us'),
        backgroundColor: Colors.grey,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(height: 20),

              // Profile picture
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.grey, width: 4),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: ClipOval(
                  child: Image.network(
                    'lib/image.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 25),

              // Name and title
              Text('GLOBAL RECIPROCAL COLLEGES', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.red)),
              SizedBox(height: 8),
              Text('MISSION: GRC is creating a culture for successful, socially responsible, morally upright skilled workers and highly competent professionals through values-based quality education.', style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.w500)),
              SizedBox(height: 30),
              Text('VISION: A global community of excellent individuals with values.', style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.w500)),
              SizedBox(height: 30),

              // About Us card
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(color: Colors.black12, blurRadius: 8, offset: Offset(0, 3)),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('About Us', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue)),
                    SizedBox(height: 15),
                    Text(
                      'With a dream of having a free education through reciprocation, where everyone can have the opportunity to change their lives through a very affordable tuition fee and even scholarship grants, available not just for the youth but also for adults.\n CHAIRMAN VICENTE ONGTENCO established the Global Reciprocal Colleges aiming to develop the youth to become responsible, competent, and dedicated professionals. \nIn its pursuit of social and economic amelioration, on December 10, 2007, the Global Reciprocal Colleges was registered in the Security Exchange Commission (SEC), and in partnership with the Motortrade Life And Livelihood Assistance Foundation, Inc. (MLALAF), Global Reciprocal Colleges started a Technical Education and Skills Development Authority (TESDA) courses but in due course of time, GRC finally pursued courses that will help it to be established as a College institution. \n'
                          '\nCOURSES\n'
                          '\nINFORMATON TECHNOLOGY\n'
                          '\nEDUCATION\n'
                          '\nACCOUNTANCY\n'
                          '\nBUSINESS ADMINISTRATION\n',
                      style: TextStyle(fontSize: 16, color: Colors.grey[700], height: 1.6),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25),
            ],
          ),
        ),
      ),
    );
  }
}