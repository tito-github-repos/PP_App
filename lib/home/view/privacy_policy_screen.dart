import 'package:flutter/material.dart';
import 'package:pp_app/auth/view/legal_doc_screen.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const LegalDocumentScreen(
      title: 'Privacy Policy',
      subtitle: 'Your privacy matters to us.',
      sections: [
        LegalSection(
          heading: '1. Information We Collect',
          description:
              'When you use For-Facts, we may collect your '
              'name, email address, account identifier and '
              'registration information through Google sign-in.',
        ),
        LegalSection(
          heading: '2. Practice Information',
          description:
              'We store information related to your learning '
              'activity, including quiz attempts, selected answers, '
              'correct and incorrect answers, scores, subjects, '
              'topics and completion timestamps.',
        ),
        LegalSection(
          heading: '3. Streak and Progress Information',
          description:
              'We maintain practice activity dates, daily attempt '
              'counts, total active days and reward eligibility '
              'information to calculate learning progress and '
              'Silver Streak rewards.',
        ),
        LegalSection(
          heading: '4. How We Use Your Information',
          description:
              'Your information is used to authenticate your '
              'account, provide learning services, save quiz '
              'results, display practice history, calculate '
              'streaks and manage reward eligibility.',
        ),
        LegalSection(
          heading: '5. Data Storage',
          description:
              'For-Facts uses Firebase services for account '
              'authentication and application data storage. '
              'Google is used as the sign-in provider.',
        ),
        LegalSection(
          heading: '6. Information Security',
          description:
              'We use the available authentication and database '
              'security mechanisms to protect account and '
              'application information. Users should keep their '
              'Google accounts secure.',
        ),
        LegalSection(
          heading: '7. Third-Party Services',
          description:
              'Google authentication and Firebase infrastructure '
              'are used to provide the application services. '
              'Their handling of information is also subject to '
              'their respective privacy policies.',
        ),
        LegalSection(
          heading: '8. Data Requests',
          description:
              'For questions about your personal information, '
              'or to request access, correction or deletion, '
              'please contact the For-Facts support team.',
        ),
        LegalSection(
          heading: '9. Changes to This Policy',
          description:
              'This Privacy Policy may be updated when our '
              'application or data practices change. The latest '
              'version will be available inside the application.',
        ),
      ],
    );
  }
}