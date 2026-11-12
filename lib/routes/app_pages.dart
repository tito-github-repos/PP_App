import 'package:get/get.dart';
import 'package:pp_app/attemptHistory/controller/attempt_history_controller.dart';
import 'package:pp_app/attemptHistory/view/attempt_history_view.dart';
import 'package:pp_app/attemptHistory/view/attempt_review_view.dart';
import 'package:pp_app/auth/view/login_screen.dart';
import 'package:pp_app/auth/view/register_screen.dart';
import 'package:pp_app/home/binding/home_binding.dart';
import 'package:pp_app/home/view/home_screen.dart';
import 'package:pp_app/home/view/profile_screen.dart';
import 'package:pp_app/mainDasboard/view/main_dashboard.dart';
import 'package:pp_app/mainsHome/binding/main_home_binding.dart';
import 'package:pp_app/mainsHome/view/main_home_screen.dart';
import 'package:pp_app/mainsQuestion/binding/mains_question_binding.dart';
import 'package:pp_app/mainsQuestion/view/mains_question_view.dart';
import 'package:pp_app/mainsSubTopic/binding/mains_sub_topic_binding.dart';
import 'package:pp_app/mainsSubTopic/view/mains_sub_topic_view.dart';
import 'package:pp_app/mainsSubject/binding/mains_subject_binding.dart';
import 'package:pp_app/mainsSubject/view/mains_subject_screen.dart';
import 'package:pp_app/mainsTopic/binding/mains_topic_binding.dart';
import 'package:pp_app/mainsTopic/view/mains_topic_view.dart';
import 'package:pp_app/sections/binding/section_binding.dart';
import 'package:pp_app/sections/view/section_screen.dart';
import 'package:pp_app/statement/binding/statement_binding.dart';
import 'package:pp_app/statement/view/statement_screen.dart';
import 'package:pp_app/topics/binding/topic_binding.dart';
import 'package:pp_app/topics/view/topic_screen.dart';

import 'app_routes.dart';

class AppPages {
  AppPages._();

  static final pages = <GetPage>[
    GetPage(
      name: AppRoutes.login,
      page: () => const LoginScreen(),
    ),

    GetPage(
      name: AppRoutes.register,
      page: () => const RegisterScreen(),
    ),

    GetPage(
      name: AppRoutes.home,
      page: () => const HomeScreen(),
      binding: HomeBinding(),
    ),
GetPage(
  name: AppRoutes.dashboard,
  page: () => const DashboardScreen(),
),

GetPage(
  name: AppRoutes.sections,
  page: () => const SectionsScreen(),
  binding: SectionsBinding(),


  
),


GetPage(
  name: AppRoutes.topics,
  page: () => const TopicsScreen(),
  binding: TopicsBinding(),
),
GetPage(
  name: AppRoutes.statement,
  page: () => const StatementScreen(),
  binding: StatementBinding(),
),




GetPage(
  name: AppRoutes.mainHome,
  page: () => const MainHomeScreen(),
        binding: MainHomeBinding(),

),

GetPage(
  name: AppRoutes.mainSubjects,
  page: () => const MainSubjectsScreen(),
  binding: MainSubjectsBinding(),
),
GetPage(
  name: AppRoutes.mainTopics,
  page: () => const MainTopicsScreen(),
  binding: MainTopicsBinding(),
),


GetPage(
  name: AppRoutes.mainSubtopics,
  page: () => const MainSubtopicsScreen(),
  binding: MainSubtopicsBinding(),
),
GetPage(
  name: AppRoutes.mainQuestions,
  page: () => const MainQuestionsScreen(),
  binding: MainQuestionsBinding(),
),


GetPage(
  name: AppRoutes.attemptHistory,
  page: () => const AttemptHistoryScreen(),
  binding: BindingsBuilder(() {
    Get.lazyPut<AttemptHistoryController>(
      () => AttemptHistoryController(),
    );
  }),

),

GetPage(
  name: AppRoutes.attemptReview,
  page: () => const AttemptReviewScreen(),
),
GetPage(
  name: AppRoutes.profile,
  page: () => const ProfileScreen(),
),
  ];
}