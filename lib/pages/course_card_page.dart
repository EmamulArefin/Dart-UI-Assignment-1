import 'package:flutter/material.dart';
import 'package:ui_task/models/course.dart';
import 'package:ui_task/widgets/course_card.dart';

class CourseCardsPage extends StatelessWidget {
  final List<Course> courses = [
    Course(
      title: "Full Stack Web Development with JavaScript (MERN)",
      batch: "ব্যাচ ১১",
      seats: "৪ সিট বাকি",
      days: "৬ দিন বাকি",
      imagePath: "assets/mern.jpg",
    ),
    Course(
      title: "Full Stack Web Development with Python, Django & React",
      batch: "ব্যাচ ৯",
      seats: "১৩ সিট বাকি",
      days: "৪০ দিন বাকি",
      imagePath: "assets/python.jpg",
    ),
    Course(
      title: "Full Stack Web Development with ASP.Net Core",
      batch: "ব্যাচ ৭",
      seats: "৭৫ সিট বাকি",
      days: "৩৯ দিন বাকি",
      imagePath: "assets/dot_net.jpg",
    ),
    Course(
      title: "SQA: Manual & Automated Testing",
      batch: "ব্যাচ ১০",
      seats: "৩৫ সিট বাকি",
      days: "৪১ দিন বাকি",
      imagePath: "assets/sqa.jpg",
    ),
  ];

  CourseCardsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 90, left: 10, right: 10),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: 0.6,
          ),
          itemCount: courses.length,
          itemBuilder: (context, index) {
            return CourseCard(course: courses[index]);
          },
        ),
      ),
    );
  }
}
