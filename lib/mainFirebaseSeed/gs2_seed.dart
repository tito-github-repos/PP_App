
import 'package:cloud_firestore/cloud_firestore.dart';

class GS2Seeder {
  static final FirebaseFirestore _firestore =
      FirebaseFirestore.instance;

  // ============================================================
  // SEED GS2
  // Structure:
  // main_practice/gs2
  //   /subjects/{subjectId}
  //     /topics/{topicId}
  //       /questions/{questionId}
  //
  // GS2 has no subtopics in the supplied Excel sheet.
  // ============================================================

  static Future<void> seedGS2() async {
    try {
      print('========================================');
      print('📚 Starting GS2 Seeder');
      print('========================================');

      final mainPracticeRef =
          _firestore.collection('main_practice').doc('gs2');

      // ----------------------------------------------------------
      // GS2 ROOT DOCUMENT
      // ----------------------------------------------------------

      await mainPracticeRef.set({
        'name': 'GS2',
        'order': 2,
        'isActive': true,
      }, SetOptions(merge: true));

      final batch = _firestore.batch();

      final Map<String, int> subjectOrders = {};
      final Map<String, Map<String, int>> topicOrders = {};

      for (final row in data) {
        final subjectName = row['subject'].toString().trim();
        final topicName = row['topic'].toString().trim();

        final subjectId = _createId(subjectName);
        final topicId = _createId(topicName);

        subjectOrders.putIfAbsent(
          subjectId,
          () => subjectOrders.length + 1,
        );

        topicOrders.putIfAbsent(
          subjectId,
          () => <String, int>{},
        );

        topicOrders[subjectId]!.putIfAbsent(
          topicId,
          () => topicOrders[subjectId]!.length + 1,
        );

        // --------------------------------------------------------
        // SUBJECT
        // --------------------------------------------------------

        final subjectRef =
            mainPracticeRef.collection('subjects').doc(subjectId);

        batch.set(
          subjectRef,
          {
            'name': subjectName,
            'order': subjectOrders[subjectId],
            'isActive': true,
            'hasSubtopics': false,
          },
          SetOptions(merge: true),
        );

        // --------------------------------------------------------
        // TOPIC
        // --------------------------------------------------------

        final topicRef =
            subjectRef.collection('topics').doc(topicId);

        batch.set(
          topicRef,
          {
            'name': topicName,
            'order': topicOrders[subjectId]![topicId],
            'isActive': true,
            'hasSubtopics': false,
          },
          SetOptions(merge: true),
        );

        // --------------------------------------------------------
        // QUESTION
        // --------------------------------------------------------

        final questionId = _createId(
          '${row['year']}_${row['questionNumber']}_${row['order']}',
        );

        final questionRef =
            topicRef.collection('questions').doc(questionId);

        batch.set(
          questionRef,
          {
            'question': row['question'],
            'year': row['year'],
            'questionNumber': row['questionNumber'],
            'marks': row['marks'],
            'wordLimit': row['wordLimit'],
            'order': row['order'],
            'isActive': true,
          },
          SetOptions(merge: true),
        );
      }

      await batch.commit();

      print('========================================');
      print('🎉 GS2 Seeder Completed');
      print('Total Questions: ${data.length}');
      print('Subjects: ${subjectOrders.length}');
      print('========================================');
    } catch (e, stackTrace) {
      print('========================================');
      print('❌ GS2 Seeder Failed');
      print('Error: $e');
      print('StackTrace: $stackTrace');
      print('========================================');
    }
  }

  static String _createId(String value) {
    return value
        .toLowerCase()
        .trim()
        .replaceAll(RegExp(r'[^a-z0-9]+'), '_')
        .replaceAll(RegExp(r'^_+|_+$'), '');
  }

