import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  final List contactItems = [
    ContactInfo(Icons.email, 'Email', 'admissions@grc.edu.ph', Colors.red),
    ContactInfo(Icons.phone, 'Phone', '09519637603 – 09283875420', Colors.green),
    ContactInfo(Icons.location_on, 'Location', 'Global Reciprocal Colleges - GRC Building, 454, 1400 Rizal Ave Ext, Grace Park East, Caloocan, Metro Manila', Colors.blue),
    ContactInfo(Icons.language, 'Website', 'https://grc.edu.ph/', Colors.purple),
    ContactInfo(Icons.computer, 'I.T Office', 'infotech@grc.edu.ph', Colors.grey),
    ContactInfo(Icons.people, 'Scholarship', 'scholarship@grc.edu.ph', Colors.black),
    ContactInfo(Icons.newspaper_sharp, 'Registrar', 'registrar@grc.edu.ph', Colors.blue),
    ContactInfo(Icons.book_sharp, 'Library', 'library@grc.edu.ph', Colors.brown),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Us'),
        backgroundColor: Colors.grey,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(height: 20),

// Contact header
              Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Icon(Icons.contact_mail, size: 80, color: Colors.redAccent),
                    SizedBox(height: 20),
                    Text('PHYSICAL ADDRESS', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.black87)),
                    SizedBox(height: 10),
                    Text('454 GRC BLDG. Rizal Ave. Cor. 9th ave. East Grace Park, Caloocan City 1400 Metro Manila.', style: TextStyle(fontSize: 16, color: Colors.grey[600]), textAlign: TextAlign.center),
                  ],
                ),
              ),

              SizedBox(height: 20),

// Contact items
              ...contactItems.map((item) => _buildContactItem(item)).toList(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContactItem(ContactInfo info) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.0),
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4, offset: Offset(0, 2))],
      ),
      child: Row(
        children: [
// Icon container
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: info.color.withOpacity(0.1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(info.icon, color: info.color, size: 24),
          ),
          SizedBox(width: 16),

// Contact details
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(info.title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black87)),
                SizedBox(height: 4),
                Text(info.value, style: TextStyle(fontSize: 14, color: Colors.grey[600])),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Contact info data model
class ContactInfo {
  final IconData icon;
  final String title;
  final String value;
  final Color color;

  ContactInfo(this.icon, this.title, this.value, this.color);
}