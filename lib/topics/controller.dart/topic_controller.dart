import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
class TopicsController extends GetxController {
  final FirebaseFirestore _firestore =
      FirebaseFirestore.instance;

  final RxList<QueryDocumentSnapshot<Map<String, dynamic>>> topics =
      <QueryDocumentSnapshot<Map<String, dynamic>>>[].obs;

  final RxBool isLoading = false.obs;

  late final String subjectId;
  late final String subjectName;

  String? sectionId;
  String? sectionName;

  @override
  void onInit() {
    super.onInit();

    final args = Get.arguments as Map<String, dynamic>;

    subjectId = args['subjectId'] as String;
    subjectName = args['subjectName'] as String;

    sectionId = args['sectionId'] as String?;
    sectionName = args['sectionName'] as String?;

    loadTopics();
  }

  Future<void> loadTopics() async {
    try {
      isLoading.value = true;

      Query<Map<String, dynamic>> query;

      if (sectionId != null && sectionId!.isNotEmpty) {
        // Subject has sections
        query = _firestore
            .collection('subjects')
            .doc(subjectId)
            .collection('sections')
            .doc(sectionId)
            .collection('topics')
            .orderBy('order');
      } else {
        // Subject has NO sections
        // Topics are directly under the subject
        query = _firestore
            .collection('subjects')
            .doc(subjectId)
            .collection('topics')
            .orderBy('order');
      }

      final snapshot = await query.get();

      topics.assignAll(snapshot.docs);
    } catch (e) {
      Get.snackbar(
        'Error',
        'Unable to load topics.',
        snackPosition: SnackPosition.BOTTOM,
      );
    } finally {
      isLoading.value = false;
    }
  }
}