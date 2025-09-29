import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: Text('Home'),
backgroundColor: Colors.pinkAccent,
centerTitle: true,
),
body: Center(
child: Padding(
padding: EdgeInsets.all(20.0),
child: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: [
// Main welcome icon
Container(
width: 150,
height: 150,
decoration: BoxDecoration(
shape: BoxShape.rectangle,
border: Border.all(color: Colors.blue, width: 4),
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
'https://grc.edu.ph/wp-content/uploads/2020/08/LOGO_ORIGINAL-removebg-preview.png',
fit: BoxFit.contain,
),
),
),

SizedBox(height: 30),

// Welcome title
Text(
'Welcome to Global Reciprocal Colleges! ',
style: TextStyle(
fontSize: 28,
fontWeight: FontWeight.bold,
color: Colors.black87,
),
textAlign: TextAlign.center,
),
SizedBox(height: 10),

// Subtitle
Text(
'TOUCHING HEARTS, \n RENEWING MINDS, \n TRANSFORMING LIVES, \n',
style: TextStyle(fontSize: 16, color: Colors.grey[600]),
textAlign: TextAlign.center,
),
SizedBox(height: 30),

// Quick navigation cards
Row(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
children: [
_buildQuickNavCard(Icons.menu, 'Admissions', Colors.red),
_buildQuickNavCard(Icons.star, 'Apply Scholarship', Colors.green),
_buildQuickNavCard(Icons.newspaper_sharp, 'Courses', Colors.blue),
],
),
],
),
),
),
);
}

Widget _buildQuickNavCard(IconData icon, String label, Color color) {
return Container(
padding: EdgeInsets.all(16),
decoration: BoxDecoration(
color: color.withOpacity(0.1),
borderRadius: BorderRadius.circular(12),
),
child: Column(
children: [
Icon(icon, size: 30, color: color),
SizedBox(height: 8),
Text(label, style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: color)),
],
),
);
}
}