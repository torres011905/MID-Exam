import 'package:flutter/material.dart';

class GalleryPage extends StatelessWidget {
final List<String> imageLinks = [
'https://grc.edu.ph/wp-content/uploads/2025/08/Graduation-2025-Ms-Heidi-1024x577.jpeg',
'https://grc.edu.ph/wp-content/uploads/2024/05/FB_IMG_1714789198276-1024x683.jpg',
'https://grc.edu.ph/wp-content/uploads/2024/05/418726168_742433734584369_3751672870079643009_n-1024x576.jpg',
'https://grc.edu.ph/wp-content/uploads/2024/02/pexels-googledeepmind-17485657-1024x576.jpg',
'https://grc.edu.ph/wp-content/uploads/2023/03/alumni-min-1024x576.jpg',
'https://grc.edu.ph/wp-content/uploads/2023/07/Yellow-and-Navy-Retro-Welcome-Email-Header-1-1024x342.png',

];

@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: Text('Events'),
backgroundColor: Colors.blue,
centerTitle: true,
),
body: Padding(
padding: EdgeInsets.all(8.0),
child: GridView.builder(
gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
crossAxisCount: 2,
crossAxisSpacing: 8.0,
mainAxisSpacing: 8.0,
childAspectRatio: 1.0,
),
itemCount: imageLinks.length,
itemBuilder: (context, index) {
return _buildGalleryItem(index);
},
),
),
);
}

Widget _buildGalleryItem(int index) {
return Container(
decoration: BoxDecoration(
borderRadius: BorderRadius.circular(12),
boxShadow: [
BoxShadow(
color: Colors.black26,
blurRadius: 4,
offset: Offset(0, 2),
),
],
),
child: ClipRRect(
borderRadius: BorderRadius.circular(12),
child: Stack(
fit: StackFit.expand,
children: [
Image.network(
imageLinks[index],
fit: BoxFit.cover,
),
// Gradient overlay
Container(
decoration: BoxDecoration(
gradient: LinearGradient(
begin: Alignment.topCenter,
end: Alignment.bottomCenter,
colors: [
Colors.transparent,
Colors.black.withOpacity(0.3),
],
),
),
),
// Image number
Positioned(
bottom: 8,
right: 8,
child: Container(
padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
decoration: BoxDecoration(
color: Colors.white.withOpacity(0.8),
borderRadius: BorderRadius.circular(12),
),
child: Text(
'${index + 1}',
style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black87),
),
),
),
],
),
),
);
}
}