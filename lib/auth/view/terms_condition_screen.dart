import 'package:flutter/material.dart';
import 'package:pp_app/auth/view/legal_doc_screen.dart';

class TermsAndConditionsScreen extends StatelessWidget {
  const TermsAndConditionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const LegalDocumentScreen(
      title: 'Terms & Conditions',
      subtitle: 'Please read these terms before using For-Facts.',
      sections: [
        LegalSection(
          heading: '1. Acceptance of Terms',
          description:
              'By accessing or using For-Facts, you agree to '
              'these Terms and Conditions. If you do not agree '
              'with these terms, please do not use the application.',
        ),
        LegalSection(
          heading: '2. User Account',
          description:
              'Users can sign in using their Google account. '
              'You are responsible for providing accurate '
              'information and maintaining the security of '
              'your account.',
        ),
        LegalSection(
          heading: '3. Practice and Learning',
          description:
              'For-Facts provides educational practice materials, '
              'including previous year questions and factual '
              'statements, to support GS Prelims preparation. '
              'Users are responsible for their own learning '
              'and preparation.',
        ),
        LegalSection(
          heading: '4. Quiz Attempts and Results',
          description:
              'Quiz answers, scores, practice history and related '
              'activity may be stored to provide progress tracking '
              'and learning features.',
        ),
        LegalSection(
          heading: '5. Streak Rewards',
          description:
              'Users who complete quizzes on seven different '
              'calendar days become eligible for all three '
              'Streak rewards: Free CSAT Online Classes, '
              'Free Prelims One-to-One Consulting and Free '
              'Mains One-to-One Consulting. The seven active '
              'days do not need to be consecutive. Reward '
              'eligibility is determined by recorded activity.',
        ),
        LegalSection(
          heading: '6. Acceptable Use',
          description:
              'Users must not misuse the application, attempt '
              'unauthorised access, manipulate activity records '
              'or interfere with the application services.',
        ),
        LegalSection(
          heading: '7. Changes to These Terms',
          description:
              'We may update these terms when application '
              'features or services change. Updated terms '
              'will be made available within the application.',
        ),
        LegalSection(
          heading: '8. Contact',
          description:
              'For questions about these Terms and Conditions, '
              'please contact the For-Facts support team.',
        ),
      ],
    );
  }
}