  static const List<Map<String, dynamic>> data = [
  {
    "subject": "Constitution & Polity",
    "topic": "Indian Constitution Historical Underpinnings, Evolution, Features, Amendments, Significant Provision and Basic Structure",
    "subtopic": "",
    "question": "Indian Constitution has conferred the amending power on the ordinary legislative institutions with a few procedural hurdles. In view of this statement, examine the procedural and substantive limitations on the amending power of the Parliament to change the Constitution.",
    "year": 2025,
    "questionNumber": "Q12",
    "marks": 15.0,
    "wordLimit": 250,
    "order": 1
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Indian Constitution Historical Underpinnings, Evolution, Features, Amendments, Significant Provision and Basic Structure",
    "subtopic": "",
    "question": "Right to privacy is intrinsic to life and personal liberty and is inherently protected under Article 21 of the constitution. Explain. In this reference discuss the law relating to D.N.A. testing of child in the womb to establish its paternity.",
    "year": 2024,
    "questionNumber": "Q12",
    "marks": 15.0,
    "wordLimit": 250,
    "order": 2
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Indian Constitution Historical Underpinnings, Evolution, Features, Amendments, Significant Provision and Basic Structure",
    "subtopic": "",
    "question": "“The Construction of India is a living instrument with capabilities of enormous dynamism. It is a constitution made for a progressive society”. Illustrate with special reference to the expanding horizons of the right to life and personal liberty.",
    "year": 2023,
    "questionNumber": "Q11",
    "marks": 15.0,
    "wordLimit": 250,
    "order": 3
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Indian Constitution Historical Underpinnings, Evolution, Features, Amendments, Significant Provision and Basic Structure",
    "subtopic": "",
    "question": "Explain the constitutional perspectives of Gender Justice with the help of relevant Constitutional Provisions and case laws.",
    "year": 2023,
    "questionNumber": "Q12",
    "marks": 15.0,
    "wordLimit": 250,
    "order": 4
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Indian Constitution Historical Underpinnings, Evolution, Features, Amendments, Significant Provision and Basic Structure",
    "subtopic": "",
    "question": "“Right of movement and residence throughout the territory of India are freely available to the Indian citizens, but these rights are not absolute.” Comment.",
    "year": 2022,
    "questionNumber": "Q2",
    "marks": 10.0,
    "wordLimit": 150,
    "order": 5
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Indian Constitution Historical Underpinnings, Evolution, Features, Amendments, Significant Provision and Basic Structure",
    "subtopic": "",
    "question": "'Constitutional Morality' is rooted in the Constitution itself and is founded on its essential facets. Explain the doctrine of 'Constitutional Morality' with the help of relevant judicial decisions.",
    "year": 2021,
    "questionNumber": "Q1",
    "marks": 10.0,
    "wordLimit": 150,
    "order": 6
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Indian Constitution Historical Underpinnings, Evolution, Features, Amendments, Significant Provision and Basic Structure",
    "subtopic": "",
    "question": "Indian Constitution exhibits centralising tendencies to maintain unity and integrity of the nation. Elucidate in the perspective of the Epidemic Diseases Act, 1897, the Disaster Management Act, 2005 and recently passed Farm Acts.",
    "year": 2020,
    "questionNumber": "Q11",
    "marks": 15.0,
    "wordLimit": 250,
    "order": 7
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Indian Constitution Historical Underpinnings, Evolution, Features, Amendments, Significant Provision and Basic Structure",
    "subtopic": "",
    "question": "“Parliament’s power to amend the constitution is limited power and it cannot be enlarged into absolute power”. In light of this statement explain whether parliament under article 368 of the constitution can destroy the Basic structure of the constitution by expanding its amending power?",
    "year": 2019,
    "questionNumber": "Q12",
    "marks": 15.0,
    "wordLimit": 250,
    "order": 8
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Indian Constitution Historical Underpinnings, Evolution, Features, Amendments, Significant Provision and Basic Structure",
    "subtopic": "",
    "question": "Examine the scope of Fundamental Rights in the light of the latest judgement of the Supreme Court on Right to Privacy.",
    "year": 2017,
    "questionNumber": "Q12",
    "marks": 15.0,
    "wordLimit": 250,
    "order": 9
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Indian Constitution Historical Underpinnings, Evolution, Features, Amendments, Significant Provision and Basic Structure",
    "subtopic": "",
    "question": "Discuss each adjective attached to the word 'Republic' in the 'Preamble'. Are they defendable in the present circumstances?",
    "year": 2016,
    "questionNumber": "Q5",
    "marks": 12.5,
    "wordLimit": 200,
    "order": 10
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Indian Constitution Historical Underpinnings, Evolution, Features, Amendments, Significant Provision and Basic Structure",
    "subtopic": "",
    "question": "What was held in the Coelho case? In this context, can you say that judicial review is of key importance amongst the basic features of the Constitution?",
    "year": 2016,
    "questionNumber": "Q6",
    "marks": 12.5,
    "wordLimit": 200,
    "order": 11
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Indian Constitution Historical Underpinnings, Evolution, Features, Amendments, Significant Provision and Basic Structure",
    "subtopic": "",
    "question": "Did the Government of India Act, 1935 lay down a federal constitution? Discuss.",
    "year": 2016,
    "questionNumber": "Q7",
    "marks": 12.5,
    "wordLimit": 200,
    "order": 12
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Indian Constitution Historical Underpinnings, Evolution, Features, Amendments, Significant Provision and Basic Structure",
    "subtopic": "",
    "question": "Discuss the possible factors that inhibit India from enacting for its citizen a uniform civil code as provided for in the Directive Principles of State Policy.",
    "year": 2015,
    "questionNumber": "Q1",
    "marks": 12.5,
    "wordLimit": 200,
    "order": 13
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Indian Constitution Historical Underpinnings, Evolution, Features, Amendments, Significant Provision and Basic Structure",
    "subtopic": "",
    "question": "What do understand by the concept “freedom of speech and expression”? Does it cover hate speech also? Why do the films in India stand on a slightly different plane from other forms of expression? Discuss.",
    "year": 2014,
    "questionNumber": "Q4",
    "marks": 12.5,
    "wordLimit": 200,
    "order": 14
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Indian Constitution Historical Underpinnings, Evolution, Features, Amendments, Significant Provision and Basic Structure",
    "subtopic": "",
    "question": "Discuss Section 66A of IT Act, with reference to its alleged violation of Article 19 of the Constitution.",
    "year": 2013,
    "questionNumber": "Q2",
    "marks": 10.0,
    "wordLimit": 200,
    "order": 15
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Functions and Responsibilities of the Union and the States, Issues and Challenges Pertaining to the Federal Structure, Devolution of Powers and Finances up to Local Levels and Challenges Therein",
    "subtopic": "",
    "question": "Examine the evolving pattern of Centre-State financial relations in the context of planned development in India. How far have the recent reforms impacted the fiscal federalism in India?",
    "year": 2025,
    "questionNumber": "Q14",
    "marks": 15.0,
    "wordLimit": 250,
    "order": 1
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Functions and Responsibilities of the Union and the States, Issues and Challenges Pertaining to the Federal Structure, Devolution of Powers and Finances up to Local Levels and Challenges Therein",
    "subtopic": "",
    "question": "Analyse the role of local bodies in providing good governance at local level and bring out the pros and cons merging the rural local bodies with the urban local bodies.",
    "year": 2024,
    "questionNumber": "Q5",
    "marks": 10.0,
    "wordLimit": 150,
    "order": 2
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Functions and Responsibilities of the Union and the States, Issues and Challenges Pertaining to the Federal Structure, Devolution of Powers and Finances up to Local Levels and Challenges Therein",
    "subtopic": "",
    "question": "What changes has the Union Government recently introduced in the domain of Centre-State relations? Suggest measures to be adopted to build the trust between the Centre and the States and for strengthening federalism.",
    "year": 2024,
    "questionNumber": "Q13",
    "marks": 15.0,
    "wordLimit": 250,
    "order": 3
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Functions and Responsibilities of the Union and the States, Issues and Challenges Pertaining to the Federal Structure, Devolution of Powers and Finances up to Local Levels and Challenges Therein",
    "subtopic": "",
    "question": "“The states in India seem reluctant to empower urban local bodies both functionally as well as financially.” Comment.",
    "year": 2023,
    "questionNumber": "Q3",
    "marks": 10.0,
    "wordLimit": 150,
    "order": 4
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Functions and Responsibilities of the Union and the States, Issues and Challenges Pertaining to the Federal Structure, Devolution of Powers and Finances up to Local Levels and Challenges Therein",
    "subtopic": "",
    "question": "Account for the legal and political factors responsible for the reduced frequency of using Article 356 by the Union Governments since mid-1990s.",
    "year": 2023,
    "questionNumber": "Q13",
    "marks": 15.0,
    "wordLimit": 250,
    "order": 5
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Functions and Responsibilities of the Union and the States, Issues and Challenges Pertaining to the Federal Structure, Devolution of Powers and Finances up to Local Levels and Challenges Therein",
    "subtopic": "",
    "question": "Explain the significance of the 101st Constitutional Amendment Act. To what extent does it reflect the accommodative spirit of federalism?",
    "year": 2023,
    "questionNumber": "Q15",
    "marks": 15.0,
    "wordLimit": 250,
    "order": 6
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Functions and Responsibilities of the Union and the States, Issues and Challenges Pertaining to the Federal Structure, Devolution of Powers and Finances up to Local Levels and Challenges Therein",
    "subtopic": "",
    "question": "To what extent, in your opinion, has the decentralisation of power in India changed the governance landscape at the grassroots?",
    "year": 2022,
    "questionNumber": "Q3",
    "marks": 10.0,
    "wordLimit": 150,
    "order": 7
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Functions and Responsibilities of the Union and the States, Issues and Challenges Pertaining to the Federal Structure, Devolution of Powers and Finances up to Local Levels and Challenges Therein",
    "subtopic": "",
    "question": "“While the national political parties in India favour centralisation, the regional parties are in favour of State autonomy.” Comment.",
    "year": 2022,
    "questionNumber": "Q13",
    "marks": 15.0,
    "wordLimit": 250,
    "order": 8
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Functions and Responsibilities of the Union and the States, Issues and Challenges Pertaining to the Federal Structure, Devolution of Powers and Finances up to Local Levels and Challenges Therein",
    "subtopic": "",
    "question": "How have the recommendations of the 14th Finance Commission of India enabled the states to improve their fiscal position?",
    "year": 2021,
    "questionNumber": "Q3",
    "marks": 10.0,
    "wordLimit": 150,
    "order": 9
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Functions and Responsibilities of the Union and the States, Issues and Challenges Pertaining to the Federal Structure, Devolution of Powers and Finances up to Local Levels and Challenges Therein",
    "subtopic": "",
    "question": "The jurisdiction of the Central Bureau of Investigation (CBI) regarding lodging an FIR and conducting probe within a particular state is being questioned by various States. However, the power of States to withhold consent to the CBI is not absolute. Explain with special reference to the federal character of India.",
    "year": 2021,
    "questionNumber": "Q11",
    "marks": 15.0,
    "wordLimit": 250,
    "order": 10
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Functions and Responsibilities of the Union and the States, Issues and Challenges Pertaining to the Federal Structure, Devolution of Powers and Finances up to Local Levels and Challenges Therein",
    "subtopic": "",
    "question": "How far do you think cooperation, competition and confrontation have shaped the nature of federation in India? Cite some recent examples to validate your answer.",
    "year": 2020,
    "questionNumber": "Q3",
    "marks": 10.0,
    "wordLimit": 150,
    "order": 11
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Functions and Responsibilities of the Union and the States, Issues and Challenges Pertaining to the Federal Structure, Devolution of Powers and Finances up to Local Levels and Challenges Therein",
    "subtopic": "",
    "question": "The strength and sustenance of local institutions in India has shifted from their formative phase of 'Functions, Functionaries and Funds' to the contemporary stage of 'Functionality'. Highlight the critical challenges faced by local institutions in terms of their functionality in recent times.",
    "year": 2020,
    "questionNumber": "Q13",
    "marks": 15.0,
    "wordLimit": 250,
    "order": 12
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Functions and Responsibilities of the Union and the States, Issues and Challenges Pertaining to the Federal Structure, Devolution of Powers and Finances up to Local Levels and Challenges Therein",
    "subtopic": "",
    "question": "“The reservation of seats for women in the institution of local self-government has had a limited impact on the patriarchal character of the Indian political process”. Comment.",
    "year": 2019,
    "questionNumber": "Q13",
    "marks": 15.0,
    "wordLimit": 250,
    "order": 13
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Functions and Responsibilities of the Union and the States, Issues and Challenges Pertaining to the Federal Structure, Devolution of Powers and Finances up to Local Levels and Challenges Therein",
    "subtopic": "",
    "question": "Assess the importance of the Panchayat system in India as a part of local government. Apart from government grants, what sources the Panchayats can look out for financing developmental projects?",
    "year": 2018,
    "questionNumber": "Q15",
    "marks": 15.0,
    "wordLimit": 250,
    "order": 14
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Functions and Responsibilities of the Union and the States, Issues and Challenges Pertaining to the Federal Structure, Devolution of Powers and Finances up to Local Levels and Challenges Therein",
    "subtopic": "",
    "question": "“The local self-government system in India has not proved to be an effective instrument of governance”. Critically examine the statement and give your views to improve the situation.",
    "year": 2017,
    "questionNumber": "Q1",
    "marks": 10.0,
    "wordLimit": 150,
    "order": 15
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Functions and Responsibilities of the Union and the States, Issues and Challenges Pertaining to the Federal Structure, Devolution of Powers and Finances up to Local Levels and Challenges Therein",
    "subtopic": "",
    "question": "To what extent is Article 370 of the Indian Constitution, bearing marginal note “temporary provision with respect to the State of Jammu and Kashmir”, temporary? Discuss the future prospects of this provision in the context of Indian polity.",
    "year": 2016,
    "questionNumber": "Q2",
    "marks": 12.5,
    "wordLimit": 200,
    "order": 16
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Functions and Responsibilities of the Union and the States, Issues and Challenges Pertaining to the Federal Structure, Devolution of Powers and Finances up to Local Levels and Challenges Therein",
    "subtopic": "",
    "question": "The concept of cooperative federalism has been increasingly emphasised in recent years. Highlight the drawbacks in the existing structure and extent to which cooperative federalism would answer the shortcomings.",
    "year": 2015,
    "questionNumber": "Q2",
    "marks": 12.5,
    "wordLimit": 200,
    "order": 17
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Functions and Responsibilities of the Union and the States, Issues and Challenges Pertaining to the Federal Structure, Devolution of Powers and Finances up to Local Levels and Challenges Therein",
    "subtopic": "",
    "question": "In the absence of well-educated and organised local level government system, Panchayats and Samitis have remained mainly political institutions and not effective instrument of governance. Critically Discuss.",
    "year": 2015,
    "questionNumber": "Q3",
    "marks": 12.5,
    "wordLimit": 200,
    "order": 18
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Functions and Responsibilities of the Union and the States, Issues and Challenges Pertaining to the Federal Structure, Devolution of Powers and Finances up to Local Levels and Challenges Therein",
    "subtopic": "",
    "question": "Though the federal principle is dominant in our Constitution and that principle is one of its basic features, but it is equally true that federalism under the Indian Constitution leans in favour of a strong Centre, a feature that militates against the concept of strong federalism.",
    "year": 2014,
    "questionNumber": "Q2",
    "marks": 12.5,
    "wordLimit": 200,
    "order": 19
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Functions and Responsibilities of the Union and the States, Issues and Challenges Pertaining to the Federal Structure, Devolution of Powers and Finances up to Local Levels and Challenges Therein",
    "subtopic": "",
    "question": "Recent directives from Ministry of Petroleum and Natural Gas are perceived by the 'Nagas' as a threat to override the exceptional status enjoyed by the State. Discuss in light of Article 371A of the Indian Constitution.",
    "year": 2013,
    "questionNumber": "Q3",
    "marks": 10.0,
    "wordLimit": 200,
    "order": 20
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Functions and Responsibilities of the Union and the States, Issues and Challenges Pertaining to the Federal Structure, Devolution of Powers and Finances up to Local Levels and Challenges Therein",
    "subtopic": "",
    "question": "Many State Governments further bifurcate geographical administrative areas like Districts and Talukas for better governance. In light of the above, can it also be justified that more number of smaller States would bring in effective governance at State level? Discuss.",
    "year": 2013,
    "questionNumber": "Q5",
    "marks": 10.0,
    "wordLimit": 200,
    "order": 21
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Functions and Responsibilities of the Union and the States, Issues and Challenges Pertaining to the Federal Structure, Devolution of Powers and Finances up to Local Levels and Challenges Therein",
    "subtopic": "",
    "question": "Constitutional mechanisms to resolve the inter-state water disputes have failed to address and solve the problems. Is the failure due to structural or process inadequacy or both? Discuss.",
    "year": 2013,
    "questionNumber": "Q6",
    "marks": 10.0,
    "wordLimit": 200,
    "order": 22
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Functions and Responsibilities of the Union and the States, Issues and Challenges Pertaining to the Federal Structure, Devolution of Powers and Finances up to Local Levels and Challenges Therein",
    "subtopic": "",
    "question": "Discuss the recommendations of the 13th Finance Commission which have been a departure from the previous commissions for strengthening the local government finances.",
    "year": 2013,
    "questionNumber": "Q7",
    "marks": 10.0,
    "wordLimit": 200,
    "order": 23
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Separation of Powers Between Various Organs, Dispute Redressal Mechanisms and Institutions",
    "subtopic": "",
    "question": "“The growth of cabinet system has practically resulted in the marginalisation of the parliamentary supremacy:” Elucidate.",
    "year": 2024,
    "questionNumber": "Q3",
    "marks": 10.0,
    "wordLimit": 150,
    "order": 1
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Separation of Powers Between Various Organs, Dispute Redressal Mechanisms and Institutions",
    "subtopic": "",
    "question": "“Constitutionally guaranteed judicial independence is a prerequisite of democracy”. Comment.",
    "year": 2023,
    "questionNumber": "Q1",
    "marks": 10.0,
    "wordLimit": 150,
    "order": 2
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Separation of Powers Between Various Organs, Dispute Redressal Mechanisms and Institutions",
    "subtopic": "",
    "question": "To what extent, in your view, the Parliament is able to ensure accountability of the executive in India?",
    "year": 2021,
    "questionNumber": "Q4",
    "marks": 10.0,
    "wordLimit": 150,
    "order": 3
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Separation of Powers Between Various Organs, Dispute Redressal Mechanisms and Institutions",
    "subtopic": "",
    "question": "Judicial Legislation is antithetical to the doctrine of separation of powers as envisaged in the Indian Constitution. In this context justify the filing of large number of public interest petitions praying for issuing guidelines to executive authorities.",
    "year": 2020,
    "questionNumber": "Q12",
    "marks": 15.0,
    "wordLimit": 250,
    "order": 4
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Separation of Powers Between Various Organs, Dispute Redressal Mechanisms and Institutions",
    "subtopic": "",
    "question": "Do you think the Constitution of India does not accept the principle of strict separation of powers rather it is based on the principle of 'checks and balance'? Explain.",
    "year": 2019,
    "questionNumber": "Q1",
    "marks": 10.0,
    "wordLimit": 150,
    "order": 5
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Separation of Powers Between Various Organs, Dispute Redressal Mechanisms and Institutions",
    "subtopic": "",
    "question": "Resorting to ordinances has always raised concern on violation of the spirit of separation of power doctrine. While noting the rationales justifying the power to promulgate, analyse whether the decision of the Supreme Court on the issue have further facilitated to resorting to this power. Should the power to promulgate the ordinances be repealed?",
    "year": 2015,
    "questionNumber": "Q5",
    "marks": 12.5,
    "wordLimit": 200,
    "order": 6
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Separation of Powers Between Various Organs, Dispute Redressal Mechanisms and Institutions",
    "subtopic": "",
    "question": "What are the major changes brought in the Arbitration and Conciliation Act, 1966 through the recent ordinance promulgated by the President? How far will it improve India's dispute resolution mechanism? Discuss.",
    "year": 2015,
    "questionNumber": "Q6",
    "marks": 12.5,
    "wordLimit": 200,
    "order": 7
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Separation of Powers Between Various Organs, Dispute Redressal Mechanisms and Institutions",
    "subtopic": "",
    "question": "Starting from inventing the 'basic structure' doctrine, the judiciary has played a highly proactive role in ensuring that India develops into a thriving democracy. In light of the statement, evaluate the role played by judicial activism in achieving the ideals of democracy.",
    "year": 2014,
    "questionNumber": "Q1",
    "marks": 12.5,
    "wordLimit": 200,
    "order": 8
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Separation of Powers Between Various Organs, Dispute Redressal Mechanisms and Institutions",
    "subtopic": "",
    "question": "The Supreme Court of India keeps a check on arbitrary power of the Parliament in amending the Constitution. Discuss critically.",
    "year": 2013,
    "questionNumber": "Q4",
    "marks": 10.0,
    "wordLimit": 200,
    "order": 9
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Comparison of the Indian Constitutional Scheme with that of Other Countries",
    "subtopic": "",
    "question": "Compare and contrast the President's power to pardon in India and in the USA. Are there any limits to it in both the countries? What are 'preemptive pardons'?",
    "year": 2025,
    "questionNumber": "Q3",
    "marks": 10.0,
    "wordLimit": 150,
    "order": 1
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Comparison of the Indian Constitutional Scheme with that of Other Countries",
    "subtopic": "",
    "question": "Discuss India as a secular state and compare with the secular principles of the US constitution.",
    "year": 2024,
    "questionNumber": "Q15",
    "marks": 15.0,
    "wordLimit": 250,
    "order": 2
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Comparison of the Indian Constitutional Scheme with that of Other Countries",
    "subtopic": "",
    "question": "Compare and contrast the British and Indian approaches to Parliamentary sovereignty.",
    "year": 2023,
    "questionNumber": "Q4",
    "marks": 10.0,
    "wordLimit": 150,
    "order": 3
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Comparison of the Indian Constitutional Scheme with that of Other Countries",
    "subtopic": "",
    "question": "Critically examine the procedures through which the Presidents of India and France are elected.",
    "year": 2022,
    "questionNumber": "Q14",
    "marks": 15.0,
    "wordLimit": 250,
    "order": 4
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Comparison of the Indian Constitutional Scheme with that of Other Countries",
    "subtopic": "",
    "question": "Analyze the distinguishing features of the notion of Equality in the Constitutions of the USA and India.",
    "year": 2021,
    "questionNumber": "Q13",
    "marks": 15.0,
    "wordLimit": 250,
    "order": 5
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Comparison of the Indian Constitutional Scheme with that of Other Countries",
    "subtopic": "",
    "question": "The judicial systems in India and UK seem to be converging as well as diverging in recent times. Highlight the key points of convergence and divergence between the two nations in terms of their judicial practices.",
    "year": 2020,
    "questionNumber": "Q4",
    "marks": 10.0,
    "wordLimit": 150,
    "order": 6
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Comparison of the Indian Constitutional Scheme with that of Other Countries",
    "subtopic": "",
    "question": "What can France learn from the Indian Constitution's approach to secularism?",
    "year": 2019,
    "questionNumber": "Q5",
    "marks": 10.0,
    "wordLimit": 150,
    "order": 7
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Comparison of the Indian Constitutional Scheme with that of Other Countries",
    "subtopic": "",
    "question": "Indian and USA are two large democracies. Examine the basic tenets on which the two political systems are based.",
    "year": 2018,
    "questionNumber": "Q13",
    "marks": 15.0,
    "wordLimit": 250,
    "order": 8
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Parliament and State Legislatures — Structure, Functioning, Conduct of Business, Powers and Privileges and Issues Arising out of These",
    "subtopic": "",
    "question": "Discuss the nature of Jammu and Kashmir Legislative Assembly after the Jammu and Kashmir Reorganization Act, 2019. Briefly describe the powers and functions of the Assembly of the Union Territory of Jammu and Kashmir.",
    "year": 2025,
    "questionNumber": "Q4",
    "marks": 10.0,
    "wordLimit": 150,
    "order": 1
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Parliament and State Legislatures — Structure, Functioning, Conduct of Business, Powers and Privileges and Issues Arising out of These",
    "subtopic": "",
    "question": "Discuss the role of Presiding Officers of state legislatures in maintaining order and impartiality in conducting legislative work and in facilitating best democratic practices.",
    "year": 2023,
    "questionNumber": "Q5",
    "marks": 10.0,
    "wordLimit": 150,
    "order": 2
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Parliament and State Legislatures — Structure, Functioning, Conduct of Business, Powers and Privileges and Issues Arising out of These",
    "subtopic": "",
    "question": "Discuss the contribution of civil society groups for women's effective and meaningful participation and representation in state legislatures in India.",
    "year": 2023,
    "questionNumber": "Q14",
    "marks": 15.0,
    "wordLimit": 250,
    "order": 3
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Parliament and State Legislatures — Structure, Functioning, Conduct of Business, Powers and Privileges and Issues Arising out of These",
    "subtopic": "",
    "question": "Explain the structure of the Parliamentary Committee system. How far have the financial committees helped in the institutionalization of Indian Parliament?",
    "year": 2023,
    "questionNumber": "Q16",
    "marks": 15.0,
    "wordLimit": 250,
    "order": 4
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Parliament and State Legislatures — Structure, Functioning, Conduct of Business, Powers and Privileges and Issues Arising out of These",
    "subtopic": "",
    "question": "Discuss the role of the Vice-President of India as the Chairman of the Rajya Sabha.",
    "year": 2022,
    "questionNumber": "Q4",
    "marks": 10.0,
    "wordLimit": 150,
    "order": 5
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Parliament and State Legislatures — Structure, Functioning, Conduct of Business, Powers and Privileges and Issues Arising out of These",
    "subtopic": "",
    "question": "Explain the constitutional provisions under which Legislative Councils are established. Review the working and current status of Legislative Councils with suitable illustrations.",
    "year": 2021,
    "questionNumber": "Q14",
    "marks": 15.0,
    "wordLimit": 250,
    "order": 6
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Parliament and State Legislatures — Structure, Functioning, Conduct of Business, Powers and Privileges and Issues Arising out of These",
    "subtopic": "",
    "question": "Do Department-related Parliamentary Standing Committees keep the administration on its toes and inspire reverence for parliamentary control? Evaluate the working of such committees with suitable examples.",
    "year": 2021,
    "questionNumber": "Q15",
    "marks": 15.0,
    "wordLimit": 250,
    "order": 7
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Parliament and State Legislatures — Structure, Functioning, Conduct of Business, Powers and Privileges and Issues Arising out of These",
    "subtopic": "",
    "question": "'Once a Speaker, Always a Speaker!' Do you think this practice should be adopted to impart objectivity to the office of the Speaker of Lok Sabha? What could be its implications for the robust functioning of parliamentary business in India?",
    "year": 2020,
    "questionNumber": "Q5",
    "marks": 10.0,
    "wordLimit": 150,
    "order": 8
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Parliament and State Legislatures — Structure, Functioning, Conduct of Business, Powers and Privileges and Issues Arising out of These",
    "subtopic": "",
    "question": "Rajya Sabha has been transformed from a 'useless stepney tyre' to the most useful supporting organ in past few decades. Highlight the factors as well as the areas in which this transformation could be visible.",
    "year": 2020,
    "questionNumber": "Q14",
    "marks": 15.0,
    "wordLimit": 250,
    "order": 9
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Parliament and State Legislatures — Structure, Functioning, Conduct of Business, Powers and Privileges and Issues Arising out of These",
    "subtopic": "",
    "question": "Individual parliamentarian's role as the national lawmaker is on a decline, which in turn, has adversely impacted the quality of debates and their outcome. Discuss.",
    "year": 2019,
    "questionNumber": "Q15",
    "marks": 15.0,
    "wordLimit": 250,
    "order": 10
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Parliament and State Legislatures — Structure, Functioning, Conduct of Business, Powers and Privileges and Issues Arising out of These",
    "subtopic": "",
    "question": "Why do you think the committees are considered to be useful for parliamentary work? Discuss, in this context, the role of the Estimates Committee.",
    "year": 2018,
    "questionNumber": "Q4",
    "marks": 10.0,
    "wordLimit": 150,
    "order": 11
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Parliament and State Legislatures — Structure, Functioning, Conduct of Business, Powers and Privileges and Issues Arising out of These",
    "subtopic": "",
    "question": "Discuss the role of Public Accounts Committee in establishing accountability of the government to the people.",
    "year": 2017,
    "questionNumber": "Q5",
    "marks": 10.0,
    "wordLimit": 150,
    "order": 12
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Parliament and State Legislatures — Structure, Functioning, Conduct of Business, Powers and Privileges and Issues Arising out of These",
    "subtopic": "",
    "question": "The Indian Constitution has provisions for holding a joint session of the two houses of the Parliament. Enumerate the occasions when this would normally happen and also the occasions when it cannot, with reasons thereof.",
    "year": 2017,
    "questionNumber": "Q13",
    "marks": 15.0,
    "wordLimit": 250,
    "order": 13
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Parliament and State Legislatures — Structure, Functioning, Conduct of Business, Powers and Privileges and Issues Arising out of These",
    "subtopic": "",
    "question": "The 'Powers, Privileges and Immunities of Parliament and its Members' as envisaged in Article 105 of the Constitution leave room for a large number of un-codified and un-enumerated privileges to continue. Assess the reasons for the absence of legal codification of the 'parliamentary privileges'. How can this problem be addressed?",
    "year": 2014,
    "questionNumber": "Q3",
    "marks": 12.5,
    "wordLimit": 200,
    "order": 14
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Structure, Organization and Functioning of the Executive and Judiciary — Ministries and Departments of the Government, Pressure Groups and Formal/Informal Associations and their Role in the Polity",
    "subtopic": "",
    "question": "Civil Society Organizations are often perceived as being anti-State actors than non-State actors. Do you agree? Justify.",
    "year": 2025,
    "questionNumber": "Q8",
    "marks": 10.0,
    "wordLimit": 150,
    "order": 1
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Structure, Organization and Functioning of the Executive and Judiciary — Ministries and Departments of the Government, Pressure Groups and Formal/Informal Associations and their Role in the Polity",
    "subtopic": "",
    "question": "“Constitutional morality is the fulcrum which acts as an essential check upon the high functionaries and citizens alike... .” In view of the above observation of the Supreme Court, explain the concept of constitutional morality and its application to ensure balance between judicial independence and judicial accountability in India.",
    "year": 2025,
    "questionNumber": "Q11",
    "marks": 15.0,
    "wordLimit": 250,
    "order": 2
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Structure, Organization and Functioning of the Executive and Judiciary — Ministries and Departments of the Government, Pressure Groups and Formal/Informal Associations and their Role in the Polity",
    "subtopic": "",
    "question": "Discuss the evolution of collegium system in India. Critically examine the advantages and disadvantages of the system of appointment of the Judges of the Supreme Court of India and that of the USA.",
    "year": 2025,
    "questionNumber": "Q13",
    "marks": 15.0,
    "wordLimit": 250,
    "order": 3
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Structure, Organization and Functioning of the Executive and Judiciary — Ministries and Departments of the Government, Pressure Groups and Formal/Informal Associations and their Role in the Polity",
    "subtopic": "",
    "question": "What are environmental pressure groups? Discuss their role in raising awareness, influencing policies and advocating for environmental protection in India.",
    "year": 2025,
    "questionNumber": "Q15",
    "marks": 15.0,
    "wordLimit": 250,
    "order": 4
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Structure, Organization and Functioning of the Executive and Judiciary — Ministries and Departments of the Government, Pressure Groups and Formal/Informal Associations and their Role in the Polity",
    "subtopic": "",
    "question": "Explain and distinguish between Lok Adalats and Arbitration Tribunals. Whether they entertain civil as well as criminal cases?",
    "year": 2024,
    "questionNumber": "Q2",
    "marks": 10.0,
    "wordLimit": 150,
    "order": 5
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Structure, Organization and Functioning of the Executive and Judiciary — Ministries and Departments of the Government, Pressure Groups and Formal/Informal Associations and their Role in the Polity",
    "subtopic": "",
    "question": "Explain the reasons for the growth of public interest litigation in India. As a result of it, has the Indian Supreme Court emerged as the world's most powerful judiciary?",
    "year": 2024,
    "questionNumber": "Q14",
    "marks": 15.0,
    "wordLimit": 250,
    "order": 6
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Structure, Organization and Functioning of the Executive and Judiciary — Ministries and Departments of the Government, Pressure Groups and Formal/Informal Associations and their Role in the Polity",
    "subtopic": "",
    "question": "“The most significant achievement of modern law in India is the constitutionalization of environment problems by the Supreme Court.” Discuss this statement with the help of relevant case laws.",
    "year": 2022,
    "questionNumber": "Q1",
    "marks": 10.0,
    "wordLimit": 150,
    "order": 7
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Structure, Organization and Functioning of the Executive and Judiciary — Ministries and Departments of the Government, Pressure Groups and Formal/Informal Associations and their Role in the Polity",
    "subtopic": "",
    "question": "Discuss the essential conditions for exercise of the legislative powers by the Governor. Discuss the legality of re-promulgation of ordinances by the Governor without placing them before the Legislature.",
    "year": 2022,
    "questionNumber": "Q12",
    "marks": 15.0,
    "wordLimit": 250,
    "order": 8
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Structure, Organization and Functioning of the Executive and Judiciary — Ministries and Departments of the Government, Pressure Groups and Formal/Informal Associations and their Role in the Polity",
    "subtopic": "",
    "question": "Discuss the desirability of greater representation to women in the higher judiciary to ensure diversity, equity and inclusiveness.",
    "year": 2021,
    "questionNumber": "Q2",
    "marks": 10.0,
    "wordLimit": 150,
    "order": 9
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Structure, Organization and Functioning of the Executive and Judiciary — Ministries and Departments of the Government, Pressure Groups and Formal/Informal Associations and their Role in the Polity",
    "subtopic": "",
    "question": "“Pressure groups play a vital role in influencing public policy making in India.” Explain how the business associations contribute to public policies.",
    "year": 2021,
    "questionNumber": "Q5",
    "marks": 10.0,
    "wordLimit": 150,
    "order": 10
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Structure, Organization and Functioning of the Executive and Judiciary — Ministries and Departments of the Government, Pressure Groups and Formal/Informal Associations and their Role in the Polity",
    "subtopic": "",
    "question": "What are the methods used by the farmer's organizations to influence the policy-makers in India and how effective are these methods?",
    "year": 2019,
    "questionNumber": "Q3",
    "marks": 10.0,
    "wordLimit": 150,
    "order": 11
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Structure, Organization and Functioning of the Executive and Judiciary — Ministries and Departments of the Government, Pressure Groups and Formal/Informal Associations and their Role in the Polity",
    "subtopic": "",
    "question": "From the resolution of contentious issues regarding distribution of legislative powers by the courts, 'Principle of Federal Supremacy' and 'Harmonious Construction' have emerged. Explain.",
    "year": 2019,
    "questionNumber": "Q4",
    "marks": 10.0,
    "wordLimit": 150,
    "order": 12
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Structure, Organization and Functioning of the Executive and Judiciary — Ministries and Departments of the Government, Pressure Groups and Formal/Informal Associations and their Role in the Polity",
    "subtopic": "",
    "question": "Under what circumstances can the Financial Emergency be proclaimed by the President of India? What consequences follow when such a declaration remains in force?",
    "year": 2018,
    "questionNumber": "Q3",
    "marks": 10.0,
    "wordLimit": 150,
    "order": 13
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Structure, Organization and Functioning of the Executive and Judiciary — Ministries and Departments of the Government, Pressure Groups and Formal/Informal Associations and their Role in the Polity",
    "subtopic": "",
    "question": "Whether the Supreme Court Judgement (July 2018) can settle the political tussle between the Lt. Governor and elected government of Delhi? Examine.",
    "year": 2018,
    "questionNumber": "Q11",
    "marks": 15.0,
    "wordLimit": 250,
    "order": 14
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Structure, Organization and Functioning of the Executive and Judiciary — Ministries and Departments of the Government, Pressure Groups and Formal/Informal Associations and their Role in the Polity",
    "subtopic": "",
    "question": "Critically examine the Supreme Court's judgement on 'National Judicial Appointments Commission Act, 2014' with reference to the appointment of judges of higher judiciary in India.",
    "year": 2017,
    "questionNumber": "Q2",
    "marks": 10.0,
    "wordLimit": 150,
    "order": 15
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Structure, Organization and Functioning of the Executive and Judiciary — Ministries and Departments of the Government, Pressure Groups and Formal/Informal Associations and their Role in the Polity",
    "subtopic": "",
    "question": "How do pressure groups influence Indian political process? Do you agree with this view that informal pressure groups have emerged as powerful than formal pressure groups in recent years?",
    "year": 2017,
    "questionNumber": "Q4",
    "marks": 10.0,
    "wordLimit": 150,
    "order": 16
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Structure, Organization and Functioning of the Executive and Judiciary — Ministries and Departments of the Government, Pressure Groups and Formal/Informal Associations and their Role in the Polity",
    "subtopic": "",
    "question": "Discuss the essentials of the 69th Constitutional Amendment Act and anomalies, if any, that have led to recent reported conflicts between the elected representatives and the institution of the Lieutenant Governor in the administration of Delhi. Do you think that this will give rise to a new trend in the functioning of the Indian federal politics?",
    "year": 2016,
    "questionNumber": "Q1",
    "marks": 12.5,
    "wordLimit": 200,
    "order": 17
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Structure, Organization and Functioning of the Executive and Judiciary — Ministries and Departments of the Government, Pressure Groups and Formal/Informal Associations and their Role in the Polity",
    "subtopic": "",
    "question": "“In the Indian governance system, the role of non-state actors has been only marginal.” Critically examine this statement.",
    "year": 2016,
    "questionNumber": "Q10",
    "marks": 12.5,
    "wordLimit": 200,
    "order": 18
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Structure, Organization and Functioning of the Executive and Judiciary — Ministries and Departments of the Government, Pressure Groups and Formal/Informal Associations and their Role in the Polity",
    "subtopic": "",
    "question": "Does the right to clean environment entail legal regulation on burning crackers during Diwali? Discuss in the light of Article 21 of Indian Constitution and judgements of the apex in this regard.",
    "year": 2015,
    "questionNumber": "Q7",
    "marks": 12.5,
    "wordLimit": 200,
    "order": 19
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Structure, Organization and Functioning of the Executive and Judiciary — Ministries and Departments of the Government, Pressure Groups and Formal/Informal Associations and their Role in the Polity",
    "subtopic": "",
    "question": "Instances of President's delay in commuting death sentences has come under public debate as denial of justice. Should there be a time specified for the President to accept/reject such petitions? Analyse.",
    "year": 2014,
    "questionNumber": "Q5",
    "marks": 12.5,
    "wordLimit": 200,
    "order": 20
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Structure, Organization and Functioning of the Executive and Judiciary — Ministries and Departments of the Government, Pressure Groups and Formal/Informal Associations and their Role in the Polity",
    "subtopic": "",
    "question": "The size of the cabinet should be as big as governmental work justifies and as big as the Prime Minister can manage as a team. How far is the efficacy of a government then inversely related to the size of the cabinet? Discuss.",
    "year": 2014,
    "questionNumber": "Q6",
    "marks": 12.5,
    "wordLimit": 200,
    "order": 21
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Structure, Organization and Functioning of the Executive and Judiciary — Ministries and Departments of the Government, Pressure Groups and Formal/Informal Associations and their Role in the Polity",
    "subtopic": "",
    "question": "Pressure group politics is sometimes seen as the informal face of politics. With regards to the above, assess the structure and functioning of pressure groups in India.",
    "year": 2013,
    "questionNumber": "Q10",
    "marks": 10.0,
    "wordLimit": 200,
    "order": 22
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Salient Features of the Representation of People's Act",
    "subtopic": "",
    "question": "Discuss the 'corrupt practices' for the purpose of the Representation of the People Act, 1951. Analyze whether the increase in the assets of the legislators and/or their associates, disproportionate to their known sources of income, would constitute 'undue influence' and consequently a corrupt practice.",
    "year": 2025,
    "questionNumber": "Q1",
    "marks": 10.0,
    "wordLimit": 150,
    "order": 1
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Salient Features of the Representation of People's Act",
    "subtopic": "",
    "question": "Discuss the procedures to decide the disputes arising out of the election of a Member of the Parliament or State Legislature under The Representation of the People Act, 1951. What are the grounds on which the election of any returned candidate may be declared void? What remedy is available to the aggrieved party against the decision? Refer to the case laws.",
    "year": 2022,
    "questionNumber": "Q11",
    "marks": 15.0,
    "wordLimit": 250,
    "order": 2
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Salient Features of the Representation of People's Act",
    "subtopic": "",
    "question": "“There is a need for simplification of procedure for disqualification of persons found guilty of corrupt practices under the Representation of Peoples Act.” Comment.",
    "year": 2020,
    "questionNumber": "Q1",
    "marks": 10.0,
    "wordLimit": 150,
    "order": 3
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Salient Features of the Representation of People's Act",
    "subtopic": "",
    "question": "On what grounds a people's representative can be disqualified under the representation of people act, 1951? Also, mention the remedies available to such person against his disqualification.",
    "year": 2019,
    "questionNumber": "Q11",
    "marks": 15.0,
    "wordLimit": 250,
    "order": 4
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Salient Features of the Representation of People's Act",
    "subtopic": "",
    "question": "'Simultaneous election to the Lok Sabha and the State Assemblies will limit the amount of time and money spent in electioneering but it will reduce the government's accountability to the people' Discuss.",
    "year": 2017,
    "questionNumber": "Q3",
    "marks": 10.0,
    "wordLimit": 150,
    "order": 5
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Salient Features of the Representation of People's Act",
    "subtopic": "",
    "question": "To enhance the quality of democracy in India the Election Commission of India has proposed electoral reforms in 2016. What are the suggested reforms and how far are they significant to make democracy successful?",
    "year": 2017,
    "questionNumber": "Q14",
    "marks": 15.0,
    "wordLimit": 250,
    "order": 6
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Salient Features of the Representation of People's Act",
    "subtopic": "",
    "question": "“The Indian party system is passing through a phase of transition which looks to be full of contradictions and paradoxes.” Discuss.",
    "year": 2016,
    "questionNumber": "Q3",
    "marks": 12.5,
    "wordLimit": 200,
    "order": 7
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Salient Features of the Representation of People's Act",
    "subtopic": "",
    "question": "The role of individual MPs (Members of Parliament) has diminished over the years and as a result healthy constructive debates on policy issues are not usually witnessed. How far can this be attributed to the anti-defection law, which was legislated but with a different intention?",
    "year": 2013,
    "questionNumber": "Q1",
    "marks": 10.0,
    "wordLimit": 200,
    "order": 8
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Appointments to Various Constitutional Posts, Powers, Functions and Responsibilities of Various Constitutional Bodies",
    "subtopic": "",
    "question": "“The Attorney General of India plays a crucial role in guiding the legal framework of the Union Government and ensuring sound governance through legal counsel.” Discuss his responsibilities, rights and limitations in this regard.",
    "year": 2025,
    "questionNumber": "Q5",
    "marks": 10.0,
    "wordLimit": 150,
    "order": 1
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Appointments to Various Constitutional Posts, Powers, Functions and Responsibilities of Various Constitutional Bodies",
    "subtopic": "",
    "question": "Examine the need for electoral reforms as suggested by various committees with particular reference to “one nation – one election” principle.",
    "year": 2024,
    "questionNumber": "Q1",
    "marks": 10.0,
    "wordLimit": 150,
    "order": 2
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Appointments to Various Constitutional Posts, Powers, Functions and Responsibilities of Various Constitutional Bodies",
    "subtopic": "",
    "question": "“The duty of the Comptroller and Auditor General is not merely to ensure the legality of expenditure but also its propriety.” Comment.",
    "year": 2024,
    "questionNumber": "Q4",
    "marks": 10.0,
    "wordLimit": 150,
    "order": 3
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Appointments to Various Constitutional Posts, Powers, Functions and Responsibilities of Various Constitutional Bodies",
    "subtopic": "",
    "question": "Discuss the role of the National Commission for Backward Classes in the wake of its transformation from a statutory body to a constitutional body.",
    "year": 2022,
    "questionNumber": "Q5",
    "marks": 10.0,
    "wordLimit": 150,
    "order": 4
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Appointments to Various Constitutional Posts, Powers, Functions and Responsibilities of Various Constitutional Bodies",
    "subtopic": "",
    "question": "Discuss the role of the Election Commission of India in the light of the evolution of the Model Code of Conduct.",
    "year": 2022,
    "questionNumber": "Q15",
    "marks": 15.0,
    "wordLimit": 250,
    "order": 5
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Appointments to Various Constitutional Posts, Powers, Functions and Responsibilities of Various Constitutional Bodies",
    "subtopic": "",
    "question": "Though the Human Rights Commissions have contributed immensely to the protection of human rights in India, yet they have failed to assert themselves against the mighty and powerful. Analyzing their structural and practical limitations, suggest remedial measures.",
    "year": 2021,
    "questionNumber": "Q12",
    "marks": 15.0,
    "wordLimit": 250,
    "order": 6
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Appointments to Various Constitutional Posts, Powers, Functions and Responsibilities of Various Constitutional Bodies",
    "subtopic": "",
    "question": "“The Attorney-General is the chief legal adviser and lawyer of the Government of India.” Discuss.",
    "year": 2019,
    "questionNumber": "Q14",
    "marks": 15.0,
    "wordLimit": 250,
    "order": 7
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Appointments to Various Constitutional Posts, Powers, Functions and Responsibilities of Various Constitutional Bodies",
    "subtopic": "",
    "question": "In the light of recent controversy regarding the use of Electronic Voting Machines (EVM), what are the challenges before the Election Commission of India to ensure the trustworthiness of elections in India?",
    "year": 2018,
    "questionNumber": "Q1",
    "marks": 10.0,
    "wordLimit": 150,
    "order": 8
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Appointments to Various Constitutional Posts, Powers, Functions and Responsibilities of Various Constitutional Bodies",
    "subtopic": "",
    "question": "Whether National Commission for Scheduled Castes (NCSC) can enforce the implementation of constitutional reservation for the Scheduled Castes in the religious minority institutions? Examine.",
    "year": 2018,
    "questionNumber": "Q2",
    "marks": 10.0,
    "wordLimit": 150,
    "order": 9
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Appointments to Various Constitutional Posts, Powers, Functions and Responsibilities of Various Constitutional Bodies",
    "subtopic": "",
    "question": "“The Comptroller and Auditor General (CAG) has a very vital role to play.” Explain how this is reflected in the method and terms of his appointment as well as the range of powers he can exercise.",
    "year": 2018,
    "questionNumber": "Q5",
    "marks": 10.0,
    "wordLimit": 150,
    "order": 10
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Appointments to Various Constitutional Posts, Powers, Functions and Responsibilities of Various Constitutional Bodies",
    "subtopic": "",
    "question": "How is the Finance Commission of India constituted? What do you know about the terms of reference of the recently constituted Finance Commission? Discuss.",
    "year": 2018,
    "questionNumber": "Q14",
    "marks": 15.0,
    "wordLimit": 250,
    "order": 11
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Appointments to Various Constitutional Posts, Powers, Functions and Responsibilities of Various Constitutional Bodies",
    "subtopic": "",
    "question": "Exercise of CAG's powers in relation to the accounts of the Union and the States is derived from Article 149 of the Indian Constitution. Discuss whether audit of the Government's policy implementation could amount to overstepping its own (CAG) jurisdiction.",
    "year": 2016,
    "questionNumber": "Q4",
    "marks": 12.5,
    "wordLimit": 200,
    "order": 12
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Statutory, Regulatory and Various Quasi-Judicial Bodies",
    "subtopic": "",
    "question": "Comment on the need of administrative tribunals as compared to the court system. Assess the impact of the recent tribunal reforms through rationalization of tribunals made in 2021.",
    "year": 2025,
    "questionNumber": "Q2",
    "marks": 10.0,
    "wordLimit": 150,
    "order": 1
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Statutory, Regulatory and Various Quasi-Judicial Bodies",
    "subtopic": "",
    "question": "Who are entitled to receive free legal aid? Assess the role of the National Legal Services Authority (NALSA) in rendering free legal aid in India.",
    "year": 2023,
    "questionNumber": "Q2",
    "marks": 10.0,
    "wordLimit": 150,
    "order": 2
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Statutory, Regulatory and Various Quasi-Judicial Bodies",
    "subtopic": "",
    "question": "Discuss the role of the Competition Commission of India in containing the abuse of dominant position by the Multi-National Corporations in India. Refer to the recent decisions.",
    "year": 2023,
    "questionNumber": "Q7",
    "marks": 10.0,
    "wordLimit": 150,
    "order": 3
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Statutory, Regulatory and Various Quasi-Judicial Bodies",
    "subtopic": "",
    "question": "“Recent amendments to the Right to Information Act will have profound impact on the autonomy and independence of the Information Commission.” Discuss.",
    "year": 2020,
    "questionNumber": "Q2",
    "marks": 10.0,
    "wordLimit": 150,
    "order": 4
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Statutory, Regulatory and Various Quasi-Judicial Bodies",
    "subtopic": "",
    "question": "Which steps are required for constitutionalization of a Commission? Do you think imparting constitutionality to the National Commission for Women would ensure greater gender justice and empowerment in India? Give reasons.",
    "year": 2020,
    "questionNumber": "Q15",
    "marks": 15.0,
    "wordLimit": 250,
    "order": 5
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Statutory, Regulatory and Various Quasi-Judicial Bodies",
    "subtopic": "",
    "question": "“The Central Administrative Tribunal which was established for redressal of grievances and complaints by or against central government employees nowadays is exercising its powers as an independent judicial authority.” Explain.",
    "year": 2019,
    "questionNumber": "Q2",
    "marks": 10.0,
    "wordLimit": 150,
    "order": 6
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Statutory, Regulatory and Various Quasi-Judicial Bodies",
    "subtopic": "",
    "question": "How far do you agree with the view that tribunals curtail the jurisdiction of ordinary courts? In view of the above, discuss the constitutional validity and competency of the tribunals in India.",
    "year": 2018,
    "questionNumber": "Q12",
    "marks": 15.0,
    "wordLimit": 250,
    "order": 7
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Statutory, Regulatory and Various Quasi-Judicial Bodies",
    "subtopic": "",
    "question": "Multiplicity of various commissions for the vulnerable sections of the society leads to problems of overlapping jurisdiction and duplication of functions. Is it better to merge all commissions into an umbrella Human Rights Commission? Argue your case.",
    "year": 2018,
    "questionNumber": "Q16",
    "marks": 15.0,
    "wordLimit": 250,
    "order": 8
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Statutory, Regulatory and Various Quasi-Judicial Bodies",
    "subtopic": "",
    "question": "Is the National Commission for Women able to strategize and tackle the problems that women face at both public and private spheres? Give reasons in support of your answer.",
    "year": 2017,
    "questionNumber": "Q15",
    "marks": 15.0,
    "wordLimit": 250,
    "order": 9
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Statutory, Regulatory and Various Quasi-Judicial Bodies",
    "subtopic": "",
    "question": "What is quasi-judicial body? Explain with the help of concrete examples.",
    "year": 2016,
    "questionNumber": "Q8",
    "marks": 12.5,
    "wordLimit": 200,
    "order": 10
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Statutory, Regulatory and Various Quasi-Judicial Bodies",
    "subtopic": "",
    "question": "For achieving the desired objectives, it is necessary to ensure that the regulatory institutions remain independent and autonomous. Discuss in the light of experiences in recent past.",
    "year": 2015,
    "questionNumber": "Q16",
    "marks": 12.5,
    "wordLimit": 200,
    "order": 11
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Statutory, Regulatory and Various Quasi-Judicial Bodies",
    "subtopic": "",
    "question": "National Human Rights Commission (NHRC) in India can be most effective when its tasks are adequately supported by other mechanisms that ensure the accountability of a government. In light of above observation assess the role of NHRC as an effective complement to the judiciary and other institutions in promoting and protecting human rights standards.",
    "year": 2014,
    "questionNumber": "Q9",
    "marks": 12.5,
    "wordLimit": 200,
    "order": 12
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Statutory, Regulatory and Various Quasi-Judicial Bodies",
    "subtopic": "",
    "question": "The product diversification of financial institutions and insurance companies, resulting in overlapping of products and services strengthens the case for the merger of the two regulatory agencies, namely SEBI and IRDA. Justify.",
    "year": 2013,
    "questionNumber": "Q8",
    "marks": 10.0,
    "wordLimit": 200,
    "order": 13
  },
  {
    "subject": "Constitution & Polity",
    "topic": "Statutory, Regulatory and Various Quasi-Judicial Bodies",
    "subtopic": "",
    "question": "'A national Lokpal, however strong it may be, cannot resolve the problems of immorality in public affairs.' Discuss.",
    "year": 2013,
    "questionNumber": "Q17",
    "marks": 10.0,
    "wordLimit": 200,
    "order": 14
  },
  {
    "subject": "Social Justice & Governance",
    "topic": "Government Policies and Interventions for Development in Various Sectors and Issues Arising out of their Design and Implementation",
    "subtopic": "",
    "question": "\"In contemporary development models, decision-making and problem-solving responsibilities are not located close to the source of information and execution defeating the objectives of development.\" Critically evaluate.",
    "year": 2025,
    "questionNumber": "Q17",
    "marks": 15.0,
    "wordLimit": 250,
    "order": 1
  },
  {
    "subject": "Social Justice & Governance",
    "topic": "Government Policies and Interventions for Development in Various Sectors and Issues Arising out of their Design and Implementation",
    "subtopic": "",
    "question": "The Gati-Shakti Yojana needs meticulous coordination between the government and the private sector to achieve the goal of connectivity. Discuss.",
    "year": 2022,
    "questionNumber": "Q6",
    "marks": 10.0,
    "wordLimit": 150,
    "order": 2
  },
  {
    "subject": "Social Justice & Governance",
    "topic": "Government Policies and Interventions for Development in Various Sectors and Issues Arising out of their Design and Implementation",
    "subtopic": "",
    "question": "Implementation of Information and Communication Technology (ICT) based projects/programmes usually suffers in terms of certain vital factors. Identify these factors and suggest measures for their effective implementation.",
    "year": 2019,
    "questionNumber": "Q8",
    "marks": 10.0,
    "wordLimit": 150,
    "order": 3
  },
  {
    "subject": "Social Justice & Governance",
    "topic": "Government Policies and Interventions for Development in Various Sectors and Issues Arising out of their Design and Implementation",
    "subtopic": "",
    "question": "'In the context of the neo-liberal paradigm of developmental planning, multi-level planning is expected to make operations cost-effective and remove many implementation blockages'- Discuss.",
    "year": 2019,
    "questionNumber": "Q16",
    "marks": 15.0,
    "wordLimit": 250,
    "order": 4
  },
  {
    "subject": "Social Justice & Governance",
    "topic": "Government Policies and Interventions for Development in Various Sectors and Issues Arising out of their Design and Implementation",
    "subtopic": "",
    "question": "“Policy contradictions among various competing sectors and stakeholders have resulted in inadequate 'protection and prevention of degradation to environment.” Comment with relevant illustrations.",
    "year": 2018,
    "questionNumber": "Q6",
    "marks": 10.0,
    "wordLimit": 150,
    "order": 5
  },
  {
    "subject": "Social Justice & Governance",
    "topic": "Government Policies and Interventions for Development in Various Sectors and Issues Arising out of their Design and Implementation",
    "subtopic": "",
    "question": "Explain the salient features of the Constitution (One Hundred and First Amendment) Act, 2016. Do you think it is efficacious enough 'to remove cascading effect of taxes and provide for a common national market for goods and services'?",
    "year": 2017,
    "questionNumber": "Q11",
    "marks": 15.0,
    "wordLimit": 250,
    "order": 6
  },
  {
    "subject": "Social Justice & Governance",
    "topic": "Government Policies and Interventions for Development in Various Sectors and Issues Arising out of their Design and Implementation",
    "subtopic": "",
    "question": "Has the Indian governmental system responded adequately to the demands of Liberalization, Privatization and Globalization started in 1991? What can the government do to be responsive to this important change?",
    "year": 2016,
    "questionNumber": "Q13",
    "marks": 12.5,
    "wordLimit": 200,
    "order": 7
  },
  {
    "subject": "Social Justice & Governance",
    "topic": "Government Policies and Interventions for Development in Various Sectors and Issues Arising out of their Design and Implementation",
    "subtopic": "",
    "question": "Though 100 percent FDI is already allowed in non-news media like a trade publication and general entertainment channel, the government is mulling over the proposal for increased FDI in news media for quite some time. What difference would an increase in FDI make? Critically evaluate the pros and cons.",
    "year": 2014,
    "questionNumber": "Q7",
    "marks": 12.5,
    "wordLimit": 200,
    "order": 8
  },
  {
    "subject": "Social Justice & Governance",
    "topic": "Government Policies and Interventions for Development in Various Sectors and Issues Arising out of their Design and Implementation",
    "subtopic": "",
    "question": "The setting up of a Rail Tariff Authority to regulate fares will subject the cash strapped Indian Railways to demand subsidy for obligation to operate non-profitable routes and services. Taking into account the experience in the power sector, discuss if the proposed reform is expected to benefit the consumers, the Indian Railways or the private container operators.",
    "year": 2014,
    "questionNumber": "Q8",
    "marks": 12.5,
    "wordLimit": 200,
    "order": 9
  },
  {
    "subject": "Social Justice & Governance",
    "topic": "Government Policies and Interventions for Development in Various Sectors and Issues Arising out of their Design and Implementation",
    "subtopic": "",
    "question": "Two parallel run schemes of the Government, viz the Adhar card and NPR, one of voluntary and the other as compulsory, have led to debates at national levels and also litigations. On merits, discuss whether or not both schemes need run concurrently. Analyse the potential of the schemes to achieve development benefits and equitable growth.",
    "year": 2014,
    "questionNumber": "Q15",
    "marks": 12.5,
    "wordLimit": 200,
    "order": 10
  },
  {
    "subject": "Social Justice & Governance",
    "topic": "Government Policies and Interventions for Development in Various Sectors and Issues Arising out of their Design and Implementation",
    "subtopic": "",
    "question": "The basis of providing urban amenities in rural areas (PURA) is rooted in establishing connectivity. Comment.",
    "year": 2013,
    "questionNumber": "Q14",
    "marks": 10.0,
    "wordLimit": 200,
    "order": 11
  },
  {
    "subject": "Social Justice & Governance",
    "topic": "Development Processes and the Development Industry - The Role of NGOs, SHGs, Various Groups and Associations, Donors, Charities, Institutional and Other Stakeholders",
    "subtopic": "",
    "question": "Public charitable trusts have the potential to make India's development more inclusive as they relate to certain vital public issues. Comment.",
    "year": 2024,
    "questionNumber": "Q6",
    "marks": 10.0,
    "wordLimit": 150,
    "order": 1
  },
  {
    "subject": "Social Justice & Governance",
    "topic": "Development Processes and the Development Industry - The Role of NGOs, SHGs, Various Groups and Associations, Donors, Charities, Institutional and Other Stakeholders",
    "subtopic": "",
    "question": "Do you agree with view that increasing dependence on donor agencies for development reduces the importance of community participation in the development process? Justify your answer.",
    "year": 2022,
    "questionNumber": "Q17",
    "marks": 15.0,
    "wordLimit": 250,
    "order": 2
  },
  {
    "subject": "Social Justice & Governance",
    "topic": "Development Processes and the Development Industry - The Role of NGOs, SHGs, Various Groups and Associations, Donors, Charities, Institutional and Other Stakeholders",
    "subtopic": "",
    "question": "Can the vicious cycle of gender inequality, poverty and malnutrition be broken through microfinancing of women SHGs? Explain with examples.",
    "year": 2021,
    "questionNumber": "Q8",
    "marks": 10.0,
    "wordLimit": 150,
    "order": 3
  },
  {
    "subject": "Social Justice & Governance",
    "topic": "Development Processes and the Development Industry - The Role of NGOs, SHGs, Various Groups and Associations, Donors, Charities, Institutional and Other Stakeholders",
    "subtopic": "",
    "question": "Can Civil Society and Non-Governmental Organizations present an alternative model of public service delivery to benefit the common citizen. Discuss the challenges of this alternative model.",
    "year": 2021,
    "questionNumber": "Q18",
    "marks": 15.0,
    "wordLimit": 250,
    "order": 4
  },
  {
    "subject": "Social Justice & Governance",
    "topic": "Development Processes and the Development Industry - The Role of NGOs, SHGs, Various Groups and Associations, Donors, Charities, Institutional and Other Stakeholders",
    "subtopic": "",
    "question": "“Micro-Finance as an anti-poverty vaccine, is aimed at asset creation and income security of the rural poor in India.” Evaluate the role of the Self-Help Groups in achieving the twin objectives along with empowering women in rural India.",
    "year": 2020,
    "questionNumber": "Q17",
    "marks": 15.0,
    "wordLimit": 250,
    "order": 5
  },
  {
    "subject": "Social Justice & Governance",
    "topic": "Development Processes and the Development Industry - The Role of NGOs, SHGs, Various Groups and Associations, Donors, Charities, Institutional and Other Stakeholders",
    "subtopic": "",
    "question": "The need for cooperation among various service sectors has been an inherent component of development discourse. Partnership bridges the gap among the sectors. It also sets in motion a culture of 'collaboration' and 'team spirit'. In the light of statements above examine India's development process.",
    "year": 2019,
    "questionNumber": "Q17",
    "marks": 15.0,
    "wordLimit": 250,
    "order": 6
  },
  {
    "subject": "Social Justice & Governance",
    "topic": "Development Processes and the Development Industry - The Role of NGOs, SHGs, Various Groups and Associations, Donors, Charities, Institutional and Other Stakeholders",
    "subtopic": "",
    "question": "'The emergence of Self-Help Groups (SHGs) in contemporary times points to the slow but steady withdrawal of the state from developmental activities'. Examine the role of the SHGs in developmental activities and the measures taken by the Government of India to promote the SHGs.",
    "year": 2017,
    "questionNumber": "Q16",
    "marks": 15.0,
    "wordLimit": 250,
    "order": 7
  },
  {
    "subject": "Social Justice & Governance",
    "topic": "Development Processes and the Development Industry - The Role of NGOs, SHGs, Various Groups and Associations, Donors, Charities, Institutional and Other Stakeholders",
    "subtopic": "",
    "question": "Examine critically the recent changes in the rule governing foreign funding of NGOs under the Foreign Contribution (Regulation) Act (FCRA), 1976.",
    "year": 2015,
    "questionNumber": "Q8",
    "marks": 12.5,
    "wordLimit": 200,
    "order": 8
  },
  {
    "subject": "Social Justice & Governance",
    "topic": "Development Processes and the Development Industry - The Role of NGOs, SHGs, Various Groups and Associations, Donors, Charities, Institutional and Other Stakeholders",
    "subtopic": "",
    "question": "The Self-Help Group (SHG) Bank Linkage Program (SBLP), which is India's own innovation, has proved to be one of the most effective poverty alleviation and women empowerment programme. Elucidate.",
    "year": 2015,
    "questionNumber": "Q9",
    "marks": 12.5,
    "wordLimit": 200,
    "order": 9
  },
  {
    "subject": "Social Justice & Governance",
    "topic": "Development Processes and the Development Industry - The Role of NGOs, SHGs, Various Groups and Associations, Donors, Charities, Institutional and Other Stakeholders",
    "subtopic": "",
    "question": "How can be the role of NGOs be strengthened in India for development works relating to protection of the Environment? Discuss throwing light on the major constraints.",
    "year": 2015,
    "questionNumber": "Q10",
    "marks": 12.5,
    "wordLimit": 200,
    "order": 10
  },
  {
    "subject": "Social Justice & Governance",
    "topic": "Development Processes and the Development Industry - The Role of NGOs, SHGs, Various Groups and Associations, Donors, Charities, Institutional and Other Stakeholders",
    "subtopic": "",
    "question": "The penetration of Self-Help Groups (SHGs) in rural areas in promoting participation in development programmes is facing socio-cultural hurdles. Examine.",
    "year": 2014,
    "questionNumber": "Q10",
    "marks": 12.5,
    "wordLimit": 200,
    "order": 11
  },
  {
    "subject": "Social Justice & Governance",
    "topic": "Development Processes and the Development Industry - The Role of NGOs, SHGs, Various Groups and Associations, Donors, Charities, Institutional and Other Stakeholders",
    "subtopic": "",
    "question": "The legitimacy and accountability of Self-Help Groups (SHGs) and their patrons, the micro-finance outfits, need systematic assessment and scrutiny for the sustained success of the concept. Discuss.",
    "year": 2013,
    "questionNumber": "Q11",
    "marks": 10.0,
    "wordLimit": 200,
    "order": 12
  },
  {
    "subject": "Social Justice & Governance",
    "topic": "Welfare Schemes for Vulnerable Sections of the Population by the Centre and States and the Performance of these Schemes, Mechanisms, Laws, Institutions and Bodies Constituted for the Protection and Betterment of these Vulnerable Sections",
    "subtopic": "",
    "question": "Women's social capital complements in advancing empowerment and gender equity. Explain.",
    "year": 2025,
    "questionNumber": "Q6",
    "marks": 10.0,
    "wordLimit": 150,
    "order": 1
  },
  {
    "subject": "Social Justice & Governance",
    "topic": "Welfare Schemes for Vulnerable Sections of the Population by the Centre and States and the Performance of these Schemes, Mechanisms, Laws, Institutions and Bodies Constituted for the Protection and Betterment of these Vulnerable Sections",
    "subtopic": "",
    "question": "The National Commission for Protection of Child Rights has to address the challenges faced by children in the digital era. Examine the existing policies and suggest measures the Commission can initiate to tackle the issue.",
    "year": 2025,
    "questionNumber": "Q18",
    "marks": 15.0,
    "wordLimit": 250,
    "order": 2
  },
  {
    "subject": "Social Justice & Governance",
    "topic": "Welfare Schemes for Vulnerable Sections of the Population by the Centre and States and the Performance of these Schemes, Mechanisms, Laws, Institutions and Bodies Constituted for the Protection and Betterment of these Vulnerable Sections",
    "subtopic": "",
    "question": "“Development and welfare schemes for the vulnerable, by its nature, are discriminatory in approach.” Do you agree? Give reasons for your answer.",
    "year": 2023,
    "questionNumber": "Q17",
    "marks": 15.0,
    "wordLimit": 250,
    "order": 3
  },
  {
    "subject": "Social Justice & Governance",
    "topic": "Welfare Schemes for Vulnerable Sections of the Population by the Centre and States and the Performance of these Schemes, Mechanisms, Laws, Institutions and Bodies Constituted for the Protection and Betterment of these Vulnerable Sections",
    "subtopic": "",
    "question": "The Right of Person with Disabilities Act, 2016 remains only a legal document without intense sensitisation of government functionaries and citizens regarding disability. Comment.",
    "year": 2022,
    "questionNumber": "Q7",
    "marks": 10.0,
    "wordLimit": 150,
    "order": 4
  },
  {
    "subject": "Social Justice & Governance",
    "topic": "Welfare Schemes for Vulnerable Sections of the Population by the Centre and States and the Performance of these Schemes, Mechanisms, Laws, Institutions and Bodies Constituted for the Protection and Betterment of these Vulnerable Sections",
    "subtopic": "",
    "question": "The Right of Children to Free and Compulsory Education Act, 2009 remains inadequate in promoting incentive-based system for children's education without generating awareness about the importance of schooling. Analyse.",
    "year": 2022,
    "questionNumber": "Q18",
    "marks": 15.0,
    "wordLimit": 250,
    "order": 5
  },
  {
    "subject": "Social Justice & Governance",
    "topic": "Welfare Schemes for Vulnerable Sections of the Population by the Centre and States and the Performance of these Schemes, Mechanisms, Laws, Institutions and Bodies Constituted for the Protection and Betterment of these Vulnerable Sections",
    "subtopic": "",
    "question": "“Though women in post-Independent India have excelled in various fields, the social attitude towards women and feminist movement has been patriarchal.” Apart from women education and women empowerment schemes, what interventions can help change this milieu?",
    "year": 2021,
    "questionNumber": "Q17",
    "marks": 15.0,
    "wordLimit": 250,
    "order": 6
  },
  {
    "subject": "Social Justice & Governance",
    "topic": "Welfare Schemes for Vulnerable Sections of the Population by the Centre and States and the Performance of these Schemes, Mechanisms, Laws, Institutions and Bodies Constituted for the Protection and Betterment of these Vulnerable Sections",
    "subtopic": "",
    "question": "Performance of welfare schemes that are implemented for vulnerable sections is not so effective due to the absence of their awareness and active involvement at all stages of the policy process. Discuss.",
    "year": 2019,
    "questionNumber": "Q18",
    "marks": 15.0,
    "wordLimit": 250,
    "order": 7
  },
  {
    "subject": "Social Justice & Governance",
    "topic": "Welfare Schemes for Vulnerable Sections of the Population by the Centre and States and the Performance of these Schemes, Mechanisms, Laws, Institutions and Bodies Constituted for the Protection and Betterment of these Vulnerable Sections",
    "subtopic": "",
    "question": "Does the Rights of Persons with Disabilities Act, 2016 ensure an effective mechanism for empowerment and inclusion of the intended beneficiaries in the society? Discuss.",
    "year": 2017,
    "questionNumber": "Q7",
    "marks": 10.0,
    "wordLimit": 150,
    "order": 8
  },
  {
    "subject": "Social Justice & Governance",
    "topic": "Welfare Schemes for Vulnerable Sections of the Population by the Centre and States and the Performance of these Schemes, Mechanisms, Laws, Institutions and Bodies Constituted for the Protection and Betterment of these Vulnerable Sections",
    "subtopic": "",
    "question": "Examine the main provisions of the National Child Policy and throw light on the status of its implementation.",
    "year": 2016,
    "questionNumber": "Q15",
    "marks": 12.5,
    "wordLimit": 200,
    "order": 9
  },
  {
    "subject": "Social Justice & Governance",
    "topic": "Welfare Schemes for Vulnerable Sections of the Population by the Centre and States and the Performance of these Schemes, Mechanisms, Laws, Institutions and Bodies Constituted for the Protection and Betterment of these Vulnerable Sections",
    "subtopic": "",
    "question": "Khap panchayats have been in the news for functioning as extra – constitutional authorities, often delivering pronouncements amounting to human right violations. Discuss critically the actions taken by the legislative, executive and judiciary to set the things right in this regard.",
    "year": 2015,
    "questionNumber": "Q4",
    "marks": 12.5,
    "wordLimit": 200,
    "order": 10
  },
  {
    "subject": "Social Justice & Governance",
    "topic": "Welfare Schemes for Vulnerable Sections of the Population by the Centre and States and the Performance of these Schemes, Mechanisms, Laws, Institutions and Bodies Constituted for the Protection and Betterment of these Vulnerable Sections",
    "subtopic": "",
    "question": "Do government's schemes for up-lifting vulnerable and backward communities by protecting required social resources for them, lead to their exclusion in establishing businesses in urban economies?",
    "year": 2014,
    "questionNumber": "Q11",
    "marks": 12.5,
    "wordLimit": 200,
    "order": 11
  },
  {
    "subject": "Social Justice & Governance",
    "topic": "Welfare Schemes for Vulnerable Sections of the Population by the Centre and States and the Performance of these Schemes, Mechanisms, Laws, Institutions and Bodies Constituted for the Protection and Betterment of these Vulnerable Sections",
    "subtopic": "",
    "question": "The Central Government frequently complains on the poor performance of the State Governments in eradicating suffering of the vulnerable sections of the society. Restructuring of Centrally sponsored schemes across the sectors for ameliorating the cause of vulnerable sections of population aims at providing flexibility to the States in better implementation. Critically evaluate.",
    "year": 2013,
    "questionNumber": "Q12",
    "marks": 10.0,
    "wordLimit": 200,
    "order": 12
  },
  {
    "subject": "Social Justice & Governance",
    "topic": "Welfare Schemes for Vulnerable Sections of the Population by the Centre and States and the Performance of these Schemes, Mechanisms, Laws, Institutions and Bodies Constituted for the Protection and Betterment of these Vulnerable Sections",
    "subtopic": "",
    "question": "Electronic cash transfer system for the welfare schemes is an ambitious project to minimize corruption, eliminate wastage and facilitate reforms. Comment.",
    "year": 2013,
    "questionNumber": "Q13",
    "marks": 10.0,
    "wordLimit": 200,
    "order": 13
  },
  {
    "subject": "Social Justice & Governance",
    "topic": "Issues Relating to Development and Management of Social Sector / Services Related to Health, Education, Human Resources",
    "subtopic": "",
    "question": "What are the aims and objects of recently passed and enforced, The Public Examination (Prevention of Unfair Means) Act, 2024? Whether University/State Education Board examinations, too, are covered under the Act?",
    "year": 2024,
    "questionNumber": "Q11",
    "marks": 15.0,
    "wordLimit": 250,
    "order": 1
  },
  {
    "subject": "Social Justice & Governance",
    "topic": "Issues Relating to Development and Management of Social Sector / Services Related to Health, Education, Human Resources",
    "subtopic": "",
    "question": "In a crucial domain like the public healthcare system the Indian State should play a vital role to contain the adverse impact of marketisation of the system. Suggest some measures through which the State can enhance the reach of public healthcare at the grassroots level.",
    "year": 2024,
    "questionNumber": "Q17",
    "marks": 15.0,
    "wordLimit": 250,
    "order": 2
  },
  {
    "subject": "Social Justice & Governance",
    "topic": "Issues Relating to Development and Management of Social Sector / Services Related to Health, Education, Human Resources",
    "subtopic": "",
    "question": "The crucial aspect of development process has been the inadequate attention paid to Human Resource Development in India. Suggest measures that can address this adequacy.",
    "year": 2023,
    "questionNumber": "Q6",
    "marks": 10.0,
    "wordLimit": 150,
    "order": 3
  },
  {
    "subject": "Social Justice & Governance",
    "topic": "Issues Relating to Development and Management of Social Sector / Services Related to Health, Education, Human Resources",
    "subtopic": "",
    "question": "Skill development programs have succeeded in increasing human resources supply to various sectors. In the context of the statement analyze the linkages between education, skill and employment.",
    "year": 2023,
    "questionNumber": "Q18",
    "marks": 15.0,
    "wordLimit": 250,
    "order": 4
  },
  {
    "subject": "Social Justice & Governance",
    "topic": "Issues Relating to Development and Management of Social Sector / Services Related to Health, Education, Human Resources",
    "subtopic": "",
    "question": "Besides the welfare schemes, India needs deft management of inflation and unemployment to serve the poor and the underprivileged sections of the society. Discuss.",
    "year": 2022,
    "questionNumber": "Q16",
    "marks": 15.0,
    "wordLimit": 250,
    "order": 5
  },
  {
    "subject": "Social Justice & Governance",
    "topic": "Issues Relating to Development and Management of Social Sector / Services Related to Health, Education, Human Resources",
    "subtopic": "",
    "question": "“Besides being a moral imperative of Welfare State, primary health structure is a necessary pre-condition for sustainable development.” Analyze.",
    "year": 2021,
    "questionNumber": "Q6",
    "marks": 10.0,
    "wordLimit": 150,
    "order": 6
  },
  {
    "subject": "Social Justice & Governance",
    "topic": "Issues Relating to Development and Management of Social Sector / Services Related to Health, Education, Human Resources",
    "subtopic": "",
    "question": "“'Earn while you learn' scheme needs to be strengthened to make vocational education and skill training meaningful.” Comment.",
    "year": 2021,
    "questionNumber": "Q7",
    "marks": 10.0,
    "wordLimit": 150,
    "order": 7
  },
  {
    "subject": "Social Justice & Governance",
    "topic": "Issues Relating to Development and Management of Social Sector / Services Related to Health, Education, Human Resources",
    "subtopic": "",
    "question": "Has digital illiteracy, particularly in rural areas, coupled with lack of Information and Communication Technology (ICT) accessibility hindered socio-economic development? Examine with justification.",
    "year": 2021,
    "questionNumber": "Q16",
    "marks": 15.0,
    "wordLimit": 250,
    "order": 8
  },
  {
    "subject": "Social Justice & Governance",
    "topic": "Issues Relating to Development and Management of Social Sector / Services Related to Health, Education, Human Resources",
    "subtopic": "",
    "question": "In order to enhance the prospects of social development, sound and adequate health care policies are needed particularly in the fields of geriatric and maternal health care. Discuss.",
    "year": 2020,
    "questionNumber": "Q6",
    "marks": 10.0,
    "wordLimit": 150,
    "order": 9
  },
  {
    "subject": "Social Justice & Governance",
    "topic": "Issues Relating to Development and Management of Social Sector / Services Related to Health, Education, Human Resources",
    "subtopic": "",
    "question": "National Education Policy 2020 is in conformity with the Sustainable Development Goal-4 (2030). It intends to restructure and reorient education system in India. Critically examine this statement.",
    "year": 2020,
    "questionNumber": "Q18",
    "marks": 15.0,
    "wordLimit": 250,
    "order": 10
  },
  {
    "subject": "Social Justice & Governance",
    "topic": "Issues Relating to Development and Management of Social Sector / Services Related to Health, Education, Human Resources",
    "subtopic": "",
    "question": "Despite Consistent experience of high growth, India still goes with the lowest indicators of human development. Examine the issues that make balanced and inclusive development elusive.",
    "year": 2019,
    "questionNumber": "Q6",
    "marks": 10.0,
    "wordLimit": 150,
    "order": 11
  },
  {
    "subject": "Social Justice & Governance",
    "topic": "Issues Relating to Development and Management of Social Sector / Services Related to Health, Education, Human Resources",
    "subtopic": "",
    "question": "Appropriate local community level healthcare intervention is a prerequisite to achieve 'Health for All' in India. Explain.",
    "year": 2018,
    "questionNumber": "Q7",
    "marks": 10.0,
    "wordLimit": 150,
    "order": 12
  },
  {
    "subject": "Social Justice & Governance",
    "topic": "Issues Relating to Development and Management of Social Sector / Services Related to Health, Education, Human Resources",
    "subtopic": "",
    "question": "'To ensure effective implementation of policies addressing water, sanitation and hygiene needs, the identification of beneficiary segments is to be synchronized with the anticipated outcomes' Examine the statement in the context of the WASH scheme.",
    "year": 2017,
    "questionNumber": "Q6",
    "marks": 10.0,
    "wordLimit": 150,
    "order": 13
  },
  {
    "subject": "Social Justice & Governance",
    "topic": "Issues Relating to Development and Management of Social Sector / Services Related to Health, Education, Human Resources",
    "subtopic": "",
    "question": "Professor Amartya Sen has advocated important reforms in the realms of primary education and primary health care. What are your suggestions to improve their status and performance?",
    "year": 2016,
    "questionNumber": "Q9",
    "marks": 12.5,
    "wordLimit": 200,
    "order": 14
  },
  {
    "subject": "Social Justice & Governance",
    "topic": "Issues Relating to Development and Management of Social Sector / Services Related to Health, Education, Human Resources",
    "subtopic": "",
    "question": "“Demographic Dividend in India will remain only theoretical unless our manpower becomes more educated, aware, skilled and creative.” What measures have been taken by the government to enhance the capacity of our population to be more productive and employable?",
    "year": 2016,
    "questionNumber": "Q16",
    "marks": 12.5,
    "wordLimit": 200,
    "order": 15
  },
  {
    "subject": "Social Justice & Governance",
    "topic": "Issues Relating to Development and Management of Social Sector / Services Related to Health, Education, Human Resources",
    "subtopic": "",
    "question": "The quality of higher education in India requires major improvement to make it internationally competitive. Do you think that the entry of foreign educational institutions would help improve the quality of technical and higher education in the country. Discuss.",
    "year": 2015,
    "questionNumber": "Q11",
    "marks": 12.5,
    "wordLimit": 200,
    "order": 16
  },
  {
    "subject": "Social Justice & Governance",
    "topic": "Issues Relating to Development and Management of Social Sector / Services Related to Health, Education, Human Resources",
    "subtopic": "",
    "question": "Public health system has limitation in providing universal health coverage. Do you think that private sector can help in bridging the gap? What other viable alternatives do you suggest?",
    "year": 2015,
    "questionNumber": "Q12",
    "marks": 12.5,
    "wordLimit": 200,
    "order": 17
  },
  {
    "subject": "Social Justice & Governance",
    "topic": "Issues Relating to Development and Management of Social Sector / Services Related to Health, Education, Human Resources",
    "subtopic": "",
    "question": "An athlete participates in Olympics for personal triumph and nation's glory; victors are showered with cash incentives by various agencies, on their return. Discuss the merit of state sponsored talent hunt and its cultivation as against the rationale of a reward mechanism as encouragement.",
    "year": 2014,
    "questionNumber": "Q12",
    "marks": 12.5,
    "wordLimit": 200,
    "order": 18
  },
  {
    "subject": "Social Justice & Governance",
    "topic": "Issues Relating to Development and Management of Social Sector / Services Related to Health, Education, Human Resources",
    "subtopic": "",
    "question": "Should the premier institutes like IITs/IIMs be allowed to retain premier status, allowed more academic independence in designing courses and also decide mode/criteria of selection of students. Discuss in light of the growing challenges.",
    "year": 2014,
    "questionNumber": "Q13",
    "marks": 12.5,
    "wordLimit": 200,
    "order": 19
  },
  {
    "subject": "Social Justice & Governance",
    "topic": "Issues Relating to Development and Management of Social Sector / Services Related to Health, Education, Human Resources",
    "subtopic": "",
    "question": "The concept of Mid-Day Meal (MDM) scheme is almost a century old in India with early beginnings in Madras Presidency in pre-independent India. The scheme has again been given impetus in most states in the last two decades. Critically examine its twin objectives, latest mandates and success.",
    "year": 2013,
    "questionNumber": "Q9",
    "marks": 10.0,
    "wordLimit": 200,
    "order": 20
  },
  {
    "subject": "Social Justice & Governance",
    "topic": "Issues Relating to Development and Management of Social Sector / Services Related to Health, Education, Human Resources",
    "subtopic": "",
    "question": "Identify the Millennium Development Goals (MDGs) that are related to health. Discuss the success of the actions taken by the Government for achieving the same.",
    "year": 2013,
    "questionNumber": "Q15",
    "marks": 10.0,
    "wordLimit": 200,
    "order": 21
  },
  {
    "subject": "Social Justice & Governance",
    "topic": "Issues Relating to Poverty and Hunger",
    "subtopic": "",
    "question": "Inequality in the ownership pattern of resources is one of the major causes of poverty. Discuss in the context of 'paradox of poverty'.",
    "year": 2025,
    "questionNumber": "Q16",
    "marks": 15.0,
    "wordLimit": 250,
    "order": 1
  },
  {
    "subject": "Social Justice & Governance",
    "topic": "Issues Relating to Poverty and Hunger",
    "subtopic": "",
    "question": "Poverty and malnutrition create a vicious cycle, adversely affecting human capital formation. What steps can be taken to break the cycle?",
    "year": 2024,
    "questionNumber": "Q7",
    "marks": 10.0,
    "wordLimit": 150,
    "order": 2
  },
  {
    "subject": "Social Justice & Governance",
    "topic": "Issues Relating to Poverty and Hunger",
    "subtopic": "",
    "question": "“The incidence and intensity of poverty are more important in determining poverty based on income alone.” In this context analyse the latest United Nations Multidimensional Poverty Index Report.",
    "year": 2020,
    "questionNumber": "Q16",
    "marks": 15.0,
    "wordLimit": 250,
    "order": 3
  },
  {
    "subject": "Social Justice & Governance",
    "topic": "Issues Relating to Poverty and Hunger",
    "subtopic": "",
    "question": "There is a growing divergence in the relationship between poverty and hunger in India. The shrinking of social expenditure by the government is forcing the poor to spend more on non-food essential items squeezing their food-budget – Elucidate.",
    "year": 2019,
    "questionNumber": "Q7",
    "marks": 10.0,
    "wordLimit": 150,
    "order": 4
  },
  {
    "subject": "Social Justice & Governance",
    "topic": "Issues Relating to Poverty and Hunger",
    "subtopic": "",
    "question": "How far do you agree with the view that the focus on lack of availability of food as the main cause of hunger takes the attention away from ineffective human development policies in India?",
    "year": 2018,
    "questionNumber": "Q17",
    "marks": 15.0,
    "wordLimit": 250,
    "order": 5
  },
  {
    "subject": "Social Justice & Governance",
    "topic": "Issues Relating to Poverty and Hunger",
    "subtopic": "",
    "question": "Hunger and Poverty are the biggest challenges for good governance in India still today. Evaluate how far successive governments have progressed in dealing with these humongous problems. Suggest measures for improvement.",
    "year": 2017,
    "questionNumber": "Q8",
    "marks": 10.0,
    "wordLimit": 150,
    "order": 6
  },
  {
    "subject": "Social Justice & Governance",
    "topic": "Issues Relating to Poverty and Hunger",
    "subtopic": "",
    "question": "'Poverty Alleviation Programmes in India remain mere show pieces until and unless they are backed by political will'. Discuss with reference to the performance of the major poverty alleviation programmes in India.",
    "year": 2017,
    "questionNumber": "Q17",
    "marks": 15.0,
    "wordLimit": 250,
    "order": 7
  },
  {
    "subject": "Social Justice & Governance",
    "topic": "Issues Relating to Poverty and Hunger",
    "subtopic": "",
    "question": "Though there have been several different estimates of poverty in India, all indicate reduction in poverty over time. Do you agree. Critically examine with reference to urban and rural poverty indicators.",
    "year": 2015,
    "questionNumber": "Q13",
    "marks": 12.5,
    "wordLimit": 200,
    "order": 8
  },
  {
    "subject": "Social Justice & Governance",
    "topic": "Important Aspects of Governance, Transparency and Accountability, E-Governance, Applications, Models, Successes, Limitations and Potential, Citizen Charter, Transparency and Accountability and Institutional and Other Measures",
    "subtopic": "",
    "question": "e-governance projects have a built-in bias towards technology and back-end integration than user-centric designs. Examine.",
    "year": 2025,
    "questionNumber": "Q7",
    "marks": 10.0,
    "wordLimit": 150,
    "order": 1
  },
  {
    "subject": "Social Justice & Governance",
    "topic": "Important Aspects of Governance, Transparency and Accountability, E-Governance, Applications, Models, Successes, Limitations and Potential, Citizen Charter, Transparency and Accountability and Institutional and Other Measures",
    "subtopic": "",
    "question": "The Citizens' charter has been a landmark initiative in ensuring citizen-centric administration. But it is yet to reach its full potential. Identify the factors hindering the realisation of its promise and suggest measures to overcome them.",
    "year": 2024,
    "questionNumber": "Q16",
    "marks": 15.0,
    "wordLimit": 250,
    "order": 2
  },
  {
    "subject": "Social Justice & Governance",
    "topic": "Important Aspects of Governance, Transparency and Accountability, E-Governance, Applications, Models, Successes, Limitations and Potential, Citizen Charter, Transparency and Accountability and Institutional and Other Measures",
    "subtopic": "",
    "question": "e-governance is not just about the routine application of digital technology in service delivery process. It is as much about multifarious interactions for ensuring transparency and accountability. In this context evaluate the role of the 'Interactive Service Model' of e-governance.",
    "year": 2024,
    "questionNumber": "Q18",
    "marks": 15.0,
    "wordLimit": 250,
    "order": 3
  },
  {
    "subject": "Social Justice & Governance",
    "topic": "Important Aspects of Governance, Transparency and Accountability, E-Governance, Applications, Models, Successes, Limitations and Potential, Citizen Charter, Transparency and Accountability and Institutional and Other Measures",
    "subtopic": "",
    "question": "e-governance, as a critical tool of governance, has ushered in effectiveness, transparency and accountability in governments. What inadequacies hamper the enhancement of these features?",
    "year": 2023,
    "questionNumber": "Q8",
    "marks": 10.0,
    "wordLimit": 150,
    "order": 4
  },
  {
    "subject": "Social Justice & Governance",
    "topic": "Important Aspects of Governance, Transparency and Accountability, E-Governance, Applications, Models, Successes, Limitations and Potential, Citizen Charter, Transparency and Accountability and Institutional and Other Measures",
    "subtopic": "",
    "question": "Reforming the government delivery system through the Direct Benefit Transfer Scheme is a progressive step, but it has its limitations too. Comment.",
    "year": 2022,
    "questionNumber": "Q8",
    "marks": 10.0,
    "wordLimit": 150,
    "order": 5
  },
  {
    "subject": "Social Justice & Governance",
    "topic": "Important Aspects of Governance, Transparency and Accountability, E-Governance, Applications, Models, Successes, Limitations and Potential, Citizen Charter, Transparency and Accountability and Institutional and Other Measures",
    "subtopic": "",
    "question": "“The emergence of Fourth Industrial Revolution (Digital Revolution) has initiated e-Governance as an integral part of government.” Discuss.",
    "year": 2020,
    "questionNumber": "Q8",
    "marks": 10.0,
    "wordLimit": 150,
    "order": 6
  },
  {
    "subject": "Social Justice & Governance",
    "topic": "Important Aspects of Governance, Transparency and Accountability, E-Governance, Applications, Models, Successes, Limitations and Potential, Citizen Charter, Transparency and Accountability and Institutional and Other Measures",
    "subtopic": "",
    "question": "E-governance in not only about utilization of the power of new technology, but also much about critical importance of the 'use value' of information. Explain.",
    "year": 2018,
    "questionNumber": "Q8",
    "marks": 10.0,
    "wordLimit": 150,
    "order": 7
  },
  {
    "subject": "Social Justice & Governance",
    "topic": "Important Aspects of Governance, Transparency and Accountability, E-Governance, Applications, Models, Successes, Limitations and Potential, Citizen Charter, Transparency and Accountability and Institutional and Other Measures",
    "subtopic": "",
    "question": "The Citizen's Charter is an ideal instrument of organisational transparency and accountability, but it has its own limitations. Identify the limitations and suggest measures for greater effectiveness of the Citizen's Charters.",
    "year": 2018,
    "questionNumber": "Q18",
    "marks": 15.0,
    "wordLimit": 250,
    "order": 8
  },
  {
    "subject": "Social Justice & Governance",
    "topic": "Important Aspects of Governance, Transparency and Accountability, E-Governance, Applications, Models, Successes, Limitations and Potential, Citizen Charter, Transparency and Accountability and Institutional and Other Measures",
    "subtopic": "",
    "question": "“Effectiveness of the government system at various levels and people's participation in the governance system are inter-dependent/” Discuss their relationship in the context of India.",
    "year": 2016,
    "questionNumber": "Q11",
    "marks": 12.5,
    "wordLimit": 200,
    "order": 9
  },
  {
    "subject": "Social Justice & Governance",
    "topic": "Important Aspects of Governance, Transparency and Accountability, E-Governance, Applications, Models, Successes, Limitations and Potential, Citizen Charter, Transparency and Accountability and Institutional and Other Measures",
    "subtopic": "",
    "question": "In the integrity index of Transparency International, India stands very low. Discuss briefly the legal, political, social and cultural factors that have caused the decline of public morality in India.",
    "year": 2016,
    "questionNumber": "Q12",
    "marks": 12.5,
    "wordLimit": 200,
    "order": 10
  },
  {
    "subject": "Social Justice & Governance",
    "topic": "Important Aspects of Governance, Transparency and Accountability, E-Governance, Applications, Models, Successes, Limitations and Potential, Citizen Charter, Transparency and Accountability and Institutional and Other Measures",
    "subtopic": "",
    "question": "In the light of Satyam Scandal (2009), discuss the changes brought in the corporate governance to ensure transparency and accountability.",
    "year": 2015,
    "questionNumber": "Q14",
    "marks": 12.5,
    "wordLimit": 200,
    "order": 11
  },
  {
    "subject": "Social Justice & Governance",
    "topic": "Important Aspects of Governance, Transparency and Accountability, E-Governance, Applications, Models, Successes, Limitations and Potential, Citizen Charter, Transparency and Accountability and Institutional and Other Measures",
    "subtopic": "",
    "question": "If amendment bill to the Whistleblowers Protection Act 2011 tabled in the Parliament is passed, there maybe no on left to protect. Critically Evaluate.",
    "year": 2015,
    "questionNumber": "Q15",
    "marks": 12.5,
    "wordLimit": 200,
    "order": 12
  },
  {
    "subject": "Social Justice & Governance",
    "topic": "Important Aspects of Governance, Transparency and Accountability, E-Governance, Applications, Models, Successes, Limitations and Potential, Citizen Charter, Transparency and Accountability and Institutional and Other Measures",
    "subtopic": "",
    "question": "Though Citizen's charters have been formulated by many public service delivery organizations, there is no corresponding improvement in the level of citizens' satisfaction and quality of services being provided. Analyse.",
    "year": 2013,
    "questionNumber": "Q16",
    "marks": 10.0,
    "wordLimit": 200,
    "order": 13
  },
  {
    "subject": "Social Justice & Governance",
    "topic": "Role of Civil Services in a Democracy",
    "subtopic": "",
    "question": "The Doctrine of Democratic Governance makes it necessary that the public perception of the integrity and commitment of civil servants becomes absolutely positive. Discuss.",
    "year": 2024,
    "questionNumber": "Q8",
    "marks": 10.0,
    "wordLimit": 150,
    "order": 1
  },
  {
    "subject": "Social Justice & Governance",
    "topic": "Role of Civil Services in a Democracy",
    "subtopic": "",
    "question": "“Institutional quality is a crucial driver of economic performance.” In this context suggest reforms in Civil Service for strengthening democracy.",
    "year": 2020,
    "questionNumber": "Q7",
    "marks": 10.0,
    "wordLimit": 150,
    "order": 2
  },
  {
    "subject": "Social Justice & Governance",
    "topic": "Role of Civil Services in a Democracy",
    "subtopic": "",
    "question": "Initially, Civil Services in India were designed to achieve the goals of neutrality and effectiveness, which seems to be lacking in the present context. Do you agree with the view that drastic reforms are required in Civil Services? Comment.",
    "year": 2017,
    "questionNumber": "Q18",
    "marks": 15.0,
    "wordLimit": 250,
    "order": 3
  },
  {
    "subject": "Social Justice & Governance",
    "topic": "Role of Civil Services in a Democracy",
    "subtopic": "",
    "question": "“Traditional bureaucratic structure and culture have hampered the process of socio-economic development in India.” Comment.",
    "year": 2016,
    "questionNumber": "Q14",
    "marks": 12.5,
    "wordLimit": 200,
    "order": 4
  },
  {
    "subject": "Social Justice & Governance",
    "topic": "Role of Civil Services in a Democracy",
    "subtopic": "",
    "question": "Has the Cadre based Civil Services Organization been the cause of slow in India? Critically examine.",
    "year": 2014,
    "questionNumber": "Q14",
    "marks": 12.5,
    "wordLimit": 200,
    "order": 5
  },
  {
    "subject": "International Relations",
    "topic": "India and its Neighbourhood Relations",
    "subtopic": "",
    "question": "Discuss the geopolitical and geostrategic importance of Maldives for India with a focus on global trade and/energy flows. Further also discuss how this relationship affects India's maritime security and regional stability amidst international competition?",
    "year": 2024,
    "questionNumber": "Q20",
    "marks": 15.0,
    "wordLimit": 250,
    "order": 1
  },
  {
    "subject": "International Relations",
    "topic": "India and its Neighbourhood Relations",
    "subtopic": "",
    "question": "'India is an age-old friend of Sri Lanka.' Discuss India's role in the recent crisis in Sri Lanka in the light of the preceding statement.",
    "year": 2022,
    "questionNumber": "Q9",
    "marks": 10.0,
    "wordLimit": 150,
    "order": 2
  },
  {
    "subject": "International Relations",
    "topic": "India and its Neighbourhood Relations",
    "subtopic": "",
    "question": "'China is using its economic relations and positive trade surplus as tools to develop potential military power status in Asia', In the light of this statement, discuss its impact on India as her neighbour.",
    "year": 2017,
    "questionNumber": "Q9",
    "marks": 10.0,
    "wordLimit": 150,
    "order": 3
  },
  {
    "subject": "International Relations",
    "topic": "India and its Neighbourhood Relations",
    "subtopic": "",
    "question": "Project 'Mausam' is considered a unique foreign policy initiative of Indian government to improve relationship with its neighbours. Does the project have a strategic dimension? Discuss.",
    "year": 2015,
    "questionNumber": "Q19",
    "marks": 12.5,
    "wordLimit": 200,
    "order": 4
  },
  {
    "subject": "International Relations",
    "topic": "India and its Neighbourhood Relations",
    "subtopic": "",
    "question": "Terrorist activities and mutual distrust have clouded India - Pakistan relations. To what extent the use of soft power like sports and cultural exchange could help generate goodwill between the two countries. Discuss with suitable examples.",
    "year": 2015,
    "questionNumber": "Q20",
    "marks": 12.5,
    "wordLimit": 200,
    "order": 5
  },
  {
    "subject": "International Relations",
    "topic": "India and its Neighbourhood Relations",
    "subtopic": "",
    "question": "With respect to the South China sea, maritime territorial disputes and rising tension affirm the need for safeguarding maritime security to ensure freedom of navigation and over flight throughout the region. In this context, discuss the bilateral issues between India and China.",
    "year": 2014,
    "questionNumber": "Q16",
    "marks": 12.5,
    "wordLimit": 200,
    "order": 6
  },
  {
    "subject": "International Relations",
    "topic": "India and its Neighbourhood Relations",
    "subtopic": "",
    "question": "The proposed withdrawal of International Security Assistance Force (ISAF) from Afghanistan in 2014 is fraught with major security implications for the countries of the region. Examine in light of the fact that India is faced with a plethora of challenges and needs to safeguard its own strategic interests.",
    "year": 2013,
    "questionNumber": "Q18",
    "marks": 10.0,
    "wordLimit": 200,
    "order": 7
  },
  {
    "subject": "International Relations",
    "topic": "India and its Neighbourhood Relations",
    "subtopic": "",
    "question": "What do you understand by 'The String of Pearls'? How does it impact India? Briefly outline the steps taken by India to counter this.",
    "year": 2013,
    "questionNumber": "Q19",
    "marks": 10.0,
    "wordLimit": 200,
    "order": 8
  },
  {
    "subject": "International Relations",
    "topic": "India and its Neighbourhood Relations",
    "subtopic": "",
    "question": "The protests in Shahbag Square in Dhaka in Bangladesh reveal a fundamental split in society between the nationalists and Islamic forces. What is its significance for India?",
    "year": 2013,
    "questionNumber": "Q21",
    "marks": 10.0,
    "wordLimit": 150,
    "order": 9
  },
  {
    "subject": "International Relations",
    "topic": "India and its Neighbourhood Relations",
    "subtopic": "",
    "question": "Discuss the political developments in Maldives in the last two years. Should they be of any cause of concern to India?",
    "year": 2013,
    "questionNumber": "Q22",
    "marks": 10.0,
    "wordLimit": 150,
    "order": 10
  },
  {
    "subject": "International Relations",
    "topic": "India and its Neighbourhood Relations",
    "subtopic": "",
    "question": "In respect of India-Sri Lanka relations, discuss how domestic factors influence foreign policy.",
    "year": 2013,
    "questionNumber": "Q23",
    "marks": 10.0,
    "wordLimit": 150,
    "order": 11
  },
  {
    "subject": "International Relations",
    "topic": "India and its Neighbourhood Relations",
    "subtopic": "",
    "question": "What is meant by Gujral doctrine? Does it have any relevance today? Discuss.",
    "year": 2013,
    "questionNumber": "Q24",
    "marks": 10.0,
    "wordLimit": 150,
    "order": 12
  },
  {
    "subject": "International Relations",
    "topic": "Bilateral, Regional & Global Groupings and Agreements Involving India",
    "subtopic": "",
    "question": "India-Africa digital partnership is achieving mutual respect, co-development and long-term institutional partnerships. Elaborate.",
    "year": 2025,
    "questionNumber": "Q9",
    "marks": 10.0,
    "wordLimit": 150,
    "order": 1
  },
  {
    "subject": "International Relations",
    "topic": "Bilateral, Regional & Global Groupings and Agreements Involving India",
    "subtopic": "",
    "question": "\"Energy security constitutes the dominant kingpin of India's foreign policy, and is linked with India's overarching influence in Middle Eastern countries.\" How would you integrate energy security with India's foreign policy trajectories in the coming 15 years?",
    "year": 2025,
    "questionNumber": "Q19",
    "marks": 15.0,
    "wordLimit": 250,
    "order": 2
  },
  {
    "subject": "International Relations",
    "topic": "Bilateral, Regional & Global Groupings and Agreements Involving India",
    "subtopic": "",
    "question": "Critically analyse India's evolving diplomatic, economic and strategic relations with the Central Asian Republics (CARs) highlighting their increasing significance in regional and global geopolitics.",
    "year": 2024,
    "questionNumber": "Q10",
    "marks": 10.0,
    "wordLimit": 150,
    "order": 3
  },
  {
    "subject": "International Relations",
    "topic": "Bilateral, Regional & Global Groupings and Agreements Involving India",
    "subtopic": "",
    "question": "'Virus of Conflict is affecting the functioning of the SCO'. In the light of the above statement point out the role of India in mitigating problems.",
    "year": 2023,
    "questionNumber": "Q9",
    "marks": 10.0,
    "wordLimit": 150,
    "order": 4
  },
  {
    "subject": "International Relations",
    "topic": "Bilateral, Regional & Global Groupings and Agreements Involving India",
    "subtopic": "",
    "question": "Do you think that BIMSTEC is a parallel organisation like the SAARC? What are the similarities and dissimilarities between the two? How are Indian foreign policy objectives realized by forming this new organisation?",
    "year": 2022,
    "questionNumber": "Q10",
    "marks": 10.0,
    "wordLimit": 150,
    "order": 5
  },
  {
    "subject": "International Relations",
    "topic": "Bilateral, Regional & Global Groupings and Agreements Involving India",
    "subtopic": "",
    "question": "How will I2U2 (India, Israel, UAE and USA) grouping transform India's position in global politics?",
    "year": 2022,
    "questionNumber": "Q19",
    "marks": 15.0,
    "wordLimit": 250,
    "order": 6
  },
  {
    "subject": "International Relations",
    "topic": "Bilateral, Regional & Global Groupings and Agreements Involving India",
    "subtopic": "",
    "question": "\"If the last few decades were of Asia's growth story, the next few are expected to be of Africa's.\" In the light of this statement, examine India's influence in Africa in recent years.",
    "year": 2021,
    "questionNumber": "Q9",
    "marks": 10.0,
    "wordLimit": 150,
    "order": 7
  },
  {
    "subject": "International Relations",
    "topic": "Bilateral, Regional & Global Groupings and Agreements Involving India",
    "subtopic": "",
    "question": "Critically examine the aims and objectives of SCO. What importance does it hold for India.",
    "year": 2021,
    "questionNumber": "Q19",
    "marks": 15.0,
    "wordLimit": 250,
    "order": 8
  },
  {
    "subject": "International Relations",
    "topic": "Bilateral, Regional & Global Groupings and Agreements Involving India",
    "subtopic": "",
    "question": "The newly tri-nation partnership AUKUS is aimed at countering China's ambitions in the Indo-Pacific region. Is it going to supersede the existing partnerships in the region? Discuss the strength and impact of AUKUS in the present scenario.",
    "year": 2021,
    "questionNumber": "Q20",
    "marks": 15.0,
    "wordLimit": 250,
    "order": 9
  },
  {
    "subject": "International Relations",
    "topic": "Bilateral, Regional & Global Groupings and Agreements Involving India",
    "subtopic": "",
    "question": "'Quadilateral Security Dialogue (Quad)' is transforming itself into a trade bloc from a military alliance, in present times - Discuss.",
    "year": 2020,
    "questionNumber": "Q19",
    "marks": 15.0,
    "wordLimit": 250,
    "order": 10
  },
  {
    "subject": "International Relations",
    "topic": "Bilateral, Regional & Global Groupings and Agreements Involving India",
    "subtopic": "",
    "question": "\"The long-sustained image of India as a leader of the oppressed and marginalised nations has disappeared on account of its new found role in the emerging global order.\" Elaborate.",
    "year": 2019,
    "questionNumber": "Q19",
    "marks": 15.0,
    "wordLimit": 250,
    "order": 11
  },
  {
    "subject": "International Relations",
    "topic": "Bilateral, Regional & Global Groupings and Agreements Involving India",
    "subtopic": "",
    "question": "A number of outside powers have entrenched themselves in Central Asia, which is a zone of interest to India. Discuss the implications, in this context, of India's joining the Ashgabat Agreement, 2018.",
    "year": 2018,
    "questionNumber": "Q10",
    "marks": 10.0,
    "wordLimit": 150,
    "order": 12
  },
  {
    "subject": "International Relations",
    "topic": "Bilateral, Regional & Global Groupings and Agreements Involving India",
    "subtopic": "",
    "question": "The question of India's Energy Security constitutes the most important part of India's economic progress. Analyze India's energy policy cooperation with West Asian Countries.",
    "year": 2017,
    "questionNumber": "Q19",
    "marks": 15.0,
    "wordLimit": 250,
    "order": 13
  },
  {
    "subject": "International Relations",
    "topic": "Bilateral, Regional & Global Groupings and Agreements Involving India",
    "subtopic": "",
    "question": "Evaluate the economic and strategic dimensions of India's Look East Policy in the context of the post-Cold War international scenario.",
    "year": 2016,
    "questionNumber": "Q18",
    "marks": 12.5,
    "wordLimit": 200,
    "order": 14
  },
  {
    "subject": "International Relations",
    "topic": "Bilateral, Regional & Global Groupings and Agreements Involving India",
    "subtopic": "",
    "question": "\"Increasing cross-border terrorist attacks in India and growing interference in the internal affairs of member-states by Pakistan are not conducive for the future of SAARC (South Asian Association for Regional Cooperation).\" Explain with suitable examples.",
    "year": 2016,
    "questionNumber": "Q19",
    "marks": 12.5,
    "wordLimit": 200,
    "order": 15
  },
  {
    "subject": "International Relations",
    "topic": "Bilateral, Regional & Global Groupings and Agreements Involving India",
    "subtopic": "",
    "question": "Increasing interest of India in Africa has its pro and cons. Critically Examine.",
    "year": 2015,
    "questionNumber": "Q17",
    "marks": 12.5,
    "wordLimit": 200,
    "order": 16
  },
  {
    "subject": "International Relations",
    "topic": "Bilateral, Regional & Global Groupings and Agreements Involving India",
    "subtopic": "",
    "question": "India has recently signed to become founding member of New Development Bank (NDB) and also the Asian Infrastructure Investment Bank (AIIB). How will the role of the two Banks be different? Discuss the strategic significance of these two Banks for India.",
    "year": 2014,
    "questionNumber": "Q19",
    "marks": 12.5,
    "wordLimit": 200,
    "order": 17
  },
  {
    "subject": "International Relations",
    "topic": "Effect of Policies and Politics of Developed and Developing Countries on India's Interests, Indian Diaspora",
    "subtopic": "",
    "question": "\"With the waning of globalization, post-Cold War world is becoming a site of sovereign nationalism.\" Elucidate.",
    "year": 2025,
    "questionNumber": "Q10",
    "marks": 10.0,
    "wordLimit": 150,
    "order": 1
  },
  {
    "subject": "International Relations",
    "topic": "Effect of Policies and Politics of Developed and Developing Countries on India's Interests, Indian Diaspora",
    "subtopic": "",
    "question": "'The West is fostering India as an alternative to reduce dependence on China's supply chain and as a strategic ally to counter China's political and economic dominance.' Explain this statement with examples.",
    "year": 2024,
    "questionNumber": "Q9",
    "marks": 10.0,
    "wordLimit": 150,
    "order": 2
  },
  {
    "subject": "International Relations",
    "topic": "Effect of Policies and Politics of Developed and Developing Countries on India's Interests, Indian Diaspora",
    "subtopic": "",
    "question": "Indian diaspora has scaled new heights in the West. Describe its economic and political benefits for India.",
    "year": 2023,
    "questionNumber": "Q10",
    "marks": 10.0,
    "wordLimit": 150,
    "order": 3
  },
  {
    "subject": "International Relations",
    "topic": "Effect of Policies and Politics of Developed and Developing Countries on India's Interests, Indian Diaspora",
    "subtopic": "",
    "question": "'The expansion and strengthening of NATO and a stronger US-Europe strategic partnership works well in India.' What is your opinion about this statement? Give reasons and examples to support your answer.",
    "year": 2023,
    "questionNumber": "Q19",
    "marks": 15.0,
    "wordLimit": 250,
    "order": 4
  },
  {
    "subject": "International Relations",
    "topic": "Effect of Policies and Politics of Developed and Developing Countries on India's Interests, Indian Diaspora",
    "subtopic": "",
    "question": "\"The USA is facing an existential threat in the form of a China, that is much more challenging than the erstwhile Soviet Union.\" Explain.",
    "year": 2021,
    "questionNumber": "Q10",
    "marks": 10.0,
    "wordLimit": 150,
    "order": 5
  },
  {
    "subject": "International Relations",
    "topic": "Effect of Policies and Politics of Developed and Developing Countries on India's Interests, Indian Diaspora",
    "subtopic": "",
    "question": "'Indian diaspora has a decisive role to play in the politics and economy of America and European Countries.' Comment with examples.",
    "year": 2020,
    "questionNumber": "Q10",
    "marks": 10.0,
    "wordLimit": 150,
    "order": 6
  },
  {
    "subject": "International Relations",
    "topic": "Effect of Policies and Politics of Developed and Developing Countries on India's Interests, Indian Diaspora",
    "subtopic": "",
    "question": "What is the significance of Indo-US defence deals over Indo-Russian defence deals? Discuss with reference to stability in the Indo-Pacific region.",
    "year": 2020,
    "questionNumber": "Q20",
    "marks": 15.0,
    "wordLimit": 250,
    "order": 7
  },
  {
    "subject": "International Relations",
    "topic": "Effect of Policies and Politics of Developed and Developing Countries on India's Interests, Indian Diaspora",
    "subtopic": "",
    "question": "'The time has come for India and Japan to build a strong contemporary relationship, one involving global and strategic partnership that will have a great significance for Asia and the world as a whole.' Comment.",
    "year": 2019,
    "questionNumber": "Q9",
    "marks": 10.0,
    "wordLimit": 150,
    "order": 8
  },
  {
    "subject": "International Relations",
    "topic": "Effect of Policies and Politics of Developed and Developing Countries on India's Interests, Indian Diaspora",
    "subtopic": "",
    "question": "What introduces friction into the ties between India and the United States is that Washington is still unable to find for India a position in its global strategy, which would satisfy India's national self-esteem and ambitions. Explain with suitable examples.",
    "year": 2019,
    "questionNumber": "Q20",
    "marks": 15.0,
    "wordLimit": 250,
    "order": 9
  },
  {
    "subject": "International Relations",
    "topic": "Effect of Policies and Politics of Developed and Developing Countries on India's Interests, Indian Diaspora",
    "subtopic": "",
    "question": "\"India's relations with Israel have, of late, acquired a depth and diversity, which cannot be rolled back.\" Discuss.",
    "year": 2018,
    "questionNumber": "Q9",
    "marks": 10.0,
    "wordLimit": 150,
    "order": 10
  },
  {
    "subject": "International Relations",
    "topic": "Effect of Policies and Politics of Developed and Developing Countries on India's Interests, Indian Diaspora",
    "subtopic": "",
    "question": "In what ways would the ongoing US-Iran Nuclear Pact Controversy affect the national interest of India? How should India respond to its situation?",
    "year": 2018,
    "questionNumber": "Q20",
    "marks": 15.0,
    "wordLimit": 250,
    "order": 11
  },
  {
    "subject": "International Relations",
    "topic": "Effect of Policies and Politics of Developed and Developing Countries on India's Interests, Indian Diaspora",
    "subtopic": "",
    "question": "Indian Diaspora has an important role to play in South-East Asian countries' economy and society. Appraise the role of Indian Diaspora in South-East Asia in this context.",
    "year": 2017,
    "questionNumber": "Q20",
    "marks": 15.0,
    "wordLimit": 250,
    "order": 12
  },
  {
    "subject": "International Relations",
    "topic": "Effect of Policies and Politics of Developed and Developing Countries on India's Interests, Indian Diaspora",
    "subtopic": "",
    "question": "The aim of Information Technology Agreements (ITAs) is to lower all taxes and tariffs on Information technology products by signatories to zero. What impact would such agreements have on India's interests?",
    "year": 2014,
    "questionNumber": "Q17",
    "marks": 12.5,
    "wordLimit": 200,
    "order": 13
  },
  {
    "subject": "International Relations",
    "topic": "Effect of Policies and Politics of Developed and Developing Countries on India's Interests, Indian Diaspora",
    "subtopic": "",
    "question": "Economic ties between India and Japan while growing in the recent years are still far below their potential. Elucidate the policy constraints which are inhibiting this growth.",
    "year": 2013,
    "questionNumber": "Q20",
    "marks": 10.0,
    "wordLimit": 200,
    "order": 14
  },
  {
    "subject": "International Relations",
    "topic": "Important International Institutions, Agencies and Fora - Structure, Mandate",
    "subtopic": "",
    "question": "\"The reform process in the United Nations remains unresolved, because of the delicate imbalance of East and West and entanglement of the USA vs. Russo-Chinese alliance.\" Examine and critically evaluate the East-West policy confrontations in this regard.",
    "year": 2025,
    "questionNumber": "Q20",
    "marks": 15.0,
    "wordLimit": 250,
    "order": 1
  },
  {
    "subject": "International Relations",
    "topic": "Important International Institutions, Agencies and Fora - Structure, Mandate",
    "subtopic": "",
    "question": "'Terrorism has become a significant threat to global peace and security.' Evaluate the effectiveness of the United Nations Security Council's Counter Terrorism Committee (CTC) and its associated bodies in addressing and mitigating this threat at the international level.",
    "year": 2024,
    "questionNumber": "Q19",
    "marks": 15.0,
    "wordLimit": 250,
    "order": 2
  },
  {
    "subject": "International Relations",
    "topic": "Important International Institutions, Agencies and Fora - Structure, Mandate",
    "subtopic": "",
    "question": "'Sea is an important Component of the Cosmos'. Discuss in the light of the above statement the role of the IMO (International Maritime Organisation) in protecting environment and enhancing maritime safety and security.",
    "year": 2023,
    "questionNumber": "Q20",
    "marks": 15.0,
    "wordLimit": 250,
    "order": 3
  },
  {
    "subject": "International Relations",
    "topic": "Important International Institutions, Agencies and Fora - Structure, Mandate",
    "subtopic": "",
    "question": "'Clean energy is the order of the day.' Describe briefly India's changing policy towards climate change in various international fora in the context of geopolitics.",
    "year": 2022,
    "questionNumber": "Q20",
    "marks": 15.0,
    "wordLimit": 250,
    "order": 4
  },
  {
    "subject": "International Relations",
    "topic": "Important International Institutions, Agencies and Fora - Structure, Mandate",
    "subtopic": "",
    "question": "Critically examine the role of WHO in providing global health security during the Covid-19 pandemic.",
    "year": 2020,
    "questionNumber": "Q9",
    "marks": 10.0,
    "wordLimit": 150,
    "order": 5
  },
  {
    "subject": "International Relations",
    "topic": "Important International Institutions, Agencies and Fora - Structure, Mandate",
    "subtopic": "",
    "question": "'Too little cash, too much politics, leave UNESCO fighting for life.' Discuss the statement in the light of US' withdrawal and its accusation of the cultural body as being 'anti-Israel bias'.",
    "year": 2019,
    "questionNumber": "Q10",
    "marks": 10.0,
    "wordLimit": 150,
    "order": 6
  },
  {
    "subject": "International Relations",
    "topic": "Important International Institutions, Agencies and Fora - Structure, Mandate",
    "subtopic": "",
    "question": "What are the key areas of reform if the WTO has to survive in the present context of 'Trade War', especially keeping in mind the interest of India?",
    "year": 2018,
    "questionNumber": "Q19",
    "marks": 15.0,
    "wordLimit": 250,
    "order": 7
  },
  {
    "subject": "International Relations",
    "topic": "Important International Institutions, Agencies and Fora - Structure, Mandate",
    "subtopic": "",
    "question": "What are the main functions of the United Nations Economic and Social Council (ECOSOC)? Explain different functional commissions attached to it.",
    "year": 2017,
    "questionNumber": "Q10",
    "marks": 10.0,
    "wordLimit": 150,
    "order": 8
  },
  {
    "subject": "International Relations",
    "topic": "Important International Institutions, Agencies and Fora - Structure, Mandate",
    "subtopic": "",
    "question": "\"The broader aims and objectives of WTO are to manage and promote international trade in the era of globalization. But the Doha round of negotiations seem doomed due to differences between the developed and the developing countries.\" Discuss in the Indian perspective.",
    "year": 2016,
    "questionNumber": "Q17",
    "marks": 12.5,
    "wordLimit": 200,
    "order": 9
  },
  {
    "subject": "International Relations",
    "topic": "Important International Institutions, Agencies and Fora - Structure, Mandate",
    "subtopic": "",
    "question": "What are the aims and objectives of the McBride Commission of the UNESCO? What is India's position on these?",
    "year": 2016,
    "questionNumber": "Q20",
    "marks": 12.5,
    "wordLimit": 200,
    "order": 10
  },
  {
    "subject": "International Relations",
    "topic": "Important International Institutions, Agencies and Fora - Structure, Mandate",
    "subtopic": "",
    "question": "Discuss the impediments India is facing in its pursuit of a permanent seat in UNSC.",
    "year": 2015,
    "questionNumber": "Q18",
    "marks": 12.5,
    "wordLimit": 200,
    "order": 11
  },
  {
    "subject": "International Relations",
    "topic": "Important International Institutions, Agencies and Fora - Structure, Mandate",
    "subtopic": "",
    "question": "Some of the International funding agencies have special terms for economic participation stipulating a substantial component of the aid used for sourcing equipment from the leading countries. Discuss on merits of such terms and it, there exists a strong case not to accept such conditions in the Indian context.",
    "year": 2014,
    "questionNumber": "Q18",
    "marks": 12.5,
    "wordLimit": 200,
    "order": 12
  },
  {
    "subject": "International Relations",
    "topic": "Important International Institutions, Agencies and Fora - Structure, Mandate",
    "subtopic": "",
    "question": "WTO is an important international institution where decisions taken, affect countries in a profound manner. What is the mandate of WTO and how binding are their decisions? Critically analyse India's stand on the latest round of talks on Food security.",
    "year": 2014,
    "questionNumber": "Q20",
    "marks": 12.5,
    "wordLimit": 200,
    "order": 13
  },
  {
    "subject": "International Relations",
    "topic": "Important International Institutions, Agencies and Fora - Structure, Mandate",
    "subtopic": "",
    "question": "The World Bank and the IMF, collectively known as the Bretton Woods Institutions, are the two inter-governmental pillars supporting the structure of the world's economic and financial order. Superficially, the World Bank and the IMF exhibit many common characteristics, yet their role, functions and mandate are distinctly different. Elucidate.",
    "year": 2013,
    "questionNumber": "Q20",
    "marks": 10.0,
    "wordLimit": 150,
    "order": 14
  }
];
}
