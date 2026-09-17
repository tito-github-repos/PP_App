import 'package:cloud_firestore/cloud_firestore.dart';

class MainPracticeQuestion {
  final String id;
  final String question;
  final int year;
  final String questionNumber;
  final int marks;
  final int wordLimit;
  final int order;

  const MainPracticeQuestion({
    required this.id,
    required this.question,
    required this.year,
    required this.questionNumber,
    required this.marks,
    required this.wordLimit,
    required this.order,
  });

  factory MainPracticeQuestion.fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> doc,
  ) {
    final data = doc.data() ?? {};

    return MainPracticeQuestion(
      id: doc.id,
      question: data['question']?.toString() ?? '',
      year: (data['year'] as num?)?.toInt() ?? 0,
      questionNumber:
          data['questionNumber']?.toString() ?? '',
      marks: (data['marks'] as num?)?.toInt() ?? 0,
      wordLimit:
          (data['wordLimit'] as num?)?.toInt() ?? 0,
      order: (data['order'] as num?)?.toInt() ?? 0,
    );
  }
}