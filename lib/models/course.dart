class Course {
  final String title;
  final String batch;
  final String seats;
  final String days;
  final String imagePath; // <-- from assets

  Course({
    required this.title,
    required this.batch,
    required this.seats,
    required this.days,
    required this.imagePath,
  });
}
