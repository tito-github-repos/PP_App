
import 'package:cloud_firestore/cloud_firestore.dart';

class PolitySeeder {
  PolitySeeder._();

  static final FirebaseFirestore _firestore =
      FirebaseFirestore.instance;


  static Future<void> seedPolityTrueFalse2() async {
    final subjectRef = _firestore.collection('subjects').doc('polity');

    await subjectRef.set({
      'name': 'Indian Polity',
      'order': 2,
    }, SetOptions(merge: true));

    final topicRef12 =
        subjectRef.collection('topics').doc('judiciary_and_judicial_system');

    await topicRef12.set({
      'name': 'Judiciary and Judicial System',
      'order': 12,
    });
    await topicRef12.collection('questions').doc('question_1').set({
      'questionId': 1,
      'order': 1,
      'statements': [
          {'text': 'A Writ of Prohibition is an order issued by the Supreme Court or High Courts to the lower court prohibiting continuation of proceedings in a case.', 'isCorrect': true},
          {'text': 'A Writ of Prohibition is an order issued by the Supreme Court or High Courts to a government officer prohibiting him from taking a particular action.', 'isCorrect': false},
      ],
    });
    await topicRef12.collection('questions').doc('question_2').set({
      'questionId': 2,
      'order': 2,
      'statements': [
          {'text': 'The Contempt of Courts Act, 1971 was passed pursuant to the report of the H.N. Sanyal Committee, the Constitution empowers the Supreme Court and High Courts to punish for contempt of themselves, and Parliament is vested with the power to make laws on Contempt of Court.', 'isCorrect': true},
          {'text': 'The Constitution of India defines Civil Contempt and Criminal Contempt.', 'isCorrect': false},
      ],
    });
    await topicRef12.collection('questions').doc('question_3').set({
      'questionId': 3,
      'order': 3,
      'statements': [
          {'text': 'Mandamus will lie against a private organisation entrusted with a public duty, and it can lie against a Company even if it is a Government Company.', 'isCorrect': true},
          {'text': 'Mandamus will not lie against a private organisation even if it is entrusted with a public duty.', 'isCorrect': false},
      ],
    });
    await topicRef12.collection('questions').doc('question_4').set({
      'questionId': 4,
      'order': 4,
      'statements': [
          {'text': 'Bar Councils have the power to lay down rules relating to legal education and the recognition of law colleges.', 'isCorrect': true},
          {'text': 'Government law officers and legal firms are recognised as advocates, but corporate lawyers and patent attorneys are excluded from recognition as advocates.', 'isCorrect': false},
      ],
    });
    await topicRef12.collection('questions').doc('question_5').set({
      'questionId': 5,
      'order': 5,
      'statements': [
          {'text': 'Any retired judge of the Supreme Court of India can be called back to sit and act as a Supreme Court judge by the Chief Justice of India with the prior permission of the President of India.', 'isCorrect': true},
          {'text': 'A High Court in India has the power to review its own judgement, just as the Supreme Court does.', 'isCorrect': false},
      ],
    });
    await topicRef12.collection('questions').doc('question_6').set({
      'questionId': 6,
      'order': 6,
      'statements': [
          {'text': 'The details of the process of impeachment of Supreme Court Judges are given in the Judges (Inquiry) Act, 1968, and a motion for impeachment requires support of a majority of the total membership of each House and not less than two-thirds of members present and voting.', 'isCorrect': true},
          {'text': 'The motion to impeach a Judge of the Supreme Court of India cannot be rejected by the Speaker of the Lok Sabha as per the Judges (Inquiry) Act, 1968.', 'isCorrect': false},
      ],
    });
    await topicRef12.collection('questions').doc('question_7').set({
      'questionId': 7,
      'order': 7,
      'statements': [
          {'text': 'The Supreme Court of India is not constrained in the exercise of its powers under Article 142 by the laws made by Parliament.', 'isCorrect': true},
          {'text': 'State Legislatures cannot make laws on certain matters without the concurrence of the Union Legislature, as per Article 142.', 'isCorrect': false},
      ],
    });
    await topicRef12.collection('questions').doc('question_8').set({
      'questionId': 8,
      'order': 8,
      'statements': [
          {'text': 'High Courts do have the jurisdiction to declare a central law to be constitutionally invalid, and an amendment to the Constitution can be called into question by the Supreme Court.', 'isCorrect': true},
          {'text': 'No High Court shall have the jurisdiction to declare any central law to be constitutionally invalid.', 'isCorrect': false},
      ],
    });
    await topicRef12.collection('questions').doc('question_9').set({
      'questionId': 9,
      'order': 9,
      'statements': [
          {'text': 'The Gram Nyayalaya Act allows local social activists to serve as mediators or conciliators.', 'isCorrect': true},
          {'text': 'As per the Gram Nyayalaya Act, Gram Nyayalayas can hear only civil cases and not criminal cases.', 'isCorrect': false},
      ],
    });
    await topicRef12.collection('questions').doc('question_10').set({
      'questionId': 10,
      'order': 10,
      'statements': [
          {'text': 'The Supreme Court of India is regarded as the Custodian of the Constitution of India.', 'isCorrect': true},
          {'text': 'The President of India is regarded as the Custodian of the Constitution of India.', 'isCorrect': false},
      ],
    });
    await topicRef12.collection('questions').doc('question_11').set({
      'questionId': 11,
      'order': 11,
      'statements': [
          {'text': 'The power of the Supreme Court of India to decide disputes between the Centre and the States falls under its original jurisdiction.', 'isCorrect': true},
          {'text': 'The power of the Supreme Court of India to decide disputes between the Centre and the States falls under its appellate jurisdiction.', 'isCorrect': false},
      ],
    });
    await topicRef12.collection('questions').doc('question_12').set({
      'questionId': 12,
      'order': 12,
      'statements': [
          {'text': 'The power to increase the number of judges in the Supreme Court of India is vested in the Parliament.', 'isCorrect': true},
          {'text': 'The power to increase the number of judges in the Supreme Court of India is vested in the President of India.', 'isCorrect': false},
      ],
    });
    await topicRef12.collection('questions').doc('question_13').set({
      'questionId': 13,
      'order': 13,
      'statements': [
          {'text': 'While appointing Supreme Court Judges, the President of India has to consult the Chief Justice of India, and the salaries of the Judges are charged on the Consolidated Fund of India, to which the legislature does not have to vote.', 'isCorrect': true},
          {'text': 'The Supreme Court Judges can be removed by the Chief Justice of India alone.', 'isCorrect': false},
      ],
    });
    await topicRef12.collection('questions').doc('question_14').set({
      'questionId': 14,
      'order': 14,
      'statements': [
          {'text': 'A dispute between the Government of India and one or more States, and a dispute between two or more States, fall within the original jurisdiction of the Supreme Court.', 'isCorrect': true},
          {'text': 'A dispute regarding elections to either House of Parliament or a State Legislature falls within the original jurisdiction of the Supreme Court.', 'isCorrect': false},
      ],
    });
    await topicRef12.collection('questions').doc('question_15').set({
      'questionId': 15,
      'order': 15,
      'statements': [
          {'text': 'The Supreme Court of India tenders advice to the President of India on matters of law or fact only if he seeks such advice.', 'isCorrect': true},
          {'text': 'The Supreme Court of India tenders advice to the President of India on its own initiative, on any matter of larger public interest.', 'isCorrect': false},
      ],
    });
    await topicRef12.collection('questions').doc('question_16').set({
      'questionId': 16,
      'order': 16,
      'statements': [
          {'text': 'Lok Adalats can settle matters pending before courts as well as at the pre-litigation stage, and every Lok Adalat need not consist only of serving or retired judicial officers.', 'isCorrect': true},
          {'text': 'Lok Adalats have jurisdiction to settle matters only at the pre-litigation stage, and not those pending before any court.', 'isCorrect': false},
      ],
    });
    await topicRef12.collection('questions').doc('question_17').set({
      'questionId': 17,
      'order': 17,
      'statements': [
          {'text': 'The Advocate General of a State in India is appointed by the Governor of the concerned State, not the President.', 'isCorrect': true},
          {'text': 'The Advocate General of a State in India is appointed by the President of India upon the recommendation of the Governor of the concerned State.', 'isCorrect': false},
      ],
    });
    await topicRef12.collection('questions').doc('question_18').set({
      'questionId': 18,
      'order': 18,
      'statements': [
          {'text': 'An award made by a Lok Adalat is deemed to be a decree of a civil court, and no appeal lies against it before any court.', 'isCorrect': true},
          {'text': 'Matrimonial and family disputes are not covered under Lok Adalat.', 'isCorrect': false},
      ],
    });
    await topicRef12.collection('questions').doc('question_19').set({
      'questionId': 19,
      'order': 19,
      'statements': [
          {'text': 'Justice V. R. Krishna Iyer is considered one of the progenitors of public interest litigation (PIL) in the Indian judicial system.', 'isCorrect': true},
          {'text': 'Justice V. R. Krishna Iyer was the Chief Justice of India.', 'isCorrect': false},
      ],
    });
    await topicRef12.collection('questions').doc('question_20').set({
      'questionId': 20,
      'order': 20,
      'statements': [
          {'text': 'Three High Courts in India have jurisdiction over more than one State, excluding Union Territories.', 'isCorrect': true},
          {'text': 'Two High Courts in India have jurisdiction over more than one State, excluding Union Territories.', 'isCorrect': false},
      ],
    });
    await topicRef12.collection('questions').doc('question_21').set({
      'questionId': 21,
      'order': 21,
      'statements': [
          {'text': 'The mode of removal of a Judge of a High Court in India is the same as that for removal of a Judge of the Supreme Court.', 'isCorrect': true},
          {'text': 'After retirement, a permanent Judge of a High Court cannot plead or act in any court or before any authority in India.', 'isCorrect': false},
      ],
    });
    await topicRef12.collection('questions').doc('question_22').set({
      'questionId': 22,
      'order': 22,
      'statements': [
          {'text': 'The Constitution of India provides for a High Court in each state, but it is not the case that every state currently has its own separate High Court.', 'isCorrect': true},
          {'text': 'In India, every state individually has its own High Court in its territory.', 'isCorrect': false},
      ],
    });
    await topicRef12.collection('questions').doc('question_23').set({
      'questionId': 23,
      'order': 23,
      'statements': [
          {'text': 'A person who has held office as a permanent Judge of a High Court can plead or act in courts other than the Supreme Court and their own former High Court, and the minimum judicial-office requirement for High Court judgeship differs from a flat five years.', 'isCorrect': true},
          {'text': 'A person who has held office as a permanent Judge of a High Court cannot plead or act in any court or before any authority in India except the Supreme Court.', 'isCorrect': false},
      ],
    });
    await topicRef12.collection('questions').doc('question_24').set({
      'questionId': 24,
      'order': 24,
      'statements': [
          {'text': 'P. N. Bhagwati was the Chief Justice of India when public interest litigation (PIL) was introduced to the Indian judicial system.', 'isCorrect': true},
          {'text': 'M. Hidayatullah was the Chief Justice of India when public interest litigation (PIL) was introduced to the Indian judicial system.', 'isCorrect': false},
      ],
    });
    await topicRef12.collection('questions').doc('question_25').set({
      'questionId': 25,
      'order': 25,
      'statements': [
          {'text': 'The Parliament can enlarge the jurisdiction of the Supreme Court of India, and the officers and servants of the Supreme Court and High Courts are not solely appointed by the concerned Chief Justice in all respects.', 'isCorrect': true},
          {'text': 'The Parliament cannot enlarge the jurisdiction of the Supreme Court of India, as its jurisdiction is limited to that conferred by the Constitution.', 'isCorrect': false},
      ],
    });
    await topicRef12.collection('questions').doc('question_26').set({
      'questionId': 26,
      'order': 26,
      'statements': [
          {'text': 'There are 25 High Courts in India, Punjab, Haryana, and the Union Territory of Chandigarh have a common High Court, and the National Capital Territory of Delhi has a High Court of its own.', 'isCorrect': true},
          {'text': 'There are only 21 High Courts in India.', 'isCorrect': false},
      ],
    });
    await topicRef12.collection('questions').doc('question_27').set({
      'questionId': 27,
      'order': 27,
      'statements': [
          {'text': 'Lok Adalats are held for motor accident cases.', 'isCorrect': true},
          {'text': 'Lok Adalats are held for disputes with mobile cellular companies.', 'isCorrect': false},
      ],
    });
    await topicRef12.collection('questions').doc('question_28').set({
      'questionId': 28,
      'order': 28,
      'statements': [
          {'text': 'The highest criminal court of the district is the Court of District and Sessions Judge, District Judges are appointed by the Governor in consultation with the High Court, a District Judge must be an advocate or pleader of seven years\' standing or an officer in judicial service, and a death sentence awarded by the Sessions Judge must be confirmed by the High Court.', 'isCorrect': true},
          {'text': 'District Judges in India are appointed directly by the President of India, without consultation with the High Court.', 'isCorrect': false},
      ],
    });
    await topicRef12.collection('questions').doc('question_29').set({
      'questionId': 29,
      'order': 29,
      'statements': [
          {'text': 'The power to enlarge the jurisdiction of the Supreme Court of India with respect to matters in the Union List rests with the Parliament.', 'isCorrect': true},
          {'text': 'The power to enlarge the jurisdiction of the Supreme Court of India with respect to matters in the Union List rests with the President of India.', 'isCorrect': false},
      ],
    });
    await topicRef12.collection('questions').doc('question_30').set({
      'questionId': 30,
      'order': 30,
      'statements': [
          {'text': 'The Calcutta High Court has territorial jurisdiction over the Andaman and Nicobar Islands.', 'isCorrect': true},
          {'text': 'The Madras High Court has territorial jurisdiction over the Andaman and Nicobar Islands.', 'isCorrect': false},
      ],
    });
    await topicRef12.collection('questions').doc('question_31').set({
      'questionId': 31,
      'order': 31,
      'statements': [
          {'text': 'The salaries and allowances of the Judges of the High Court are charged to the Consolidated Fund of the State.', 'isCorrect': true},
          {'text': 'The salaries and allowances of the Judges of the High Court are charged to the Consolidated Fund of India.', 'isCorrect': false},
      ],
    });
    await topicRef12.collection('questions').doc('question_32').set({
      'questionId': 32,
      'order': 32,
      'statements': [
          {'text': 'Three High Courts in India have jurisdiction over more than one State, and Judges of the High Court hold office till the age of 62.', 'isCorrect': true},
          {'text': 'There are eighteen High Courts in the country, and no Union Territory has a High Court of its own.', 'isCorrect': false},
      ],
    });
    await topicRef12.collection('questions').doc('question_33').set({
      'questionId': 33,
      'order': 33,
      'statements': [
          {'text': 'The Supreme Court of India tenders advice to the President on a matter of law or fact only if he seeks such advice.', 'isCorrect': true},
          {'text': 'The Supreme Court of India tenders advice to the President on a matter of law or fact on its own initiative.', 'isCorrect': false},
      ],
    });
    await topicRef12.collection('questions').doc('question_34').set({
      'questionId': 34,
      'order': 34,
      'statements': [
          {'text': 'The concept of Public Interest Litigation originated in the United States.', 'isCorrect': true},
          {'text': 'The concept of Public Interest Litigation originated in the United Kingdom.', 'isCorrect': false},
      ],
    });
    await topicRef12.collection('questions').doc('question_35').set({
      'questionId': 35,
      'order': 35,
      'statements': [
          {'text': 'Willful disobedience or noncompliance of Court Orders and the use of derogatory language about judicial behaviour amounts to Contempt of Court, and judicial activism requires the judiciary to have punitive powers, though this is not the full explanation for the former.', 'isCorrect': true},
          {'text': 'Willful disobedience of Court Orders does not amount to Contempt of Court.', 'isCorrect': false},
      ],
    });
    await topicRef12.collection('questions').doc('question_36').set({
      'questionId': 36,
      'order': 36,
      'statements': [
          {'text': 'The power of the Supreme Court of India to decide disputes between the Centre and the States falls under its original jurisdiction.', 'isCorrect': true},
          {'text': 'The power of the Supreme Court of India to decide disputes between the Centre and the States falls under its constitutional jurisdiction.', 'isCorrect': false},
      ],
    });
    await topicRef12.collection('questions').doc('question_37').set({
      'questionId': 37,
      'order': 37,
      'statements': [
          {'text': 'When the Chief Justice of a High Court acts in an administrative capacity, he is subject to the writ jurisdiction of any of the other judges of the High Court.', 'isCorrect': true},
          {'text': 'When the Chief Justice of a High Court acts in an administrative capacity, he is subject to the special control of the Chief Justice of India.', 'isCorrect': false},
      ],
    });
    await topicRef12.collection('questions').doc('question_38').set({
      'questionId': 38,
      'order': 38,
      'statements': [
          {'text': 'According to the Constitution of India, the term \'district judge\' does not include a tribunal judge.', 'isCorrect': true},
          {'text': 'According to the Constitution of India, the term \'district judge\' does not include a sessions judge.', 'isCorrect': false},
      ],
    });
    final topicRef13 =
        subjectRef.collection('topics').doc('elections_election_commission_and_rpa');

    await topicRef13.set({
      'name': 'Elections, Election Commission and RPA',
      'order': 13,
    });
    await topicRef13.collection('questions').doc('question_1').set({
      'questionId': 1,
      'order': 1,
      'statements': [
          {'text': 'Four Delimitation Commissions had been constituted by the Government of India till December 2023.', 'isCorrect': true},
          {'text': 'Three Delimitation Commissions had been constituted by the Government of India till December 2023.', 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc('question_2').set({
      'questionId': 2,
      'order': 2,
      'statements': [
          {'text': 'In the 1991 Lok Sabha election, Shri Devi Lal contested from three Lok Sabha constituencies, and as per existing rules, a candidate\'s party should bear the cost of bye-elections to constituencies vacated if the candidate wins from multiple constituencies.', 'isCorrect': true},
          {'text': 'In India, there is a law restricting candidates from contesting a Lok Sabha election from more than one constituency.', 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc('question_3').set({
      'questionId': 3,
      'order': 3,
      'statements': [
          {'text': 'According to the Constitution, a person eligible to vote can be made a minister in a State for six months even without being a member of the State Legislature, but a person convicted and sentenced to five years\' imprisonment is not permanently disqualified after release.', 'isCorrect': true},
          {'text': 'According to the Representation of the People Act, 1951, a person convicted and sentenced to five years\' imprisonment is permanently disqualified from contesting elections even after release from prison.', 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc('question_4').set({
      'questionId': 4,
      'order': 4,
      'statements': [
          {'text': 'For election to the Lok Sabha, a nomination paper can be filed by any citizen of India whose name appears in the electoral roll of a constituency.', 'isCorrect': true},
          {'text': 'For election to the Lok Sabha, a nomination paper can be filed by any citizen of India, regardless of whether their name appears on any electoral roll.', 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc('question_5').set({
      'questionId': 5,
      'order': 5,
      'statements': [
          {'text': 'The Election Commission resolves disputes relating to splits or mergers of recognised political parties.', 'isCorrect': true},
          {'text': 'The Union Ministry of Home Affairs decides the election schedule for the conduct of both general elections and bye-elections.', 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc('question_6').set({
      'questionId': 6,
      'order': 6,
      'statements': [
          {'text': 'The orders of the Delimitation Commission cannot be challenged in a Court of Law, and when laid before the Lok Sabha or a State Legislative Assembly, they cannot be modified.', 'isCorrect': true},
          {'text': 'The orders of the Delimitation Commission can be challenged in a Court of Law.', 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc('question_7').set({
      'questionId': 7,
      'order': 7,
      'statements': [
          {'text': 'The Election Commission was set up in pursuance of a definite provision under an Article of the Constitution of India.', 'isCorrect': true},
          {'text': 'The National Human Rights Commission was set up in pursuance of a definite provision under an Article of the Constitution of India.', 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc('question_8').set({
      'questionId': 8,
      'order': 8,
      'statements': [
          {'text': 'Superintendence, direction and conduct of free and fair elections, preparation of electoral rolls, and giving recognition to political parties and allotting election symbols are functions of the Election Commission of India.', 'isCorrect': true},
          {'text': 'Proclamation of the final verdict in election disputes is a function of the Election Commission of India.', 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc('question_9').set({
      'questionId': 9,
      'order': 9,
      'statements': [
          {'text': 'The President made a reference to the Supreme Court under Article 143 to seek the Court\'s opinion on the constitutional validity of the Election Commission\'s decision on deferring the Gujarat Assembly elections in 2002.', 'isCorrect': true},
          {'text': 'The President made a reference to the Supreme Court under Article 142 to seek the Court\'s opinion on the constitutional validity of the Election Commission\'s decision on deferring the Gujarat Assembly elections in 2002.', 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc('question_10').set({
      'questionId': 10,
      'order': 10,
      'statements': [
          {'text': 'The Chief Election Commissioner is entitled to the same salary as a judge of the Supreme Court, and cannot be removed except in the same manner and on the same grounds as a Supreme Court judge.', 'isCorrect': true},
          {'text': 'The Chief Election Commissioner and other Election Commissioners enjoy equal powers but receive unequal salaries.', 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc('question_11').set({
      'questionId': 11,
      'order': 11,
      'statements': [
          {'text': 'For election to the Lok Sabha, the security deposit is Rs 5,000 for general category candidates and Rs 2,500 for SC/ST category candidates.', 'isCorrect': true},
          {'text': 'For election to the Lok Sabha, the security deposit is Rs 10,000 for general category candidates and Rs 5,000 for SC/ST category candidates.', 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc('question_12').set({
      'questionId': 12,
      'order': 12,
      'statements': [
          {'text': 'The Representation of the People Act, 1951 provides for the registration of political parties, registration is carried out by the Election Commission, a national party is one recognised in four or more States, and in the 1999 general elections there were six National and 48 State level recognised parties.', 'isCorrect': true},
          {'text': 'Registration of political parties in India is carried out by the Ministry of Law and Justice, not the Election Commission.', 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc('question_13').set({
      'questionId': 13,
      'order': 13,
      'statements': [
          {'text': 'Conviction for insulting the Indian National Flag or the Constitution entails disqualification from contesting elections for six years, there was an increase in the security deposit for Lok Sabha elections, and no election will be countermanded on the death of a contesting candidate.', 'isCorrect': true},
          {'text': 'A candidate can now stand for election from more than one Parliamentary constituency, as per the Representation of the People (Amendment) Act, 1996.', 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc('question_14').set({
      'questionId': 14,
      'order': 14,
      'statements': [
          {'text': 'Political parties contesting elections can allocate thirty-three percent of the seats they contest to women candidates without any constitutional amendment.', 'isCorrect': true},
          {'text': 'The reservation of thirty-three percent of seats for women in Parliament and State Legislatures does not require a Constitutional amendment.', 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc('question_15').set({
      'questionId': 15,
      'order': 15,
      'statements': [
          {'text': 'State funding of elections takes place in Germany and Austria.', 'isCorrect': true},
          {'text': 'State funding of elections takes place in the USA and Canada.', 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc('question_16').set({
      'questionId': 16,
      'order': 16,
      'statements': [
          {'text': 'The Dinesh Goswami Committee recommended governmental funding of parliamentary elections.', 'isCorrect': true},
          {'text': 'The Dinesh Goswami Committee recommended a List System of election to the Lok Sabha.', 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc('question_17').set({
      'questionId': 17,
      'order': 17,
      'statements': [
          {'text': 'The recommendation for election is made by the Election Commission, and the notification for election is issued by the President and Governors of the States concerned.', 'isCorrect': true},
          {'text': 'The recommendation for election is made by the government, and the notification for election is issued by the Election Commission.', 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc('question_18').set({
      'questionId': 18,
      'order': 18,
      'statements': [
          {'text': 'None of the Muslim League, Revolutionary Socialist Party, All India Forward Block, or Peasants and Workers Party of India were national political parties, as per the given options.', 'isCorrect': true},
          {'text': 'The Muslim League, Revolutionary Socialist Party, and All India Forward Block were all national political parties.', 'isCorrect': false},
      ],
    });
    final topicRef14 =
        subjectRef.collection('topics').doc('various_constitutional_non_constitutional_posts_and_bodies');

    await topicRef14.set({
      'name': 'Various Constitutional & Non-Constitutional Posts and Bodies',
      'order': 14,
    });
    await topicRef14.collection('questions').doc('question_1').set({
      'questionId': 1,
      'order': 1,
      'statements': [
          {'text': 'The Chairperson or a Member of the Lokpal shall not be a person of less than forty-five years of age on the date of assuming office.', 'isCorrect': true},
          {'text': 'The power of the Lokpal applies to public servants of India, but not to Indian public servants posted outside India.', 'isCorrect': false},
      ],
    });
    await topicRef14.collection('questions').doc('question_2').set({
      'questionId': 2,
      'order': 2,
      'statements': [
          {'text': 'Only one of the Inter-State Council, the National Security Council, and Zonal Councils was established as per the provisions of the Constitution of India.', 'isCorrect': true},
          {'text': 'All three of the Inter-State Council, the National Security Council, and Zonal Councils were established as per the provisions of the Constitution of India.', 'isCorrect': false},
      ],
    });
    await topicRef14.collection('questions').doc('question_3').set({
      'questionId': 3,
      'order': 3,
      'statements': [
          {'text': 'The 15th Finance Commission recommended grants of ₹4,800 crores from 2022-23 to 2025-26 for incentivizing States to enhance educational outcomes, recommended ₹45,000 crores as a performance-based incentive for agricultural reforms, and reintroduced tax effort criteria to reward fiscal performance.', 'isCorrect': true},
          {'text': '45% of the net proceeds of Union taxes are to be shared with States, as recommended by the 15th Finance Commission.', 'isCorrect': false},
      ],
    });
    await topicRef14.collection('questions').doc('question_4').set({
      'questionId': 4,
      'order': 4,
      'statements': [
          {'text': 'The Directorate of Revenue Intelligence and the Directorate General of Systems and Data Management work under the Department of Revenue, Ministry of Finance.', 'isCorrect': true},
          {'text': 'The Directorate of Enforcement works under the Internal Security Division-I, Ministry of Home Affairs.', 'isCorrect': false},
      ],
    });
    await topicRef14.collection('questions').doc('question_5').set({
      'questionId': 5,
      'order': 5,
      'statements': [
          {'text': 'The North Eastern Council, as per its 2002 amendment, comprises the Governor and Chief Minister of each constituent state and three members nominated by the President of India.', 'isCorrect': true},
          {'text': 'The North Eastern Council includes the Home Minister of India as one of its members.', 'isCorrect': false},
      ],
    });
    await topicRef14.collection('questions').doc('question_6').set({
      'questionId': 6,
      'order': 6,
      'statements': [
          {'text': 'Among the National Commission for Backward Classes, the National Human Rights Commission, the National Law Commission, and the National Consumer Disputes Redressal Commission, only the National Commission for Backward Classes is a constitutional body.', 'isCorrect': true},
          {'text': 'The National Human Rights Commission is a constitutional body of India.', 'isCorrect': false},
      ],
    });
    await topicRef14.collection('questions').doc('question_7').set({
      'questionId': 7,
      'order': 7,
      'statements': [
          {'text': 'The Fifteenth Finance Commission used three criteria, apart from population, area and income distance, for horizontal tax devolution.', 'isCorrect': true},
          {'text': 'The Fifteenth Finance Commission used all five of demographic performance, forest and ecology, governance reforms, stable government, and tax and fiscal efforts as criteria for horizontal tax devolution.', 'isCorrect': false},
      ],
    });
    await topicRef14.collection('questions').doc('question_8').set({
      'questionId': 8,
      'order': 8,
      'statements': [
          {'text': 'Officers of the government other than just the Attorney General and Solicitor General are allowed to participate in Parliament proceedings, and the Attorney General does not automatically resign when the government that appointed him resigns.', 'isCorrect': true},
          {'text': 'The Attorney General of India and Solicitor General of India are the only officers of the Government allowed to participate in the meetings of the Parliament of India.', 'isCorrect': false},
      ],
    });
    await topicRef14.collection('questions').doc('question_9').set({
      'questionId': 9,
      'order': 9,
      'statements': [
          {'text': 'Legal Services Authorities provide free legal services to persons with an annual income of less than Rs. 1,00,000 and to transgender persons with an annual income of less than Rs. 2,00,000.', 'isCorrect': true},
          {'text': 'Legal Services Authorities provide free legal services to all Senior Citizens, regardless of income.', 'isCorrect': false},
      ],
    });
    await topicRef14.collection('questions').doc('question_10').set({
      'questionId': 10,
      'order': 10,
      'statements': [
          {'text': 'The Government of India established NITI Aayog to replace the Planning Commission.', 'isCorrect': true},
          {'text': 'The Government of India established NITI Aayog to replace the Finance Commission.', 'isCorrect': false},
      ],
    });
    await topicRef14.collection('questions').doc('question_11').set({
      'questionId': 11,
      'order': 11,
      'statements': [
          {'text': 'The Fourteenth Finance Commission increased the share of States in the central divisible pool from 32 percent to 42 percent.', 'isCorrect': true},
          {'text': 'The Fourteenth Finance Commission made recommendations concerning sector-specific grants.', 'isCorrect': false},
      ],
    });
    await topicRef14.collection('questions').doc('question_12').set({
      'questionId': 12,
      'order': 12,
      'statements': [
          {'text': 'The National Legal Services Authority aims to provide free and competent legal services to weaker sections on the basis of equal opportunity, and it issues guidelines for state legal services authorities to implement legal programmes nationwide.', 'isCorrect': true},
          {'text': 'The National Legal Services Authority\'s objective does not include providing free legal services to weaker sections of society.', 'isCorrect': false},
      ],
    });
    await topicRef14.collection('questions').doc('question_13').set({
      'questionId': 13,
      'order': 13,
      'statements': [
          {'text': 'The Attorney General of India can take part in the proceedings of the Lok Sabha, be a member of a Lok Sabha committee, and speak in the Lok Sabha.', 'isCorrect': true},
          {'text': 'The Attorney General of India can vote in the Lok Sabha.', 'isCorrect': false},
      ],
    });
    await topicRef14.collection('questions').doc('question_14').set({
      'questionId': 14,
      'order': 14,
      'statements': [
          {'text': 'The National Development Council, the Planning Commission, and Zonal Councils do not find mention in the Constitution of India.', 'isCorrect': true},
          {'text': 'The Planning Commission finds mention in the Constitution of India.', 'isCorrect': false},
      ],
    });
    await topicRef14.collection('questions').doc('question_15').set({
      'questionId': 15,
      'order': 15,
      'statements': [
          {'text': 'CAG reports on the execution of projects by ministries are discussed by the Public Accounts Committee, and information from CAG reports can be used by investigating agencies to press charges against violators of financial laws.', 'isCorrect': true},
          {'text': 'CAG exercises exchequer control on behalf of Parliament when the President declares a national or financial emergency.', 'isCorrect': false},
      ],
    });
    await topicRef14.collection('questions').doc('question_16').set({
      'questionId': 16,
      'order': 16,
      'statements': [
          {'text': 'Consumers are empowered to take samples for food testing, and in the case of a consumer\'s death, their legal heir can file a complaint in the consumer forum on their behalf.', 'isCorrect': true},
          {'text': 'When a consumer files a complaint in any consumer forum, no fee is required to be paid.', 'isCorrect': false},
      ],
    });
    await topicRef14.collection('questions').doc('question_17').set({
      'questionId': 17,
      'order': 17,
      'statements': [
          {'text': 'A complaint in relation to goods sold or services provided may be filed with a District Forum by the State Government as a representative of consumers\' interests in general.', 'isCorrect': true},
          {'text': 'The District Forum entertains complaints where the value of goods or services does not exceed rupees fifty lakhs.', 'isCorrect': false},
      ],
    });
    await topicRef14.collection('questions').doc('question_18').set({
      'questionId': 18,
      'order': 18,
      'statements': [
          {'text': 'The State Finance Commission makes recommendations to the Governor of a State on the principles for determining the taxes and duties that may be appropriated by the Panchayats in that State.', 'isCorrect': true},
          {'text': 'The District Planning Committees make recommendations to the Governor of a State on the principles for determining taxes and duties appropriated by Panchayats.', 'isCorrect': false},
      ],
    });
    await topicRef14.collection('questions').doc('question_19').set({
      'questionId': 19,
      'order': 19,
      'statements': [
          {'text': 'The Members of the Central Administrative Tribunal (CAT) are drawn from both judicial and administrative streams.', 'isCorrect': true},
          {'text': 'The Central Administrative Tribunal (CAT) was set up during the Prime Ministership of Lal Bahadur Shastri.', 'isCorrect': false},
      ],
    });
    await topicRef14.collection('questions').doc('question_20').set({
      'questionId': 20,
      'order': 20,
      'statements': [
          {'text': 'Nagender Singh was President of the ICJ, A. N. Ray was Chief Justice of India, R. K. Trivedi was Chief Election Commissioner, and Ashok Desai was Attorney General of India.', 'isCorrect': true},
          {'text': 'Nagender Singh was Chief Election Commissioner, and A. N. Ray was President of the ICJ.', 'isCorrect': false},
      ],
    });
    await topicRef14.collection('questions').doc('question_21').set({
      'questionId': 21,
      'order': 21,
      'statements': [
          {'text': 'Among the given pairs, \'A. M. Khusro: Former Chairman, Union Public Service Commission\' is not correctly matched.', 'isCorrect': true},
          {'text': 'A. M. Khusro is correctly matched as the former Chairman of the Union Public Service Commission.', 'isCorrect': false},
      ],
    });
    await topicRef14.collection('questions').doc('question_22').set({
      'questionId': 22,
      'order': 22,
      'statements': [
          {'text': 'Dakshina Bharat Hindi Prachar Sabha, the National Institute of Pharmaceutical Education and Research, and the Sree Chitra Tirunal Institute for Medical Sciences and Technology have been recognised as Institutes of National Importance by an Act of Parliament.', 'isCorrect': true},
          {'text': 'The Lakshmibai National Institute of Physical Education, Gwalior, has been recognised as an Institute of National Importance by an Act of Parliament.', 'isCorrect': false},
      ],
    });
    await topicRef14.collection('questions').doc('question_23').set({
      'questionId': 23,
      'order': 23,
      'statements': [
          {'text': 'According to the National Human Rights Commission Act, 1993, only a retired Chief Justice of India can be its Chairman.', 'isCorrect': true},
          {'text': 'According to the National Human Rights Commission Act, 1993, any serving Judge of the Supreme Court can be its Chairman.', 'isCorrect': false},
      ],
    });
    await topicRef14.collection('questions').doc('question_24').set({
      'questionId': 24,
      'order': 24,
      'statements': [
          {'text': 'The President can make an ordinance only when either of the two Houses of Parliament is not in session.', 'isCorrect': true},
          {'text': 'The Planning Commission is accountable to Parliament.', 'isCorrect': false},
      ],
    });
    await topicRef14.collection('questions').doc('question_25').set({
      'questionId': 25,
      'order': 25,
      'statements': [
          {'text': 'The National Commission for Minorities was given statutory status in 1993, the Zoroastrians are the smallest religious minority in India, and the Constitution of India recognises and protects religious and linguistic minorities.', 'isCorrect': true},
          {'text': 'The Government of India has notified five communities — Muslims, Sikhs, Christians, Buddhists and Zoroastrians — as Minorities, as one of the correct statements about minorities.', 'isCorrect': false},
      ],
    });
    await topicRef14.collection('questions').doc('question_26').set({
      'questionId': 26,
      'order': 26,
      'statements': [
          {'text': 'The Comptroller and Auditor General of India does not control the receipt and issue of public money or ensure that public revenue is lodged in the exchequer — that is not among CAG\'s duties.', 'isCorrect': true},
          {'text': 'The Comptroller and Auditor General of India controls the receipt and issue of public money, and ensures that public revenue is lodged in the exchequer.', 'isCorrect': false},
      ],
    });
    await topicRef14.collection('questions').doc('question_27').set({
      'questionId': 27,
      'order': 27,
      'statements': [
          {'text': 'The Attorney General of India is appointed by the President of India and must have the same qualifications as required for a Judge of the Supreme Court.', 'isCorrect': true},
          {'text': 'The Attorney General of India must be a member of either House of Parliament.', 'isCorrect': false},
      ],
    });
    await topicRef14.collection('questions').doc('question_28').set({
      'questionId': 28,
      'order': 28,
      'statements': [
          {'text': 'The primary function of the Finance Commission in India is to distribute revenue between the Centre and the States.', 'isCorrect': true},
          {'text': 'The primary function of the Finance Commission in India is to prepare the Annual Budget.', 'isCorrect': false},
      ],
    });
    await topicRef14.collection('questions').doc('question_29').set({
      'questionId': 29,
      'order': 29,
      'statements': [
          {'text': 'It is mandatory to appoint a woman as a member of the National Human Rights Commission of India.', 'isCorrect': true},
          {'text': 'The Chairman of the National Human Rights Commission of India must be a retired Chief Justice of India.', 'isCorrect': false},
      ],
    });
    await topicRef14.collection('questions').doc('question_30').set({
      'questionId': 30,
      'order': 30,
      'statements': [
          {'text': 'The word \'minority\' is not defined in the Constitution of India, and the Minorities Commission is not a constitutional body, though the latter does not fully explain the former.', 'isCorrect': true},
          {'text': 'The word \'minority\' is defined in the Constitution of India.', 'isCorrect': false},
      ],
    });
    await topicRef14.collection('questions').doc('question_31').set({
      'questionId': 31,
      'order': 31,
      'statements': [
          {'text': 'The National Development Council, the Governors\' Conference, and Zonal Councils are extra-constitutional and extra-legal devices for securing cooperation and coordination between the States in India.', 'isCorrect': true},
          {'text': 'The Inter-State Council is an extra-constitutional and extra-legal device for securing cooperation and coordination between the States in India.', 'isCorrect': false},
      ],
    });
    await topicRef14.collection('questions').doc('question_32').set({
      'questionId': 32,
      'order': 32,
      'statements': [
          {'text': 'Rajasthan and Karnataka are States in which the Lokayukta Act includes the Chief Minister in its ambit.', 'isCorrect': true},
          {'text': 'West Bengal and Kerala are States in which the Lokayukta Act includes the Chief Minister in its ambit.', 'isCorrect': false},
      ],
    });
    final topicRef15 =
        subjectRef.collection('topics').doc('important_acts_and_constitutional_amendments');

    await topicRef15.set({
      'name': 'Important Acts and Constitutional Amendments',
      'order': 15,
    });
    await topicRef15.collection('questions').doc('question_1').set({
      'questionId': 1,
      'order': 1,
      'statements': [
          {'text': 'The Nari Shakti Vandan Adhiniyam will be in force for 15 years after becoming an Act, and it provides for reservation of seats for Scheduled Caste women within the quota reserved for Scheduled Castes.', 'isCorrect': true},
          {'text': 'Provisions of the Nari Shakti Vandan Adhiniyam will come into effect from the 18th Lok Sabha.', 'isCorrect': false},
      ],
    });
    await topicRef15.collection('questions').doc('question_2').set({
      'questionId': 2,
      'order': 2,
      'statements': [
          {'text': 'The Constitution (71st Amendment) Act, 1992 added Konkani, Manipuri, and Nepali to the Eighth Schedule of the Constitution.', 'isCorrect': true},
          {'text': 'The Constitution (71st Amendment) Act, 1992 added Sindhi to the Eighth Schedule of the Constitution.', 'isCorrect': false},
      ],
    });
    await topicRef15.collection('questions').doc('question_3').set({
      'questionId': 3,
      'order': 3,
      'statements': [
          {'text': 'The 1st Amendment to the Indian Constitution was widely believed to have been enacted to overcome judicial interpretations of the Fundamental Rights.', 'isCorrect': true},
          {'text': 'The 42nd Amendment to the Indian Constitution was widely believed to have been enacted to overcome judicial interpretations of the Fundamental Rights.', 'isCorrect': false},
      ],
    });
    await topicRef15.collection('questions').doc('question_4').set({
      'questionId': 4,
      'order': 4,
      'statements': [
          {'text': 'In India, prisons are managed by State governments with their own rules for day-to-day administration, because the Prisons Act, 1894 expressly kept the subject of prisons under the control of Provincial Governments.', 'isCorrect': true},
          {'text': 'In India, prisons are managed directly by the Central Government under uniform rules.', 'isCorrect': false},
      ],
    });
    await topicRef15.collection('questions').doc('question_5').set({
      'questionId': 5,
      'order': 5,
      'statements': [
          {'text': 'According to the Constitution of India, the Central Government has a duty to protect States from internal disturbances, and according to the Prevention of Terrorism Act, 2002, confession of the accused before the police cannot be used as evidence.', 'isCorrect': true},
          {'text': 'The Constitution of India exempts the States from providing legal counsel to a person being held for preventive detention.', 'isCorrect': false},
      ],
    });
    await topicRef15.collection('questions').doc('question_6').set({
      'questionId': 6,
      'order': 6,
      'statements': [
          {'text': 'The role of the Home Guards is to serve as an auxiliary force to the police in the maintenance of internal security, and Border Wing Home Guards Battalions have been raised in some States to prevent infiltration on international borders and coastal areas.', 'isCorrect': true},
          {'text': 'Home Guards are raised under the Home Guards Act and Rules of the Central Government.', 'isCorrect': false},
      ],
    });
    await topicRef15.collection('questions').doc('question_7').set({
      'questionId': 7,
      'order': 7,
      'statements': [
          {'text': 'Knowingly misleading or interfering with a police or military officer engaged in their duties is covered under the Indian Evidence Act, 1872, and celebratory gunfire endangering personal safety is covered under the Arms (Amendment) Act, 2019.', 'isCorrect': true},
          {'text': 'Unauthorized wearing of police or military uniforms is covered under the Official Secrets Act, 1923.', 'isCorrect': false},
      ],
    });
    await topicRef15.collection('questions').doc('question_8').set({
      'questionId': 8,
      'order': 8,
      'statements': [
          {'text': 'The ratio of the length to the height (width) of the National Flag of India shall be 3:2, as per the Flag Code of India, 2002.', 'isCorrect': true},
          {'text': 'One of the standard sizes of the National Flag of India is 600 mm x 400 mm, as per the Flag Code of India, 2002.', 'isCorrect': false},
      ],
    });
    await topicRef15.collection('questions').doc('question_9').set({
      'questionId': 9,
      'order': 9,
      'statements': [
          {'text': 'States cannot enter into any contract with private corporations for sharing Aadhaar data, and Aadhaar is mandatory for getting benefits funded out of the Consolidated Fund of India.', 'isCorrect': true},
          {'text': 'Aadhaar metadata cannot be stored for more than three months.', 'isCorrect': false},
      ],
    });
    await topicRef15.collection('questions').doc('question_10').set({
      'questionId': 10,
      'order': 10,
      'statements': [
          {'text': 'The Supreme Court of India struck down the 99th Amendment to the Constitution as being violative of the independence of the judiciary.', 'isCorrect': true},
          {'text': 'The 44th Amendment to the Constitution of India introduced an Article placing the election of the Prime Minister beyond judicial review.', 'isCorrect': false},
      ],
    });
    await topicRef15.collection('questions').doc('question_11').set({
      'questionId': 11,
      'order': 11,
      'statements': [
          {'text': 'As per the Scheduled Tribes and Other Traditional Forest Dwellers (Recognition of Forest Rights) Act, 2006, bamboo is a minor forest produce.', 'isCorrect': true},
          {'text': 'As per the recent amendment to the Indian Forest Act, 1927, forest dwellers have the right to fell bamboos grown on forest areas.', 'isCorrect': false},
      ],
    });
    await topicRef15.collection('questions').doc('question_12').set({
      'questionId': 12,
      'order': 12,
      'statements': [
          {'text': 'Powers and functions of the Gram Sabha are mentioned under Article 243(A) of the Constitution.', 'isCorrect': true},
          {'text': 'An Aadhaar card, once issued, cannot be deactivated or omitted by the Issuing Authority.', 'isCorrect': false},
      ],
    });
    await topicRef15.collection('questions').doc('question_13').set({
      'questionId': 13,
      'order': 13,
      'statements': [
          {'text': 'Under the Scheduled Tribes and Other Traditional Forest Dwellers (Recognition of Forest Rights) Act, 2006, the Gram Sabha is the authority to initiate the process for determining the nature and extent of individual or community forest rights.', 'isCorrect': true},
          {'text': 'Under the Scheduled Tribes and Other Traditional Forest Dwellers (Recognition of Forest Rights) Act, 2006, the District Collector/Deputy Commissioner is the authority to initiate the process for determining forest rights.', 'isCorrect': false},
      ],
    });
    await topicRef15.collection('questions').doc('question_14').set({
      'questionId': 14,
      'order': 14,
      'statements': [
          {'text': 'The National Green Tribunal Act, 2010 was enacted in consonance with the right to a healthy environment as part of the Right to Life under Article 21, and with the provision of grants for administration in Scheduled Areas under Article 275(1).', 'isCorrect': true},
          {'text': 'The National Green Tribunal Act, 2010 was enacted solely in consonance with provisions relating to the Right to Property.', 'isCorrect': false},
      ],
    });
    await topicRef15.collection('questions').doc('question_15').set({
      'questionId': 15,
      'order': 15,
      'statements': [
          {'text': 'Under the Constitution (Ninety-second Amendment) Act, four languages were added to the Eighth Schedule of the Constitution of India, raising their number to 22.', 'isCorrect': true},
          {'text': 'Under the Constitution (Ninetieth Amendment) Act, four languages were added to the Eighth Schedule of the Constitution of India, raising their number to 22.', 'isCorrect': false},
      ],
    });
    await topicRef15.collection('questions').doc('question_16').set({
      'questionId': 16,
      'order': 16,
      'statements': [
          {'text': 'The Judges (Inquiry) Bill, 2006 contemplates establishing a Judicial Council to receive complaints against Judges of the Supreme Court, Chief Justices of India, and High Court Chief Justices and Judges, and under the Protection of Women from Domestic Violence Act, 2005, a woman can file a petition before a 1st class Judicial Magistrate.', 'isCorrect': true},
          {'text': 'The Judges (Inquiry) Bill, 2006 does not contemplate establishing any Judicial Council to receive complaints against judges.', 'isCorrect': false},
      ],
    });
    await topicRef15.collection('questions').doc('question_17').set({
      'questionId': 17,
      'order': 17,
      'statements': [
          {'text': 'The 104th Constitution Amendment Bill relates to providing quota to socially and educationally backward classes in private educational institutions.', 'isCorrect': true},
          {'text': 'The 104th Constitution Amendment Bill relates to the abolition of Legislative Councils in certain States.', 'isCorrect': false},
      ],
    });
    await topicRef15.collection('questions').doc('question_18').set({
      'questionId': 18,
      'order': 18,
      'statements': [
          {'text': 'The Sarva Shiksha Abhiyan seeks to provide computer education even in rural areas, and education was included in the Concurrent List by the 42nd Amendment, 1976.', 'isCorrect': true},
          {'text': 'Free and compulsory education to children of the 6-14 years age group was made a Fundamental Right by the 76th Amendment to the Constitution of India.', 'isCorrect': false},
      ],
    });
    await topicRef15.collection('questions').doc('question_19').set({
      'questionId': 19,
      'order': 19,
      'statements': [
          {'text': 'The Constitution (98th Amendment) Act relates to empowering the Centre to levy and appropriate service tax.', 'isCorrect': true},
          {'text': 'The Constitution (98th Amendment) Act relates to the constitution of the National Judicial Commission.', 'isCorrect': false},
      ],
    });
    await topicRef15.collection('questions').doc('question_20').set({
      'questionId': 20,
      'order': 20,
      'statements': [
          {'text': 'The 7th and 31st Constitutional Amendments are related to raising the number of Members of the Lok Sabha to be elected from the States.', 'isCorrect': true},
          {'text': 'The 6th and 22nd Constitutional Amendments are related to raising the number of Members of the Lok Sabha to be elected from the States.', 'isCorrect': false},
      ],
    });
    await topicRef15.collection('questions').doc('question_21').set({
      'questionId': 21,
      'order': 21,
      'statements': [
          {'text': 'The Ninth Schedule to the Indian Constitution was added by the First Amendment.', 'isCorrect': true},
          {'text': 'The Ninth Schedule to the Indian Constitution was added by the Forty-Second Amendment.', 'isCorrect': false},
      ],
    });
    await topicRef15.collection('questions').doc('question_22').set({
      'questionId': 22,
      'order': 22,
      'statements': [
          {'text': 'The Draft Electricity Bill, 2001 sought to replace the Indian Electricity Act, 1910, the Electricity (Supply) Act, 1948, and the Electricity Regulatory Commission Act, 1998.', 'isCorrect': true},
          {'text': 'The Draft Electricity Bill, 2001 sought to replace State Electricity Boards.', 'isCorrect': false},
      ],
    });
    await topicRef15.collection('questions').doc('question_23').set({
      'questionId': 23,
      'order': 23,
      'statements': [
          {'text': 'The 93rd Constitutional Amendment Bill deals with the continuation of reservation for backward classes in government employment.', 'isCorrect': true},
          {'text': 'The 93rd Constitutional Amendment Bill deals with free and compulsory education for children between the ages of 6 and 14 years.', 'isCorrect': false},
      ],
    });
    await topicRef15.collection('questions').doc('question_24').set({
      'questionId': 24,
      'order': 24,
      'statements': [
          {'text': 'The Constitution (Seventy Fifth Amendment) Act, 1994 relates to the establishment of State-level Rent Tribunals, the Constitution (Eightieth Amendment) Act, 2000 relates to accepting the recommendations of the Tenth Finance Commission, and the Constitution (Eighty Third Amendment) Act, 2000 relates to no reservation for Scheduled Castes in Panchayats in Arunachal Pradesh.', 'isCorrect': true},
          {'text': 'The Constitution (Seventy Fifth Amendment) Act, 1994 relates to no reservation for Scheduled Castes in Panchayats in Arunachal Pradesh.', 'isCorrect': false},
      ],
    });
    await topicRef15.collection('questions').doc('question_25').set({
      'questionId': 25,
      'order': 25,
      'statements': [
          {'text': 'In the Indian context, the term \'Denotified tribes\' refers to tribes which were earlier classified as criminal tribes.', 'isCorrect': true},
          {'text': 'In the Indian context, the term \'Denotified tribes\' refers to nomadic tribes.', 'isCorrect': false},
      ],
    });
    await topicRef15.collection('questions').doc('question_26').set({
      'questionId': 26,
      'order': 26,
      'statements': [
          {'text': 'In Goa, it is legal for a Hindu male and illegal for a Muslim male to have more than one living wife.', 'isCorrect': true},
          {'text': 'In Nagaland, it is legal for a Hindu male and illegal for a Muslim male to have more than one living wife.', 'isCorrect': false},
      ],
    });

    print('Indian Polity True/False 2 seeding completed.');
    print('Sheets: 4');
    print('Topics: 4');
    print('Questions: 114');
    print('Statements: 228');
  }



  static Future<void> seedPolityTFQuestions() async {
    final subjectRef = _firestore.collection('subjects').doc('polity');

    await subjectRef.set({
      'name': 'Indian Polity',
      'order': 2,
    }, SetOptions(merge: true));

    final topicRef9 = subjectRef.collection('topics').doc('local_government_panchayati_raj');
    await topicRef9.set({
      'name': 'Local Government - Panchayati Raj',
      'order': 9,
    });
    await topicRef9.collection('questions').doc('question_1').set({
      'questionId': 1,
      'order': 1,
      'statements': [
          {'text': 'Panchayats at the intermediate level do not exist in all States; the minimum age for membership is 21 years; and the State Finance Commission is constituted by the Governor.', 'isCorrect': true},
          {'text': 'Panchayats at the intermediate level are compulsory in all States regardless of their population; the minimum age for membership is 18 years; and the State Finance Commission is constituted by the President.', 'isCorrect': false},
      ],
    });
    await topicRef9.collection('questions').doc('question_2').set({
      'questionId': 2,
      'order': 2,
      'statements': [
          {'text': 'The minimum age prescribed for becoming a member of a Panchayat is 21 years, and a Panchayat reconstituted after premature dissolution continues only for the remainder of its original term.', 'isCorrect': true},
          {'text': 'The minimum age prescribed for becoming a member of a Panchayat is 18 years, and a Panchayat reconstituted after premature dissolution begins a completely new five-year term.', 'isCorrect': false},
      ],
    });
    await topicRef9.collection('questions').doc('question_3').set({
      'questionId': 3,
      'order': 3,
      'statements': [
          {'text': 'The fundamental objectives of the Panchayati Raj system are to ensure people’s participation in development, political accountability, and democratic decentralization.', 'isCorrect': true},
          {'text': 'The fundamental objectives of the Panchayati Raj system are to concentrate political power at the State level and eliminate democratic decentralization.', 'isCorrect': false},
      ],
    });
    await topicRef9.collection('questions').doc('question_4').set({
      'questionId': 4,
      'order': 4,
      'statements': [
          {'text': 'The Panchayat Extension to Scheduled Areas (PESA) Act, 1996, does not aim to create autonomous regions in tribal areas.', 'isCorrect': true},
          {'text': 'The Panchayat Extension to Scheduled Areas (PESA) Act, 1996, aims to create autonomous regions in all tribal areas of India.', 'isCorrect': false},
      ],
    });
    await topicRef9.collection('questions').doc('question_5').set({
      'questionId': 5,
      'order': 5,
      'statements': [
          {'text': 'The Gram Sabha has the power to prevent alienation of land in Scheduled Areas and has ownership of minor forest produce.', 'isCorrect': true},
          {'text': 'The Gram Sabha has no power to prevent alienation of land in Scheduled Areas and does not have ownership of minor forest produce.', 'isCorrect': false},
      ],
    });
    await topicRef9.collection('questions').doc('question_6').set({
      'questionId': 6,
      'order': 6,
      'statements': [
          {'text': 'A Metropolitan Planning Committee is constituted under the Constitution of India and prepares the draft development plan for the metropolitan area.', 'isCorrect': true},
          {'text': 'A Metropolitan Planning Committee is not provided for under the Constitution of India and does not prepare development plans for metropolitan areas.', 'isCorrect': false},
      ],
    });
    await topicRef9.collection('questions').doc('question_7').set({
      'questionId': 7,
      'order': 7,
      'statements': [
          {'text': 'The 73rd Constitutional Amendment provides for State Election Commissions to conduct Panchayat elections and for the establishment of State Finance Commissions.', 'isCorrect': true},
          {'text': 'The 73rd Constitutional Amendment provides for the Election Commission of India to conduct Panchayat elections and abolishes the State Finance Commissions.', 'isCorrect': false},
      ],
    });
    await topicRef9.collection('questions').doc('question_8').set({
      'questionId': 8,
      'order': 8,
      'statements': [
          {'text': 'If a Panchayat is dissolved, elections must be held within six months.', 'isCorrect': true},
          {'text': 'If a Panchayat is dissolved, elections must be held within one year.', 'isCorrect': false},
      ],
    });
    await topicRef9.collection('questions').doc('question_9').set({
      'questionId': 9,
      'order': 9,
      'statements': [
          {'text': 'The first Municipal Corporation in India was established in Madras.', 'isCorrect': true},
          {'text': 'The first Municipal Corporation in India was established in Bombay.', 'isCorrect': false},
      ],
    });
    await topicRef9.collection('questions').doc('question_10').set({
      'questionId': 10,
      'order': 10,
      'statements': [
          {'text': 'Nirmal Gram Puraskar was an incentive scheme for Panchayati Raj Institutions that promoted sanitation and cleanliness.', 'isCorrect': true},
          {'text': 'Nirmal Gram Puraskar was an incentive scheme for Panchayati Raj Institutions that promoted industrial development and urban infrastructure.', 'isCorrect': false},
      ],
    });
    await topicRef9.collection('questions').doc('question_11').set({
      'questionId': 11,
      'order': 11,
      'statements': [
          {'text': 'Part IX of the Constitution contains provisions relating to Panchayats and was inserted by the Constitution (73rd Amendment) Act, 1992.', 'isCorrect': true},
          {'text': 'Part IX of the Constitution contains provisions relating to Panchayats and was inserted by the Constitution (74th Amendment) Act, 1992.', 'isCorrect': false},
      ],
    });
    await topicRef9.collection('questions').doc('question_12').set({
      'questionId': 12,
      'order': 12,
      'statements': [
          {'text': 'The State Government does not have control over personnel matters of local bodies.', 'isCorrect': true},
          {'text': 'The State Government has absolutely no control over personnel matters of local bodies.', 'isCorrect': false},
      ],
    });
    await topicRef9.collection('questions').doc('question_13').set({
      'questionId': 13,
      'order': 13,
      'statements': [
          {'text': 'For a person to contest an election to a Municipal Council, his name must figure in the Voters’ List.', 'isCorrect': true},
          {'text': 'For a person to contest an election to a Municipal Council, it is not necessary for his name to figure in the Voters\' List.', 'isCorrect': false},
      ],
    });
    await topicRef9.collection('questions').doc('question_14').set({
      'questionId': 14,
      'order': 14,
      'statements': [
          {'text': 'The Wadhwa Commission investigated the killing of Graham Staines, the Liberhan Commission investigated the demolition of the disputed structure at Ayodhya, the Sri Krishna Commission investigated the Mumbai riots, and the Jain Commission investigated the assassination of Rajiv Gandhi.', 'isCorrect': true},
          {'text': 'The Wadhwa Commission investigated the demolition of the disputed structure at Ayodhya, the Liberhan Commission investigated the killing of Graham Staines, the Sri Krishna Commission investigated the assassination of Rajiv Gandhi, and the Jain Commission investigated the Mumbai riots.', 'isCorrect': false},
      ],
    });
    await topicRef9.collection('questions').doc('question_15').set({
      'questionId': 15,
      'order': 15,
      'statements': [
          {'text': 'The 73rd Constitutional Amendment Act, 1992, laid the foundation for strong and vibrant Panchayati Raj Institutions in India.', 'isCorrect': true},
          {'text': 'The 73rd Constitutional Amendment Act, 1992, abolished the Panchayati Raj Institutions in India.', 'isCorrect': false},
      ],
    });
    await topicRef9.collection('questions').doc('question_16').set({
      'questionId': 16,
      'order': 16,
      'statements': [
          {'text': 'Regular remuneration to Panchayat members to ensure punctuality and accountability was not a fresh provision under the Panchayati Raj system enacted in 1993.', 'isCorrect': true},
          {'text': 'Regular remuneration to Panchayat members to ensure punctuality and accountability was introduced as a fresh constitutional provision under the Panchayati Raj system enacted in 1993.', 'isCorrect': false},
      ],
    });
    await topicRef9.collection('questions').doc('question_17').set({
      'questionId': 17,
      'order': 17,
      'statements': [
          {'text': 'Panchayati Raj was first introduced in India in Rajasthan in October 1959.', 'isCorrect': true},
          {'text': 'Panchayati Raj was first introduced in India in Uttar Pradesh in October 1959.', 'isCorrect': false},
      ],
    });
    await topicRef9.collection('questions').doc('question_18').set({
      'questionId': 18,
      'order': 18,
      'statements': [
          {'text': 'The provision disqualifying Panchayati Raj elected representatives from holding office if they have more than two children was not proposed by the 73rd Constitutional Amendment.', 'isCorrect': true},
          {'text': 'The provision disqualifying Panchayati Raj elected representatives from holding office if they have more than two children was a mandatory provision proposed by the 73rd Constitutional Amendment.', 'isCorrect': false},
      ],
    });
    await topicRef9.collection('questions').doc('question_19').set({
      'questionId': 19,
      'order': 19,
      'statements': [
          {'text': 'The Panchayati Raj system follows a three-tier structure of local self-government at the village, block, and district levels.', 'isCorrect': true},
          {'text': 'The Panchayati Raj system follows a two-tier structure of local self-government only at the village and district levels throughout India.', 'isCorrect': false},
      ],
    });
    await topicRef9.collection('questions').doc('question_20').set({
      'questionId': 20,
      'order': 20,
      'statements': [
          {'text': 'The statement that 30% of seats in local bodies are reserved for women is incorrect; the constitutional provision originally provided for reservation of not less than one-third of the seats for women.', 'isCorrect': true},
          {'text': 'The Constitution originally provided for reservation of exactly 30% of seats in local bodies for women.', 'isCorrect': false},
      ],
    });
    final topicRef10 = subjectRef.collection('topics').doc('post_independence_history');
    await topicRef10.set({
      'name': 'Post Independence History',
      'order': 10,
    });
    await topicRef10.collection('questions').doc('question_1').set({
      'questionId': 1,
      'order': 1,
      'statements': [
          {'text': 'Arunachal Pradesh, Nagaland, and Tripura are correctly matched with their respective descriptions: Arunachal Pradesh has a capital named after a fort and two National Parks; Nagaland was created through the State of Nagaland Act, 1962; and Tripura evolved from a Part C State to a Union Territory and later became a full-fledged State.', 'isCorrect': true},
          {'text': 'Arunachal Pradesh, Nagaland, and Tripura are correctly matched with their respective descriptions: Arunachal Pradesh has three National Parks; Nagaland was created through the State of Nagaland Act, 1965; and Tripura became a full-fledged State directly from a Part C State.', 'isCorrect': false},
      ],
    });
    await topicRef10.collection('questions').doc('question_2').set({
      'questionId': 2,
      'order': 2,
      'statements': [
          {'text': 'Only two of the given party-leader pairs are correctly matched.', 'isCorrect': true},
          {'text': 'All of the given party-leader pairs are correctly matched.', 'isCorrect': false},
      ],
    });
    await topicRef10.collection('questions').doc('question_3').set({
      'questionId': 3,
      'order': 3,
      'statements': [
          {'text': 'The correct chronological sequence of the events is: Air India was nationalised, the Imperial Bank of India was renamed the State Bank of India, the first democratically elected Communist government was formed in Kerala, and Goa became a part of independent India.', 'isCorrect': true},
          {'text': 'The correct chronological sequence of the events is: Goa became a part of independent India, the first democratically elected Communist government was formed in Kerala, the Imperial Bank of India was renamed the State Bank of India, and Air India was nationalised.', 'isCorrect': false},
      ],
    });
    await topicRef10.collection('questions').doc('question_4').set({
      'questionId': 4,
      'order': 4,
      'statements': [
          {'text': 'Kurnool was the capital of Andhra State when it was made a separate State in 1953.', 'isCorrect': true},
          {'text': 'Hyderabad was the capital of Andhra State when it was made a separate State in 1953.', 'isCorrect': false},
      ],
    });
    await topicRef10.collection('questions').doc('question_5').set({
      'questionId': 5,
      'order': 5,
      'statements': [
          {'text': 'The Veerappa Moily Commission was set up for Administrative Reforms.', 'isCorrect': true},
          {'text': 'The Veerappa Moily Commission was set up for electoral reforms.', 'isCorrect': false},
      ],
    });
    await topicRef10.collection('questions').doc('question_6').set({
      'questionId': 6,
      'order': 6,
      'statements': [
          {'text': 'V. P. Menon wrote the book “The Story of the Integration of the Indian States.”', 'isCorrect': true},
          {'text': 'Jawaharlal Nehru wrote the book “The Story of the Integration of the Indian States.”', 'isCorrect': false},
      ],
    });
    await topicRef10.collection('questions').doc('question_7').set({
      'questionId': 7,
      'order': 7,
      'statements': [
          {'text': 'The correct chronological order of formation as full States of the Indian Union is Nagaland, Haryana, Sikkim, and Arunachal Pradesh.', 'isCorrect': true},
          {'text': 'The correct chronological order of formation as full States of the Indian Union is Haryana, Nagaland, Arunachal Pradesh, and Sikkim.', 'isCorrect': false},
      ],
    });
    await topicRef10.collection('questions').doc('question_8').set({
      'questionId': 8,
      'order': 8,
      'statements': [
          {'text': 'Pochampalli was associated with Acharya Vinoba Bhave’s Bhoodan Movement at the beginning of the movement.', 'isCorrect': true},
          {'text': 'Pochampalli was associated with Acharya Vinoba Bhave’s Sarvodaya Movement but was not connected with the beginning of the Bhoodan Movement.', 'isCorrect': false},
      ],
    });
    await topicRef10.collection('questions').doc('question_9').set({
      'questionId': 9,
      'order': 9,
      'statements': [
          {'text': 'P. V. Narasimha Rao wrote the book “Ayodhya: 6 December 1992.”', 'isCorrect': true},
          {'text': 'P. V. Narasimha Rao wrote the book “The Discovery of India.”', 'isCorrect': false},
      ],
    });
    await topicRef10.collection('questions').doc('question_10').set({
      'questionId': 10,
      'order': 10,
      'statements': [
          {'text': 'The statement that Gujarat became a State in 1966 is incorrectly matched, as Gujarat became a separate State in 1960.', 'isCorrect': true},
          {'text': 'Gujarat became a separate State in 1966.', 'isCorrect': false},
      ],
    });
    await topicRef10.collection('questions').doc('question_11').set({
      'questionId': 11,
      'order': 11,
      'statements': [
          {'text': 'The correct chronological sequence is the formation of Bangladesh, Pokhran I nuclear test, Sikkim becoming the 22nd State of the Indian Union, and the SLV-3 launch.', 'isCorrect': true},
          {'text': 'The correct chronological sequence is Pokhran I nuclear test, the formation of Bangladesh, the SLV-3 launch, and Sikkim becoming the 22nd State of the Indian Union.', 'isCorrect': false},
      ],
    });
    await topicRef10.collection('questions').doc('question_12').set({
      'questionId': 12,
      'order': 12,
      'statements': [
          {'text': 'The Liberhan Commission probed the demolition of the disputed structure at Ayodhya.', 'isCorrect': true},
          {'text': 'The Liberhan Commission probed the assassination of Rajiv Gandhi.', 'isCorrect': false},
      ],
    });
    await topicRef10.collection('questions').doc('question_13').set({
      'questionId': 13,
      'order': 13,
      'statements': [
          {'text': 'The correct chronological sequence is the formation of Haryana State, the Fourth General Elections in India, Meghalaya and Tripura becoming full States, and Mysore being renamed Karnataka.', 'isCorrect': true},
          {'text': 'The correct chronological sequence is the Fourth General Elections in India, the formation of Haryana State, Mysore being renamed Karnataka, and Meghalaya and Tripura becoming full States.', 'isCorrect': false},
      ],
    });
    await topicRef10.collection('questions').doc('question_14').set({
      'questionId': 14,
      'order': 14,
      'statements': [
          {'text': 'The Wadhwa Commission investigated the killing of Graham Staines, the Liberhan Commission investigated the demolition of the disputed structure at Ayodhya, the Sri Krishna Commission investigated the Mumbai riots of 1993, and the Jain Commission investigated the assassination of Rajiv Gandhi.', 'isCorrect': true},
          {'text': 'The Wadhwa Commission investigated the assassination of Rajiv Gandhi, the Liberhan Commission investigated the Mumbai riots of 1993, the Sri Krishna Commission investigated the killing of Graham Staines, and the Jain Commission investigated the demolition of the disputed structure at Ayodhya.', 'isCorrect': false},
      ],
    });
    await topicRef10.collection('questions').doc('question_15').set({
      'questionId': 15,
      'order': 15,
      'statements': [
          {'text': 'Subhas Chandra Bose, while delivering the presidential address of the Congress, advocated the introduction of the Roman script for the Hindi language.', 'isCorrect': true},
          {'text': 'Subhas Chandra Bose, while delivering the presidential address of the Congress, opposed the introduction of the Roman script for the Hindi language.', 'isCorrect': false},
      ],
    });
    await topicRef10.collection('questions').doc('question_16').set({
      'questionId': 16,
      'order': 16,
      'statements': [
          {'text': 'The statement that Dadra and Nagar Haveli were under French colonial rule until 1954 is incorrect; they were under Portuguese rule.', 'isCorrect': true},
          {'text': 'Dadra and Nagar Haveli were under French colonial rule until 1954.', 'isCorrect': false},
      ],
    });
    await topicRef10.collection('questions').doc('question_17').set({
      'questionId': 17,
      'order': 17,
      'statements': [
          {'text': 'Katchatheevu and Tin Bigha were territories handed over to Sri Lankan and Bangladeshi sovereignty respectively by the Government of India.', 'isCorrect': true},
          {'text': 'Katchatheevu and Tin Bigha were territories handed over to Bangladeshi and Sri Lankan sovereignty respectively by the Government of India.', 'isCorrect': false},
      ],
    });
    await topicRef10.collection('questions').doc('question_18').set({
      'questionId': 18,
      'order': 18,
      'statements': [
          {'text': 'The Bahujan Samaj Party, Samata Party, and Haryana Vikas Party were not part of the United Front government that was in power during 1996–97.', 'isCorrect': true},
          {'text': 'The Bahujan Samaj Party, Samata Party, and Haryana Vikas Party were all part of the United Front government that was in power during 1996–97.', 'isCorrect': false},
      ],
    });
    await topicRef10.collection('questions').doc('question_19').set({
      'questionId': 19,
      'order': 19,
      'statements': [
          {'text': 'The Dinesh Goswami Committee was concerned with electoral reforms.', 'isCorrect': true},
          {'text': 'The Dinesh Goswami Committee was concerned with administrative reforms rather than electoral reforms.', 'isCorrect': false},
      ],
    });
    final topicRef11 = subjectRef.collection('topics').doc('international_relations');
    await topicRef11.set({
      'name': 'International Relations',
      'order': 11,
    });
    await topicRef11.collection('questions').doc('question_1').set({
      'questionId': 1,
      'order': 1,
      'statements': [
          {'text': 'BIMSTEC was a regional organization consisting of seven member States till January 2025.', 'isCorrect': true},
          {'text': 'BIMSTEC was a regional organization consisting of ten member States till January 2025.', 'isCorrect': false},
      ],
    });
    await topicRef11.collection('questions').doc('question_2').set({
      'questionId': 2,
      'order': 2,
      'statements': [
          {'text': 'The 16th BRICS Summit was held under the chairship of Russia in Kazan.', 'isCorrect': true},
          {'text': 'The 16th BRICS Summit was held under the chairship of India in New Delhi.', 'isCorrect': false},
      ],
    });
    await topicRef11.collection('questions').doc('question_3').set({
      'questionId': 3,
      'order': 3,
      'statements': [
          {'text': 'The International North-South Transport Corridor connects India to Central Asia and Europe via Iran.', 'isCorrect': true},
          {'text': 'The International North-South Transport Corridor connects India to Central Asia and Europe exclusively through Pakistan.', 'isCorrect': false},
      ],
    });
    await topicRef11.collection('questions').doc('question_4').set({
      'questionId': 4,
      'order': 4,
      'statements': [
          {'text': 'India is a member of the Asian Infrastructure Investment Bank, the Missile Technology Control Regime, and the Shanghai Cooperation Organisation.', 'isCorrect': true},
          {'text': 'India is not a member of the Asian Infrastructure Investment Bank, the Missile Technology Control Regime, or the Shanghai Cooperation Organisation.', 'isCorrect': false},
      ],
    });
    await topicRef11.collection('questions').doc('question_5').set({
      'questionId': 5,
      'order': 5,
      'statements': [
          {'text': 'The ‘Right to the City’ gives every occupant of a city the right to reclaim public spaces and participate in city affairs.', 'isCorrect': true},
          {'text': 'The ‘Right to the City’ gives only elected representatives the right to participate in city affairs and excludes ordinary occupants from reclaiming public spaces.', 'isCorrect': false},
      ],
    });
    await topicRef11.collection('questions').doc('question_6').set({
      'questionId': 6,
      'order': 6,
      'statements': [
          {'text': 'The Alma-Ata Declaration is related to healthcare for the people, and the Talanoa Dialogue is related to global climate change.', 'isCorrect': true},
          {'text': 'The Alma-Ata Declaration is related to global climate change, and the Talanoa Dialogue is related to healthcare for the people.', 'isCorrect': false},
      ],
    });
    await topicRef11.collection('questions').doc('question_7').set({
      'questionId': 7,
      'order': 7,
      'statements': [
          {'text': 'The United Nations Convention against Corruption is the first legally binding global anti-corruption instrument, and the United Nations Office on Drugs and Crime assists in implementing both UNCAC and UNTOC.', 'isCorrect': true},
          {'text': 'The United Nations Convention against Corruption is not legally binding, and the United Nations Office on Drugs and Crime does not assist in implementing UNCAC or UNTOC.', 'isCorrect': false},
      ],
    });
    await topicRef11.collection('questions').doc('question_8').set({
      'questionId': 8,
      'order': 8,
      'statements': [
          {'text': 'The European Union adopted the General Data Protection Regulation in April 2016, and its implementation began on 25 May 2018.', 'isCorrect': true},
          {'text': 'The European Union adopted the General Data Protection Regulation in 2018, and its implementation began immediately in April 2016.', 'isCorrect': false},
      ],
    });
    await topicRef11.collection('questions').doc('question_9').set({
      'questionId': 9,
      'order': 9,
      'statements': [
          {'text': 'Ratifying the Additional Protocol with the International Atomic Energy Agency brings civilian nuclear reactors under IAEA safeguards.', 'isCorrect': true},
          {'text': 'Ratifying the Additional Protocol with the International Atomic Energy Agency removes civilian nuclear reactors from IAEA safeguards.', 'isCorrect': false},
      ],
    });
    await topicRef11.collection('questions').doc('question_10').set({
      'questionId': 10,
      'order': 10,
      'statements': [
          {'text': 'Australia, China, India, and Japan are among the free-trade partners of ASEAN.', 'isCorrect': true},
          {'text': 'Australia, China, India, and Japan are not free-trade partners of ASEAN.', 'isCorrect': false},
      ],
    });
    await topicRef11.collection('questions').doc('question_11').set({
      'questionId': 11,
      'order': 11,
      'statements': [
          {'text': 'The development of Chabahar Port enables India to access Afghanistan and Central Asia without depending on Pakistan.', 'isCorrect': true},
          {'text': 'The development of Chabahar Port requires India to depend on Pakistan for access to Afghanistan and Central Asia.', 'isCorrect': false},
      ],
    });
    await topicRef11.collection('questions').doc('question_12').set({
      'questionId': 12,
      'order': 12,
      'statements': [
          {'text': 'The statements that the Trans-Pacific Partnership includes all Pacific Rim countries except China and Russia and that it is only a maritime security alliance are both incorrect.', 'isCorrect': true},
          {'text': 'The Trans-Pacific Partnership includes every Pacific Rim country including China and Russia and is exclusively a maritime security alliance.', 'isCorrect': false},
      ],
    });
    await topicRef11.collection('questions').doc('question_13').set({
      'questionId': 13,
      'order': 13,
      'statements': [
          {'text': 'The India-Africa Summit held in 2015 was the third such summit.', 'isCorrect': true},
          {'text': 'The India-Africa Summit held in 2015 was the first such summit.', 'isCorrect': false},
      ],
    });
    await topicRef11.collection('questions').doc('question_14').set({
      'questionId': 14,
      'order': 14,
      'statements': [
          {'text': 'Iran is not a member of the Gulf Cooperation Council.', 'isCorrect': true},
          {'text': 'Iran is a member of the Gulf Cooperation Council.', 'isCorrect': false},
      ],
    });
    await topicRef11.collection('questions').doc('question_15').set({
      'questionId': 15,
      'order': 15,
      'statements': [
          {'text': 'The Belt and Road Initiative is associated with China.', 'isCorrect': true},
          {'text': 'The Belt and Road Initiative is associated with India.', 'isCorrect': false},
      ],
    });
    await topicRef11.collection('questions').doc('question_16').set({
      'questionId': 16,
      'order': 16,
      'statements': [
          {'text': 'The Regional Comprehensive Economic Partnership is associated with ASEAN and its partner countries.', 'isCorrect': true},
          {'text': 'The Regional Comprehensive Economic Partnership is unrelated to ASEAN and its partner countries.', 'isCorrect': false},
      ],
    });
    await topicRef11.collection('questions').doc('question_17').set({
      'questionId': 17,
      'order': 17,
      'statements': [
          {'text': 'The International Solar Alliance was launched at the United Nations Climate Change Conference in 2015.', 'isCorrect': true},
          {'text': 'The International Solar Alliance was launched at the United Nations Climate Change Conference in 2018.', 'isCorrect': false},
      ],
    });
    await topicRef11.collection('questions').doc('question_18').set({
      'questionId': 18,
      'order': 18,
      'statements': [
          {'text': 'India’s Look East Policy aims to establish India as an important regional player in East Asian affairs and restore historical and cultural ties with Southeast and East Asian neighbours.', 'isCorrect': true},
          {'text': 'India’s Look East Policy aims to reduce India\'s engagement with Southeast and East Asian countries and weaken historical and cultural ties with the region.', 'isCorrect': false},
      ],
    });
    await topicRef11.collection('questions').doc('question_19').set({
      'questionId': 19,
      'order': 19,
      'statements': [
          {'text': 'The United Nations Convention on the Rights of the Child recognizes the rights to development, expression, and recreation.', 'isCorrect': true},
          {'text': 'The United Nations Convention on the Rights of the Child does not recognize the rights to development, expression, or recreation.', 'isCorrect': false},
      ],
    });
    await topicRef11.collection('questions').doc('question_20').set({
      'questionId': 20,
      'order': 20,
      'statements': [
          {'text': 'Giani Zail Singh was also the Secretary-General of the Non-Aligned Movement for a period while serving as the President of India.', 'isCorrect': true},
          {'text': 'Giani Zail Singh was never associated with the leadership of the Non-Aligned Movement while serving as the President of India.', 'isCorrect': false},
      ],
    });
    await topicRef11.collection('questions').doc('question_21').set({
      'questionId': 21,
      'order': 21,
      'statements': [
          {'text': 'India is a member of the Asian Development Bank and the Colombo Plan.', 'isCorrect': true},
          {'text': 'India is not a member of either the Asian Development Bank or the Colombo Plan.', 'isCorrect': false},
      ],
    });
    await topicRef11.collection('questions').doc('question_22').set({
      'questionId': 22,
      'order': 22,
      'statements': [
          {'text': 'Operation Sukoon was launched by the Government of India to evacuate Indian nationals from Lebanon during the Middle East conflict.', 'isCorrect': true},
          {'text': 'Operation Sukoon was launched by the Government of India to evacuate Indian nationals from Ukraine.', 'isCorrect': false},
      ],
    });
    await topicRef11.collection('questions').doc('question_23').set({
      'questionId': 23,
      'order': 23,
      'statements': [
          {'text': 'Non-alignment is not one of the principles of Panchsheel.', 'isCorrect': true},
          {'text': 'Non-alignment is one of the five principles of Panchsheel.', 'isCorrect': false},
      ],
    });

    print('Indian Polity T/F seeding completed.');
    print('Sheets: 3');
    print('Topics: 3');
    print('Questions: 62');
    print('Statements: 124');
  }


  static Future<void> seedPolityBothTrueFalse() async {
    final subjectRef = _firestore.collection('subjects').doc('polity');

    await subjectRef.set({
      'name': 'Indian Polity',
      'order': 2,
    }, SetOptions(merge: true));

    final topicRef1 = subjectRef.collection('topics').doc('political_theory');
    await topicRef1.set({
      'name': 'Political Theory',
      'order': 5,
    });
    await topicRef1.collection('questions').doc('question_1').set({
      'questionId': 1,
      'order': 1,
      'statements': [
          {'text': '\'Due Process of Law\' essentially means the principle of natural justice.', 'isCorrect': true},
          {'text': '\'Due Process of Law\' essentially means the procedure established by law.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_2').set({
      'questionId': 2,
      'order': 2,
      'statements': [
          {'text': 'The chief purpose of the Constitution of a country is to define and limit the powers of the government.', 'isCorrect': true},
          {'text': 'The chief purpose of the Constitution of a country is to determine the objectives for the making of necessary laws.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_3').set({
      'questionId': 3,
      'order': 3,
      'statements': [
          {'text': 'The term \'State\' is best defined as a community of persons permanently occupying a definite territory, independent of external control, and possessing an organised government.', 'isCorrect': true},
          {'text': 'The term \'State\' is best defined as a number of persons who have been living in a definite territory for a very long time with their own culture, tradition and government.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_4').set({
      'questionId': 4,
      'order': 4,
      'statements': [
          {'text': 'The best safeguard of liberty in a liberal democracy is the separation of powers.', 'isCorrect': true},
          {'text': 'The best safeguard of liberty in a liberal democracy is the centralization of powers.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_5').set({
      'questionId': 5,
      'order': 5,
      'statements': [
          {'text': 'A constitutional government means a government limited by the terms of the Constitution.', 'isCorrect': true},
          {'text': 'A constitutional government means a government whose Head enjoys real powers.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_6').set({
      'questionId': 6,
      'order': 6,
      'statements': [
          {'text': 'In a Parliamentary System of Government, the Government is responsible to the Parliament and can be removed by it.', 'isCorrect': true},
          {'text': 'In a Parliamentary System of Government, the Government is elected by the people and can be removed by them.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_7').set({
      'questionId': 7,
      'order': 7,
      'statements': [
          {'text': 'One common agreement between Gandhism and Marxism is the final goal of a stateless society.', 'isCorrect': true},
          {'text': 'One common agreement between Gandhism and Marxism is class struggle.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_8').set({
      'questionId': 8,
      'order': 8,
      'statements': [
          {'text': 'A constitutional government, by definition, is a limited government.', 'isCorrect': true},
          {'text': 'A constitutional government, by definition, is a popular government.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_9').set({
      'questionId': 9,
      'order': 9,
      'statements': [
          {'text': 'The most appropriate definition of liberty, in the context of polity, is the opportunity to develop oneself fully.', 'isCorrect': true},
          {'text': 'The most appropriate definition of liberty, in the context of polity, is the absence of restraint.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_10').set({
      'questionId': 10,
      'order': 10,
      'statements': [
          {'text': 'The most appropriate relationship between law and liberty is that if there are no laws, there is no liberty.', 'isCorrect': true},
          {'text': 'The most appropriate relationship between law and liberty is that if there are more laws, there is less liberty.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_11').set({
      'questionId': 11,
      'order': 11,
      'statements': [
          {'text': 'Limitations of powers, equality before law, and liberty and civil rights are regarded as the main features of the \'Rule of Law\'.', 'isCorrect': true},
          {'text': 'People\'s responsibility to the Government is regarded as one of the main features of the \'Rule of Law\'.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_12').set({
      'questionId': 12,
      'order': 12,
      'statements': [
          {'text': 'A constitutional government, by definition, is a government by the legislature.', 'isCorrect': true},
          {'text': 'A constitutional government, by definition, is a limited government.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_13').set({
      'questionId': 13,
      'order': 13,
      'statements': [
          {'text': 'Rights are claims of the citizens against the State.', 'isCorrect': true},
          {'text': 'Rights are claims of the State against the citizens.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_14').set({
      'questionId': 14,
      'order': 14,
      'statements': [
          {'text': 'Local self-government can be best explained as an exercise in democratic decentralisation.', 'isCorrect': true},
          {'text': 'Local self-government can be best explained as an exercise in federalism.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_15').set({
      'questionId': 15,
      'order': 15,
      'statements': [
          {'text': 'Democracy\'s superior virtue lies in the fact that it calls into activity the intelligence and character of ordinary men and women.', 'isCorrect': true},
          {'text': 'Democracy\'s superior virtue lies in the fact that it calls into activity a superior individual with dynamism and vision.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_16').set({
      'questionId': 16,
      'order': 16,
      'statements': [
          {'text': 'The main advantage of the parliamentary form of government is that the executive remains responsible to the legislature.', 'isCorrect': true},
          {'text': 'The main advantage of the parliamentary form of government is that it provides continuity of policy and is more efficient.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_17').set({
      'questionId': 17,
      'order': 17,
      'statements': [
          {'text': 'The principle underlying the Cabinet form of Government is that it is a mechanism of parliamentary democracy for ensuring the collective responsibility of the Government to the people.', 'isCorrect': true},
          {'text': 'The principle underlying the Cabinet form of Government is that it is a mechanism for speeding up the activities of the Government whose responsibilities are increasing day by day.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_18').set({
      'questionId': 18,
      'order': 18,
      'statements': [
          {'text': 'A Constitutional Government places effective restrictions on the authority of the State in the interest of individual liberty.', 'isCorrect': true},
          {'text': 'A Constitutional Government places effective restrictions on individual liberty in the interest of State authority.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_19').set({
      'questionId': 19,
      'order': 19,
      'statements': [
          {'text': 'Establishing effective District Planning Committees in all the districts, increasing government spending on public health, and strengthening the Mid-day Meal Scheme are essentially parts of Inclusive Governance.', 'isCorrect': true},
          {'text': 'Permitting the Non-Banking Financial Companies to do banking is essentially a part of Inclusive Governance.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_20').set({
      'questionId': 20,
      'order': 20,
      'statements': [
          {'text': 'Karl Marx explained the process of class struggle with the help of the theory of dialectical materialism.', 'isCorrect': true},
          {'text': 'Karl Marx explained the process of class struggle with the help of Darwin\'s theory of evolution.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_21').set({
      'questionId': 21,
      'order': 21,
      'statements': [
          {'text': 'Friedrich Engels wrote \'The Communist Manifesto\' along with Karl Marx.', 'isCorrect': true},
          {'text': 'Max Weber wrote \'The Communist Manifesto\' along with Karl Marx.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_22').set({
      'questionId': 22,
      'order': 22,
      'statements': [
          {'text': 'Proportional representation is not necessary in a country where a two-party system has developed.', 'isCorrect': true},
          {'text': 'Proportional representation is not necessary in a country where the first-past-the-post system prevails.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_23').set({
      'questionId': 23,
      'order': 23,
      'statements': [
          {'text': 'In Italy, 75 percent of the seats in both Houses of Parliament were filled on the basis of the first-past-the-post system and 25 percent on the basis of the Proportional Representation system of elections.', 'isCorrect': true},
          {'text': 'In Germany, 75 percent of the seats in both Houses of Parliament were filled on the basis of the first-past-the-post system and 25 percent on the basis of the Proportional Representation system of elections.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_24').set({
      'questionId': 24,
      'order': 24,
      'statements': [
          {'text': 'The ideology of Socialism believes in universalism and globalism, which explains why the emergence of economic globalism does not imply the decline of socialist ideology.', 'isCorrect': true},
          {'text': 'The emergence of economic globalism implies the decline of socialist ideology.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_25').set({
      'questionId': 25,
      'order': 25,
      'statements': [
          {'text': 'Among the forms of political protest, \'Boycott\' is derived from the name of the person who used it as a political weapon for the first time.', 'isCorrect': true},
          {'text': 'Among the forms of political protest, \'Hartal\' is derived from the name of the person who used it as a political weapon for the first time.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_26').set({
      'questionId': 26,
      'order': 26,
      'statements': [
          {'text': 'Bangladesh has more or less evolved a two-party system.', 'isCorrect': true},
          {'text': 'Sri Lanka has more or less evolved a two-party system.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_27').set({
      'questionId': 27,
      'order': 27,
      'statements': [
          {'text': 'The voter-seat distortion seen in the results of the Karnataka State Legislative Assembly election held in December 1994 is explained as the result of the adoption of the first-past-the-post system.', 'isCorrect': true},
          {'text': 'The voter-seat distortion seen in the results of the Karnataka State Legislative Assembly election held in December 1994 is explained as the result of the adoption of the Hare system.', 'isCorrect': false},
      ],
    });
    final topicRef2 = subjectRef.collection('topics').doc('indian_political_system');
    await topicRef2.set({
      'name': 'Indian Political System',
      'order': 6,
    });
    await topicRef2.collection('questions').doc('question_1').set({
      'questionId': 1,
      'order': 1,
      'statements': [
          {'text': 'In India, unlike in Britain, the power of the Parliament to legislate is limited, and matters related to the constitutionality of an amendment to an Act of Parliament are referred to the Constitution Bench by the Supreme Court.', 'isCorrect': true},
          {'text': 'As in Britain, the Indian Parliament is supreme or sovereign as regards legislation.', 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc('question_2').set({
      'questionId': 2,
      'order': 2,
      'statements': [
          {'text': 'The independence of the judiciary being safeguarded is an essential feature that indicates the federal character of Indian polity.', 'isCorrect': true},
          {'text': 'The Union Legislature having elected representatives from constituent units is an essential feature that indicates the federal character of Indian polity.', 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc('question_3').set({
      'questionId': 3,
      'order': 3,
      'statements': [
          {'text': 'With reference to India, there is only \'one citizenship and one domicile\'.', 'isCorrect': true},
          {'text': 'With reference to India, only a citizen by birth can become the Head of State.', 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc('question_4').set({
      'questionId': 4,
      'order': 4,
      'statements': [
          {'text': 'In the context of India, the characteristic appropriate for bureaucracy is that it is an agency for the implementation of public policy.', 'isCorrect': true},
          {'text': 'In the context of India, the characteristic appropriate for bureaucracy is that it is an agency for facilitating political stability and economic growth.', 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc('question_5').set({
      'questionId': 5,
      'order': 5,
      'statements': [
          {'text': 'The federating units in India have been given unequal representation in the Rajya Sabha, which is a feature of Indian federalism.', 'isCorrect': true},
          {'text': 'Indian federalism is the result of an agreement among the federating units.', 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc('question_6').set({
      'questionId': 6,
      'order': 6,
      'statements': [
          {'text': 'There is a Parliamentary System of Government in India because the Council of Ministers is responsible to the Lok Sabha.', 'isCorrect': true},
          {'text': 'There is a Parliamentary System of Government in India because the Lok Sabha is elected directly by the people.', 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc('question_7').set({
      'questionId': 7,
      'order': 7,
      'statements': [
          {'text': 'In the context of India, members of the cabinet being members of the parliament, and ministers holding office as long as they enjoy the confidence of the parliament, are principles implied institutionally in the parliamentary government.', 'isCorrect': true},
          {'text': 'In the context of India, the cabinet being headed by the head of the state is a principle implied institutionally in the parliamentary government.', 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc('question_8').set({
      'questionId': 8,
      'order': 8,
      'statements': [
          {'text': 'Articles 371A to 371I were inserted in the Constitution of India to meet the regional demands of Nagaland, Assam, Manipur, Andhra Pradesh, Sikkim, Mizoram, Arunachal Pradesh and Goa.', 'isCorrect': true},
          {'text': 'A naturalised citizen of India can never be deprived of his citizenship under any circumstances.', 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc('question_9').set({
      'questionId': 9,
      'order': 9,
      'statements': [
          {'text': 'The correct descending order of precedence in the Warrant of Precedence is: Judges of the Supreme Court, Deputy Chairman of Rajya Sabha, Attorney General of India, and Members of Parliament.', 'isCorrect': true},
          {'text': 'The correct descending order of precedence in the Warrant of Precedence is: Attorney General of India, Judges of the Supreme Court, Members of Parliament, and Deputy Chairman of Rajya Sabha.', 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc('question_10').set({
      'questionId': 10,
      'order': 10,
      'statements': [
          {'text': 'As per Indian Protocol, the Governor of a State, within his state, ranks highest in the order of precedence among the given options.', 'isCorrect': true},
          {'text': 'As per Indian Protocol, the Speaker of the Lok Sabha ranks highest in the order of precedence among the given options.', 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc('question_11').set({
      'questionId': 11,
      'order': 11,
      'statements': [
          {'text': 'The Indian parliamentary system is different from the British parliamentary system in that India has the system of judicial review.', 'isCorrect': true},
          {'text': 'The Indian parliamentary system is different from the British parliamentary system in that India has a bicameral legislature.', 'isCorrect': false},
      ],
    });
    final topicRef3 = subjectRef.collection('topics').doc('indian_constitution');
    await topicRef3.set({
      'name': 'Indian Constitution',
      'order': 7,
    });
    await topicRef3.collection('questions').doc('question_1').set({
      'questionId': 1,
      'order': 1,
      'statements': [
          {'text': 'A constitutional amendment relating to the Union List in the Seventh Schedule and to the extent of the executive power of a State requires ratification by the legislatures of not less than one-half of the States before being presented to the President for assent.', 'isCorrect': true},
          {'text': 'A constitutional amendment relating to the conditions of the Governor\'s office requires ratification by the legislatures of not less than one-half of the States before being presented to the President for assent.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_2').set({
      'questionId': 2,
      'order': 2,
      'statements': [
          {'text': 'Declaring an area in a State as a Scheduled Area under the Fifth Schedule of the Constitution does not cause the State Government to lose its executive power over that area, nor does it automatically allow the Union Government to take over the total administration of that area.', 'isCorrect': true},
          {'text': 'If an area in a State is declared as a Scheduled Area under the Fifth Schedule, the State Government loses its executive power in such areas and a local body assumes total administration.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_3').set({
      'questionId': 3,
      'order': 3,
      'statements': [
          {'text': 'As per Article 368 of the Constitution of India, the Parliament may amend any provision of the Constitution by way of addition, variation, and repeal, in accordance with the procedure laid down for the purpose.', 'isCorrect': true},
          {'text': 'As per Article 368 of the Constitution of India, the Parliament may amend a provision of the Constitution only by way of repeal, and not by addition or variation.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_4').set({
      'questionId': 4,
      'order': 4,
      'statements': [
          {'text': 'Powers of the Municipalities are given in Part IXA, Emergency provisions are given in Part XVIII, and provisions related to the amendment of the Constitution are given in Part XX of the Constitution of India.', 'isCorrect': true},
          {'text': 'Emergency provisions are given in Part IX of the Constitution of India.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_5').set({
      'questionId': 5,
      'order': 5,
      'statements': [
          {'text': 'Inter-State quarantine is a Union subject under the Union List, as per the Constitution of India.', 'isCorrect': true},
          {'text': 'Inter-State trade and commerce is a State subject under the State List, as per the Constitution of India.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_6').set({
      'questionId': 6,
      'order': 6,
      'statements': [
          {'text': 'The Constitution Day is celebrated on 26th November every year to promote constitutional values among citizens.', 'isCorrect': true},
          {'text': 'On 26th November, 1949, the Constituent Assembly of India set up a Drafting Committee under the Chairmanship of Dr. B.R. Ambedkar to prepare a Draft Constitution of India.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_7').set({
      'questionId': 7,
      'order': 7,
      'statements': [
          {'text': 'When a Constitution Amendment Bill is presented to the President of India, it is obligatory for the President to give his or her assent, and such a Bill must be passed by both the Lok Sabha and the Rajya Sabha by a special majority, with no provision for a joint sitting.', 'isCorrect': true},
          {'text': 'A bill amending the Constitution of India requires a prior recommendation of the President of India.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_8').set({
      'questionId': 8,
      'order': 8,
      'statements': [
          {'text': 'Bringing a particular area under the Fifth Schedule of the Constitution of India would prevent the transfer of land of tribal people to non-tribal people.', 'isCorrect': true},
          {'text': 'Bringing a particular area under the Fifth Schedule of the Constitution of India would convert that area into a Union Territory.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_9').set({
      'questionId': 9,
      'order': 9,
      'statements': [
          {'text': 'On 26th January 1950, the exact constitutional status of India was \'A Sovereign Democratic Republic\'.', 'isCorrect': true},
          {'text': 'On 26th January 1950, the exact constitutional status of India was \'A Sovereign Socialist Secular Democratic Republic\'.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_10').set({
      'questionId': 10,
      'order': 10,
      'statements': [
          {'text': 'The \'basic structure\' of the Constitution of India is not explicitly defined within the text of the Constitution itself; it is a doctrine evolved by the judiciary through case law.', 'isCorrect': true},
          {'text': 'The Constitution of India explicitly defines its \'basic structure\' in terms of federalism, secularism, fundamental rights and democracy.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_11').set({
      'questionId': 11,
      'order': 11,
      'statements': [
          {'text': 'The Preamble to the Constitution of India is a part of the Constitution but has no legal effect independently of other parts.', 'isCorrect': true},
          {'text': 'The Preamble to the Constitution of India is a part of the Constitution and has the same legal effect as any other part.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_12').set({
      'questionId': 12,
      'order': 12,
      'statements': [
          {'text': 'In India, the separation of the judiciary from the executive is enjoined by a Directive Principle of State Policy.', 'isCorrect': true},
          {'text': 'In India, the separation of the judiciary from the executive is enjoined by the Preamble of the Constitution.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_13').set({
      'questionId': 13,
      'order': 13,
      'statements': [
          {'text': 'The Ninth Schedule was introduced in the Constitution of India during the prime ministership of Jawaharlal Nehru.', 'isCorrect': true},
          {'text': 'The Ninth Schedule was introduced in the Constitution of India during the prime ministership of Indira Gandhi.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_14').set({
      'questionId': 14,
      'order': 14,
      'statements': [
          {'text': 'Under the Fifth Schedule of the Constitution of India, the transfer of tribal land to private parties for mining can be declared null and void.', 'isCorrect': true},
          {'text': 'Under the Ninth Schedule of the Constitution of India, the transfer of tribal land to private parties for mining can be declared null and void.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_15').set({
      'questionId': 15,
      'order': 15,
      'statements': [
          {'text': 'The Parliament of India can place a particular law in the Ninth Schedule of the Constitution of India.', 'isCorrect': true},
          {'text': 'The validity of a law placed in the Ninth Schedule of the Constitution of India cannot be examined by any court and no judgement can be made on it.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_16').set({
      'questionId': 16,
      'order': 16,
      'statements': [
          {'text': 'If the President of India exercises the power provided under Article 356 of the Constitution in respect of a particular State, the powers of the Legislature of that State shall be exercisable by or under the authority of Parliament.', 'isCorrect': true},
          {'text': 'If the President of India exercises the power provided under Article 356 of the Constitution in respect of a particular State, the assembly of the State is automatically dissolved.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_17').set({
      'questionId': 17,
      'order': 17,
      'statements': [
          {'text': 'Liberty of thought, liberty of expression, and liberty of belief are objectives embodied in the Preamble to the Constitution of India.', 'isCorrect': true},
          {'text': 'Economic liberty is an objective embodied in the Preamble to the Constitution of India.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_18').set({
      'questionId': 18,
      'order': 18,
      'statements': [
          {'text': 'The mind of the makers of the Constitution of India is reflected in the Preamble.', 'isCorrect': true},
          {'text': 'The mind of the makers of the Constitution of India is reflected in the Fundamental Duties.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_19').set({
      'questionId': 19,
      'order': 19,
      'statements': [
          {'text': 'In India, Judicial Review implies the power of the Judiciary to pronounce upon the constitutionality of laws and executive orders.', 'isCorrect': true},
          {'text': 'In India, Judicial Review implies the power of the Judiciary to question the wisdom of the laws enacted by the Legislatures.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_20').set({
      'questionId': 20,
      'order': 20,
      'statements': [
          {'text': 'The removal of the Council of Ministers in the State is a necessary consequence of the proclamation of President\'s Rule in that State.', 'isCorrect': true},
          {'text': 'Dissolution of the State Legislative Assembly is a necessary consequence of the proclamation of President\'s Rule in that State.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_21').set({
      'questionId': 21,
      'order': 21,
      'statements': [
          {'text': 'The provisions in the Fifth Schedule and Sixth Schedule of the Constitution of India are made in order to protect the interests of Scheduled Tribes.', 'isCorrect': true},
          {'text': 'The provisions in the Fifth Schedule and Sixth Schedule of the Constitution of India are made in order to determine the boundaries between States.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_22').set({
      'questionId': 22,
      'order': 22,
      'statements': [
          {'text': 'Economic justice, as one of the objectives of the Indian Constitution, has been provided for in the Preamble and the Directive Principles of State Policy.', 'isCorrect': true},
          {'text': 'Economic justice, as one of the objectives of the Indian Constitution, has been provided for in the Preamble and the Fundamental Rights.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_23').set({
      'questionId': 23,
      'order': 23,
      'statements': [
          {'text': 'An amendment to the Constitution of India can be initiated by the introduction of a bill in either House of Parliament, not the Lok Sabha alone.', 'isCorrect': true},
          {'text': 'An amendment to the Constitution of India can be initiated by an introduction of a bill in the Lok Sabha only.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_24').set({
      'questionId': 24,
      'order': 24,
      'statements': [
          {'text': 'The Directive Principles of State Policy, provisions relating to Rural and Urban Local Bodies, and the Fifth, Sixth and Seventh Schedules of the Constitution of India all have a bearing on Education.', 'isCorrect': true},
          {'text': 'Only the Directive Principles of State Policy and provisions relating to Rural and Urban Local Bodies have a bearing on Education, while the Fifth, Sixth and Seventh Schedules do not.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_25').set({
      'questionId': 25,
      'order': 25,
      'statements': [
          {'text': 'The \'Instrument of Instructions\' contained in the Government of India Act, 1935 was incorporated in the Constitution of India in 1950 as the Directive Principles of State Policy.', 'isCorrect': true},
          {'text': 'The \'Instrument of Instructions\' contained in the Government of India Act, 1935 was incorporated in the Constitution of India in 1950 as the Fundamental Rights.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_26').set({
      'questionId': 26,
      'order': 26,
      'statements': [
          {'text': 'The Fifth Schedule of the Constitution of India contains special provisions for the administration and control of Scheduled Areas in several States.', 'isCorrect': true},
          {'text': 'The Ninth Schedule of the Constitution of India contains special provisions for the administration and control of Scheduled Areas in several States.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_27').set({
      'questionId': 27,
      'order': 27,
      'statements': [
          {'text': 'A Proclamation of Financial Emergency issued under Article 360 of the Constitution shall cease to operate at the expiration of two months, unless before the expiration of that period it has been approved by a resolution of both Houses of Parliament.', 'isCorrect': true},
          {'text': 'If a Proclamation of Financial Emergency is in operation, the President of India can issue directions for the reduction of the salaries and allowances of all persons serving in connection with the affairs of the Union, including the Judges of the Supreme Court and High Courts.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_28').set({
      'questionId': 28,
      'order': 28,
      'statements': [
          {'text': 'Regulation of labour and safety in mines and oilfields is a subject under the Union List in the Seventh Schedule of the Constitution of India.', 'isCorrect': true},
          {'text': 'Agriculture is a subject under the Union List in the Seventh Schedule of the Constitution of India.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_29').set({
      'questionId': 29,
      'order': 29,
      'statements': [
          {'text': 'The Constitution of India does not define \'backward classes\'.', 'isCorrect': true},
          {'text': 'There is no provision in the Constitution of India to encourage equal pay for equal work for both men and women.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_30').set({
      'questionId': 30,
      'order': 30,
      'statements': [
          {'text': 'The Ninth, Tenth, Eleventh and Twelfth Schedules were added to the Constitution of India by Constitution (Amendment) Acts.', 'isCorrect': true},
          {'text': 'The Constitution of India has 20 parts and 390 articles in all, as originally enacted.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_31').set({
      'questionId': 31,
      'order': 31,
      'statements': [
          {'text': 'The Fourth Schedule of the Constitution of India allocates seats in the Council of States.', 'isCorrect': true},
          {'text': 'The Fourth Schedule of the Constitution of India contains the scheme of the distribution of powers between the Union and the States.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_32').set({
      'questionId': 32,
      'order': 32,
      'statements': [
          {'text': 'Post Office Savings Bank is correctly placed under the Union List, as per the Constitution of India.', 'isCorrect': true},
          {'text': 'Stock Exchanges are correctly placed under the Concurrent List, as per the Constitution of India.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_33').set({
      'questionId': 33,
      'order': 33,
      'statements': [
          {'text': 'Article 257 of the Constitution of India provides that the executive power of every State shall be so exercised as not to impede or prejudice the exercise of the executive power of the Union.', 'isCorrect': true},
          {'text': 'Article 356 of the Constitution of India provides that the executive power of every State shall be so exercised as not to impede or prejudice the exercise of the executive power of the Union.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_34').set({
      'questionId': 34,
      'order': 34,
      'statements': [
          {'text': 'Article 355 of the Constitution of India provides that it shall be the duty of the Union to protect every State against external aggression and internal disturbance.', 'isCorrect': true},
          {'text': 'Article 325 of the Constitution of India provides that it shall be the duty of the Union to protect every State against external aggression and internal disturbance.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_35').set({
      'questionId': 35,
      'order': 35,
      'statements': [
          {'text': 'The Directive Principles of State Policy in the Indian Constitution were derived from Ireland, the Fundamental Rights were derived from the USA, the Concurrent List was derived from Australia, and the concept of India as a Union of States with greater powers to the Union was derived from Canada.', 'isCorrect': true},
          {'text': 'The Fundamental Rights in the Indian Constitution were derived from the United Kingdom.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_36').set({
      'questionId': 36,
      'order': 36,
      'statements': [
          {'text': 'The First Schedule of the Constitution of India lists the names of the States and specifies their territories.', 'isCorrect': true},
          {'text': 'The Second Schedule of the Constitution of India lists the names of the States and specifies their territories.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_37').set({
      'questionId': 37,
      'order': 37,
      'statements': [
          {'text': 'If a new State of the Indian Union is to be created, the First Schedule of the Constitution must be amended.', 'isCorrect': true},
          {'text': 'If a new State of the Indian Union is to be created, the Fifth Schedule of the Constitution must be amended.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_38').set({
      'questionId': 38,
      'order': 38,
      'statements': [
          {'text': 'Article 54 of the Constitution deals with the election of the President of India, Article 75 deals with the appointment of the Prime Minister and Council of Ministers, Article 155 deals with the appointment of the Governor of a State, and Article 164 deals with the appointment of the Chief Minister and Council of Ministers of a State.', 'isCorrect': true},
          {'text': 'Article 75 of the Constitution deals with the composition of Legislative Assemblies.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_39').set({
      'questionId': 39,
      'order': 39,
      'statements': [
          {'text': 'Article 350A of the Constitution provides that it shall be the endeavour of every State to provide adequate facilities for instruction in the mother tongue at the primary stage of education.', 'isCorrect': true},
          {'text': 'Article 350 of the Constitution provides that it shall be the endeavour of every State to provide adequate facilities for instruction in the mother tongue at the primary stage of education.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_40').set({
      'questionId': 40,
      'order': 40,
      'statements': [
          {'text': 'The Fourth Schedule of the Constitution of India allocates seats in the Council of States.', 'isCorrect': true},
          {'text': 'The Fourth Schedule of the Constitution of India contains the provisions regarding the administration of tribal areas.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_41').set({
      'questionId': 41,
      'order': 41,
      'statements': [
          {'text': 'The Constitution of India recognises religious and linguistic minorities.', 'isCorrect': true},
          {'text': 'The Constitution of India recognises religious, linguistic and ethnic minorities.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_42').set({
      'questionId': 42,
      'order': 42,
      'statements': [
          {'text': 'An amendment of the Constitution of India can be initiated by the Lok Sabha or the Rajya Sabha.', 'isCorrect': true},
          {'text': 'An amendment of the Constitution of India can be initiated by the State Legislatures or the President.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_43').set({
      'questionId': 43,
      'order': 43,
      'statements': [
          {'text': 'The Tenth Schedule of the Constitution of India contains provisions regarding the Anti-Defection Act.', 'isCorrect': true},
          {'text': 'The Eighth Schedule of the Constitution of India contains provisions regarding the Anti-Defection Act.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_44').set({
      'questionId': 44,
      'order': 44,
      'statements': [
          {'text': 'In the Preamble to the Constitution of India, \'X\' stands for the Twenty sixth day of November, 1949.', 'isCorrect': true},
          {'text': 'In the Preamble to the Constitution of India, \'X\' stands for the Twenty sixth day of January, 1950.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_45').set({
      'questionId': 45,
      'order': 45,
      'statements': [
          {'text': 'A constitutional amendment relating to the election of the President, the representation of States in Parliament, or any of the Lists in the Seventh Schedule is possible only with the ratification of the legislatures of not less than one-half of the States.', 'isCorrect': true},
          {'text': 'A constitutional amendment relating to the abolition of the Legislative Council of a State is possible only with the ratification of the legislatures of not less than one-half of the States.', 'isCorrect': false},
      ],
    });
    final topicRef4 = subjectRef.collection('topics').doc('fundamental_rights');
    await topicRef4.set({
      'name': 'Fundamental Rights',
      'order': 8,
    });
    await topicRef4.collection('questions').doc('question_1').set({
      'questionId': 1,
      'order': 1,
      'statements': [
          {'text': 'The Supreme Court of India has placed the Right to Privacy under Article 21 of the Constitution of India.', 'isCorrect': true},
          {'text': 'The Supreme Court of India has placed the Right to Privacy under Article 19 of the Constitution of India.', 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc('question_2').set({
      'questionId': 2,
      'order': 2,
      'statements': [
          {'text': 'The Supreme Court of India has held in some judgements that the reservation policies made under Article 16(4) of the Constitution of India would be limited by Article 335 for maintenance of efficiency of administration.', 'isCorrect': true},
          {'text': 'Article 335 of the Constitution of India defines the term \'efficiency of administration\'.', 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc('question_3').set({
      'questionId': 3,
      'order': 3,
      'statements': [
          {'text': 'The \'Right to Privacy\' is protected under Article 21 of the Constitution of India.', 'isCorrect': true},
          {'text': 'The \'Right to Privacy\' is protected under Article 19 of the Constitution of India.', 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc('question_4').set({
      'questionId': 4,
      'order': 4,
      'statements': [
          {'text': 'During judicial custody, the police officer in charge of the case is not allowed to interrogate the suspect without the approval of the court.', 'isCorrect': true},
          {'text': 'Judicial custody means an accused is in the custody of the concerned magistrate and such accused is locked up in a police station, not in jail.', 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc('question_5').set({
      'questionId': 5,
      'order': 5,
      'statements': [
          {'text': 'State Governments have their own Prisoners Release on Parole Rules.', 'isCorrect': true},
          {'text': 'When a prisoner makes out a sufficient case, parole cannot be denied to such prisoner because it becomes a matter of his/her right.', 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc('question_6').set({
      'questionId': 6,
      'order': 6,
      'statements': [
          {'text': 'A legislation which confers on the executive or administrative authority an unguided and uncontrolled discretionary power in the matter of application of law violates Article 14 of the Constitution of India.', 'isCorrect': true},
          {'text': 'A legislation which confers on the executive or administrative authority an unguided and uncontrolled discretionary power in the matter of application of law violates Article 32 of the Constitution of India.', 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc('question_7').set({
      'questionId': 7,
      'order': 7,
      'statements': [
          {'text': 'In India, the Right to Property is a legal right available to any person.', 'isCorrect': true},
          {'text': 'In India, the Right to Property is a Fundamental Right available to citizens only.', 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc('question_8').set({
      'questionId': 8,
      'order': 8,
      'statements': [
          {'text': 'Protection against untouchability as a form of discrimination is incorporated under the Right to Equality among the categories of Fundamental Rights.', 'isCorrect': true},
          {'text': 'Protection against untouchability as a form of discrimination is incorporated under the Right against Exploitation among the categories of Fundamental Rights.', 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc('question_9').set({
      'questionId': 9,
      'order': 9,
      'statements': [
          {'text': 'Article 21 of the Constitution of India safeguards one\'s right to marry the person of one\'s choice.', 'isCorrect': true},
          {'text': 'Article 25 of the Constitution of India safeguards one\'s right to marry the person of one\'s choice.', 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc('question_10').set({
      'questionId': 10,
      'order': 10,
      'statements': [
          {'text': 'As per the Right to Education (RTE) Act, for teaching primary classes, a candidate is required to pass a Teacher Eligibility Test conducted in accordance with the National Council of Teacher Education guidelines.', 'isCorrect': true},
          {'text': 'As per the Right to Education (RTE) Act, to be eligible for appointment as a teacher in a State, a person would be required to possess the minimum qualification laid down by the concerned State Council of Teacher Education.', 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc('question_11').set({
      'questionId': 11,
      'order': 11,
      'statements': [
          {'text': 'The Right to Privacy is protected as an intrinsic part of the Right to Life and Personal Liberty under Article 21 and the freedoms guaranteed in Part III of the Constitution of India.', 'isCorrect': true},
          {'text': 'The Right to Privacy is protected as an intrinsic part of the Right to Life and Personal Liberty under Article 17 and the Directive Principles of State Policy in Part IV of the Constitution of India.', 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc('question_12').set({
      'questionId': 12,
      'order': 12,
      'statements': [
          {'text': 'The right to vote and to be elected in India is a Constitutional Right.', 'isCorrect': true},
          {'text': 'The right to vote and to be elected in India is a Fundamental Right.', 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc('question_13').set({
      'questionId': 13,
      'order': 13,
      'statements': [
          {'text': 'The Right against Exploitation in the Constitution of India envisages the prohibition of traffic in human beings and forced labour, and the prohibition of employment of children in factories and mines.', 'isCorrect': true},
          {'text': 'The Right against Exploitation in the Constitution of India envisages the abolition of untouchability and the protection of the interests of minorities.', 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc('question_14').set({
      'questionId': 14,
      'order': 14,
      'statements': [
          {'text': 'Right to education, right to equal access to public service, and right to food are all human rights under the Universal Declaration of Human Rights.', 'isCorrect': true},
          {'text': 'Right to food is not recognised as a human right under the Universal Declaration of Human Rights.', 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc('question_15').set({
      'questionId': 15,
      'order': 15,
      'statements': [
          {'text': 'In India, if a religious sect/community is given the status of a national minority, it is entitled to establish and administer exclusive educational institutions and to derive benefits from the Prime Minister\'s 15-point programme.', 'isCorrect': true},
          {'text': 'In India, if a religious sect/community is given the status of a national minority, the President of India automatically nominates a representative of the community to the Lok Sabha.', 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc('question_16').set({
      'questionId': 16,
      'order': 16,
      'statements': [
          {'text': 'The Right to Property is a legal right but not a fundamental right in India.', 'isCorrect': true},
          {'text': 'Article 301 of the Constitution of India pertains to the Right to Property.', 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc('question_17').set({
      'questionId': 17,
      'order': 17,
      'statements': [
          {'text': 'Article 14 of the Constitution guarantees equality before the law, Article 15 prohibits discrimination on grounds of religion, race, caste, sex or place of birth, Article 16 guarantees equality of opportunity in matters of public employment, and Article 17 abolishes untouchability.', 'isCorrect': true},
          {'text': 'Article 14 of the Constitution abolishes untouchability and forbids its practice in any form.', 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc('question_18').set({
      'questionId': 18,
      'order': 18,
      'statements': [
          {'text': 'Article 24 of the Constitution of India states that no child below the age of fourteen years shall be employed to work in any factory or mine or engaged in any other hazardous employment.', 'isCorrect': true},
          {'text': 'Article 45 of the Constitution of India states that no child below the age of fourteen years shall be employed to work in any factory or mine or engaged in any other hazardous employment.', 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc('question_19').set({
      'questionId': 19,
      'order': 19,
      'statements': [
          {'text': 'Article 16(2) of the Constitution provides that no person can be discriminated against in the matter of public appointment on the ground of race, religion or caste; Article 29(2) provides that no citizen shall be denied admission into any educational institution maintained or aided by the State on grounds of religion, race, caste or language; Article 30(1) provides that all minorities, whether based on religion or language, have the fundamental right to establish and administer educational institutions of their choice; and Article 31(1), as it then stood, provided that no person shall be deprived of his property save by authority of law.', 'isCorrect': true},
          {'text': 'Article 16(2) of the Constitution provides that no person shall be deprived of his property save by the authority of law.', 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc('question_20').set({
      'questionId': 20,
      'order': 20,
      'statements': [
          {'text': 'Dr. B.R. Ambedkar described the Right to Constitutional Remedies as the heart and soul of the Constitution.', 'isCorrect': true},
          {'text': 'Dr. B.R. Ambedkar described the Right to Equality as the heart and soul of the Constitution.', 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc('question_21').set({
      'questionId': 21,
      'order': 21,
      'statements': [
          {'text': 'In the Indian Constitution, the Right to Equality is granted by Article 14 to Article 18.', 'isCorrect': true},
          {'text': 'In the Indian Constitution, the Right to Equality is granted by Article 15 to Article 19.', 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc('question_22').set({
      'questionId': 22,
      'order': 22,
      'statements': [
          {'text': 'A British citizen staying in India cannot claim the Right to Freedom of trade and profession.', 'isCorrect': true},
          {'text': 'A British citizen staying in India cannot claim the Right to Protection of life and personal liberty.', 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc('question_23').set({
      'questionId': 23,
      'order': 23,
      'statements': [
          {'text': 'No one can be compelled to sing the National Anthem since it would be violative of the Right to freedom of speech and expression and the Right to freedom of conscience and practice and propagation of religion, and because there is no legal provision obliging anyone to sing the National Anthem.', 'isCorrect': true},
          {'text': 'A person can be legally compelled to sing the National Anthem, as there exists a legal provision obliging everyone to do so.', 'isCorrect': false},
      ],
    });

    print('Polity both True/False seeding completed.');
    print('Sheets: 4');
    print('Topics: 4');
    print('Questions: 106');
    print('Statements: 212');
  }



  static Future<void> seed() async {
    final subjectRef =
        _firestore.collection('subjects').doc('polity');

    await subjectRef.set({
      'name': 'Indian Polity',
      'order': 2,
    }, SetOptions(merge: true));

    final topicRef1 = subjectRef.collection('topics').doc('dpsps_and_fundamental_duties');
    await topicRef1.set({
      'name': 'DPSPs and Fundamental Duties',
      'order': 1,
    });
    await topicRef1.collection('questions').doc('question_1').set({
      'questionId': 1,
      'order': 1,
      'statements': [
          {'text': 'In the Constitution of India, separation of the judiciary from the executive is a Directive Principle of State Policy, preserving the rich heritage of our composite culture is a Fundamental Duty, and prohibition of employment of children below 14 years in factories is a Fundamental Right — all three are correctly matched.', 'isCorrect': true},
          {'text': 'In the Constitution of India, prohibition of employment of children below 14 years in factories is provided under the Directive Principles of State Policy, not the Fundamental Rights.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_2').set({
      'questionId': 2,
      'order': 2,
      'statements': [
          {'text': 'Under the Constitution of India, concentration of wealth and means of production to the common detriment is addressed under the Directive Principles of State Policy.', 'isCorrect': true},
          {'text': 'Under the Constitution of India, concentration of wealth to the common detriment violates the Fundamental Right to Equality.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_3').set({
      'questionId': 3,
      'order': 3,
      'statements': [
          {'text': 'The Constitution of India declares the ideal of a Welfare State under the Directive Principles of State Policy.', 'isCorrect': true},
          {'text': 'The Constitution of India declares the ideal of a Welfare State under the Fundamental Rights.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_4').set({
      'questionId': 4,
      'order': 4,
      'statements': [
          {'text': 'The Directive Principles of State Policy in Part IV of the Constitution are not enforceable by any court, but they are meant to influence the making of laws by the State.', 'isCorrect': true},
          {'text': 'The Directive Principles of State Policy in Part IV of the Constitution are enforceable by courts of law.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_5').set({
      'questionId': 5,
      'order': 5,
      'statements': [
          {'text': 'Besides the Fundamental Rights, the Preamble, the Directive Principles of State Policy and the Fundamental Duties of the Constitution of India all reflect the principles of the Universal Declaration of Human Rights, 1948.', 'isCorrect': true},
          {'text': 'Besides the Fundamental Rights, only the Directive Principles of State Policy reflect the principles of the Universal Declaration of Human Rights, 1948.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_6').set({
      'questionId': 6,
      'order': 6,
      'statements': [
          {'text': 'The 42nd Amendment to the Constitution added the principle of participation of workers in the management of industries to the Directive Principles of State Policy.', 'isCorrect': true},
          {'text': 'The 42nd Amendment to the Constitution added the principle of equal pay for equal work for men and women to the Directive Principles of State Policy.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_7').set({
      'questionId': 7,
      'order': 7,
      'statements': [
          {'text': 'The Directive Principles of State Policy do not constitute limitations upon either the legislative or the executive function of the State.', 'isCorrect': true},
          {'text': 'The Directive Principles of State Policy constitute limitations upon both the legislative and the executive function of the State.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_8').set({
      'questionId': 8,
      'order': 8,
      'statements': [
          {'text': 'No legislative process has been provided to enforce the Fundamental Duties of Indian citizens, and they are not correlative to legal duties.', 'isCorrect': true},
          {'text': 'A legislative process has been provided to enforce the Fundamental Duties of Indian citizens.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_9').set({
      'questionId': 9,
      'order': 9,
      'statements': [
          {'text': 'In the context of India, Rights are correlative with Duties.', 'isCorrect': true},
          {'text': 'In the context of India, Rights are personal and hence independent of society and Duties.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_10').set({
      'questionId': 10,
      'order': 10,
      'statements': [
          {'text': 'To uphold and protect the sovereignty, unity and integrity of India is a Fundamental Duty under the Constitution of India.', 'isCorrect': true},
          {'text': 'To uphold and protect the sovereignty, unity and integrity of India is a Directive Principle of State Policy under the Constitution of India.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_11').set({
      'questionId': 11,
      'order': 11,
      'statements': [
          {'text': 'The ideal of a "Welfare State" in the Indian Constitution is enshrined in the Directive Principles of State Policy.', 'isCorrect': true},
          {'text': 'The ideal of a "Welfare State" in the Indian Constitution is enshrined in the Fundamental Rights.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_12').set({
      'questionId': 12,
      'order': 12,
      'statements': [
          {'text': 'The Directive Principles of State Policy spell out the socio-economic democracy in the country, and their provisions are not enforceable by any court.', 'isCorrect': true},
          {'text': 'The Directive Principles of State Policy are enforceable by courts of law.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_13').set({
      'questionId': 13,
      'order': 13,
      'statements': [
          {'text': 'In the Constitution of India, promotion of international peace and security is included in the Directive Principles of State Policy.', 'isCorrect': true},
          {'text': 'In the Constitution of India, promotion of international peace and security is included in the Fundamental Duties.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_14').set({
      'questionId': 14,
      'order': 14,
      'statements': [
          {'text': 'To safeguard public property is not one of the Fundamental Duties listed in the Constitution of India.', 'isCorrect': true},
          {'text': 'To vote in public elections is not one of the Fundamental Duties listed in the Constitution of India.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_15').set({
      'questionId': 15,
      'order': 15,
      'statements': [
          {'text': 'According to the Constitution of India, the Directive Principles of State Policy are fundamental for the governance of the country.', 'isCorrect': true},
          {'text': 'According to the Constitution of India, the Fundamental Rights are fundamental for the governance of the country.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_16').set({
      'questionId': 16,
      'order': 16,
      'statements': [
          {'text': 'To protect the weaker sections from social injustice is one of the Fundamental Duties laid down in the Constitution of India.', 'isCorrect': true},
          {'text': 'To preserve the rich heritage of our composite culture, to develop the scientific temper and spirit of inquiry, and to strive towards excellence in all spheres of individual and collective activity are Fundamental Duties laid down in the Constitution of India.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_17').set({
      'questionId': 17,
      'order': 17,
      'statements': [
          {'text': 'Securing a uniform civil code for citizens, organising village Panchayats, and securing for all workers reasonable leisure and cultural opportunities are Gandhian principles reflected in the Directive Principles of State Policy.', 'isCorrect': true},
          {'text': 'Promoting cottage industries in rural areas is a Gandhian principle reflected in the Directive Principles of State Policy.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_18').set({
      'questionId': 18,
      'order': 18,
      'statements': [
          {'text': 'The National Social Assistance Programme launched by the Government of India fulfils only the Directive Principles of State Policy.', 'isCorrect': true},
          {'text': 'The National Social Assistance Programme launched by the Government of India fulfils only the Fundamental Rights.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_19').set({
      'questionId': 19,
      'order': 19,
      'statements': [
          {'text': 'Prohibition of the consumption, except for medicinal purposes, of intoxicating drinks and other health-injurious drugs is included in the Directive Principles of State Policy.', 'isCorrect': true},
          {'text': 'Prohibition of traffic in human beings and forced labour is included in the Directive Principles of State Policy.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_20').set({
      'questionId': 20,
      'order': 20,
      'statements': [
          {'text': 'The purpose of including the Directive Principles of State Policy in the Indian Constitution is to establish social and economic democracy.', 'isCorrect': true},
          {'text': 'The purpose of including the Directive Principles of State Policy in the Indian Constitution is to establish political democracy.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_21').set({
      'questionId': 21,
      'order': 21,
      'statements': [
          {'text': 'Article 51 of the Directive Principles of State Policy deals with the promotion of international peace and security.', 'isCorrect': true},
          {'text': 'Article 48A of the Directive Principles of State Policy deals with the promotion of international peace and security.', 'isCorrect': false},
      ],
    });
    final topicRef2 = subjectRef.collection('topics').doc('ministers_ministries_and_secretariat');
    await topicRef2.set({
      'name': 'Ministers, Ministries and Secretariat',
      'order': 2,
    });
    await topicRef2.collection('questions').doc('question_1').set({
      'questionId': 1,
      'order': 1,
      'statements': [
          {'text': 'The total number of ministers in the Union Government, including the Prime Minister, shall not exceed 15 percent of the total number of members in the Lok Sabha.', 'isCorrect': true},
          {'text': 'The Constitution of India classifies ministers into four ranks — Cabinet Minister, Minister of State with Independent Charge, Minister of State, and Deputy Minister.', 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc('question_2').set({
      'questionId': 2,
      'order': 2,
      'statements': [
          {'text': 'In 1970, the Department of Personnel was constituted on the recommendation of the Administrative Reforms Commission (1966), and it was placed under the Prime Minister\'s charge.', 'isCorrect': true},
          {'text': 'The Gopalaswami Ayyangar Committee suggested that a minister and a secretary be designated solely for pursuing the subject of administrative reform and promoting it.', 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc('question_3').set({
      'questionId': 3,
      'order': 3,
      'statements': [
          {'text': 'The Ministry of Tribal Affairs is the nodal agency at the national level to ensure effective implementation of the Scheduled Tribes and Other Traditional Forest Dwellers (Recognition of Forest Rights) Act, 2006.', 'isCorrect': true},
          {'text': 'The Ministry of Environment, Forest and Climate Change is the nodal agency at the national level to ensure effective implementation of the Scheduled Tribes and Other Traditional Forest Dwellers (Recognition of Forest Rights) Act, 2006.', 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc('question_4').set({
      'questionId': 4,
      'order': 4,
      'statements': [
          {'text': 'The Chief Secretary of a State does not have a fixed tenure of office.', 'isCorrect': true},
          {'text': 'The Chief Secretary of a State has a fixed tenure of office.', 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc('question_5').set({
      'questionId': 5,
      'order': 5,
      'statements': [
          {'text': 'The Executive Power of the Union of India is vested in the President of India.', 'isCorrect': true},
          {'text': 'The Executive Power of the Union of India is vested in the Prime Minister of India.', 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc('question_6').set({
      'questionId': 6,
      'order': 6,
      'statements': [
          {'text': 'The President makes rules for the more convenient transaction of the business of the Government of India, and for the allocation among Ministers of that business.', 'isCorrect': true},
          {'text': 'All executive actions of the Government of India are expressed to be taken in the name of the Prime Minister.', 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc('question_7').set({
      'questionId': 7,
      'order': 7,
      'statements': [
          {'text': 'None of the listed programme-ministry pairs — the Drought-Prone Area Programme with the Ministry of Agriculture, the Desert Development Programme with the Ministry of Environment and Forests, and the National Watershed Development Project for Rainfed Areas with the Ministry of Rural Development — is correctly matched.', 'isCorrect': true},
          {'text': 'The Desert Development Programme is correctly matched with the Ministry of Environment and Forests.', 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc('question_8').set({
      'questionId': 8,
      'order': 8,
      'statements': [
          {'text': 'Preparing the agenda for Cabinet meetings and providing secretariat assistance to Cabinet Committees are functions of the Cabinet Secretariat.', 'isCorrect': true},
          {'text': 'Allocation of financial resources to the Ministries is a function of the Cabinet Secretariat.', 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc('question_9').set({
      'questionId': 9,
      'order': 9,
      'statements': [
          {'text': 'The Union Ministers hold office during the pleasure of the President of India, and the Prime Minister communicates to the President the Council of Ministers\' proposals for legislation.', 'isCorrect': true},
          {'text': 'The Council of Ministers at the Centre is collectively responsible to the Parliament as a whole.', 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc('question_10').set({
      'questionId': 10,
      'order': 10,
      'statements': [
          {'text': 'At the time of appointment, the Prime Minister of India need not necessarily be a member of one of the Houses of Parliament, but must become a member of one of the Houses within six months.', 'isCorrect': true},
          {'text': 'At the time of appointment, the Prime Minister of India must already be a member of the Lok Sabha.', 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc('question_11').set({
      'questionId': 11,
      'order': 11,
      'statements': [
          {'text': 'Cabinet Ministers need not be members of the Lok Sabha only, and the Cabinet Secretariat does not operate under the Ministry of Parliamentary Affairs.', 'isCorrect': true},
          {'text': 'The Constitution of India provides that all Cabinet Ministers shall compulsorily be sitting members of the Lok Sabha only.', 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc('question_12').set({
      'questionId': 12,
      'order': 12,
      'statements': [
          {'text': 'The 91st Constitutional Amendment states that the total number of Ministers, including the Prime Minister, in the Council of Ministers shall not exceed fifteen percent of the total number of members of the House of the People.', 'isCorrect': true},
          {'text': 'The 93rd Constitutional Amendment states that the total number of Ministers, including the Prime Minister, in the Council of Ministers shall not exceed fifteen percent of the total number of members of the House of the People.', 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc('question_13').set({
      'questionId': 13,
      'order': 13,
      'statements': [
          {'text': 'The number of Ministries at the Centre on 15th August 1947 was 18.', 'isCorrect': true},
          {'text': 'The number of Ministries at the Centre at present is 36.', 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc('question_14').set({
      'questionId': 14,
      'order': 14,
      'statements': [
          {'text': 'Each Ministry of the Government of India is assigned to a Minister by the President of India on the advice of the Prime Minister.', 'isCorrect': true},
          {'text': 'The Ministries and Departments of the Government of India are created by the Prime Minister on the advice of the Cabinet Secretary.', 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc('question_15').set({
      'questionId': 15,
      'order': 15,
      'statements': [
          {'text': 'The Department of Atomic Energy functions under the administration of the Prime Minister\'s Office.', 'isCorrect': true},
          {'text': 'The Department of Atomic Energy functions under the administration of the Ministry of Science and Technology.', 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc('question_16').set({
      'questionId': 16,
      'order': 16,
      'statements': [
          {'text': 'The Department of Border Management is a Department of the Ministry of Home Affairs.', 'isCorrect': true},
          {'text': 'The Department of Border Management is a Department of the Ministry of Defence.', 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc('question_17').set({
      'questionId': 17,
      'order': 17,
      'statements': [
          {'text': 'The 91st Constitution Amendment Act seeks that the size of the Councils of Ministers at the Centre and in a State must not exceed 15 per cent of the total number of members in the Lok Sabha and the total number of members of the Legislative Assembly of that State, respectively.', 'isCorrect': true},
          {'text': 'The 97th Constitution Amendment Act seeks that the size of the Councils of Ministers at the Centre and in a State must not exceed 15 per cent of the total number of members in the Lok Sabha and the total number of members of the Legislative Assembly of that State, respectively.', 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc('question_18').set({
      'questionId': 18,
      'order': 18,
      'statements': [
          {'text': 'Jawaharlal Nehru was in his fourth term as the Prime Minister of India at the time of his death, and the first non-Congress Prime Minister of India assumed office in 1977.', 'isCorrect': true},
          {'text': 'Jawaharlal Nehru represented the Rae Bareli constituency as a Member of Parliament.', 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc('question_19').set({
      'questionId': 19,
      'order': 19,
      'statements': [
          {'text': 'MCA-21 is a major e-governance initiative taken up by the Government of India.', 'isCorrect': true},
          {'text': 'MCA-21 is a major initiative taken up by the Government of India in the area of foreign direct investment.', 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc('question_20').set({
      'questionId': 20,
      'order': 20,
      'statements': [
          {'text': 'V. P. Singh, R. Venkataraman, Y. B. Chavan and Pranab Mukherjee have all served as Union Finance Ministers of India.', 'isCorrect': true},
          {'text': 'R. Venkataraman never served as a Union Finance Minister of India.', 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc('question_21').set({
      'questionId': 21,
      'order': 21,
      'statements': [
          {'text': 'The Food and Nutrition Board functions under the Ministry of Health and Family Welfare.', 'isCorrect': true},
          {'text': 'The Food and Nutrition Board functions under the Ministry of Agriculture.', 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc('question_22').set({
      'questionId': 22,
      'order': 22,
      'statements': [
          {'text': 'None of the listed department-ministry pairs — the Department of Women and Child Development with the Ministry of Health and Family Welfare, the Department of Official Language with the Ministry of Human Resource Development, and the Department of Drinking Water Supply with the Ministry of Water Resources — is correctly matched.', 'isCorrect': true},
          {'text': 'The Department of Official Language is correctly matched with the Ministry of Human Resource Development.', 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc('question_23').set({
      'questionId': 23,
      'order': 23,
      'statements': [
          {'text': 'The Genetic Engineering Approval Committee, whose permission is required for cultivation of genetically modified crops such as Bt Cotton in India, functions under the Union Ministry of Environment and Forests.', 'isCorrect': true},
          {'text': 'The Genetic Engineering Approval Committee, whose permission is required for cultivation of genetically modified crops such as Bt Cotton in India, functions under the Union Ministry of Agriculture.', 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc('question_24').set({
      'questionId': 24,
      'order': 24,
      'statements': [
          {'text': 'The Atomic Minerals Directorate for Research and Exploration, the Heavy Water Board, Indian Rare Earths Limited, and the Uranium Corporation of India are all under the Department of Atomic Energy.', 'isCorrect': true},
          {'text': 'Only the Atomic Minerals Directorate for Research and Exploration is under the Department of Atomic Energy.', 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc('question_25').set({
      'questionId': 25,
      'order': 25,
      'statements': [
          {'text': 'In the Order of Precedence, the Chief Justice of India ranks above Union Cabinet Ministers, who rank above the Chief Election Commissioner, who ranks above the Cabinet Secretary.', 'isCorrect': true},
          {'text': 'In the Order of Precedence, the Cabinet Secretary ranks above the Chief Justice of India.', 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc('question_26').set({
      'questionId': 26,
      'order': 26,
      'statements': [
          {'text': 'Transchart is the chartering wing of the Ministry of Surface Transport.', 'isCorrect': true},
          {'text': 'Transchart is a container service established by Indian Railways.', 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc('question_27').set({
      'questionId': 27,
      'order': 27,
      'statements': [
          {'text': 'The oath of the President of India is one of faith and allegiance to the Constitution of India, the oath of Judges of the Supreme Court is one of upholding the Constitution and the law, the oath of Members of Parliament is one of faithful discharge of duties, and the oath of the Law Minister of the Union is one of secrecy of information.', 'isCorrect': true},
          {'text': 'The oath of the President of India is one of faithful discharge of duties, while the oath of Members of Parliament is one of faith and allegiance to the Constitution of India.', 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc('question_28').set({
      'questionId': 28,
      'order': 28,
      'statements': [
          {'text': 'The Prime Minister of India has full discretion in the choice of persons who are to serve as ministers in the Cabinet.', 'isCorrect': true},
          {'text': 'The Prime Minister of India is free to choose ministers only from among those who are already members of either House of Parliament.', 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc('question_29').set({
      'questionId': 29,
      'order': 29,
      'statements': [
          {'text': 'The requirement that the Prime Minister resign if he loses majority support in the Lok Sabha is a convention followed in Indian governance, not something explicitly stated in the Constitution of India.', 'isCorrect': true},
          {'text': 'The provision that all parts of India are to be represented in the Council of Ministers is explicitly stated in the Constitution of India.', 'isCorrect': false},
      ],
    });
    final topicRef3 = subjectRef.collection('topics').doc('president_vice_president_and_governor');
    await topicRef3.set({
      'name': 'President, Vice President and Governor',
      'order': 3,
    });
    await topicRef3.collection('questions').doc('question_1').set({
      'questionId': 1,
      'order': 1,
      'statements': [
          {'text': 'An Ordinance issued by the President cannot unconditionally amend any Central Act, and it cannot abridge a Fundamental Right.', 'isCorrect': true},
          {'text': 'An Ordinance issued by the President can amend any Central Act and can abridge a Fundamental Right.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_2').set({
      'questionId': 2,
      'order': 2,
      'statements': [
          {'text': 'The Governor of a State is not answerable to any court for the exercise and performance of the powers and duties of his or her office, no criminal proceedings can be instituted or continued against the Governor during his or her term of office, and members of a State Legislature are not liable to any court proceedings for anything said within the House.', 'isCorrect': true},
          {'text': 'The Governor of a State can be criminally prosecuted in a court of law during his or her term of office.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_3').set({
      'questionId': 3,
      'order': 3,
      'statements': [
          {'text': 'The exercise of the President\'s pardoning power can be subjected to limited judicial review.', 'isCorrect': true},
          {'text': 'The President can exercise the pardoning power without the advice of the Central Government.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_4').set({
      'questionId': 4,
      'order': 4,
      'statements': [
          {'text': 'An Ordinance can amend any Central Act, and it can abridge a Fundamental Right.', 'isCorrect': true},
          {'text': 'An Ordinance can come into effect from a back date.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_5').set({
      'questionId': 5,
      'order': 5,
      'statements': [
          {'text': 'A community declared as a Scheduled Tribe in one State need not be so declared in another State.', 'isCorrect': true},
          {'text': 'It is the Governor of the State who recognises and declares any community of that State as a Scheduled Tribe.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_6').set({
      'questionId': 6,
      'order': 6,
      'statements': [
          {'text': 'If the election of the President of India is declared void by the Supreme Court, acts done by him or her before the date of that decision do not become invalid; the Presidential election cannot be postponed on the ground that some Legislative Assemblies have been dissolved; and the Constitution does not prescribe a time limit within which the President must declare assent to a Bill.', 'isCorrect': true},
          {'text': 'If the election of the President of India is declared void by the Supreme Court, all acts done by him or her in the performance of the duties of the office before the date of that decision become invalid.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_7').set({
      'questionId': 7,
      'order': 7,
      'statements': [
          {'text': 'The value of the vote of each MLA of Madhya Pradesh is greater than that of an MLA of Kerala in the Presidential Electoral College.', 'isCorrect': true},
          {'text': 'Members nominated to either House of Parliament or to the Legislative Assemblies of States are eligible to be included in the Electoral College for the election of the President.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_8').set({
      'questionId': 8,
      'order': 8,
      'statements': [
          {'text': 'The Sarkaria Commission (1983) suggested that the Governor should be an eminent person from outside the State, a detached figure without intense political links, and someone who has not taken part in politics in the recent past.', 'isCorrect': true},
          {'text': 'The Rajamannar Committee (1969) suggested that the Governor should be an eminent person from outside the State and a detached figure without intense political links.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_9').set({
      'questionId': 9,
      'order': 9,
      'statements': [
          {'text': 'The value of the vote of each MLA varies from State to State in the election of the President of India.', 'isCorrect': true},
          {'text': 'The value of the vote of Members of Parliament from the Lok Sabha is more than the value of the vote of Members of Parliament from the Rajya Sabha in the election of the President of India.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_10').set({
      'questionId': 10,
      'order': 10,
      'statements': [
          {'text': 'No criminal proceeding can be instituted against the Governor of a State in any court during his or her term of office, and the emoluments and allowances of the Governor cannot be diminished during his or her term of office.', 'isCorrect': true},
          {'text': 'The emoluments and allowances of the Governor of a State can be diminished during his or her term of office.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_11').set({
      'questionId': 11,
      'order': 11,
      'statements': [
          {'text': 'Sending a report to the President of India for imposing President\'s Rule, and reserving certain Bills passed by the State Legislature for the consideration of the President, are discretionary powers of the Governor of a State.', 'isCorrect': true},
          {'text': 'Appointing the Ministers and making the rules to conduct the business of the State Government are discretionary powers of the Governor of a State.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_12').set({
      'questionId': 12,
      'order': 12,
      'statements': [
          {'text': 'No procedure has been laid down in the Constitution of India for the removal of a Governor from his or her post.', 'isCorrect': true},
          {'text': 'The judges of the High Courts of the States in India are appointed by the Governor of the State, just as the judges of the Supreme Court are appointed by the President.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_13').set({
      'questionId': 13,
      'order': 13,
      'statements': [
          {'text': 'The President of India causes to be laid before Parliament the recommendations of the Union Finance Commission, the Report of the Comptroller and Auditor General, and the Report of the National Commission for Scheduled Castes.', 'isCorrect': true},
          {'text': 'The President of India causes the Report of the Public Accounts Committee to be laid before Parliament.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_14').set({
      'questionId': 14,
      'order': 14,
      'statements': [
          {'text': 'The President of India causes every recommendation made by the Finance Commission to be laid before each House of Parliament.', 'isCorrect': true},
          {'text': 'The Union Finance Minister causes every recommendation made by the Finance Commission to be laid before each House of Parliament.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_15').set({
      'questionId': 15,
      'order': 15,
      'statements': [
          {'text': 'The Governor of Punjab is concurrently the administrator of Chandigarh.', 'isCorrect': true},
          {'text': 'The Governor of Kerala is concurrently the administrator of Lakshadweep.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_16').set({
      'questionId': 16,
      'order': 16,
      'statements': [
          {'text': 'Mohammad Hidayatullah and Shankar Dayal Sharma have held the office of the Vice President of India.', 'isCorrect': true},
          {'text': 'Fakhruddin Ali Ahmed and Neelam Sanjiva Reddy have held the office of the Vice President of India.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_17').set({
      'questionId': 17,
      'order': 17,
      'statements': [
          {'text': 'The resolution for removing the Vice President of India can be moved only in the Rajya Sabha.', 'isCorrect': true},
          {'text': 'The resolution for removing the Vice President of India can be moved in either House of Parliament.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_18').set({
      'questionId': 18,
      'order': 18,
      'statements': [
          {'text': 'The President gave his assent to the ordinance on electoral reforms under Article 123 of the Constitution when it was sent back to him by the Union Cabinet without any changes in 2002.', 'isCorrect': true},
          {'text': 'The President gave his assent to the ordinance on electoral reforms under Article 124 of the Constitution when it was sent back to him by the Union Cabinet without any changes in 2002.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_19').set({
      'questionId': 19,
      'order': 19,
      'statements': [
          {'text': 'In the Presidential Electoral College, the value of the vote of an elected Member of Parliament is obtained by dividing the total value of votes of all MLAs by the total number of elected members of Parliament.', 'isCorrect': true},
          {'text': 'There were more than 5,000 members in the Electoral College in the latest Presidential election referred to in this question.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_20').set({
      'questionId': 20,
      'order': 20,
      'statements': [
          {'text': 'The 44th Amendment to the Constitution of India empowers the President to send back any matter for reconsideration by the Council of Ministers.', 'isCorrect': true},
          {'text': 'The 42nd Amendment to the Constitution of India empowers the President to send back any matter for reconsideration by the Council of Ministers.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_21').set({
      'questionId': 21,
      'order': 21,
      'statements': [
          {'text': 'As of 1997, in calculating the value of the vote of an elected MLA for the Presidential election, the expression "population" meant the population as ascertained by the 1971 Census.', 'isCorrect': true},
          {'text': 'As of 1997, in calculating the value of the vote of an elected MLA for the Presidential election, the expression "population" meant the population as ascertained by the 1991 Census.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_22').set({
      'questionId': 22,
      'order': 22,
      'statements': [
          {'text': 'The President shall not be a member of either House of Parliament, and the Parliament shall consist of the President and two Houses.', 'isCorrect': true},
          {'text': 'The President is a member of the Lok Sabha, and Parliament consists only of the two Houses without the President.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_23').set({
      'questionId': 23,
      'order': 23,
      'statements': [
          {'text': 'The State Legislative Assemblies are part of the electoral college for the election of the President of India, but they do not form part of the forum for his or her impeachment.', 'isCorrect': true},
          {'text': 'The Rajya Sabha is part of the electoral college for the election of the President of India, but it does not form part of the forum for his or her impeachment.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_24').set({
      'questionId': 24,
      'order': 24,
      'statements': [
          {'text': 'From Article 156 of the Constitution, it cannot be deduced that no Governor can be removed from office before completion of his or her term, nor that no Governor can continue in office beyond a period of five years.', 'isCorrect': true},
          {'text': 'From Article 156 of the Constitution, it can be deduced that no Governor can be removed from office till completion of his or her term.', 'isCorrect': false},
      ],
    });
    final topicRef4 = subjectRef.collection('topics').doc('union_and_state_legislature');
    await topicRef4.set({
      'name': 'Union and State Legislature',
      'order': 4,
    });
    await topicRef4.collection('questions').doc('question_1').set({
      'questionId': 1,
      'order': 1,
      'statements': [
          {'text': 'If a question arises whether a Member of the Lok Sabha has become disqualified under the Tenth Schedule, the decision is taken by the Speaker of the Lok Sabha, not the President.', 'isCorrect': true},
          {'text': 'If a question arises whether a Member of the Lok Sabha has become disqualified under the Tenth Schedule, the decision is taken by the President on the advice of the Council of Ministers.', 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc('question_2').set({
      'questionId': 2,
      'order': 2,
      'statements': [
          {'text': 'The Speaker of the Lok Sabha does not vacate office on the dissolution of the House; he/she continues until immediately before the first meeting of the newly constituted House.', 'isCorrect': true},
          {'text': 'The Speaker of the Lok Sabha must vacate office immediately on the dissolution of the House.', 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc('question_3').set({
      'questionId': 3,
      'order': 3,
      'statements': [
          {'text': 'The Rajya Sabha cannot reject or amend a Money Bill passed by the Lok Sabha; it can only recommend changes, which the Lok Sabha may accept or reject.', 'isCorrect': true},
          {'text': 'The Rajya Sabha can reject a Money Bill passed by the Lok Sabha, and the Lok Sabha must accept all its recommendations.', 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc('question_4').set({
      'questionId': 4,
      'order': 4,
      'statements': [
          {'text': 'The Ethics Committee of the Lok Sabha cannot take up any matter that is sub judice.', 'isCorrect': true},
          {'text': 'The Ethics Committee of the Lok Sabha can take up and decide matters that are sub judice before a court.', 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc('question_5').set({
      'questionId': 5,
      'order': 5,
      'statements': [
          {'text': 'While a resolution for the removal of the Speaker of the Lok Sabha is under consideration, the Speaker shall not preside over the sitting of the House.', 'isCorrect': true},
          {'text': 'While a resolution for the removal of the Speaker of the Lok Sabha is under consideration, the Speaker continues to preside over the sitting of the House.', 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc('question_6').set({
      'questionId': 6,
      'order': 6,
      'statements': [
          {'text': 'A Bill in regard to which the President has notified his/her intention to summon the Houses to a joint sitting does not lapse on the dissolution of the Lok Sabha.', 'isCorrect': true},
          {'text': 'A Bill in regard to which the President has notified his/her intention to summon the Houses to a joint sitting lapses on the dissolution of the Lok Sabha.', 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc('question_7').set({
      'questionId': 7,
      'order': 7,
      'statements': [
          {'text': 'Dissolution of the Lok Sabha is done by the President, who, save in exceptional circumstances, acts on the advice of the Council of Ministers.', 'isCorrect': true},
          {'text': 'Dissolution of the Lok Sabha is done by the President entirely at his/her own discretion, without regard to the advice of the Council of Ministers.', 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc('question_8').set({
      'questionId': 8,
      'order': 8,
      'statements': [
          {'text': 'When the Lok Sabha transmits a Money Bill to the Rajya Sabha, the Rajya Sabha cannot amend or reject it and can only make recommendations.', 'isCorrect': true},
          {'text': 'When the Lok Sabha transmits a Money Bill to the Rajya Sabha, the Rajya Sabha has full power to amend or reject the Bill.', 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc('question_9').set({
      'questionId': 9,
      'order': 9,
      'statements': [
          {'text': 'Passing a motion of no-confidence against the Council of Ministers is an exclusive power of the Lok Sabha.', 'isCorrect': true},
          {'text': 'Passing a motion of no-confidence against the Council of Ministers can be exercised by either the Lok Sabha or the Rajya Sabha.', 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc('question_10').set({
      'questionId': 10,
      'order': 10,
      'statements': [
          {'text': 'The Deputy Speaker has the same powers as the Speaker while presiding over a sitting of the Lok Sabha, and no appeal lies against his/her rulings.', 'isCorrect': true},
          {'text': 'The Deputy Speaker has more limited powers than the Speaker while presiding over a sitting of the Lok Sabha, and an appeal lies to the Speaker against his/her rulings.', 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc('question_11').set({
      'questionId': 11,
      'order': 11,
      'statements': [
          {'text': 'The anti-defection law does not provide any time-frame within which the presiding officer has to decide a defection case.', 'isCorrect': true},
          {'text': 'The anti-defection law prescribes a strict three-month time-frame within which the presiding officer has to decide a defection case.', 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc('question_12').set({
      'questionId': 12,
      'order': 12,
      'statements': [
          {'text': 'There is no constitutionally fixed minimum number of days that Parliament is required to meet in a year.', 'isCorrect': true},
          {'text': 'The Constitution fixes a minimum of 100 days in a year for which Parliament is required to meet.', 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc('question_13').set({
      'questionId': 13,
      'order': 13,
      'statements': [
          {'text': 'The Rajya Sabha has equal powers with the Lok Sabha in the matter of amending the Constitution.', 'isCorrect': true},
          {'text': 'The Rajya Sabha has equal powers with the Lok Sabha in the matter of passing cut motions and removing the government.', 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc('question_14').set({
      'questionId': 14,
      'order': 14,
      'statements': [
          {'text': 'Under MPLADS, a specified portion of each MP\'s funds must benefit Scheduled Caste/Scheduled Tribe populations.', 'isCorrect': true},
          {'text': 'Under MPLADS, there is no requirement that any portion of an MP\'s funds be earmarked for Scheduled Caste/Scheduled Tribe populations.', 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc('question_15').set({
      'questionId': 15,
      'order': 15,
      'statements': [
          {'text': 'The term \'Office of Profit\' is not defined anywhere in the Constitution of India.', 'isCorrect': true},
          {'text': 'The term \'Office of Profit\' is clearly and exhaustively defined in the Constitution of India.', 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc('question_16').set({
      'questionId': 16,
      'order': 16,
      'statements': [
          {'text': 'When a State Legislature has no rule of its own on a particular matter, it follows the corresponding rule of the Lok Sabha.', 'isCorrect': true},
          {'text': 'When a State Legislature has no rule of its own on a particular matter, it follows the corresponding rule of the Rajya Sabha.', 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc('question_17').set({
      'questionId': 17,
      'order': 17,
      'statements': [
          {'text': 'Independent regulators like TRAI and IRDA in India are reviewed by ad hoc Committees and Department-Related Standing Committees of Parliament.', 'isCorrect': true},
          {'text': 'Independent regulators like TRAI and IRDA in India are reviewed exclusively by the Finance Commission and NITI Aayog.', 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc('question_18').set({
      'questionId': 18,
      'order': 18,
      'statements': [
          {'text': 'A Money Bill deals with the appropriation of moneys out of the Consolidated Fund of India, not the Contingency Fund.', 'isCorrect': true},
          {'text': 'A Money Bill is specifically concerned with the appropriation of moneys out of the Contingency Fund of India.', 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc('question_19').set({
      'questionId': 19,
      'order': 19,
      'statements': [
          {'text': 'The \'Leader of the Opposition\' in the Lok Sabha was formally recognised for the first time only in 1969.', 'isCorrect': true},
          {'text': 'The \'Leader of the Opposition\' in the Lok Sabha was formally recognised right from the first Lok Sabha in 1952.', 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc('question_20').set({
      'questionId': 20,
      'order': 20,
      'statements': [
          {'text': 'The Committee on Subordinate Legislation scrutinises whether powers to make rules and regulations delegated by Parliament are properly exercised by the Executive.', 'isCorrect': true},
          {'text': 'The Committee on Government Assurances scrutinises whether powers to make rules and regulations delegated by Parliament are properly exercised by the Executive.', 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc('question_21').set({
      'questionId': 21,
      'order': 21,
      'statements': [
          {'text': 'The Speaker of a State Legislative Assembly does not vacate office immediately on dissolution of the Assembly; he/she continues until a new Speaker is chosen.', 'isCorrect': true},
          {'text': 'The Speaker of a State Legislative Assembly vacates office immediately whenever the Assembly is dissolved.', 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc('question_22').set({
      'questionId': 22,
      'order': 22,
      'statements': [
          {'text': 'A private member\'s bill is one presented by an MP who is not a Minister, and such a member need not be merely nominated.', 'isCorrect': true},
          {'text': 'A private member\'s bill is defined as a bill presented only by an MP who is nominated, rather than elected, to Parliament.', 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc('question_23').set({
      'questionId': 23,
      'order': 23,
      'statements': [
          {'text': 'Parliament exercises control over the Council of Ministers through instruments like adjournment motions, question hour and supplementary questions.', 'isCorrect': true},
          {'text': 'Parliament exercises control over the Council of Ministers solely through the annual Budget vote and no other instrument.', 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc('question_24').set({
      'questionId': 24,
      'order': 24,
      'statements': [
          {'text': 'It is only a convention, not a constitutional requirement, that the Speaker\'s post goes to the majority party and the Deputy Speaker\'s post to the Opposition.', 'isCorrect': true},
          {'text': 'The Constitution explicitly mandates that the Speaker\'s post goes to the majority party and the Deputy Speaker\'s post to the Opposition.', 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc('question_25').set({
      'questionId': 25,
      'order': 25,
      'statements': [
          {'text': 'Parliament can legislate on a State List subject in the national interest if the Rajya Sabha passes a resolution by a majority of not less than two-thirds of members present and voting.', 'isCorrect': true},
          {'text': 'Parliament can legislate on a State List subject in the national interest if the Lok Sabha passes a resolution by a simple majority of its total membership.', 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc('question_26').set({
      'questionId': 26,
      'order': 26,
      'statements': [
          {'text': 'A Bill pending in the Rajya Sabha which has not been passed by the Lok Sabha does not lapse on the dissolution of the Lok Sabha.', 'isCorrect': true},
          {'text': 'A Bill pending in the Rajya Sabha which has not been passed by the Lok Sabha lapses on the dissolution of the Lok Sabha.', 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc('question_27').set({
      'questionId': 27,
      'order': 27,
      'statements': [
          {'text': 'The Legislative Council of a state cannot exceed one-third the size of that state\'s Legislative Assembly.', 'isCorrect': true},
          {'text': 'The Legislative Council of a state can be larger in size than half of that state\'s Legislative Assembly.', 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc('question_28').set({
      'questionId': 28,
      'order': 28,
      'statements': [
          {'text': 'The Rajya Sabha has no power either to reject or to amend a Money Bill.', 'isCorrect': true},
          {'text': 'The Rajya Sabha has the power to reject a Money Bill outright, though it cannot amend one.', 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc('question_29').set({
      'questionId': 29,
      'order': 29,
      'statements': [
          {'text': 'A Bill referred to a joint sitting of both Houses of Parliament is passed by a simple majority of members present and voting.', 'isCorrect': true},
          {'text': 'A Bill referred to a joint sitting of both Houses of Parliament must be passed by a two-thirds majority of the House.', 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc('question_30').set({
      'questionId': 30,
      'order': 30,
      'statements': [
          {'text': 'A motion of no-confidence against the Council of Ministers can be introduced only in the Lok Sabha.', 'isCorrect': true},
          {'text': 'A motion of no-confidence against the Council of Ministers can be introduced in either the Lok Sabha or the Rajya Sabha.', 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc('question_31').set({
      'questionId': 31,
      'order': 31,
      'statements': [
          {'text': 'The Committee on Estimates is the largest Parliamentary Committee in India, comprising members drawn entirely from the Lok Sabha.', 'isCorrect': true},
          {'text': 'The Committee on Public Accounts is the largest Parliamentary Committee in India, comprising members drawn entirely from the Lok Sabha.', 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc('question_32').set({
      'questionId': 32,
      'order': 32,
      'statements': [
          {'text': 'Provisions regarding anti-defection are contained in the Tenth Schedule of the Constitution of India.', 'isCorrect': true},
          {'text': 'Provisions regarding anti-defection are contained in the Eighth Schedule of the Constitution of India.', 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc('question_33').set({
      'questionId': 33,
      'order': 33,
      'statements': [
          {'text': 'The Deputy Chairman of the Rajya Sabha is a member of that House, while the Chairman (the Vice-President) is not a member of the House.', 'isCorrect': true},
          {'text': 'Neither the Chairman nor the Deputy Chairman of the Rajya Sabha is a member of that House.', 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc('question_34').set({
      'questionId': 34,
      'order': 34,
      'statements': [
          {'text': 'If a Money Bill is substantially amended by the Rajya Sabha, the Lok Sabha may still proceed with the Bill, accepting or not accepting the Rajya Sabha\'s recommendations.', 'isCorrect': true},
          {'text': 'If a Money Bill is substantially amended by the Rajya Sabha, the Lok Sabha cannot consider the Bill any further and it lapses.', 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc('question_35').set({
      'questionId': 35,
      'order': 35,
      'statements': [
          {'text': 'Parliament can make laws implementing international treaties for the whole or any part of India without requiring the consent of any state.', 'isCorrect': true},
          {'text': 'Parliament can make laws implementing international treaties for a state only with the express consent of that particular state.', 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc('question_36').set({
      'questionId': 36,
      'order': 36,
      'statements': [
          {'text': 'The Public Accounts Committee scrutinises the appropriation and finance accounts of the Government and examines the CAG\'s report.', 'isCorrect': true},
          {'text': 'The Public Accounts Committee prepares the Union Budget and presents it to Parliament each year.', 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc('question_37').set({
      'questionId': 37,
      'order': 37,
      'statements': [
          {'text': 'A joint sitting of Parliament can be called to resolve a deadlock between the Houses only over an ordinary legislative Bill, not a Money Bill or Constitution Amendment Bill.', 'isCorrect': true},
          {'text': 'A joint sitting of Parliament can be called to resolve a deadlock over a Constitution Amendment Bill or a Money Bill, just as with ordinary legislation.', 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc('question_38').set({
      'questionId': 38,
      'order': 38,
      'statements': [
          {'text': 'The Rajya Sabha alone has the special power to pass a resolution authorising Parliament to legislate on a State List subject and to create new All India Services.', 'isCorrect': true},
          {'text': 'The Lok Sabha alone has the special power to pass a resolution authorising Parliament to legislate on a State List subject and to create new All India Services.', 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc('question_39').set({
      'questionId': 39,
      'order': 39,
      'statements': [
          {'text': 'The purpose of an adjournment motion in the Indian Parliament is to allow discussion of a definite matter of urgent public importance.', 'isCorrect': true},
          {'text': 'The purpose of an adjournment motion in the Indian Parliament is to allow a reduction of a specific amount in a demand for grant.', 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc('question_40').set({
      'questionId': 40,
      'order': 40,
      'statements': [
          {'text': 'Under the Constitution, Parliament consists of the President, the Lok Sabha, and the Rajya Sabha, not just the two Houses.', 'isCorrect': true},
          {'text': 'Under the Constitution, Parliament consists solely of the Lok Sabha and the Rajya Sabha.', 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc('question_41').set({
      'questionId': 41,
      'order': 41,
      'statements': [
          {'text': 'The Speaker of the Lok Sabha does not hold office during the pleasure of the President.', 'isCorrect': true},
          {'text': 'The Speaker of the Lok Sabha holds office during the pleasure of the President.', 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc('question_42').set({
      'questionId': 42,
      'order': 42,
      'statements': [
          {'text': 'A person must be at least 25 years of age to be qualified to be chosen as a member of a State\'s Legislative Assembly.', 'isCorrect': true},
          {'text': 'A person must be at least 21 years of age to be qualified to be chosen as a member of a State\'s Legislative Assembly.', 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc('question_43').set({
      'questionId': 43,
      'order': 43,
      'statements': [
          {'text': 'Ladakh was the largest (area-wise) Lok Sabha constituency in India.', 'isCorrect': true},
          {'text': 'Kachchh was the largest (area-wise) Lok Sabha constituency in India.', 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc('question_44').set({
      'questionId': 44,
      'order': 44,
      'statements': [
          {'text': 'The Chairman of the Public Accounts Committee is appointed by the Speaker of the Lok Sabha.', 'isCorrect': true},
          {'text': 'The Chairman of the Public Accounts Committee is appointed directly by the President of India.', 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc('question_45').set({
      'questionId': 45,
      'order': 45,
      'statements': [
          {'text': 'G.V. Mavalankar was the Speaker of the first Lok Sabha.', 'isCorrect': true},
          {'text': 'Hukam Singh was the Speaker of the first Lok Sabha.', 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc('question_46').set({
      'questionId': 46,
      'order': 46,
      'statements': [
          {'text': 'The Council of Ministers in the Union of India is collectively responsible only to the Lok Sabha, not to the Rajya Sabha.', 'isCorrect': true},
          {'text': 'The Council of Ministers in the Union of India is collectively responsible equally to both the Lok Sabha and the Rajya Sabha.', 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc('question_47').set({
      'questionId': 47,
      'order': 47,
      'statements': [
          {'text': 'Only the Rajya Sabha has the power to pass a resolution declaring that Parliament should legislate on a State List matter in the national interest.', 'isCorrect': true},
          {'text': 'Only the Lok Sabha has the power to pass a resolution declaring that Parliament should legislate on a State List matter in the national interest.', 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc('question_48').set({
      'questionId': 48,
      'order': 48,
      'statements': [
          {'text': 'The Lok Sabha automatically dissolves by efflux of time at the end of five years, even without a formal presidential order of dissolution.', 'isCorrect': true},
          {'text': 'The Lok Sabha continues to function beyond five years unless the President issues a formal order of dissolution.', 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc('question_49').set({
      'questionId': 49,
      'order': 49,
      'statements': [
          {'text': 'A no-confidence motion moved in the Lok Sabha does not need to set out the grounds on which it is based.', 'isCorrect': true},
          {'text': 'A no-confidence motion moved in the Lok Sabha must set out in detail the specific grounds on which it is based.', 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc('question_50').set({
      'questionId': 50,
      'order': 50,
      'statements': [
          {'text': 'Since an Appropriation Bill is treated like a Money Bill, the Rajya Sabha can only make recommendations on it, and the Lok Sabha\'s decision is final.', 'isCorrect': true},
          {'text': 'An Appropriation Bill must be passed and approved by both Houses of Parliament equally before it can be enacted into law.', 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc('question_51').set({
      'questionId': 51,
      'order': 51,
      'statements': [
          {'text': 'K.V.K. Sundaram, who served as Chief Election Commissioner, was never a Speaker of the Lok Sabha.', 'isCorrect': true},
          {'text': 'K.V.K. Sundaram served as a Speaker of the Lok Sabha.', 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc('question_52').set({
      'questionId': 52,
      'order': 52,
      'statements': [
          {'text': 'Members of the Committee on Estimates are drawn entirely from the Lok Sabha, unlike the Committees on Public Accounts and Public Undertakings, which can include Rajya Sabha members.', 'isCorrect': true},
          {'text': 'Members of all three committees — Public Accounts, Public Undertakings, and Estimates — are drawn entirely and exclusively from the Lok Sabha.', 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc('question_53').set({
      'questionId': 53,
      'order': 53,
      'statements': [
          {'text': 'A Constitution Amendment Bill must be passed by each House of Parliament separately by a special majority.', 'isCorrect': true},
          {'text': 'A Constitution Amendment Bill can be passed by either House of Parliament by an ordinary simple majority.', 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc('question_54').set({
      'questionId': 54,
      'order': 54,
      'statements': [
          {'text': 'There is no constitutional bar on a nominated member of Parliament being appointed as a Union Minister.', 'isCorrect': true},
          {'text': 'A nominated member of Parliament is constitutionally barred from being appointed as a Union Minister.', 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc('question_55').set({
      'questionId': 55,
      'order': 55,
      'statements': [
          {'text': 'The joint sitting of the two Houses of Parliament is sanctioned under Article 108 of the Constitution.', 'isCorrect': true},
          {'text': 'The joint sitting of the two Houses of Parliament is sanctioned under Article 118 of the Constitution.', 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc('question_56').set({
      'questionId': 56,
      'order': 56,
      'statements': [
          {'text': 'The Consultative Committee of Members of Parliament for Railway Zones is constituted by the Ministry of Railways.', 'isCorrect': true},
          {'text': 'The Consultative Committee of Members of Parliament for Railway Zones is constituted by the Ministry of Parliamentary Affairs.', 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc('question_57').set({
      'questionId': 57,
      'order': 57,
      'statements': [
          {'text': 'During a Proclamation of Emergency, the term of the Lok Sabha can be extended by one year at a time.', 'isCorrect': true},
          {'text': 'During a Proclamation of Emergency, the term of the Lok Sabha can be extended by two years at a time.', 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc('question_58').set({
      'questionId': 58,
      'order': 58,
      'statements': [
          {'text': 'The Indian Parliament exercises control over the administration mainly through its Parliamentary Committees.', 'isCorrect': true},
          {'text': 'The Indian Parliament exercises control over the administration mainly by directly issuing writs to administrators.', 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc('question_59').set({
      'questionId': 59,
      'order': 59,
      'statements': [
          {'text': 'When the Speaker asks a member to stop speaking to let another member speak, it is known as \'yielding the floor.\'', 'isCorrect': true},
          {'text': 'When the Speaker asks a member to stop speaking to let another member speak, it is known as \'interpellation.\'', 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc('question_60').set({
      'questionId': 60,
      'order': 60,
      'statements': [
          {'text': 'Madhya Pradesh has the largest number of Lok Sabha seats reserved for Scheduled Tribes.', 'isCorrect': true},
          {'text': 'Bihar has the largest number of Lok Sabha seats reserved for Scheduled Tribes.', 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc('question_61').set({
      'questionId': 61,
      'order': 61,
      'statements': [
          {'text': 'Parliament can make laws implementing international treaties for the whole or any part of India without the consent of any state.', 'isCorrect': true},
          {'text': 'Parliament can make laws implementing international treaties for any part of India only with the consent of the majority of states.', 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc('question_62').set({
      'questionId': 62,
      'order': 62,
      'statements': [
          {'text': 'A Money Bill can be introduced only in the Lok Sabha, not in either House of Parliament.', 'isCorrect': true},
          {'text': 'A Money Bill can be tabled in either House of Parliament, at the discretion of the government.', 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc('question_63').set({
      'questionId': 63,
      'order': 63,
      'statements': [
          {'text': 'In Germany, a no-confidence motion against the government is valid only if the legislature simultaneously elects a successor government (constructive vote of no-confidence).', 'isCorrect': true},
          {'text': 'In France, a no-confidence motion against the government is valid only if the legislature simultaneously elects a successor government.', 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc('question_64').set({
      'questionId': 64,
      'order': 64,
      'statements': [
          {'text': 'If the Prime Minister of India belongs to the Rajya Sabha, he/she will not be able to vote in his/her own favour in a no-confidence motion moved in the Lok Sabha.', 'isCorrect': true},
          {'text': 'If the Prime Minister of India belongs to the Rajya Sabha, he/she must resign and become a member of the Lok Sabha within six months of taking office.', 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc('question_65').set({
      'questionId': 65,
      'order': 65,
      'statements': [
          {'text': 'Seats reserved for Scheduled Castes in the Lok Sabha for a state are allocated in proportion to the SC population, not as a fixed fraction of total seats.', 'isCorrect': true},
          {'text': 'Seats reserved for Scheduled Castes in the Lok Sabha for a state are always exactly half of that state\'s total allocated seats.', 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc('question_66').set({
      'questionId': 66,
      'order': 66,
      'statements': [
          {'text': 'Elected members of a State\'s Legislative Assembly have the right to vote both in Rajya Sabha elections and, as citizens, in Lok Sabha elections.', 'isCorrect': true},
          {'text': 'Only elected members of the Rajya Sabha have the right to vote in elections to both the Lok Sabha and the Rajya Sabha.', 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc('question_67').set({
      'questionId': 67,
      'order': 67,
      'statements': [
          {'text': 'Even though the Constitution (Seventh Amendment) Act, 1956 provided for a Legislative Council in Madhya Pradesh, the state has not constituted one so far.', 'isCorrect': true},
          {'text': 'The Constitution (Seventh Amendment) Act, 1956 did not extend the provision for a Legislative Council to Madhya Pradesh at all.', 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc('question_68').set({
      'questionId': 68,
      'order': 68,
      'statements': [
          {'text': 'If an elected candidate in a State Assembly election loses his/her deposit, it typically indicates that a very large number of candidates contested the election.', 'isCorrect': true},
          {'text': 'If an elected candidate in a State Assembly election loses his/her deposit, it indicates that the polling in that constituency was very poor.', 'isCorrect': false},
      ],
    });

    print('Indian Polity seeding completed.');
    print('Sheets: 4');
    print('Topics: 4');
    print('Questions: 142');
    print('Statements: 284');
  }
}



// import 'package:cloud_firestore/cloud_firestore.dart';

// class IndianPolityNewSeeder {
//   IndianPolityNewSeeder._();

//   static final FirebaseFirestore _firestore =
//       FirebaseFirestore.instance;

//   // Existing 15 topics are preserved. New sheet topics are appended.
//   // Known duplicate/alternate topic names are mapped to the existing topic.
//   // Panchayati Raj and President/VP/PM variants are consolidated.

//   static Future<void> seed() async {
//     try {
//       print('========================================');
//       print('📚 Starting Indian Polity New Sheet Seeder');
//       print('========================================');

//       final subjectRef =
//           _firestore.collection('subjects').doc('polity');

//       await subjectRef.set({
//         'name': 'Indian Polity',
//         'order': 2,
//       }, SetOptions(merge: true));

//       final topicsRef = subjectRef.collection('topics');

//       final Map<String, String> existingTopicIds = {
//         "DPSPs and Fundamental Duties": "dpsps_and_fundamental_duties",
//         "Ministers, Ministries and Secretariat": "ministers_ministries_and_secretariat",
//         "President, Vice President and Governor": "president_vice_president_and_governor",
//         "Union and State Legislature": "union_and_state_legislature",
//         "Political Theory": "political_theory",
//         "Indian Political System": "indian_political_system",
//         "Indian Constitution": "indian_constitution",
//         "Fundamental Rights": "fundamental_rights",
//         "Local Government - Panchayati Raj": "local_government_panchayati_raj",
//         "Post Independence History": "post_independence_history",
//         "International Relations": "international_relations",
//         "Judiciary and Judicial System": "judiciary_and_judicial_system",
//         "Elections, Election Commission and RPA": "elections_election_commission_and_rpa",
//         "Various Constitutional & Non-Constitutional Posts and Bodies": "various_constitutional_non_constitutional_posts_and_bodies",
//         "Important Acts and Constitutional Amendments": "important_acts_and_constitutional_amendments",
//       };

//       final Map<String, String> topicAliases = {
//         'Panchayati Raj and Local Governance':
//             'Local Government - Panchayati Raj',
//         'President, Vice-Presidents, Prime Ministers, etc.':
//             'President, Vice President and Governor',
//       };

//       final List<Map<String, dynamic>> data = [
//         {
//           'topic': "Fundamental Rights",
//           'questionId': "1",
//           'statements': [
//             {
//               'text': "Article 20(3) of the Constitution protects an accused from being compelled to give oral testimony against himself, but does not protect against being compelled to give a signature or thumb impression for identification.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Article 20(3) of the Constitution protects an accused from being compelled to give a signature or thumb impression for identification.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Fundamental Rights",
//           'questionId': "2",
//           'statements': [
//             {
//               'text': "The writ of mandamus can be issued against administrative as well as judicial authorities, while the writ of prohibition is issued only against judicial or quasi-judicial bodies.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The writ of mandamus can be issued only against judicial authorities and is not available against administrative authorities.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Fundamental Rights",
//           'questionId': "3",
//           'statements': [
//             {
//               'text': "Article 16(4A) of the Constitution enables the State to provide reservation in matters of promotion for Scheduled Castes and Scheduled Tribes.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Constitution of India contains no provision allowing reservation in matters of promotion for Scheduled Castes and Scheduled Tribes.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Fundamental Rights",
//           'questionId': "4",
//           'statements': [
//             {
//               'text': "A law inserted into the Ninth Schedule of the Constitution can still be challenged in court if it violates the basic structure of the Constitution, as held in the I.R. Coelho case.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Once a law is inserted into the Ninth Schedule of the Constitution, it becomes completely immune from judicial review under all circumstances.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Fundamental Rights",
//           'questionId': "5",
//           'statements': [
//             {
//               'text': "The right to carry on any trade or business is guaranteed under Article 19(1)(g) as a freedom, and is not part of the right to personal liberty.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The right to carry on any trade or business is included within the right to personal liberty under the Constitution.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Fundamental Rights",
//           'questionId': "6",
//           'statements': [
//             {
//               'text': "The Right against Exploitation prohibits traffic in human beings, forced labour, and employment of children in hazardous work, but abolition of untouchability falls under the Right to Equality (Article 17).",
//               'isCorrect': true,
//             },
//             {
//               'text': "Abolition of untouchability is guaranteed under the Right against Exploitation in the Indian Constitution.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Fundamental Rights",
//           'questionId': "7",
//           'statements': [
//             {
//               'text': "Under Article 33, Parliament may by law restrict or abrogate the Fundamental Rights of members of the Armed Forces in their application to them.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Fundamental Rights under Articles 14 and 19 apply to the Armed Forces exactly as they do to ordinary citizens, with no power of Parliament to restrict them.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Fundamental Rights",
//           'questionId': "8",
//           'statements': [
//             {
//               'text': "The writ of Habeas Corpus can be issued by both the Supreme Court and the High Courts under the Constitution of India.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The writ of Habeas Corpus can be issued only by the Supreme Court and not by the High Courts.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Fundamental Rights",
//           'questionId': "9",
//           'statements': [
//             {
//               'text': "The right to privacy, though not explicitly mentioned in the text of the Fundamental Rights, has been held by the Supreme Court to be part of the right to life and personal liberty under Article 21.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The right to privacy is explicitly and expressly mentioned as a Fundamental Right in the text of the Indian Constitution.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Fundamental Rights",
//           'questionId': "10",
//           'statements': [
//             {
//               'text': "Minorities have the right to establish and administer educational institutions of their choice, though reasonable restrictions may be imposed to ensure efficient administration.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The right of minorities to establish and administer educational institutions is absolute and cannot be subject to any restriction.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Fundamental Rights",
//           'questionId': "11",
//           'statements': [
//             {
//               'text': "Article 15(3) of the Constitution allows the State to make special provisions in favour of women and children.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Article 16 of the Constitution allows discrimination in favour of women in matters of public employment.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Fundamental Rights",
//           'questionId': "12",
//           'statements': [
//             {
//               'text': "The writ of prohibition is issued by a higher court to stop a lower court or tribunal from proceeding in a matter beyond its jurisdiction, but it cannot be claimed as a matter of right.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The writ of prohibition can be claimed by an aggrieved party as a matter of right.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Fundamental Rights",
//           'questionId': "13",
//           'statements': [
//             {
//               'text': "Under the Constitution, the State can restrict the freedom of religion on the grounds of public order, morality, and health.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Social justice is one of the specific grounds mentioned in the Constitution for restricting the freedom of religion.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Fundamental Rights",
//           'questionId': "14",
//           'statements': [
//             {
//               'text': "The Supreme Court has read into Article 21 rights such as the right to livelihood and the right of bonded labourers to rehabilitation after release.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The right to claim bonus or dearness allowance under a settlement has been held by the Supreme Court to be part of the right to life under Article 21.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Fundamental Rights",
//           'questionId': "15",
//           'statements': [
//             {
//               'text': "The right of minorities to establish and administer educational institutions is guaranteed under Article 30, not under Article 19.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The right of minorities to establish and administer educational institutions is included within Article 19 of the Constitution.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Fundamental Rights",
//           'questionId': "16",
//           'statements': [
//             {
//               'text': "Under Article 12, the term 'State' includes the Government and Parliament of India, the Government and Legislature of each State, and all local or other authorities within India.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Under Article 12, the term 'State' is confined only to the Union and State Governments and excludes local authorities.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Fundamental Rights",
//           'questionId': "17",
//           'statements': [
//             {
//               'text': "Dr. B.R. Ambedkar described the Right to Constitutional Remedies under Article 32 as the 'heart and soul' of the Constitution.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Dr. B.R. Ambedkar described the Right to Equality as the 'heart and soul' of the Constitution.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Fundamental Rights",
//           'questionId': "18",
//           'statements': [
//             {
//               'text': "The right to privacy as a Fundamental Right has been held to be implicit in the right to personal liberty under Article 21.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The right to privacy as a Fundamental Right has been held to be implicit in the Right to Equality under the Constitution.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Fundamental Rights",
//           'questionId': "19",
//           'statements': [
//             {
//               'text': "The Right to Education has been held by the Supreme Court to emanate from the right to life and personal liberty under Article 21.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Right to Education has been held by the Supreme Court to emanate from the right to equality under Article 14.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Fundamental Rights",
//           'questionId': "20",
//           'statements': [
//             {
//               'text': "A constitutional amendment is not treated as 'law' for the purposes of Article 13 of the Constitution, whereas an ordinance, bye-law, or rule is.",
//               'isCorrect': true,
//             },
//             {
//               'text': "A constitutional amendment is treated in the same way as an ordinary law, ordinance, or rule for the purposes of Article 13 of the Constitution.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Fundamental Rights",
//           'questionId': "21",
//           'statements': [
//             {
//               'text': "Reasonable restrictions can be imposed on the freedom of speech and expression under Article 19(2) on the ground of the security of the State.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The security of the State is not a ground under the Constitution for imposing restrictions on the freedom of speech and expression.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Fundamental Rights",
//           'questionId': "22",
//           'statements': [
//             {
//               'text': "Abolition of untouchability, abolition of titles, freedom from taxation for the promotion of a religion, and protection of the interests of minorities are each guaranteed under separate Articles in Part III of the Constitution.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Only abolition of untouchability and abolition of titles are mentioned under separate Articles in Part III of the Constitution.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Fundamental Rights",
//           'questionId': "23",
//           'statements': [
//             {
//               'text': "Fundamental Rights guaranteed under the Constitution can be suspended by a Proclamation of National Emergency under Articles 358 and 359.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Fundamental Rights guaranteed under the Constitution can be suspended by an ordinary Act passed by Parliament.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Fundamental Rights",
//           'questionId': "24",
//           'statements': [
//             {
//               'text': "The Right to Property was removed from the list of Fundamental Rights by the 44th Amendment Act, 1978, partly because it led to prolonged litigation that burdened the judiciary.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Right to Property was removed from the list of Fundamental Rights because it was found to be in direct conflict with the Preamble of the Constitution.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Fundamental Rights",
//           'questionId': "25",
//           'statements': [
//             {
//               'text': "Under Article 22, a person cannot ordinarily be detained under preventive detention laws for more than three months unless an Advisory Board reports sufficient cause for extended detention.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Under Article 22, a person can be detained under preventive detention laws for up to six months without any Advisory Board review.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Fundamental Rights",
//           'questionId': "26",
//           'statements': [
//             {
//               'text': "Freedom of speech and expression under Article 19 is a Fundamental Right guaranteed only to citizens of India, not to foreigners.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Equality before law and equal protection of laws under Article 14 is guaranteed only to citizens of India, not to foreigners.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Fundamental Rights",
//           'questionId': "27",
//           'statements': [
//             {
//               'text': "The Supreme Court has expanded the scope of the Right to Life under Article 21 to include the right to live with dignity, the right to livelihood, and the right to receive minimum wages.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Supreme Court has read the right to guaranteed employment for 100 days a year into the Right to Life under Article 21.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Fundamental Rights",
//           'questionId': "28",
//           'statements': [
//             {
//               'text': "Reasonable restrictions in the interest of the sovereignty and integrity of India can be imposed on the freedom of speech and expression under Article 19(2).",
//               'isCorrect': true,
//             },
//             {
//               'text': "Restrictions in the interest of the sovereignty and integrity of India cannot be imposed on the freedom of speech and expression under the Constitution.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Fundamental Rights",
//           'questionId': "29",
//           'statements': [
//             {
//               'text': "Under Article 20(2), a person shall not be prosecuted and punished for the same offence more than once by a court of law.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Under Article 20(2), a person convicted by a court of law cannot also face separate departmental proceedings for the same offence.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Fundamental Rights",
//           'questionId': "30",
//           'statements': [
//             {
//               'text': "Reservation of seats in educational institutions in favour of Scheduled Castes and Scheduled Tribes is governed by Article 15 of the Constitution.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Reservation of seats in educational institutions in favour of Scheduled Castes and Scheduled Tribes is governed by Article 14 of the Constitution.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Fundamental Rights",
//           'questionId': "31",
//           'statements': [
//             {
//               'text': "The Scheduled Castes and Scheduled Tribes (Prevention of Atrocities) Act came after earlier laws such as the Protection of Civil Rights Act, originally known as the Untouchability (Offences) Act, 1955.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Scheduled Castes and Scheduled Tribes (Prevention of Atrocities) Act was the first law enacted in independent India to address caste-based discrimination, preceding the Untouchability (Offences) Act.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Fundamental Rights",
//           'questionId': "32",
//           'statements': [
//             {
//               'text': "The protection against ex-post facto laws under Article 20(1) of the Constitution applies only to criminal offences, not to civil matters.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The protection against ex-post facto laws under Article 20(1) of the Constitution applies to both criminal and civil matters.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Fundamental Rights",
//           'questionId': "33",
//           'statements': [
//             {
//               'text': "Under Article 359, as amended by the 44th Amendment, the Fundamental Rights guaranteed under Articles 20 and 21 cannot be suspended even during a National Emergency.",
//               'isCorrect': true,
//             },
//             {
//               'text': "During a National Emergency, the Fundamental Rights under Articles 20 and 21 can also be suspended along with other Fundamental Rights.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Fundamental Rights",
//           'questionId': "34",
//           'statements': [
//             {
//               'text': "A religious denomination has the right under Article 26 to establish and maintain institutions for religious and charitable purposes, and the State can regulate the secular activities associated with religious practices.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Funds appropriated by a religious denomination for promoting and maintaining a particular religion are taxable under the Constitution.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Fundamental Rights",
//           'questionId': "35",
//           'statements': [
//             {
//               'text': "Articles 15 and 16 of the Constitution explicitly prohibit discrimination on the ground of race, among other grounds.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Racial discrimination in India is explicitly prohibited only under Article 17 of the Constitution, which deals with untouchability.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Fundamental Rights",
//           'questionId': "36",
//           'statements': [
//             {
//               'text': "The right against inhuman treatment, the right against delayed execution, and the right against solitary confinement have all been read by courts into Article 21.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The right to form associations has been read into Article 21 of the Constitution as part of the right to life and personal liberty.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Fundamental Rights",
//           'questionId': "37",
//           'statements': [
//             {
//               'text': "Unlike most other writs, the writ of Habeas Corpus can be issued against private individuals as well as public authorities.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The writ of Habeas Corpus, like the writ of Quo-Warranto, can be issued only against public authorities and never against private individuals.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Fundamental Rights",
//           'questionId': "38",
//           'statements': [
//             {
//               'text': "The right to equality before law under Article 14 of the Constitution is available to both citizens and aliens.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The right to equality before law under Article 14 of the Constitution is available only to citizens of India.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Fundamental Rights",
//           'questionId': "39",
//           'statements': [
//             {
//               'text': "Levying taxes for the promotion of a particular religion and imparting religious instruction in a wholly State-maintained educational institution are prohibited, not part of the freedom of religion under the Constitution.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Levying of taxes for the promotion of a particular religion is included within the scope of the freedom of religion guaranteed under the Constitution.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Fundamental Rights",
//           'questionId': "40",
//           'statements': [
//             {
//               'text': "The right to assemble peaceably and without arms is guaranteed to citizens under Article 19(1)(b) of the Constitution.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The right to vote in elections is guaranteed to citizens under Article 19 of the Constitution as a Fundamental Right.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Fundamental Rights",
//           'questionId': "41",
//           'statements': [
//             {
//               'text': "Article 15(1) of the Constitution prohibits discrimination against citizens on grounds of religion, race, caste, sex, or place of birth, including in matters of admission to educational institutions.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Article 15(1) of the Constitution prohibits discrimination against citizens only on the grounds of nationality, colour, age, and nativity, but not on the ground of religion or caste.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Fundamental Rights",
//           'questionId': "42",
//           'statements': [
//             {
//               'text': "The Maneka Gandhi case established that any procedure depriving a person of life or personal liberty under Article 21 must be just, fair, and reasonable.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Maneka Gandhi case is associated with the invocation of President's Rule under Article 356 of the Constitution.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Fundamental Rights",
//           'questionId': "43",
//           'statements': [
//             {
//               'text': "The right to life under Article 21 of the Constitution has been held by the Supreme Court not to include an unrestricted right to die (right to suicide).",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Supreme Court has held that the right to life under Article 21 includes an unrestricted right to die.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Fundamental Rights",
//           'questionId': "44",
//           'statements': [
//             {
//               'text': "Both Article 31A (protecting laws relating to land reforms and estates) and Article 31C (protecting laws giving effect to certain Directive Principles) act as exceptions to Fundamental Rights under Articles 14 and 19.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Only Article 31A, and not Article 31C, provides an exception to the Fundamental Rights under Articles 14 and 19.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Fundamental Rights",
//           'questionId': "45",
//           'statements': [
//             {
//               'text': "Article 15 of the Constitution permits special provisions for women and children, Scheduled Tribes, and socially and educationally backward classes.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Article 15 of the Constitution, as originally enacted, permits special provisions specifically for 'economically backward classes' as a distinct category.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Fundamental Rights",
//           'questionId': "46",
//           'statements': [
//             {
//               'text': "The writ of Quo Warranto is a powerful instrument to safeguard against the usurpation of public offices, and a High Court can issue a writ of Mandamus to compel a court or tribunal to exercise a jurisdiction it has wrongly refused to exercise.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The writ of Mandamus can never be issued to a court or judicial tribunal, even where it has refused to exercise a jurisdiction vested in it.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "DPSPs and Fundamental Duties",
//           'questionId': "1",
//           'statements': [
//             {
//               'text': "The Directive Principle for a Uniform Civil Code is contained in Article 44 under Part IV of the Constitution, and it is not enforceable by courts nor mandatory on the State.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The provision for a Uniform Civil Code is contained in Part III of the Constitution and is binding on the State to implement uniformly.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "DPSPs and Fundamental Duties",
//           'questionId': "2",
//           'statements': [
//             {
//               'text': "The Directive Principles of State Policy direct the State to secure a social order for the welfare of the people, to separate the judiciary from the executive, and to improve public health.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Directive Principles of State Policy do not direct the State on matters relating to public health or the separation of judiciary from the executive.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "DPSPs and Fundamental Duties",
//           'questionId': "3",
//           'statements': [
//             {
//               'text': "The Directive Principles of State Policy are non-justiciable in nature, meaning they cannot be enforced by courts, but they are fundamental in the governance of the country.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Directive Principles of State Policy are legally enforceable rights of citizens that can be enforced through the courts like Fundamental Rights.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "DPSPs and Fundamental Duties",
//           'questionId': "4",
//           'statements': [
//             {
//               'text': "The 42nd Amendment Act, 1976 added Directive Principles for free legal aid (Article 39A) and for securing the participation of workers in the management of undertakings (Article 43A).",
//               'isCorrect': true,
//             },
//             {
//               'text': "The 42nd Amendment Act, 1976 removed the Directive Principle relating to free legal aid from the Constitution.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "DPSPs and Fundamental Duties",
//           'questionId': "5",
//           'statements': [
//             {
//               'text': "The Directive Principles of State Policy serve as the guiding factor for the State in meeting social needs and establishing a new social order.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Fundamental Rights, rather than the Directive Principles, serve as the guiding factor for the State in meeting social needs and establishing a new social order.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "DPSPs and Fundamental Duties",
//           'questionId': "6",
//           'statements': [
//             {
//               'text': "The right of minorities to establish and administer educational institutions is a Fundamental Right under Article 30, not a Directive Principle of State Policy.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The right of minorities to establish and administer educational institutions is listed as a Directive Principle of State Policy under Part IV of the Constitution.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "DPSPs and Fundamental Duties",
//           'questionId': "7",
//           'statements': [
//             {
//               'text': "Though the Directive Principles of State Policy are not enforceable by any court, Article 37 declares them to be fundamental in the governance of the country.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Directive Principles of State Policy, though not enforceable by courts, are legally superior to and override the Fundamental Rights.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "DPSPs and Fundamental Duties",
//           'questionId': "8",
//           'statements': [
//             {
//               'text': "Uniform civil code, separation of judiciary from the executive, and protection of monuments of national importance are all Directive Principles of State Policy under Part IV of the Constitution.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Protection of monuments of national importance is a Fundamental Right, not a Directive Principle of State Policy.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "DPSPs and Fundamental Duties",
//           'questionId': "9",
//           'statements': [
//             {
//               'text': "Article 49 of the Constitution directs the State to protect monuments, places, and objects of artistic or historic interest of national importance.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Article 50 of the Constitution directs the State to protect monuments, places, and objects of artistic or historic interest of national importance.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "DPSPs and Fundamental Duties",
//           'questionId': "10",
//           'statements': [
//             {
//               'text': "The Constitution directs the State to endeavour to secure a uniform civil code for citizens as a Directive Principle of State Policy under Article 44.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Constitution imposes a uniform civil code as a binding legal obligation on the State, enforceable through the courts as a Fundamental Right.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "DPSPs and Fundamental Duties",
//           'questionId': "11",
//           'statements': [
//             {
//               'text': "One of the key objectives of the Directive Principles of State Policy is to establish India as a secular state, not a religious one.",
//               'isCorrect': true,
//             },
//             {
//               'text': "One of the objectives of the Directive Principles of State Policy is to establish India as a religious state.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "DPSPs and Fundamental Duties",
//           'questionId': "12",
//           'statements': [
//             {
//               'text': "Under Article 31C, primacy over the Fundamental Rights guaranteed by Articles 14 and 19 is given only to the Directive Principles contained in clauses (b) and (c) of Article 39.",
//               'isCorrect': true,
//             },
//             {
//               'text': "All Directive Principles contained in Part IV of the Constitution have been given primacy over all Fundamental Rights.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "DPSPs and Fundamental Duties",
//           'questionId': "13",
//           'statements': [
//             {
//               'text': "Free legal aid as a Directive Principle (Article 39A) was not part of the original Constitution of India in 1950; it was added later by the 42nd Amendment Act, 1976.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Directive Principle providing for free legal aid was part of the original Constitution of India as adopted in 1950.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "DPSPs and Fundamental Duties",
//           'questionId': "14",
//           'statements': [
//             {
//               'text': "'Equal pay for equal work' is a Directive Principle of State Policy under Article 39(d) of the Constitution, not a Fundamental Right.",
//               'isCorrect': true,
//             },
//             {
//               'text': "'Equal pay for equal work' is a Fundamental Right guaranteed directly under Part III of the Constitution.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "DPSPs and Fundamental Duties",
//           'questionId': "15",
//           'statements': [
//             {
//               'text': "Article 44 directs the State to secure a uniform civil code for the citizens of India, as a Directive Principle of State Policy.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Article 44 directs the State to secure a uniform civil code applicable to both citizens and non-citizens of India as an enforceable Fundamental Right.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "DPSPs and Fundamental Duties",
//           'questionId': "16",
//           'statements': [
//             {
//               'text': "Granville Austin described the Directive Principles of State Policy as 'the conscience of the Constitution' embodying its social philosophy.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Dr. B.R. Ambedkar described the Directive Principles of State Policy as 'the conscience of the Constitution.'",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "DPSPs and Fundamental Duties",
//           'questionId': "17",
//           'statements': [
//             {
//               'text': "The responsibility of the State to promote international peace and security is provided for under Article 51, a Directive Principle of State Policy.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The responsibility of the State to promote international peace and security is provided for under the Fundamental Rights in Part III of the Constitution.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "DPSPs and Fundamental Duties",
//           'questionId': "18",
//           'statements': [
//             {
//               'text': "The 42nd Amendment Act gave primacy to certain Directive Principles over some Fundamental Rights, and the Minerva Mills case held that there must be a balance between Part III and Part IV of the Constitution.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The National Commission to Review the Working of the Constitution recommended that all Directive Principles of State Policy be made fully justiciable and directly enforceable by courts.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "DPSPs and Fundamental Duties",
//           'questionId': "19",
//           'statements': [
//             {
//               'text': "Securing a Uniform Civil Code for citizens (Article 44) is a Directive Principle of State Policy, whereas developing scientific temper is listed as a Fundamental Duty, not a Directive Principle.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Developing scientific temper and a spirit of inquiry is listed as a Directive Principle of State Policy in Part IV of the Constitution.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "DPSPs and Fundamental Duties",
//           'questionId': "20",
//           'statements': [
//             {
//               'text': "Article 37 declares the Directive Principles of State Policy to be fundamental in the governance of the country, and it is the duty of the State to apply them in making laws.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Article 37 declares the Directive Principles of State Policy to be fundamental only for the protection of individual rights, not for the governance of the state.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "DPSPs and Fundamental Duties",
//           'questionId': "21",
//           'statements': [
//             {
//               'text': "As per the current constitutional position, in certain cases, such as under Article 31C, Directive Principles may get priority over specific Fundamental Rights.",
//               'isCorrect': true,
//             },
//             {
//               'text': "As per the current constitutional position, Directive Principles can never, under any circumstance, get priority over Fundamental Rights.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "DPSPs and Fundamental Duties",
//           'questionId': "22",
//           'statements': [
//             {
//               'text': "The right to work in India is provided for as a Directive Principle of State Policy under Article 41, not as an enforceable Fundamental Right.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The right to work in India is guaranteed as a Fundamental Right that citizens can enforce directly in courts.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "DPSPs and Fundamental Duties",
//           'questionId': "23",
//           'statements': [
//             {
//               'text': "The Directive Principles of State Policy are not enforceable by any court, yet they are fundamental in the governance of the country.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Directive Principles of State Policy, unlike other parts of the Constitution, cannot be amended by Parliament.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "DPSPs and Fundamental Duties",
//           'questionId': "24",
//           'statements': [
//             {
//               'text': "The 'Instrument of Instructions' under the Government of India Act, 1935, was incorporated into the Constitution of India in 1950 in the form of the Directive Principles of State Policy.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The 'Instrument of Instructions' under the Government of India Act, 1935, was incorporated into the Constitution of India in 1950 in the form of the Fundamental Rights.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "DPSPs and Fundamental Duties",
//           'questionId': "25",
//           'statements': [
//             {
//               'text': "The Directive Principles of State Policy are not enforceable by courts and represent declarations of objectives that the State should strive to achieve through legislation.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Directive Principles of State Policy constitute a binding promise of equal income and free health care for all Indians.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "DPSPs and Fundamental Duties",
//           'questionId': "26",
//           'statements': [
//             {
//               'text': "Article 46 of the Constitution directs the State to promote the educational and economic interests of the Scheduled Castes, Scheduled Tribes, and other weaker sections, while Article 44 deals with a Uniform Civil Code.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Article 46 of the Constitution provides for free legal aid to Scheduled Castes and Scheduled Tribes, while Article 44 provides for the promotion of cottage industries.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "DPSPs and Fundamental Duties",
//           'questionId': "27",
//           'statements': [
//             {
//               'text': "Among the Fundamental Duties under Article 51-A, citizens are required to protect the sovereignty, unity, and integrity of India and to preserve the rich heritage of the country's composite culture.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Helping the poor and weaker sections of society is explicitly listed as one of the Fundamental Duties under Article 51-A of the Constitution.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "DPSPs and Fundamental Duties",
//           'questionId': "28",
//           'statements': [
//             {
//               'text': "Fundamental Duties were added to the Constitution by the 42nd Amendment Act, 1976, based on the recommendations of the Swaran Singh Committee, and they apply only to citizens of India.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Fundamental Duties have been part of the Indian Constitution since its original adoption in 1950 and can be directly enforced through writ jurisdiction.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "DPSPs and Fundamental Duties",
//           'questionId': "29",
//           'statements': [
//             {
//               'text': "To defend the country, to preserve the rich heritage of the country's composite culture, and to safeguard public property are Fundamental Duties under Article 51-A.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Paying income tax is explicitly listed as a Fundamental Duty of every citizen under Article 51-A of the Constitution.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "DPSPs and Fundamental Duties",
//           'questionId': "30",
//           'statements': [
//             {
//               'text': "Article 51-A(e) of the Constitution enjoins every citizen to renounce practices derogatory to the dignity of women.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Article 51-A of the Constitution enjoins every citizen to renounce practices derogatory to the dignity of children.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "DPSPs and Fundamental Duties",
//           'questionId': "31",
//           'statements': [
//             {
//               'text': "The Fundamental Duties are intended to serve as a constant reminder to every citizen to observe basic norms of democratic conduct and behaviour.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Fundamental Duties are intended to serve as a reminder to the judiciary regarding the proper administration of justice.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "DPSPs and Fundamental Duties",
//           'questionId': "32",
//           'statements': [
//             {
//               'text': "Among the Fundamental Duties are the duties to abide by the Constitution and respect its ideals and institutions, to safeguard public property and abjure violence, and to uphold and protect the sovereignty, unity, and integrity of India.",
//               'isCorrect': true,
//             },
//             {
//               'text': "'To uphold and protect secularism' is worded verbatim as a separate Fundamental Duty in Article 51-A of the Constitution.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "DPSPs and Fundamental Duties",
//           'questionId': "33",
//           'statements': [
//             {
//               'text': "Respect for the National Flag and the National Anthem is enjoined as a Fundamental Duty of every citizen under Article 51-A(a).",
//               'isCorrect': true,
//             },
//             {
//               'text': "Respect for the National Flag and the National Anthem is treated as a Fundamental Right of every citizen under the Constitution.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "DPSPs and Fundamental Duties",
//           'questionId': "34",
//           'statements': [
//             {
//               'text': "The Fundamental Duties require citizens to protect the sovereignty, unity, and integrity of India, and to protect and improve the natural environment including forests, lakes, rivers, and wildlife.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Fundamental Duties require every citizen to safeguard private property, as provided under Article 51-A of the Constitution.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "DPSPs and Fundamental Duties",
//           'questionId': "35",
//           'statements': [
//             {
//               'text': "The Fundamental Duties were added to the Constitution by the 42nd Amendment Act, 1976, on the recommendations of the Swaran Singh Committee.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Fundamental Duties were added to the Constitution on the recommendations of the Sarkaria Commission.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "DPSPs and Fundamental Duties",
//           'questionId': "36",
//           'statements': [
//             {
//               'text': "'To secure a social order for the promotion of the welfare of the people' is a Directive Principle of State Policy under Article 38, not a Fundamental Duty.",
//               'isCorrect': true,
//             },
//             {
//               'text': "'To secure a social order for the promotion of the welfare of the people' is listed as a Fundamental Duty under Article 51-A of the Constitution.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "DPSPs and Fundamental Duties",
//           'questionId': "37",
//           'statements': [
//             {
//               'text': "The protection of monuments and places of national importance is a Directive Principle of State Policy under Article 49, not a Fundamental Duty under Article 51-A.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The protection of monuments and places of national importance is explicitly listed as a Fundamental Duty under Article 51-A of the Constitution.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "DPSPs and Fundamental Duties",
//           'questionId': "38",
//           'statements': [
//             {
//               'text': "The Fundamental Duties were added to the Constitution through a constitutional amendment and are meant to be observed by all citizens of India.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Fundamental Duties have always been a part of the Constitution of India since its adoption in 1950.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "DPSPs and Fundamental Duties",
//           'questionId': "39",
//           'statements': [
//             {
//               'text': "Casting a vote in elections is not among the Fundamental Duties explicitly enumerated under Article 51-A of the Constitution.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Casting a vote in elections is explicitly listed as a Fundamental Duty under Article 51-A of the Constitution.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "DPSPs and Fundamental Duties",
//           'questionId': "40",
//           'statements': [
//             {
//               'text': "Developing scientific temper, promoting common brotherhood, and defending the country are Fundamental Duties of citizens, while organizing village panchayats and securing a uniform civil code are obligations of the State under the Directive Principles.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Organizing village panchayats and securing a uniform civil code are listed as Fundamental Duties of citizens under Article 51-A of the Constitution.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "DPSPs and Fundamental Duties",
//           'questionId': "41",
//           'statements': [
//             {
//               'text': "Protecting minorities is not explicitly listed as one of the Fundamental Duties under Article 51-A of the Constitution.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Protecting minorities is explicitly enumerated as a Fundamental Duty of every citizen under Article 51-A of the Constitution.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Important Acts and Constitutional Amendments",
//           'questionId': "1",
//           'statements': [
//             {
//               'text': "A Constitutional Amendment Bill under Article 368 can be introduced in either House of Parliament, and must be passed by each House by a majority of the total membership and a majority of not less than two-thirds of members present and voting.",
//               'isCorrect': true,
//             },
//             {
//               'text': "A Constitutional Amendment Bill under Article 368 can be introduced only in the Lok Sabha and not in the Rajya Sabha.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Important Acts and Constitutional Amendments",
//           'questionId': "2",
//           'statements': [
//             {
//               'text': "Amendments affecting the representation of States in Parliament, matters in the Seventh Schedule, and the manner of election of the President all require ratification by the Legislatures of not less than one-half of the States.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Amendments affecting the manner of election of the President of India do not require ratification by the State Legislatures and can be passed by Parliament alone.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Important Acts and Constitutional Amendments",
//           'questionId': "3",
//           'statements': [
//             {
//               'text': "The republican and democratic form of government, the secular character of the Constitution, and its federal character are recognized as parts of the basic structure of the Indian Constitution.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The division between Fundamental Rights and Directive Principles of State Policy has been recognized by the Supreme Court as part of the basic structure of the Constitution.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Important Acts and Constitutional Amendments",
//           'questionId': "4",
//           'statements': [
//             {
//               'text': "Restricting the writ jurisdiction of the High Courts under Article 226 requires a constitutional amendment passed by a special majority of Parliament and ratified by the Legislatures of not less than one-half of the States.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Restricting the writ jurisdiction of the High Courts under Article 226 can be done by a simple majority in Parliament without any requirement of ratification by the State Legislatures.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Important Acts and Constitutional Amendments",
//           'questionId': "5",
//           'statements': [
//             {
//               'text': "The Constitution (Twenty-fourth Amendment) Act, 1971, affirmed and clarified Parliament's power to amend the Constitution, including the Fundamental Rights, under Article 368.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Constitution (First Amendment) Act, 1951, was the amendment that laid down Parliament's power to amend the Constitution under Article 368.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Important Acts and Constitutional Amendments",
//           'questionId': "6",
//           'statements': [
//             {
//               'text': "The Kesavananda Bharati case (1973) was the first in which the Supreme Court held that Parliament cannot amend the 'basic structure' of the Constitution.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Golaknath case was the first case in which the Supreme Court held that Parliament cannot amend the 'basic structure' of the Constitution.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Important Acts and Constitutional Amendments",
//           'questionId': "7",
//           'statements': [
//             {
//               'text': "Under Article 368, as amended by the 24th Amendment, the President is bound to give his assent to a Constitutional Amendment Bill passed by both Houses of Parliament and cannot withhold or return it.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The President has the discretion to withhold his assent or return a Constitutional Amendment Bill for reconsideration by Parliament.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Important Acts and Constitutional Amendments",
//           'questionId': "8",
//           'statements': [
//             {
//               'text': "Once a Constitutional Amendment Bill is passed by each House of Parliament (and ratified by States where required), the President is obligated to give assent to it.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The President may, at his discretion, return a Constitutional Amendment Bill passed by Parliament for reconsideration, just as with an ordinary Bill.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Important Acts and Constitutional Amendments",
//           'questionId': "9",
//           'statements': [
//             {
//               'text': "Alteration of the names, boundaries, or areas of States, abolition or creation of the Legislative Council of a State, and administration of Scheduled Areas can be modified by Parliament through ordinary legislation by simple majority, without following the Article 368 amendment procedure.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The appointment of additional judges to a High Court is a matter that requires a constitutional amendment under Article 368.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Important Acts and Constitutional Amendments",
//           'questionId': "10",
//           'statements': [
//             {
//               'text': "Neither the Constitution itself nor Parliament has laid down an exhaustive definition of the 'basic structure' of the Constitution; it has evolved through a series of Supreme Court judgments.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Constitution of India clearly and explicitly lays down what constitutes its 'basic structure.'",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Important Acts and Constitutional Amendments",
//           'questionId': "11",
//           'statements': [
//             {
//               'text': "Parliament's constituent power to amend the Constitution includes the power to amend by way of addition, variation, or repeal of its provisions, but is subject to the implied limitation that the basic structure cannot be altered.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Parliament's constituent power to amend the Constitution is completely unrestricted, without any inherent or implied limitations.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Important Acts and Constitutional Amendments",
//           'questionId': "12",
//           'statements': [
//             {
//               'text': "The Constitution (Twenty-fourth Amendment) Act, 1971, inserted a provision stating that nothing in Article 13 shall apply to amendments made under Article 368.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Constitution (Forty-second Amendment) Act, 1976, inserted the provision that Article 13 does not apply to amendments made under Article 368.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Important Acts and Constitutional Amendments",
//           'questionId': "13",
//           'statements': [
//             {
//               'text': "A change in Article 73, relating to the extent of the executive power of the Union, does not require ratification by State Legislatures and can be made by Parliament through the special majority procedure alone.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Any amendment relating to the provisions of Article 368 itself does not require ratification by the Legislatures of the States.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Important Acts and Constitutional Amendments",
//           'questionId': "14",
//           'statements': [
//             {
//               'text': "The Indian Constitution provides for multiple procedures of amendment, and States are not empowered to initiate a constitutional amendment Bill; they can only ratify Bills already passed by Parliament.",
//               'isCorrect': true,
//             },
//             {
//               'text': "In case of a deadlock between the two Houses of Parliament over a Constitutional Amendment Bill, the dispute is resolved through a joint sitting of both Houses, as with ordinary Bills.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Important Acts and Constitutional Amendments",
//           'questionId': "15",
//           'statements': [
//             {
//               'text': "A change in provisions relating to the High Courts requires ratification by the Legislatures of not less than one-half of the States, as it falls within the entrenched provisions under Article 368.",
//               'isCorrect': true,
//             },
//             {
//               'text': "A change in the Fundamental Rights or the Directive Principles of State Policy requires ratification by the Legislatures of the States before the amendment Bill can be presented to the President.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Important Acts and Constitutional Amendments",
//           'questionId': "16",
//           'statements': [
//             {
//               'text': "Parliament can amend the Fundamental Rights under Article 368 using a special majority in each House, without requiring ratification by the States, since Fundamental Rights are not among the entrenched provisions.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Parliament has absolutely no power under Article 368 to amend or affect the Fundamental Rights of citizens.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Important Acts and Constitutional Amendments",
//           'questionId': "17",
//           'statements': [
//             {
//               'text': "The Golaknath case (1967), in which the Supreme Court held that Parliament could not amend Fundamental Rights, prompted the enactment of the 24th Constitutional Amendment Act, 1971.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Kesavananda Bharati case prompted the enactment of the 24th Constitutional Amendment Act, 1971.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Important Acts and Constitutional Amendments",
//           'questionId': "18",
//           'statements': [
//             {
//               'text': "Article 368 of the Constitution lays down both the power of Parliament to amend the Constitution and the procedure to be followed for such amendment.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Article 368 of the Constitution deals only with the procedure for amendment and does not confer any power on Parliament to amend the Constitution.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Important Acts and Constitutional Amendments",
//           'questionId': "19",
//           'statements': [
//             {
//               'text': "In the Minerva Mills case, the Supreme Court invalidated provisions of the Forty-Second Amendment Act on the ground that they violated the basic structure of the Constitution.",
//               'isCorrect': true,
//             },
//             {
//               'text': "In the Minerva Mills case, the Supreme Court invalidated provisions of the Forty-Second Amendment Act on the ground that the required number of States had not ratified the amendment.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Important Acts and Constitutional Amendments",
//           'questionId': "20",
//           'statements': [
//             {
//               'text': "An amendment to any List in the Seventh Schedule of the Constitution requires passage by a special majority in each House of Parliament and ratification by the Legislatures of not less than one-half of the States.",
//               'isCorrect': true,
//             },
//             {
//               'text': "An amendment to any List in the Seventh Schedule of the Constitution can be passed by Parliament with a simple majority alone, without requiring ratification by the States.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Important Acts and Constitutional Amendments",
//           'questionId': "21",
//           'statements': [
//             {
//               'text': "Amendment of Article 54, relating to the election of the President, requires ratification by the Legislatures of the States, as it is among the entrenched provisions under Article 368.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Amendment of Article 157, relating to the qualifications for appointment as Governor of a State, requires ratification by the Legislatures of the States.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Important Acts and Constitutional Amendments",
//           'questionId': "22",
//           'statements': [
//             {
//               'text': "It is obligatory for the President to give assent to a Constitutional Amendment Bill passed under Article 368, and amending the Seventh Schedule requires ratification by the Legislatures of not less than one-half of the States.",
//               'isCorrect': true,
//             },
//             {
//               'text': "A proposal to amend the Constitution under Article 368 can only be introduced in the House of the People (Lok Sabha), and in case of a deadlock between the Houses, it is resolved through a joint sitting of Parliament.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Important Acts and Constitutional Amendments",
//           'questionId': "23",
//           'statements': [
//             {
//               'text': "The First Amendment to the Constitution (1951) added special provisions for the advancement of socially and educationally backward classes under Article 15(4), validated certain Acts and Regulations under the newly created Ninth Schedule, and inserted the saving of laws providing for acquisition of estates under Article 31A.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The First Amendment to the Constitution (1951) inserted the saving of laws giving effect to certain Directive Principles under Article 31C.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Important Acts and Constitutional Amendments",
//           'questionId': "24",
//           'statements': [
//             {
//               'text': "The Constitution (Ninety-second Amendment) Act, 2003, dealt with the inclusion of Bodo, Dogri, Maithili, and Santhali languages in the Eighth Schedule.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Constitution (Ninety-second Amendment) Act, 2003, dealt with making the right to free and compulsory education a Fundamental Right.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Important Acts and Constitutional Amendments",
//           'questionId': "25",
//           'statements': [
//             {
//               'text': "The 86th Amendment to the Constitution of India made free and compulsory education for children a Fundamental Right, by inserting Article 21A.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The 86th Amendment to the Constitution of India enhanced the scope of reservation for backward communities in educational institutions.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Important Acts and Constitutional Amendments",
//           'questionId': "26",
//           'statements': [
//             {
//               'text': "The 24th Amendment asserted Parliament's right to amend any part of the Constitution, including Part III (Fundamental Rights), and the 39th Amendment placed disputes relating to the election of the President, Vice-President, Prime Minister, and Speaker beyond the purview of the judiciary.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The 42nd Amendment made political defections illegal, and the 70th Amendment granted statehood to the Union Territory of Delhi.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Important Acts and Constitutional Amendments",
//           'questionId': "27",
//           'statements': [
//             {
//               'text': "The Constitution (93rd Amendment) Act dealt with the extension of reservation in educational institutions, including private institutions, by inserting Article 15(5).",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Constitution (93rd Amendment) Act dealt with the appointment of judges in the Supreme Court of India.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Important Acts and Constitutional Amendments",
//           'questionId': "28",
//           'statements': [
//             {
//               'text': "Part IV-A, containing the Fundamental Duties, was added to the Constitution by the Forty-second Amendment Act.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Part IV-A, containing the Fundamental Duties, was added to the Constitution by the Forty-fourth Amendment Act.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Important Acts and Constitutional Amendments",
//           'questionId': "29",
//           'statements': [
//             {
//               'text': "In chronological order, Sikkim became a State of the Indian Union first, followed by the deletion of the Right to Property from the list of Fundamental Rights, then the official acceptance of the Hindi version of the Constitution, and finally the reduction of the voting age from 21 to 18 years.",
//               'isCorrect': true,
//             },
//             {
//               'text': "In chronological order, the voting age was reduced from 21 to 18 years first, followed by the deletion of the Right to Property from Fundamental Rights, then the acceptance of the Hindi version of the Constitution, and finally Sikkim becoming a State of the Indian Union.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Parliamentary System",
//           'questionId': "1",
//           'statements': [
//             {
//               'text': "Under India's parliamentary system, the President is the nominal (titular) head of the state.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Under India's parliamentary system, the Prime Minister is the nominal (titular) head of the state.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Parliamentary System",
//           'questionId': "2",
//           'statements': [
//             {
//               'text': "In India's parliamentary system, the real executive authority rests with the Council of Ministers headed by the Prime Minister.",
//               'isCorrect': true,
//             },
//             {
//               'text': "In India's parliamentary system, the real executive authority rests with the President acting independently of the Council of Ministers.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Parliamentary System",
//           'questionId': "3",
//           'statements': [
//             {
//               'text': "The Council of Ministers in India is collectively responsible to the Lok Sabha, the popular chamber of Parliament.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Council of Ministers in India is collectively responsible to the Rajya Sabha, the upper chamber of Parliament.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Parliamentary System",
//           'questionId': "4",
//           'statements': [
//             {
//               'text': "The essence of India's parliamentary form of government is the responsibility of the executive to the legislature.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The essence of India's parliamentary form of government is the complete separation of the executive from the legislature.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Parliamentary System",
//           'questionId': "5",
//           'statements': [
//             {
//               'text': "Under a cabinet form of government, the cabinet remains in office as long as it enjoys the confidence of the popular chamber of the legislature, not for a fixed term.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Under a cabinet form of government, the cabinet remains in office for a fixed term regardless of the confidence of the popular chamber of the legislature.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Parliamentary System",
//           'questionId': "6",
//           'statements': [
//             {
//               'text': "In India's parliamentary system, ministers are appointed by the President on the recommendation of the Prime Minister.",
//               'isCorrect': true,
//             },
//             {
//               'text': "In India's parliamentary system, ministers are appointed by the President entirely at his own discretion, without any recommendation.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Parliamentary System",
//           'questionId': "7",
//           'statements': [
//             {
//               'text': "Fusion of the executive and the legislature is a defining feature of the parliamentary system of government.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Strict separation of the executive and the legislature is a defining feature of the parliamentary system of government.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Parliamentary System",
//           'questionId': "8",
//           'statements': [
//             {
//               'text': "A fixed tenure of the executive, independent of the legislature's confidence, is not an essential feature of the parliamentary system.",
//               'isCorrect': true,
//             },
//             {
//               'text': "A fixed tenure of the executive, independent of the legislature's confidence, is an essential feature of the parliamentary system.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Parliamentary System",
//           'questionId': "9",
//           'statements': [
//             {
//               'text': "The presence of a nominal or titular head of state is a feature of the parliamentary system of government.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The presence of a nominal or titular head of state is a feature that is completely absent from the parliamentary system of government.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Parliamentary System",
//           'questionId': "10",
//           'statements': [
//             {
//               'text': "Collective responsibility of the Council of Ministers is a core principle on which India's parliamentary system operates.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Individual responsibility of each minister to the President, rather than collective responsibility, is the core principle on which India's parliamentary system operates.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Parliamentary System",
//           'questionId': "11",
//           'statements': [
//             {
//               'text': "Theory of separation of powers between the executive and legislature is not the main principle on which the parliamentary system operates.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Theory of separation of powers between the executive and legislature is the main principle on which the parliamentary system operates.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Parliamentary System",
//           'questionId': "12",
//           'statements': [
//             {
//               'text': "The Vice-President of India is the ex officio Chairman of the Rajya Sabha, not of the Lok Sabha.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Vice-President of India is the ex officio Chairman of the Lok Sabha, not of the Rajya Sabha.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Federal System",
//           'questionId': "1",
//           'statements': [
//             {
//               'text': "In the Indian federation, seats in the Rajya Sabha are allocated to states roughly in proportion to their population, unlike the equal representation given to states in the US Senate.",
//               'isCorrect': true,
//             },
//             {
//               'text': "In the Indian federation, seats in the Rajya Sabha are allocated equally to every state, exactly like the equal representation given to states in the US Senate.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Federal System",
//           'questionId': "2",
//           'statements': [
//             {
//               'text': "No state in the Indian Union has the right to unilaterally secede from the Union.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Every state in the Indian Union has the constitutional right to unilaterally secede from the Union.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Federal System",
//           'questionId': "3",
//           'statements': [
//             {
//               'text': "Parliament has the power to alter the boundaries, name, or area of an existing state by ordinary legislation.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Parliament has no power to alter the boundaries, name, or area of an existing state, even by a constitutional amendment.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Federal System",
//           'questionId': "4",
//           'statements': [
//             {
//               'text': "India has a single, integrated judicial system rather than separate federal and state judiciaries.",
//               'isCorrect': true,
//             },
//             {
//               'text': "India has two entirely separate judicial systems, one for the Union and one for the States, similar to the United States.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Federal System",
//           'questionId': "5",
//           'statements': [
//             {
//               'text': "The word 'Federal' does not appear anywhere in the text of the Constitution of India.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The word 'Federal' appears prominently in the Preamble to the Constitution of India.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Federal System",
//           'questionId': "6",
//           'statements': [
//             {
//               'text': "The description of the Indian Constitution as being 'at the most quasi-federal, a unitary State with subsidiary federal features' is attributed to the scholar K.C. Wheare.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The description of the Indian Constitution as being 'at the most quasi-federal, a unitary State with subsidiary federal features' is attributed to the scholar Granville Austin.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Federal System",
//           'questionId': "7",
//           'statements': [
//             {
//               'text': "The term 'federation' essentially implies a division of powers between different levels of government.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The term 'federation' essentially implies a complete fusion of powers into a single level of government.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Federal System",
//           'questionId': "8",
//           'statements': [
//             {
//               'text': "Cooperative federalism is widely regarded as the form of federalism best suited to a large and diverse country like India.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Centralised federalism, involving no bargaining or cooperation with the states, is widely regarded as the form of federalism best suited to a large and diverse country like India.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Federal System",
//           'questionId': "9",
//           'statements': [
//             {
//               'text': "Under the Indian Constitution, residuary powers of legislation are vested in Parliament (the Union), not the state legislatures.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Under the Indian Constitution, residuary powers of legislation are vested in the state legislatures, not in Parliament.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Federal System",
//           'questionId': "10",
//           'statements': [
//             {
//               'text': "The structure of the Indian Constitution is often described as federal in form but unitary in spirit.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The structure of the Indian Constitution is often described as purely and unambiguously federal, with no unitary features at all.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Federal System",
//           'questionId': "11",
//           'statements': [
//             {
//               'text': "India's federal system is generally considered to closely resemble the Canadian model of federation.",
//               'isCorrect': true,
//             },
//             {
//               'text': "India's federal system is generally considered to closely resemble the American model of federation.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Federal System",
//           'questionId': "12",
//           'statements': [
//             {
//               'text': "Parliament can legislate on a State List subject if the Rajya Sabha, by a resolution supported by not less than two-thirds of members present and voting, declares it necessary in the national interest.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Parliament can legislate on a State List subject if the Lok Sabha, by a simple majority of members present and voting, declares it necessary in the national interest.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Centre-State Relations",
//           'questionId': "1",
//           'statements': [
//             {
//               'text': "A resolution passed by the Rajya Sabha under Article 249, empowering Parliament to legislate on a State subject in the national interest, remains in force for a maximum of one year at a time, though it can be renewed.",
//               'isCorrect': true,
//             },
//             {
//               'text': "A resolution passed by the Rajya Sabha under Article 249, empowering Parliament to legislate on a State subject in the national interest, remains in force for a maximum of two years at a time, though it can be renewed.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Centre-State Relations",
//           'questionId': "2",
//           'statements': [
//             {
//               'text': "Under Article 73, the executive power of the Union extends to all matters with respect to which Parliament has the power to make laws.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Under Article 73, the executive power of the Union is restricted only to matters placed in the Concurrent List, and does not extend to Union List matters.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Centre-State Relations",
//           'questionId': "3",
//           'statements': [
//             {
//               'text': "Under Article 73, the Government of India may also exercise executive authority available to it under any treaty or agreement.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Under Article 73, the Government of India is expressly barred from exercising any executive authority arising out of a treaty or agreement.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Centre-State Relations",
//           'questionId': "4",
//           'statements': [
//             {
//               'text': "In the concurrent sphere, where there is repugnancy between a Union law and a State law on the same subject, the Union law generally prevails.",
//               'isCorrect': true,
//             },
//             {
//               'text': "In the concurrent sphere, where there is repugnancy between a Union law and a State law on the same subject, the State law always prevails, even without the President's assent.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Centre-State Relations",
//           'questionId': "5",
//           'statements': [
//             {
//               'text': "India's scheme of vesting residuary powers in the Union Parliament follows the precedent of Canada rather than that of the Government of India Act, 1935.",
//               'isCorrect': true,
//             },
//             {
//               'text': "India's scheme of vesting residuary powers in the Union Parliament follows the precedent of the Government of India Act, 1935, rather than that of Canada.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Centre-State Relations",
//           'questionId': "6",
//           'statements': [
//             {
//               'text': "Under Article 258, the Governor of a State may, with the consent of the Government of India, entrust to the Union functions relating to a matter to which the executive power of the State extends.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Under Article 258, the Governor of a State may entrust to the Union functions relating to a matter to which the executive power of the State extends, without needing the consent of the Government of India.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Centre-State Relations",
//           'questionId': "7",
//           'statements': [
//             {
//               'text': "The President may, with the consent of a State Government, entrust to that State government functions relating to a matter to which the executive power of the Union extends.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The President can never entrust to any State government functions relating to a matter to which the executive power of the Union extends, even with the State's consent.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Centre-State Relations",
//           'questionId': "8",
//           'statements': [
//             {
//               'text': "The National Integration Council is a non-constitutional advisory body, not a body created by any express provision of the Constitution.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The National Integration Council is a body expressly created under a specific provision of the Constitution of India.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Centre-State Relations",
//           'questionId': "9",
//           'statements': [
//             {
//               'text': "A law made by Parliament having extra-territorial operation is not deemed invalid merely on that ground.",
//               'isCorrect': true,
//             },
//             {
//               'text': "A law made by Parliament having extra-territorial operation is automatically deemed invalid and unconstitutional.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Centre-State Relations",
//           'questionId': "10",
//           'statements': [
//             {
//               'text': "The Sarkaria Commission was set up by the Government of India to examine and recommend on Centre-State relations.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Sarkaria Commission was set up by the Government of India to examine and recommend reforms to the electoral system.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Centre-State Relations",
//           'questionId': "11",
//           'statements': [
//             {
//               'text': "The Supreme Court's judgment in the S.R. Bommai case has a direct bearing on Centre-State relations, particularly the use of Article 356.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Supreme Court's judgment in the S.R. Bommai case has a direct bearing on fundamental rights under Article 21, and has no connection to Article 356.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Centre-State Relations",
//           'questionId': "12",
//           'statements': [
//             {
//               'text': "Customs duties in India are levied and collected exclusively by the Union Government.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Customs duties in India are levied and collected exclusively by the State Governments.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Centre-State Relations",
//           'questionId': "13",
//           'statements': [
//             {
//               'text': "Land revenue is a tax source that belongs to the States, not the Union.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Land revenue is a tax source that belongs exclusively to the Union, not the States.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Centre-State Relations",
//           'questionId': "14",
//           'statements': [
//             {
//               'text': "If a State fails to comply with directions given by the Union, the President may hold that the constitutional machinery of that State has failed under Article 365.",
//               'isCorrect': true,
//             },
//             {
//               'text': "If a State fails to comply with directions given by the Union, the Supreme Court alone, and not the President, may declare that the constitutional machinery of that State has failed.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Centre-State Relations",
//           'questionId': "15",
//           'statements': [
//             {
//               'text': "The rule of repugnancy applies where both Parliament and a State legislature enact laws on the same subject falling under the Concurrent List.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The rule of repugnancy applies only when Parliament and a State legislature enact laws on two completely different subjects placed in different Lists.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Centre-State Relations",
//           'questionId': "16",
//           'statements': [
//             {
//               'text': "All-India Services, such as the IAS and IPS, are a constitutional mechanism that helps the Union exercise a measure of control and coordination over the States.",
//               'isCorrect': true,
//             },
//             {
//               'text': "All-India Services, such as the IAS and IPS, are purely State-level cadres with no role in Union control or coordination over the States.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Inter-State Relations",
//           'questionId': "1",
//           'statements': [
//             {
//               'text': "Parliament may, by law, exclude the jurisdiction of the Supreme Court and other courts over disputes relating to the use, distribution, or control of the waters of an inter-State river.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Parliament has no power to exclude the jurisdiction of the Supreme Court over disputes relating to the use, distribution, or control of the waters of an inter-State river.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Inter-State Relations",
//           'questionId': "2",
//           'statements': [
//             {
//               'text': "The Inter-State Council is a body created under Article 263 of the Constitution of India.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Inter-State Council is a body created under Article 356 of the Constitution of India.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Inter-State Relations",
//           'questionId': "3",
//           'statements': [
//             {
//               'text': "One of the duties of the Inter-State Council is to inquire into and advise upon disputes that may have arisen between or among States.",
//               'isCorrect': true,
//             },
//             {
//               'text': "One of the duties of the Inter-State Council is to try and pass binding judicial verdicts on disputes that may have arisen between or among States.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Inter-State Relations",
//           'questionId': "4",
//           'statements': [
//             {
//               'text': "Zonal Councils were set up under the provisions of the States Reorganisation Act, 1956, and not by a direct provision of the Constitution.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Zonal Councils were set up under a direct and express provision of the Constitution of India, not under the States Reorganisation Act, 1956.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Inter-State Relations",
//           'questionId': "5",
//           'statements': [
//             {
//               'text': "The recommendations of Zonal Councils are advisory in nature and are not binding on the Union or the State Governments.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The recommendations of Zonal Councils are legally binding on both the Union and the State Governments.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Inter-State Relations",
//           'questionId': "6",
//           'statements': [
//             {
//               'text': "There are five Zonal Councils in India.",
//               'isCorrect': true,
//             },
//             {
//               'text': "There are twenty-eight Zonal Councils in India, one for each state.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Inter-State Relations",
//           'questionId': "7",
//           'statements': [
//             {
//               'text': "Parliament may, by law, impose reasonable restrictions on the freedom of trade, commerce, and intercourse between one State and another in the public interest.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Parliament has no power whatsoever to impose any restrictions on the freedom of trade, commerce, and intercourse between one State and another.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Inter-State Relations",
//           'questionId': "8",
//           'statements': [
//             {
//               'text': "Trade and commerce within a State is a subject placed in the State List, not the Concurrent List.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Trade and commerce within a State is a subject placed in the Concurrent List, not the State List.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Inter-State Relations",
//           'questionId': "9",
//           'statements': [
//             {
//               'text': "The Prime Minister of India is the ex officio Chairman of the Inter-State Council.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Chief Justice of India is the ex officio Chairman of the Inter-State Council.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Inter-State Relations",
//           'questionId': "10",
//           'statements': [
//             {
//               'text': "The Union Home Minister is conventionally the Chairman of a Zonal Council.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Chief Minister of the largest state in the zone is always the permanent Chairman of a Zonal Council.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Inter-State Relations",
//           'questionId': "11",
//           'statements': [
//             {
//               'text': "The 'Full Faith and Credit' clause under Article 261 requires public acts, records, and judicial proceedings of the Union and every State to be recognised throughout the territory of India.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The 'Full Faith and Credit' clause under Article 261 applies only to the public acts of the Union Government and has no application to the States.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Inter-State Relations",
//           'questionId': "12",
//           'statements': [
//             {
//               'text': "Inter-State water disputes can be adjudicated by tribunals established by Parliament through law.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Inter-State water disputes can be adjudicated only by special courts personally established by the President, and by no other body.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Inter-State Relations",
//           'questionId': "13",
//           'statements': [
//             {
//               'text': "The Inter-State Council was formally constituted in 1990, following a recommendation of the Sarkaria Commission.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Inter-State Council was formally constituted in 1950, at the very commencement of the Constitution, without any commission's recommendation.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Emergency Provisions",
//           'questionId': "1",
//           'statements': [
//             {
//               'text': "A Proclamation of Emergency under Article 352 can be issued by the President only on the written recommendation of the Union Cabinet.",
//               'isCorrect': true,
//             },
//             {
//               'text': "A Proclamation of Emergency under Article 352 can be issued by the President purely at his own discretion, without any Cabinet recommendation.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Emergency Provisions",
//           'questionId': "2",
//           'statements': [
//             {
//               'text': "The requirement that the President act only on the written recommendation of the Cabinet before issuing a Proclamation of Emergency was introduced by the 44th Constitutional Amendment.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The requirement that the President act only on the written recommendation of the Cabinet before issuing a Proclamation of Emergency was part of the original Constitution as adopted by the Constituent Assembly.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Emergency Provisions",
//           'questionId': "3",
//           'statements': [
//             {
//               'text': "A Proclamation of National Emergency must be approved by both Houses of Parliament within one month of its issue, or it lapses.",
//               'isCorrect': true,
//             },
//             {
//               'text': "A Proclamation of National Emergency must be approved by both Houses of Parliament within six months of its issue, or it lapses.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Emergency Provisions",
//           'questionId': "4",
//           'statements': [
//             {
//               'text': "Approval of a Proclamation of National Emergency requires a special majority: a majority of the total membership of each House, and not less than two-thirds of members present and voting.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Approval of a Proclamation of National Emergency requires only a simple majority of members present and voting in each House.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Emergency Provisions",
//           'questionId': "5",
//           'statements': [
//             {
//               'text': "Once approved by Parliament, a Proclamation of National Emergency can continue for six months at a time and must be extended thereafter by a further resolution.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Once approved by Parliament, a Proclamation of National Emergency automatically continues indefinitely and never requires any further parliamentary approval.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Emergency Provisions",
//           'questionId': "6",
//           'statements': [
//             {
//               'text': "A Proclamation of Financial Emergency under Article 360 ceases to operate at the expiration of two months, unless it is approved by resolutions of both Houses of Parliament before that period ends.",
//               'isCorrect': true,
//             },
//             {
//               'text': "A Proclamation of Financial Emergency under Article 360 ceases to operate at the expiration of six months, unless it is approved by resolutions of both Houses of Parliament before that period ends.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Emergency Provisions",
//           'questionId': "7",
//           'statements': [
//             {
//               'text': "A Proclamation of Financial Emergency may be revoked or varied by a subsequent Proclamation.",
//               'isCorrect': true,
//             },
//             {
//               'text': "A Proclamation of Financial Emergency, once issued, can never be revoked or varied under any circumstances.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Emergency Provisions",
//           'questionId': "8",
//           'statements': [
//             {
//               'text': "During a Proclamation of Emergency issued on the ground of war or external aggression, the freedoms under Article 19 are automatically suspended, while other Fundamental Rights can be suspended only by a specific Presidential order.",
//               'isCorrect': true,
//             },
//             {
//               'text': "During any Proclamation of Emergency, all Fundamental Rights, without exception, are automatically and permanently suspended with no need for any Presidential order.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Emergency Provisions",
//           'questionId': "9",
//           'statements': [
//             {
//               'text': "Fundamental Rights guaranteed under Articles 20 and 21 cannot be suspended even during a Proclamation of Emergency.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Fundamental Rights guaranteed under Articles 20 and 21 are the first rights to be suspended during a Proclamation of Emergency.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Emergency Provisions",
//           'questionId': "10",
//           'statements': [
//             {
//               'text': "Article 358 automatically suspends the restrictions under Article 19 only when the Emergency is proclaimed on the ground of war or external aggression, not on the ground of armed rebellion.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Article 358 automatically suspends the restrictions under Article 19 whenever the Emergency is proclaimed on any ground whatsoever, including armed rebellion.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Emergency Provisions",
//           'questionId': "11",
//           'statements': [
//             {
//               'text': "Article 359 allows the President, by order, to specify which Fundamental Rights (other than those under Articles 20 and 21) remain suspended for enforcement in courts during an Emergency.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Article 359 allows the Prime Minister, without any Presidential order, to personally decide which Fundamental Rights remain suspended during an Emergency.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Emergency Provisions",
//           'questionId': "12",
//           'statements': [
//             {
//               'text': "The 44th Constitutional Amendment replaced the ground of 'internal disturbance' with 'armed rebellion' as a ground for proclaiming a National Emergency.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The 44th Constitutional Amendment replaced the ground of 'armed rebellion' with 'internal disturbance' as a ground for proclaiming a National Emergency.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Emergency Provisions",
//           'questionId': "13",
//           'statements': [
//             {
//               'text': "President's Rule under Article 356 initially lasts for six months and can be extended, with periodic parliamentary approval, up to a maximum of three years.",
//               'isCorrect': true,
//             },
//             {
//               'text': "President's Rule under Article 356 initially lasts for three years and can be extended, with periodic parliamentary approval, up to a maximum of six years.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Emergency Provisions",
//           'questionId': "14",
//           'statements': [
//             {
//               'text': "Beyond one year, President's Rule under Article 356 can be extended only if a National Emergency is in operation or the Election Commission certifies that elections in the State cannot be held.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Beyond one year, President's Rule under Article 356 can be extended by a simple executive order of the Governor, without any special conditions.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Emergency Provisions",
//           'questionId': "15",
//           'statements': [
//             {
//               'text': "The judgment in the S.R. Bommai case dealt principally with the exercise of power under Article 356 (President's Rule).",
//               'isCorrect': true,
//             },
//             {
//               'text': "The judgment in the S.R. Bommai case dealt principally with the reservation of seats under Article 15.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Emergency Provisions",
//           'questionId': "16",
//           'statements': [
//             {
//               'text': "During President's Rule, the President assumes the functions of the State's executive, and the powers of the State Legislature are exercised by, or under the authority of, Parliament.",
//               'isCorrect': true,
//             },
//             {
//               'text': "During President's Rule, the State's executive and legislative functions continue to be exercised exactly as before, with no change of authority.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Emergency Provisions",
//           'questionId': "17",
//           'statements': [
//             {
//               'text': "A law made by Parliament on a State List subject during a National Emergency ceases to have effect six months after the Emergency has ceased to operate.",
//               'isCorrect': true,
//             },
//             {
//               'text': "A law made by Parliament on a State List subject during a National Emergency ceases to have effect immediately and automatically the moment the Emergency is proclaimed to be over.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Emergency Provisions",
//           'questionId': "18",
//           'statements': [
//             {
//               'text': "If the Lok Sabha stands dissolved when a Proclamation of Emergency needs approval and the Rajya Sabha has already approved it, the Proclamation continues until 30 days after the newly constituted Lok Sabha first sits, by which time it must also be approved.",
//               'isCorrect': true,
//             },
//             {
//               'text': "If the Lok Sabha stands dissolved when a Proclamation of Emergency needs approval, the Proclamation automatically lapses immediately, regardless of any approval by the Rajya Sabha.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Central Council of Ministers",
//           'questionId': "1",
//           'statements': [
//             {
//               'text': "Article 74 provides for a Council of Ministers with the Prime Minister at the head to aid and advise the President, who shall act in accordance with such advice.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Article 78 provides for a Council of Ministers with the Prime Minister at the head to aid and advise the President, who is free to act independently of such advice.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Central Council of Ministers",
//           'questionId': "2",
//           'statements': [
//             {
//               'text': "Under the proviso added by the 44th Amendment, the President may require the Council of Ministers to reconsider its advice once, but must act in accordance with the advice tendered after such reconsideration.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Under the proviso added by the 44th Amendment, the President may reject the Council of Ministers' advice outright and substitute his own decision, even after reconsideration.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Central Council of Ministers",
//           'questionId': "3",
//           'statements': [
//             {
//               'text': "Making the President's action bound by the advice of the Council of Ministers was explicitly written into Article 74 by the 42nd Amendment.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Making the President's action bound by the advice of the Council of Ministers was explicitly written into Article 74 by the introduction of the original Constitution in 1950.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Central Council of Ministers",
//           'questionId': "4",
//           'statements': [
//             {
//               'text': "The collective responsibility of the Council of Ministers to the Lok Sabha is provided for under Article 75(3) of the Constitution.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The collective responsibility of the Council of Ministers to the Rajya Sabha is provided for under Article 75(3) of the Constitution.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Central Council of Ministers",
//           'questionId': "5",
//           'statements': [
//             {
//               'text': "Ministers of the Union hold office during the pleasure of the President.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Ministers of the Union hold office for a fixed five-year term that cannot be cut short by the President.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Central Council of Ministers",
//           'questionId': "6",
//           'statements': [
//             {
//               'text': "The Constitution of India does not provide for, or mention by name, a separate office titled 'Deputy Prime Minister'.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Constitution of India expressly creates and names the office of 'Deputy Prime Minister' as a distinct constitutional post.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Central Council of Ministers",
//           'questionId': "7",
//           'statements': [
//             {
//               'text': "Under Article 74(2), the advice tendered by Ministers to the President cannot be inquired into by any court.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Under Article 74(2), the advice tendered by Ministers to the President can be freely inquired into by any court, including the High Courts.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Central Council of Ministers",
//           'questionId': "8",
//           'statements': [
//             {
//               'text': "The accountability of the Prime Minister and the Council of Ministers to the Lok Sabha is direct, continuous, and collective.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The accountability of the Prime Minister and the Council of Ministers to the Lok Sabha is only intermittent, arising solely at the time of general elections.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Central Council of Ministers",
//           'questionId': "9",
//           'statements': [
//             {
//               'text': "The Union Council of Ministers can continue to function for some time even after the death or resignation of the Prime Minister, until a new government is formed.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Union Council of Ministers automatically and instantly ceases to exist the moment the Prime Minister dies or resigns.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Central Council of Ministers",
//           'questionId': "10",
//           'statements': [
//             {
//               'text': "The President of India generally cannot function without the aid and advice of the Union Council of Ministers.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The President of India can, in all matters, function entirely independently without any aid or advice from the Union Council of Ministers.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Central Council of Ministers",
//           'questionId': "11",
//           'statements': [
//             {
//               'text': "The Attorney General for India, and not the Solicitor General, is regarded as the highest law officer of the Union Government.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Solicitor General, and not the Attorney General for India, is regarded as the highest law officer of the Union Government.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Central Council of Ministers",
//           'questionId': "12",
//           'statements': [
//             {
//               'text': "The salaries and allowances of Union Ministers are determined by Parliament by law.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The salaries and allowances of Union Ministers are determined solely by the Cabinet Secretariat, without any parliamentary law.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Central Council of Ministers",
//           'questionId': "13",
//           'statements': [
//             {
//               'text': "If the President so requires, the Prime Minister must place before the Council of Ministers any matter on which a decision has been taken by an individual minister without prior consideration by the Council.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Even if the President so requires, an individual minister's decision can never be placed before the Council of Ministers for reconsideration.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Central Council of Ministers",
//           'questionId': "14",
//           'statements': [
//             {
//               'text': "Articles 74, 75, and 78 are the key constitutional provisions dealing with the relationship between the President and the Council of Ministers.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Articles 72, 73, and 76 are the key constitutional provisions dealing with the relationship between the President and the Council of Ministers.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Parliament",
//           'questionId': "1",
//           'statements': [
//             {
//               'text': "A Money Bill can be introduced only in the Lok Sabha, and not in the Rajya Sabha.",
//               'isCorrect': true,
//             },
//             {
//               'text': "A Money Bill can be introduced in either the Lok Sabha or the Rajya Sabha, at the discretion of the government.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Parliament",
//           'questionId': "2",
//           'statements': [
//             {
//               'text': "The Rajya Sabha must return a Money Bill to the Lok Sabha within 14 days, with or without its recommendations, and the Lok Sabha may accept or reject those recommendations.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Rajya Sabha must return a Money Bill to the Lok Sabha within 6 months, and the Lok Sabha is bound to accept all of the Rajya Sabha's recommendations.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Parliament",
//           'questionId': "3",
//           'statements': [
//             {
//               'text': "If a question arises whether a bill is a Money Bill or not, the decision of the Speaker of the Lok Sabha on the matter is final.",
//               'isCorrect': true,
//             },
//             {
//               'text': "If a question arises whether a bill is a Money Bill or not, the decision of the Chairman of the Rajya Sabha on the matter is final.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Parliament",
//           'questionId': "4",
//           'statements': [
//             {
//               'text': "A bill pending in the Rajya Sabha, which has not been passed by the Lok Sabha, does not lapse merely on the dissolution of the Lok Sabha.",
//               'isCorrect': true,
//             },
//             {
//               'text': "A bill pending in the Rajya Sabha, which has not been passed by the Lok Sabha, automatically lapses the moment the Lok Sabha is dissolved.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Parliament",
//           'questionId': "5",
//           'statements': [
//             {
//               'text': "A bill does not lapse merely by reason of the prorogation of the Houses of Parliament.",
//               'isCorrect': true,
//             },
//             {
//               'text': "A bill automatically lapses whenever either House of Parliament is prorogued, regardless of the stage it has reached.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Parliament",
//           'questionId': "6",
//           'statements': [
//             {
//               'text': "A joint sitting of both Houses of Parliament, called to resolve a deadlock over an ordinary bill, is presided over by the Speaker of the Lok Sabha.",
//               'isCorrect': true,
//             },
//             {
//               'text': "A joint sitting of both Houses of Parliament, called to resolve a deadlock over an ordinary bill, is presided over by the Vice-President of India.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Parliament",
//           'questionId': "7",
//           'statements': [
//             {
//               'text': "There is no provision for a joint sitting of both Houses of Parliament to resolve a deadlock over a Money Bill.",
//               'isCorrect': true,
//             },
//             {
//               'text': "A joint sitting of both Houses of Parliament is compulsorily held to resolve every deadlock that arises over a Money Bill.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Parliament",
//           'questionId': "8",
//           'statements': [
//             {
//               'text': "The quorum required for a sitting of either House of Parliament is one-tenth of the total membership of that House.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The quorum required for a sitting of either House of Parliament is one-half of the total membership of that House.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Parliament",
//           'questionId': "9",
//           'statements': [
//             {
//               'text': "According to the Constitution, the Lok Sabha must meet at least twice a year, with not more than six months elapsing between its last sitting in one session and its first sitting in the next.",
//               'isCorrect': true,
//             },
//             {
//               'text': "According to the Constitution, the Lok Sabha must meet at least once a year, with not more than twelve months elapsing between its last sitting in one session and its first sitting in the next.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Parliament",
//           'questionId': "10",
//           'statements': [
//             {
//               'text': "The Rajya Sabha is a permanent body that is never dissolved in its entirety; about one-third of its members retire every two years.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Rajya Sabha is dissolved in its entirety every five years, exactly like the Lok Sabha, and fresh elections are held to all of its seats.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Parliament",
//           'questionId': "11",
//           'statements': [
//             {
//               'text': "A Constitutional Amendment Bill under Article 368 must be passed by a majority of the total membership of each House, and by a majority of not less than two-thirds of the members present and voting.",
//               'isCorrect': true,
//             },
//             {
//               'text': "A Constitutional Amendment Bill under Article 368 can be passed by a simple majority of members present and voting in each House, with no special majority required.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Parliament",
//           'questionId': "12",
//           'statements': [
//             {
//               'text': "If a member of either House of Parliament remains absent without permission from all meetings for 60 days, the House concerned may declare his or her seat vacant.",
//               'isCorrect': true,
//             },
//             {
//               'text': "If a member of either House of Parliament remains absent without permission from all meetings for 15 days, the House concerned may declare his or her seat vacant.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Parliament",
//           'questionId': "13",
//           'statements': [
//             {
//               'text': "The Attorney General of India has the right to speak in, and otherwise take part in the proceedings of, either House of Parliament, without being a member of either House.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Attorney General of India has the right to vote in either House of Parliament, even though he or she is not a member of either House.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Parliament",
//           'questionId': "14",
//           'statements': [
//             {
//               'text': "A 'Vote on Account' is a grant made in advance to meet government expenditure for a part of a financial year, pending the passage of the full budget.",
//               'isCorrect': true,
//             },
//             {
//               'text': "A 'Vote on Account' is a special grant made only for meeting an unforeseen and indefinite wartime expenditure, unrelated to the ordinary annual budget.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Parliament",
//           'questionId': "15",
//           'statements': [
//             {
//               'text': "A 'Vote of Credit' is a grant made to meet an unexpected demand upon India's resources, the magnitude or indefinite character of which cannot be stated with the usual budgetary details.",
//               'isCorrect': true,
//             },
//             {
//               'text': "A 'Vote of Credit' is simply an advance instalment of the regular annual budget granted to cover a part of a financial year.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Parliament",
//           'questionId': "16",
//           'statements': [
//             {
//               'text': "An 'Exceptional Grant' forms no part of the current service of any financial year and is made for a new item of expenditure not contemplated in the annual budget.",
//               'isCorrect': true,
//             },
//             {
//               'text': "An 'Exceptional Grant' is identical to a 'Vote on Account' and is always used to cover ordinary, recurring expenditure of the current financial year.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Parliament",
//           'questionId': "17",
//           'statements': [
//             {
//               'text': "The Contingency Fund of India provides a safety valve enabling the executive to meet unforeseen expenditure pending its subsequent authorisation by Parliament.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Contingency Fund of India completely eliminates the need for any subsequent parliamentary authorisation of expenditure met from it.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Parliament",
//           'questionId': "18",
//           'statements': [
//             {
//               'text': "The salary, allowances, and pension of the Comptroller and Auditor General of India are charged on the Consolidated Fund of India and are not subject to the annual vote of Parliament.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The salary, allowances, and pension of the Comptroller and Auditor General of India are voted upon afresh by Parliament every single year.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Parliament",
//           'questionId': "19",
//           'statements': [
//             {
//               'text': "An Appropriation Act is required to give legal authority for the withdrawal of money from the Consolidated Fund of India to meet grants voted by Parliament.",
//               'isCorrect': true,
//             },
//             {
//               'text': "No Appropriation Act is ever required for the withdrawal of money from the Consolidated Fund of India, regardless of the grants voted by Parliament.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Parliament",
//           'questionId': "20",
//           'statements': [
//             {
//               'text': "A cut motion, moved during discussion on demands for grants, may take the form of a policy cut, an economy cut, or a token cut.",
//               'isCorrect': true,
//             },
//             {
//               'text': "A cut motion, moved during discussion on demands for grants, may only take the form of a no-confidence motion against the government.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Supreme Court",
//           'questionId': "1",
//           'statements': [
//             {
//               'text': "The Supreme Court of India has original jurisdiction in disputes between the Government of India and one or more States, and in disputes between two or more States.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Supreme Court of India has no original jurisdiction at all; it can only hear matters on appeal from the High Courts.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Supreme Court",
//           'questionId': "2",
//           'statements': [
//             {
//               'text': "A retired judge of the Supreme Court is prohibited from appearing or pleading before any court or authority within the territory of India.",
//               'isCorrect': true,
//             },
//             {
//               'text': "A retired judge of the Supreme Court is fully permitted to appear and plead before any court or authority within the territory of India.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Supreme Court",
//           'questionId': "3",
//           'statements': [
//             {
//               'text': "A High Court judge may be appointed as an ad hoc judge of the Supreme Court for a temporary period.",
//               'isCorrect': true,
//             },
//             {
//               'text': "A High Court judge can never be appointed, even temporarily, to sit as an ad hoc judge of the Supreme Court.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Supreme Court",
//           'questionId': "4",
//           'statements': [
//             {
//               'text': "To be appointed a judge of the Supreme Court, a person must be a citizen of India, and either have at least five years' experience as a High Court judge or ten years' experience as a High Court advocate, or be a distinguished jurist.",
//               'isCorrect': true,
//             },
//             {
//               'text': "To be appointed a judge of the Supreme Court, a person must be a citizen of India and must have at least twenty years' experience as a Member of Parliament.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Supreme Court",
//           'questionId': "5",
//           'statements': [
//             {
//               'text': "No minimum age is prescribed by the Constitution for appointment as a judge of the Supreme Court.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Constitution prescribes a minimum age of 45 years for appointment as a judge of the Supreme Court.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Supreme Court",
//           'questionId': "6",
//           'statements': [
//             {
//               'text': "The salaries and allowances of Supreme Court judges are charged on the Consolidated Fund of India and are not subject to the annual vote of Parliament.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The salaries and allowances of Supreme Court judges are voted upon afresh by Parliament every single year.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Supreme Court",
//           'questionId': "7",
//           'statements': [
//             {
//               'text': "Under Article 143, the President may refer a question of law or fact to the Supreme Court for its advisory opinion, but such an opinion is not binding on the Government.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Under Article 143, the President may refer a question of law or fact to the Supreme Court, and the Court's advisory opinion is absolutely binding on the Government.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Supreme Court",
//           'questionId': "8",
//           'statements': [
//             {
//               'text': "Article 141 makes the law declared by the Supreme Court binding on all courts within India, but the Supreme Court itself is not bound by its own earlier decisions and may reverse them.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Article 141 makes the law declared by the Supreme Court binding on all courts within India, and the Supreme Court is itself permanently bound by its own earlier decisions and can never reverse them.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Supreme Court",
//           'questionId': "9",
//           'statements': [
//             {
//               'text': "The jurisdiction of the Supreme Court of India may be enlarged by Parliament through ordinary legislation.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The jurisdiction of the Supreme Court of India can be enlarged only through a formal amendment of the Constitution, never by ordinary legislation.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Supreme Court",
//           'questionId': "10",
//           'statements': [
//             {
//               'text': "To remove a judge of the Supreme Court, an address must be passed by each House of Parliament, supported by a majority of the total membership of that House and by not less than a two-thirds majority of members present and voting.",
//               'isCorrect': true,
//             },
//             {
//               'text': "To remove a judge of the Supreme Court, an address must be passed by each House of Parliament, supported by a simple majority of members present and voting, with no requirement regarding total membership.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Supreme Court",
//           'questionId': "11",
//           'statements': [
//             {
//               'text': "No discussion can take place in Parliament with respect to the conduct of any Supreme Court judge in the discharge of his or her official duties.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Parliament is free to hold open discussions criticising the conduct of any Supreme Court judge in the discharge of his or her official duties.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Supreme Court",
//           'questionId': "12",
//           'statements': [
//             {
//               'text': "The Supreme Court of India ordinarily sits in Delhi but may sit at other places if the Chief Justice of India so appoints with the approval of the President.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Supreme Court of India is constitutionally required to sit only in Delhi and can never sit anywhere else under any circumstances.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Supreme Court",
//           'questionId': "13",
//           'statements': [
//             {
//               'text': "The power of judicial review empowers the Supreme Court to examine the constitutional validity of legislative and executive actions and to strike them down if found inconsistent with the Constitution.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The power of judicial review empowers the Supreme Court only to review the decisions of foreign courts, not the actions of India's own legislature or executive.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Supreme Court",
//           'questionId': "14",
//           'statements': [
//             {
//               'text': "Judicial review under the Indian Constitution is grounded in the concept of 'procedure established by law' rather than the American doctrine of 'due process of law'.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Judicial review under the Indian Constitution is grounded in the American doctrine of 'due process of law' rather than in 'procedure established by law'.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Chief Minister",
//           'questionId': "1",
//           'statements': [
//             {
//               'text': "The Chief Minister of a State is appointed by the Governor.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Chief Minister of a State is directly elected by the people through a separate state-wide election for that post.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Chief Minister",
//           'questionId': "2",
//           'statements': [
//             {
//               'text': "Under Article 167, the Chief Minister must communicate to the Governor all decisions of the Council of Ministers relating to the administration of state affairs and proposals for legislation.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Under Article 167, the Chief Minister is required to communicate such decisions only to the Speaker of the Legislative Assembly, and never to the Governor.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Chief Minister",
//           'questionId': "3",
//           'statements': [
//             {
//               'text': "If the Governor so requires, the Chief Minister must place before the Council of Ministers any matter on which an individual minister has taken a decision without the Council's prior consideration.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Even if the Governor so requires, a decision taken by an individual minister can never be placed before the Council of Ministers for its consideration.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Chief Minister",
//           'questionId': "4",
//           'statements': [
//             {
//               'text': "The Chief Minister generally decides the allocation of portfolios among the ministers of the state.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The allocation of portfolios among the ministers of a state is decided solely and directly by the Governor, without any role for the Chief Minister.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Chief Minister",
//           'questionId': "5",
//           'statements': [
//             {
//               'text': "Proposals for legislation are to be communicated to the Governor by the Chief Minister, and not by the Speaker of the Legislative Assembly.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Proposals for legislation are to be communicated to the Governor by the Speaker of the Legislative Assembly, and not by the Chief Minister.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Chief Minister",
//           'questionId': "6",
//           'statements': [
//             {
//               'text': "When the Chief Minister resigns, the entire Council of Ministers is deemed to have resigned along with him or her.",
//               'isCorrect': true,
//             },
//             {
//               'text': "When the Chief Minister resigns, the rest of the Council of Ministers automatically continues in office unaffected, without any change.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Chief Minister",
//           'questionId': "7",
//           'statements': [
//             {
//               'text': "The Council of Ministers, headed by the Chief Minister, is collectively responsible to the State Legislative Assembly.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Council of Ministers, headed by the Chief Minister, is collectively responsible only to the Governor, and not to the State Legislative Assembly.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Chief Minister",
//           'questionId': "8",
//           'statements': [
//             {
//               'text': "When no single party enjoys a majority in the state legislative assembly, the Governor's principal consideration in choosing a Chief Minister is the ability of the person most likely to command a stable majority in the House.",
//               'isCorrect': true,
//             },
//             {
//               'text': "When no single party enjoys a majority in the state legislative assembly, the Governor is constitutionally bound to always appoint the leader of the single largest party, regardless of its ability to command a majority.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Chief Minister",
//           'questionId': "9",
//           'statements': [
//             {
//               'text': "The Chief Minister of a state holds membership of bodies such as the National Development Council and the Inter-State Council.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Chief Minister of a state is constitutionally barred from holding membership of any central advisory body such as the National Development Council or the Inter-State Council.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Chief Minister",
//           'questionId': "10",
//           'statements': [
//             {
//               'text': "The Chief Minister is not required to obtain the Governor's prior sanction before presenting the state budget in the Legislative Assembly.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Chief Minister is constitutionally required to obtain the Governor's prior sanction before presenting the state budget in the Legislative Assembly.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Political Parties",
//           'questionId': "1",
//           'statements': [
//             {
//               'text': "Rajni Kothari described the party system prevailing in India in the early years of independence as a 'one-party-dominant system.'",
//               'isCorrect': true,
//             },
//             {
//               'text': "Granville Austin described the party system prevailing in India in the early years of independence as a 'one-party-dominant system.'",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Political Parties",
//           'questionId': "2",
//           'statements': [
//             {
//               'text': "Regional political parties in India typically identify with the region's culture, use the regional language for electoral gains, and often enter into electoral alliances with national parties.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Regional political parties are purely a post-independence political phenomenon in India, with none having existed before independence.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Political Parties",
//           'questionId': "3",
//           'statements': [
//             {
//               'text': "As per the Election Commission's criteria, a political party must be recognized as a state party in at least four states to be termed a 'national party.'",
//               'isCorrect': true,
//             },
//             {
//               'text': "As per the Election Commission's criteria, a political party must be recognized as a state party in at least six states to be termed a 'national party.'",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Political Parties",
//           'questionId': "4",
//           'statements': [
//             {
//               'text': "Contesting political elections under its own symbol is a function that pertains only to a political party and not to a pressure group.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Collecting money for the organisation is a function that pertains only to a political party and not to a pressure group.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Political Parties",
//           'questionId': "5",
//           'statements': [
//             {
//               'text': "In chronological order of formation, the DMK was formed first, followed by the CPI(M), then the TDP, and finally the AGP.",
//               'isCorrect': true,
//             },
//             {
//               'text': "In chronological order of formation, the AGP was formed first, followed by the TDP, then the CPI(M), and finally the DMK.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Political Parties",
//           'questionId': "6",
//           'statements': [
//             {
//               'text': "Jayaprakash Narayan is known for advocating the concept of party-less democracy in India.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Mahatma Gandhi, in his writings, formally advocated the specific concept of 'party-less democracy' as later developed by Jayaprakash Narayan.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Political Parties",
//           'questionId': "7",
//           'statements': [
//             {
//               'text': "One basic problem often cited in the working of the parliamentary system in India is the lack of a cohesive and viable party system.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The basic problem in the working of the parliamentary system in India is attributed mainly to the absence of clear constitutional provisions governing the executive.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Political Parties",
//           'questionId': "8",
//           'statements': [
//             {
//               'text': "The Communist Party of India was formed in 1925, the Shiromani Akali Dal in 1920, and the AIADMK in 1972.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Bharatiya Janata Party (BJP) was formed in 1978.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Political Parties",
//           'questionId': "9",
//           'statements': [
//             {
//               'text': "The growth of regional political parties in India is attributed to the diversified nature of Indian society, the inability of larger parties to accommodate the demands of various sections, regional imbalances in development, and factional fights within larger parties.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The growth of regional political parties in India has been attributed exclusively to factional fights within larger parties, with no role played by regional or developmental imbalances.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Pressure Groups",
//           'questionId': "1",
//           'statements': [
//             {
//               'text': "A pressure group aims at projecting and fulfilling specific interests and seeks to influence decision-makers, but unlike a political party, it does not aim to acquire, consolidate, and extend political power directly.",
//               'isCorrect': true,
//             },
//             {
//               'text': "A major objective of a pressure group, like that of a political party, is to acquire, consolidate, and extend political power directly.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Pressure Groups",
//           'questionId': "2",
//           'statements': [
//             {
//               'text': "The Centre of Indian Trade Unions (CITU) is attached to the Communist Party of India (Marxist).",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Centre of Indian Trade Unions (CITU) is attached to the Bharatiya Janata Party.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Pressure Groups",
//           'questionId': "3",
//           'statements': [
//             {
//               'text': "The primary purpose of a pressure group is to bring pressure on the government to influence policy decisions.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The primary purpose of a pressure group is to contest elections and directly formulate government policy.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Pressure Groups",
//           'questionId': "4",
//           'statements': [
//             {
//               'text': "The All India Trade Union Congress (AITUC) was the first country-wide pressure group of the organised Indian working class.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Indian National Trade Union Congress (INTUC) was the first country-wide pressure group of the organised Indian working class.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Pressure Groups",
//           'questionId': "5",
//           'statements': [
//             {
//               'text': "A pressure group is distinct from a political party in that it does not directly contest elections.",
//               'isCorrect': true,
//             },
//             {
//               'text': "A pressure group is distinct from a political party in that it does not engage in the mobilization of public opinion.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "National Integration",
//           'questionId': "1",
//           'statements': [
//             {
//               'text': "The National Integration Council is a recommendatory (advisory) body.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The National Integration Council is a constitutional body established under a specific provision of the Constitution.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "National Integration",
//           'questionId': "2",
//           'statements': [
//             {
//               'text': "In the Indian context, communalism generally refers to the use of communal (religious or ethnic) identity for political purposes.",
//               'isCorrect': true,
//             },
//             {
//               'text': "In the Indian context, communalism generally refers to serving one's community in a benevolent and befitting manner.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "National Integration",
//           'questionId': "3",
//           'statements': [
//             {
//               'text': "The National Integration Council was first constituted in the year 1961.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The National Integration Council was first constituted in the year 1950, immediately after the Constitution came into force.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "National Integration",
//           'questionId': "4",
//           'statements': [
//             {
//               'text': "The Prime Minister of India is the Chairman of the National Integration Council.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The President of India is the Chairman of the National Integration Council.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Foreign Policy",
//           'questionId': "1",
//           'statements': [
//             {
//               'text': "Peaceful co-existence and mutual non-aggression are among the five principles of Panchsheel.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Mutual protection of the environment and mutual protection of indigenous populations are among the five principles of Panchsheel.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Foreign Policy",
//           'questionId': "2",
//           'statements': [
//             {
//               'text': "Non-involvement in Cold War-era military alliances and accepting foreign aid from diverse sources are consistent with the concept of Non-alignment, whereas faith in isolationism is not.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Faith in isolationism, that is, withdrawal from active engagement in world affairs, is a core part of India's concept of Non-alignment.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Foreign Policy",
//           'questionId': "3",
//           'statements': [
//             {
//               'text': "India remains a member of the Commonwealth of Nations despite being a Republic because such membership does not affect the sovereign nature of the Indian Republic.",
//               'isCorrect': true,
//             },
//             {
//               'text': "India remains a member of the Commonwealth of Nations because it continues to formally acknowledge British rule over India.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Foreign Policy",
//           'questionId': "4",
//           'statements': [
//             {
//               'text': "The First Asian Relations Conference was held in New Delhi.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The First Asian Relations Conference was held in Colombo.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Foreign Policy",
//           'questionId': "5",
//           'statements': [
//             {
//               'text': "The Indo-China Treaty on Tibet, which enshrined the Panchsheel principles, was signed in 1954.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Indo-China Treaty on Tibet, which enshrined the Panchsheel principles, was signed in 1962.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Foreign Policy",
//           'questionId': "6",
//           'statements': [
//             {
//               'text': "India has hosted a Commonwealth Heads of Government Meeting (CHOGM), notably in New Delhi in 1983.",
//               'isCorrect': true,
//             },
//             {
//               'text': "India has never hosted a Commonwealth Heads of Government Meeting (CHOGM).",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "National Commission to Review the Working of the Constitution",
//           'questionId': "1",
//           'statements': [
//             {
//               'text': "The National Commission to Review the Working of the Constitution (NCRWC), constituted in 2000, recommended the enlargement of the list of Fundamental Rights to include additional rights drawn from international human rights instruments, though these recommendations have not been formally incorporated into the Constitution.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The National Commission to Review the Working of the Constitution (NCRWC) recommended the complete abolition of the existing Fundamental Rights chapter in favour of a wholly new set of rights.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "National Commission to Review the Working of the Constitution",
//           'questionId': "2",
//           'statements': [
//             {
//               'text': "The main areas of concern for the National Commission to Review the Working of the Constitution included electoral reforms, Union-State relations, enlargement of Fundamental Rights, and the administrative system and standards in public life.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The National Commission to Review the Working of the Constitution confined its concerns solely to Union-State relations, without examining electoral reforms or administrative standards.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "National Commission to Review the Working of the Constitution",
//           'questionId': "3",
//           'statements': [
//             {
//               'text': "Soli J. Sorabjee, C.R. Irani, and P.A. Sangma were members of the National Commission to Review the Working of the Constitution, constituted by the Government of India in 2000.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Somnath Chatterjee was a member of the National Commission to Review the Working of the Constitution, constituted by the Government of India in 2000.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "National Commission to Review the Working of the Constitution",
//           'questionId': "4",
//           'statements': [
//             {
//               'text': "The National Commission to Review the Working of the Constitution suggested that the Governor should be appointed only after consultation with the Chief Minister of the concerned state, that a person with fair knowledge of the Constitution should be preferred, and that the Governor should not dismiss a ministry so long as it enjoys the confidence of the Assembly.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The National Commission to Review the Working of the Constitution suggested that the Governor should have unrestricted discretion to dismiss a ministry at any time, irrespective of its support in the Assembly.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "National Commission to Review the Working of the Constitution",
//           'questionId': "5",
//           'statements': [
//             {
//               'text': "Justice M.N. Venkatachaliah, a former Chief Justice of India, was the Chairman of the National Commission to Review the Working of the Constitution.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Justice J.S. Verma was the Chairman of the National Commission to Review the Working of the Constitution.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Articles of the Constitution (1-395)",
//           'questionId': "1",
//           'statements': [
//             {
//               'text': "Article 249 of the Constitution empowers Parliament to legislate with respect to a matter in the State List in the national interest, if the Rajya Sabha passes a resolution to that effect; it does not itself confer residuary powers or the power to implement international agreements.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Article 249 of the Constitution provides for the residuary powers of legislation and for legislation giving effect to international agreements.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Articles of the Constitution (1-395)",
//           'questionId': "2",
//           'statements': [
//             {
//               'text': "Article 330 of the Constitution provides for the reservation of seats for Scheduled Castes and Scheduled Tribes in the Lok Sabha.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Article 268 of the Constitution lays down the procedure for amendment of the Constitution.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Articles of the Constitution (1-395)",
//           'questionId': "3",
//           'statements': [
//             {
//               'text': "Article 51 of the Constitution of India deals with the promotion of international peace and security.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Article 44 of the Constitution of India deals with the promotion of international peace and security.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Articles of the Constitution (1-395)",
//           'questionId': "4",
//           'statements': [
//             {
//               'text': "Article 85 of the Constitution deals with the President's power to summon and prorogue Parliament, and to dissolve the House of the People (Lok Sabha).",
//               'isCorrect': true,
//             },
//             {
//               'text': "Article 85 of the Constitution deals with the promotion of international peace and security.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Articles of the Constitution (1-395)",
//           'questionId': "5",
//           'statements': [
//             {
//               'text': "Article 48-A of the Constitution directs the State to endeavour to protect and improve the environment and to safeguard forests and wildlife.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Article 43-A of the Constitution directs the State to endeavour to protect and improve the environment and to safeguard forests and wildlife.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Articles of the Constitution (1-395)",
//           'questionId': "6",
//           'statements': [
//             {
//               'text': "Article 136 of the Constitution empowers the Supreme Court to grant special leave to appeal from any judgment, decree, determination, or order of any court or tribunal in India.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Article 141 of the Constitution deals with the advisory jurisdiction of the Supreme Court.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Articles of the Constitution (1-395)",
//           'questionId': "7",
//           'statements': [
//             {
//               'text': "Article 359 of the Constitution deals with the suspension of the enforcement of Fundamental Rights, except a few, during a national emergency.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Article 359 of the Constitution deals with the declaration of a Financial Emergency.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Articles of the Constitution (1-395)",
//           'questionId': "8",
//           'statements': [
//             {
//               'text': "Article 41 of the Constitution directs the State to make effective provision for securing the right to work, within the limits of its economic capacity and development.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Article 38 of the Constitution directs the State to make effective provision for securing the right to work.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Articles of the Constitution (1-395)",
//           'questionId': "9",
//           'statements': [
//             {
//               'text': "Article 31-C of the Constitution deals with the saving of laws giving effect to certain Directive Principles of State Policy.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Article 31-A of the Constitution deals with the saving of laws giving effect to certain Directive Principles of State Policy.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Articles of the Constitution (1-395)",
//           'questionId': "10",
//           'statements': [
//             {
//               'text': "Article 49 of the Constitution, not Article 48-A, deals with the protection of monuments, places, and objects of national importance.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Article 48-A of the Constitution deals with the protection of monuments, places, and objects of national importance.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Articles of the Constitution (1-395)",
//           'questionId': "11",
//           'statements': [
//             {
//               'text': "Article 368 of the Constitution contains the provisions relating to the power of Parliament to amend the Constitution and the procedure for such amendment.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Article 366 of the Constitution contains the provisions relating to the power of Parliament to amend the Constitution and the procedure for such amendment.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Subjects of Union, State and Concurrent Lists",
//           'questionId': "1",
//           'statements': [
//             {
//               'text': "Foreign loans, atomic energy, and insurance are subjects covered under the Union List (List I) of the Seventh Schedule, whereas public health is a State List subject.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Public health is a subject covered under the Union List (List I) of the Seventh Schedule of the Constitution.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Subjects of Union, State and Concurrent Lists",
//           'questionId': "2",
//           'statements': [
//             {
//               'text': "Relief of the disabled and unemployable, taxes on lands and buildings, and prisons are subjects in the State List of the Seventh Schedule, whereas stock exchanges are a Union List subject.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Stock exchanges are included in the State List of the Seventh Schedule of the Constitution.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Subjects of Union, State and Concurrent Lists",
//           'questionId': "3",
//           'statements': [
//             {
//               'text': "Trade unions and industrial and labour disputes are subjects included in the Concurrent List of the Seventh Schedule of the Constitution.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Citizenship is a subject included in the Concurrent List of the Seventh Schedule of the Constitution.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Subjects of Union, State and Concurrent Lists",
//           'questionId': "4",
//           'statements': [
//             {
//               'text': "Preventive Detention is enumerated as a subject in both the Union List and the State List of the Seventh Schedule, depending on the grounds for detention.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Preventive Detention is enumerated exclusively as a subject in the Union List of the Seventh Schedule.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Subjects of Union, State and Concurrent Lists",
//           'questionId': "5",
//           'statements': [
//             {
//               'text': "Public order is included in the Constitution as an item in the State List of the Seventh Schedule.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Public order is included in the Constitution as an item in the Union List of the Seventh Schedule.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Subjects of Union, State and Concurrent Lists",
//           'questionId': "6",
//           'statements': [
//             {
//               'text': "Education is a subject placed in the Concurrent List of the Seventh Schedule (moved there by the 42nd Amendment), not covered under any separate 'Residuary List.'",
//               'isCorrect': true,
//             },
//             {
//               'text': "Education is classified under a separate 'Residuary List' of the Seventh Schedule, distinct from the Concurrent List.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Subjects of Union, State and Concurrent Lists",
//           'questionId': "7",
//           'statements': [
//             {
//               'text': "Corporation tax is a subject mentioned in the Union List of the Seventh Schedule of the Constitution.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Excise duties on alcoholic liquors, opium, Indian hemp and other narcotic drugs are subjects mentioned in the Union List of the Seventh Schedule of the Constitution.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Subjects of Union, State and Concurrent Lists",
//           'questionId': "8",
//           'statements': [
//             {
//               'text': "Police, public order, and prisons are subjects in the State List of the Seventh Schedule, whereas the Criminal Procedure Code is a Concurrent List subject.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Criminal Procedure Code is a subject included in the State List of the Seventh Schedule of the Constitution.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Subjects of Union, State and Concurrent Lists",
//           'questionId': "9",
//           'statements': [
//             {
//               'text': "The entry 'Public Health and Sanitation' is included in the Constitution in the State List of the Seventh Schedule.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The entry 'Public Health and Sanitation' is included in the Constitution in the Union List of the Seventh Schedule.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Subjects of Union, State and Concurrent Lists",
//           'questionId': "10",
//           'statements': [
//             {
//               'text': "Trade Unions is an item that comes under the Concurrent List of the Indian Constitution, whereas Inter-State rivers, Citizenship, and Local Government are Union or State List subjects respectively.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Local Government is an item that comes under the Concurrent List of the Indian Constitution.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Subjects of Union, State and Concurrent Lists",
//           'questionId': "11",
//           'statements': [
//             {
//               'text': "Taxation on imports and exports, and taxation on sales in the course of inter-state trade and commerce, are exclusive Union subjects under the Constitution.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Taxation on imports and exports, and taxation on sales in the course of inter-state trade and commerce, are exclusive State subjects under the Constitution.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Subjects of Union, State and Concurrent Lists",
//           'questionId': "12",
//           'statements': [
//             {
//               'text': "Adulteration of foodstuffs and other goods is a subject that comes under the Concurrent List of the Constitution.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Capitation Taxes and Corporation Tax are subjects that come under the Concurrent List of the Constitution.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Table of Precedence",
//           'questionId': "1",
//           'statements': [
//             {
//               'text': "The Table of Precedence relates to the rank and order of officials of the Union and State Governments, and it is meant for state and ceremonial occasions, having no application in the day-to-day business of Government.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Table of Precedence governs the day-to-day administrative hierarchy of Government business and is not confined to state and ceremonial occasions.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Table of Precedence",
//           'questionId': "2",
//           'statements': [
//             {
//               'text': "The Warrant of Precedence in India ranks certain constitutional functionaries, including the President, Vice-President, Prime Minister, Governors within their respective states, and Judges of the Supreme Court, in a specific ceremonial order.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Warrant of Precedence assigns former Prime Ministers a rank identical to that of sitting Cabinet Ministers of the Union.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Table of Precedence",
//           'questionId': "3",
//           'statements': [
//             {
//               'text': "The Warrant of Precedence lists the Attorney-General of India, the Chairperson of the UPSC, and the Leader of the Opposition in the Lok Sabha among the many constitutional and statutory functionaries it ranks.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Warrant of Precedence does not rank statutory functionaries such as the Chairperson of the UPSC or the Attorney-General of India at all.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Table of Precedence",
//           'questionId': "4",
//           'statements': [
//             {
//               'text': "The current notification on the Warrant of Precedence (Order of Precedence) in India was issued by the Government in 1979.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The current notification on the Warrant of Precedence (Order of Precedence) in India was issued by the Government in 1963.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Table of Precedence",
//           'questionId': "5",
//           'statements': [
//             {
//               'text': "The Chief Justice of India holds a position within the top five ranks of the Table of Precedence, along with the Speaker of the Lok Sabha.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Deputy Prime Minister holds a fixed position within the top five ranks of the Table of Precedence, since the office is a permanent constitutional post.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Oath by Constitutional and Other Authorities",
//           'questionId': "1",
//           'statements': [
//             {
//               'text': "Every member of either House of Parliament makes and subscribes an oath or affirmation before the Speaker (or an authorised person) before taking his seat, and the Comptroller and Auditor-General of India makes and subscribes an oath or affirmation before the President before entering upon office.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Neither a member of Parliament nor the Comptroller and Auditor-General of India is required to make and subscribe an oath or affirmation before assuming office.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Oath by Constitutional and Other Authorities",
//           'questionId': "2",
//           'statements': [
//             {
//               'text': "The oath of office of the President of India includes pledges to faithfully execute the office, to preserve, protect and defend the Constitution and the law, and to devote himself to the service and well-being of the people of India.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The oath of office of the President of India explicitly includes a separate pledge 'to uphold the sovereignty and integrity of India' as one of its clauses.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Oath by Constitutional and Other Authorities",
//           'questionId': "3",
//           'statements': [
//             {
//               'text': "In the absence of the Chief Justice of the State High Court, the oath of office to the Governor of a State is administered by the senior-most judge of the State High Court available.",
//               'isCorrect': true,
//             },
//             {
//               'text': "In the absence of the Chief Justice of the State High Court, the oath of office to the Governor of a State is administered by the Chief Justice of India.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Oath by Constitutional and Other Authorities",
//           'questionId': "4",
//           'statements': [
//             {
//               'text': "The oath of office to the State Chief Information Commissioner is administered by the Governor of the State.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The oath of office to the State Chief Information Commissioner is administered by the Chief Justice of India.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Oath by Constitutional and Other Authorities",
//           'questionId': "5",
//           'statements': [
//             {
//               'text': "The oath of office for judges of the High Courts includes pledges to bear true faith and allegiance to the Constitution of India, to uphold its sovereignty and integrity, and to uphold the Constitution and the laws.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The oath of office for judges of the High Courts includes a pledge 'to devote himself to the service and well-being of the people of the state,' similar to the Governor's oath.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Definitions Under the Constitution",
//           'questionId': "1",
//           'statements': [
//             {
//               'text': "As defined in Article 366 of the Constitution, an 'Indian State' means any territory which the Government of the Dominion of India recognised as such a State.",
//               'isCorrect': true,
//             },
//             {
//               'text': "As defined in Article 366 of the Constitution, an 'Indian State' means any territory that was directly administered by the British Crown before independence.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Definitions Under the Constitution",
//           'questionId': "2",
//           'statements': [
//             {
//               'text': "The 26th Amendment Act, 1971, which abolished the privy purses of former rulers, is related to changes in the constitutional definition and treatment of 'Ruler.'",
//               'isCorrect': true,
//             },
//             {
//               'text': "The 24th Amendment Act is related to changes in the constitutional definition and treatment of 'Ruler.'",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Definitions Under the Constitution",
//           'questionId': "3",
//           'statements': [
//             {
//               'text': "Article 366 of the Constitution contains the definitions of various terms used in different provisions of the Constitution.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Article 362 of the Constitution contains the definitions of various terms used in different provisions of the Constitution.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Definitions Under the Constitution",
//           'questionId': "4",
//           'statements': [
//             {
//               'text': "In the context of the definitions under the Constitution, the 'Federal Court' refers to the Federal Court constituted under the Government of India Act, 1935.",
//               'isCorrect': true,
//             },
//             {
//               'text': "In the context of the definitions under the Constitution, the 'Federal Court' refers to a court constituted under the Constitution of India, 1950.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Definitions Under the Constitution",
//           'questionId': "5",
//           'statements': [
//             {
//               'text': "Article 342 of the Constitution deals with the specification of Scheduled Tribes.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Article 342 of the Constitution deals with the specification of Scheduled Castes.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Definitions Under the Constitution",
//           'questionId': "6",
//           'statements': [
//             {
//               'text': "'Railway,' as defined for the purposes of the Constitution, does not include a line of communication wholly situated in one State and declared by the Legislature of that State by law not to be a railway.",
//               'isCorrect': true,
//             },
//             {
//               'text': "'Proclamation of Emergency,' as used in the Constitution, means a proclamation issued under Article 356.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Ministries/Departments of the Central Government",
//           'questionId': "1",
//           'statements': [
//             {
//               'text': "The Department of Economic Affairs, the Department of Expenditure, and the Department of Revenue are departments under the Ministry of Finance, Government of India.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The 'Department of Banking' is a distinctly named department under the Ministry of Finance, Government of India.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Ministries/Departments of the Central Government",
//           'questionId': "2",
//           'statements': [
//             {
//               'text': "The Department of Land Resources is a part of the Ministry of Rural Development.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Department of Land Resources is a part of the Ministry of Housing and Urban Poverty Alleviation.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Ministries/Departments of the Central Government",
//           'questionId': "3",
//           'statements': [
//             {
//               'text': "Among Tourism, Steel, Mines, and Rural Development, the Ministry of Rural Development has traditionally had the maximum number of departments, such as the Department of Rural Development and the Department of Land Resources.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Ministry of Steel has traditionally had more departments than the Ministry of Rural Development.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Ministries/Departments of the Central Government",
//           'questionId': "4",
//           'statements': [
//             {
//               'text': "The Department of Official Language functions under the Ministry of Home Affairs.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Department of Official Language functions under the Ministry of Human Resource Development.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Ministries/Departments of the Central Government",
//           'questionId': "5",
//           'statements': [
//             {
//               'text': "The number of Ministries in the Central Government of India has grown considerably since the country's independence in August 1947.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The number of Ministries in the Central Government of India has remained exactly the same since the country's independence in August 1947, without any change.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Ministries/Departments of the Central Government",
//           'questionId': "6",
//           'statements': [
//             {
//               'text': "The Department of Pharmaceuticals falls under the Ministry of Chemicals and Fertilisers.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Department of Pharmaceuticals falls under the Ministry of Health and Family Welfare.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "President, Vice President and Governor",
//           'questionId': "1",
//           'statements': [
//             {
//               'text': "In chronological order of their tenures as Vice-President of India, V.V. Giri served first, followed by G.S. Pathak, then B.D. Jatti, and finally M. Hidayatullah.",
//               'isCorrect': true,
//             },
//             {
//               'text': "In chronological order of their tenures as Vice-President of India, M. Hidayatullah served first, followed by B.D. Jatti, then G.S. Pathak, and finally V.V. Giri.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "President, Vice President and Governor",
//           'questionId': "2",
//           'statements': [
//             {
//               'text': "Devi Lal, L.K. Advani, and Y.B. Chavan have all served as Deputy Prime Minister of India at different times.",
//               'isCorrect': true,
//             },
//             {
//               'text': "G.L. Nanda served as Deputy Prime Minister of India.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "President, Vice President and Governor",
//           'questionId': "3",
//           'statements': [
//             {
//               'text': "Among Morarji Desai, Charan Singh, V.P. Singh, and Lal Bahadur Shastri, Morarji Desai had the longest tenure as Prime Minister of India.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Among Morarji Desai, Charan Singh, V.P. Singh, and Lal Bahadur Shastri, Charan Singh had the longest tenure as Prime Minister of India.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "President, Vice President and Governor",
//           'questionId': "4",
//           'statements': [
//             {
//               'text': "Neelam Sanjiva Reddy is the only person to have been Speaker of the Lok Sabha before later becoming President of India.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Giani Zail Singh is the only person to have been Speaker of the Lok Sabha before later becoming President of India.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "President, Vice President and Governor",
//           'questionId': "5",
//           'statements': [
//             {
//               'text': "G.V. Mavalankar was the first Speaker of the Lok Sabha.",
//               'isCorrect': true,
//             },
//             {
//               'text': "M.A. Ayyangar was the first Speaker of the Lok Sabha.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "President, Vice President and Governor",
//           'questionId': "6",
//           'statements': [
//             {
//               'text': "V.V. Giri was the fourth President of India.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Zakir Hussain was the fourth President of India.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "President, Vice President and Governor",
//           'questionId': "7",
//           'statements': [
//             {
//               'text': "R.C. Lahoti, G.B. Pattanaik, and V.N. Khare have all served as Chief Justice of India.",
//               'isCorrect': true,
//             },
//             {
//               'text': "M.S. Gill has served as Chief Justice of India.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Official Language",
//           'questionId': "1",
//           'statements': [
//             {
//               'text': "The Official Languages Act lays down that English should be used for purposes of communication between the Union and non-Hindi States.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Parliament of India may make any one or more of the languages in use in a State, or Hindi, as the official language of that State.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Official Language",
//           'questionId': "2",
//           'statements': [
//             {
//               'text': "Articles 343 to 351 of the Constitution of India contain provisions pertaining to the official language.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Articles 347 to 353 of the Constitution of India contain provisions pertaining to the official language.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Official Language",
//           'questionId': "3",
//           'statements': [
//             {
//               'text': "The Parliament enacted the Official Languages Act in the year 1963.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Parliament enacted the Official Languages Act in the year 1965.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Official Language",
//           'questionId': "4",
//           'statements': [
//             {
//               'text': "Sindhi was included in the Eighth Schedule of the Constitution of India by the 21st Amendment Act.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Sindhi was included in the Eighth Schedule of the Constitution of India by the 15th Amendment Act.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Official Language",
//           'questionId': "5",
//           'statements': [
//             {
//               'text': "Part XVII of the Constitution of India deals with the official language.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Part XVI of the Constitution of India deals with the official language.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Official Language",
//           'questionId': "6",
//           'statements': [
//             {
//               'text': "In 1955, the President appointed an Official Language Commission under the chairmanship of B.G. Kher.",
//               'isCorrect': true,
//             },
//             {
//               'text': "In 1955, the President appointed an Official Language Commission under the chairmanship of G.B. Pant.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Public Services",
//           'questionId': "1",
//           'statements': [
//             {
//               'text': "A new All-India Service can be created only if the Rajya Sabha (Council of States) alone declares by a resolution supported by not less than two-thirds of the members present and voting that it is necessary or expedient in the national interest to do so.",
//               'isCorrect': true,
//             },
//             {
//               'text': "A new all-India service can be created if both the Lok Sabha and Rajya Sabha declare by a resolution supported by not less than two-thirds of the members present and voting that it is necessary or expedient in the national interest to do so.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Public Services",
//           'questionId': "2",
//           'statements': [
//             {
//               'text': "The personnel of the All-India Services serve in the Central Government, Union Territories and States, and they bring a national perspective to their jobs.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The personnel of the All-India Services serve exclusively in the Central Government and do not serve in the States or Union Territories.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Public Services",
//           'questionId': "3",
//           'statements': [
//             {
//               'text': "In the context of All-India Services, the All-India Judicial Service finds mention in Article 312 of the Constitution of India.",
//               'isCorrect': true,
//             },
//             {
//               'text': "In the context of All-India Services, the All-India Service of Engineers finds mention in Article 312 of the Constitution of India.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Public Services",
//           'questionId': "4",
//           'statements': [
//             {
//               'text': "A new All-India Service can be created by a statute.",
//               'isCorrect': true,
//             },
//             {
//               'text': "A new All-India Service can be created only by an amendment of the Constitution.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Public Services",
//           'questionId': "5",
//           'statements': [
//             {
//               'text': "According to the Constitution of India, a new All-India Service can be instituted with the initiative taken by the Rajya Sabha.",
//               'isCorrect': true,
//             },
//             {
//               'text': "According to the Constitution of India, a new All-India Service can be instituted with the initiative taken by the Lok Sabha.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Public Services",
//           'questionId': "6",
//           'statements': [
//             {
//               'text': "IAS, IPS and the Indian Forest Service are termed as the All-India Services under the Government of India.",
//               'isCorrect': true,
//             },
//             {
//               'text': "IAS, IPS and the Indian Foreign Service are termed as the All-India Services under the Government of India.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Public Services",
//           'questionId': "7",
//           'statements': [
//             {
//               'text': "Article 312 of the Constitution of India states that the Parliament may, by law, provide for the creation of an All-India Service.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Article 300 of the Constitution of India states that the Parliament may, by law, provide for the creation of an All-India Service.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Public Services",
//           'questionId': "8",
//           'statements': [
//             {
//               'text': "The 42nd Amendment made a provision for the creation of an All-India Judicial Service.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The 44th Amendment made a provision for the creation of an All-India Judicial Service.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Public Services",
//           'questionId': "9",
//           'statements': [
//             {
//               'text': "The Overseas Communication Service is a central service.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Educational Service is a central service.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Public Services",
//           'questionId': "10",
//           'statements': [
//             {
//               'text': "The 'doctrine of pleasure', under which the Government of India can dismiss a government servant, is subject to constitutional safeguards and is not simply a matter that can never be fettered.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The right of the Government of India to dismiss a government servant at its pleasure cannot be fettered by any contract.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Tribunals",
//           'questionId': "1",
//           'statements': [
//             {
//               'text': "Part XIV-A of the Constitution of India deals with administrative tribunals and the adjudication or trial by tribunals in respect of the enforcement of any tax, ceiling on urban property, and industrial and labour disputes.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Part XIV-A of the Constitution of India deals only with administrative tribunals, and not with the adjudication or trial by tribunals in respect of any tax, ceiling on urban property, or industrial and labour disputes.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Tribunals",
//           'questionId': "2",
//           'statements': [
//             {
//               'text': "The Central Administrative Tribunal adjudicates disputes and complaints with respect to the service of persons appointed to public services and posts in connection with the affairs of the Union, except members of the Defence Services.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Central Administrative Tribunal adjudicates disputes and complaints with respect to the service of members of the Defence Services.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Tribunals",
//           'questionId': "3",
//           'statements': [
//             {
//               'text': "The Administrative Tribunal is a Quasi-judicial authority.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Central Vigilance Commission is a Quasi-judicial authority.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Tribunals",
//           'questionId': "4",
//           'statements': [
//             {
//               'text': "The Central Administrative Tribunal was set up on the recommendation of the Administrative Reforms Commission.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Central Administrative Tribunal was set up on the recommendation of the Ministry of Law and Justice.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Tribunals",
//           'questionId': "5",
//           'statements': [
//             {
//               'text': "In the case of Chandra Kumar v. Union of India, the Supreme Court ruled that the power of judicial review vested in the High Courts in respect of the decisions given by the Service Tribunals cannot be ousted or excluded even by a Constitutional Amendment.",
//               'isCorrect': true,
//             },
//             {
//               'text': "In the case of Sampath Kumar v. Union of India, the Supreme Court ruled that the power of judicial review vested in the High Courts in respect of the decisions given by the Service Tribunals cannot be ousted or excluded even by a Constitutional Amendment.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Tribunals",
//           'questionId': "6",
//           'statements': [
//             {
//               'text': "The Parliament passed the Administrative Tribunals Act in 1985.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Parliament passed the Administrative Tribunals Act in 1975.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Tribunals",
//           'questionId': "7",
//           'statements': [
//             {
//               'text': "The chairman of a State Administrative Tribunal is appointed by the President of India.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The chairman of a State Administrative Tribunal is appointed by the Governor of the State.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Tribunals",
//           'questionId': "8",
//           'statements': [
//             {
//               'text': "Article 323-A of the Constitution of India deals with administrative tribunals.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Article 322 of the Constitution of India deals with administrative tribunals.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Tribunals",
//           'questionId': "9",
//           'statements': [
//             {
//               'text': "The 42nd Amendment Act included Part XIV-A (entitled 'Tribunals') in the Constitution of India.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The 44th Amendment Act included Part XIV-A (entitled 'Tribunals') in the Constitution of India.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Special Provisions for SCs, STs, BCs, Minorities and Anglo-Indians",
//           'questionId': "1",
//           'statements': [
//             {
//               'text': "There was a special provision for the Anglo-Indian community in certain services, and the Untouchability (Offences) Act was renamed as the Protection of Civil Rights Act.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Scheduled Castes and Scheduled Tribes (Prevention of Atrocities) Act was passed in 1955.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Special Provisions for SCs, STs, BCs, Minorities and Anglo-Indians",
//           'questionId': "2",
//           'statements': [
//             {
//               'text': "The correct chronological order of setting up of the given commissions concerning weaker sections of Indian society is: the Kaka Saheb Kalelkar Commission, followed by the Mandal Commission, followed by the National Commission for Scheduled Castes and Scheduled Tribes, followed by the National Commission for Minorities.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The correct chronological order of setting up of the given commissions concerning weaker sections of Indian society is: the National Commission for Scheduled Castes and Scheduled Tribes, followed by the National Commission for Minorities, followed by the Kaka Saheb Kalelkar Commission.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Special Provisions for SCs, STs, BCs, Minorities and Anglo-Indians",
//           'questionId': "3",
//           'statements': [
//             {
//               'text': "The President of India is the constitutional authority vested with the power of declaring castes or tribes as the Scheduled Castes or Scheduled Tribes.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Parliament is the constitutional authority vested with the power of declaring castes or tribes as the Scheduled Castes or Scheduled Tribes.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Special Provisions for SCs, STs, BCs, Minorities and Anglo-Indians",
//           'questionId': "4",
//           'statements': [
//             {
//               'text': "Examining requests for inclusion of a class of citizens as a backward class, hearing complaints of under-inclusion, and hearing complaints of over-inclusion of any backward class are functions of the National Commission for Backward Classes.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Identifying the creamy layer among the backward classes is a function of the National Commission for Backward Classes.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Special Provisions for SCs, STs, BCs, Minorities and Anglo-Indians",
//           'questionId': "5",
//           'statements': [
//             {
//               'text': "Under the provisions of the Indian Constitution, a community can be declared a minority community on the basis of either religion or language.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Under the provisions of the Indian Constitution, a community can be declared a minority community only on the basis of religion.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Special Provisions for SCs, STs, BCs, Minorities and Anglo-Indians",
//           'questionId': "6",
//           'statements': [
//             {
//               'text': "The main object of protective discrimination in India is to raise a disadvantaged group to a level where it can compete with other sections of society on equal footing.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The main object of protective discrimination in India is to give special advantages to a particular group.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Special Provisions for SCs, STs, BCs, Minorities and Anglo-Indians",
//           'questionId': "7",
//           'statements': [
//             {
//               'text': "Article 30 of the Indian Constitution deals with the right of minorities to establish and manage educational institutions.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Article 30 of the Indian Constitution deals with the freedom of conscience.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Special Provisions for SCs, STs, BCs, Minorities and Anglo-Indians",
//           'questionId': "8",
//           'statements': [
//             {
//               'text': "The 93rd Amendment to the Constitution of India deals with reservation for admission in educational institutions.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The 93rd Amendment to the Constitution of India deals with the Right to Education.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Rights and Liabilities of the Government",
//           'questionId': "1",
//           'statements': [
//             {
//               'text': "The Supreme Court affirmed, with respect to the sovereign immunity of the State, that the State cannot claim sovereign immunity if its officers are negligent in the exercise of their powers.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Supreme Court affirmed, with respect to the sovereign immunity of the State, that the doctrine of sovereign immunity has relevance in the present-day context.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Rights and Liabilities of the Government",
//           'questionId': "2",
//           'statements': [
//             {
//               'text': "Article 361 of the Constitution of India guarantees the privilege to the President of India that he shall not be answerable to any court for the exercise of the powers of his office.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Article 361 of the Constitution of India guarantees the privilege to the President of India that he shall not participate in Parliamentary proceedings.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Rights and Liabilities of the Government",
//           'questionId': "3",
//           'statements': [
//             {
//               'text': "Part XII of the Constitution of India deals with the rights and liabilities of the government.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Part XI of the Constitution of India deals with the rights and liabilities of the government.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Rights and Liabilities of the Government",
//           'questionId': "4",
//           'statements': [
//             {
//               'text': "No criminal proceedings shall be instituted or continued against the President and the Governor only, in any court, during the term of his office.",
//               'isCorrect': true,
//             },
//             {
//               'text': "No criminal proceedings shall be instituted or continued against the President, Vice-President and Governor, in any court, during the term of his office.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Authoritative Text in Hindi Language",
//           'questionId': "1",
//           'statements': [
//             {
//               'text': "Originally, the Constitution of India did not make any provision with respect to an authoritative text of the Constitution in the Hindi language.",
//               'isCorrect': true,
//             },
//             {
//               'text': "A provision with respect to an authoritative text of the Constitution in the Hindi language was made in 1978.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Authoritative Text in Hindi Language",
//           'questionId': "2",
//           'statements': [
//             {
//               'text': "The President shall cause to be published under his authority the translation of the Constitution in Hindi, signed by the members of the Constituent Assembly, and the President shall cause to be published under his authority the translation in Hindi of every amendment of the Constitution made in English.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The President is not required to publish under his authority the translation in Hindi of any amendment of the Constitution made in English.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Authoritative Text in Hindi Language",
//           'questionId': "3",
//           'statements': [
//             {
//               'text': "In pursuance of Article 394-A of the Constitution of India, the President published an authoritative text of the Constitution in the Hindi language.",
//               'isCorrect': true,
//             },
//             {
//               'text': "In pursuance of Article 393 of the Constitution of India, the President published an authoritative text of the Constitution in the Hindi language.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Authoritative Text in Hindi Language",
//           'questionId': "4",
//           'statements': [
//             {
//               'text': "Part XXII of the Constitution of India deals with the authoritative text of the Constitution in the Hindi language.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Part XXI of the Constitution of India deals with the authoritative text of the Constitution in the Hindi language.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Authoritative Text in Hindi Language",
//           'questionId': "5",
//           'statements': [
//             {
//               'text': "The 58th Amendment Act made a provision with respect to an authoritative text of the Constitution of India in the Hindi language.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The 56th Amendment Act made a provision with respect to an authoritative text of the Constitution of India in the Hindi language.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Anti-Defection Law",
//           'questionId': "1",
//           'statements': [
//             {
//               'text': "Disqualification on the ground of defection for a Member of Parliament will not apply if he goes out of his party as a result of a merger of the party with another party.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Disqualification on the ground of defection for a Member of Parliament will not apply if he has voluntarily given up his membership of the political party.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Anti-Defection Law",
//           'questionId': "2",
//           'statements': [
//             {
//               'text': "The 52nd Amendment to the Constitution of India sought to curb political defection.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The 42nd Amendment to the Constitution of India sought to curb political defection.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Anti-Defection Law",
//           'questionId': "3",
//           'statements': [
//             {
//               'text': "The Tenth Schedule of the Constitution of India includes the disqualification of a legislator on grounds of defection.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Eighth Schedule of the Constitution of India includes the disqualification of a legislator on grounds of defection.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Anti-Defection Law",
//           'questionId': "4",
//           'statements': [
//             {
//               'text': "The subject of the 91st Constitutional Amendment Act, 2003 is limiting the size of the Council of Ministers.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The subject of the 91st Constitutional Amendment Act, 2003 is the Right to Information.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Anti-Defection Law",
//           'questionId': "5",
//           'statements': [
//             {
//               'text': "The Presiding Officer of the House decides the question of disqualification of a member of Parliament, arising on the ground of defection.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The President of India decides the question of disqualification of a member of Parliament, arising on the ground of defection.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "State Human Rights Commission",
//           'questionId': "1",
//           'statements': [
//             {
//               'text': "The State Human Rights Commission is a multi-member body.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The State Human Rights Commission consists of a chairperson and three members.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "State Human Rights Commission",
//           'questionId': "2",
//           'statements': [
//             {
//               'text': "The Protection of Human Rights Act of 1993 provides for the creation of the State Human Rights Commission.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Protection of Human Rights Act of 1993 provides for the creation of a 'Joint State Human Rights Commission'.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "State Human Rights Commission",
//           'questionId': "3",
//           'statements': [
//             {
//               'text': "The chairperson of a State Human Rights Commission can be removed by the President of India.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The chairperson of a State Human Rights Commission can be removed by the Governor of the State.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "State Human Rights Commission",
//           'questionId': "4",
//           'statements': [
//             {
//               'text': "A State Human Rights Commission submits its annual report to the State Government.",
//               'isCorrect': true,
//             },
//             {
//               'text': "A State Human Rights Commission submits its annual report directly to the Governor of the State.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "State Human Rights Commission",
//           'questionId': "5",
//           'statements': [
//             {
//               'text': "A member of a State Human Rights Commission holds office for 5 years or until the age of 70 years, whichever is earlier.",
//               'isCorrect': true,
//             },
//             {
//               'text': "A member of a State Human Rights Commission holds office for 6 years or until the age of 65 years, whichever is earlier.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "State Human Rights Commission",
//           'questionId': "6",
//           'statements': [
//             {
//               'text': "Only a retired Chief Justice of a High Court can be the chairperson of a State Human Rights Commission.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Any serving judge of a High Court can be the chairperson of a State Human Rights Commission.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "State Human Rights Commission",
//           'questionId': "7",
//           'statements': [
//             {
//               'text': "The functions of a State Human Rights Commission are mainly recommendatory in nature.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The recommendations of a State Human Rights Commission are binding on the State Government.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Central Vigilance Commission",
//           'questionId': "1",
//           'statements': [
//             {
//               'text': "The Central Vigilance Commission has been broadly given the measure of independence and autonomy as that given to the Union Public Service Commission.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Central Vigilance Commission was set up by an Act of Parliament.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Central Vigilance Commission",
//           'questionId': "2",
//           'statements': [
//             {
//               'text': "The main function of the Central Vigilance Commission is to inquire or cause an inquiry into alleged offences committed by a public servant.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The main function of the Central Vigilance Commission is to keep a watch on the investigation agencies in the country.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Central Vigilance Commission",
//           'questionId': "3",
//           'statements': [
//             {
//               'text': "The Central Vigilance Commission was established on the recommendation of the Committee on Prevention of Corruption.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Central Vigilance Commission was established on the recommendation of the Administrative Reforms Commission.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Central Vigilance Commission",
//           'questionId': "4",
//           'statements': [
//             {
//               'text': "The salary, allowances and other service conditions of the Central Vigilance Commissioner are similar to those of the Chairman of the UPSC.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The salary, allowances and other service conditions of the Central Vigilance Commissioner are similar to those of a judge of the Supreme Court.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Central Vigilance Commission",
//           'questionId': "5",
//           'statements': [
//             {
//               'text': "Parliament enacted a law conferring statutory status on the Central Vigilance Commission in 2003.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Parliament enacted a law conferring statutory status on the Central Vigilance Commission in 2000.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Central Vigilance Commission",
//           'questionId': "6",
//           'statements': [
//             {
//               'text': "The Central Vigilance Commission presents its annual report to the President.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Central Vigilance Commission presents its annual report to the Parliament.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Central Vigilance Commission",
//           'questionId': "7",
//           'statements': [
//             {
//               'text': "The Central Vigilance Commission, the Special Police Establishment, and the Central Bureau of Investigation have been set up by the Government of India to check misconduct, malpractices, corruption and misdemeanor on the part of public servants.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Lokpal has been set up by the Government of India, along with the Central Vigilance Commission, to check misconduct, malpractices, corruption and misdemeanor on the part of public servants.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Central Vigilance Commission",
//           'questionId': "8",
//           'statements': [
//             {
//               'text': "The Government of India appointed a Committee on Prevention of Corruption under the chairmanship of K. Santhanam.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Government of India appointed a Committee on Prevention of Corruption under the chairmanship of Ananthaswamy Ayyangar.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Central Vigilance Commission",
//           'questionId': "9",
//           'statements': [
//             {
//               'text': "The Central Vigilance Commission was set up in 1964.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Central Vigilance Commission was set up in 1967.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Central Vigilance Commission",
//           'questionId': "10",
//           'statements': [
//             {
//               'text': "The Speaker of the Lok Sabha is not a member of the committee that recommends the appointment of the Central Vigilance Commissioner.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Speaker of the Lok Sabha is a member of the committee that recommends the appointment of the Central Vigilance Commissioner.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Central Information Commission",
//           'questionId': "1",
//           'statements': [
//             {
//               'text': "The Central Information Commission can order an inquiry into any matter if there are reasonable grounds, and it has the power to secure compliance of its decisions from the public authority.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Central Information Commission cannot order an inquiry into any matter, nor can it secure compliance of its decisions from the public authority.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Central Information Commission",
//           'questionId': "2",
//           'statements': [
//             {
//               'text': "The committee that recommends the appointment of the Chief Information Commissioner includes the Prime Minister, the Leader of the Opposition in the Lok Sabha, and a Union Cabinet Minister nominated by the Prime Minister.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The committee that recommends the appointment of the Chief Information Commissioner includes the Leader of the Opposition in the Rajya Sabha and the Speaker of the Lok Sabha.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Central Information Commission",
//           'questionId': "3",
//           'statements': [
//             {
//               'text': "The Central Information Commission entertains complaints and appeals pertaining to offices, financial institutions and public sector undertakings under the Central government and Union territories.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Central Information Commission entertains complaints and appeals pertaining to offices, financial institutions and public sector undertakings under State governments and Local governments.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Central Information Commission",
//           'questionId': "4",
//           'statements': [
//             {
//               'text': "The salary, allowances and other service conditions of the Chief Information Commissioner are similar to those of the Chief Election Commissioner.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The salary, allowances and other service conditions of the Chief Information Commissioner are similar to those of a judge of the Supreme Court.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Central Information Commission",
//           'questionId': "5",
//           'statements': [
//             {
//               'text': "The Central Information Commission submits its annual report to the Central Government.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Central Information Commission submits its annual report to the Parliament.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Central Information Commission",
//           'questionId': "6",
//           'statements': [
//             {
//               'text': "An Information Commissioner can be removed from office by the President on the advice/recommendation of the Supreme Court.",
//               'isCorrect': true,
//             },
//             {
//               'text': "An Information Commissioner can be removed from office by the President on the advice/recommendation of the Union Public Service Commission.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Central Information Commission",
//           'questionId': "7",
//           'statements': [
//             {
//               'text': "The Central Information Commission was established in 2005.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Central Information Commission was established in 2006.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Central Information Commission",
//           'questionId': "8",
//           'statements': [
//             {
//               'text': "The Central Information Commission consists of a Chief Information Commissioner and not more than ten Information Commissioners.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Central Information Commission consists of a Chief Information Commissioner and not more than five Information Commissioners.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Central Information Commission",
//           'questionId': "9",
//           'statements': [
//             {
//               'text': "The term of office of the Chief Information Commissioner and an Information Commissioner was 5 years, as originally provided under the RTI Act, 2005.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The term of office of the Chief Information Commissioner and an Information Commissioner is 4 years.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Central Information Commission",
//           'questionId': "10",
//           'statements': [
//             {
//               'text': "The Central Information Commission was established by an Act of Parliament.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Central Information Commission was established by a resolution of the Union Cabinet.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Central Information Commission",
//           'questionId': "11",
//           'statements': [
//             {
//               'text': "The Central Information Commission falls under the Ministry of Personnel.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Central Information Commission falls under the Ministry of Law.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Central Information Commission",
//           'questionId': "12",
//           'statements': [
//             {
//               'text': "The Central Information Commission is a high-powered independent body.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Central Information Commission is a constitutional body.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "State Information Commission",
//           'questionId': "1",
//           'statements': [
//             {
//               'text': "The State Information Commission entertains complaints and appeals pertaining to offices, financial institutions and public sector undertakings under the concerned state government, and it is a high-powered independent body.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The State Information Commission does not entertain complaints and appeals pertaining to offices, financial institutions and public sector undertakings under the concerned state government.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "State Information Commission",
//           'questionId': "2",
//           'statements': [
//             {
//               'text': "The State Information Commission submits its annual report to the State government.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The State Information Commission submits its annual report to the Governor of the State.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "State Information Commission",
//           'questionId': "3",
//           'statements': [
//             {
//               'text': "A State Information Commissioner can be removed from office by the order of the Governor, after the Supreme Court, on a reference made to it by the Governor, has on inquiry reported that the State Information Commissioner ought to be removed.",
//               'isCorrect': true,
//             },
//             {
//               'text': "A State Information Commissioner can be removed from office by the order of the State Chief Information Commissioner.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "State Information Commission",
//           'questionId': "4",
//           'statements': [
//             {
//               'text': "A Judge of the State High Court is not part of the committee that recommends the appointment of the State Chief Information Commissioner and the State Information Commissioners.",
//               'isCorrect': true,
//             },
//             {
//               'text': "A Judge of the State High Court is part of the committee that recommends the appointment of the State Chief Information Commissioner and the State Information Commissioners.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "State Information Commission",
//           'questionId': "5",
//           'statements': [
//             {
//               'text': "The salary, allowances and other service conditions of a State Information Commissioner are similar to those of the Chief Secretary of the State Government.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The salary, allowances and other service conditions of a State Information Commissioner are similar to those of a Judge of the High Court of the State.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "State Information Commission",
//           'questionId': "6",
//           'statements': [
//             {
//               'text': "The Chief Information Commissioner (State) holds office for 5 years or until the age of 65 years, whichever is earlier, as originally provided under the RTI Act, 2005.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Chief Information Commissioner (State) holds office for 6 years or until the age of 70 years, whichever is earlier.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "State Information Commission",
//           'questionId': "7",
//           'statements': [
//             {
//               'text': "The Right to Information Act of 2005 provides for the creation of the Central Information Commission and the State Information Commission.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Right to Information Act of 2005 provides for the creation of a 'Joint State Information Commission'.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Lokpal and Lokayuktas",
//           'questionId': "1",
//           'statements': [
//             {
//               'text': "The Institution of Ombudsman was first introduced in Sweden.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Institution of Ombudsman was first introduced in New Zealand.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Lokpal and Lokayuktas",
//           'questionId': "2",
//           'statements': [
//             {
//               'text': "The Administrative Reforms Commission recommended the establishment of the institutions of Lokpal and Lokayukta.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Gorwala Committee recommended the establishment of the institutions of Lokpal and Lokayukta.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Lokpal and Lokayuktas",
//           'questionId': "3",
//           'statements': [
//             {
//               'text': "At present, institutions for the redressal of citizens' grievances in India include the Lokayukta and the Supreme Court.",
//               'isCorrect': true,
//             },
//             {
//               'text': "At present, institutions for the redressal of citizens' grievances in India include the Supreme Court and the Lokpal.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Lokpal and Lokayuktas",
//           'questionId': "4",
//           'statements': [
//             {
//               'text': "According to the Administrative Reforms Commission, the institutions of Lokpal and Lokayukta should be demonstrably independent and impartial, should compare with the highest judicial functionary in the country, and their appointments should as far as possible be non-political.",
//               'isCorrect': true,
//             },
//             {
//               'text': "According to the Administrative Reforms Commission, the institutions of Lokpal and Lokayukta should be directly accountable to Parliament.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Lokpal and Lokayuktas",
//           'questionId': "5",
//           'statements': [
//             {
//               'text': "The Lokayukta and Uplokayuktas Act was first passed in Odisha.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Lokayukta and Uplokayuktas Act was first passed in Maharashtra.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Lokpal and Lokayuktas",
//           'questionId': "6",
//           'statements': [
//             {
//               'text': "The Administrative Reforms Commission (1966) recommended the establishment of 'Lokpal' in India on the lines of the Ombudsman of Finland, Denmark, and Norway.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Administrative Reforms Commission (1966) recommended the establishment of 'Lokpal' in India on the lines of the Ombudsman of Switzerland.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Historical Background",
//           'questionId': "1",
//           'statements': [
//             {
//               'text': "Under the Government of India Act, 1919, the Indian Legislature was made more representative and, for the first time, bicameral; the Government of India Act, 1935, prescribed a federation taking the Provinces and the Indian States as units.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Under the Government of India Act, 1919, the Indian Legislature was made unicameral for the first time, and the Government of India Act, 1935 did not prescribe a federation comprising the Provinces and the Indian States as units.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Historical Background",
//           'questionId': "2",
//           'statements': [
//             {
//               'text': "The principal features of the Government of India Act, 1919 included devolution of legislative authority from the Centre to the Provinces and expansion and reconstitution of the Central and Provincial Legislatures.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The principal features of the Government of India Act, 1919 included the transfer of all legislative authority to the Provinces and the abolition of the Central and Provincial Legislatures.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Historical Background",
//           'questionId': "3",
//           'statements': [
//             {
//               'text': "The first Public Service Commission in India was set up in 1926, and the Government of India Act, 1935 provided for Public Service Commissions at both the federal and provincial levels.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The first Public Service Commission in India was set up in 1935, and the Government of India Act, 1935 provided for a Public Service Commission only at the federal level.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Historical Background",
//           'questionId': "4",
//           'statements': [
//             {
//               'text': "The Act provided for the setting up of a Board of Control in Britain through which the British Government could fully control the British East India Company's civil, military and revenue affairs in India.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Act provided for the abolition of the Board of Control in Britain, through which the British Government had no role in controlling the East India Company's civil, military and revenue affairs in India.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Historical Background",
//           'questionId': "5",
//           'statements': [
//             {
//               'text': "Partially responsible governments in the Provinces were established under the Government of India Act, 1919.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Partially responsible governments in the Provinces were abolished under the Government of India Act, 1919.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Historical Background",
//           'questionId': "6",
//           'statements': [
//             {
//               'text': "The initial idea of recruitment on the merit principle can be traced to the Macaulay Committee.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The initial idea of recruitment on the merit principle can be traced to the Simon Commission.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Historical Background",
//           'questionId': "7",
//           'statements': [
//             {
//               'text': "During the period of British rule in India, the rules made under the Government of India Act, 1919 were known as the Devolution Rules.",
//               'isCorrect': true,
//             },
//             {
//               'text': "During the period of British rule in India, the rules made under the Government of India Act, 1919 were known as the Federal Rules.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Historical Background",
//           'questionId': "8",
//           'statements': [
//             {
//               'text': "The Government of India Act, 1919 was based upon the Montague-Chelmsford Report.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Government of India Act, 1919 was based upon the Simon Commission Report.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Historical Background",
//           'questionId': "9",
//           'statements': [
//             {
//               'text': "The Communal Electorate System was introduced by the British in India for the first time under the Government of India Act, 1909.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Communal Electorate System was introduced by the British in India for the first time under the Government of India Act, 1919.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Historical Background",
//           'questionId': "10",
//           'statements': [
//             {
//               'text': "The salient features of the Government of India Act, 1935 included abolition of the Council of India, dyarchy at the Centre, abolition of dyarchy in the States, and establishment of a Federal Court.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The salient features of the Government of India Act, 1935 included continuation of the Council of India, dyarchy in the Provinces, and abolition of the Federal Court.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Making Of the Constitution",
//           'questionId': "1",
//           'statements': [
//             {
//               'text': "The total strength of the Constituent Assembly was 389.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The total strength of the Constituent Assembly was 299.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Making Of the Constitution",
//           'questionId': "2",
//           'statements': [
//             {
//               'text': "Citizenship and Elections were among the provisions of the Constitution given immediate effect from November 26, 1949.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Citizenship and Elections were not among the provisions of the Constitution given immediate effect from November 26, 1949.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Making Of the Constitution",
//           'questionId': "3",
//           'statements': [
//             {
//               'text': "The Constitution of India was adopted when it received the signature of the President and Members of the Constituent Assembly.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Constitution of India was adopted without receiving the signature of the President and Members of the Constituent Assembly.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Making Of the Constitution",
//           'questionId': "4",
//           'statements': [
//             {
//               'text': "Jawaharlal Nehru was the Chairman of the States Committee of the Constituent Assembly.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Sardar Vallabhbhai Patel was the Chairman of the States Committee of the Constituent Assembly.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Making Of the Constitution",
//           'questionId': "5",
//           'statements': [
//             {
//               'text': "The Constitution of India as framed by the Constituent Assembly was finally adopted and enacted on 26th November, 1949.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Constitution of India as framed by the Constituent Assembly was finally adopted and enacted on 26th January, 1950.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Making Of the Constitution",
//           'questionId': "6",
//           'statements': [
//             {
//               'text': "The members of the Constituent Assembly were elected by the Legislatures of various provinces and nominated by the rulers of the princely states.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The members of the Constituent Assembly were directly elected by the people of British Indian provinces and appointed by the British Crown.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Making Of the Constitution",
//           'questionId': "7",
//           'statements': [
//             {
//               'text': "Sir B.N. Rau was the Constitutional Advisor to the Constituent Assembly.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Sir B.N. Rau was the first President of the Constituent Assembly.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Making Of the Constitution",
//           'questionId': "8",
//           'statements': [
//             {
//               'text': "Jawaharlal Nehru moved the Objectives Resolution in the Constituent Assembly.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Jawaharlal Nehru did not move the Objectives Resolution in the Constituent Assembly.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Making Of the Constitution",
//           'questionId': "9",
//           'statements': [
//             {
//               'text': "Dr. Sachchidanand Sinha was elected as the Provisional President and H.C. Mukherjee was elected as the Vice-President of the Constituent Assembly.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Dr. Sachchidanand Sinha was elected as the permanent President and H.C. Mukherjee was elected as the Chairman of the Constituent Assembly.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Citizenship",
//           'questionId': "1",
//           'statements': [
//             {
//               'text': "A person born on 26th January, 1951 in Rangoon, whose father was a citizen of India by birth at the time of his birth, is deemed to be an Indian citizen by descent, and a person born on 1st July, 1988 in Itanagar, whose mother is a citizen of India at the time of his birth but whose father was not, is deemed to be a citizen of India by birth.",
//               'isCorrect': true,
//             },
//             {
//               'text': "A person born on 26th January, 1951 in Rangoon, whose father was a citizen of India by birth at the time of his birth, is deemed to be an Indian citizen by birth, and a person born on 1st July, 1988 in Itanagar, whose mother is a citizen of India at the time of his birth but whose father was not, is deemed to be a citizen of India by descent.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Citizenship",
//           'questionId': "2",
//           'statements': [
//             {
//               'text': "Under the Citizenship Act, 1955, a person can become a citizen of India by birth, descent, registration and incorporation of territory.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Under the Citizenship Act, 1955, a person can become a citizen of India only by birth, descent and naturalisation.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Citizenship",
//           'questionId': "3",
//           'statements': [
//             {
//               'text': "Articles 5 to 11 of the Indian Constitution deal with citizenship in India.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Articles 12 to 18 of the Indian Constitution deal with citizenship in India.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Citizenship",
//           'questionId': "4",
//           'statements': [
//             {
//               'text': "The Citizenship Act, 1955 was amended in 1986, 1992, 2003 and 2005.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Citizenship Act, 1955 was amended only in 1986 and 1992 and was not amended in later years.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Citizenship",
//           'questionId': "5",
//           'statements': [
//             {
//               'text': "Article 8 of the Constitution of India deals with the rights of citizenship of certain persons of Indian origin residing outside India.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Article 8 of the Constitution of India deals with the citizenship rights of persons who migrated from Pakistan to India.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Citizenship",
//           'questionId': "6",
//           'statements': [
//             {
//               'text': "The Parliament has the power to regulate the right of citizenship in India.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Parliament has no power to regulate the right of citizenship in India.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Citizenship",
//           'questionId': "7",
//           'statements': [
//             {
//               'text': "Details of citizenship are mentioned in Part II of the Constitution of India.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Details of citizenship are mentioned in Part III of the Constitution of India.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Citizenship",
//           'questionId': "8",
//           'statements': [
//             {
//               'text': "According to the Citizenship Act, 1955, a person can lose Indian citizenship by renunciation, termination and deprivation.",
//               'isCorrect': true,
//             },
//             {
//               'text': "According to the Citizenship Act, 1955, a person can lose Indian citizenship only by renunciation and cannot lose it by termination or deprivation.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Citizenship",
//           'questionId': "9",
//           'statements': [
//             {
//               'text': "Originally, the Citizenship Act, 1955 also provided for Commonwealth Citizenship.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Citizenship Act, 1955 originally provided for separate Commonwealth Citizenship in addition to Indian citizenship.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Salient Features of the Constitution",
//           'questionId': "1",
//           'statements': [
//             {
//               'text': "The Constitution of India provides for popular sovereignty and adult franchise, has a rigid division of powers between the Centre and States, and recognizes the interdependence of civil and economic rights.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Constitution of India does not provide for popular sovereignty and adult franchise and establishes a complete absence of division of powers between the Centre and States.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Salient Features of the Constitution",
//           'questionId': "2",
//           'statements': [
//             {
//               'text': "Secularism in India grants religious liberty to all communities and accepts community personal laws.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Secularism in India grants religious liberty only to the majority religious community and does not recognize community personal laws.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Salient Features of the Constitution",
//           'questionId': "3",
//           'statements': [
//             {
//               'text': "The Seventh Schedule incorporates salaries and allowances of members of Parliament, the Chairman and Deputy Chairman of the Rajya Sabha, and the Speaker and Deputy Speaker of the Lok Sabha.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Third Schedule incorporates salaries and allowances of members of Parliament, the Chairman and Deputy Chairman of the Rajya Sabha, and the Speaker and Deputy Speaker of the Lok Sabha.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Salient Features of the Constitution",
//           'questionId': "4",
//           'statements': [
//             {
//               'text': "A committed judiciary is not a salient feature of the Constitution of India.",
//               'isCorrect': true,
//             },
//             {
//               'text': "A committed judiciary is a salient feature of the Constitution of India.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Salient Features of the Constitution",
//           'questionId': "5",
//           'statements': [
//             {
//               'text': "The Indian Constitution is a written constitution and is largely based on the Government of India Act, 1935.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Indian Constitution is an unwritten constitution and is largely based on the Government of India Act, 1935.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Salient Features of the Constitution",
//           'questionId': "6",
//           'statements': [
//             {
//               'text': "The Second Schedule of the Constitution of India does not contain provisions regarding the Chairman of the Union Public Service Commission.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Second Schedule of the Constitution of India contains provisions regarding the Chairman of the Union Public Service Commission.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Salient Features of the Constitution",
//           'questionId': "7",
//           'statements': [
//             {
//               'text': "The forms of oaths or affirmations are contained in the Second Schedule.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The forms of oaths or affirmations are contained in the Third Schedule.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Salient Features of the Constitution",
//           'questionId': "8",
//           'statements': [
//             {
//               'text': "Secularism in India means that the State has no recognized religion of State and treats all religions equally.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Secularism in India means that the State has an officially recognized religion and does not treat all religions equally.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Salient Features of the Constitution",
//           'questionId': "9",
//           'statements': [
//             {
//               'text': "The Seventh Schedule of the Constitution of India lists the distribution of powers between the Union and the States.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Eighth Schedule of the Constitution of India lists the distribution of powers between the Union and the States.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Salient Features of the Constitution",
//           'questionId': "10",
//           'statements': [
//             {
//               'text': "The Indian Constitution provides for single citizenship for the whole of India and a unique blend of rigidity and flexibility.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Indian Constitution provides for separate citizenship for each State of India and is completely rigid in nature.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Preamble of the Constitution",
//           'questionId': "1",
//           'statements': [
//             {
//               'text': "The Preamble mentions Justice – social, economic and political, Liberty of thought, expression, belief, faith and worship, Equality of status and opportunity, Fraternity assuring the dignity of the individual, and Unity and integrity of the Nation in that order.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Preamble mentions Justice – social, economic and political, Liberty of thought, expression, belief, faith and worship, Equality of status and opportunity, and Fraternity assuring the dignity of the individual, but does not mention the unity and integrity of the Nation.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Preamble of the Constitution",
//           'questionId': "2",
//           'statements': [
//             {
//               'text': "The Objectives Resolution of Pandit Nehru, 1947 represents the philosophical postulates of the Constitution.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Objectives Resolution was moved by Dr. B.R. Ambedkar in 1947 and does not represent the philosophical postulates of the Constitution.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Preamble of the Constitution",
//           'questionId': "3",
//           'statements': [
//             {
//               'text': "The Preamble is a part of the Constitution and can be used in interpreting other provisions of the Constitution in cases of ambiguity.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Preamble is not a part of the Constitution and cannot be used in interpreting other provisions of the Constitution in cases of ambiguity.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Preamble of the Constitution",
//           'questionId': "4",
//           'statements': [
//             {
//               'text': "The Preamble declares the resolve of the people of India to secure to all its citizens liberty of belief, faith and worship.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Preamble declares the resolve of the people of India to secure to all its citizens liberty of property, occupation and residence.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Preamble of the Constitution",
//           'questionId': "5",
//           'statements': [
//             {
//               'text': "The term “economic justice” in the Preamble represents a resolution for equal distribution of wealth.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The term “economic justice” in the Preamble represents a resolution to establish complete political equality rather than addressing economic inequalities.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Preamble of the Constitution",
//           'questionId': "6",
//           'statements': [
//             {
//               'text': "The Preamble aims to secure the dignity of the individual and the unity and integrity of the nation.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Preamble aims to secure the dignity of the individual but does not mention the unity and integrity of the nation.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Preamble of the Constitution",
//           'questionId': "7",
//           'statements': [
//             {
//               'text': "Flexibility was not included in the ‘Union of Trinity’ mentioned by Dr. B.R. Ambedkar in his concluding speech in the Constituent Assembly.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Flexibility was included in the ‘Union of Trinity’ mentioned by Dr. B.R. Ambedkar in his concluding speech in the Constituent Assembly.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Preamble of the Constitution",
//           'questionId': "8",
//           'statements': [
//             {
//               'text': "The words “Socialist” and “Secular” were inserted in the Preamble by the Forty-second Amendment.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The words “Socialist” and “Secular” were inserted in the Preamble by the Forty-fourth Amendment.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Preamble of the Constitution",
//           'questionId': "9",
//           'statements': [
//             {
//               'text': "The terms in the Preamble appear in the sequence: Sovereign, Socialist, Secular, Democratic, Republic.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The terms in the Preamble appear in the sequence: Sovereign, Democratic, Secular, Socialist, Republic.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Preamble of the Constitution",
//           'questionId': "10",
//           'statements': [
//             {
//               'text': "The Preamble indicates the objectives to be achieved by the Constitution of India.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Preamble does not indicate the objectives to be achieved by the Constitution of India.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Union and Its Territory",
//           'questionId': "1",
//           'statements': [
//             {
//               'text': "The Parliament is not empowered to alter the boundaries of any existing State of India.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Union and Its Territory",
//           'questionId': "2",
//           'statements': [
//             {
//               'text': "The correct chronological order is Formation of Gujarat, States Reorganisation Act, Formation of Haryana, and Formation of Nagaland.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The correct chronological order is Formation of Haryana, States Reorganisation Act, Formation of Gujarat, and Formation of Nagaland.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Union and Its Territory",
//           'questionId': "3",
//           'statements': [
//             {
//               'text': "The boundary of a State in India can be altered through the procedure laid down in Article 3.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The boundary of a State in India cannot be altered through the procedure laid down in Article 3.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Union and Its Territory",
//           'questionId': "4",
//           'statements': [
//             {
//               'text': "The States Reorganisation Commission appointed in 1953 was headed by Fazl Ali.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The States Reorganisation Commission appointed in 1953 was headed by Justice S.K. Dhar.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Union and Its Territory",
//           'questionId': "5",
//           'statements': [
//             {
//               'text': "The States Reorganisation Act, 1956 created 14 States and 6 Union Territories.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The States Reorganisation Act, 1956 created 16 States and 4 Union Territories.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Union and Its Territory",
//           'questionId': "6",
//           'statements': [
//             {
//               'text': "The States of the Indian Union can be reorganized or their boundaries altered by the Union Parliament through a simple majority in the ordinary process of legislation.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The States of the Indian Union can be reorganized or their boundaries altered only through a constitutional amendment requiring a special majority in Parliament.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Union and Its Territory",
//           'questionId': "7",
//           'statements': [
//             {
//               'text': "The Governor was the executive head of Category A states, the Rajpramukh was the executive head of Category B states, and the Chief Commissioner was the executive head of Categories C and D states.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The President was the executive head of Category A states, while the Governor was the executive head of Category B states.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Union and Its Territory",
//           'questionId': "8",
//           'statements': [
//             {
//               'text': "Justice S.K. Dhar was the head of the Linguistic Provinces Commission appointed in 1948 to enquire into the desirability of linguistic provinces.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Justice S.K. Dhar was not the head of the Linguistic Provinces Commission appointed in 1948 to enquire into the desirability of linguistic provinces.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Union and Its Territory",
//           'questionId': "9",
//           'statements': [
//             {
//               'text': "The correct chronological order was Andhra Pradesh, Maharashtra, Nagaland, and Haryana.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The correct chronological order was Haryana, Andhra Pradesh, Maharashtra, and Nagaland.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Union and Its Territory",
//           'questionId': "10",
//           'statements': [
//             {
//               'text': "Potti Sriramulu was not a member of the States Reorganisation Commission appointed by Pandit Jawaharlal Nehru.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Potti Sriramulu was a member of the States Reorganisation Commission appointed by Pandit Jawaharlal Nehru.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Union and Its Territory",
//           'questionId': "11",
//           'statements': [
//             {
//               'text': "The separate state of Andhra for the Telugu people came into existence in 1953.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The separate state of Andhra for the Telugu people came into existence in 1956.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Special Status of Jammu & Kashmir",
//           'questionId': "1",
//           'statements': [
//             {
//               'text': "Part III of the Constitution of India dealing with Fundamental Rights is applicable to Jammu & Kashmir, and Part IV dealing with Directive Principles is applicable to Jammu & Kashmir with some exceptions and conditions.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Part III of the Constitution of India dealing with Fundamental Rights was not applicable to Jammu & Kashmir, while Part IV dealing with Directive Principles was fully applicable without any exceptions or conditions.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Special Status of Jammu & Kashmir",
//           'questionId': "2",
//           'statements': [
//             {
//               'text': "The Constitution of Jammu & Kashmir provided for Governor’s Rule in the state.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Constitution of Jammu & Kashmir did not provide for Governor’s Rule in the state.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Special Status of Jammu & Kashmir",
//           'questionId': "3",
//           'statements': [
//             {
//               'text': "The High Court of Jammu & Kashmir can issue writs only for the enforcement of Fundamental Rights and not for any other purpose.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The High Court of Jammu & Kashmir could issue writs only for purposes other than the enforcement of Fundamental Rights.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Special Status of Jammu & Kashmir",
//           'questionId': "4",
//           'statements': [
//             {
//               'text': "The power of the President of India to declare that Article 370 shall cease to be operative was subject to a public notification and the recommendation of the Constituent Assembly of Jammu & Kashmir.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The power of the President of India to declare that Article 370 shall cease to be operative was not subject to any public notification or recommendation of the Constituent Assembly of Jammu & Kashmir.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Special Status of Jammu & Kashmir",
//           'questionId': "5",
//           'statements': [
//             {
//               'text': "Originally, the head of the state in Jammu & Kashmir was designated as Sadar-i-Riyasat.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Originally, the head of the state in Jammu & Kashmir was designated as the Governor.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Special Status of Jammu & Kashmir",
//           'questionId': "6",
//           'statements': [
//             {
//               'text': "Part XXI of the Constitution of India contains temporary, transitional and special provisions with regard to Jammu & Kashmir.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Part XXI of the Constitution of India did not contain any provisions relating to Jammu & Kashmir.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Special Status of Jammu & Kashmir",
//           'questionId': "7",
//           'statements': [
//             {
//               'text': "The Union has the power to make a proclamation of financial emergency with respect to the State of Jammu & Kashmir.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Union did not have the power to make a proclamation of financial emergency with respect to the State of Jammu & Kashmir.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Special Status of Jammu & Kashmir",
//           'questionId': "8",
//           'statements': [
//             {
//               'text': "India has a single Constitution for the Union and the States, with the exception of Jammu & Kashmir.",
//               'isCorrect': true,
//             },
//             {
//               'text': "India had separate Constitutions for the Union and all the States, including Jammu & Kashmir.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Special Status of Jammu & Kashmir",
//           'questionId': "9",
//           'statements': [
//             {
//               'text': "The Constitution of Jammu & Kashmir came into force on January 26, 1957.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Constitution of Jammu & Kashmir came into force on January 26, 1950.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Special Status of Jammu & Kashmir",
//           'questionId': "10",
//           'statements': [
//             {
//               'text': "Article 370 of the Constitution of India contained temporary provisions with respect to Jammu & Kashmir.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Article 370 of the Constitution of India contained permanent provisions with respect to Jammu & Kashmir.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Special Status of Jammu & Kashmir",
//           'questionId': "11",
//           'statements': [
//             {
//               'text': "The Sixth Schedule of the Constitution of India, dealing with the administration of tribal areas, was not applicable to Jammu & Kashmir.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Sixth Schedule of the Constitution of India was applicable to Jammu & Kashmir for the administration of its tribal areas.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Special Provisions for Some States",
//           'questionId': "1",
//           'statements': [
//             {
//               'text': "The Governor of Arunachal Pradesh shall have special responsibility for law and order in the state.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Governor of Arunachal Pradesh has no special responsibility for law and order in the state.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Special Provisions for Some States",
//           'questionId': "2",
//           'statements': [
//             {
//               'text': "Acts of Parliament relating to religious or social practices of the Nagas, Naga customary law and procedure, administration of civil and criminal justice involving decisions according to Naga customary law, and ownership and transfer of land and its resources would not apply to Nagaland unless the State Legislative Assembly so decides.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Acts of Parliament relating to religious or social practices of the Nagas, Naga customary law and procedure, administration of civil and criminal justice involving decisions according to Naga customary law, and ownership and transfer of land and its resources automatically apply to Nagaland without any decision of the State Legislative Assembly.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Special Provisions for Some States",
//           'questionId': "3",
//           'statements': [
//             {
//               'text': "The President of India can extend, with restrictions or modifications, any law which is in force in a state of the Indian Union to Sikkim.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The President of India cannot extend any law which is in force in a state of the Indian Union to Sikkim, even with restrictions or modifications.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Special Provisions for Some States",
//           'questionId': "4",
//           'statements': [
//             {
//               'text': "The temporary, transitional and special provisions mentioned in Part XXI of the Constitution of India relate to Jammu & Kashmir, Nagaland, Assam and Andhra Pradesh.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The temporary, transitional and special provisions mentioned in Part XXI of the Constitution of India relate only to Jammu & Kashmir and do not include provisions concerning Nagaland, Assam or Andhra Pradesh.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Special Provisions for Some States",
//           'questionId': "5",
//           'statements': [
//             {
//               'text': "Parliament of India is empowered to provide for the establishment of a Central University in the state of Andhra Pradesh under Article 371-E.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Parliament of India has no power to provide for the establishment of a Central University in the state of Andhra Pradesh under Article 371-E.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Special Provisions for Some States",
//           'questionId': "6",
//           'statements': [
//             {
//               'text': "The Chief Minister of Manipur is authorized to provide for the creation of a committee of the Manipur Legislative Assembly consisting of members elected from the Hill areas of the state.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Governor of Manipur is authorized to provide for the creation of a committee of the Manipur Legislative Assembly consisting of members elected from the Hill areas of the state.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Special Provisions for Some States",
//           'questionId': "7",
//           'statements': [
//             {
//               'text': "Article 371 of the Constitution of India provides for special provisions with respect to Maharashtra and Gujarat.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Article 371 of the Constitution of India provides special provisions only with respect to Maharashtra and not Gujarat.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Special Provisions for Some States",
//           'questionId': "8",
//           'statements': [
//             {
//               'text': "Under Article 371-A, the Governor of Nagaland has special responsibility with respect to law and order in the state.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Under Article 371-A, the Governor of Nagaland has no special responsibility with respect to law and order in the state.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Special Provisions for Some States",
//           'questionId': "9",
//           'statements': [
//             {
//               'text': "Neither Article 371-E contains special provisions with respect to Sikkim nor did the 38th Constitutional Amendment Act make Sikkim a full-fledged state of the Indian Union.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Article 371-E contains special provisions with respect to Sikkim, and the 38th Constitutional Amendment Act made Sikkim a full-fledged state of the Indian Union.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "President, Vice President and Governor",
//           'questionId': "1",
//           'statements': [
//             {
//               'text': "When the President of India is impeached for violation of the Constitution, the charge shall be preferred by either House of Parliament.",
//               'isCorrect': true,
//             },
//             {
//               'text': "When the President of India is impeached for violation of the Constitution, the charge shall be preferred only by the Lok Sabha.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "President, Vice President and Governor",
//           'questionId': "2",
//           'statements': [
//             {
//               'text': "The President nominates twelve members of the Rajya Sabha on the advice of the Council of Ministers.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The President nominates twelve members of the Rajya Sabha without any advice from the Council of Ministers.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "President, Vice President and Governor",
//           'questionId': "3",
//           'statements': [
//             {
//               'text': "On expiry of the five-year term, the outgoing President continues to hold office until the successor enters upon office, and the electoral college for the President's election includes elected members of the Legislative Assemblies of Delhi and Puducherry.",
//               'isCorrect': true,
//             },
//             {
//               'text': "On expiry of the five-year term, the outgoing President immediately ceases to hold office even if the successor has not entered upon office, and the electoral college does not include elected members of the Legislative Assemblies of Delhi and Puducherry.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "President, Vice President and Governor",
//           'questionId': "4",
//           'statements': [
//             {
//               'text': "The President exercises the executive power of the Union either directly or through officers subordinate to him in accordance with the provisions of the Constitution.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The President exercises the executive power of the Union only through the Prime Minister and has no direct constitutional executive authority.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "President, Vice President and Governor",
//           'questionId': "5",
//           'statements': [
//             {
//               'text': "The Governor of a State holds office during the pleasure of the President.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Governor of a State holds office for a fixed five-year term and is not subject to the pleasure of the President.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "President, Vice President and Governor",
//           'questionId': "6",
//           'statements': [
//             {
//               'text': "The President is not bound by the advice of the Council of Ministers in the choice of the Prime Minister, dismissal of a government that has lost its majority and refuses to quit, and dissolution of the House when an appeal to the electorate becomes necessary.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The President is always bound to follow the advice of the Council of Ministers in appointing any person as Prime Minister, dismissing a government that has lost its majority and refuses to quit, and dissolving the House in every circumstance.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "President, Vice President and Governor",
//           'questionId': "7",
//           'statements': [
//             {
//               'text': "The President need not act in accordance with the advice tendered by the Council of Ministers after reconsideration.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The President is free to disregard the advice tendered by the Council of Ministers even after reconsideration.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "President, Vice President and Governor",
//           'questionId': "8",
//           'statements': [
//             {
//               'text': "The President can commute a death sentence to life imprisonment, and the President's power to pardon extends to punishments or sentences by court martial.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The President cannot commute a death sentence to life imprisonment, and the President's pardoning power does not extend to punishments or sentences imposed by court martial.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "President, Vice President and Governor",
//           'questionId': "9",
//           'statements': [
//             {
//               'text': "The President is not bound by the aid and advice of the Union Council of Ministers while deciding whether a member of the Lok Sabha has become disqualified to continue as a member.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The President is not required to act on the aid and advice of the Union Council of Ministers while deciding whether a member of the Lok Sabha has become disqualified to continue as a member.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "President, Vice President and Governor",
//           'questionId': "10",
//           'statements': [
//             {
//               'text': "Money can be advanced out of the Contingency Fund of India to meet unforeseen expenditure by the President.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Money cannot be advanced out of the Contingency Fund of India to meet unforeseen expenditure by the President.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "President, Vice President and Governor",
//           'questionId': "11",
//           'statements': [
//             {
//               'text': "A resolution for impeachment of the President must be passed by a majority of not less than two-thirds of the total membership of the House.",
//               'isCorrect': true,
//             },
//             {
//               'text': "A resolution for impeachment of the President must be passed by a simple majority of the total membership of the House.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "President, Vice President and Governor",
//           'questionId': "12",
//           'statements': [
//             {
//               'text': "The Forty-second Constitutional Amendment Act, 1976 amended Article 74 to make it obligatory for the President to act in accordance with the advice of the Council of Ministers.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Forty-second Constitutional Amendment Act, 1976 removed the requirement for the President to act in accordance with the advice of the Council of Ministers under Article 74.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "President, Vice President and Governor",
//           'questionId': "13",
//           'statements': [
//             {
//               'text': "The President can address both Houses of Parliament, summon the Houses of Parliament and send messages to either House of Parliament.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The President cannot address both Houses of Parliament, summon the Houses of Parliament or send messages to either House of Parliament.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "President, Vice President and Governor",
//           'questionId': "14",
//           'statements': [
//             {
//               'text': "The President of India is a part of Parliament.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The President of India is not a part of Parliament.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "President, Vice President and Governor",
//           'questionId': "15",
//           'statements': [
//             {
//               'text': "The resolution for impeachment of the President has to be moved after at least thirty days' notice in writing.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The resolution for impeachment of the President has to be moved after at least sixty days' notice in writing.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "President, Vice President and Governor",
//           'questionId': "16",
//           'statements': [
//             {
//               'text': "If the Chief Minister, despite commanding the confidence of the Legislative Assembly, cannot run the government in accordance with the Constitution, the President can proclaim an emergency under Article 356.",
//               'isCorrect': true,
//             },
//             {
//               'text': "If the Chief Minister cannot run the government in accordance with the Constitution despite commanding the confidence of the Legislative Assembly, the President cannot proclaim an emergency under Article 356.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "President, Vice President and Governor",
//           'questionId': "17",
//           'statements': [
//             {
//               'text': "The rule of passing a resolution by a two-thirds majority of the total number of members of the House of Parliament is applicable in the case of impeachment of the President.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The rule of passing a resolution by a simple majority of the total number of members of the House of Parliament is applicable in the case of impeachment of the President.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "President, Vice President and Governor",
//           'questionId': "18",
//           'statements': [
//             {
//               'text': "The President makes rules for the more convenient transaction of the business of the Government of India and for allocation of such business among Ministers.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Prime Minister alone makes rules for the more convenient transaction of the business of the Government of India and for allocation of such business among Ministers.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "President, Vice President and Governor",
//           'questionId': "19",
//           'statements': [
//             {
//               'text': "On receipt of a Constitutional Amendment Bill after its passing by each House of Parliament, the President shall give his assent.",
//               'isCorrect': true,
//             },
//             {
//               'text': "On receipt of a Constitutional Amendment Bill after its passing by each House of Parliament, the President may refuse to give his assent.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "President, Vice President and Governor",
//           'questionId': "20",
//           'statements': [
//             {
//               'text': "The provision requiring the President to reconsider the advice of the Council of Ministers and act according to the advice tendered after reconsideration was inserted by the Forty-fourth Amendment.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The requirement that the President must reconsider the advice of the Council of Ministers and act according to the advice tendered after reconsideration was inserted by the Forty-second Amendment.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "President, Vice President and Governor",
//           'questionId': "21",
//           'statements': [
//             {
//               'text': "The President may reject a petition for mercy but must hear a petition for mercy before rejecting it.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The President may reject a petition for mercy without any requirement to hear the petition before rejecting it.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "President, Vice President and Governor",
//           'questionId': "22",
//           'statements': [
//             {
//               'text': "The President has the absolute power to appoint and remove the chairmen and members of statutory bodies at his discretion.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The President has absolute power to appoint and remove the chairmen and members of all statutory bodies at his personal discretion.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "President, Vice President and Governor",
//           'questionId': "23",
//           'statements': [
//             {
//               'text': "The President of India is elected by an Electoral College consisting of elected Members of Parliament and elected members of State Legislative Assemblies.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The President of India is elected by an Electoral College consisting only of elected Members of Parliament and does not include elected members of State Legislative Assemblies.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "President, Vice President and Governor",
//           'questionId': "24",
//           'statements': [
//             {
//               'text': "A Bill for the formation of new States and alteration of the areas, boundaries or names of existing States cannot be introduced without the recommendation of the President.",
//               'isCorrect': true,
//             },
//             {
//               'text': "A Bill for the formation of new States and alteration of the areas, boundaries or names of existing States can be introduced without the recommendation of the President.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "President, Vice President and Governor",
//           'questionId': "25",
//           'statements': [
//             {
//               'text': "The authority to declare war or peace under the Indian Constitution is vested in the President.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The authority to declare war or peace under the Indian Constitution is vested exclusively in Parliament and not in the President.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "President, Vice President and Governor",
//           'questionId': "26",
//           'statements': [
//             {
//               'text': "The emoluments and allowances of the President shall not be diminished during his term of office.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The emoluments and allowances of the President may be diminished during his term of office.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "President, Vice President and Governor",
//           'questionId': "27",
//           'statements': [
//             {
//               'text': "Returning a Money Bill for reconsideration is not a constitutional prerogative of the President of India.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Returning a Money Bill for reconsideration is a constitutional prerogative of the President of India.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "President, Vice President and Governor",
//           'questionId': "28",
//           'statements': [
//             {
//               'text': "The President may resign by writing to the Vice-President, and he shall continue to hold office after the expiration of his term until his successor enters upon office.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The President may resign by writing to the Prime Minister, and he must vacate office immediately after the expiration of his term even if his successor has not entered upon office.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "President, Vice President and Governor",
//           'questionId': "29",
//           'statements': [
//             {
//               'text': "The President of India is not the authority for the appointment of the Chairman of a State Public Service Commission.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The President of India is the authority for the appointment of the Chairman of a State Public Service Commission.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "President, Vice President and Governor",
//           'questionId': "30",
//           'statements': [
//             {
//               'text': "Elected Members of the Vidhan Parishads do not participate in the election of the President of India.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Elected Members of the Vidhan Parishads participate in the election of the President of India.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "President, Vice President and Governor",
//           'questionId': "31",
//           'statements': [
//             {
//               'text': "Once the proclamation of emergency is made, the right of a citizen to move the Supreme Court for enforcement of Fundamental Rights is suspended by the President of India.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Once a proclamation of emergency is made, the right of every citizen to move the Supreme Court for enforcement of all Fundamental Rights is automatically suspended by the President of India.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "President, Vice President and Governor",
//           'questionId': "32",
//           'statements': [
//             {
//               'text': "The President does not preside over the meetings of the Council of Ministers when he deems fit.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The President presides over the meetings of the Council of Ministers whenever he deems fit.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "President, Vice President and Governor",
//           'questionId': "33",
//           'statements': [
//             {
//               'text': "The power of the President of India to issue an ordinance is a legislative power.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The power of the President of India to issue an ordinance is not a legislative power.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "President, Vice President and Governor",
//           'questionId': "34",
//           'statements': [
//             {
//               'text': "The impeachment of the President of India can be initiated in either House of Parliament.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The impeachment of the President of India can be initiated only in the Lok Sabha.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "President, Vice President and Governor",
//           'questionId': "35",
//           'statements': [
//             {
//               'text': "The President of India decides about the disqualification of Members of Parliament.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The President of India has no role in deciding the disqualification of Members of Parliament.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "President, Vice President and Governor",
//           'questionId': "36",
//           'statements': [
//             {
//               'text': "When the financial credit of the Government of India is threatened, the President of India may proclaim a financial emergency.",
//               'isCorrect': true,
//             },
//             {
//               'text': "When the financial credit of the Government of India is threatened, the President of India cannot proclaim a financial emergency.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "President, Vice President and Governor",
//           'questionId': "37",
//           'statements': [
//             {
//               'text': "In the event of vacancies in the offices of both the President and Vice-President, the Chief Justice of India shall discharge the functions of the President until a new President is elected.",
//               'isCorrect': true,
//             },
//             {
//               'text': "In the event of vacancies in the offices of both the President and Vice-President, the Prime Minister shall discharge the functions of the President until a new President is elected.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "President, Vice President and Governor",
//           'questionId': "38",
//           'statements': [
//             {
//               'text': "The President of India can declare an emergency under Article 352 on the grounds of war, external aggression and armed rebellion.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The President of India can declare an emergency under Article 352 only on the grounds of war and external aggression, and not armed rebellion.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "President, Vice President and Governor",
//           'questionId': "39",
//           'statements': [
//             {
//               'text': "An Ordinance promulgated by the President may be withdrawn at any time by the President and shall cease to operate at the expiration of six weeks from the reassembly of Parliament, or earlier if disapproved by both Houses.",
//               'isCorrect': true,
//             },
//             {
//               'text': "An Ordinance promulgated by the President cannot be withdrawn by the President and continues to operate indefinitely after Parliament reassembles.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "President, Vice President and Governor",
//           'questionId': "40",
//           'statements': [
//             {
//               'text': "The Vice-President of India is the ex-officio Chairman of the Council of States, and the Constitution has fixed specific emoluments for the Vice-President in that capacity.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "President, Vice President and Governor",
//           'questionId': "41",
//           'statements': [
//             {
//               'text': "The Vice-President may be removed by a resolution of the Council of States, an election to fill a vacancy caused by expiration of the term shall be completed before the expiration of the term, and the Vice-President continues in office until the successor enters upon office.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Vice-President may be removed by a resolution of the Lok Sabha, an election to fill a vacancy caused by expiration of the term shall be completed after the expiration of the term, and the Vice-President must vacate office immediately when the term ends.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "President, Vice President and Governor",
//           'questionId': "42",
//           'statements': [
//             {
//               'text': "The Vice-President is elected by an electoral college consisting of members of both Houses of Parliament.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Vice-President is elected by an electoral college consisting only of elected members of the Lok Sabha.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "President, Vice President and Governor",
//           'questionId': "43",
//           'statements': [
//             {
//               'text': "The Vice-President is elected by proportional representation and should not hold any other office of profit.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Vice-President is elected by a simple majority of Parliament and may hold any other office of profit while in office.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "President, Vice President and Governor",
//           'questionId': "44",
//           'statements': [
//             {
//               'text': "The Vice-President may be removed by a resolution passed by the Rajya Sabha with a simple majority and agreed to by a majority of members of the Lok Sabha.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Vice-President may be removed by a resolution passed by the Rajya Sabha with a two-thirds majority and approved by the President of India.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "President, Vice President and Governor",
//           'questionId': "45",
//           'statements': [
//             {
//               'text': "The Vice-President of India can act as President only for a maximum period of nine months.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Vice-President of India can act as President only for a maximum period of three months.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "President, Vice President and Governor",
//           'questionId': "46",
//           'statements': [
//             {
//               'text': "The Vice-President of India can resign from his office at any time by addressing the resignation letter to the President of India.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Vice-President of India can resign from his office only by addressing the resignation letter to the Prime Minister of India.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "President, Vice President and Governor",
//           'questionId': "47",
//           'statements': [
//             {
//               'text': "No ground has been mentioned in the Constitution for the removal of the Vice-President.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Constitution specifically mentions grounds such as misconduct and incapacity for the removal of the Vice-President.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "President, Vice President and Governor",
//           'questionId': "48",
//           'statements': [
//             {
//               'text': "As regards legislative powers, the Governor of a State is regarded as a part of the State Legislature, along with the Houses.",
//               'isCorrect': true,
//             },
//             {
//               'text': "As regards legislative powers, the Governor of a State is entirely excluded from the State Legislature and is treated purely as an executive officer.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "President, Vice President and Governor",
//           'questionId': "49",
//           'statements': [
//             {
//               'text': "To be appointed Governor, a person must be a citizen of India and must have completed the age of thirty-five years.",
//               'isCorrect': true,
//             },
//             {
//               'text': "To be appointed Governor, a person must be a citizen of India and must have completed the age of twenty-five years.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "President, Vice President and Governor",
//           'questionId': "50",
//           'statements': [
//             {
//               'text': "A Governor cannot be a member of Parliament or of a State Legislature; if a sitting legislator is appointed Governor, that person is deemed to vacate his or her legislative seat.",
//               'isCorrect': true,
//             },
//             {
//               'text': "A Governor is required to remain a sitting member of the State Legislature throughout his or her tenure in office.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "President, Vice President and Governor",
//           'questionId': "51",
//           'statements': [
//             {
//               'text': "Under Article 213, the Governor may promulgate ordinances when the State Legislature is not in session, subject to conditions similar to the President's ordinance-making power.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Under Article 213, the Governor may promulgate ordinances at any time, even while the State Legislature is in session and actively debating the same subject.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "President, Vice President and Governor",
//           'questionId': "52",
//           'statements': [
//             {
//               'text': "An ordinance promulgated by the Governor has the same force and effect as an Act passed by the State Legislature.",
//               'isCorrect': true,
//             },
//             {
//               'text': "An ordinance promulgated by the Governor is merely a recommendation and has no legal force unless separately enacted by the State Legislature.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "President, Vice President and Governor",
//           'questionId': "53",
//           'statements': [
//             {
//               'text': "Under Article 200, the Governor may withhold assent to a bill, return it (other than a Money Bill) for reconsideration, or reserve it for the consideration of the President.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Under Article 200, the Governor has only one option available to him: he must always reserve every bill for the consideration of the President.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "President, Vice President and Governor",
//           'questionId': "54",
//           'statements': [
//             {
//               'text': "In the performance of his duties and the exercise of his powers, the Governor is not answerable to any court of law.",
//               'isCorrect': true,
//             },
//             {
//               'text': "In the performance of his duties and the exercise of his powers, the Governor can be sued and held answerable in any court of law, like an ordinary citizen.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "President, Vice President and Governor",
//           'questionId': "55",
//           'statements': [
//             {
//               'text': "The advice tendered by ministers to the Governor cannot be inquired into by any court.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The advice tendered by ministers to the Governor can be freely inquired into by any court whenever a citizen files a case.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "President, Vice President and Governor",
//           'questionId': "56",
//           'statements': [
//             {
//               'text': "A Governor continues to hold office beyond the expiry of the normal term of five years until a successor enters upon office.",
//               'isCorrect': true,
//             },
//             {
//               'text': "A Governor's office automatically falls vacant the instant the normal five-year term expires, even if no successor has yet been appointed.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "President, Vice President and Governor",
//           'questionId': "57",
//           'statements': [
//             {
//               'text': "The Governor of a State is appointed by the President of India, and is not directly elected by the people of the state.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Governor of a State is directly elected by the people of that state through a state-wide election.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "President, Vice President and Governor",
//           'questionId': "58",
//           'statements': [
//             {
//               'text': "The original Draft Constitution of India envisaged an elected Governor, but the Constituent Assembly ultimately adopted the system of appointment by the President.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The original Draft Constitution of India always envisaged a Governor appointed by the President, and an elected Governor was never considered by the Constituent Assembly.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "President, Vice President and Governor",
//           'questionId': "59",
//           'statements': [
//             {
//               'text': "The Council of Ministers of a State is collectively responsible to the State Legislative Assembly, not to the Governor.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Council of Ministers of a State is collectively responsible to the Governor, not to the State Legislative Assembly.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "President, Vice President and Governor",
//           'questionId': "60",
//           'statements': [
//             {
//               'text': "Under Article 163, the Governor generally acts on the advice of the Council of Ministers, except in matters where the Constitution requires him to exercise his discretion.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Under Article 163, the Governor acts entirely on his own discretion in all matters, and the advice of the Council of Ministers is never binding on him.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "President, Vice President and Governor",
//           'questionId': "61",
//           'statements': [
//             {
//               'text': "If a Governor is additionally appointed to administer a neighbouring Union Territory, he exercises those functions as Administrator independently of his State Council of Ministers.",
//               'isCorrect': true,
//             },
//             {
//               'text': "If a Governor is additionally appointed to administer a neighbouring Union Territory, he must exercise those functions strictly on the advice of his State Council of Ministers.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "President, Vice President and Governor",
//           'questionId': "62",
//           'statements': [
//             {
//               'text': "Under Article 167, the Chief Minister is required to furnish the Governor with information relating to the administration of the affairs of the state whenever the Governor calls for it.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Under Article 167, the Governor is barred from ever calling for information relating to the administration of the affairs of the state from the Chief Minister.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Prime Minister",
//           'questionId': "1",
//           'statements': [
//             {
//               'text': "If the President so requires, the Prime Minister shall submit for consideration of the Council of Ministers any matter on which a decision has been taken by a Minister but which has not been considered by the Council.",
//               'isCorrect': true,
//             },
//             {
//               'text': "If the President so requires, the Prime Minister shall not submit for consideration of the Council of Ministers any matter on which a decision has been taken by a Minister but which has not been considered by the Council.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Prime Minister",
//           'questionId': "2",
//           'statements': [
//             {
//               'text': "The Prime Minister has to communicate to the President all decisions of the Cabinet relating to administration and proposals for legislation.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Prime Minister is not required to communicate to the President any decisions of the Cabinet relating to administration or proposals for legislation.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Prime Minister",
//           'questionId': "3",
//           'statements': [
//             {
//               'text': "The Prime Minister heads the National Integration Council, National Water Resources Council, National Development Council and Inter-State Council.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Prime Minister does not head the National Integration Council, National Water Resources Council, National Development Council or Inter-State Council.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Prime Minister",
//           'questionId': "4",
//           'statements': [
//             {
//               'text': "The statement comparing the Prime Minister with the US President is attributed to B.R. Ambedkar.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The statement comparing the Prime Minister with the US President is attributed to Jawaharlal Nehru.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Prime Minister",
//           'questionId': "5",
//           'statements': [
//             {
//               'text': "It is the duty of the Prime Minister to communicate to the President all decisions of the Council of Ministers relating to the administration of the affairs of the Union.",
//               'isCorrect': true,
//             },
//             {
//               'text': "It is not the duty of the Prime Minister to communicate to the President decisions of the Council of Ministers relating to the administration of the affairs of the Union.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Prime Minister",
//           'questionId': "6",
//           'statements': [
//             {
//               'text': "Proposals for legislation are to be communicated to the President by the Prime Minister.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Proposals for legislation are not required to be communicated to the President by the Prime Minister.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Prime Minister",
//           'questionId': "7",
//           'statements': [
//             {
//               'text': "Munro called the Prime Minister “the captain of the ship of the state”.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Munro did not call the Prime Minister “the captain of the ship of the state”.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Prime Minister",
//           'questionId': "8",
//           'statements': [
//             {
//               'text': "Ramsay Muir became Prime Minister after being a Chief Minister.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Ramsay Muir became Prime Minister without previously serving as a Chief Minister.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Prime Minister",
//           'questionId': "9",
//           'statements': [
//             {
//               'text': "The Prime Minister has a free hand in the distribution of portfolios and can reshuffle the Ministers and ask any Minister to resign.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Prime Minister has no role in the distribution of portfolios and cannot reshuffle Ministers or ask any Minister to resign.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Prime Minister",
//           'questionId': "10",
//           'statements': [
//             {
//               'text': "Article 78 includes the duty of the Prime Minister to communicate to the President all decisions of the Council of Ministers relating to Union administration and proposals for legislation, and to submit matters for consideration of the Council of Ministers when required by the President.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Article 78 does not include the duty of the Prime Minister to communicate to the President decisions of the Council of Ministers relating to Union administration or proposals for legislation.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Comptroller and Auditor-General of India",
//           'questionId': "1",
//           'statements': [
//             {
//               'text': "The Comptroller and Auditor-General of India has no control over the issue of money from the Consolidated Fund of India, and the term of office of the CAG has been fixed by an Act enacted by Parliament.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Comptroller and Auditor-General of India has complete control over the issue of money from the Consolidated Fund of India, and the term of office of the CAG is fixed directly by the Constitution.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Comptroller and Auditor-General of India",
//           'questionId': "2",
//           'statements': [
//             {
//               'text': "The CAG's report includes examination of the income and expenditure of all public sector undertakings and constitutes the basis for scrutiny by the Public Accounts Committee of Parliament.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The CAG's report excludes the examination of the income and expenditure of public sector undertakings and does not form the basis for scrutiny by the Public Accounts Committee of Parliament.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Comptroller and Auditor-General of India",
//           'questionId': "3",
//           'statements': [
//             {
//               'text': "The CAG cannot be removed on the recommendation of the President alone.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The CAG can be removed from office by the President acting alone without following the procedure applicable to the removal of a Supreme Court Judge.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Comptroller and Auditor-General of India",
//           'questionId': "4",
//           'statements': [
//             {
//               'text': "The Comptroller and Auditor-General of India and the Public Accounts Committee perform watchdog functions in the financial management of the Government of India.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Comptroller and Auditor-General of India and the Public Accounts Committee have no role in overseeing the financial management of the Government of India.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Comptroller and Auditor-General of India",
//           'questionId': "5",
//           'statements': [
//             {
//               'text': "The CAG exercises administrative control over the offices of the auditors working in the states.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The CAG has no administrative control over the offices of the auditors working in the states.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Comptroller and Auditor-General of India",
//           'questionId': "6",
//           'statements': [
//             {
//               'text': "The CAG cannot disallow any expenditure which, in his opinion, violates the Constitution.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The CAG can disallow any expenditure which, in his opinion, violates the Constitution.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Comptroller and Auditor-General of India",
//           'questionId': "7",
//           'statements': [
//             {
//               'text': "The Comptroller and Auditor-General of India submits his audit reports to the President.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Comptroller and Auditor-General of India submits his audit reports directly to Parliament.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Comptroller and Auditor-General of India",
//           'questionId': "8",
//           'statements': [
//             {
//               'text': "Reports of the CAG relating to the accounts of a State are submitted to the Governor of the State.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Reports of the CAG relating to the accounts of a State are submitted directly to the President of India.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Comptroller and Auditor-General of India",
//           'questionId': "10",
//           'statements': [
//             {
//               'text': "The ultimate responsibility for taking due action on the comments of the CAG vests with Parliament.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The ultimate responsibility for taking due action on the comments of the CAG does not rest with Parliament.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Comptroller and Auditor-General of India",
//           'questionId': "11",
//           'statements': [
//             {
//               'text': "The CAG audits government expenditure and ensures that public expenditure conforms to government rules.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The CAG audits government expenditure but does not examine whether public expenditure conforms to government rules.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Comptroller and Auditor-General of India",
//           'questionId': "12",
//           'statements': [
//             {
//               'text': "The Comptroller and Auditor-General of India and the Chief Election Commissioner can be removed from office in like manner and on like grounds as a Judge of the Supreme Court.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Comptroller and Auditor-General of India and the Chief Election Commissioner can be removed from office by the President alone without the procedure applicable to the removal of a Supreme Court Judge.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Comptroller and Auditor-General of India",
//           'questionId': "13",
//           'statements': [
//             {
//               'text': "The annual report of the CAG is scrutinized in detail by the Public Accounts Committee.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The annual report of the CAG is not scrutinized by the Public Accounts Committee.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Comptroller and Auditor-General of India",
//           'questionId': "14",
//           'statements': [
//             {
//               'text': "The CAG cannot be removed on the same grounds as a Judge of a High Court.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The CAG can be removed from office on the same grounds as a Judge of a High Court.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Comptroller and Auditor-General of India",
//           'questionId': "15",
//           'statements': [
//             {
//               'text': "The CAG audits and reports on expenditure from the Consolidated Fund of India, Consolidated Fund of each State, Contingency Fund of India and Public Account of India.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The CAG does not audit or report on expenditure from the Consolidated Fund of India, Consolidated Fund of each State, Contingency Fund of India or Public Account of India.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Comptroller and Auditor-General of India",
//           'questionId': "16",
//           'statements': [
//             {
//               'text': "The duties of the CAG include auditing and reporting on receipts and expenditure of bodies substantially financed from Union or State revenues and auditing state receipts and expenditure to ensure effective checks on assessment, collection and proper allocation of revenue.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The duties of the CAG exclude auditing receipts and expenditure of bodies substantially financed from Union or State revenues and do not include auditing state receipts and expenditure.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Attorney General and Solicitor General of India",
//           'questionId': "1",
//           'statements': [
//             {
//               'text': "The Attorney General of India shall have the right of audience in all the courts within the territory of India.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Attorney General of India shall have the right of audience only in the Supreme Court and not in other courts within the territory of India.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Attorney General and Solicitor General of India",
//           'questionId': "2",
//           'statements': [
//             {
//               'text': "The Attorney General of India is the first Law Officer of the Government of India.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Attorney General of India is the second Law Officer of the Government of India.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Attorney General and Solicitor General of India",
//           'questionId': "3",
//           'statements': [
//             {
//               'text': "The Attorney General of India holds his office at the pleasure of the President.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Attorney General of India holds office for a fixed term of five years.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Attorney General and Solicitor General of India",
//           'questionId': "4",
//           'statements': [
//             {
//               'text': "The Attorney General of India can attend the meetings of both Houses of Parliament while being not a member of either House.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Attorney General of India can attend meetings of Parliament only when he is a member of either House.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Attorney General and Solicitor General of India",
//           'questionId': "5",
//           'statements': [
//             {
//               'text': "Article 76 of the Constitution of India provides for the office of the Attorney General of India.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Article 78 of the Constitution of India provides for the office of the Attorney General of India.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Attorney General and Solicitor General of India",
//           'questionId': "6",
//           'statements': [
//             {
//               'text': "The remuneration of the Attorney General of India is determined by the President of India.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The remuneration of the Attorney General of India is determined by Parliament and not by the President of India.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Attorney General and Solicitor General of India",
//           'questionId': "7",
//           'statements': [
//             {
//               'text': "The Solicitor General of India provides assistance to the Attorney General of India.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Solicitor General of India does not provide assistance to the Attorney General of India.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Advocate General of the State",
//           'questionId': "1",
//           'statements': [
//             {
//               'text': "A person who is qualified to be appointed as a judge of a High Court can be appointed as the Advocate General of a State.",
//               'isCorrect': true,
//             },
//             {
//               'text': "A person who is qualified to be appointed as a judge of a High Court cannot be appointed as the Advocate General of a State.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Advocate General of the State",
//           'questionId': "2",
//           'statements': [
//             {
//               'text': "The Advocate General can take part in the proceedings of the State Legislative Assembly and advises the State Government on legal matters.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Advocate General cannot take part in the proceedings of the State Legislative Assembly and does not advise the State Government on legal matters.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Advocate General of the State",
//           'questionId': "3",
//           'statements': [
//             {
//               'text': "The Advocate General of a State enjoys all the privileges and immunities available to a member of the State Legislature.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Advocate General of a State enjoys all the privileges and immunities available to a member of the State Legislature.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Advocate General of the State",
//           'questionId': "4",
//           'statements': [
//             {
//               'text': "Article 165 of the Constitution of India provides for the office of the Advocate General of the States.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Article 167 of the Constitution of India provides for the office of the Advocate General of a State.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Advocate General of the State",
//           'questionId': "5",
//           'statements': [
//             {
//               'text': "The term of office of the Advocate General of a State is not fixed.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The term of office of the Advocate General of a State is fixed at five years.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Advocate General of the State",
//           'questionId': "6",
//           'statements': [
//             {
//               'text': "The remuneration of the Advocate General of a State is determined by the State Governor.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The remuneration of the Advocate General of a State is determined by the State Legislature.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Planning Commission",
//           'questionId': "1",
//           'statements': [
//             {
//               'text': "The Planning Commission was established to assess national resources and plan for their effective and balanced use.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Planning Commission was established only to prepare the Union Budget and had no role in assessing national resources or planning their effective use.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Planning Commission",
//           'questionId': "2",
//           'statements': [
//             {
//               'text': "Some Union Cabinet Ministers were part-time members of the Planning Commission, and the number of whole-time expert members varied.",
//               'isCorrect': true,
//             },
//             {
//               'text': "No Union Cabinet Minister could be a part-time member of the Planning Commission, and the number of whole-time expert members was permanently fixed at two.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Planning Commission",
//           'questionId': "3",
//           'statements': [
//             {
//               'text': "Making recommendations to the President of India regarding the distribution of proceeds of taxes between the Union and the States was not a function of the Planning Commission.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Making recommendations to the President of India regarding the distribution of proceeds of taxes between the Union and the States was one of the main functions of the Planning Commission.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Planning Commission",
//           'questionId': "4",
//           'statements': [
//             {
//               'text': "The Planning Commission was a staff agency.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Planning Commission was a statutory body created by an Act of Parliament.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Planning Commission",
//           'questionId': "5",
//           'statements': [
//             {
//               'text': "K. Santhanam stated that planning had superseded the Federation and that the country was functioning like a unitary system in many respects.",
//               'isCorrect': true,
//             },
//             {
//               'text': "K. Santhanam stated that planning had strengthened the federal system and had made India function more like a federation in all respects.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Planning Commission",
//           'questionId': "6",
//           'statements': [
//             {
//               'text': "The Planning Commission did not have statutory oversight over public expenditure.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Planning Commission had statutory oversight over all public expenditure in India.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Planning Commission",
//           'questionId': "7",
//           'statements': [
//             {
//               'text': "Execution of development plans was not a function of the Planning Commission.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Execution of development plans was an exclusive function of the Planning Commission.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Planning Commission",
//           'questionId': "8",
//           'statements': [
//             {
//               'text': "The Planning Commission was set up by a Cabinet Resolution.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Planning Commission was established through an Act passed by Parliament.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Planning Commission",
//           'questionId': "9",
//           'statements': [
//             {
//               'text': "The role of the Finance Commission in Centre-State fiscal relations was undermined by the Planning Commission.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The role of the Finance Commission in Centre-State fiscal relations was strengthened by the Planning Commission.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Planning Commission",
//           'questionId': "10",
//           'statements': [
//             {
//               'text': "The Planning Commission was created by an executive order.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Planning Commission was created by a constitutional provision under Article 280.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Planning Commission",
//           'questionId': "11",
//           'statements': [
//             {
//               'text': "The various Central Ministries and State Governments did not draw up their own plans irrespective of the allocation received.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The various Central Ministries and State Governments were required to stop preparing their own plans after receiving allocations from the Planning Commission.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "National Development Council",
//           'questionId': "1",
//           'statements': [
//             {
//               'text': "The functions of the National Development Council include prescribing guidelines for preparation of the National Plan, reviewing periodically the working of the National Plan, and recommending measures for achieving the aims and targets set out in the National Plan.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The functions of the National Development Council do not include prescribing guidelines for preparation of the National Plan, reviewing its working, or recommending measures for achieving the aims and targets of the National Plan.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "National Development Council",
//           'questionId': "2",
//           'statements': [
//             {
//               'text': "The National Development Council was set up as per the recommendations of the Planning Commission.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The National Development Council was established through an Act passed by Parliament.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "National Development Council",
//           'questionId': "3",
//           'statements': [
//             {
//               'text': "The objective of the National Development Council is to approve the Five-Year Plan made by the Planning Commission with inputs from the Union and State Governments.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The objective of the National Development Council is to reject the Five-Year Plan prepared by the Planning Commission without considering inputs from the Union and State Governments.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "National Development Council",
//           'questionId': "4",
//           'statements': [
//             {
//               'text': "The National Development Council is the highest policy-making body in matters relating to National Planning.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The National Development Council is not regarded as the highest policy-making body in matters relating to National Planning.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "National Development Council",
//           'questionId': "5",
//           'statements': [
//             {
//               'text': "The National Development Council is not explicitly provided for in the Constitution of India.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The National Development Council is explicitly provided for in the Constitution of India under Article 280.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "National Development Council",
//           'questionId': "6",
//           'statements': [
//             {
//               'text': "The first and foremost function of the National Development Council is to effect coordination of plan efforts among the Union Government, the Planning Commission and the State Governments.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The first and foremost function of the National Development Council is to prevent coordination of plan efforts among the Union Government, the Planning Commission and the State Governments.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "National Human Rights Commission",
//           'questionId': "1",
//           'statements': [
//             {
//               'text': "The National Human Rights Commission is the watchdog of human rights in the country and is an independent body.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The National Human Rights Commission is a constitutional body and is not an independent institution for protecting human rights in the country.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "National Human Rights Commission",
//           'questionId': "2",
//           'statements': [
//             {
//               'text': "The chairman and members of the National Human Rights Commission are appointed on the recommendations of a committee consisting of the Speaker of the Lok Sabha, Deputy Chairman of the Rajya Sabha, Leaders of the Opposition in both Houses, the Prime Minister, and the Union Home Minister.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The chairman and members of the National Human Rights Commission are appointed solely by the Prime Minister without any recommendation from a selection committee.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "National Human Rights Commission",
//           'questionId': "3",
//           'statements': [
//             {
//               'text': "The ex-officio members of the National Human Rights Commission include the Chairpersons of the National Commission for Minorities, National Commission for SCs, National Commission for STs, and National Commission for Women.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The ex-officio members of the National Human Rights Commission include only the Chairpersons of the National Commission for Minorities and the National Commission for Women.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "National Human Rights Commission",
//           'questionId': "4",
//           'statements': [
//             {
//               'text': "Only a retired Chief Justice of India can be the Chairperson of the National Human Rights Commission.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Only a retired Judge of the Supreme Court can be the Chairperson of the National Human Rights Commission.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "National Human Rights Commission",
//           'questionId': "5",
//           'statements': [
//             {
//               'text': "The Human Rights Protection Law was passed in India in 1993.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Protection of Human Rights Act was passed in India in 1995.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "National Human Rights Commission",
//           'questionId': "6",
//           'statements': [
//             {
//               'text': "The salaries, allowances and other service conditions of the members of the National Human Rights Commission are determined by the Central Government.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The salaries, allowances and other service conditions of the members of the National Human Rights Commission are determined by the President of India.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "National Human Rights Commission",
//           'questionId': "7",
//           'statements': [
//             {
//               'text': "The National Human Rights Commission consists of a chairman and five members.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The National Human Rights Commission consists of a chairperson and two members.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "National Human Rights Commission",
//           'questionId': "8",
//           'statements': [
//             {
//               'text': "The chairman of the National Human Rights Commission holds office for five years or until the age of 70 years, whichever is earlier.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The chairperson of the National Human Rights Commission holds office for three years or until the age of 65 years, whichever is earlier.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "National Human Rights Commission",
//           'questionId': "9",
//           'statements': [
//             {
//               'text': "The National Human Rights Commission was established through an Act of Parliament.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The National Human Rights Commission was established through a constitutional amendment and not through an Act of Parliament.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "National Human Rights Commission",
//           'questionId': "10",
//           'statements': [
//             {
//               'text': "The National Human Rights Commission is not a constitutional body and is a statutory body.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The National Human Rights Commission is a constitutional body and not a statutory body.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Union Territories",
//           'questionId': "1",
//           'statements': [
//             {
//               'text': "An administrator of a Union Territory is an agent of the President of India and not a head of state like a Governor, and Parliament can make laws on any subject of the three lists, including the State List, for Union Territories.",
//               'isCorrect': true,
//             },
//             {
//               'text': "An administrator of a Union Territory is the constitutional head of the territory like a Governor, and Parliament cannot make laws on subjects in the State List for Union Territories.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Union Territories",
//           'questionId': "2",
//           'statements': [
//             {
//               'text': "The President can make regulations for the peace, progress and good government of the Andaman and Nicobar Islands, Lakshadweep, Dadra and Nagar Haveli, and Daman and Diu.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The President can make regulations for the peace, progress and good government only of Delhi and Puducherry and not of the other Union Territories mentioned in the Constitution.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Union Territories",
//           'questionId': "3",
//           'statements': [
//             {
//               'text': "Articles 239 to 241 and Part VIII of the Constitution contain provisions regarding Union Territories.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Articles 245 to 250 and Part VII of the Constitution contain provisions regarding Union Territories.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Union Territories",
//           'questionId': "4",
//           'statements': [
//             {
//               'text': "The Part C and Part D states were constituted as Union Territories by the 7th Constitutional Amendment Act.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Part C and Part D states were constituted as Union Territories by the 1st Constitutional Amendment Act.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Union Territories",
//           'questionId': "5",
//           'statements': [
//             {
//               'text': "Union Territories were created for reasons including special treatment of tribal people, cultural distinctiveness, strategic importance, care of backward people, and political and administrative considerations.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Union Territories were created only for administrative convenience and not for reasons such as cultural distinctiveness, strategic importance or political considerations.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Union Territories",
//           'questionId': "6",
//           'statements': [
//             {
//               'text': "Parliament can put a Union Territory under the jurisdiction of the High Court of an adjacent state.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Parliament cannot place a Union Territory under the jurisdiction of the High Court of an adjacent state.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Union Territories",
//           'questionId': "7",
//           'statements': [
//             {
//               'text': "Delhi is the Union Territory that has a High Court of its own.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Puducherry is the Union Territory that has a High Court of its own.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Union Territories",
//           'questionId': "8",
//           'statements': [
//             {
//               'text': "In the case of Puducherry, the President of India can legislate by making regulations when the Assembly is suspended or dissolved.",
//               'isCorrect': true,
//             },
//             {
//               'text': "In the case of Puducherry, the President of India cannot legislate by making regulations when the Assembly is suspended or dissolved.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Union Territories",
//           'questionId': "9",
//           'statements': [
//             {
//               'text': "The constitutional provisions for the administration of Union Territories also apply to acquired territories.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The constitutional provisions for the administration of Union Territories do not apply to territories acquired by India.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Scheduled and Tribal Areas",
//           'questionId': "1",
//           'statements': [
//             {
//               'text': "The President of India is empowered to declare an area to be a Scheduled Area.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Governor of the state is empowered to declare an area to be a Scheduled Area.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Scheduled and Tribal Areas",
//           'questionId': "2",
//           'statements': [
//             {
//               'text': "The Sixth Schedule makes special administrative provisions for tribal areas in Assam, Meghalaya, Tripura and Mizoram.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Sixth Schedule makes special administrative provisions only for tribal areas in Assam and Meghalaya.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Scheduled and Tribal Areas",
//           'questionId': "3",
//           'statements': [
//             {
//               'text': "The maximum number of members in a Tribes Advisory Council is 20.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The maximum number of members in a Tribes Advisory Council is 30.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Scheduled and Tribal Areas",
//           'questionId': "4",
//           'statements': [
//             {
//               'text': "The Governor, in consultation with existing tribal councils or other representative tribal organizations of the region, prepares the rules for the first constitution of district and regional councils.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The President, without consultation with tribal councils or representative tribal organizations, prepares the rules for the first constitution of district and regional councils.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Scheduled and Tribal Areas",
//           'questionId': "5",
//           'statements': [
//             {
//               'text': "Article 244 envisages a special system of administration for Scheduled Areas and Tribal Areas.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Article 244 does not provide for any special system of administration for Scheduled Areas and Tribal Areas.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Scheduled and Tribal Areas",
//           'questionId': "6",
//           'statements': [
//             {
//               'text': "The Governor of the state can appoint a commission to examine and report on matters relating to the administration of autonomous districts or regions.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Governor of the state cannot appoint a commission to examine and report on matters relating to the administration of autonomous districts or regions.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Scheduled and Tribal Areas",
//           'questionId': "7",
//           'statements': [
//             {
//               'text': "The Fifth Schedule deals with the administration and control of Scheduled Areas and Scheduled Tribes.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Fifth Schedule deals only with the administration of Union Territories and does not contain provisions relating to Scheduled Areas or Scheduled Tribes.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Scheduled and Tribal Areas",
//           'questionId': "8",
//           'statements': [
//             {
//               'text': "The autonomous district council under the Sixth Schedule is not operative in Nagaland.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The autonomous district council under the Sixth Schedule is fully operative in Nagaland.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Scheduled and Tribal Areas",
//           'questionId': "9",
//           'statements': [
//             {
//               'text': "Four members of a District Council are nominated by the Governor of the state.",
//               'isCorrect': true,
//             },
//             {
//               'text': "All members of a District Council are directly elected by the people, and none are nominated by the Governor.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Scheduled and Tribal Areas",
//           'questionId': "10",
//           'statements': [
//             {
//               'text': "The Governor of the state is empowered to direct that a law of Parliament does not apply to a Scheduled Area.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The President of India is empowered to direct that a law of Parliament does not apply to a Scheduled Area.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Elections, Election Commission and RPA",
//           'questionId': "1",
//           'statements': [
//             {
//               'text': "The number of Election Commissioners in the Election Commission shall be fixed by the President from time to time.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The number of Election Commissioners in the Election Commission is permanently fixed at three by the Constitution.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Elections, Election Commission and RPA",
//           'questionId': "2",
//           'statements': [
//             {
//               'text': "The term of office of the Election Commissioners is the same as that of the Chairman of the Union Public Service Commission, and Article 324 ensures the independence of the Election Commission and its insulation from executive interference.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The term of office of the Election Commissioners is the same as that of the Attorney General of India, and Article 324 makes the Election Commission subordinate to executive interference.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Elections, Election Commission and RPA",
//           'questionId': "3",
//           'statements': [
//             {
//               'text': "The Election Commission of India can order adjournment of a poll or countermanding of an election on the ground of booth capturing in Lok Sabha elections.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Election Commission of India cannot order adjournment of a poll or countermand an election on the ground of booth capturing in Lok Sabha elections.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Elections, Election Commission and RPA",
//           'questionId': "4",
//           'statements': [
//             {
//               'text': "The Chief Election Commissioner holds office for six years or until the age of 65 years, whichever is earlier.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Chief Election Commissioner holds office for five years or until the age of 60 years, whichever is earlier.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Elections, Election Commission and RPA",
//           'questionId': "5",
//           'statements': [
//             {
//               'text': "An Election Commissioner shall not be removed from office except on the recommendation of the Chief Election Commissioner.",
//               'isCorrect': true,
//             },
//             {
//               'text': "An Election Commissioner can be removed from office by the President without the recommendation of the Chief Election Commissioner.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Elections, Election Commission and RPA",
//           'questionId': "6",
//           'statements': [
//             {
//               'text': "Before deciding questions about the disqualification of a member of either House of Parliament, the President of India shall obtain the opinion of the Election Commission.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Before deciding questions about the disqualification of a member of either House of Parliament, the President of India is not required to obtain the opinion of the Election Commission.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Elections, Election Commission and RPA",
//           'questionId': "7",
//           'statements': [
//             {
//               'text': "The Chief Election Commissioner can be removed from office before expiry of the term in like manner and on like grounds as a Judge of the Supreme Court.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Chief Election Commissioner can be removed from office by the President at any time without following the procedure applicable to the removal of a Supreme Court Judge.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Elections, Election Commission and RPA",
//           'questionId': "8",
//           'statements': [
//             {
//               'text': "India's electoral system for the Lok Sabha and most state assemblies is based on single-member constituencies and the first-past-the-post system, and Parliament itself is bicameral.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The first general (parliamentary) elections in India were held in 1950, immediately upon the Constitution coming into force.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Elections, Election Commission and RPA",
//           'questionId': "9",
//           'statements': [
//             {
//               'text': "Under Article 329(a) of the Constitution, courts are debarred from questioning the validity of laws relating to the delimitation of constituencies and the allotment of seats to such constituencies.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Courts in India are fully empowered to entertain challenges to the delimitation of constituencies and the allotment of seats to constituencies.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Elections, Election Commission and RPA",
//           'questionId': "10",
//           'statements': [
//             {
//               'text': "The registration of political parties in India is done as per the provisions of the Representation of the People Act, 1951, by the Election Commission.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The registration of political parties in India is done directly under Article 324 of the Constitution, without reference to any statute passed by Parliament.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Elections, Election Commission and RPA",
//           'questionId': "11",
//           'statements': [
//             {
//               'text': "The area of a Lok Sabha constituency for the purpose of general elections is determined by the Delimitation Commission.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The area of a Lok Sabha constituency for the purpose of general elections is determined by the Election Commission of India.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Elections, Election Commission and RPA",
//           'questionId': "12",
//           'statements': [
//             {
//               'text': "The electoral process in a democracy like India serves to keep the government responsive to the popular will, bring together citizens to choose their public decision-makers, and enable the periodic change of government where necessary.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The electoral process in a democracy like India serves no function in keeping the government responsive to the popular will or enabling periodic change of government.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Elections, Election Commission and RPA",
//           'questionId': "13",
//           'statements': [
//             {
//               'text': "The 'first-past-the-post' electoral system prevalent in India means that the candidate securing the most votes cast in a single-member constituency is declared elected, without requiring an absolute majority.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The 'first-past-the-post' electoral system prevalent in India requires the winning candidate to secure an absolute majority of votes cast in the constituency.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Elections, Election Commission and RPA",
//           'questionId': "14",
//           'statements': [
//             {
//               'text': "The Representation of the People (Amendment) Act, 2003, made it mandatory for political parties to report to the Election Commission all contributions received above Rs. 20,000.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Representation of the People (Amendment) Act, 2003, introduced an open ballot system for elections to the Council of States (Rajya Sabha).",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Elections, Election Commission and RPA",
//           'questionId': "15",
//           'statements': [
//             {
//               'text': "The Indrajit Gupta Committee is related to the subject of state funding of elections.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Indrajit Gupta Committee is related to the subject of the anti-defection law.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Elections, Election Commission and RPA",
//           'questionId': "16",
//           'statements': [
//             {
//               'text': "Electronic Voting Machines (EVMs) were used for the first time in an entire state's Legislative Assembly elections in 1999, in the state of Goa.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Electronic Voting Machines (EVMs) were used for the first time in an entire state's Legislative Assembly elections in 1999, in the state of Kerala.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Union Public Service Commission",
//           'questionId': "1",
//           'statements': [
//             {
//               'text': "The President of India is empowered to make regulations specifying matters on which it is not necessary to consult the Union Public Service Commission, and the reasons for non-acceptance of UPSC advice have to be laid before each House of Parliament.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The President of India has no power to make regulations specifying matters on which it is not necessary to consult the Union Public Service Commission, and the reasons for non-acceptance of UPSC advice need not be laid before either House of Parliament.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Union Public Service Commission",
//           'questionId': "2",
//           'statements': [
//             {
//               'text': "The functions of the UPSC include conducting examinations for recruitment to Union services, advising on disciplinary matters affecting government servants, and advising on principles for promotions and transfers.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The functions of the UPSC do not include conducting examinations for recruitment to Union services or advising on disciplinary matters, promotions or transfers.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Union Public Service Commission",
//           'questionId': "3",
//           'statements': [
//             {
//               'text': "A member of the UPSC is debarred from re-appointment as a member and is ineligible for any other employment under the Central or State Government.",
//               'isCorrect': true,
//             },
//             {
//               'text': "A member of the UPSC can be re-appointed as a member after completing the term and is eligible for any other employment under the Central or State Government.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Union Public Service Commission",
//           'questionId': "4",
//           'statements': [
//             {
//               'text': "The Chairperson and other members of the UPSC are appointed by the President of India.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Chairperson and other members of the UPSC are appointed by the Prime Minister of India.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Union Public Service Commission",
//           'questionId': "5",
//           'statements': [
//             {
//               'text': "Parliament has the power to extend the functions of the Union Public Service Commission.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Parliament has no power to extend the functions of the Union Public Service Commission beyond those specified in the Constitution.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Union Public Service Commission",
//           'questionId': "6",
//           'statements': [
//             {
//               'text': "The Chairman of the Union Public Service Commission is a constitutional authority whose removal from office by the President requires a reference to the Supreme Court.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Chairman of the UPSC is an ordinary government employee whose removal by the President does not require any reference to the Supreme Court.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Union Public Service Commission",
//           'questionId': "7",
//           'statements': [
//             {
//               'text': "The UPSC may serve the needs of a state if requested by the Governor of that state and approved by the President.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The UPSC cannot serve the needs of a state even if requested by the Governor and approved by the President.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Union Public Service Commission",
//           'questionId': "8",
//           'statements': [
//             {
//               'text': "The UPSC shall be consulted in cases relating to the reservation of posts for Backward Classes, Scheduled Castes and Scheduled Tribes.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The UPSC shall not be consulted in cases relating to the reservation of posts for Backward Classes, Scheduled Castes and Scheduled Tribes.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Union Public Service Commission",
//           'questionId': "9",
//           'statements': [
//             {
//               'text': "A member of the UPSC is ineligible to be appointed as the Chairman of a State Public Service Commission after ceasing to hold office.",
//               'isCorrect': true,
//             },
//             {
//               'text': "A member of the UPSC can be appointed as the Chairman of a State Public Service Commission after ceasing to hold office.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Union Public Service Commission",
//           'questionId': "10",
//           'statements': [
//             {
//               'text': "Classification of services does not concern the Union Public Service Commission.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Classification of services is one of the matters that directly concerns the Union Public Service Commission.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Union Public Service Commission",
//           'questionId': "11",
//           'statements': [
//             {
//               'text': "The annual report of the UPSC is submitted to the President of India.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The annual report of the UPSC is submitted directly to the Prime Minister of India.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Union Public Service Commission",
//           'questionId': "12",
//           'statements': [
//             {
//               'text': "A member of the UPSC is appointed by the President of India and is ineligible for re-appointment to that office.",
//               'isCorrect': true,
//             },
//             {
//               'text': "A member of the UPSC can be re-appointed to the same office for another term after completing the first term.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Union Public Service Commission",
//           'questionId': "13",
//           'statements': [
//             {
//               'text': "The President of India has the power to make regulations regarding the conditions of service of members and staff of the UPSC.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The President of India has no power to make regulations regarding the conditions of service of members and staff of the UPSC.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Union Public Service Commission",
//           'questionId': "14",
//           'statements': [
//             {
//               'text': "Immediately before 26 January 1950, the Union Public Service Commission was known as the Federal Public Service Commission.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Immediately before 26 January 1950, the Union Public Service Commission was known as the State Public Service Commission.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Union Public Service Commission",
//           'questionId': "15",
//           'statements': [
//             {
//               'text': "Article 320 of the Constitution of India provides for the government to seek the advice of the UPSC.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Article 320 of the Constitution of India does not provide for the government to seek the advice of the UPSC.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Union Public Service Commission",
//           'questionId': "16",
//           'statements': [
//             {
//               'text': "The UPSC advises the central government on methods of recruitment to civil services, principles for appointments, disciplinary matters, and seniority cases when referred to it.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The UPSC does not advise the central government on methods of recruitment, principles for appointments, disciplinary matters or seniority cases.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "State Public Service Commission",
//           'questionId': "1",
//           'statements': [
//             {
//               'text': "The State Public Service Commission is consulted on all matters relating to methods of recruitment to civil services and civil posts in the state and on all disciplinary matters affecting a person in service under the state.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The State Public Service Commission is not consulted on matters relating to methods of recruitment to civil services and civil posts in the state or on disciplinary matters affecting persons in state service.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "State Public Service Commission",
//           'questionId': "2",
//           'statements': [
//             {
//               'text': "A member of the State Public Service Commission can be removed by the President on the ground of infirmity of body or mind or on the ground of misbehaviour after receiving the report of the Supreme Court following due inquiry.",
//               'isCorrect': true,
//             },
//             {
//               'text': "A member of the State Public Service Commission can be removed by the Governor on the ground of infirmity of body or mind or misbehaviour without any inquiry or report from the Supreme Court.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "State Public Service Commission",
//           'questionId': "3",
//           'statements': [
//             {
//               'text': "The Constitution provides for Public Service Commissions for the Union, for each state, and a Joint Public Service Commission for two or more states.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Constitution provides for Public Service Commissions only for the Union and does not provide for State or Joint Public Service Commissions.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "State Public Service Commission",
//           'questionId': "4",
//           'statements': [
//             {
//               'text': "Consultation with the State Public Service Commission is not required regarding the manner in which provisions may be made for reservation of appointments or posts in favour of any backward class of citizens.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Consultation with the State Public Service Commission is required regarding provisions for reservation of appointments or posts in favour of any backward class of citizens.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "State Public Service Commission",
//           'questionId': "5",
//           'statements': [
//             {
//               'text': "The Union Public Service Commission may agree to serve all or any of the needs of a state on the request of the Governor of the state, subject to the approval of the President of India.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Union Public Service Commission cannot agree to serve the needs of a state even when requested by the Governor and approved by the President of India.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "State Public Service Commission",
//           'questionId': "7",
//           'statements': [
//             {
//               'text': "The State Public Service Commission submits its annual report to the Governor.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The State Public Service Commission submits its annual report directly to the President of India.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "State Public Service Commission",
//           'questionId': "8",
//           'statements': [
//             {
//               'text': "When the report of the State Public Service Commission is not accepted, the reasons for such non-acceptance are laid before the State Legislature.",
//               'isCorrect': true,
//             },
//             {
//               'text': "When the report of the State Public Service Commission is not accepted, the reasons for such non-acceptance are not required to be laid before the State Legislature.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "State Public Service Commission",
//           'questionId': "9",
//           'statements': [
//             {
//               'text': "The salaries, allowances and other service conditions of State Public Service Commission members are determined by the Governor.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The salaries, allowances and other service conditions of State Public Service Commission members are determined by the President of India.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "State Public Service Commission",
//           'questionId': "10",
//           'statements': [
//             {
//               'text': "A member of the State Public Service Commission can be removed on the ground of misbehaviour only after an inquiry has been held by the Supreme Court of India.",
//               'isCorrect': true,
//             },
//             {
//               'text': "A member of the State Public Service Commission can be removed on the ground of misbehaviour by the Governor without an inquiry by the Supreme Court of India.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "State Public Service Commission",
//           'questionId': "11",
//           'statements': [
//             {
//               'text': "Parliament may provide by law for the appointment of a Joint State Public Service Commission when a resolution to that effect is passed by the legislatures of the concerned states.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Parliament cannot provide by law for the appointment of a Joint State Public Service Commission even when the legislatures of the concerned states pass resolutions requesting it.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Joint State Public Service Commission",
//           'questionId': "6",
//           'statements': [
//             {
//               'text': "A Joint Public Service Commission for two or more states can be established by an Act of Parliament.",
//               'isCorrect': true,
//             },
//             {
//               'text': "A Joint Public Service Commission for two or more states can be established only by the President and not by an Act of Parliament.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Finance Commission",
//           'questionId': "1",
//           'statements': [
//             {
//               'text': "The Finance Commission makes recommendations to the President regarding the distribution between the Union and States of the net proceeds of taxes and the principles governing grants-in-aid of the revenues of the States from the Consolidated Fund of India.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Finance Commission does not make recommendations to the President regarding the distribution between the Union and States of the net proceeds of taxes or the principles governing grants-in-aid to the States.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Finance Commission",
//           'questionId': "2",
//           'statements': [
//             {
//               'text': "The recommendations of the Finance Commission cover a period of five years.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The recommendations of the Finance Commission cover a period of ten years.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Finance Commission",
//           'questionId': "3",
//           'statements': [
//             {
//               'text': "All members of the Finance Commission do not have to be from the Indian Economic Service or Indian Statistical Service.",
//               'isCorrect': true,
//             },
//             {
//               'text': "All members of the Finance Commission are required to be from the Indian Economic Service or Indian Statistical Service.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Finance Commission",
//           'questionId': "4",
//           'statements': [
//             {
//               'text': "The Finance Commission recommends principles governing grants-in-aid to the States and measures to augment the Consolidated Fund of a State to supplement the resources of Panchayats and Municipalities.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Finance Commission does not recommend measures to augment the Consolidated Fund of a State to supplement the resources of Panchayats and Municipalities.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Finance Commission",
//           'questionId': "5",
//           'statements': [
//             {
//               'text': "The Finance Commission is constituted under the provisions of Article 280 of the Constitution of India.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Finance Commission is constituted under Article 300 of the Constitution of India.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Finance Commission",
//           'questionId': "6",
//           'statements': [
//             {
//               'text': "The role of the Finance Commission in Centre-State fiscal relations has been undermined by the Planning Commission.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The role of the Finance Commission in Centre-State fiscal relations has been strengthened by the Planning Commission.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Finance Commission",
//           'questionId': "7",
//           'statements': [
//             {
//               'text': "The Finance Commission recommends principles governing grants-in-aid to the States and measures to augment the Consolidated Fund of a State to supplement the resources of Panchayats and Municipalities.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Finance Commission does not recommend principles governing grants-in-aid to the States or measures to augment the Consolidated Fund of a State for Panchayats and Municipalities.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Finance Commission",
//           'questionId': "8",
//           'statements': [
//             {
//               'text': "The Finance Commission recommends the distribution of specified taxes without the surcharge between the Union and the States.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Finance Commission recommends the distribution of specified taxes including the surcharge between the Union and the States.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Finance Commission",
//           'questionId': "9",
//           'statements': [
//             {
//               'text': "The Finance Commission recommends the principles concerning the provision of grants-in-aid to the States out of the Consolidated Fund of India.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Finance Commission does not recommend principles concerning grants-in-aid to the States out of the Consolidated Fund of India.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Finance Commission",
//           'questionId': "10",
//           'statements': [
//             {
//               'text': "The Finance Commission is constituted to recommend criteria for the distribution of financial resources between the Union and the States.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Finance Commission is not constituted to recommend criteria for the distribution of financial resources between the Union and the States.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Finance Commission",
//           'questionId': "11",
//           'statements': [
//             {
//               'text': "The Finance Commission makes recommendations to the President regarding the distribution of net proceeds of taxes between the Union and States, the principles governing grants-in-aid to the States, and other matters concerning financial relations between the Union and States.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Finance Commission does not make recommendations to the President regarding tax distribution, grants-in-aid, or other matters concerning financial relations between the Union and States.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Finance Commission",
//           'questionId': "12",
//           'statements': [
//             {
//               'text': "The qualifications for the members of the Finance Commission can be prescribed by Parliament.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The qualifications for the members of the Finance Commission cannot be prescribed by Parliament.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Finance Commission",
//           'questionId': "13",
//           'statements': [
//             {
//               'text': "The Finance Commission recommends the distribution of revenue resources between the Union and States and is appointed every fifth year by the President of India.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Finance Commission is appointed every tenth year by the President of India to recommend the distribution of revenue resources between the Union and States.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "National Commission for SCs.",
//           'questionId': "1",
//           'statements': [
//             {
//               'text': "The first National Commission for Scheduled Castes and Scheduled Tribes was constituted in 1992 under the Constitution (Sixty-fifth Amendment) Act.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The first National Commission for Scheduled Castes and Scheduled Tribes was constituted in 1992 under the Constitution (Seventy-third Amendment) Act.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "National Commission for SCs.",
//           'questionId': "2",
//           'statements': [
//             {
//               'text': "The Finance Commission, National Commission for Scheduled Castes, and Commission to investigate the conditions of Backward Classes were created under the provisions of the Constitution of India.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Finance Commission, National Commission for Scheduled Castes, and Commission to investigate the conditions of Backward Classes were created entirely outside the provisions of the Constitution of India.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "National Commission for SCs.",
//           'questionId': "3",
//           'statements': [
//             {
//               'text': "The President of India places the annual report of the National Commission for Scheduled Castes before Parliament.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The annual report of the National Commission for Scheduled Castes is placed before Parliament by the Prime Minister of India.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "National Commission for SCs.",
//           'questionId': "4",
//           'statements': [
//             {
//               'text': "Article 338 of the Constitution of India deals with the National Commission for Scheduled Castes.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Article 338A of the Constitution of India deals with the National Commission for Scheduled Castes.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "National Commission for SCs.",
//           'questionId': "5",
//           'statements': [
//             {
//               'text': "The National Commission for Scheduled Castes consists of a Chairperson, a Vice-Chairperson and three other members.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The National Commission for Scheduled Castes consists only of a Chairperson and a Vice-Chairperson, with no other members.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "National Commission for SCs.",
//           'questionId': "6",
//           'statements': [
//             {
//               'text': "The separate National Commission for Scheduled Castes came into existence in 2004.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The separate National Commission for Scheduled Castes came into existence in 2010.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "National Commission for SCs.",
//           'questionId': "7",
//           'statements': [
//             {
//               'text': "The conditions of service of the members of the National Commission for Scheduled Castes are determined by the President of India.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The conditions of service of the members of the National Commission for Scheduled Castes are determined by the Parliament and not by the President of India.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "National Commission for STs",
//           'questionId': "1",
//           'statements': [
//             {
//               'text': "The National Commission for Scheduled Tribes was constituted under the Constitution (Eighty-ninth Amendment) Act.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The National Commission for Scheduled Tribes was constituted under the Constitution (Ninety-first Amendment) Act.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "National Commission for STs",
//           'questionId': "2",
//           'statements': [
//             {
//               'text': "The National Commission for Scheduled Tribes is a Constitutional body.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The National Commission for Scheduled Tribes is a statutory body established by an Act of Parliament.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "National Commission for STs",
//           'questionId': "3",
//           'statements': [
//             {
//               'text': "The National Commission for Scheduled Tribes submits its annual report to the President of India.",
//               'isCorrect': true,
//             },
//             {
//               'text': "submits its annual report directly to the Prime Minister of India instead of the President.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "National Commission for STs",
//           'questionId': "4",
//           'statements': [
//             {
//               'text': "Article 338-A of the Constitution of India deals with the National Commission for Scheduled Tribes.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Article 338 of the Constitution of India deals with the National Commission for Scheduled Tribes.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "National Commission for STs",
//           'questionId': "5",
//           'statements': [
//             {
//               'text': "The members of the National Commission for Scheduled Tribes are appointed by the President of India.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The members of the National Commission for Scheduled Tribes are appointed by the Prime Minister of India.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Special Officer for Linguistic Minorities",
//           'questionId': "1",
//           'statements': [
//             {
//               'text': "The States Reorganisation Commission recommended the establishment of the office of the Special Officer for Linguistic Minorities.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The States Reorganisation Commission did not recommend the establishment of the office of the Special Officer for Linguistic Minorities.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Special Officer for Linguistic Minorities",
//           'questionId': "2",
//           'statements': [
//             {
//               'text': "The Commissioner for Linguistic Minorities submits annual reports and other reports to the President of India.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Commissioner for Linguistic Minorities submits annual reports and other reports to the Prime Minister of India.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Special Officer for Linguistic Minorities",
//           'questionId': "3",
//           'statements': [
//             {
//               'text': "Article 350-B of the Constitution of India contains the provision for the Special Officer for Linguistic Minorities.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Article 350-A of the Constitution of India contains the provision for the Special Officer for Linguistic Minorities.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Special Officer for Linguistic Minorities",
//           'questionId': "4",
//           'statements': [
//             {
//               'text': "At the central level, the Commissioner for Linguistic Minorities falls under the Ministry of Minority Affairs.",
//               'isCorrect': true,
//             },
//             {
//               'text': "At the central level, the Commissioner for Linguistic Minorities falls under the Ministry of Home Affairs.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Special Officer for Linguistic Minorities",
//           'questionId': "5",
//           'statements': [
//             {
//               'text': "The office of the Special Officer for Linguistic Minorities was created in 1957.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The office of the Special Officer for Linguistic Minorities was created in 1960.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Special Officer for Linguistic Minorities",
//           'questionId': "6",
//           'statements': [
//             {
//               'text': "The President of India appoints the Special Officer for Linguistic Minorities.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Parliament of India appoints the Special Officer for Linguistic Minorities.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Special Officer for Linguistic Minorities",
//           'questionId': "7",
//           'statements': [
//             {
//               'text': "The headquarters of the Commissioner for Linguistic Minorities is located at Allahabad.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The headquarters of the Commissioner for Linguistic Minorities is located at New Delhi.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Special Officer for Linguistic Minorities",
//           'questionId': "8",
//           'statements': [
//             {
//               'text': "The Seventh Amendment Act made a provision for the Special Officer for Linguistic Minorities.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Forty-second Amendment Act made a provision for the Special Officer for Linguistic Minorities.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "State Council of Ministers",
//           'questionId': "1",
//           'statements': [
//             {
//               'text': "The Governor cannot function without the State Council of Ministers.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Governor can function without the State Council of Ministers in all matters, including those where the Constitution requires ministerial advice.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "State Council of Ministers",
//           'questionId': "2",
//           'statements': [
//             {
//               'text': "Madhya Pradesh, Odisha, Chhattisgarh and Jharkhand are required to have a Minister in-charge of Tribal Welfare.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Only Madhya Pradesh and Odisha are required to have a Minister in-charge of Tribal Welfare.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "State Council of Ministers",
//           'questionId': "3",
//           'statements': [
//             {
//               'text': "Parliamentary secretaries who are members of the State Legislature are appointed by the Governor.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Parliamentary secretaries who are members of the State Legislature are appointed by the Chief Minister.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "State Council of Ministers",
//           'questionId': "4",
//           'statements': [
//             {
//               'text': "The salaries and allowances of the Council of Ministers of the State Government are paid from the Consolidated Fund of the State.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The salaries and allowances of the Council of Ministers of the State Government are paid from the Consolidated Fund of India.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "State Council of Ministers",
//           'questionId': "5",
//           'statements': [
//             {
//               'text': "Articles 163, 164 and 167 are relevant to the constitutional provisions dealing with the relationship of the Governor with the State Council of Ministers.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Articles 160, 161 and 162 are the principal constitutional provisions dealing with the relationship of the Governor with the State Council of Ministers.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "State Council of Ministers",
//           'questionId': "6",
//           'statements': [
//             {
//               'text': "The Governor can call for information relating to proposals for legislation and can direct that a matter on which a Minister has taken a decision be placed before the State Council of Ministers.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Governor cannot call for information relating to proposals for legislation or direct that a matter on which a Minister has taken a decision be placed before the State Council of Ministers.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "State Council of Ministers",
//           'questionId': "7",
//           'statements': [
//             {
//               'text': "The principle of collective responsibility of the State Council of Ministers is enshrined in Article 164.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The principle of collective responsibility of the State Council of Ministers is enshrined in Article 163.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "State Council of Ministers",
//           'questionId': "8",
//           'statements': [
//             {
//               'text': "Ministers in the State could be prosecuted only with the approval of the Governor because they enjoy certain immunities under the provisions of the Constitution.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Ministers in the State can be prosecuted only with the approval of the Governor because they enjoy constitutional immunity from criminal proceedings.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "State Council of Ministers",
//           'questionId': "9",
//           'statements': [
//             {
//               'text': "The ministers in the State Council of Ministers are appointed by the Governor.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The ministers in the State Council of Ministers are appointed by the President of India.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "State Council of Ministers",
//           'questionId': "10",
//           'statements': [
//             {
//               'text': "Resignation of State Ministers and the office of the Deputy Chief Minister are not mentioned in the Constitution of India.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Resignation of State Ministers and the office of the Deputy Chief Minister are expressly mentioned and specifically regulated in the Constitution of India.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "State Council of Ministers",
//           'questionId': "11",
//           'statements': [
//             {
//               'text': "The requirement for the Chief Minister to submit a matter for consideration of the State Council of Ministers when required by the Governor ensures collective responsibility.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The requirement for the Chief Minister to submit a matter for consideration of the State Council of Ministers when required by the Governor does not ensure collective responsibility.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "State Council of Ministers",
//           'questionId': "12",
//           'statements': [
//             {
//               'text': "The accountability or responsibility of the Chief Minister and Cabinet to the State Legislative Assembly is direct, continuous and collective.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The accountability of the Chief Minister and Cabinet to the State Legislative Assembly is indirect, occasional and individual rather than direct, continuous and collective.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "State Council of Ministers",
//           'questionId': "13",
//           'statements': [
//             {
//               'text': "The question whether any, and if so what, advice was tendered by ministers to the Governor cannot be inquired into in any court.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The question whether any, and if so what, advice was tendered by ministers to the Governor can be inquired into in any court.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "State Council of Ministers",
//           'questionId': "14",
//           'statements': [
//             {
//               'text': "The salaries and allowances of State Ministers are determined by the State Legislature.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The salaries and allowances of State Ministers are determined by the Governor.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "High Courts",
//           'questionId': "1",
//           'statements': [
//             {
//               'text': "The maximum number of Judges in a High Court are not specified in the Constitution of India, and every High Court has a power of superintendence over all courts and tribunals subject to its appellate jurisdiction.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The maximum number of Judges in a High Court are specified in the Constitution of India, and every High Court has no power of superintendence over courts and tribunals.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "High Courts",
//           'questionId': "2",
//           'statements': [
//             {
//               'text': "A High Court can punish for its contempt and issue certain writs for enforcement of Fundamental Rights or for other purposes.",
//               'isCorrect': true,
//             },
//             {
//               'text': "A High Court cannot punish for its contempt and cannot issue writs for enforcement of Fundamental Rights or for any other purpose.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "High Courts",
//           'questionId': "3",
//           'statements': [
//             {
//               'text': "The transfer of Judges from one High Court to another High Court may be made by the President of India after consultation with the Chief Justice of India.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The transfer of Judges from one High Court to another High Court may be made by the Governor of India after consultation with the Chief Minister of the State.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "High Courts",
//           'questionId': "4",
//           'statements': [
//             {
//               'text': "A retired Judge of a High Court cannot practice in the High Court from where he has retired.",
//               'isCorrect': true,
//             },
//             {
//               'text': "A retired Judge of a High Court can practice in the High Court from where he has retired.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "High Courts",
//           'questionId': "5",
//           'statements': [
//             {
//               'text': "The writ jurisdiction of the High Courts under Article 226 is wider than that of the Supreme Court under Article 32 because High Courts may issue writs for enforcement of Fundamental and other legal rights.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The writ jurisdiction of the High Courts under Article 226 is narrower than that of the Supreme Court under Article 32 because High Courts may issue writs only for enforcement of Fundamental Rights.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "High Courts",
//           'questionId': "6",
//           'statements': [
//             {
//               'text': "Parliament by law can extend the jurisdiction of a High Court to, or exclude a Union Territory from, its jurisdiction.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Parliament by law cannot extend the jurisdiction of a High Court to, or exclude a Union Territory from, its jurisdiction.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "High Courts",
//           'questionId': "7",
//           'statements': [
//             {
//               'text': "Consultation with the Chief Justice of India in matters of appointment of a High Court Judge means conformity with the opinion of the Chief Justice.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Consultation with the Chief Justice of India in matters of appointment of a High Court Judge means that the President is not required to consider the Chief Justice's opinion.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "High Courts",
//           'questionId': "8",
//           'statements': [
//             {
//               'text': "Judgements of a High Court do not bind the lower courts of the State.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Judgements of a High Court are binding on all lower courts within the State.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "High Courts",
//           'questionId': "9",
//           'statements': [
//             {
//               'text': "A High Court Judge can be removed from office during his tenure by the President on the basis of a resolution passed by Parliament by a two-thirds majority.",
//               'isCorrect': true,
//             },
//             {
//               'text': "A High Court Judge can be removed from office during his tenure by the Governor on the basis of a resolution passed by the State Legislature by a two-thirds majority.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "High Courts",
//           'questionId': "10",
//           'statements': [
//             {
//               'text': "Judicial review is the power of the courts to declare null and void any legislative or executive act that is against the provisions of the Constitution.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Judicial review is the power of the courts to uphold any legislative or executive act even when it is against the provisions of the Constitution.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "High Courts",
//           'questionId': "11",
//           'statements': [
//             {
//               'text': "The Governor is entitled to be consulted by the President of India in the matter of appointments of Judges of the High Courts.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Governor has no role or entitlement to be consulted by the President of India in the matter of appointments of Judges of the High Courts.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "High Courts",
//           'questionId': "12",
//           'statements': [
//             {
//               'text': "The power to issue writs for the enforcement of Fundamental Rights is vested in the Supreme Court under Article 32 and the High Courts under Article 226.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The power to issue writs for the enforcement of Fundamental Rights is vested only in the Supreme Court under Article 32 and not in the High Courts.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "High Courts",
//           'questionId': "13",
//           'statements': [
//             {
//               'text': "The main jurisdictions of a High Court of a State include original, appellate and supervisory jurisdictions.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The main jurisdictions of a High Court of a State include only appellate jurisdiction and do not include original or supervisory jurisdiction.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Union and State Legislature",
//           'questionId': "1",
//           'statements': [
//             {
//               'text': "A bill pending in the legislature of a state shall not lapse by reason of the prorogation of the House or Houses, and a bill pending in the Legislative Council which has not been passed by the Legislative Assembly shall not lapse on dissolution of the Assembly.",
//               'isCorrect': true,
//             },
//             {
//               'text': "A bill pending in the legislature of a state shall lapse on the prorogation of the House or Houses, and a bill pending in the Legislative Council which has not been passed by the Legislative Assembly shall lapse on dissolution of the Assembly.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Union and State Legislature",
//           'questionId': "2",
//           'statements': [
//             {
//               'text': "Parliament may by law provide for the abolition of the Legislative Council of a State having such a council or for the creation of such a council in a State having no such council.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Parliament cannot by law provide for the abolition of the Legislative Council of a State or for the creation of such a council in a State having no such council.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Union and State Legislature",
//           'questionId': "3",
//           'statements': [
//             {
//               'text': "The Legislative Council consists of members including 1/12 elected by teachers, 1/3 elected by municipalities and 1/12 elected by registered graduates.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Legislative Council consists of members including 1/12 elected by teachers, 1/3 elected by municipalities and 1/12 elected by registered graduates.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Union and State Legislature",
//           'questionId': "4",
//           'statements': [
//             {
//               'text': "The quorum to hold a meeting of a House of the State Legislature is ten members or one-tenth of the total membership of the House, whichever is more.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The quorum to hold a meeting of a House of the State Legislature is twenty members or one-fourth of the total membership of the House, whichever is less.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Union and State Legislature",
//           'questionId': "5",
//           'statements': [
//             {
//               'text': "When a State Bill is reserved by the Governor for the consideration of the President, the President may give his assent, withhold his assent, or direct the Governor to return it to the House for reconsideration.",
//               'isCorrect': true,
//             },
//             {
//               'text': "When a State Bill is reserved by the Governor for the consideration of the President, the President can only give his assent and cannot withhold assent or direct the Governor to return it to the House for reconsideration.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Union and State Legislature",
//           'questionId': "6",
//           'statements': [
//             {
//               'text': "Rajasthan does not have a Vidhan Parishad.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Rajasthan has a Vidhan Parishad.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Union and State Legislature",
//           'questionId': "7",
//           'statements': [
//             {
//               'text': "No discussion can take place in the legislature of a State with respect to the conduct of any judge of the Supreme Court, and courts cannot enquire into any proceedings of the legislatures.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Discussion can take place in the legislature of a State with respect to the conduct of any judge of the Supreme Court, and courts can freely enquire into all proceedings of the legislatures.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Union and State Legislature",
//           'questionId': "8",
//           'statements': [
//             {
//               'text': "The Legislative Assembly can pass a resolution for the abolition or creation of a Legislative Council by a majority of the total membership of the Assembly and by a majority of not less than two-thirds of the members present and voting.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Legislative Assembly can pass a resolution for the abolition or creation of a Legislative Council by a simple majority of the total membership of the Assembly without any requirement regarding the members present and voting.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Union and State Legislature",
//           'questionId': "9",
//           'statements': [
//             {
//               'text': "The maximum permissible strength of the Legislative Assembly of any State is 500 members.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The maximum permissible strength of the Legislative Assembly of any State is 400 members.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Union and State Legislature",
//           'questionId': "10",
//           'statements': [
//             {
//               'text': "Reservation of a State Bill for the assent of the President is a discretionary power of the Governor of a State.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Reservation of a State Bill for the assent of the President is never a discretionary power of the Governor of a State.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Subordinate Court",
//           'questionId': "1",
//           'statements': [
//             {
//               'text': "The district judge exercises both judicial and administrative powers.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The district judge exercises only judicial powers and has no administrative powers.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Subordinate Court",
//           'questionId': "2",
//           'statements': [
//             {
//               'text': "Subordinate courts function at district and lower levels, and the pattern and designation of subordinate courts in the states is not uniform.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Subordinate courts function only at the district level, and the pattern and designation of subordinate courts are uniform in all states.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Subordinate Court",
//           'questionId': "3",
//           'statements': [
//             {
//               'text': "The Governor of the State appoints the District Judge in a state.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The High Court appoints the District Judge in a state without any involvement of the Governor.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Subordinate Court",
//           'questionId': "4",
//           'statements': [
//             {
//               'text': "The Governor appoints judicial officers of the subordinate judiciary other than district judges in consultation with the High Court exercising jurisdiction in relation to the state.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Governor appoints judicial officers of the subordinate judiciary other than district judges without consulting the High Court exercising jurisdiction in relation to the state.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Subordinate Court",
//           'questionId': "5",
//           'statements': [
//             {
//               'text': "Completion of 30 years of age is not a qualification for a person to be appointed as a District Judge.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Completion of 30 years of age is an essential qualification for a person to be appointed as a District Judge.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Local Government - Panchayati Raj",
//           'questionId': "1",
//           'statements': [
//             {
//               'text': "A Panchayat elected in place of a dissolved Panchayat remains in office only for the remaining period, and seats are reserved for Scheduled Castes, Scheduled Tribes and women but not for Backward Classes of citizens.",
//               'isCorrect': true,
//             },
//             {
//               'text': "A Panchayat elected in place of a dissolved Panchayat remains in office for a fresh full five-year term, and seats are reserved for Scheduled Castes, Scheduled Tribes, women and Backward Classes in every Panchayat as a constitutional requirement.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Local Government - Panchayati Raj",
//           'questionId': "2",
//           'statements': [
//             {
//               'text': "Courts have no jurisdiction to examine the validity of a law relating to delimitation of constituencies or allotment of seats in respect of Panchayats.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Courts have full jurisdiction to examine the validity of laws relating to delimitation of constituencies and allotment of seats in respect of Panchayats.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Local Government - Panchayati Raj",
//           'questionId': "3",
//           'statements': [
//             {
//               'text': "The Eleventh Schedule was inserted in the Constitution of India by the Constitution (Seventy-Third Amendment) Act, 1992.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Eleventh Schedule was inserted in the Constitution of India by the Constitution (Seventy-Fourth Amendment) Act, 1992.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Local Government - Panchayati Raj",
//           'questionId': "4",
//           'statements': [
//             {
//               'text': "Not less than one-third of the seats reserved for Scheduled Castes and Scheduled Tribes in every Panchayat are reserved for women belonging to these categories, and not less than one-third of the offices of chairpersons in Panchayats at each level are reserved for women.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Not less than one-half of the seats reserved for Scheduled Castes and Scheduled Tribes in every Panchayat are reserved for women belonging to these categories, and all offices of chairpersons in Panchayats are reserved for women.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Local Government - Panchayati Raj",
//           'questionId': "5",
//           'statements': [
//             {
//               'text': "The State Finance Commission recommends the distribution of net proceeds of taxes between the State and Panchayats, determination of taxes assignable to Panchayats, and grants-in-aid to Panchayats from the Consolidated Fund of the State.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The State Finance Commission recommends the distribution of net proceeds of taxes only between the State Government and the Union Government and has no role regarding Panchayats.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Local Government - Panchayati Raj",
//           'questionId': "6",
//           'statements': [
//             {
//               'text': "Organisation of Village Panchayats is included in the Directive Principles of State Policy.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Organisation of Village Panchayats is excluded from the Directive Principles of State Policy.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Local Government - Panchayati Raj",
//           'questionId': "7",
//           'statements': [
//             {
//               'text': "The 73rd Constitutional Amendment provides for three tiers of Panchayati Raj institutions at the village, block and district levels.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The 73rd Constitutional Amendment provides for only two tiers of Panchayati Raj institutions at the village and district levels.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Local Government - Panchayati Raj",
//           'questionId': "8",
//           'statements': [
//             {
//               'text': "The State Legislature makes provisions with respect to the maintenance of accounts by Panchayats and the auditing of such accounts.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The State Election Commission makes provisions with respect to the maintenance of accounts by Panchayats and the auditing of such accounts.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Local Government - Panchayati Raj",
//           'questionId': "9",
//           'statements': [
//             {
//               'text': "The State Election Commissioner can be removed through a procedure similar to that for the removal of a Judge of a High Court.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The State Election Commissioner can be removed from office by the Governor at his discretion without following any special procedure.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Local Government - Panchayati Raj",
//           'questionId': "10",
//           'statements': [
//             {
//               'text': "In the post-73rd Amendment era, decentralization covers decision-making powers, the system as a whole and administrative powers.",
//               'isCorrect': true,
//             },
//             {
//               'text': "In the post-73rd Amendment era, decentralization covers only administrative powers and does not include decision-making powers or the system as a whole.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Local Government - Panchayati Raj",
//           'questionId': "11",
//           'statements': [
//             {
//               'text': "Article 243G provides that Panchayats should be enabled by law to function as institutions of self-government.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Article 243G provides that Panchayats should function only as advisory bodies and not as institutions of self-government.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Local Government - Panchayati Raj",
//           'questionId': "12",
//           'statements': [
//             {
//               'text': "The State Legislature may provide for representation of members of the State Legislative Assembly representing constituencies comprising wholly or partly a Panchayat area at a level other than the village level in such Panchayat.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The State Legislature cannot provide for representation of members of the State Legislative Assembly in Panchayats at any level.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Local Government - Panchayati Raj",
//           'questionId': "13",
//           'statements': [
//             {
//               'text': "The 73rd Constitutional Amendment does not apply to Meghalaya.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The 73rd Constitutional Amendment applies fully to Meghalaya without any constitutional exception.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Local Government - Panchayati Raj",
//           'questionId': "14",
//           'statements': [
//             {
//               'text': "The 73rd Constitutional Amendment envisages the Gram Sabha as the foundation of the Panchayati Raj System and provides that Panchayat bodies have a duration of five years.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The 73rd Constitutional Amendment does not recognize the Gram Sabha as the foundation of the Panchayati Raj System and provides that Panchayat bodies have a duration of three years.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Local Government - Panchayati Raj",
//           'questionId': "15",
//           'statements': [
//             {
//               'text': "Article 243D of the Constitution of India provides for reservation for Scheduled Castes and Scheduled Tribes in every Panchayat.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Article 243D of the Constitution of India provides reservation only for women and does not provide reservation for Scheduled Castes or Scheduled Tribes in Panchayats.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Local Government - Panchayati Raj",
//           'questionId': "16",
//           'statements': [
//             {
//               'text': "A State Legislature may provide for representation of members of the House of the People in Panchayats, reservation of seats for Backward Classes, and authorization of Panchayats to levy, collect and appropriate taxes.",
//               'isCorrect': true,
//             },
//             {
//               'text': "A State Legislature cannot provide for representation of members of the House of the People in Panchayats, reservation of seats for Backward Classes, or authorization of Panchayats to levy and collect taxes.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Local Government - Panchayati Raj",
//           'questionId': "17",
//           'statements': [
//             {
//               'text': "Panchayats at the intermediate level need not be constituted in a State having a population not exceeding 20 lakhs.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Panchayats at the intermediate level must be constituted in every State irrespective of its population.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Local Government - Panchayati Raj",
//           'questionId': "18",
//           'statements': [
//             {
//               'text': "The State Finance Commission determines the pattern of distribution of State tax revenue between the State Government and local bodies and the pattern of grants-in-aid to local bodies.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The State Finance Commission has no role in determining the pattern of distribution of State tax revenue or grants-in-aid between the State Government and local bodies.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Local Government - Panchayati Raj",
//           'questionId': "19",
//           'statements': [
//             {
//               'text': "The 73rd Constitutional Amendment provided constitutional status to Panchayats and reservation of seats for women belonging to Scheduled Castes or Scheduled Tribes.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The 73rd Constitutional Amendment provided constitutional status to Panchayats but did not provide reservation of seats for women belonging to Scheduled Castes or Scheduled Tribes.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Local Government - Panchayati Raj",
//           'questionId': "20",
//           'statements': [
//             {
//               'text': "Articles 243G and 243H deal with the powers, authority and responsibilities of Panchayats and their powers to impose taxes and maintain funds.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Articles 243G and 243H deal only with the composition of Panchayats and do not concern their powers, responsibilities, taxation or funds.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Local Government - Panchayati Raj",
//           'questionId': "21",
//           'statements': [
//             {
//               'text': "The Panchayati Raj Committee formed in 1977 was headed by Ashok Mehta.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Panchayati Raj Committee formed in 1977 was headed by Balwant Rai Mehta.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Local Government - Panchayati Raj",
//           'questionId': "22",
//           'statements': [
//             {
//               'text': "Village Panchayats are responsible for agricultural production, rural industrial development, and maternity and child welfare.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Village Panchayats are responsible only for urban development and municipal administration and have no role in agricultural production or rural welfare.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Local Government - Panchayati Raj",
//           'questionId': "23",
//           'statements': [
//             {
//               'text': "Rajasthan was the first State to introduce the Panchayati Raj system.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Andhra Pradesh was the first State to introduce the Panchayati Raj system.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Local Government - Panchayati Raj",
//           'questionId': "24",
//           'statements': [
//             {
//               'text': "The 73rd Constitutional Amendment added the Eleventh Schedule listing 29 subjects for Panchayats and barred courts from questioning the validity of laws relating to delimitation of constituencies.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The 73rd Constitutional Amendment added the Twelfth Schedule listing 18 subjects for Panchayats and allowed courts to question laws relating to delimitation of constituencies.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Local Government - Panchayati Raj",
//           'questionId': "25",
//           'statements': [
//             {
//               'text': "Article 40 of the Constitution directs the State to take steps to organize village Panchayats.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Article 40 of the Constitution directs the State to take steps to abolish village Panchayats.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Local Government - Panchayati Raj",
//           'questionId': "26",
//           'statements': [
//             {
//               'text': "The State Finance Commission determines the distribution of taxes and duties between the State and Panchayats, and one-third of the seats in Panchayats are reserved for women.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The State Finance Commission determines the distribution of taxes and duties only between the Union and the State, and no seats in Panchayats are reserved for women.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Local Government - Panchayati Raj",
//           'questionId': "27",
//           'statements': [
//             {
//               'text': "Panchayati Raj is included in the State List.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Panchayati Raj is included in the Union List.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Local Government - Panchayati Raj",
//           'questionId': "28",
//           'statements': [
//             {
//               'text': "The 73rd Constitutional Amendment Act emanates from Article 40 of the Constitution of India.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The 73rd Constitutional Amendment Act does not derive its constitutional basis from Article 40 of the Constitution of India.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Local Government - Panchayati Raj",
//           'questionId': "29",
//           'statements': [
//             {
//               'text': "Zila Parishad comprises Chairpersons of Panchayat Samitis within the district, representatives of cooperative societies and municipalities, and MPs, MLAs and MLCs whose constituencies are in the district.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Zila Parishad consists only of directly elected members and does not include Chairpersons of Panchayat Samitis or other representatives specified by state law.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Local Government - Panchayati Raj",
//           'questionId': "30",
//           'statements': [
//             {
//               'text': "The 73rd Constitutional Amendment provides for disqualification provisions for Panchayat membership, setting up of a State Finance Commission, and empowering the State Election Commission to conduct periodic local government elections.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The 73rd Constitutional Amendment does not provide for disqualification provisions for Panchayat membership, a State Finance Commission, or a State Election Commission for local elections.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Local Government - Panchayati Raj",
//           'questionId': "31",
//           'statements': [
//             {
//               'text': "Under Article 243D, Scheduled Castes and Scheduled Tribes enjoy reservation for Panchayat membership in proportion to their population.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Under Article 243D, Scheduled Castes and Scheduled Tribes are entitled to a fixed equal number of reserved seats in every Panchayat irrespective of their population.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Local Government - Panchayati Raj",
//           'questionId': "32",
//           'statements': [
//             {
//               'text': "Members of a Panchayat Samiti are directly elected by the people.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Members of a Panchayat Samiti are nominated by the Governor and are not directly elected by the people.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Local Government - Panchayati Raj",
//           'questionId': "33",
//           'statements': [
//             {
//               'text': "Non-involvement of political parties in elections to Panchayati Raj Institutions was not a recommendation of the Ashok Mehta Committee.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Non-involvement of political parties in elections to Panchayati Raj Institutions was a recommendation of the Ashok Mehta Committee.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Local Government - Panchayati Raj",
//           'questionId': "34",
//           'statements': [
//             {
//               'text': "The Chairpersons of Panchayats at the intermediate or district level shall be elected by and from amongst the elected members thereof.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Chairpersons of Panchayats at the intermediate or district level shall be directly elected by the people rather than elected by and from amongst the elected members thereof.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Local Government - Panchayati Raj",
//           'questionId': "35",
//           'statements': [
//             {
//               'text': "The Governor shall constitute a State Finance Commission every fifth year to review the financial position of Panchayats, and the superintendence, direction and control of Panchayat elections are vested in a State Election Commission.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Governor shall constitute a State Finance Commission every third year, while the superintendence, direction and control of Panchayat elections are vested in the Election Commission of India.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Local Government - Panchayati Raj",
//           'questionId': "36",
//           'statements': [
//             {
//               'text': "The Balwant Rai Mehta Committee recommended people's participation in community development programmes.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Balwant Rai Mehta Committee recommended that people's participation should be excluded from community development programmes.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Local Government - Panchayati Raj",
//           'questionId': "37",
//           'statements': [
//             {
//               'text': "The Chairperson of every District Planning Committee shall forward the development plan as recommended by the committee to the Governor of the State, and not less than two-thirds of its members shall be elected from among the elected members of the Panchayats at the district level and Municipalities in the district.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Chairperson of every District Planning Committee shall forward the development plan recommended by the committee to the Union Government, and not less than two-thirds of its members shall be nominated by the Governor.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Local Government - Panchayati Raj",
//           'questionId': "38",
//           'statements': [
//             {
//               'text': "It is obligatory to constitute Ward Committees for one or more wards within the territorial area of a Municipality having a population of three lakhs or more.",
//               'isCorrect': true,
//             },
//             {
//               'text': "It is obligatory to constitute Ward Committees only for Municipalities having a population of five lakhs or more.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Local Government - Panchayati Raj",
//           'questionId': "39",
//           'statements': [
//             {
//               'text': "The 74th Constitutional Amendment provides for the insertion of a new Schedule, restructures the working of Municipalities, and provides reservation of seats for women and Scheduled Castes in Municipalities.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The 74th Constitutional Amendment provides for the insertion of the Eleventh Schedule, abolishes the existing structure of Municipalities, and does not provide reservation for women or Scheduled Castes.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Local Government - Panchayati Raj",
//           'questionId': "40",
//           'statements': [
//             {
//               'text': "Municipal Corporations, Notified Area Authorities and Town Area Committees, Township Committees and Port Trusts are urban local bodies in India.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Municipal Corporations, Notified Area Authorities and Town Area Committees are the only urban local bodies in India, while Township Committees and Port Trusts are rural institutions.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Local Government - Panchayati Raj",
//           'questionId': "41",
//           'statements': [
//             {
//               'text': "State Legislatures have not been conferred the power to empower Municipalities with the responsibility of management of law and order.",
//               'isCorrect': true,
//             },
//             {
//               'text': "State Legislatures have been expressly required by the Constitution to empower Municipalities with the responsibility of maintaining law and order.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Local Government - Panchayati Raj",
//           'questionId': "42",
//           'statements': [
//             {
//               'text': "The 74th Constitutional Amendment does not provide for setting up a separate Finance Commission for Municipalities.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The 74th Constitutional Amendment provides for setting up a separate Finance Commission exclusively for Municipalities.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Local Government - Panchayati Raj",
//           'questionId': "43",
//           'statements': [
//             {
//               'text': "The sources of revenue of urban local bodies include taxes, fees and fines, grants and loans.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The sources of revenue of urban local bodies include only taxes and fees, while grants and loans are not sources of revenue.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Local Government - Panchayati Raj",
//           'questionId': "44",
//           'statements': [
//             {
//               'text': "The Governor specifies a transitional area, smaller urban area or larger urban area after considering the density of population and percentage of employment in non-agricultural activities.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The President specifies a transitional area, smaller urban area or larger urban area after considering the density of population and percentage of employment in non-agricultural activities.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Local Government - Panchayati Raj",
//           'questionId': "45",
//           'statements': [
//             {
//               'text': "Maintenance of public order is not a concern of local government in India.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Maintenance of public order is a primary constitutional function of every urban local body in India.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Local Government - Panchayati Raj",
//           'questionId': "46",
//           'statements': [
//             {
//               'text': "The 74th Constitutional Amendment Act provided for the formation of the Metropolitan Planning Committee.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The 74th Constitutional Amendment Act did not provide for the formation of the Metropolitan Planning Committee.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Local Government - Panchayati Raj",
//           'questionId': "47",
//           'statements': [
//             {
//               'text': "A metropolitan area means an area having a population of eight lakhs or more.",
//               'isCorrect': true,
//             },
//             {
//               'text': "A metropolitan area means an area having a population of ten lakhs or more.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Local Government - Panchayati Raj",
//           'questionId': "48",
//           'statements': [
//             {
//               'text': "Ward Committees are obligatory in a Municipality having a population of three lakhs or more.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Ward Committees are obligatory in every Municipality irrespective of its population.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Local Government - Panchayati Raj",
//           'questionId': "49",
//           'statements': [
//             {
//               'text': "The 74th Constitutional Amendment aimed to bring uniformity in the structure of local governments, ensure regular and rational flow of funds from the State's revenue, and provide properly elected governments at regular intervals.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The 74th Constitutional Amendment aimed to abolish regular elections to local governments and did not address the flow of funds or uniformity in their structure.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Local Government - Panchayati Raj",
//           'questionId': "50",
//           'statements': [
//             {
//               'text': "The 64th and 65th Amendment Bills could not become Amendment Acts because the Rajya Sabha could not pass the Bills due to lack of the required majority.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The 64th and 65th Amendment Bills became Amendment Acts after being passed by both Houses of Parliament with the required majority.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Local Government - Panchayati Raj",
//           'questionId': "51",
//           'statements': [
//             {
//               'text': "The Chief Minister of the State decides the composition of the Finance Commission and nominates its Chairman.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Chief Minister of the State decides the composition of the Finance Commission and nominates its Chairman without any role for the Governor.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Local Government - Panchayati Raj",
//           'questionId': "52",
//           'statements': [
//             {
//               'text': "Lord Ripon is hailed as the father of local self-government in India.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Lord Mayo is hailed as the father of local self-government in India.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Local Government - Panchayati Raj",
//           'questionId': "53",
//           'statements': [
//             {
//               'text': "The territorial area of a Municipality is notified by the Governor.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The territorial area of a Municipality is notified by the President of India.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Local Government - Panchayati Raj",
//           'questionId': "54",
//           'statements': [
//             {
//               'text': "The Chairperson of every Metropolitan Planning Committee forwards the development plan recommended by the committee to the Government of the State.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Chairperson of every Metropolitan Planning Committee forwards the development plan recommended by the committee directly to the Union Government.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Local Government - Panchayati Raj",
//           'questionId': "55",
//           'statements': [
//             {
//               'text': "The 74th Constitutional Amendment Act provides for Ward Committees, District Planning Committees and Metropolitan Planning Committees.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The 74th Constitutional Amendment Act provides only for Ward Committees and does not provide for District Planning Committees or Metropolitan Planning Committees.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Local Government - Panchayati Raj",
//           'questionId': "56",
//           'statements': [
//             {
//               'text': "The Nagar Palika Bill was first introduced in Parliament during the Prime Ministership of Rajiv Gandhi.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The Nagar Palika Bill was first introduced in Parliament during the Prime Ministership of Indira Gandhi.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Local Government - Panchayati Raj",
//           'questionId': "57",
//           'statements': [
//             {
//               'text': "The District Planning Committee came into existence under Article 243ZD of the Constitution.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The District Planning Committee came into existence under Article 243ZE of the Constitution.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Local Government - Panchayati Raj",
//           'questionId': "58",
//           'statements': [
//             {
//               'text': "The functions of Municipalities under the Twelfth Schedule include urban poverty alleviation, planning for economic and social development, regulation of tanneries and urban forestry.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The functions of Municipalities under the Twelfth Schedule exclude urban poverty alleviation, economic and social planning, urban forestry and regulation of tanneries.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Local Government - Panchayati Raj",
//           'questionId': "59",
//           'statements': [
//             {
//               'text': "Cantonment Boards do not have a constitutional foundation.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Cantonment Boards have a constitutional foundation under the 74th Constitutional Amendment.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Local Government - Panchayati Raj",
//           'questionId': "60",
//           'statements': [
//             {
//               'text': "The 73rd and 74th Constitutional Amendments provide for elections to local bodies every five years.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The 73rd and 74th Constitutional Amendments provide for elections to local bodies once every ten years.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Local Government - Panchayati Raj",
//           'questionId': "61",
//           'statements': [
//             {
//               'text': "Local Governments are empowered to levy such taxes as are permitted under the law.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Local Governments have no power to levy taxes even when such taxes are permitted under law.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Local Government - Panchayati Raj",
//           'questionId': "62",
//           'statements': [
//             {
//               'text': "An election to constitute a Municipality has to be completed before the expiry of its fixed tenure.",
//               'isCorrect': true,
//             },
//             {
//               'text': "An election to constitute a Municipality may be completed after the expiry of its fixed tenure.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Local Government - Panchayati Raj",
//           'questionId': "63",
//           'statements': [
//             {
//               'text': "The 74th Constitutional Amendment did not pay attention to the Municipal personnel system and the relations between the elected executive and bureaucracy.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The 74th Constitutional Amendment specifically established a uniform national municipal personnel system and completely regulated relations between elected executives and bureaucracy.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Local Government - Panchayati Raj",
//           'questionId': "64",
//           'statements': [
//             {
//               'text': "The District Planning Committee consolidates the plans prepared by the Panchayats and Municipalities in the district.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The District Planning Committee prepares all plans for the Panchayats and Municipalities in the district instead of consolidating the plans prepared by them.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Local Government - Panchayati Raj",
//           'questionId': "65",
//           'statements': [
//             {
//               'text': "The first municipal corporation established in India was at Madras.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The first municipal corporation established in India was at Bombay.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Local Government - Panchayati Raj",
//           'questionId': "66",
//           'statements': [
//             {
//               'text': "While preparing the draft plan, the Metropolitan Planning Committee has to give due regard to matters of common interest between Municipalities and Panchayats, plans prepared by Panchayats in the metropolitan area, and overall objectives and priorities set by the Union Government.",
//               'isCorrect': true,
//             },
//             {
//               'text': "While preparing the draft plan, the Metropolitan Planning Committee is not required to give regard to matters of common interest between Municipalities and Panchayats or to plans prepared by Panchayats in the metropolitan area.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Local Government - Panchayati Raj",
//           'questionId': "67",
//           'statements': [
//             {
//               'text': "The 73rd Constitutional Amendment Act, 1992 added 16 Articles and a new Schedule to the Constitution of India.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The 73rd Constitutional Amendment Act, 1992 added 12 Articles and two new Schedules to the Constitution of India.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Local Government - Panchayati Raj",
//           'questionId': "68",
//           'statements': [
//             {
//               'text': "The correct chronological sequence of Balwant Rai Mehta, Lord Mayo, Lord Ripon and Ashok Mehta is Lord Mayo, Lord Ripon, Balwant Rai Mehta and Ashok Mehta.",
//               'isCorrect': true,
//             },
//             {
//               'text': "The correct chronological sequence of Balwant Rai Mehta, Lord Mayo, Lord Ripon and Ashok Mehta is Balwant Rai Mehta, Lord Mayo, Ashok Mehta and Lord Ripon.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Local Government - Panchayati Raj",
//           'questionId': "69",
//           'statements': [
//             {
//               'text': "Property tax, octroi and animal tax are sources of revenue of urban local bodies.",
//               'isCorrect': true,
//             },
//             {
//               'text': "Property tax, octroi and animal tax are not sources of revenue of urban local bodies.",
//               'isCorrect': false,
//             },
//           ],
//         },
//         {
//           'topic': "Local Government - Panchayati Raj",
//           'questionId': "70",
//           'statements': [
//             {
//               'text': "State Finance Commissions review the economic conditions of various Panchayati Raj Institutions and Municipal bodies in the States.",
//               'isCorrect': true,
//             },
//             {
//               'text': "State Finance Commissions review only the economic conditions of Panchayati Raj Institutions and have no role concerning Municipal bodies in the States.",
//               'isCorrect': false,
//             },
//           ],
//         },
//       ];

//       // --------------------------------------------------------
//       // Load existing topic/question information.
//       // This prevents duplicate questions and allows automatic
//       // Topic-2 / Topic-3 splitting after 100 questions.
//       // --------------------------------------------------------
//       final Map<String, int> nextOrders = {};
//       final Map<String, Set<String>> existingQuestionSignatures = {};
//       final Map<String, String> topicIds = {};
//       final Map<String, int> topicCounts = {};
//       final Map<String, int> topicOrders = {};

//       // Existing topic IDs and orders.
//       topicIds["DPSPs and Fundamental Duties"] = "dpsps_and_fundamental_duties";
//       topicOrders["DPSPs and Fundamental Duties"] = 1;
//       topicIds["Ministers, Ministries and Secretariat"] = "ministers_ministries_and_secretariat";
//       topicOrders["Ministers, Ministries and Secretariat"] = 2;
//       topicIds["President, Vice President and Governor"] = "president_vice_president_and_governor";
//       topicOrders["President, Vice President and Governor"] = 3;
//       topicIds["Union and State Legislature"] = "union_and_state_legislature";
//       topicOrders["Union and State Legislature"] = 4;
//       topicIds["Political Theory"] = "political_theory";
//       topicOrders["Political Theory"] = 5;
//       topicIds["Indian Political System"] = "indian_political_system";
//       topicOrders["Indian Political System"] = 6;
//       topicIds["Indian Constitution"] = "indian_constitution";
//       topicOrders["Indian Constitution"] = 7;
//       topicIds["Fundamental Rights"] = "fundamental_rights";
//       topicOrders["Fundamental Rights"] = 8;
//       topicIds["Local Government - Panchayati Raj"] = "local_government_panchayati_raj";
//       topicOrders["Local Government - Panchayati Raj"] = 9;
//       topicIds["Post Independence History"] = "post_independence_history";
//       topicOrders["Post Independence History"] = 10;
//       topicIds["International Relations"] = "international_relations";
//       topicOrders["International Relations"] = 11;
//       topicIds["Judiciary and Judicial System"] = "judiciary_and_judicial_system";
//       topicOrders["Judiciary and Judicial System"] = 12;
//       topicIds["Elections, Election Commission and RPA"] = "elections_election_commission_and_rpa";
//       topicOrders["Elections, Election Commission and RPA"] = 13;
//       topicIds["Various Constitutional & Non-Constitutional Posts and Bodies"] = "various_constitutional_non_constitutional_posts_and_bodies";
//       topicOrders["Various Constitutional & Non-Constitutional Posts and Bodies"] = 14;
//       topicIds["Important Acts and Constitutional Amendments"] = "important_acts_and_constitutional_amendments";
//       topicOrders["Important Acts and Constitutional Amendments"] = 15;

//       // Find current counts/signatures for existing topics.
//       for (final entry in existingTopicIds.entries) {
//         final topicName = entry.key;
//         final topicId = entry.value;
//         final snap = await topicsRef
//             .doc(topicId)
//             .collection('questions')
//             .get();

//         topicCounts[topicName] = snap.docs.length;
//         nextOrders[topicName] = snap.docs.length + 1;

//         final signatures = <String>{};
//         for (final doc in snap.docs) {
//           final statements = doc.data()['statements'];
//           if (statements is List) {
//             final texts = statements
//                 .whereType<Map>()
//                 .map((e) => _normalizeText(e['text']?.toString() ?? ''))
//                 .where((e) => e.isNotEmpty)
//                 .toList();
//             texts.sort();
//             if (texts.isNotEmpty) {
//               signatures.add(texts.join('||'));
//             }
//           }
//         }
//         existingQuestionSignatures[topicName] = signatures;
//       }

//       // New topics start after the existing 15 topics.
//       int nextTopicOrder = 16;
//       final Set<String> processedNewTopics = {};
//       for (final row in data) {
//         final baseTopicName = row['topic'].toString().trim();
//         final targetTopicName =
//             topicAliases[baseTopicName] ?? baseTopicName;

//         if (!processedNewTopics.contains(targetTopicName) &&
//             !existingTopicIds.containsKey(targetTopicName)) {
//           final baseId = _createId(targetTopicName);
//           var topicId = baseId;
//           var suffix = 2;
//           while (topicIds.values.contains(topicId)) {
//             topicId = '${baseId}_new_${suffix++}';
//           }
//           topicIds[targetTopicName] = topicId;
//           topicOrders[targetTopicName] = nextTopicOrder++;
//           topicCounts[targetTopicName] = 0;
//           nextOrders[targetTopicName] = 1;
//           existingQuestionSignatures[targetTopicName] = <String>{};
//           processedNewTopics.add(targetTopicName);
//         }
//       }

//       WriteBatch batch = _firestore.batch();
//       int batchWrites = 0;

//       Future<void> commitBatch() async {
//         if (batchWrites == 0) return;
//         await batch.commit();
//         batch = _firestore.batch();
//         batchWrites = 0;
//       }

//       int added = 0;
//       int skippedDuplicates = 0;

//       for (final row in data) {
//         final baseTopicName = row['topic'].toString().trim();
//         final originalTarget =
//             topicAliases[baseTopicName] ?? baseTopicName;
//         var topicName = originalTarget;

//         final statements = (row['statements'] as List)
//             .whereType<Map>()
//             .toList();
//         final texts = statements
//             .map((e) => _normalizeText(e['text']?.toString() ?? ''))
//             .where((e) => e.isNotEmpty)
//             .toList();
//         texts.sort();
//         final signature = texts.join('||');

//         if (signature.isEmpty) continue;

//         // If this exact question already exists in the current
//         // topic, do not create it again.
//         if ((existingQuestionSignatures[topicName] ?? <String>{})
//             .contains(signature)) {
//           skippedDuplicates++;
//           continue;
//         }

//         // Keep every topic at a maximum of 100 questions.
//         var count = topicCounts[topicName] ?? 0;
//         if (count >= 100) {
//           var part = 2;
//           var splitName = '$topicName-$part';
//           while (topicIds.containsKey(splitName) &&
//               (topicCounts[splitName] ?? 0) >= 100) {
//             part++;
//             splitName = '$topicName-$part';
//           }

//           if (!topicIds.containsKey(splitName)) {
//             final splitId = _createId(splitName);
//             topicIds[splitName] = splitId;
//             topicOrders[splitName] = nextTopicOrder++;
//             topicCounts[splitName] = 0;
//             nextOrders[splitName] = 1;
//             existingQuestionSignatures[splitName] = <String>{};
//           }
//           topicName = splitName;
//           count = topicCounts[topicName] ?? 0;
//         }

//         final topicId = topicIds[topicName]!;
//         final topicRef = topicsRef.doc(topicId);

//         batch.set(topicRef, {
//           'name': topicName,
//           'order': topicOrders[topicName],
//           'isActive': true,
//           'hasSubtopics': false,
//         }, SetOptions(merge: true));
//         batchWrites++;

//         final order = nextOrders[topicName] ?? (count + 1);
//         final questionId = 'question_$order';
//         final questionRef =
//             topicRef.collection('questions').doc(questionId);

//         batch.set(questionRef, {
//           'questionId': order,
//           'order': order,
//           'statements': statements
//               .map((e) => {
//                     'text': e['text']?.toString() ?? '',
//                     'isCorrect': e['isCorrect'] == true,
//                   })
//               .toList(),
//         }, SetOptions(merge: true));
//         batchWrites++;

//         topicCounts[topicName] = count + 1;
//         nextOrders[topicName] = order + 1;
//         existingQuestionSignatures[topicName]!.add(signature);
//         added++;

//         if (batchWrites >= 450) {
//           await commitBatch();
//         }
//       }

//       await commitBatch();

//       print('========================================');
//       print('🎉 Indian Polity Seeder Completed');
//       print('New rows processed: ${data.length}');
//       print('Questions added: $added');
//       print('Duplicates skipped: $skippedDuplicates');
//       print('Topics available in new sheet: ${data.map((e) => e['topic']).toSet().length}');
//       print('========================================');
//     } catch (e, stackTrace) {
//       print('========================================');
//       print('❌ Indian Polity Seeder Failed');
//       print('Error: $e');
//       print('StackTrace: $stackTrace');
//       print('========================================');
//     }
//   }

//   static String _normalizeText(String value) {
//     return value
//         .replaceAll(RegExp(r'\\s+'), ' ')
//         .trim()
//         .toLowerCase();
//   }

//   static String _createId(String value) {
//     return value
//         .toLowerCase()
//         .trim()
//         .replaceAll(RegExp(r'[^a-z0-9]+'), '_')
//         .replaceAll(RegExp(r'^_+|_+$'), '');
//   }
// }