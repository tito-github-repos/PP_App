
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
