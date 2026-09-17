import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final FirebaseFirestore _firestore =
      FirebaseFirestore.instance;

  final RxList<QueryDocumentSnapshot<Map<String, dynamic>>>
      subjects =
      <QueryDocumentSnapshot<Map<String, dynamic>>>[].obs;

  final RxBool isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    loadSubjects();
  }

  Future<void> loadSubjects() async {
    try {
      isLoading.value = true;

      final snapshot = await _firestore
          .collection('subjects')
          .orderBy('order')
          .get();

      subjects.assignAll(snapshot.docs);
    } catch (e) {
      Get.snackbar(
        'Error',
        'Unable to load subjects.',
        snackPosition: SnackPosition.BOTTOM,
      );
    } finally {
      isLoading.value = false;
    }
  }
}