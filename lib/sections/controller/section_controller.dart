import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class SectionsController extends GetxController {
  final FirebaseFirestore _firestore =
      FirebaseFirestore.instance;

  late final String subjectId;
  late final String subjectName;

  final RxList<QueryDocumentSnapshot<Map<String, dynamic>>>
      sections =
      <QueryDocumentSnapshot<Map<String, dynamic>>>[].obs;

  final RxBool isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();

    final arguments =
        Get.arguments as Map<String, dynamic>;

    subjectId = arguments['subjectId'] as String;
    subjectName = arguments['subjectName'] as String;

    loadSections();
  }

  Future<void> loadSections() async {
    try {
      isLoading.value = true;

      final snapshot = await _firestore
          .collection('subjects')
          .doc(subjectId)
          .collection('sections')
          .orderBy('order')
          .get();

      sections.assignAll(snapshot.docs);
    } catch (e) {
      Get.snackbar(
        'Error',
        'Unable to load sections.',
        snackPosition: SnackPosition.BOTTOM,
      );
    } finally {
      isLoading.value = false;
    }
  }
}