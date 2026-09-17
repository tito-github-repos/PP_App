import 'package:cloud_firestore/cloud_firestore.dart';



class FirestoreSeeder {
  FirestoreSeeder._();

  static final FirebaseFirestore _firestore =
      FirebaseFirestore.instance;



  static Future<void> medievalHistorySeed() async {
    final subjectRef = _firestore.collection('subjects').doc('history');

    await subjectRef.set({
      'name': 'History',
      'order': 1,
    }, SetOptions(merge: true));

    final sectionRef =
        subjectRef.collection('sections').doc('medieval_history');

    await sectionRef.set({
      'name': 'Medieval Indian History',
      'order': 2,
    }, SetOptions(merge: true));

    final topicRef0 = sectionRef.collection('topics').doc('agriculture_irrigation');
    await topicRef0.set({
      'name': 'Agriculture & Irrigation',
      'order': 1,
    });
    await topicRef0.collection('questions').doc('question_1').set({
      'questionId': 1,
      'order': 1,
      'statements': [
          {'text': 'The irrigation device called \'Araghatta\' was a large wheel with earthen pots tied to the outer ends of its spokes.', 'isCorrect': true},
          {'text': 'The irrigation device called \'Araghatta\' was a small wooden box without any wheels.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_2').set({
      'questionId': 2,
      'order': 2,
      'statements': [
          {'text': 'Devaraya I, a ruler of the Vijayanagara Empire, constructed a large dam across the Tungabhadra River and a canal-cum-aqueduct several kilometers long from the river to the capital city.', 'isCorrect': true},
          {'text': 'Devaraya I, a ruler of the Vijayanagara Empire, never constructed any dam across the Tungabhadra River and did not build any canals.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_3').set({
      'questionId': 3,
      'order': 3,
      'statements': [
          {'text': 'In medieval India, the term “Fanam” referred to coins.', 'isCorrect': true},
          {'text': 'In medieval India, the term “Fanam” referred exclusively to royal garments and never to coins.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_4').set({
      'questionId': 4,
      'order': 4,
      'statements': [
          {'text': 'Regarding Indian history: the first Mongol invasion of India did not happen during the reign of Jalal-ud-din Khalji, but during the reign of Ala-ud-din Khalji, one Mongol assault marched up to Delhi and besieged the city.', 'isCorrect': true},
          {'text': 'Regarding Indian history: the first Mongol invasion of India did not happen during the reign of Jalal-ud-din Khalji, but happened strictly during the reign of Qutb-ud-din Aibak.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_5').set({
      'questionId': 5,
      'order': 5,
      'statements': [
          {'text': 'With reference to Indian history, “Kulah-Daran” referred to Sayyids.', 'isCorrect': true},
          {'text': 'With reference to Indian history, “Kulah-Daran” referred exclusively to the royal elephant keepers and military generals.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_6').set({
      'questionId': 6,
      'order': 6,
      'statements': [
          {'text': 'With reference to medieval India, the correct sequence in ascending order in terms of size is Paragana, Sarkar, Suba.', 'isCorrect': true},
          {'text': 'With reference to medieval India, the correct sequence in ascending order in terms of size is Suba, Sarkar, Paragana.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_7').set({
      'questionId': 7,
      'order': 7,
      'statements': [
          {'text': 'It was during the reign of Iltutmish that Chengiz Khan reached the Indus in pursuit of the fugitive Khwarezm prince.', 'isCorrect': true},
          {'text': 'It was during the reign of Balban that Chengiz Khan reached the Indus in pursuit of the fugitive Khwarezm prince.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_8').set({
      'questionId': 8,
      'order': 8,
      'statements': [
          {'text': 'Banian was the Indian agent of the East India Company, and Mirasidar was a designated revenue payer to the State.', 'isCorrect': true},
          {'text': 'Banian was a royal tax collector in the Mughal court, and Mirasidar was a designated revenue payer to the State.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_9').set({
      'questionId': 9,
      'order': 9,
      'statements': [
          {'text': 'Regarding Jagirdars and Zamindars during Mughal India, both statements 1 and 2 are incorrect because Jagirdars were holders of land assignments for revenue collection without judicial/police duties (and not hereditary), and Zamindar rights were hereditary.', 'isCorrect': true},
          {'text': 'Regarding Jagirdars and Zamindars during Mughal India, both statements 1 and 2 are incorrect because Jagirdars held hereditary land rights while Zamindars had temporary non-herenditary revenue grants.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_10').set({
      'questionId': 10,
      'order': 10,
      'statements': [
          {'text': 'In the revenue administration of Delhi Sultanate, the in-charge of revenue collection was known as Amil.', 'isCorrect': true},
          {'text': 'In the revenue administration of Delhi Sultanate, the in-charge of revenue collection was known as Muhtasib.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_11').set({
      'questionId': 11,
      'order': 11,
      'statements': [
          {'text': 'Banjaras during the medieval period of Indian history were generally traders.', 'isCorrect': true},
          {'text': 'Banjaras during the medieval period of Indian history were exclusively royal palace guards and royal executioners.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_12').set({
      'questionId': 12,
      'order': 12,
      'statements': [
          {'text': 'With reference to the economic history of medieval India, the term Araghatta refers to a waterwheel used in the irrigation of land.', 'isCorrect': true},
          {'text': 'With reference to the economic history of medieval India, the term Araghatta refers to a waterwheel used in the irrigation of land.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_13').set({
      'questionId': 13,
      'order': 13,
      'statements': [
          {'text': 'Regarding the taxation system of Krishna Deva, the ruler of Vijayanagar, both statements are correct: the tax rate on land was fixed depending on the quality of the land, and private owners of workshops paid an \'industries tax\'.', 'isCorrect': true},
          {'text': 'Regarding the taxation system of Krishna Deva, the ruler of Vijayanagar, both statements are correct: the tax rate on land was fixed depending on the quality of the land, and private owners of workshops paid an \'industries tax\'.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_14').set({
      'questionId': 14,
      'order': 14,
      'statements': [
          {'text': 'With reference to Indian history, an essential element of the feudal system is the emergence of an administrative structure based on the control and possession of land, along with the creation of a lord-vassal relationship between the feudal lord and his overlord.', 'isCorrect': true},
          {'text': 'With reference to Indian history, an essential element of the feudal system is the emergence of an administrative structure based on the control and possession of land, along with the creation of a purely democratic elected council relationship.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_15').set({
      'questionId': 15,
      'order': 15,
      'statements': [
          {'text': 'Durgara was matched with Jammu in medieval Indian states and present regions.', 'isCorrect': true},
          {'text': 'Durgara was matched with Bengal in medieval Indian states and present regions.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_16').set({
      'questionId': 16,
      'order': 16,
      'statements': [
          {'text': 'The arrival of Babur into India led to the establishment of the Timurid dynasty.', 'isCorrect': true},
          {'text': 'The arrival of Babur into India led to the establishment of the Lodi dynasty.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_17').set({
      'questionId': 17,
      'order': 17,
      'statements': [
          {'text': 'Harihara I founded a new city on the south bank of a tributary to the river Krishna and undertook to rule his new kingdom as the agent of a deity to whom all the land south of the river Krishna was supposed to belong.', 'isCorrect': true},
          {'text': 'Harihara I founded a new city on the north bank of the river Ganga as a vassal of Delhi Sultanate and undertook to rule his new kingdom as the agent of a deity to whom all the land south of the river Krishna was supposed to belong.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_18').set({
      'questionId': 18,
      'order': 18,
      'statements': [
          {'text': 'In Medieval India, the designations \'Mahattara\' and \'Pattakila\' were used for village officers.', 'isCorrect': true},
          {'text': 'In Medieval India, the designations \'Mahattara\' and \'Pattakila\' were used for royal naval commanders.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_19').set({
      'questionId': 19,
      'order': 19,
      'statements': [
          {'text': 'The immediate reason for Ahmad Shah Abdali to invade India and fight the Third Battle of Panipat was that he wanted to avenge the expulsion by Marathas of his viceroy Timur Shah from Lahore.', 'isCorrect': true},
          {'text': 'The immediate reason for Ahmad Shah Abdali to invade India and fight the Third Battle of Panipat was that he wanted to recover the stolen Peacock Throne from Bengal.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_20').set({
      'questionId': 20,
      'order': 20,
      'statements': [
          {'text': 'Muhammad bin Tughlaq issued a new gold coin which was called Dinar by Ibn Batutah, but the reason given regarding token currency in gold coins to promote trade is false.', 'isCorrect': true},
          {'text': 'Muhammad bin Tughlaq issued a new gold coin which was called Dinar by Ibn Batutah, but the reason given regarding token currency in gold coins to promote trade is false.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_21').set({
      'questionId': 21,
      'order': 21,
      'statements': [
          {'text': 'The correct chronological order of the Afghan rules to the throne of Delhi is Bahlol Khan Lodi, Sikandar Shah, Ibrahim Lodi.', 'isCorrect': true},
          {'text': 'The correct chronological order of the Afghan rules to the throne of Delhi is Ibrahim Lodi, Sikandar Shah, Bahlol Khan Lodi.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_22').set({
      'questionId': 22,
      'order': 22,
      'statements': [
          {'text': 'Dantidurga laid the foundation of the Rashtrakuta Empire.', 'isCorrect': true},
          {'text': 'Dantidurga laid the foundation of the Chola Empire.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_23').set({
      'questionId': 23,
      'order': 23,
      'statements': [
          {'text': 'When Raja Wodeyar founded the kingdom of Mysore, Venkata II was the ruler of the Vijayanagar Empire.', 'isCorrect': true},
          {'text': 'When Raja Wodeyar founded the kingdom of Mysore, Krishnadevaraya was the ruler of the Vijayanagar Empire.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_24').set({
      'questionId': 24,
      'order': 24,
      'statements': [
          {'text': 'Nasir ud din Mahmud was the last ruler of the Tughluq dynasty of the Delhi Sultanate.', 'isCorrect': true},
          {'text': 'Muhammad bin Tughlaq was the last ruler of the Tughluq dynasty of the Delhi Sultanate.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_25').set({
      'questionId': 25,
      'order': 25,
      'statements': [
          {'text': 'The dynasty of Nizam Shahis of Ahmadnagar came to an end because Ahmadnagar was annexed into the Mughal empire and Husain Shah was consigned to life imprisonment.', 'isCorrect': true},
          {'text': 'The dynasty of Nizam Shahis of Ahmadnagar came to an end because Ahmadnagar was merged peacefully with the Vijayanagara Empire and Husain Shah was consigned to life imprisonment.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_26').set({
      'questionId': 26,
      'order': 26,
      'statements': [
          {'text': 'Regarding the statements on medieval history, only statement 3 is correct (Mir Jafar conspired with the English for the defeat of Nawab Siraj-ud-daulah in the Battle of Plassey), while statements 1 and 2 are incorrect.', 'isCorrect': true},
          {'text': 'Regarding the statements on medieval history, only statement 3 is correct (Mir Jafar strongly opposed the English and defended Siraj-ud-daulah loyally to his death), while statements 1 and 2 are incorrect.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_27').set({
      'questionId': 27,
      'order': 27,
      'statements': [
          {'text': 'Narasimha Saluva ended the Sangama dynasty and seized the throne for himself and started the Saluva dynasty; Vira Narasimha deposed the last Saluva ruler and seized the throne for himself; Vira Narasimha was succeeded by his younger brother, Krishnadeva Raya; and Krishnadeva Raya was succeeded by his half-brother, Achyuta Raya.', 'isCorrect': true},
          {'text': 'Achyuta Raya ended the Sangama dynasty and seized the throne for himself and started the Saluva dynasty; Vira Narasimha deposed the last Saluva ruler and seized the throne for himself; Vira Narasimha was succeeded by his younger brother, Krishnadeva Raya; and Krishnadeva Raya was succeeded by his half-brother, Achyuta Raya.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_28').set({
      'questionId': 28,
      'order': 28,
      'statements': [
          {'text': 'Saluva Narasimha put an end to the old dynasty and assumed the royal title because he wanted to save the kingdom from further degeneration and disintegration.', 'isCorrect': true},
          {'text': 'Saluva Narasimha put an end to the old dynasty and assumed the royal title because he wanted to hand over the territory directly to the Portuguese.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_29').set({
      'questionId': 29,
      'order': 29,
      'statements': [
          {'text': 'Alam Khan, one of those who invited Babar to invade India, was an uncle of Ibrahim Lodi and a pretender to the throne of Delhi.', 'isCorrect': true},
          {'text': 'Alam Khan, one of those who invited Babar to invade India, was a loyal brother-in-law of Babur with no royal claims and a pretender to the throne of Delhi.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_30').set({
      'questionId': 30,
      'order': 30,
      'statements': [
          {'text': 'The Battle of Dharmat was fought between Aurangzeb and Dara Shikoh.', 'isCorrect': true},
          {'text': 'The Battle of Dharmat was fought between Akbar and Hemu.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_31').set({
      'questionId': 31,
      'order': 31,
      'statements': [
          {'text': 'Mughal Emperor Jahandar Shah\'s reign came to an early end because he was deposed by his wazir.', 'isCorrect': true},
          {'text': 'Mughal Emperor Jahandar Shah\'s reign came to an early end because he died peacefully of old age after a long prosperous reign.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_32').set({
      'questionId': 32,
      'order': 32,
      'statements': [
          {'text': 'Emperor Akbar marched towards Afghanistan in 1581 with a huge army, but the reason that he was on his way to reclaim his ancestral country of Ferghana is false.', 'isCorrect': true},
          {'text': 'Emperor Akbar marched towards Afghanistan in 1581 with a huge army, but the reason that he was on his way to suppress the rebellion led by his half-brother Mirza Hakim is false.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_33').set({
      'questionId': 33,
      'order': 33,
      'statements': [
          {'text': 'Shah Alam II spent the initial years as an Emperor far away from his capital because there was always a lurking danger of foreign invasion from the north west frontier.', 'isCorrect': true},
          {'text': 'Shah Alam II spent the initial years as an Emperor far away from his capital because there was always a desire to go on a religious pilgrimage to Mecca.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_34').set({
      'questionId': 34,
      'order': 34,
      'statements': [
          {'text': 'Sultan Qutb ud din Aibak died after a fall from his horse while playing Chaugan.', 'isCorrect': true},
          {'text': 'Sultan Qutb ud din Aibak died after swimming in the Yamuna river while playing Chaugan.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_35').set({
      'questionId': 35,
      'order': 35,
      'statements': [
          {'text': 'Regarding medieval Indian rulers, Alauddin Khalji first set up a separate ariz\'s department.', 'isCorrect': true},
          {'text': 'Regarding medieval Indian rulers, Balban first set up a separate ariz\'s department.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_36').set({
      'questionId': 36,
      'order': 36,
      'statements': [
          {'text': 'The motive behind Shahjahan\'s Balkh campaign was to secure a friendly ruler in Balkh and Badakshan.', 'isCorrect': true},
          {'text': 'The motive behind Shahjahan\'s Balkh campaign was to collect sea shells and pearls.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_37').set({
      'questionId': 37,
      'order': 37,
      'statements': [
          {'text': 'Muhammad bin Tughlaq left Delhi, and for two years lived in a camp called Swarga dwari because Delhi was ravaged by plague and many people died.', 'isCorrect': true},
          {'text': 'Muhammad bin Tughlaq left Delhi, and for two years lived in a camp called Swarga dwari because they were celebrating a grand military victory over China.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_38').set({
      'questionId': 38,
      'order': 38,
      'statements': [
          {'text': 'The Battle of Khanua was certainly more decisive and significant than the First Battle of Panipat because Rana Sanga was certainly a more formidable adversary than Ibrahim Lodi.', 'isCorrect': true},
          {'text': 'The Battle of Khanua was certainly more decisive and significant than the First Battle of Panipat because Ibrahim Lodi brought a massive navy inland.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_39').set({
      'questionId': 39,
      'order': 39,
      'statements': [
          {'text': 'The Mongols under Gengis Khan invaded India during the reign of Iltutmish.', 'isCorrect': true},
          {'text': 'The Mongols under Gengis Khan invaded India during the reign of Aurangzeb.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_40').set({
      'questionId': 40,
      'order': 40,
      'statements': [
          {'text': 'Surat port was called Babul Makka (Gate of Makka) during the Mughal Period.', 'isCorrect': true},
          {'text': 'Surat port was called Gate of Europe during the Mughal Period.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_41').set({
      'questionId': 41,
      'order': 41,
      'statements': [
          {'text': 'Dewan-i-bandagani was established by Tughlaq.', 'isCorrect': true},
          {'text': 'Dewan-i-bandagani was established by Alauddin Khalji.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_42').set({
      'questionId': 42,
      'order': 42,
      'statements': [
          {'text': 'The practice of military governorship was first introduced in India by the Greeks.', 'isCorrect': true},
          {'text': 'The practice of military governorship was first introduced in India by the British.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_43').set({
      'questionId': 43,
      'order': 43,
      'statements': [
          {'text': 'The correct chronological order of the events is the Construction of Qutab Minar, Death of Firoz Tughlaq, Arrival of Portuguese in India, Reign of Krishna Deva Raya', 'isCorrect': true},
          {'text': 'The correct chronological order of the events is the Arrival of Portuguese in India, Construction of Qutab Minar, Reign of Krishna Deva Raya, Death of Firoz Tughlaq', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_44').set({
      'questionId': 44,
      'order': 44,
      'statements': [
          {'text': 'Iqta corresponded to Delhi Sultans, Jagir to Mughals, Amaram to Vijayanagara, and Mokasa to Marathas.', 'isCorrect': true},
          {'text': 'Iqta corresponded to Mughals, Jagir to Delhi Sultans, Amaram to Vijayanagara, and Mokasa to Marathas.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_45').set({
      'questionId': 45,
      'order': 45,
      'statements': [
          {'text': 'Ibrahim Adil Shah was hailed as the \'Jagadguru\' by his Muslim subjects because of his belief in secularism.', 'isCorrect': true},
          {'text': 'Ibrahim Adil Shah was hailed as the \'Jagadguru\' by his Muslim subjects because of his extreme religious intolerance and temple destruction.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_46').set({
      'questionId': 46,
      'order': 46,
      'statements': [
          {'text': 'During the time of Akbar, for every ten cavalrymen, the mansabdars had to maintain twenty horses because horses had to be rested while on march and replacements were necessary in times of war.', 'isCorrect': true},
          {'text': 'During the time of Akbar, for every ten cavalrymen, the mansabdars had to maintain only two horses because horses had to be rested while on march and replacements were necessary in times of war.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_47').set({
      'questionId': 47,
      'order': 47,
      'statements': [
          {'text': 'At first the Turkish administration in India was essentially military, and the country was parcelled out as \'Iqtas\' among leading military leaders.', 'isCorrect': true},
          {'text': 'At first the Turkish administration in India was essentially military, and the country was distributed entirely as free religious grants among leading military leaders.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_48').set({
      'questionId': 48,
      'order': 48,
      'statements': [
          {'text': 'During the reign of Shahjahan, Dara Sikoh was sent on expedition to Balkha, Badakh-shan and Qandahar, but the expedition was not a marvellous success.', 'isCorrect': true},
          {'text': 'During the reign of Shahjahan, Dara Sikoh was sent on expedition to Balkha,Badakh-shan and Qandahar, but the expedition was an absolute and unprecedented marvellous success.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_49').set({
      'questionId': 49,
      'order': 49,
      'statements': [
          {'text': 'Ahadis were those troopers who offered their services singly, did not attach themselves to any chief, and had the emperor as their immediate colonel.', 'isCorrect': true},
          {'text': 'Ahadis were those troopers who were slave soldiers bound strictly to local feudal lords, did not attach themselves to any chief, and had the emperor as their immediate colonel.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_50').set({
      'questionId': 50,
      'order': 50,
      'statements': [
          {'text': 'The historical events matched correctly with their years are 1556 with the Accession of Akbar, 1600 with the Grant of Charter to the East India Company, 1686 with the Death of Shivaji, and 1739 with Nadir Shah\'s capture of Delhi.', 'isCorrect': true},
          {'text': 'The historical events matched correctly with their years are 1556 with the Death of Babur, 1600 with the Battle of Plassey, 1686 with the Death of Shivaji, and 1739 with Nadir Shah\'s capture of Delhi.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_51').set({
      'questionId': 51,
      'order': 51,
      'statements': [
          {'text': 'The member of Shivaji\'s Ashta Pradhana who looked after foreign affairs was the Sumant.', 'isCorrect': true},
          {'text': 'The member of Shivaji\'s Ashta Pradhana who looked after foreign affairs was the Nyayadhish.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_52').set({
      'questionId': 52,
      'order': 52,
      'statements': [
          {'text': 'The loss of Qandhar was a big blow to the Mughal empire from the view point of strategic stronghold.', 'isCorrect': true},
          {'text': 'The loss of Qandhar was a minor financial benefit with no strategic value to the Mughal empire from the view point of strategic stronghold.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_53').set({
      'questionId': 53,
      'order': 53,
      'statements': [
          {'text': 'Fawazil in the Sultanate period meant the excess amount paid to the exchequer by the iqtadars.', 'isCorrect': true},
          {'text': 'Fawazil in the Sultanate period meant the total tax exemption given to royal relatives by the iqtadars.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_54').set({
      'questionId': 54,
      'order': 54,
      'statements': [
          {'text': 'The Sultan of Delhi who is reputed to have built the biggest network of canals in India was Feroz Shah Tughlaq.', 'isCorrect': true},
          {'text': 'The Sultan of Delhi who is reputed to have built the biggest network of canals in India was Qutb-ud-din Aibak.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_55').set({
      'questionId': 55,
      'order': 55,
      'statements': [
          {'text': 'After consolidating his power, Balban assumed the grand title of Zil-i-Ilahi.', 'isCorrect': true},
          {'text': 'After consolidating his power, Balban assumed the grand title of Padshah-e-Hind.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_56').set({
      'questionId': 56,
      'order': 56,
      'statements': [
          {'text': 'The head of the military department under the reorganised central machinery of administration during Akbar\'s reign was Mir Bakshi.', 'isCorrect': true},
          {'text': 'The head of the military department under the reorganised central machinery of administration during Akbar\'s reign was Diwan-i-Wizarat.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_57').set({
      'questionId': 57,
      'order': 57,
      'statements': [
          {'text': 'Nastaliq was a Persian script used in medieval India.', 'isCorrect': true},
          {'text': 'Nastaliq was a South Indian Dravidian script used in medieval India.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_58').set({
      'questionId': 58,
      'order': 58,
      'statements': [
          {'text': 'In medieval India, the Mansabdari system was introduced mainly for making recruitment to the army.', 'isCorrect': true},
          {'text': 'In medieval India, the Mansabdari system was introduced mainly for collecting land revenue in a hereditary manner.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_59').set({
      'questionId': 59,
      'order': 59,
      'statements': [
          {'text': 'The famous jurists of medieval India were Vijnanesvara and Jimutavahana.', 'isCorrect': true},
          {'text': 'The famous jurists of medieval India were Amir Khusrau and Abul Fazl.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_60').set({
      'questionId': 60,
      'order': 60,
      'statements': [
          {'text': 'Ashtapradhan was a Council of Ministers in the Maratha Administration.', 'isCorrect': true},
          {'text': 'Ashtapradhan was a Council of Ministers in the Gupta Administration.', 'isCorrect': false},
      ],
    });
    final topicRef1 = sectionRef.collection('topics').doc('military_organization_campaigns');
    await topicRef1.set({
      'name': 'Military Organization & Campaigns',
      'order': 2,
    });
    await topicRef1.collection('questions').doc('question_1').set({
      'questionId': 1,
      'order': 1,
      'statements': [
          {'text': 'Krishnadevaraya, the ruler of medieval India, gave permission to the Portuguese to build a fort at Bhatkal.', 'isCorrect': true},
          {'text': 'Krishnadevaraya strictly prohibited the Portuguese from building any fort at Bhatkal and expelled all Portuguese traders from the region.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_2').set({
      'questionId': 2,
      'order': 2,
      'statements': [
          {'text': 'Bahadur Shah, the ruler of medieval Gujarat, surrendered Diu to the Portuguese.', 'isCorrect': true},
          {'text': 'Bahadur Shah of Gujarat successfully defended Diu against the Portuguese and never surrendered it.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_3').set({
      'questionId': 3,
      'order': 3,
      'statements': [
          {'text': 'Alfonso de Albuquerque captured Goa from the Bijapur Sultanate, and the English East India Company established a factory at Madras on a plot of land leased from a representative of the Vijayanagara empire.', 'isCorrect': true},
          {'text': 'Alfonso de Albuquerque never captured Goa, and the English East India Company established its first factory at Madras on land leased from the Mughal Emperor.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_4').set({
      'questionId': 4,
      'order': 4,
      'statements': [
          {'text': 'In the first quarter of the seventeenth century, the factory of the English East India Company was located at Broach.', 'isCorrect': true},
          {'text': 'In the first quarter of the seventeenth century, the English East India Company had no factory located at Broach.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_5').set({
      'questionId': 5,
      'order': 5,
      'statements': [
          {'text': 'Francis Xavier died in Goa and a church is dedicated to him there, and the Feast of St. Francis Xavier is celebrated in Goa each year.', 'isCorrect': true},
          {'text': 'Francis Xavier died in Paris, no church is dedicated to him in Goa, and the Feast of St. Francis Xavier is never celebrated in Goa.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_6').set({
      'questionId': 6,
      'order': 6,
      'statements': [
          {'text': 'The first European power to occupy Pondicherry were the Portuguese.', 'isCorrect': true},
          {'text': 'The first European power to occupy Pondicherry were the British, long before any other European nation.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_7').set({
      'questionId': 7,
      'order': 7,
      'statements': [
          {'text': 'The English set up their first factory in Surat with the permission of Jahangir.', 'isCorrect': true},
          {'text': 'The English set up their first factory in Surat without any permission from Jahangir, defying the Mughal court completely.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_8').set({
      'questionId': 8,
      'order': 8,
      'statements': [
          {'text': 'During the time of Mughal Emperor Jahangir, the English East India Company established its first factory in India.', 'isCorrect': true},
          {'text': 'During the time of Mughal Emperor Akbar, the English East India Company established its first factory in India.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_9').set({
      'questionId': 9,
      'order': 9,
      'statements': [
          {'text': 'In the year 1613, the English East India Company was given permission to set up a factory at Surat.', 'isCorrect': true},
          {'text': 'In the year 1613, the English East India Company was completely banned from setting up any factory at Surat.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_10').set({
      'questionId': 10,
      'order': 10,
      'statements': [
          {'text': 'Modern Kochi never became a part of the British colony.', 'isCorrect': true},
          {'text': 'Modern Kochi was the very first major territory annexed entirely as a direct British colony in South India.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_11').set({
      'questionId': 11,
      'order': 11,
      'statements': [
          {'text': 'In India, the Dutch established their earliest factory at Pulicat.', 'isCorrect': true},
          {'text': 'In India, the Dutch established their earliest factory at Delhi under direct Mughal license.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_12').set({
      'questionId': 12,
      'order': 12,
      'statements': [
          {'text': 'The statement that the Portuguese captured Goa in 1499 is not correct (they captured it in 1510).', 'isCorrect': true},
          {'text': 'The Portuguese successfully captured Goa in the exact year 1499 as originally planned.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_13').set({
      'questionId': 13,
      'order': 13,
      'statements': [
          {'text': 'The pair Akbar and Thomas Roe is not correctly matched because Thomas Roe visited the court of Jahangir, not Akbar.', 'isCorrect': true},
          {'text': 'The pair Akbar and Thomas Roe is correctly matched because Thomas Roe personally visited the royal court of Akbar.', 'isCorrect': false},
      ],
    });
    final topicRef2 = sectionRef.collection('topics').doc('art_architecture_literature');
    await topicRef2.set({
      'name': 'Art, Architecture & Literature',
      'order': 3,
    });
    await topicRef2.collection('questions').doc('question_1').set({
      'questionId': 1,
      'order': 1,
      'statements': [
          {'text': '“Yogavasistha” was translated into Persian by Nizamuddin Panipati during the reign of Akbar.', 'isCorrect': true},
          {'text': '“Yogavasistha” was never translated into Persian, and Nizamuddin Panipati lived during the British colonial period.', 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc('question_2').set({
      'questionId': 2,
      'order': 2,
      'statements': [
          {'text': 'According to Portuguese writer Nuniz, the women in the Vijayanagara Empire were expert in wrestling, astrology, accounting, and soothsaying.', 'isCorrect': true},
          {'text': 'According to Portuguese writer Nuniz, women in the Vijayanagara Empire were strictly barred from any education, wrestling, or accounting.', 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc('question_3').set({
      'questionId': 3,
      'order': 3,
      'statements': [
          {'text': 'The statement that \'Tansen was the title given to him by Emperor Akbar\' is not correct with reference to Mian Tansen.', 'isCorrect': true},
          {'text': 'The title \'Tansen\' was officially bestowed upon him by Emperor Akbar in a grand coronation ceremony.', 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc('question_4').set({
      'questionId': 4,
      'order': 4,
      'statements': [
          {'text': 'Mughal Emperor Jahangir shifted emphasis from illustrated manuscripts to albums and individual portraits.', 'isCorrect': true},
          {'text': 'Mughal Emperor Jahangir strictly banned individual portraits and albums, focusing entirely on large wall murals.', 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc('question_5').set({
      'questionId': 5,
      'order': 5,
      'statements': [
          {'text': 'Building Kalyaana Mandapas was a notable feature in temple construction in the kingdom of Vijayanagara.', 'isCorrect': true},
          {'text': 'Building Kalyaana Mandapas was strictly prohibited and completely absent in all temple constructions in the kingdom of Vijayanagara.', 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc('question_6').set({
      'questionId': 6,
      'order': 6,
      'statements': [
          {'text': 'With reference to the cultural history of India, neither the statement regarding Buland Darwaza and Khankah nor the statement regarding Bara Imambara and Rumi Darwaza is correct.', 'isCorrect': true},
          {'text': 'Both the statement regarding Buland Darwaza and Khankah and the statement regarding Bara Imambara and Rumi Darwaza are completely correct.', 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc('question_7').set({
      'questionId': 7,
      'order': 7,
      'statements': [
          {'text': 'Ibadat Khana at Fatehpur Sikri was the hall in which Akbar held discussions with scholars of various religions.', 'isCorrect': true},
          {'text': 'Ibadat Khana at Fatehpur Sikri was exclusively a royal armory and military warehouse where no religious discussions were ever held.', 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc('question_8').set({
      'questionId': 8,
      'order': 8,
      'statements': [
          {'text': 'In Indian history, Abdul Hamid Lahori was an official historian of the reign of Shah Jahan.', 'isCorrect': true},
          {'text': 'Abdul Hamid Lahori was a fierce rebel leader who fought against the reign of Shah Jahan and wrote no historical texts.', 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc('question_9').set({
      'questionId': 9,
      'order': 9,
      'statements': [
          {'text': 'Kitab-I Nauras was written by Ibrahim Adil Shah II, and Amir Khusrau was the originator in India of the early form of the musical style known as Qawwali.', 'isCorrect': true},
          {'text': 'Kitab-I Nauras was written by Emperor Aurangzeb, and Amir Khusrau strictly opposed and banned the musical style known as Qawwali in India.', 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc('question_10').set({
      'questionId': 10,
      'order': 10,
      'statements': [
          {'text': 'The historian Barani refused to consider the state in India under Delhi Sultans as truly Islamic because the Sultan supplemented Muslim law by framing his own regulations.', 'isCorrect': true},
          {'text': 'The historian Barani considered the state under Delhi Sultans as a pure caliphate because the Sultan never framed any independent regulations.', 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc('question_11').set({
      'questionId': 11,
      'order': 11,
      'statements': [
          {'text': 'The striking features of the Jama Masjid in Kashmir completed by Zain-ul-Abidin include turrets, similarity with Buddhist pagodas, and Persian style.', 'isCorrect': true},
          {'text': 'The Jama Masjid in Kashmir featured distinct Greek architectural columns with no similarity to Buddhist pagodas or Persian styles.', 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc('question_12').set({
      'questionId': 12,
      'order': 12,
      'statements': [
          {'text': 'Badauni commented \'The king was freed from his people and they from their king\' on the death of Muhammad-bin Tughlak.', 'isCorrect': true},
          {'text': 'Badauni praised Muhammad-bin Tughlak lavishly, stating \'The people rejoiced under the most compassionate and wise king ever born\'.', 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc('question_13').set({
      'questionId': 13,
      'order': 13,
      'statements': [
          {'text': 'The first writer to use Urdu as the medium of poetic expression was Amir Khusru.', 'isCorrect': true},
          {'text': 'The first writer to use Urdu as the medium of poetic expression was Mirza Ghalib centuries later, long after Amir Khusru.', 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc('question_14').set({
      'questionId': 14,
      'order': 14,
      'statements': [
          {'text': 'The correct chronological order in which they were built is Qutub Minar, Tughlaquabad Fort, Lodi Garden, and Fatehpur Sikri.', 'isCorrect': true},
          {'text': 'The correct chronological order in which they were built is Fatehpur Sikri, Lodi Garden, Tughlaquabad Fort, and Qutub Minar.', 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc('question_15').set({
      'questionId': 15,
      'order': 15,
      'statements': [
          {'text': 'The description \'They are people of yellow complexion, oblique eyes, high cheek bones, sparse hair and medium height\' refers to Mongoloids.', 'isCorrect': true},
          {'text': 'The description \'They are people of yellow complexion, oblique eyes, high cheek bones, sparse hair and medium height\' refers exclusively to nomadic Mediterranean tribes.', 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc('question_16').set({
      'questionId': 16,
      'order': 16,
      'statements': [
          {'text': 'The medieval Indian writer who refers to the discovery of America is Abul Fazl.', 'isCorrect': true},
          {'text': 'The medieval Indian writer who refers to the discovery of America is Amir Khusrau.', 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc('question_17').set({
      'questionId': 17,
      'order': 17,
      'statements': [
          {'text': 'Mughal painting reached its zenith under Jahangir.', 'isCorrect': true},
          {'text': 'Mughal painting reached its absolute lowest decline and faced total extinction during the reign of Jahangir.', 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc('question_18').set({
      'questionId': 18,
      'order': 18,
      'statements': [
          {'text': 'Gol Gumbaz, Bijapur has a dome which is said to be one of the largest in the world.', 'isCorrect': true},
          {'text': 'Gol Gumbaz, Bijapur has a flat wooden roof with no dome whatsoever.', 'isCorrect': false},
      ],
    });
    final topicRef3 = sectionRef.collection('topics').doc('mih_religion_and_philosophy');
    await topicRef3.set({
      'name': 'MIH- Religion and Philosophy',
      'order': 4,
    });
    await topicRef3.collection('questions').doc('question_1').set({
      'questionId': 1,
      'order': 1,
      'statements': [
          {'text': 'Neither Saint Nimbarka was a contemporary of Akbar nor was Saint Kabir greatly influenced by Shaikh Ahmad Sirhindi.', 'isCorrect': true},
          {'text': 'Saint Nimbarka was a close contemporary of Akbar and Saint Kabir was heavily influenced by Shaikh Ahmad Sirhindi.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_2').set({
      'questionId': 2,
      'order': 2,
      'statements': [
          {'text': 'Siddhas (Sittars) of Tamil region were monotheistic and condemned idolatry, and Lingayats of Kannada region questioned the theory of rebirth and rejected the caste hierarchy.', 'isCorrect': true},
          {'text': 'Siddhas (Sittars) of Tamil region were polytheistic and fully endorsed idolatry, while Lingayats of Kannada region accepted rebirth and upheld the strict caste hierarchy.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_3').set({
      'questionId': 3,
      'order': 3,
      'statements': [
          {'text': 'Guru Nanak was preaching when the Lodi dynasty fell and Babur took over.', 'isCorrect': true},
          {'text': 'Guru Nanak had passed away long before the Lodi dynasty fell and Babur took over.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_4').set({
      'questionId': 4,
      'order': 4,
      'statements': [
          {'text': 'Sufi mystics pursued meditation and control of breath, severe ascetic exercises in a lonely place, and recitation of holy songs to arouse a state of ecstasy in their audience.', 'isCorrect': true},
          {'text': 'Sufi mystics strictly prohibited meditation, control of breath, ascetic exercises, and the recitation of holy songs.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_5').set({
      'questionId': 5,
      'order': 5,
      'statements': [
          {'text': 'Buddha was by that time considered as one of the incarnations of Vishnu and thus became a part of Vaishnavism, which contributed to the decline of Buddhism in India.', 'isCorrect': true},
          {'text': 'Buddha was never considered an incarnation of Vishnu, and Buddhism flourished without decline throughout early medieval times.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_6').set({
      'questionId': 6,
      'order': 6,
      'statements': [
          {'text': 'Nagarjuna was not a proponent of the bhakti cult.', 'isCorrect': true},
          {'text': 'Nagarjuna was one of the foremost historical proponents and founders of the medieval bhakti cult.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_7').set({
      'questionId': 7,
      'order': 7,
      'statements': [
          {'text': 'Bhakta Tukaram was a contemporary of the Mughal Emperor Jahangir.', 'isCorrect': true},
          {'text': 'Bhakta Tukaram was a contemporary of the Mughal Emperor Babur instead of Jahangir.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_8').set({
      'questionId': 8,
      'order': 8,
      'statements': [
          {'text': 'Guru Arjan Dev became the Sikh Guru after Guru Ram Das, and other related accurate Sikh history points.', 'isCorrect': true},
          {'text': 'Guru Arjan Dev became the Sikh Guru immediately after Guru Nanak, bypassing Guru Ram Das entirely.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_9').set({
      'questionId': 9,
      'order': 9,
      'statements': [
          {'text': 'Shiakh Nasiruddin Chirag i Dehlavi was a disciple of Shaikh Nizamuddin Auliya, and the Qadiri order of Sufis was first introduced in India by Shaikh Niamtullah and Makhdum Muhammad Jilani.', 'isCorrect': true},
          {'text': 'Shiakh Nasiruddin Chirag i Dehlavi was a fierce rival of Shaikh Nizamuddin Auliya, and the Qadiri order was first introduced by Akbar.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_10').set({
      'questionId': 10,
      'order': 10,
      'statements': [
          {'text': 'Ramananda was the first Bhakti saint to use Hindi for the propagation of his message.', 'isCorrect': true},
          {'text': 'Ramananda strictly refused to use Hindi and only communicated through Sanskrit verses.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_11').set({
      'questionId': 11,
      'order': 11,
      'statements': [
          {'text': 'Khwaja Moinuddin Chisti is the sponsor and the most prominent figure of the Chisti order of Sufis in India, but the assertion is true while the reason regarding the village name origin is false.', 'isCorrect': true},
          {'text': 'Khwaja Moinuddin Chisti had no connection with the Chisti order, and the order originated from a village named Chisti in Delhi.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_12').set({
      'questionId': 12,
      'order': 12,
      'statements': [
          {'text': 'Guru Arjan Dev is correctly matched with the compilation of the Adi Granth.', 'isCorrect': true},
          {'text': 'Guru Arjan Dev is incorrectly matched with the compilation of the Adi Granth, which was compiled by Guru Gobind Singh.', 'isCorrect': false},
      ],
    });

    print('Medieval Indian History seeding completed.');
    print('Topics: 4');
    print('Questions: 103');
    print('Statements: 206');
  }



  static Future<void> ancientHistorySeed() async {
    final subjectRef = _firestore.collection('subjects').doc('history');

    await subjectRef.set({
      'name': 'History',
      'order': 1,
    }, SetOptions(merge: true));

    final sectionRef = subjectRef.collection('sections').doc('ancient_history');

    await sectionRef.set({
      'name': 'Ancient History',
      'order': 1,
    }, SetOptions(merge: true));

    final topicRef0 = sectionRef.collection('topics').doc('politics_and_society');
    await topicRef0.set({
      'name': 'Politics and Society',
      'order': 1,
    });
    await topicRef0.collection('questions').doc('question_1').set({
      'questionId': 1,
      'order': 1,
      'statements': [
          {'text': 'Korkai, Poompuhar, and Muchiri were well known as ports in ancient South India.', 'isCorrect': true},
          {'text': 'Korkai, Poompuhar, and Madurai were well known as ports in ancient South India.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_2').set({
      'questionId': 2,
      'order': 2,
      'statements': [
          {'text': 'None of the Hoysala, Gahadavala, Kakatiya, or Yadava dynasties established their kingdoms in the early eighth century AD.', 'isCorrect': true},
          {'text': 'All of the Hoysala, Gahadavala, Kakatiya, and Yadava dynasties established their kingdoms in the early eighth century AD.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_3').set({
      'questionId': 3,
      'order': 3,
      'statements': [
          {'text': 'Ganeshwar is well known for its copper artefacts.', 'isCorrect': true},
          {'text': 'Ganeshwar is well known for its iron artefacts.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_4').set({
      'questionId': 4,
      'order': 4,
      'statements': [
          {'text': 'The famous \'Dancing Girl\' figurine found at Mohenjo-daro is made of bronze.', 'isCorrect': true},
          {'text': 'The famous \'Dancing Girl\' figurine found at Mohenjo-daro is made of terracotta.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_5').set({
      'questionId': 5,
      'order': 5,
      'statements': [
          {'text': 'Among Chanhudaro, Kot Diji, Sohgaura, and Desalpur, Sohgaura is not a Harappan site.', 'isCorrect': true},
          {'text': 'Among Chanhudaro, Kot Diji, Sohgaura, and Desalpur, Desalpur is not a Harappan site.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_6').set({
      'questionId': 6,
      'order': 6,
      'statements': [
          {'text': 'The people of the Indus Valley Civilization worshipped both male and female deities.', 'isCorrect': true},
          {'text': 'The people of the Indus Valley Civilization worshipped only male deities.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_7').set({
      'questionId': 7,
      'order': 7,
      'statements': [
          {'text': 'The Indus Valley Civilization was predominantly secular, with religion present but not dominant, and cotton was used for manufacturing textiles during this period.', 'isCorrect': true},
          {'text': 'The Indus Valley Civilization was predominantly theocratic, with religion dominating everyday life, and silk was used for manufacturing textiles during this period.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_8').set({
      'questionId': 8,
      'order': 8,
      'statements': [
          {'text': 'Lothal is known for its dockyard, Kalibangan for a ploughed field, Dholavira for an inscription of ten large-sized Harappan signs, and Banawali for a terracotta replica of a plough.', 'isCorrect': true},
          {'text': 'Lothal is known for a ploughed field, Kalibangan for its dockyard, Dholavira for a terracotta replica of a plough, and Banawali for an inscription of ten large-sized Harappan signs.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_9').set({
      'questionId': 9,
      'order': 9,
      'statements': [
          {'text': 'The cow was not represented on the seals and terracotta art of the Harappan culture.', 'isCorrect': true},
          {'text': 'The cow was frequently represented on the seals and terracotta art of the Harappan culture.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_10').set({
      'questionId': 10,
      'order': 10,
      'statements': [
          {'text': 'Rigvedic Aryans used coats of mail and helmets in warfare and had domesticated the horse, features for which the Indus Valley Civilization left no evidence.', 'isCorrect': true},
          {'text': 'Rigvedic Aryans used coats of mail and helmets in warfare, features that are also well attested in Indus Valley Civilization seals and artefacts.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_11').set({
      'questionId': 11,
      'order': 11,
      'statements': [
          {'text': 'The religion of the early Vedic Aryans was primarily the worship of nature and the performance of Yajnas.', 'isCorrect': true},
          {'text': 'The religion of the early Vedic Aryans was primarily temple worship of idols and pilgrimage.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_12').set({
      'questionId': 12,
      'order': 12,
      'statements': [
          {'text': 'Dharma was a conception of obligations and the discharge of one\'s duties to oneself and others, and Rita was the fundamental moral law governing the functioning of the universe.', 'isCorrect': true},
          {'text': 'Rita was a conception of obligations and the discharge of one\'s duties to oneself and others, and Dharma was the fundamental moral law governing the functioning of the universe.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_13').set({
      'questionId': 13,
      'order': 13,
      'statements': [
          {'text': 'The term \'Aryan\' denotes a speech group.', 'isCorrect': true},
          {'text': 'The term \'Aryan\' denotes a racial group.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_14').set({
      'questionId': 14,
      'order': 14,
      'statements': [
          {'text': 'Among Kula, Vamsa, Kosa, and Gotra, Kosa does not belong to the same category as the other three.', 'isCorrect': true},
          {'text': 'Among Kula, Vamsa, Kosa, and Gotra, Gotra does not belong to the same category as the other three.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_15').set({
      'questionId': 15,
      'order': 15,
      'statements': [
          {'text': 'The original home of the gypsies was India.', 'isCorrect': true},
          {'text': 'The original home of the gypsies was Egypt.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_16').set({
      'questionId': 16,
      'order': 16,
      'statements': [
          {'text': 'Of the given territorial region-river pairs for ancient India (600-322 BC), only Asmaka-Godavari and Kosala-Sarayu are correctly matched.', 'isCorrect': true},
          {'text': 'Of the given territorial region-river pairs for ancient India (600-322 BC), all four pairs are correctly matched.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_17').set({
      'questionId': 17,
      'order': 17,
      'statements': [
          {'text': 'Bhilsa is located in present-day Madhya Pradesh, and Girinagar is located in present-day Gujarat.', 'isCorrect': true},
          {'text': 'Bhilsa is located in present-day Gujarat, and Girinagar is located in present-day Madhya Pradesh.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_18').set({
      'questionId': 18,
      'order': 18,
      'statements': [
          {'text': 'Khajuraho is located in the Bundelkhand region, and Tirupati is located in the Rayalaseema region.', 'isCorrect': true},
          {'text': 'Khajuraho is located in the Rayalaseema region, and Tirupati is located in the Bundelkhand region.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_19').set({
      'questionId': 19,
      'order': 19,
      'statements': [
          {'text': 'Kosala and Magadha were the kingdoms associated with the life of the Buddha.', 'isCorrect': true},
          {'text': 'Avanti and Vatsa were the kingdoms associated with the life of the Buddha.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_20').set({
      'questionId': 20,
      'order': 20,
      'statements': [
          {'text': 'The ancient town of Takshasila was located between the Indus and Jhelum rivers.', 'isCorrect': true},
          {'text': 'The ancient town of Takshasila was located between the Ganga and Yamuna rivers.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_21').set({
      'questionId': 21,
      'order': 21,
      'statements': [
          {'text': 'Among Bimbisara, Gautama Buddha, Milinda, and Prasenjit, Milinda was not a contemporary of the other three.', 'isCorrect': true},
          {'text': 'Among Bimbisara, Gautama Buddha, Milinda, and Prasenjit, Prasenjit was not a contemporary of the other three.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_22').set({
      'questionId': 22,
      'order': 22,
      'statements': [
          {'text': 'Magadha was initially the most powerful city-state of India in the 6th century BC.', 'isCorrect': true},
          {'text': 'Avanti was initially the most powerful city-state of India in the 6th century BC.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_23').set({
      'questionId': 23,
      'order': 23,
      'statements': [
          {'text': 'Lothal is known as an ancient dockyard, Sarnath as the site of the Buddha\'s first sermon, and Nalanda as a great seat of Buddhist learning.', 'isCorrect': true},
          {'text': 'Lothal is known as the site of the Buddha\'s first sermon, Sarnath as an ancient dockyard, and Nalanda as a great seat of Buddhist learning.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_24').set({
      'questionId': 24,
      'order': 24,
      'statements': [
          {'text': 'The \'Pradeshika\', \'Rajuka\' and \'Yukta\' were important officers at the district-level administration under Ashokan inscriptions.', 'isCorrect': true},
          {'text': 'The \'Pradeshika\', \'Rajuka\' and \'Yukta\' were important officers at the village-level administration under Ashokan inscriptions.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_25').set({
      'questionId': 25,
      'order': 25,
      'statements': [
          {'text': 'According to Kautilya\'s Arthashastra, if a female slave bore her master a son she was legally freed, and a son born to a female slave and fathered by her master was entitled to the legal status of the master\'s son.', 'isCorrect': true},
          {'text': 'According to Kautilya\'s Arthashastra, a female slave who bore her master a son remained a slave for life, and such a son was denied any legal status as the master\'s son.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_26').set({
      'questionId': 26,
      'order': 26,
      'statements': [
          {'text': 'The inscription advising against praising one\'s own religious sect while blaming others belongs to Ashoka.', 'isCorrect': true},
          {'text': 'The inscription advising against praising one\'s own religious sect while blaming others belongs to Samudragupta.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_27').set({
      'questionId': 27,
      'order': 27,
      'statements': [
          {'text': 'The last Mauryan ruler Brihadratha was assassinated by his commander-in-chief Pushyamitra Sunga, the last Sunga king Devabhuti was assassinated by his Brahmana minister Vasudeva Kanva who usurped the throne, and the last ruler of the Kanva dynasty was deposed by the Andhras.', 'isCorrect': true},
          {'text': 'The last Mauryan ruler Brihadratha was assassinated by his commander-in-chief Vasudeva Kanva, the last Sunga king Devabhuti was assassinated by his Brahmana minister Pushyamitra Sunga who usurped the throne, and the last ruler of the Kanva dynasty was deposed by the Guptas.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_28').set({
      'questionId': 28,
      'order': 28,
      'statements': [
          {'text': 'The Nanda dynasty was ruling over North India at the time of Alexander\'s invasion.', 'isCorrect': true},
          {'text': 'The Maurya dynasty was ruling over North India at the time of Alexander\'s invasion.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_29').set({
      'questionId': 29,
      'order': 29,
      'statements': [
          {'text': 'Ashoka annexed Kalinga to the Mauryan Empire because Kalinga controlled the land and sea routes to South India.', 'isCorrect': true},
          {'text': 'Ashoka annexed Kalinga to the Mauryan Empire because Kalinga controlled the land and sea routes to Central Asia.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_30').set({
      'questionId': 30,
      'order': 30,
      'statements': [
          {'text': 'According to Ashoka\'s edicts, social harmony among people was more important than religious devotion, because he spread ideas of equity rather than promoting a particular religion.', 'isCorrect': true},
          {'text': 'According to Ashoka\'s edicts, religious devotion to Buddhism was more important than social harmony, because he actively promoted the conversion of all his subjects to Buddhism.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_31').set({
      'questionId': 31,
      'order': 31,
      'statements': [
          {'text': 'The correct chronological order of ancient invaders of India is Greeks, followed by Sakas, followed by Kushans.', 'isCorrect': true},
          {'text': 'The correct chronological order of ancient invaders of India is Kushans, followed by Sakas, followed by Greeks.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_32').set({
      'questionId': 32,
      'order': 32,
      'statements': [
          {'text': 'From the third century AD, after the Hun invasion weakened the Roman Empire, Indian merchants relied more and more on South East Asian trade.', 'isCorrect': true},
          {'text': 'From the third century AD, after the Hun invasion weakened the Roman Empire, Indian merchants relied more and more on trade with the Roman Empire.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_33').set({
      'questionId': 33,
      'order': 33,
      'statements': [
          {'text': 'The Indo-Greek kingdom set up in north Afghanistan in the early second century BC was Bactria.', 'isCorrect': true},
          {'text': 'The Indo-Greek kingdom set up in north Afghanistan in the early second century BC was Parthia.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_34').set({
      'questionId': 34,
      'order': 34,
      'statements': [
          {'text': 'Many Greeks, Kushanas, and Shakas embraced Buddhism rather than Hinduism because Buddhism provided easier access to Indian society.', 'isCorrect': true},
          {'text': 'Many Greeks, Kushanas, and Shakas embraced Hinduism rather than Buddhism because Hinduism provided easier access to Indian society.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_35').set({
      'questionId': 35,
      'order': 35,
      'statements': [
          {'text': 'The chronological order in which urban culture, the iron plough, punch-marked silver coins, and gold coins appeared in India is: urban culture, iron plough, punch-marked silver coins, and gold coins.', 'isCorrect': true},
          {'text': 'The chronological order in which urban culture, the iron plough, punch-marked silver coins, and gold coins appeared in India is: gold coins, punch-marked silver coins, iron plough, and urban culture.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_36').set({
      'questionId': 36,
      'order': 36,
      'statements': [
          {'text': 'The terms \'kulyavapa\' and \'dronavapa\' denote units of land measurement in ancient India.', 'isCorrect': true},
          {'text': 'The terms \'kulyavapa\' and \'dronavapa\' denote units of currency in ancient India.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_37').set({
      'questionId': 37,
      'order': 37,
      'statements': [
          {'text': 'During the Gupta period, the towns Ghantasala, Kadura and Chaul were known as ports handling foreign trade.', 'isCorrect': true},
          {'text': 'During the Gupta period, the towns Ghantasala, Kadura and Chaul were known as centres of iron and steel production.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_38').set({
      'questionId': 38,
      'order': 38,
      'statements': [
          {'text': 'Forced labour (Vishti) during the Gupta period was considered a source of income for the State, functioning as a sort of tax paid by the people.', 'isCorrect': true},
          {'text': 'Forced labour (Vishti) during the Gupta period was strictly banned by the State and treated as a criminal offence.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_39').set({
      'questionId': 39,
      'order': 39,
      'statements': [
          {'text': 'The wages, rules of work, standards and prices of ancient Indian guilds (Shreni) were fixed by the guild, and the guild had judicial powers over its own members.', 'isCorrect': true},
          {'text': 'The wages, rules of work, standards and prices of ancient Indian guilds (Shreni) were fixed by the king\'s court, and the guild had no judicial powers over its own members.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_40').set({
      'questionId': 40,
      'order': 40,
      'statements': [
          {'text': 'Fa Hien did not attend the fourth Great Buddhist Council held by Kanishka, and Huan Tsang found Harsha to be a patron of Buddhism rather than antagonistic towards it.', 'isCorrect': true},
          {'text': 'Fa Hien attended the fourth Great Buddhist Council held by Kanishka, and Huan Tsang found Harsha to be antagonistic towards Buddhism rather than a patron of it.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_41').set({
      'questionId': 41,
      'order': 41,
      'statements': [
          {'text': 'The origin of the feudal system in ancient India can be traced to military campaigns, and there was considerable expansion of the feudal system during the Gupta period.', 'isCorrect': true},
          {'text': 'The origin of the feudal system in ancient India can be traced to land grants to priests and temples, and the feudal system declined considerably during the Gupta period.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_42').set({
      'questionId': 42,
      'order': 42,
      'statements': [
          {'text': 'Tamralipti was the port that handled north Indian trade during the Gupta period.', 'isCorrect': true},
          {'text': 'Kaveripattinam was the port that handled north Indian trade during the Gupta period.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_43').set({
      'questionId': 43,
      'order': 43,
      'statements': [
          {'text': 'The silver coins issued by the Guptas were called Rupaka.', 'isCorrect': true},
          {'text': 'The silver coins issued by the Guptas were called Dinara.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_44').set({
      'questionId': 44,
      'order': 44,
      'statements': [
          {'text': 'Sushruta is known for his work on medicine during the Gupta period.', 'isCorrect': true},
          {'text': 'Sushruta is known for his work on astronomy during the Gupta period.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_45').set({
      'questionId': 45,
      'order': 45,
      'statements': [
          {'text': 'In Sanskrit plays written during the Gupta period, women and Sudras speak Prakrit.', 'isCorrect': true},
          {'text': 'In Sanskrit plays written during the Gupta period, women and Sudras speak Sanskrit.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_46').set({
      'questionId': 46,
      'order': 46,
      'statements': [
          {'text': 'Between the decline of the Guptas and the rise of Harshavardhana, power in Northern India was held by the Guptas of Magadha, the Pushyabhutis of Thanesar, the Maukharis of Kanauj, and the Maitrakas of Valabhi.', 'isCorrect': true},
          {'text': 'Between the decline of the Guptas and the rise of Harshavardhana, power in Northern India was held by the Cholas, the Pallavas, the Chalukyas, and the Rashtrakutas.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_47').set({
      'questionId': 47,
      'order': 47,
      'statements': [
          {'text': 'Emperor Harsha\'s southward march was stopped on the Narmada river by Pulakesin II.', 'isCorrect': true},
          {'text': 'Emperor Harsha\'s southward march was stopped on the Godavari river by Pulakesin II.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_48').set({
      'questionId': 48,
      'order': 48,
      'statements': [
          {'text': 'Harshavardhana convened the Prayag Assembly, and he wanted to popularize the Mahayana form of Buddhism.', 'isCorrect': true},
          {'text': 'Harshavardhana convened the Prayag Assembly, and he wanted to popularize the Hinayana form of Buddhism.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_49').set({
      'questionId': 49,
      'order': 49,
      'statements': [
          {'text': 'Rajendra I of the Chola dynasty led a successful military campaign against the kingdom of Srivijaya.', 'isCorrect': true},
          {'text': 'Rajendra I of the Chola dynasty led a successful military campaign against the kingdom of Champa.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_50').set({
      'questionId': 50,
      'order': 50,
      'statements': [
          {'text': 'Mahendravarman I assumed the titles \'Mattavilasa\', \'Vichitrachitta\' and \'Gunabhara\'.', 'isCorrect': true},
          {'text': 'Mahendravarman I assumed the titles \'Vikramaditya\', \'Rajaraja\' and \'Rajendra\'.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_51').set({
      'questionId': 51,
      'order': 51,
      'statements': [
          {'text': 'Eripatti refers to land whose revenue was set apart for maintaining the village tank, and Ghatikas were colleges generally attached to temples.', 'isCorrect': true},
          {'text': 'Ghatikas refers to land whose revenue was set apart for maintaining the village tank, and Eripatti were colleges generally attached to temples.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_52').set({
      'questionId': 52,
      'order': 52,
      'statements': [
          {'text': 'Monsoon winds across the Bay of Bengal facilitated sea voyages, which explains the pre-eminence of early maritime trade links between India and Southeast Asia.', 'isCorrect': true},
          {'text': 'Trade winds across the Arabian Sea facilitated sea voyages, which explains the pre-eminence of early maritime trade links between India and Southeast Asia.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_53').set({
      'questionId': 53,
      'order': 53,
      'statements': [
          {'text': 'The Cholas defeated the Pandya and Chera rulers to establish domination over peninsular India in early medieval times, and they also sent an expedition against the Sailendra empire of Southeast Asia, conquering some of its territories.', 'isCorrect': true},
          {'text': 'The Cholas defeated the Pandya and Chera rulers to establish domination over peninsular India in early medieval times, but their expedition against the Sailendra empire of Southeast Asia ended in defeat and no territory was conquered.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_54').set({
      'questionId': 54,
      'order': 54,
      'statements': [
          {'text': 'Rajendra Chola conquered Ceylon.', 'isCorrect': true},
          {'text': 'Rajendra Chola conquered Burma.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_55').set({
      'questionId': 55,
      'order': 55,
      'statements': [
          {'text': 'The growth of small regional kingdoms rather than large empires in southern Indian history is attributed to too many divisions in the social structure.', 'isCorrect': true},
          {'text': 'The growth of small regional kingdoms rather than large empires in southern Indian history is attributed to the total absence of caste divisions in the social structure.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_56').set({
      'questionId': 56,
      'order': 56,
      'statements': [
          {'text': 'The Gupta dynasty is associated with Deogarh, the Chandellas with Khajuraho, the Chalukyas with Badami, and the Pallavas with Panamalai.', 'isCorrect': true},
          {'text': 'The Gupta dynasty is associated with Khajuraho, the Chandellas with Deogarh, the Chalukyas with Panamalai, and the Pallavas with Badami.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_57').set({
      'questionId': 57,
      'order': 57,
      'statements': [
          {'text': 'Manigrama was a corporation of merchants in ancient India.', 'isCorrect': true},
          {'text': 'Manigrama was a corporation of artisans and blacksmiths in ancient India.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_58').set({
      'questionId': 58,
      'order': 58,
      'statements': [
          {'text': 'Nannuka belonged to the Chandela dynasty, and Nagabhata II belonged to the Gurjara-Pratihara dynasty.', 'isCorrect': true},
          {'text': 'Nannuka belonged to the Gurjara-Pratihara dynasty, and Nagabhata II belonged to the Chandela dynasty.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_59').set({
      'questionId': 59,
      'order': 59,
      'statements': [
          {'text': 'In chronological order, the establishment of Pallava power under Mahendravarman I was followed by the founding of the Pala dynasty by Gopala, then the rise of the Pratiharas under King Bhoja, and finally the establishment of Chola power by Parantaka I.', 'isCorrect': true},
          {'text': 'In chronological order, the establishment of Chola power by Parantaka I was followed by the rise of the Pratiharas under King Bhoja, then the founding of the Pala dynasty by Gopala, and finally the establishment of Pallava power under Mahendravarman I.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_60').set({
      'questionId': 60,
      'order': 60,
      'statements': [
          {'text': '\'Hundi\', as referred to in sources of the post-Harsha period, was a bill of exchange.', 'isCorrect': true},
          {'text': '\'Hundi\', as referred to in sources of the post-Harsha period, was a unit of land measurement.', 'isCorrect': false},
      ],
    });
    await topicRef0.collection('questions').doc('question_61').set({
      'questionId': 61,
      'order': 61,
      'statements': [
          {'text': 'The Pala rulers of Eastern India were patrons of Buddhism.', 'isCorrect': true},
          {'text': 'The Pala rulers of Eastern India were patrons of Jainism.', 'isCorrect': false},
      ],
    });
    final topicRef1 = sectionRef.collection('topics').doc('architecture');
    await topicRef1.set({
      'name': 'Architecture',
      'order': 2,
    });
    await topicRef1.collection('questions').doc('question_1').set({
      'questionId': 1,
      'order': 1,
      'statements': [
          {'text': 'Inamgaon in Maharashtra is a Chalcolithic site, and Mangadu in Kerala is a Megalithic site.', 'isCorrect': true},
          {'text': 'Inamgaon in Maharashtra is a Megalithic site, and Mangadu in Kerala is a Chalcolithic site.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_2').set({
      'questionId': 2,
      'order': 2,
      'statements': [
          {'text': 'Bhaja is well known for its Buddhist cave shrine, and Sittanavasal for its Jain cave shrine.', 'isCorrect': true},
          {'text': 'Bhaja is well known for its Jain cave shrine, and Sittanavasal for its Buddhist cave shrine.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_3').set({
      'questionId': 3,
      'order': 3,
      'statements': [
          {'text': 'Alexander Rea, A. H. Longhurst, Robert Sewell, James Burgess, and Walter Elliot were associated with archaeological excavations in India.', 'isCorrect': true},
          {'text': 'Alexander Rea, A. H. Longhurst, Robert Sewell, James Burgess, and Walter Elliot were British Governors-General of India.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_4').set({
      'questionId': 4,
      'order': 4,
      'statements': [
          {'text': 'A stupa was generally a repository of relics and served as a votive and commemorative structure in Buddhist tradition.', 'isCorrect': true},
          {'text': 'A stupa was generally a royal palace and served as an administrative headquarters in Buddhist tradition.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_5').set({
      'questionId': 5,
      'order': 5,
      'statements': [
          {'text': 'Dhauli in Odisha and Erragudi in Andhra Pradesh are sites of Ashoka\'s major rock edicts.', 'isCorrect': true},
          {'text': 'Dhauli in Odisha and Erragudi in Andhra Pradesh are sites of Harappan excavations.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_6').set({
      'questionId': 6,
      'order': 6,
      'statements': [
          {'text': 'Somnath Temple is one of the Jyotirlinga shrines, and a description of it was given by Al-Biruni.', 'isCorrect': true},
          {'text': 'Somnath Temple is one of the Jyotirlinga shrines, and a description of it was given by Fa Hien.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_7').set({
      'questionId': 7,
      'order': 7,
      'statements': [
          {'text': 'The Ajanta Caves lie in the gorge of the Waghora river.', 'isCorrect': true},
          {'text': 'The Ajanta Caves lie in the gorge of the Narmada river.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_8').set({
      'questionId': 8,
      'order': 8,
      'statements': [
          {'text': 'The Chausath Yogini Temple near Morena is a circular temple built during the reign of the Kachchhapaghata dynasty, and its design has given rise to a popular belief that it inspired the Indian Parliament building.', 'isCorrect': true},
          {'text': 'The Chausath Yogini Temple near Morena is a square temple built during the reign of the Chandela dynasty, and its design has given rise to a popular belief that it inspired the Taj Mahal.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_9').set({
      'questionId': 9,
      'order': 9,
      'statements': [
          {'text': 'Dholavira is well known for its elaborate system of water harvesting and management through a series of dams and connected reservoirs.', 'isCorrect': true},
          {'text': 'Kalibangan is well known for its elaborate system of water harvesting and management through a series of dams and connected reservoirs.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_10').set({
      'questionId': 10,
      'order': 10,
      'statements': [
          {'text': '\'Ranyo Ashoka\' (King Ashoka) is mentioned along with a stone portrait of Ashoka in the relief sculpture inscriptions at Kanganahalli.', 'isCorrect': true},
          {'text': '\'Ranyo Ashoka\' (King Ashoka) is mentioned along with a stone portrait of Ashoka in the relief sculpture inscriptions at Sanchi.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_11').set({
      'questionId': 11,
      'order': 11,
      'statements': [
          {'text': 'The painting of Bodhisattva Padmapani is one of the most famous paintings at Ajanta.', 'isCorrect': true},
          {'text': 'The painting of Bodhisattva Padmapani is one of the most famous paintings at Ellora.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_12').set({
      'questionId': 12,
      'order': 12,
      'statements': [
          {'text': 'Arasavalli is famous for its Sun temple.', 'isCorrect': true},
          {'text': 'Arasavalli is famous for its Shiva temple.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_13').set({
      'questionId': 13,
      'order': 13,
      'statements': [
          {'text': 'James Prinsep was the first to decipher the edicts of Emperor Ashoka.', 'isCorrect': true},
          {'text': 'Alexander Cunningham was the first to decipher the edicts of Emperor Ashoka.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_14').set({
      'questionId': 14,
      'order': 14,
      'statements': [
          {'text': 'Ajanta and Mahabalipuram both have rock-cut monuments.', 'isCorrect': true},
          {'text': 'Ajanta and Mahabalipuram both have entirely brick-built structural monuments with no rock-cut work.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_15').set({
      'questionId': 15,
      'order': 15,
      'statements': [
          {'text': 'Among the Lingaraja Temple, the rock-cut elephant at Dhauli, the rock-cut monuments at Mahabalipuram, and the Varaha image at Udayagiri, the rock-cut elephant at Dhauli was made earliest.', 'isCorrect': true},
          {'text': 'Among the Lingaraja Temple, the rock-cut elephant at Dhauli, the rock-cut monuments at Mahabalipuram, and the Varaha image at Udayagiri, the Lingaraja Temple was made earliest.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_16').set({
      'questionId': 16,
      'order': 16,
      'statements': [
          {'text': 'The grand image of Buddha\'s Mahaparinirvana is at Ajanta, and \'Arjuna\'s Penance\' (Descent of Ganga) is sculpted at Mamallapuram.', 'isCorrect': true},
          {'text': 'The grand image of Buddha\'s Mahaparinirvana is at Mamallapuram, and \'Arjuna\'s Penance\' (Descent of Ganga) is sculpted at Ajanta.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_17').set({
      'questionId': 17,
      'order': 17,
      'statements': [
          {'text': 'The Tabo monastery and temple complex is in the Spiti Valley, the Lhotsava Lhakhang is in the Zanskar Valley, and the Alchi Temple Complex is in Ladakh.', 'isCorrect': true},
          {'text': 'The Tabo monastery and temple complex is in the Zanskar Valley, the Lhotsava Lhakhang is in Ladakh, and the Alchi Temple Complex is in the Spiti Valley.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_18').set({
      'questionId': 18,
      'order': 18,
      'statements': [
          {'text': 'The term \'Panchayatan\' refers to a style of temple construction.', 'isCorrect': true},
          {'text': 'The term \'Panchayatan\' refers to a style of village administration.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_19').set({
      'questionId': 19,
      'order': 19,
      'statements': [
          {'text': 'A Chaitya is a place of worship in Buddhist rock-cut architecture, while a Vihara is the dwelling place of monks.', 'isCorrect': true},
          {'text': 'A Vihara is a place of worship in Buddhist rock-cut architecture, while a Chaitya is the dwelling place of monks.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_20').set({
      'questionId': 20,
      'order': 20,
      'statements': [
          {'text': 'At Ellora, caves were made for different faiths.', 'isCorrect': true},
          {'text': 'At Ellora, all caves were made exclusively for one single faith.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_21').set({
      'questionId': 21,
      'order': 21,
      'statements': [
          {'text': 'The Ajanta caves and the Lepakshi temple are known for their mural paintings.', 'isCorrect': true},
          {'text': 'The Ajanta caves and the Lepakshi temple are known for their stepwells.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_22').set({
      'questionId': 22,
      'order': 22,
      'statements': [
          {'text': 'The Nagara, Dravida, and Vesara are the three main styles of Indian temple architecture.', 'isCorrect': true},
          {'text': 'The Nagara, Dravida, and Indo-Islamic are the three main styles of Indian temple architecture.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_23').set({
      'questionId': 23,
      'order': 23,
      'statements': [
          {'text': 'Besides Ajanta, the other surviving example of Gupta period cave paintings is found at the Bagh Caves.', 'isCorrect': true},
          {'text': 'Besides Ajanta, the other surviving example of Gupta period cave paintings is found at the Elephanta Caves.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_24').set({
      'questionId': 24,
      'order': 24,
      'statements': [
          {'text': 'The famous Virupaksha temple is located at Hampi.', 'isCorrect': true},
          {'text': 'The famous Virupaksha temple is located at Badami.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_25').set({
      'questionId': 25,
      'order': 25,
      'statements': [
          {'text': 'The Buddhist site Tabo Monastery is located in Himachal Pradesh.', 'isCorrect': true},
          {'text': 'The Buddhist site Tabo Monastery is located in Sikkim.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_26').set({
      'questionId': 26,
      'order': 26,
      'statements': [
          {'text': 'The Vidyashankara temple is in Karnataka, the Rajarani temple is in Orissa, the Kandariya Mahadeo temple is in Madhya Pradesh, and the Bhimeswara temple is in Andhra Pradesh.', 'isCorrect': true},
          {'text': 'The Vidyashankara temple is in Andhra Pradesh, the Rajarani temple is in Madhya Pradesh, the Kandariya Mahadeo temple is in Orissa, and the Bhimeswara temple is in Karnataka.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_27').set({
      'questionId': 27,
      'order': 27,
      'statements': [
          {'text': 'The Palitana Temples are located near Bhavnagar.', 'isCorrect': true},
          {'text': 'The Palitana Temples are located near Jaisalmer.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_28').set({
      'questionId': 28,
      'order': 28,
      'statements': [
          {'text': 'The famous Vijaya Vitala temple, with its 56 carved pillars that emit musical notes, is located at Hampi.', 'isCorrect': true},
          {'text': 'The famous Vijaya Vitala temple, with its 56 carved pillars that emit musical notes, is located at Mahabalipuram.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_29').set({
      'questionId': 29,
      'order': 29,
      'statements': [
          {'text': 'Sisupalgarh is in Orissa, Piprahwa is in Uttar Pradesh, Goalpara is in Assam, and Bishnupur is in Manipur.', 'isCorrect': true},
          {'text': 'Sisupalgarh is in Assam, Piprahwa is in Manipur, Goalpara is in Orissa, and Bishnupur is in Uttar Pradesh.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_30').set({
      'questionId': 30,
      'order': 30,
      'statements': [
          {'text': 'The Amaravati Buddhist Stupa is located in Andhra Pradesh.', 'isCorrect': true},
          {'text': 'The Amaravati Buddhist Stupa is located in Madhya Pradesh.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_31').set({
      'questionId': 31,
      'order': 31,
      'statements': [
          {'text': 'Among the given monastery-state pairs, the Kye Monastery is not correctly matched with Arunachal Pradesh — it is actually located in Himachal Pradesh.', 'isCorrect': true},
          {'text': 'Among the given monastery-state pairs, the Kye Monastery is correctly matched with Arunachal Pradesh.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_32').set({
      'questionId': 32,
      'order': 32,
      'statements': [
          {'text': 'The initial design and construction of Angkor Wat took place during the reign of Suryavarman II.', 'isCorrect': true},
          {'text': 'The initial design and construction of Angkor Wat took place during the reign of Jayavarman VII.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_33').set({
      'questionId': 33,
      'order': 33,
      'statements': [
          {'text': 'The Allahabad Pillar inscription is associated with Samudragupta.', 'isCorrect': true},
          {'text': 'The Allahabad Pillar inscription is associated with Chandragupta II.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_34').set({
      'questionId': 34,
      'order': 34,
      'statements': [
          {'text': 'Champaner-Pavagadh Archaeological Park, Chhatrapati Shivaji Railway Station in Mumbai, Mamallapuram, and the Sun Temple at Konark are all included in UNESCO\'s World Heritage List.', 'isCorrect': true},
          {'text': 'Champaner-Pavagadh Archaeological Park, Chhatrapati Shivaji Railway Station in Mumbai, Mamallapuram, and the Sun Temple at Konark have all been rejected for inclusion in UNESCO\'s World Heritage List.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_35').set({
      'questionId': 35,
      'order': 35,
      'statements': [
          {'text': 'The Archaeological Survey of India is an attached office of the Ministry of Culture.', 'isCorrect': true},
          {'text': 'The Archaeological Survey of India is an attached office of the Ministry of Tourism.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_36').set({
      'questionId': 36,
      'order': 36,
      'statements': [
          {'text': 'The statue of Gomateshwara at Sravanabelagola represents the last Tirthankara of the Jains.', 'isCorrect': true},
          {'text': 'The statue of Gomateshwara at Sravanabelagola represents the first Tirthankara of the Jains.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_37').set({
      'questionId': 37,
      'order': 37,
      'statements': [
          {'text': 'The Lingaraja Temple is located in Bhubaneswar.', 'isCorrect': true},
          {'text': 'The Lingaraja Temple is located in Puri.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_38').set({
      'questionId': 38,
      'order': 38,
      'statements': [
          {'text': 'Hoysala monuments are found in Halebid and Belur.', 'isCorrect': true},
          {'text': 'Hoysala monuments are found in Hampi and Badami.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_39').set({
      'questionId': 39,
      'order': 39,
      'statements': [
          {'text': 'The Kushans are associated with the Gandhara School of Art.', 'isCorrect': true},
          {'text': 'The Mauryas are associated with the Gandhara School of Art.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_40').set({
      'questionId': 40,
      'order': 40,
      'statements': [
          {'text': 'The Gandhara School of art bears the mark of Hellenistic influence.', 'isCorrect': true},
          {'text': 'The Gandhara School of art bears the mark of Persian Achaemenid influence.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_41').set({
      'questionId': 41,
      'order': 41,
      'statements': [
          {'text': 'The Sohagaura Copperplate is the earliest known ancient Indian record of a royal order to preserve foodgrains for use during crises.', 'isCorrect': true},
          {'text': 'The Sohagaura Copperplate is the earliest known ancient Indian record of a royal land grant to a temple.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_42').set({
      'questionId': 42,
      'order': 42,
      'statements': [
          {'text': 'Ashoka\'s major rock edicts II and XIII tell us about the Sangam kingdoms.', 'isCorrect': true},
          {'text': 'Ashoka\'s major rock edicts II and XIII tell us about the Indo-Greek kingdoms.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_43').set({
      'questionId': 43,
      'order': 43,
      'statements': [
          {'text': 'Ashokan stone pillars are highly polished, monolithic, and taper in shape along the shaft, but they are freestanding rather than parts of larger architectural structures.', 'isCorrect': true},
          {'text': 'Ashokan stone pillars are roughly hewn, made of multiple joined blocks, and always formed a part of larger temple structures rather than standing freely.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_44').set({
      'questionId': 44,
      'order': 44,
      'statements': [
          {'text': 'The Maski edict mentions the personal name of Ashoka.', 'isCorrect': true},
          {'text': 'The Maski edict mentions the personal name of Chandragupta Maurya.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_45').set({
      'questionId': 45,
      'order': 45,
      'statements': [
          {'text': 'Bharhut sculptures invariably used green schist as their medium.', 'isCorrect': true},
          {'text': 'Bharhut sculptures invariably used red sandstone as their medium.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_46').set({
      'questionId': 46,
      'order': 46,
      'statements': [
          {'text': 'Ashoka is generally referred to in his inscriptions by the name Priyadasi.', 'isCorrect': true},
          {'text': 'Ashoka is generally referred to in his inscriptions by the name Chandashoka.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_47').set({
      'questionId': 47,
      'order': 47,
      'statements': [
          {'text': 'The Nagara, Dravida, and Vesara are the three main styles of Indian temple architecture.', 'isCorrect': true},
          {'text': 'The Nagara, Dravida, and Mughal are the three main styles of Indian temple architecture.', 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc('question_48').set({
      'questionId': 48,
      'order': 48,
      'statements': [
          {'text': 'Bronze icons of Nataraja cast during the Chola period invariably show the deity with four hands.', 'isCorrect': true},
          {'text': 'Bronze icons of Nataraja cast during the Chola period invariably show the deity with eight hands.', 'isCorrect': false},
      ],
    });
    final topicRef2 = sectionRef.collection('topics').doc('literature');
    await topicRef2.set({
      'name': 'Literature',
      'order': 3,
    });
    await topicRef2.collection('questions').doc('question_1').set({
      'questionId': 1,
      'order': 1,
      'statements': [
          {'text': 'Fa-hien (Faxian), the Chinese pilgrim, travelled to India during the reign of Chandragupta II.', 'isCorrect': true},
          {'text': 'Fa-hien (Faxian), the Chinese pilgrim, travelled to India during the reign of Harshavardhana.', 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc('question_2').set({
      'questionId': 2,
      'order': 2,
      'statements': [
          {'text': 'Madhyama-vyayoga is a work attributed to the playwright Bhasa.', 'isCorrect': true},
          {'text': 'Madhyama-vyayoga is a work attributed to the playwright Kalidasa.', 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc('question_3').set({
      'questionId': 3,
      'order': 3,
      'statements': [
          {'text': 'The Upanishads were composed earlier than the Puranas.', 'isCorrect': true},
          {'text': 'The Puranas were composed earlier than the Upanishads.', 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc('question_4').set({
      'questionId': 4,
      'order': 4,
      'statements': [
          {'text': 'Sanghabhuti, an Indian Buddhist monk who travelled to China at the end of the fourth century AD, authored a commentary on the Sarvastivada Vinaya.', 'isCorrect': true},
          {'text': 'Sanghabhuti, an Indian Buddhist monk who travelled to China at the end of the fourth century AD, authored a commentary on the Rig Veda.', 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc('question_5').set({
      'questionId': 5,
      'order': 5,
      'statements': [
          {'text': 'The Hammira-Mahakavya was written by Nayachandra Suri, and the Nitivakyamrita was written by Somadeva Suri.', 'isCorrect': true},
          {'text': 'The Hammira-Mahakavya was written by Somadeva Suri, and the Nitivakyamrita was written by Nayachandra Suri.', 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc('question_6').set({
      'questionId': 6,
      'order': 6,
      'statements': [
          {'text': '\'Vattakirutal\', as mentioned in the Sangam poems, refers to a king defeated in battle committing ritual suicide by starving himself to death.', 'isCorrect': true},
          {'text': '\'Vattakirutal\', as mentioned in the Sangam poems, refers to the coronation ceremony of a newly crowned king.', 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc('question_7').set({
      'questionId': 7,
      'order': 7,
      'statements': [
          {'text': 'The social classification of Varna was known to the Sangam poets.', 'isCorrect': true},
          {'text': 'The social classification of Varna was completely unknown to the Sangam poets.', 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc('question_8').set({
      'questionId': 8,
      'order': 8,
      'statements': [
          {'text': 'Bhavabhuti, Hastimalla, and Kshemeshvara were famous playwrights of ancient India.', 'isCorrect': true},
          {'text': 'Bhavabhuti, Hastimalla, and Kshemeshvara were famous mathematicians of ancient India.', 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc('question_9').set({
      'questionId': 9,
      'order': 9,
      'statements': [
          {'text': 'Kalidasa is associated with Chandragupta II.', 'isCorrect': true},
          {'text': 'Kalidasa is associated with Ashoka.', 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc('question_10').set({
      'questionId': 10,
      'order': 10,
      'statements': [
          {'text': 'Jean-Baptiste Tavernier elaborately discussed diamonds and diamond mines in India.', 'isCorrect': true},
          {'text': 'Jean-Baptiste Tavernier elaborately discussed the temples and architecture of South India.', 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc('question_11').set({
      'questionId': 11,
      'order': 11,
      'statements': [
          {'text': 'Malavikagnimitra is the ancient Indian book that tells the love story of the son of the founder of the Sunga dynasty.', 'isCorrect': true},
          {'text': 'Malavikagnimitra is the ancient Indian book that tells the love story of the founder of the Maurya dynasty.', 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc('question_12').set({
      'questionId': 12,
      'order': 12,
      'statements': [
          {'text': 'Yuan Chwang (Hiuen Tsang) recorded that ordeals by fire, water and poison were used to determine a person\'s innocence or guilt, and that tradesmen had to pay duties at ferries and barrier stations.', 'isCorrect': true},
          {'text': 'Yuan Chwang (Hiuen Tsang) recorded that trial by jury was used to determine a person\'s innocence or guilt, and that tradesmen were exempted from all duties at ferries and barrier stations.', 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc('question_13').set({
      'questionId': 13,
      'order': 13,
      'statements': [
          {'text': 'The manuscripts of the Rig-Veda have been included in UNESCO\'s Memory of the World Register.', 'isCorrect': true},
          {'text': 'The manuscripts of the Rig-Veda have been included in UNESCO\'s List of Intangible Cultural Heritage.', 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc('question_14').set({
      'questionId': 14,
      'order': 14,
      'statements': [
          {'text': 'The Atharvaveda contains an account of magical charms and spells.', 'isCorrect': true},
          {'text': 'The Samaveda contains an account of magical charms and spells.', 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc('question_15').set({
      'questionId': 15,
      'order': 15,
      'statements': [
          {'text': '\'Mrichchhakatika\', written by Shudraka, deals with the love affair of a rich merchant with the daughter of a courtesan.', 'isCorrect': true},
          {'text': '\'Mrichchhakatika\', written by Shudraka, deals with the love affair of a poor Brahmin with the daughter of a courtesan.', 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc('question_16').set({
      'questionId': 16,
      'order': 16,
      'statements': [
          {'text': 'The ancient Indian play \'Mudrarakshasa\' by Vishakhadatta is about the court intrigues at the time of Chandragupta Maurya.', 'isCorrect': true},
          {'text': 'The ancient Indian play \'Mudrarakshasa\' by Vishakhadatta is about the court intrigues at the time of Harshavardhana.', 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc('question_17').set({
      'questionId': 17,
      'order': 17,
      'statements': [
          {'text': 'The Aham and Puram poems of the Padinen Kilkanakku group formed a continuation of the Sangam composition, and were included among the Post-Sangam works as against the Sangam works proper.', 'isCorrect': true},
          {'text': 'The Aham and Puram poems of the Padinen Kilkanakku group predate the Sangam composition entirely, and were included among the Sangam works proper rather than the Post-Sangam works.', 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc('question_18').set({
      'questionId': 18,
      'order': 18,
      'statements': [
          {'text': 'The chronological order in which Megasthenes, Fa Hien, Hieun Tsang, and I-tsing visited India is: Megasthenes, Fa Hien, Hieun Tsang, and then I-tsing.', 'isCorrect': true},
          {'text': 'The chronological order in which Megasthenes, Fa Hien, Hieun Tsang, and I-tsing visited India is: I-tsing, Hieun Tsang, Fa Hien, and then Megasthenes.', 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc('question_19').set({
      'questionId': 19,
      'order': 19,
      'statements': [
          {'text': '\'Mrichchakatikam\' was written by Shudraka, \'Mudrarakshasa\' by Vishakhadatta, and \'Harshacharita\' by Banabhatta.', 'isCorrect': true},
          {'text': '\'Mrichchakatikam\' was written by Banabhatta, \'Mudrarakshasa\' by Shudraka, and \'Harshacharita\' by Vishakhadatta.', 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc('question_20').set({
      'questionId': 20,
      'order': 20,
      'statements': [
          {'text': 'Pampa\'s work on the Mahabharata theme was composed in Kannada.', 'isCorrect': true},
          {'text': 'Pampa\'s work on the Mahabharata theme was composed in Telugu.', 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc('question_21').set({
      'questionId': 21,
      'order': 21,
      'statements': [
          {'text': 'Kharoshti was an ancient Indian script written from right to left.', 'isCorrect': true},
          {'text': 'Kharoshti was an ancient Indian script written from left to right.', 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc('question_22').set({
      'questionId': 22,
      'order': 22,
      'statements': [
          {'text': 'The famous dialogue between Nachiketa and Yama is mentioned in the Kathopanishad.', 'isCorrect': true},
          {'text': 'The famous dialogue between Nachiketa and Yama is mentioned in the Chandogya Upanishad.', 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc('question_23').set({
      'questionId': 23,
      'order': 23,
      'statements': [
          {'text': '\'Milindapanho\' is in the form of a dialogue between King Menander and the Buddhist monk Nagasena.', 'isCorrect': true},
          {'text': '\'Milindapanho\' is in the form of a dialogue between King Ashoka and the Buddhist monk Upagupta.', 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc('question_24').set({
      'questionId': 24,
      'order': 24,
      'statements': [
          {'text': 'Varahamihira wrote the Brhat Samhita, Visakhadatta wrote the Devi Chandragupta, Sudraka wrote the Mrichchhakatikam, and Bilhana wrote the Vikramankadevacharita.', 'isCorrect': true},
          {'text': 'Varahamihira wrote the Devi Chandragupta, Visakhadatta wrote the Brhat Samhita, Sudraka wrote the Vikramankadevacharita, and Bilhana wrote the Mrichchhakatikam.', 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc('question_25').set({
      'questionId': 25,
      'order': 25,
      'statements': [
          {'text': '\'Prem Vatika\', poems on the life of Krishna, was composed by Raskhan.', 'isCorrect': true},
          {'text': '\'Prem Vatika\', poems on the life of Krishna, was composed by Surdas.', 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc('question_26').set({
      'questionId': 26,
      'order': 26,
      'statements': [
          {'text': 'The river most mentioned in early Vedic literature is the Sindhu.', 'isCorrect': true},
          {'text': 'The river most mentioned in early Vedic literature is the Ganga.', 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc('question_27').set({
      'questionId': 27,
      'order': 27,
      'statements': [
          {'text': 'The term \'apabhramsa\', used in medieval Sanskrit texts, denotes early forms of some of the modern Indian languages.', 'isCorrect': true},
          {'text': 'The term \'apabhramsa\', used in medieval Sanskrit texts, denotes a category of ancient coins.', 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc('question_28').set({
      'questionId': 28,
      'order': 28,
      'statements': [
          {'text': 'The Arthashastra is the ancient Indian text that allows divorce to a wife deserted by her husband.', 'isCorrect': true},
          {'text': 'The Manusmriti is the ancient Indian text that allows divorce to a wife deserted by her husband.', 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc('question_29').set({
      'questionId': 29,
      'order': 29,
      'statements': [
          {'text': 'Lopamudra was a Brahmavadini who composed some hymns of the Vedas.', 'isCorrect': true},
          {'text': 'Lopamudra was a queen who composed the Arthashastra.', 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc('question_30').set({
      'questionId': 30,
      'order': 30,
      'statements': [
          {'text': 'The term \'Yavanapriya\', mentioned in ancient Sanskrit texts, denoted pepper.', 'isCorrect': true},
          {'text': 'The term \'Yavanapriya\', mentioned in ancient Sanskrit texts, denoted silk.', 'isCorrect': false},
      ],
    });
    final topicRef3 = sectionRef.collection('topics').doc('religion_and_philosophy');
    await topicRef3.set({
      'name': 'Religion and Philosophy',
      'order': 4,
    });
    await topicRef3.collection('questions').doc('question_1').set({
      'questionId': 1,
      'order': 1,
      'statements': [
          {'text': 'Gautama Buddha was generally known by the epithets Shakyamuni and Tathagata.', 'isCorrect': true},
          {'text': 'Gautama Buddha was generally known by the epithets Mahavira and Jina.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_2').set({
      'questionId': 2,
      'order': 2,
      'statements': [
          {'text': 'The belief that souls are the property not only of animal and plant life but also of rocks, running water, and other natural objects is a core belief of Jainism.', 'isCorrect': true},
          {'text': 'The belief that souls are the property not only of animal and plant life but also of rocks, running water, and other natural objects is a core belief of Buddhism.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_3').set({
      'questionId': 3,
      'order': 3,
      'statements': [
          {'text': 'Dhanyakataka, a prominent Buddhist centre under the Mahasanghikas, was located in the Andhra region.', 'isCorrect': true},
          {'text': 'Dhanyakataka, a prominent Buddhist centre under the Mahasanghikas, was located in the Kashmir region.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_4').set({
      'questionId': 4,
      'order': 4,
      'statements': [
          {'text': 'Ramanuja taught that devotion was the best means of salvation.', 'isCorrect': true},
          {'text': 'Ramanuja taught that ritual sacrifice was the best means of salvation.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_5').set({
      'questionId': 5,
      'order': 5,
      'statements': [
          {'text': 'The Parishishtaparvan and the Trishashtilakshana Mahapurana are Jaina texts.', 'isCorrect': true},
          {'text': 'The Parishishtaparvan and the Trishashtilakshana Mahapurana are Buddhist texts.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_6').set({
      'questionId': 6,
      'order': 6,
      'statements': [
          {'text': 'Dignaga is known as a Buddhist scholar, and Nathamuni is known as a Vaishnava scholar.', 'isCorrect': true},
          {'text': 'Dignaga is known as a Vaishnava scholar, and Nathamuni is known as a Buddhist scholar.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_7').set({
      'questionId': 7,
      'order': 7,
      'statements': [
          {'text': 'In the Mitakshara system, sons can claim a right to property during the lifetime of the father, whereas in the Dayabhaga system, sons can claim such a right only after the father\'s death.', 'isCorrect': true},
          {'text': 'In the Dayabhaga system, sons can claim a right to property during the lifetime of the father, whereas in the Mitakshara system, sons can claim such a right only after the father\'s death.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_8').set({
      'questionId': 8,
      'order': 8,
      'statements': [
          {'text': 'The term \'paramitas\' refers to the perfections whose attainment leads to the Bodhisattva path.', 'isCorrect': true},
          {'text': 'The term \'paramitas\' refers to a set of taxes collected by ancient Indian kings.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_9').set({
      'questionId': 9,
      'order': 9,
      'statements': [
          {'text': 'The Lokottaravadin sect was an offshoot of the Mahasanghika sect of Buddhism, and the deification of the Buddha by the Mahasanghikas fostered the growth of Mahayana Buddhism.', 'isCorrect': true},
          {'text': 'The Lokottaravadin sect was an offshoot of the Sthaviravadin sect of Buddhism, and the Sthaviravadins\' rejection of image worship fostered the growth of Mahayana Buddhism.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_10').set({
      'questionId': 10,
      'order': 10,
      'statements': [
          {'text': 'A Parivrajaka was a renunciant and wanderer, and an Upasaka was a lay follower of Buddhism.', 'isCorrect': true},
          {'text': 'A Parivrajaka was a lay follower of Buddhism, and an Upasaka was a renunciant and wanderer.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_11').set({
      'questionId': 11,
      'order': 11,
      'statements': [
          {'text': 'Deification of the Buddha, treading the path of Bodhisattvas, and image worship and rituals are all features of Mahayana Buddhism.', 'isCorrect': true},
          {'text': 'Deification of the Buddha, treading the path of Bodhisattvas, and image worship and rituals are all features of Hinayana Buddhism.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_12').set({
      'questionId': 12,
      'order': 12,
      'statements': [
          {'text': 'The \'Sthanakvasi\' sect belongs to Jainism.', 'isCorrect': true},
          {'text': 'The \'Sthanakvasi\' sect belongs to Buddhism.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_13').set({
      'questionId': 13,
      'order': 13,
      'statements': [
          {'text': 'Maitreya is regarded as a future Buddha, yet to come to save the world.', 'isCorrect': true},
          {'text': 'Maitreya is regarded as the historical founder of Buddhism.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_14').set({
      'questionId': 14,
      'order': 14,
      'statements': [
          {'text': 'The Sarvastivadins held that the constituents of phenomena were not wholly momentary but existed forever in a latent form.', 'isCorrect': true},
          {'text': 'The Sarvastivadins held that the constituents of phenomena were wholly momentary and left no trace of any kind after ceasing to exist.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_15').set({
      'questionId': 15,
      'order': 15,
      'statements': [
          {'text': 'A Bodhisattva is a compassionate being on the way to enlightenment who delays achieving their own salvation to help all sentient beings on their path to it.', 'isCorrect': true},
          {'text': 'A Bodhisattva is a being who achieves enlightenment solely for their own liberation, without regard for helping other sentient beings.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_16').set({
      'questionId': 16,
      'order': 16,
      'statements': [
          {'text': 'The profession of memorizing chronicles, dynastic histories, and epic tales in ancient India was that of the Maagadha.', 'isCorrect': true},
          {'text': 'The profession of memorizing chronicles, dynastic histories, and epic tales in ancient India was that of the Purohita.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_17').set({
      'questionId': 17,
      'order': 17,
      'statements': [
          {'text': '\'Bijak\' is a composition of the teachings of Kabir, not Dadu Dayal, and the philosophy of Pushti Marg was propounded by Vallabhacharya, not Madhvacharya.', 'isCorrect': true},
          {'text': '\'Bijak\' is a composition of the teachings of Dadu Dayal, not Kabir, and the philosophy of Pushti Marg was propounded by Madhvacharya, not Vallabhacharya.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_18').set({
      'questionId': 18,
      'order': 18,
      'statements': [
          {'text': 'Lokayata and Kapalika are not among the six systems of Indian philosophy.', 'isCorrect': true},
          {'text': 'Lokayata and Kapalika are among the six orthodox systems of Indian philosophy.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_19').set({
      'questionId': 19,
      'order': 19,
      'statements': [
          {'text': 'The Sankhya school holds that it is self-knowledge that leads to liberation, not any exterior influence or agent.', 'isCorrect': true},
          {'text': 'The Sankhya school holds that it is devotion to a personal God, not self-knowledge, that leads to liberation.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_20').set({
      'questionId': 20,
      'order': 20,
      'statements': [
          {'text': 'The concept of Nirvana in Buddhism is best described as the extinction of the flame of desire.', 'isCorrect': true},
          {'text': 'The concept of Nirvana in Buddhism is best described as rebirth into a heavenly paradise.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_21').set({
      'questionId': 21,
      'order': 21,
      'statements': [
          {'text': 'According to Jain doctrine, the surest way of annihilating Karma is to practice penance, every object — even the smallest particle — has a soul, and Karma is the bane of the soul and must be ended.', 'isCorrect': true},
          {'text': 'According to Jain doctrine, the surest way of annihilating Karma is to perform Vedic sacrifices, only living beings possess a soul, and Karma is a neutral force that need not be ended.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_22').set({
      'questionId': 22,
      'order': 22,
      'statements': [
          {'text': 'The \'Bhumisparsha Mudra\' hand gesture symbolizes the Buddha calling the Earth to witness his purity and chastity despite the temptations of Mara.', 'isCorrect': true},
          {'text': 'The \'Bhumisparsha Mudra\' hand gesture symbolizes the Buddha delivering his first sermon at Sarnath.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_23').set({
      'questionId': 23,
      'order': 23,
      'statements': [
          {'text': 'Indifference to the authority of the Vedas and denial of the efficacy of rituals were common to both Buddhism and Jainism.', 'isCorrect': true},
          {'text': 'Acceptance of the authority of the Vedas and strong emphasis on the efficacy of rituals were common to both Buddhism and Jainism.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_24').set({
      'questionId': 24,
      'order': 24,
      'statements': [
          {'text': 'Jain philosophy holds that the world is created and maintained by universal law.', 'isCorrect': true},
          {'text': 'Jain philosophy holds that the world is created and maintained by a single Creator God.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_25').set({
      'questionId': 25,
      'order': 25,
      'statements': [
          {'text': 'Jainism enjoyed the patronage of the Kalinga king Kharavela in the first century BC.', 'isCorrect': true},
          {'text': 'Jainism enjoyed the patronage of the Magadhan king Ajatashatru in the first century BC.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_26').set({
      'questionId': 26,
      'order': 26,
      'statements': [
          {'text': 'The correct chronological order is Shankaracharya, followed by Ramanuja, followed by Chaitanya.', 'isCorrect': true},
          {'text': 'The correct chronological order is Chaitanya, followed by Ramanuja, followed by Shankaracharya.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_27').set({
      'questionId': 27,
      'order': 27,
      'statements': [
          {'text': 'Gautama Buddha\'s mother was a princess from the Koshalan dynasty, and Parshvanatha, the 23rd Tirthankara, belonged to Banaras.', 'isCorrect': true},
          {'text': 'Gautama Buddha\'s mother was a princess from the Magadhan dynasty, and Parshvanatha, the 23rd Tirthankara, belonged to Vaishali.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_28').set({
      'questionId': 28,
      'order': 28,
      'statements': [
          {'text': 'The Pavarana ceremony in ancient Indian Buddhist monasteries was the confession by monks of their offences committed during their stay in the monasteries during the rainy season.', 'isCorrect': true},
          {'text': 'The Pavarana ceremony in ancient Indian Buddhist monasteries was the annual ordination ceremony for new monks joining the Sangha.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_29').set({
      'questionId': 29,
      'order': 29,
      'statements': [
          {'text': 'Vasumitra presided over the Buddhist Council held during the reign of Kanishka in Kashmir.', 'isCorrect': true},
          {'text': 'Vasumitra presided over the Buddhist Council held during the reign of Ashoka in Pataliputra.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_30').set({
      'questionId': 30,
      'order': 30,
      'statements': [
          {'text': 'Namdev was a tailor, Kabir was a weaver, Ravidas was a cobbler, and Sena was a barber.', 'isCorrect': true},
          {'text': 'Namdev was a weaver, Kabir was a tailor, Ravidas was a barber, and Sena was a cobbler.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_31').set({
      'questionId': 31,
      'order': 31,
      'statements': [
          {'text': 'Jainism\'s emphasis on nonviolence (ahimsa) prevented agriculturalists from embracing it, because cultivation involved the killing of insects and pests.', 'isCorrect': true},
          {'text': 'Jainism\'s emphasis on nonviolence (ahimsa) made it especially popular among agriculturalists, who saw farming as a form of devotion.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_32').set({
      'questionId': 32,
      'order': 32,
      'statements': [
          {'text': 'The concept of the Eightfold Path forms the theme of the Dharma Chakra Pravartana Sutta.', 'isCorrect': true},
          {'text': 'The concept of the Eightfold Path forms the theme of the Mahaparinibbana Sutta.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_33').set({
      'questionId': 33,
      'order': 33,
      'statements': [
          {'text': 'In Mahayana Buddhism, the Bodhisattva Avalokitesvara was also known as Padmapani.', 'isCorrect': true},
          {'text': 'In Mahayana Buddhism, the Bodhisattva Maitreya was also known as Padmapani.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_34').set({
      'questionId': 34,
      'order': 34,
      'statements': [
          {'text': 'The Therigatha is not a part of early Jaina literature.', 'isCorrect': true},
          {'text': 'The Therigatha is a part of early Jaina literature.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_35').set({
      'questionId': 35,
      'order': 35,
      'statements': [
          {'text': 'Indifference to the authority of the Vedas, denial of the efficacy of rituals, and non-injury to animal life were common to both Buddhism and Jainism.', 'isCorrect': true},
          {'text': 'Strict adherence to Vedic rituals and animal sacrifice were common to both Buddhism and Jainism.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_36').set({
      'questionId': 36,
      'order': 36,
      'statements': [
          {'text': 'Muinuddin Chishti was the Sufi saint who maintained that devotional music was one way of coming close to God.', 'isCorrect': true},
          {'text': 'Muinuddin Chishti was the Sufi saint who strictly forbade any form of music in the path to God.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_37').set({
      'questionId': 37,
      'order': 37,
      'statements': [
          {'text': 'Mattamayura was a Saiva sect in ancient India.', 'isCorrect': true},
          {'text': 'Mattamayura was a Vaishnava sect in ancient India.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_38').set({
      'questionId': 38,
      'order': 38,
      'statements': [
          {'text': 'According to ancient Indian cosmogonic ideas, the sequential order of the cycle of four Yugas is Krita, Treta, Dvapara, and Kali.', 'isCorrect': true},
          {'text': 'According to ancient Indian cosmogonic ideas, the sequential order of the cycle of four Yugas is Kali, Dvapara, Treta, and Krita.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_39').set({
      'questionId': 39,
      'order': 39,
      'statements': [
          {'text': 'According to the Mimamsa system of philosophy, liberation is possible by means of Karma.', 'isCorrect': true},
          {'text': 'According to the Mimamsa system of philosophy, liberation is possible only by means of divine grace, independent of Karma.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_40').set({
      'questionId': 40,
      'order': 40,
      'statements': [
          {'text': 'The concept of Anuvrata was advocated by Jainism.', 'isCorrect': true},
          {'text': 'The concept of Anuvrata was advocated by Buddhism.', 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc('question_41').set({
      'questionId': 41,
      'order': 41,
      'statements': [
          {'text': 'The word \'Hindu\', as a reference to the people of Hind (India), was first used by the Arabs.', 'isCorrect': true},
          {'text': 'The word \'Hindu\', as a reference to the people of Hind (India), was first used by the Portuguese.', 'isCorrect': false},
      ],
    });

    print('Ancient History seeding completed.');
    print('Topics: 4');
    print('Questions: 180');
    print('Statements: 360');
  }


  static Future<void> artCultureSeed() async {
    // =========================================================================
    // Subject
    // =========================================================================

    final subjectRef =
        _firestore.collection('subjects').doc('history');

    await subjectRef.set({
      'name': 'History',
      'order': 1,
    });

    // =========================================================================
    // Section
    // =========================================================================

final sectionRef =
    subjectRef.collection('sections').doc('art_culture');

await sectionRef.set({
  'name': 'Art & Culture',
  'order': 1,
});

    // Topic: Art and Craft in India
    final topicRef0 =
        sectionRef.collection('topics').doc('art_and_craft_in_india');

    await topicRef0.set({
      'name': 'Art and Craft in India',
      'order': 1,
    });

      await topicRef0.collection('questions').doc('question_1').set({
        'questionId': 1,
        'order': 1,
        'statements': [
        {
          'text': 'The first Gandharva Mahavidyalaya, a music training school, was set up in 1901 by Vishnu Digambar Paluskar in Lahore.',
          'isCorrect': true,
        },
        {
          'text': 'The first Gandharva Mahavidyalaya, a music training school, was set up in 1901 by Vishnu Digambar Paluskar in Gwalior.',
          'isCorrect': false,
        }
        ],
      });
      await topicRef0.collection('questions').doc('question_2').set({
        'questionId': 2,
        'order': 2,
        'statements': [
        {
          'text': 'Garba dance was the latest inclusion in the Intangible Cultural Heritage List of UNESCO.',
          'isCorrect': true,
        },
        {
          'text': 'Chhau dance was the latest inclusion in the Intangible Cultural Heritage List of UNESCO.',
          'isCorrect': false,
        }
        ],
      });
      await topicRef0.collection('questions').doc('question_3').set({
        'questionId': 3,
        'order': 3,
        'statements': [
        {
          'text': 'In 2023, exactly two of the following were added to UNESCO\'s World Heritage List: Shantiniketan, Rani-ki-Vav, the Sacred Ensembles of the Hoysalas, and the Mahabodhi Temple Complex at Bodhgaya.',
          'isCorrect': true,
        },
        {
          'text': 'In 2023, all four of the following were added to UNESCO\'s World Heritage List: Shantiniketan, Rani-ki-Vav, the Sacred Ensembles of the Hoysalas, and the Mahabodhi Temple Complex at Bodhgaya.',
          'isCorrect': false,
        }
        ],
      });
      await topicRef0.collection('questions').doc('question_4').set({
        'questionId': 4,
        'order': 4,
        'statements': [
        {
          'text': 'The Chapchar Kut Festival is associated with Mizoram, and the Khongjom Parba ballad is associated with Manipur.',
          'isCorrect': true,
        },
        {
          'text': 'The Thang-Ta dance is associated with Sikkim.',
          'isCorrect': false,
        }
        ],
      });
      await topicRef0.collection('questions').doc('question_5').set({
        'questionId': 5,
        'order': 5,
        'statements': [
        {
          'text': 'The painting \'Bani Thani\' belongs to the Kishangarh School.',
          'isCorrect': true,
        },
        {
          'text': 'The painting \'Bani Thani\' belongs to the Bundi School.',
          'isCorrect': false,
        }
        ],
      });
      await topicRef0.collection('questions').doc('question_6').set({
        'questionId': 6,
        'order': 6,
        'statements': [
        {
          'text': 'Tyagaraja created several new ragas, and Annamacharya\'s kirtanas are devotional songs in praise of Lord Venkateshwara.',
          'isCorrect': true,
        },
        {
          'text': 'Most of the Tyagaraja Kritis are devotional songs in praise of Lord Krishna, and Annamacharya and Tyagaraja were contemporaries.',
          'isCorrect': false,
        }
        ],
      });
      await topicRef0.collection('questions').doc('question_7').set({
        'questionId': 7,
        'order': 7,
        'statements': [
        {
          'text': 'Puthukkuli Shawls are a traditional craft associated with Tamil Nadu.',
          'isCorrect': true,
        },
        {
          'text': 'Sujni Embroidery is a traditional craft associated with Maharashtra.',
          'isCorrect': false,
        }
        ],
      });
      await topicRef0.collection('questions').doc('question_8').set({
        'questionId': 8,
        'order': 8,
        'statements': [
        {
          'text': 'Manipuri Sankirtana is a song and dance performance that narrates the life and deeds of Lord Krishna.',
          'isCorrect': true,
        },
        {
          'text': 'In Manipuri Sankirtana performances, cymbals are the only musical instruments used.',
          'isCorrect': false,
        }
        ],
      });
      await topicRef0.collection('questions').doc('question_9').set({
        'questionId': 9,
        'order': 9,
        'statements': [
        {
          'text': 'Kalamkari refers to a hand-painted cotton textile made in South India.',
          'isCorrect': true,
        },
        {
          'text': 'Kalamkari refers to a hand-painted decorative silk cloth made in North-Western India.',
          'isCorrect': false,
        }
        ],
      });
      await topicRef0.collection('questions').doc('question_10').set({
        'questionId': 10,
        'order': 10,
        'statements': [
        {
          'text': 'Sattriya dance is a combination of music, dance and drama, and is a centuries-old living tradition of the Vaishnavites of Assam.',
          'isCorrect': true,
        },
        {
          'text': 'Sattriya dance is based on classical Ragas and Talas of devotional songs composed by Tulsidas, Kabir and Mirabai.',
          'isCorrect': false,
        }
        ],
      });
      await topicRef0.collection('questions').doc('question_11').set({
        'questionId': 11,
        'order': 11,
        'statements': [
        {
          'text': 'Kalaripayattu is an ancient martial art and a living tradition in some parts of South India.',
          'isCorrect': true,
        },
        {
          'text': 'Kalaripayattu is an ancient form of dance-drama and a living tradition in the northern part of Malabar.',
          'isCorrect': false,
        }
        ],
      });
      await topicRef0.collection('questions').doc('question_12').set({
        'questionId': 12,
        'order': 12,
        'statements': [
        {
          'text': 'Garba is associated with Gujarat, and Yakshagana is associated with Karnataka.',
          'isCorrect': true,
        },
        {
          'text': 'Mohiniattam is a classical dance form associated with Odisha.',
          'isCorrect': false,
        }
        ],
      });
      await topicRef0.collection('questions').doc('question_13').set({
        'questionId': 13,
        'order': 13,
        'statements': [
        {
          'text': 'Chanderi and Kancheepuram are towns in India famous for the production of traditional sarees/fabric.',
          'isCorrect': true,
        },
        {
          'text': 'Bhadrachalam and Karnal are towns in India famous for the production of traditional sarees/fabric.',
          'isCorrect': false,
        }
        ],
      });
      await topicRef0.collection('questions').doc('question_14').set({
        'questionId': 14,
        'order': 14,
        'statements': [
        {
          'text': 'The \'Tribhanga\' pose in Indian dance and dramatics involves one leg bent, with the body slightly but oppositely curved at the waist and neck.',
          'isCorrect': true,
        },
        {
          'text': 'The \'Tribhanga\' pose in Indian dance and dramatics involves a little smile, a slightly curved waist and certain hand gestures used to express feelings of love or eroticism.',
          'isCorrect': false,
        }
        ],
      });
      await topicRef0.collection('questions').doc('question_15').set({
        'questionId': 15,
        'order': 15,
        'statements': [
        {
          'text': 'Dhrupad is primarily devotional and spiritual music, and its Alap uses Sanskrit syllables drawn from Mantras.',
          'isCorrect': true,
        },
        {
          'text': 'Dhrupad originated and developed during the Rajput Kingdom period.',
          'isCorrect': false,
        }
        ],
      });
      await topicRef0.collection('questions').doc('question_16').set({
        'questionId': 16,
        'order': 16,
        'statements': [
        {
          'text': 'In Kuchipudi, dancers occasionally speak dialogues during a performance, a feature not found in Bharatanatyam.',
          'isCorrect': true,
        },
        {
          'text': 'Dancing on a brass plate while keeping the feet on its edges is a feature of Bharatanatyam, a movement that Kuchipudi does not have.',
          'isCorrect': false,
        }
        ],
      });
      await topicRef0.collection('questions').doc('question_17').set({
        'questionId': 17,
        'order': 17,
        'statements': [
        {
          'text': 'The brothers Umakant and Ramakant Gundecha are Dhrupad vocalists.',
          'isCorrect': true,
        },
        {
          'text': 'The brothers Umakant and Ramakant Gundecha are Tabla players.',
          'isCorrect': false,
        }
        ],
      });
      await topicRef0.collection('questions').doc('question_18').set({
        'questionId': 18,
        'order': 18,
        'statements': [
        {
          'text': 'Amrita Sher-Gil, Bikash Bhattacharjee, N. S. Bendre and Subodh Gupta are all well known as artists.',
          'isCorrect': true,
        },
        {
          'text': 'Only Amrita Sher-Gil, among Amrita Sher-Gil, Bikash Bhattacharjee, N. S. Bendre and Subodh Gupta, is well known as an artist.',
          'isCorrect': false,
        }
        ],
      });
      await topicRef0.collection('questions').doc('question_19').set({
        'questionId': 19,
        'order': 19,
        'statements': [
        {
          'text': 'The National School of Drama was set up by the Sangeet Natak Akademi in 1959, and the highest honour conferred by the Sahitya Akademi on a writer is by electing him its Fellow.',
          'isCorrect': true,
        },
        {
          'text': 'The National School of Drama was set up by the Sahitya Akademi in 1959.',
          'isCorrect': false,
        }
        ],
      });
      await topicRef0.collection('questions').doc('question_20').set({
        'questionId': 20,
        'order': 20,
        'statements': [
        {
          'text': 'Mandakini Amte is well known for social service, Neelam Mansingh Chowdhry for theatre, Romila Thapar for history, and Vanashree Rao for dance.',
          'isCorrect': true,
        },
        {
          'text': 'Mandakini Amte is well known for theatre, and Neelam Mansingh Chowdhry for social service.',
          'isCorrect': false,
        }
        ],
      });
      await topicRef0.collection('questions').doc('question_21').set({
        'questionId': 21,
        'order': 21,
        'statements': [
        {
          'text': 'Madhubani is a traditional painting style from Bihar, and the Singhey Khababs Sindhu Darshan Festival is associated with Jammu & Kashmir (Ladakh).',
          'isCorrect': true,
        },
        {
          'text': 'Gatka, a traditional martial art, is associated with Kerala.',
          'isCorrect': false,
        }
        ],
      });
      await topicRef0.collection('questions').doc('question_22').set({
        'questionId': 22,
        'order': 22,
        'statements': [
        {
          'text': 'Amrita Sher Gil is well known as a Painter, Bhimsen Joshi as a Singer, Rukmini Devi Arundale as a Dancer, and Suryakant Tripathi Nirala as a Poet.',
          'isCorrect': true,
        },
        {
          'text': 'Amrita Sher Gil is well known as a Singer, and Bhimsen Joshi as a Painter.',
          'isCorrect': false,
        }
        ],
      });
      await topicRef0.collection('questions').doc('question_23').set({
        'questionId': 23,
        'order': 23,
        'statements': [
        {
          'text': 'Bimbavati Devi is a well-known dancer of the Manipuri dance form.',
          'isCorrect': true,
        },
        {
          'text': 'Bimbavati Devi is a well-known dancer of the Odissi dance form.',
          'isCorrect': false,
        }
        ],
      });
      await topicRef0.collection('questions').doc('question_24').set({
        'questionId': 24,
        'order': 24,
        'statements': [
        {
          'text': 'Bhajan Sopori is known for Santoor, Birju Maharaj for Kathak, Priyadarsini Govind for Bharatnatyam, and T. V. Gopalakrishnan for Mridangam.',
          'isCorrect': true,
        },
        {
          'text': 'Bhajan Sopori is known for Kathak, and Birju Maharaj for Santoor.',
          'isCorrect': false,
        }
        ],
      });
      await topicRef0.collection('questions').doc('question_25').set({
        'questionId': 25,
        'order': 25,
        'statements': [
        {
          'text': 'Mon is a handicrafts centre in Nagaland, Nalbari in Assam, Pasighat in Arunachal Pradesh, and Tura in Meghalaya.',
          'isCorrect': true,
        },
        {
          'text': 'Mon is a handicrafts centre in Meghalaya, and Tura is in Nagaland.',
          'isCorrect': false,
        }
        ],
      });
      await topicRef0.collection('questions').doc('question_26').set({
        'questionId': 26,
        'order': 26,
        'statements': [
        {
          'text': 'Gangubai Hangal is a Hindustani classical singer.',
          'isCorrect': true,
        },
        {
          'text': 'Leela Samson is a Hindustani classical singer.',
          'isCorrect': false,
        }
        ],
      });
      await topicRef0.collection('questions').doc('question_27').set({
        'questionId': 27,
        'order': 27,
        'statements': [
        {
          'text': 'Chandralekha was presented with the Sangeet Natak Akademi Ratna Award, 2005, for her lifetime achievement in dance.',
          'isCorrect': true,
        },
        {
          'text': 'Yamini Krishnamurthy was presented with the Sangeet Natak Akademi Ratna Award, 2005, for her lifetime achievement in dance.',
          'isCorrect': false,
        }
        ],
      });
      await topicRef0.collection('questions').doc('question_28').set({
        'questionId': 28,
        'order': 28,
        'statements': [
        {
          'text': 'Ronu Mazumdar is well known as an exponent of the flute.',
          'isCorrect': true,
        },
        {
          'text': 'Debu Choudhuri is well known as an exponent of the flute.',
          'isCorrect': false,
        }
        ],
      });
      await topicRef0.collection('questions').doc('question_29').set({
        'questionId': 29,
        'order': 29,
        'statements': [
        {
          'text': 'Todi is a Raga that is traditionally sung early in the morning.',
          'isCorrect': true,
        },
        {
          'text': 'Bhopali is a Raga that is traditionally sung early in the morning.',
          'isCorrect': false,
        }
        ],
      });
      await topicRef0.collection('questions').doc('question_30').set({
        'questionId': 30,
        'order': 30,
        'statements': [
        {
          'text': 'Chakiarkoothu is performed by the Chakiar caste, uses the Mizhavu as its accompanying instrument, and its theatre form is called koothambalam.',
          'isCorrect': true,
        },
        {
          'text': 'Chakiarkoothu cannot traditionally be witnessed by higher caste Hindus.',
          'isCorrect': false,
        }
        ],
      });
      await topicRef0.collection('questions').doc('question_31').set({
        'questionId': 31,
        'order': 31,
        'statements': [
        {
          'text': 'The paintings of Abanindranath Tagore are classified as Revivalistic.',
          'isCorrect': true,
        },
        {
          'text': 'The paintings of Abanindranath Tagore are classified as Impressionistic.',
          'isCorrect': false,
        }
        ],
      });
      await topicRef0.collection('questions').doc('question_32').set({
        'questionId': 32,
        'order': 32,
        'statements': [
        {
          'text': 'The pairing \'Korku: Maharashtra\' is an incorrectly matched folk dance form and state.',
          'isCorrect': true,
        },
        {
          'text': 'The pairing \'Jhummar: Haryana\' is an incorrectly matched folk dance form and state.',
          'isCorrect': false,
        }
        ],
      });
      await topicRef0.collection('questions').doc('question_33').set({
        'questionId': 33,
        'order': 33,
        'statements': [
        {
          'text': 'Among Bharatanatyam, Kuchipudi, Mohiniattam and Odissi, Bharatanatyam is the dance form identified as involving solo performance.',
          'isCorrect': true,
        },
        {
          'text': 'Among Bharatanatyam, Kuchipudi, Mohiniattam and Odissi, Kuchipudi is the dance form identified as involving solo performance.',
          'isCorrect': false,
        }
        ],
      });
      await topicRef0.collection('questions').doc('question_34').set({
        'questionId': 34,
        'order': 34,
        'statements': [
        {
          'text': 'Ankia Nat is a folk theatre form correctly matched with Assam.',
          'isCorrect': true,
        },
        {
          'text': 'Tamasha is a folk theatre form correctly matched with Orissa.',
          'isCorrect': false,
        }
        ],
      });
      await topicRef0.collection('questions').doc('question_35').set({
        'questionId': 35,
        'order': 35,
        'statements': [
        {
          'text': 'The Kalighat painting style was not affected by Mughal painting.',
          'isCorrect': true,
        },
        {
          'text': 'The Pahari painting style was not affected by Mughal painting.',
          'isCorrect': false,
        }
        ],
      });

    // Topic: Indian Culture and Heritage
    final topicRef1 =
        sectionRef.collection('topics').doc('indian_culture_and_heritage');

    await topicRef1.set({
      'name': 'Indian Culture and Heritage',
      'order': 2,
    });

      await topicRef1.collection('questions').doc('question_1').set({
        'questionId': 1,
        'order': 1,
        'statements': [
        {
          'text': 'The Jury to select the recipient of the \'Gandhi Peace Prize\' includes the Prime Minister of India, the Chief Justice of India, and the Leader of Opposition in the Lok Sabha.',
          'isCorrect': true,
        },
        {
          'text': 'The Jury to select the recipient of the \'Gandhi Peace Prize\' includes the President of India, the Prime Minister of India, and the Chief Justice of India.',
          'isCorrect': false,
        }
        ],
      });
      await topicRef1.collection('questions').doc('question_2').set({
        'questionId': 2,
        'order': 2,
        'statements': [
        {
          'text': 'The terms \'Halbi Ho\' and \'Kui\' pertain to tribal languages of India.',
          'isCorrect': true,
        },
        {
          'text': 'The terms \'Halbi Ho\' and \'Kui\' pertain to musical instruments of India.',
          'isCorrect': false,
        }
        ],
      });
      await topicRef1.collection('questions').doc('question_3').set({
        'questionId': 3,
        'order': 3,
        'statements': [
        {
          'text': 'Padma Awards, instituted in 1954, have been suspended more than once.',
          'isCorrect': true,
        },
        {
          'text': 'Padma Awards, instituted in 1954, have been suspended only once.',
          'isCorrect': false,
        }
        ],
      });
      await topicRef1.collection('questions').doc('question_4').set({
        'questionId': 4,
        'order': 4,
        'statements': [
        {
          'text': 'The demand that Bangla be one of the national languages was raised in the Constituent Assembly of Pakistan.',
          'isCorrect': true,
        },
        {
          'text': '21st February was declared International Mother Language Day by UNICEF.',
          'isCorrect': false,
        }
        ],
      });
      await topicRef1.collection('questions').doc('question_5').set({
        'questionId': 5,
        'order': 5,
        'statements': [
        {
          'text': 'The Chaliha Sahib Festival is a tradition associated with the Sindhi community.',
          'isCorrect': true,
        },
        {
          'text': 'The Nanda Raj Jaat Yatra is a tradition associated with the Gond community.',
          'isCorrect': false,
        }
        ],
      });
      await topicRef1.collection('questions').doc('question_6').set({
        'questionId': 6,
        'order': 6,
        'statements': [
        {
          'text': 'Gond and Korku are among the communities/tribes known for a month-long festival during which they plant saplings of fruit-bearing trees.',
          'isCorrect': true,
        },
        {
          'text': 'Bhutia and Lepcha are among the communities/tribes known for a month-long festival during which they plant saplings of fruit-bearing trees.',
          'isCorrect': false,
        }
        ],
      });
      await topicRef1.collection('questions').doc('question_7').set({
        'questionId': 7,
        'order': 7,
        'statements': [
        {
          'text': 'The Changpa community rears Pashmina goats that yield fine wool, and is categorized as a Scheduled Tribe.',
          'isCorrect': true,
        },
        {
          'text': 'The Changpa community lives mainly in the State of Uttarakhand.',
          'isCorrect': false,
        }
        ],
      });
      await topicRef1.collection('questions').doc('question_8').set({
        'questionId': 8,
        'order': 8,
        'statements': [
        {
          'text': 'Chaitra 1 of the national calendar based on the Saka Era corresponds to 22nd March (or 21st March in a leap year) of the Gregorian calendar.',
          'isCorrect': true,
        },
        {
          'text': 'Chaitra 1 of the national calendar based on the Saka Era corresponds to 21st April (or 20th April in a leap year) of the Gregorian calendar.',
          'isCorrect': false,
        }
        ],
      });
      await topicRef1.collection('questions').doc('question_9').set({
        'questionId': 9,
        'order': 9,
        'statements': [
        {
          'text': 'The Manganiyar community is well known for its musical tradition in North-West India.',
          'isCorrect': true,
        },
        {
          'text': 'The Manganiyar community is well known for its classical vocal music tradition in South India.',
          'isCorrect': false,
        }
        ],
      });
      await topicRef1.collection('questions').doc('question_10').set({
        'questionId': 10,
        'order': 10,
        'statements': [
        {
          'text': 'The Bombay Natural History Society (BNHS) strives to conserve nature through action-based research, education and public awareness, and organizes nature trails and camps for the general public.',
          'isCorrect': true,
        },
        {
          'text': 'The Bombay Natural History Society (BNHS) is an autonomous organization under the Ministry of Environment and Forests.',
          'isCorrect': false,
        }
        ],
      });
      await topicRef1.collection('questions').doc('question_11').set({
        'questionId': 11,
        'order': 11,
        'statements': [
        {
          'text': 'Kannada and Telugu have been declared \'Classical Languages\' by the Government of India.',
          'isCorrect': true,
        },
        {
          'text': 'Gujarati and Kannada have been declared \'Classical Languages\' by the Government of India.',
          'isCorrect': false,
        }
        ],
      });
      await topicRef1.collection('questions').doc('question_12').set({
        'questionId': 12,
        'order': 12,
        'statements': [
        {
          'text': 'The national motto \'Satyameva Jayate\', inscribed below the Emblem of India, is taken from the Mundaka Upanishad.',
          'isCorrect': true,
        },
        {
          'text': 'The national motto \'Satyameva Jayate\', inscribed below the Emblem of India, is taken from the Katha Upanishad.',
          'isCorrect': false,
        }
        ],
      });
      await topicRef1.collection('questions').doc('question_13').set({
        'questionId': 13,
        'order': 13,
        'statements': [
        {
          'text': 'The Limbu tribe is associated with Sikkim, and the Dongaria Kondh tribe is associated with Odisha.',
          'isCorrect': true,
        },
        {
          'text': 'The Karbi tribe is associated with Himachal Pradesh, and the Bonda tribe is associated with Tamil Nadu.',
          'isCorrect': false,
        }
        ],
      });
      await topicRef1.collection('questions').doc('question_14').set({
        'questionId': 14,
        'order': 14,
        'statements': [
        {
          'text': 'By the 1st century AD, specialised surgical instruments were in common use in ancient India, the concept of the sine of an angle was known by the 5th century AD, and cyclic quadrilaterals were known by the 7th century AD.',
          'isCorrect': true,
        },
        {
          'text': 'Transplant of internal organs in the human body had begun in ancient India by the beginning of the 3rd century AD.',
          'isCorrect': false,
        }
        ],
      });
      await topicRef1.collection('questions').doc('question_15').set({
        'questionId': 15,
        'order': 15,
        'statements': [
        {
          'text': 'The Agaria community is a traditional salt pan workers\' community of Gujarat.',
          'isCorrect': true,
        },
        {
          'text': 'The Agaria community is a traditional silk-weaving community of Karnataka.',
          'isCorrect': false,
        }
        ],
      });
      await topicRef1.collection('questions').doc('question_16').set({
        'questionId': 16,
        'order': 16,
        'statements': [
        {
          'text': 'The Shompen tribe is found in the Nicobar Islands.',
          'isCorrect': true,
        },
        {
          'text': 'The Shompen tribe is found in the Nilgiri Hills.',
          'isCorrect': false,
        }
        ],
      });
      await topicRef1.collection('questions').doc('question_17').set({
        'questionId': 17,
        'order': 17,
        'statements': [
        {
          'text': 'The Baudhayan theorem (Baudhayan Sulva Sutra) relates to the lengths of the sides of a right-angled triangle.',
          'isCorrect': true,
        },
        {
          'text': 'The Baudhayan theorem (Baudhayan Sulva Sutra) relates to the calculation of the value of pi.',
          'isCorrect': false,
        }
        ],
      });
      await topicRef1.collection('questions').doc('question_18').set({
        'questionId': 18,
        'order': 18,
        'statements': [
        {
          'text': 'Among Indian languages, Bengali is spoken the most in the world after Hindi.',
          'isCorrect': true,
        },
        {
          'text': 'Among Indian languages, Telugu is spoken the most in the world after Hindi.',
          'isCorrect': false,
        }
        ],
      });
      await topicRef1.collection('questions').doc('question_19').set({
        'questionId': 19,
        'order': 19,
        'statements': [
        {
          'text': 'The Dharma Chakra on the National Flag of India has 24 spokes.',
          'isCorrect': true,
        },
        {
          'text': 'The Dharma Chakra on the National Flag of India has 16 spokes.',
          'isCorrect': false,
        }
        ],
      });
      await topicRef1.collection('questions').doc('question_20').set({
        'questionId': 20,
        'order': 20,
        'statements': [
        {
          'text': 'The Indian Airlines (now \'Indian\') logo, a graphic wheel, was inspired by the Sun Temple, Konark.',
          'isCorrect': true,
        },
        {
          'text': 'The Indian Airlines (now \'Indian\') logo, a graphic wheel, was inspired by the Hampi Temples.',
          'isCorrect': false,
        }
        ],
      });
      await topicRef1.collection('questions').doc('question_21').set({
        'questionId': 21,
        'order': 21,
        'statements': [
        {
          'text': 'Per the accepted match, the time taken by the Earth to orbit the Sun is credited to Bhaskaracharya, the calculation of the value of pi to Gyandev, the invention of the digit zero to Aryabhatta, and the game of snakes and ladders to Budhayana.',
          'isCorrect': true,
        },
        {
          'text': 'Per the accepted match, the invention of the digit zero is credited to Bhaskaracharya, and the calculation of the value of pi to Aryabhatta.',
          'isCorrect': false,
        }
        ],
      });
      await topicRef1.collection('questions').doc('question_22').set({
        'questionId': 22,
        'order': 22,
        'statements': [
        {
          'text': 'The pairing \'Raja Rao: Telugu\' is not a correct match of a writer with their language.',
          'isCorrect': true,
        },
        {
          'text': 'The pairing \'Tara Shankar Joshi: Gujarati\' is not a correct match of a writer with their language.',
          'isCorrect': false,
        }
        ],
      });
      await topicRef1.collection('questions').doc('question_23').set({
        'questionId': 23,
        'order': 23,
        'statements': [
        {
          'text': 'The Onge tribe lives in the Union Territory of Andaman and Nicobar Islands.',
          'isCorrect': true,
        },
        {
          'text': 'The Onge tribe lives in the Union Territory of Lakshadweep.',
          'isCorrect': false,
        }
        ],
      });
      await topicRef1.collection('questions').doc('question_24').set({
        'questionId': 24,
        'order': 24,
        'statements': [
        {
          'text': 'The National Song \'Vande Mataram\' was composed by Bankimchandra Chatterji originally in Bengali.',
          'isCorrect': true,
        },
        {
          'text': 'The song \'Jana Gana Mana\', composed originally in Bengali by Rabindranath Tagore, was adopted in its Hindi version by the Constituent Assembly on 24th January 1950 as the National Anthem of India.',
          'isCorrect': false,
        }
        ],
      });
      await topicRef1.collection('questions').doc('question_25').set({
        'questionId': 25,
        'order': 25,
        'statements': [
        {
          'text': 'Chapchar Kut is a festival celebrated in the state of Mizoram.',
          'isCorrect': true,
        },
        {
          'text': 'Chapchar Kut is a festival celebrated in the state of Assam.',
          'isCorrect': false,
        }
        ],
      });
      await topicRef1.collection('questions').doc('question_26').set({
        'questionId': 26,
        'order': 26,
        'statements': [
        {
          'text': 'The pairing \'Korba: Kodagu\' is not a correctly matched primitive tribe and place of inhabitation.',
          'isCorrect': true,
        },
        {
          'text': 'The pairing \'Munda: Chhotanagpur\' is not a correctly matched primitive tribe and place of inhabitation.',
          'isCorrect': false,
        }
        ],
      });
      await topicRef1.collection('questions').doc('question_27').set({
        'questionId': 27,
        'order': 27,
        'statements': [
        {
          'text': 'Khasi is a language belonging to the Austric group.',
          'isCorrect': true,
        },
        {
          'text': 'Tamil is a language belonging to the Austric group.',
          'isCorrect': false,
        }
        ],
      });
      await topicRef1.collection('questions').doc('question_28').set({
        'questionId': 28,
        'order': 28,
        'statements': [
        {
          'text': 'The Badami rock inscription of Pulakesin I, dated Saka year 465, corresponds to the year 601 in the Vikrama Samvat.',
          'isCorrect': true,
        },
        {
          'text': 'The Badami rock inscription of Pulakesin I, dated Saka year 465, corresponds to the year 407 in the Vikrama Samvat.',
          'isCorrect': false,
        }
        ],
      });
      await topicRef1.collection('questions').doc('question_29').set({
        'questionId': 29,
        'order': 29,
        'statements': [
        {
          'text': 'Visakhadatta is known for Drama, Varahamihira for Astronomy, Charaka for Medicine, and Brahmagupta for Mathematics.',
          'isCorrect': true,
        },
        {
          'text': 'Visakhadatta is known for Astronomy, and Varahamihira for Medicine.',
          'isCorrect': false,
        }
        ],
      });
      await topicRef1.collection('questions').doc('question_30').set({
        'questionId': 30,
        'order': 30,
        'statements': [
        {
          'text': 'The Vikrama era is reckoned from 58 B.C., the Saka era from 78 A.D., the Gupta era from 320 A.D., and the Kali era from 3102 B.C.',
          'isCorrect': true,
        },
        {
          'text': 'The Vikrama era is reckoned from 78 A.D., and the Saka era from 58 B.C.',
          'isCorrect': false,
        }
        ],
      });
      await topicRef1.collection('questions').doc('question_31').set({
        'questionId': 31,
        'order': 31,
        'statements': [
        {
          'text': 'Zero was invented by Aryabhata.',
          'isCorrect': true,
        },
        {
          'text': 'Zero was invented by Bhaskara I.',
          'isCorrect': false,
        }
        ],
      });
    print(
      'Art & Culture seeding completed: '
      '2 topics, '
      '66 questions, '
      '132 statements.',
    );
  }



  /// Seeds the Modern History workbook.
  /// Each Question ID becomes one question with two statements.
  static Future<void> seed() async {
    final subjectRef = _firestore.collection('subjects').doc('history');
    await subjectRef.set({
      'name': 'History',
      'order': 1,
    }, SetOptions(merge: true));

    final sectionRef = subjectRef.collection('sections').doc('modern_history');
    await sectionRef.set({
      'name': 'Modern History',
      'order': 1,
    }, SetOptions(merge: true));

    final topicRef1 = sectionRef.collection('topics').doc('''establishment_of_british_rule_1750_1857''');
    await topicRef1.set({
      'name': '''Establishment of British Rule (1750-1857)''',
      'order': 1,
    }, SetOptions(merge: true));

    final questionRef1_1 = topicRef1.collection('questions').doc('question_1');
    await questionRef1_1.set({
      'questionId': '''1''',
      'order': 1,
      'statements': [
        {
          'text': '''Under the Permanent Settlement in Bengal, if the Zamindar failed to pay his revenues to the state on or before the fixed date, he would be removed from his Zamindari.''',
          'isCorrect': true,
        },
        {
          'text': '''Under the Permanent Settlement in Bengal, the Zamindar's land revenue obligation was periodically revised according to changes in agricultural output.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_2 = topicRef1.collection('questions').doc('question_2');
    await questionRef1_2.set({
      'questionId': '''2''',
      'order': 2,
      'statements': [
        {
          'text': '''The Governor General of Bengal was designated as the Governor General of India by the Charter Act of 1833.''',
          'isCorrect': true,
        },
        {
          'text': '''The Governor General of Bengal was designated as the Governor General of India by the Charter Act of 1793.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_3 = topicRef1.collection('questions').doc('question_3');
    await questionRef1_3.set({
      'questionId': '''3''',
      'order': 3,
      'statements': [
        {
          'text': '''The Mysore Kingdom emerged out of the Vijayanagara Empire.''',
          'isCorrect': true,
        },
        {
          'text': '''The Mysore Kingdom emerged out of the Bahmani Sultanate.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_4 = topicRef1.collection('questions').doc('question_4');
    await questionRef1_4.set({
      'questionId': '''4''',
      'order': 4,
      'statements': [
        {
          'text': '''Indian handicrafts were ruined due to the impact of the Industrial Revolution on India during the first half of the nineteenth century.''',
          'isCorrect': true,
        },
        {
          'text': '''Indian handicrafts flourished due to the impact of the Industrial Revolution on India during the first half of the nineteenth century.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_5 = topicRef1.collection('questions').doc('question_5');
    await questionRef1_5.set({
      'questionId': '''5''',
      'order': 5,
      'statements': [
        {
          'text': '''The Charter Act of 1813 ended the trade monopoly of the East India Company in India except for trade in tea and trade with China.''',
          'isCorrect': true,
        },
        {
          'text': '''The Charter Act of 1813 ended the trade monopoly of the East India Company in India completely, including trade in tea and trade with China.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_6 = topicRef1.collection('questions').doc('question_6');
    await questionRef1_6.set({
      'questionId': '''6''',
      'order': 6,
      'statements': [
        {
          'text': '''The Charter Act of 1813 asserted the sovereignty of the British Crown over the Indian territories held by the Company.''',
          'isCorrect': true,
        },
        {
          'text': '''The Charter Act of 1813 transferred sovereignty over Indian territories from the Crown to the East India Company.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_7 = topicRef1.collection('questions').doc('question_7');
    await questionRef1_7.set({
      'questionId': '''7''',
      'order': 7,
      'statements': [
        {
          'text': '''The staple commodities exported by the English East India Company from Bengal in the middle of the 18th century were cotton, silk, saltpetre and opium.''',
          'isCorrect': true,
        },
        {
          'text': '''The staple commodities exported by the English East India Company from Bengal in the middle of the 18th century were tea, indigo, jute and coal.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_8 = topicRef1.collection('questions').doc('question_8');
    await questionRef1_8.set({
      'questionId': '''8''',
      'order': 8,
      'statements': [
        {
          'text': '''One aim of the Subsidiary Alliance introduced by Lord Wellesley was to maintain a large standing army at the expense of the Indian states.''',
          'isCorrect': true,
        },
        {
          'text': '''One aim of the Subsidiary Alliance introduced by Lord Wellesley was to reduce British military expenditure by disbanding the Company's standing army.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_9 = topicRef1.collection('questions').doc('question_9');
    await questionRef1_9.set({
      'questionId': '''9''',
      'order': 9,
      'statements': [
        {
          'text': '''One aim of the Subsidiary Alliance introduced by Lord Wellesley was to keep India safe from the Napoleonic danger.''',
          'isCorrect': true,
        },
        {
          'text': '''One aim of the Subsidiary Alliance introduced by Lord Wellesley was to establish trade relations with Napoleonic France.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_10 = topicRef1.collection('questions').doc('question_10');
    await questionRef1_10.set({
      'questionId': '''10''',
      'order': 10,
      'statements': [
        {
          'text': '''One aim of the Subsidiary Alliance introduced by Lord Wellesley was to establish British paramountcy over the Indian states.''',
          'isCorrect': true,
        },
        {
          'text': '''One aim of the Subsidiary Alliance introduced by Lord Wellesley was to grant complete independence to the Indian states from British control.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_11 = topicRef1.collection('questions').doc('question_11');
    await questionRef1_11.set({
      'questionId': '''11''',
      'order': 11,
      'statements': [
        {
          'text': '''Alexander Read was associated with the introduction of the Ryotwari Settlement in India during British rule.''',
          'isCorrect': true,
        },
        {
          'text': '''Alexander Read was associated with the introduction of the Permanent Settlement in Bengal.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_12 = topicRef1.collection('questions').doc('question_12');
    await questionRef1_12.set({
      'questionId': '''12''',
      'order': 12,
      'statements': [
        {
          'text': '''Thomas Munro was associated with the introduction of the Ryotwari Settlement in India during British rule.''',
          'isCorrect': true,
        },
        {
          'text': '''Thomas Munro was associated with the introduction of the Mahalwari Settlement in India during British rule.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_13 = topicRef1.collection('questions').doc('question_13');
    await questionRef1_13.set({
      'questionId': '''13''',
      'order': 13,
      'statements': [
        {
          'text': '''The assessment of land revenue on the basis of the nature of the soil and the quality of crops, the use of mobile cannons in warfare, and the cultivation of tobacco and red chillies were not introduced into India by the English.''',
          'isCorrect': true,
        },
        {
          'text': '''The assessment of land revenue on the basis of the nature of the soil and the quality of crops, the use of mobile cannons in warfare, and the cultivation of tobacco and red chillies were all introduced into India by the English.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_14 = topicRef1.collection('questions').doc('question_14');
    await questionRef1_14.set({
      'questionId': '''14''',
      'order': 14,
      'statements': [
        {
          'text': '''Under the Ryotwari Settlement, the rent was paid directly by the peasants to the Government.''',
          'isCorrect': true,
        },
        {
          'text': '''Under the Ryotwari Settlement, the rent was paid by the peasants to the zamindar, who then remitted it to the Government.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_15 = topicRef1.collection('questions').doc('question_15');
    await questionRef1_15.set({
      'questionId': '''15''',
      'order': 15,
      'statements': [
        {
          'text': '''Under the Ryotwari Settlement, the Government gave pattas to the ryots.''',
          'isCorrect': true,
        },
        {
          'text': '''Under the Ryotwari Settlement, the pattas were issued by the zamindars to the ryots.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_16 = topicRef1.collection('questions').doc('question_16');
    await questionRef1_16.set({
      'questionId': '''16''',
      'order': 16,
      'statements': [
        {
          'text': '''Under the Ryotwari Settlement, the lands were surveyed and assessed before being taxed.''',
          'isCorrect': true,
        },
        {
          'text': '''Under the Ryotwari Settlement, land revenue was fixed permanently without any survey or assessment of the land.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_17 = topicRef1.collection('questions').doc('question_17');
    await questionRef1_17.set({
      'questionId': '''17''',
      'order': 17,
      'statements': [
        {
          'text': '''The increased litigation seen after Lord Cornwallis's land settlement system of 1793 was not due to the zamindar's stronger position over the ryot, the Company becoming an overlord of zamindars, or a more efficient judicial system, but some other reason.''',
          'isCorrect': true,
        },
        {
          'text': '''The increased litigation seen after Lord Cornwallis's land settlement system of 1793 was due to the zamindar's stronger position over the ryot.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_18 = topicRef1.collection('questions').doc('question_18');
    await questionRef1_18.set({
      'questionId': '''18''',
      'order': 18,
      'statements': [
        {
          'text': '''Lord Cornwallis created the Covenanted Civil Service of India, which later came to be known as the Indian Civil Service.''',
          'isCorrect': true,
        },
        {
          'text': '''Warren Hastings created the Covenanted Civil Service of India, which later came to be known as the Indian Civil Service.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_19 = topicRef1.collection('questions').doc('question_19');
    await questionRef1_19.set({
      'questionId': '''19''',
      'order': 19,
      'statements': [
        {
          'text': '''Lord Cornwallis was alarmed at the extent of power concentrated in the District Collector and felt that such absolute power was undesirable in one person, which led to the 1793 regulation depriving the District Collector of his judicial powers.''',
          'isCorrect': true,
        },
        {
          'text': '''Lord Cornwallis sought to increase the powers of the District Collector by combining revenue and judicial functions in a single office through the 1793 regulation.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_20 = topicRef1.collection('questions').doc('question_20');
    await questionRef1_20.set({
      'questionId': '''20''',
      'order': 20,
      'statements': [
        {
          'text': '''The ruler of Awadh was removed from power by the British on the pretext of misgovernance.''',
          'isCorrect': true,
        },
        {
          'text': '''The ruler of Awadh was removed from power by the British under the Doctrine of Lapse.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_21 = topicRef1.collection('questions').doc('question_21');
    await questionRef1_21.set({
      'questionId': '''21''',
      'order': 21,
      'statements': [
        {
          'text': '''Among the Dutch, English, French and Portuguese, the French were the last to come to pre-independence India as traders.''',
          'isCorrect': true,
        },
        {
          'text': '''Among the Dutch, English, French and Portuguese, the English were the last to come to pre-independence India as traders.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_22 = topicRef1.collection('questions').doc('question_22');
    await questionRef1_22.set({
      'questionId': '''22''',
      'order': 22,
      'statements': [
        {
          'text': '''William Bentinck was the first Governor-General of India.''',
          'isCorrect': true,
        },
        {
          'text': '''Warren Hastings was the first Governor-General of India.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_23 = topicRef1.collection('questions').doc('question_23');
    await questionRef1_23.set({
      'questionId': '''23''',
      'order': 23,
      'statements': [
        {
          'text': '''Fort St. George was the first fort constructed by the British in India.''',
          'isCorrect': true,
        },
        {
          'text': '''Fort William was the first fort constructed by the British in India.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_24 = topicRef1.collection('questions').doc('question_24');
    await questionRef1_24.set({
      'questionId': '''24''',
      'order': 24,
      'statements': [
        {
          'text': '''The correct chronological order of battles fought in India in the 18th century is: Battle of Ambur, Battle of Plassey, Battle of Wandiwash, and Battle of Buxar.''',
          'isCorrect': true,
        },
        {
          'text': '''The correct chronological order of battles fought in India in the 18th century is: Plassey, Ambur, Buxar, and Wandiwash.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_25 = topicRef1.collection('questions').doc('question_25');
    await questionRef1_25.set({
      'questionId': '''25''',
      'order': 25,
      'statements': [
        {
          'text': '''A Supreme Court was established at Calcutta by the Regulating Act, 1773.''',
          'isCorrect': true,
        },
        {
          'text': '''A Supreme Court was established at Calcutta by Pitt's India Act, 1784.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_26 = topicRef1.collection('questions').doc('question_26');
    await questionRef1_26.set({
      'questionId': '''26''',
      'order': 26,
      'statements': [
        {
          'text': '''The Indian Penal Code came into effect in the year 1860.''',
          'isCorrect': true,
        },
        {
          'text': '''The Indian Penal Code came into effect in the year 1857.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_27 = topicRef1.collection('questions').doc('question_27');
    await questionRef1_27.set({
      'questionId': '''27''',
      'order': 27,
      'statements': [
        {
          'text': '''The correct chronological order in which Satara, Sambalpur and Jhansi were annexed by the British is Satara, followed by Sambalpur, followed by Jhansi.''',
          'isCorrect': true,
        },
        {
          'text': '''The correct chronological order in which Satara, Sambalpur and Jhansi were annexed by the British is Jhansi, followed by Satara, followed by Sambalpur.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_28 = topicRef1.collection('questions').doc('question_28');
    await questionRef1_28.set({
      'questionId': '''28''',
      'order': 28,
      'statements': [
        {
          'text': '''The Doctrine of Lapse is correctly associated with Lord Dalhousie.''',
          'isCorrect': true,
        },
        {
          'text': '''The Doctrine of Lapse is correctly associated with Lord Canning.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_29 = topicRef1.collection('questions').doc('question_29');
    await questionRef1_29.set({
      'questionId': '''29''',
      'order': 29,
      'statements': [
        {
          'text': '''The Vernacular Press Act is correctly associated with Lord Lytton.''',
          'isCorrect': true,
        },
        {
          'text': '''The Vernacular Press Act is correctly associated with Lord Curzon.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_30 = topicRef1.collection('questions').doc('question_30');
    await questionRef1_30.set({
      'questionId': '''30''',
      'order': 30,
      'statements': [
        {
          'text': '''Pitt's India Act is correctly associated with Warren Hastings.''',
          'isCorrect': true,
        },
        {
          'text': '''Pitt's India Act is correctly associated with Lord Cornwallis.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_31 = topicRef1.collection('questions').doc('question_31');
    await questionRef1_31.set({
      'questionId': '''31''',
      'order': 31,
      'statements': [
        {
          'text': '''The Ilbert Bill is correctly associated with Lord Ripon.''',
          'isCorrect': true,
        },
        {
          'text': '''The Ilbert Bill is correctly associated with Lord Lytton.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_32 = topicRef1.collection('questions').doc('question_32');
    await questionRef1_32.set({
      'questionId': '''32''',
      'order': 32,
      'statements': [
        {
          'text': '''Marathas emerged as the strongest native power in India after the decline of the Mughal empire.''',
          'isCorrect': true,
        },
        {
          'text': '''The Sikhs emerged as the strongest native power in India after the decline of the Mughal empire.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_33 = topicRef1.collection('questions').doc('question_33');
    await questionRef1_33.set({
      'questionId': '''33''',
      'order': 33,
      'statements': [
        {
          'text': '''Maharaja Ranjit Singh set up modern foundries to manufacture cannons at Lahore.''',
          'isCorrect': true,
        },
        {
          'text': '''Maharaja Ranjit Singh set up modern foundries to manufacture cannons at Amritsar.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_34 = topicRef1.collection('questions').doc('question_34');
    await questionRef1_34.set({
      'questionId': '''34''',
      'order': 34,
      'statements': [
        {
          'text': '''Sawai Jai Singh of Amber had Euclid's 'Elements of Geometry' translated into Sanskrit.''',
          'isCorrect': true,
        },
        {
          'text': '''Sawai Jai Singh of Amber had Euclid's 'Elements of Geometry' translated into Persian.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_35 = topicRef1.collection('questions').doc('question_35');
    await questionRef1_35.set({
      'questionId': '''35''',
      'order': 35,
      'statements': [
        {
          'text': '''Sultan Tipu of Mysore gave money for the construction of the idol of Goddess Sarda in the Shringeri temple.''',
          'isCorrect': true,
        },
        {
          'text': '''Tipu Sultan ordered the demolition of the Shringeri temple during his campaigns in South India.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_36 = topicRef1.collection('questions').doc('question_36');
    await questionRef1_36.set({
      'questionId': '''36''',
      'order': 36,
      'statements': [
        {
          'text': '''The Charter Act of 1833 abolished the trading activities of the East India Company.''',
          'isCorrect': true,
        },
        {
          'text': '''The Charter Act of 1833 restored the trading monopoly of the East India Company in India.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_37 = topicRef1.collection('questions').doc('question_37');
    await questionRef1_37.set({
      'questionId': '''37''',
      'order': 37,
      'statements': [
        {
          'text': '''The Charter Act of 1833 changed the designation of the supreme authority to the Governor General of India in Council.''',
          'isCorrect': true,
        },
        {
          'text': '''The Charter Act of 1833 changed the designation of the supreme authority to the Governor General of Bengal in Council.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_38 = topicRef1.collection('questions').doc('question_38');
    await questionRef1_38.set({
      'questionId': '''38''',
      'order': 38,
      'statements': [
        {
          'text': '''The Charter Act of 1833 conferred all law-making powers on the Governor General in Council.''',
          'isCorrect': true,
        },
        {
          'text': '''The Charter Act of 1833 conferred all law-making powers on the Provincial Governments independently of the Governor General.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_39 = topicRef1.collection('questions').doc('question_39');
    await questionRef1_39.set({
      'questionId': '''39''',
      'order': 39,
      'statements': [
        {
          'text': '''The Charter Act of 1813 ended the East India Company's trade monopoly in India.''',
          'isCorrect': true,
        },
        {
          'text': '''The Charter Act of 1813 renewed and strengthened the East India Company's trade monopoly in India.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_40 = topicRef1.collection('questions').doc('question_40');
    await questionRef1_40.set({
      'questionId': '''40''',
      'order': 40,
      'statements': [
        {
          'text': '''The Regulating Act, 1773 required the Company's directors to present reports to the British government.''',
          'isCorrect': true,
        },
        {
          'text': '''The Regulating Act, 1773 exempted the Company's directors from any obligation to report to the British government.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_41 = topicRef1.collection('questions').doc('question_41');
    await questionRef1_41.set({
      'questionId': '''41''',
      'order': 41,
      'statements': [
        {
          'text': '''The Act of 1858 transferred the power to govern India from the East India Company to the British Crown.''',
          'isCorrect': true,
        },
        {
          'text': '''The Act of 1858 transferred the power to govern India from the British Crown to the East India Company.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_42 = topicRef1.collection('questions').doc('question_42');
    await questionRef1_42.set({
      'questionId': '''42''',
      'order': 42,
      'statements': [
        {
          'text': '''Pitt's India Act set up a Board of Control in Britain to regulate the East India Company's affairs in India.''',
          'isCorrect': true,
        },
        {
          'text': '''Pitt's India Act abolished the Board of Control and vested all regulatory power solely in the Company's Court of Directors.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_43 = topicRef1.collection('questions').doc('question_43');
    await questionRef1_43.set({
      'questionId': '''43''',
      'order': 43,
      'statements': [
        {
          'text': '''The British first came into contact with the Khasis after the grant of Diwani in the year 1765.''',
          'isCorrect': true,
        },
        {
          'text': '''The British first came into contact with the Khasis after the Battle of Plassey in 1757.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_44 = topicRef1.collection('questions').doc('question_44');
    await questionRef1_44.set({
      'questionId': '''44''',
      'order': 44,
      'statements': [
        {
          'text': '''Tipu Sultan established embassies in foreign countries on modern lines.''',
          'isCorrect': true,
        },
        {
          'text': '''Tipu Sultan refused all diplomatic contact with foreign powers and maintained strict isolation.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_45 = topicRef1.collection('questions').doc('question_45');
    await questionRef1_45.set({
      'questionId': '''45''',
      'order': 45,
      'statements': [
        {
          'text': '''Under the Permanent Settlement of 1793, many zamindars did not issue pattas to farmers because there was no official check upon the zamindars.''',
          'isCorrect': true,
        },
        {
          'text': '''Under the Permanent Settlement of 1793, all zamindars were legally required to issue pattas to farmers, which was strictly enforced by government officials.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_46 = topicRef1.collection('questions').doc('question_46');
    await questionRef1_46.set({
      'questionId': '''46''',
      'order': 46,
      'statements': [
        {
          'text': '''Raja Ram streamlined the Maratha administration after Sambhaji.''',
          'isCorrect': true,
        },
        {
          'text': '''Shivaji streamlined the Maratha administration after Sambhaji's death.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_47 = topicRef1.collection('questions').doc('question_47');
    await questionRef1_47.set({
      'questionId': '''47''',
      'order': 47,
      'statements': [
        {
          'text': '''The last major extension of British Indian territory took place during the time of Lord Dalhousie.''',
          'isCorrect': true,
        },
        {
          'text': '''The last major extension of British Indian territory took place during the time of Lord Canning.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_48 = topicRef1.collection('questions').doc('question_48');
    await questionRef1_48.set({
      'questionId': '''48''',
      'order': 48,
      'statements': [
        {
          'text': '''Land allotted to big feudal landlords refers to the Jagirdari System.''',
          'isCorrect': true,
        },
        {
          'text': '''Land allotted to big feudal landlords refers to the Ryotwari System.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_49 = topicRef1.collection('questions').doc('question_49');
    await questionRef1_49.set({
      'questionId': '''49''',
      'order': 49,
      'statements': [
        {
          'text': '''Land allotted to revenue farmers or rent collectors refers to the Zamindari System.''',
          'isCorrect': true,
        },
        {
          'text': '''Land allotted to revenue farmers or rent collectors refers to the Mahalwari System.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_50 = topicRef1.collection('questions').doc('question_50');
    await questionRef1_50.set({
      'questionId': '''50''',
      'order': 50,
      'statements': [
        {
          'text': '''Land allotted to each peasant with the right to sublet, mortgage, transfer, gift or sell refers to the Ryotwari System.''',
          'isCorrect': true,
        },
        {
          'text': '''Land allotted to each peasant with the right to sublet, mortgage, transfer, gift or sell refers to the Zamindari System.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_51 = topicRef1.collection('questions').doc('question_51');
    await questionRef1_51.set({
      'questionId': '''51''',
      'order': 51,
      'statements': [
        {
          'text': '''Revenue settlements made at the village level refer to the Mahalwari System.''',
          'isCorrect': true,
        },
        {
          'text': '''Revenue settlements made at the village level refer to the Ryotwari System.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_52 = topicRef1.collection('questions').doc('question_52');
    await questionRef1_52.set({
      'questionId': '''52''',
      'order': 52,
      'statements': [
        {
          'text': '''There was no independent development of industries in India during British rule because of the absence of heavy industries.''',
          'isCorrect': true,
        },
        {
          'text': '''There was significant independent development of heavy industries in India during British rule, driven largely by indigenous capital.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_53 = topicRef1.collection('questions').doc('question_53');
    await questionRef1_53.set({
      'questionId': '''53''',
      'order': 53,
      'statements': [
        {
          'text': '''Lord Wellesley kept the British flag flying high in India at a time when empires in Europe were crumbling before the might of Napoleon.''',
          'isCorrect': true,
        },
        {
          'text': '''Lord Cornwallis kept the British flag flying high in India at a time when empires in Europe were crumbling before the might of Napoleon.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_54 = topicRef1.collection('questions').doc('question_54');
    await questionRef1_54.set({
      'questionId': '''54''',
      'order': 54,
      'statements': [
        {
          'text': '''The First Anglo-Maratha War began in 1775.''',
          'isCorrect': true,
        },
        {
          'text': '''The First Anglo-Maratha War began in 1782.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_55 = topicRef1.collection('questions').doc('question_55');
    await questionRef1_55.set({
      'questionId': '''55''',
      'order': 55,
      'statements': [
        {
          'text': '''The Second Anglo-Mysore War began in 1780.''',
          'isCorrect': true,
        },
        {
          'text': '''The Second Anglo-Mysore War began in 1790.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_56 = topicRef1.collection('questions').doc('question_56');
    await questionRef1_56.set({
      'questionId': '''56''',
      'order': 56,
      'statements': [
        {
          'text': '''The First Anglo-Burmese War began in 1824.''',
          'isCorrect': true,
        },
        {
          'text': '''The First Anglo-Burmese War began in 1852.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_57 = topicRef1.collection('questions').doc('question_57');
    await questionRef1_57.set({
      'questionId': '''57''',
      'order': 57,
      'statements': [
        {
          'text': '''The First Anglo-Afghan War began in 1838.''',
          'isCorrect': true,
        },
        {
          'text': '''The First Anglo-Afghan War began in 1878.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_58 = topicRef1.collection('questions').doc('question_58');
    await questionRef1_58.set({
      'questionId': '''58''',
      'order': 58,
      'statements': [
        {
          'text': '''The term 'imperial preference' was applied to special privileges given to British imports in India.''',
          'isCorrect': true,
        },
        {
          'text': '''The term 'imperial preference' was applied to special privileges given to Indian exports in Britain.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_59 = topicRef1.collection('questions').doc('question_59');
    await questionRef1_59.set({
      'questionId': '''59''',
      'order': 59,
      'statements': [
        {
          'text': '''Captain Sleeman was associated with the suppression of Thugs.''',
          'isCorrect': true,
        },
        {
          'text': '''Captain Sleeman was associated with the suppression of the Pindaris.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_60 = topicRef1.collection('questions').doc('question_60');
    await questionRef1_60.set({
      'questionId': '''60''',
      'order': 60,
      'statements': [
        {
          'text': '''Charles Cornwallis served as Governor General of the Presidency of Fort William in Bengal under the Regulating Act, 1773.''',
          'isCorrect': true,
        },
        {
          'text': '''Charles Cornwallis served as Governor General of the Presidency of Fort William in Bengal under Pitt's India Act, 1784.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_61 = topicRef1.collection('questions').doc('question_61');
    await questionRef1_61.set({
      'questionId': '''61''',
      'order': 61,
      'statements': [
        {
          'text': '''James Andrew Broun Ramsay, Marquess of Dalhousie, served as Governor General of India under the Charter Act, 1833.''',
          'isCorrect': true,
        },
        {
          'text': '''James Andrew Broun Ramsay, Marquess of Dalhousie, served as Governor General of India under the Government of India Act, 1858.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_62 = topicRef1.collection('questions').doc('question_62');
    await questionRef1_62.set({
      'questionId': '''62''',
      'order': 62,
      'statements': [
        {
          'text': '''Gilbert John Elliot Murray Kynynmond, Earl of Minto, served as Governor General and Viceroy of India under the Indian Councils Act, 1858.''',
          'isCorrect': true,
        },
        {
          'text': '''Gilbert John Elliot Murray Kynynmond, Earl of Minto, served as Governor General and Viceroy of India under the Government of India Act, 1935.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_63 = topicRef1.collection('questions').doc('question_63');
    await questionRef1_63.set({
      'questionId': '''63''',
      'order': 63,
      'statements': [
        {
          'text': '''Archibald Percival Wavell, Earl Wavell, served as Governor General and Crown Representative under the Government of India Act, 1935.''',
          'isCorrect': true,
        },
        {
          'text': '''Archibald Percival Wavell, Earl Wavell, served as Governor General and Crown Representative under the Indian Independence Act, 1947.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_64 = topicRef1.collection('questions').doc('question_64');
    await questionRef1_64.set({
      'questionId': '''64''',
      'order': 64,
      'statements': [
        {
          'text': '''The place described as having been a Danish outpost with the 'New Jerusalem' church lies on the Tamil Nadu coast.''',
          'isCorrect': true,
        },
        {
          'text': '''The place described as having been a Danish outpost with the 'New Jerusalem' church lies on the Kerala coast.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_65 = topicRef1.collection('questions').doc('question_65');
    await questionRef1_65.set({
      'questionId': '''65''',
      'order': 65,
      'statements': [
        {
          'text': '''Dupleix was the first European to initiate the policy of taking part in the quarrels of Indian princes with a view to acquiring territories.''',
          'isCorrect': true,
        },
        {
          'text': '''Robert Clive was the first European to initiate the policy of taking part in the quarrels of Indian princes with a view to acquiring territories.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_66 = topicRef1.collection('questions').doc('question_66');
    await questionRef1_66.set({
      'questionId': '''66''',
      'order': 66,
      'statements': [
        {
          'text': '''Hughly was used as a base for piracy in the Bay of Bengal by the Portuguese.''',
          'isCorrect': true,
        },
        {
          'text': '''Hughly was used as a base for piracy in the Bay of Bengal by the Dutch.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_67 = topicRef1.collection('questions').doc('question_67');
    await questionRef1_67.set({
      'questionId': '''67''',
      'order': 67,
      'statements': [
        {
          'text': '''The Modi script was employed in the documents of the Marathas.''',
          'isCorrect': true,
        },
        {
          'text': '''The Persian script was employed in the documents of the Marathas.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_68 = topicRef1.collection('questions').doc('question_68');
    await questionRef1_68.set({
      'questionId': '''68''',
      'order': 68,
      'statements': [
        {
          'text': '''The Battle of Wandiwash was fought between the French and the East India Company.''',
          'isCorrect': true,
        },
        {
          'text': '''The Battle of Wandiwash was fought between the Dutch and the East India Company.''',
          'isCorrect': false,
        },
      ],
    });

    final topicRef2 = sectionRef.collection('topics').doc('''the_revolt_of_1857''');
    await topicRef2.set({
      'name': '''The Revolt of 1857''',
      'order': 2,
    }, SetOptions(merge: true));

    final questionRef2_1 = topicRef2.collection('questions').doc('question_1');
    await questionRef2_1.set({
      'questionId': '''1''',
      'order': 1,
      'statements': [
        {
          'text': '''Lord Canning was the Governor General of India during the Sepoy Mutiny (Revolt of 1857).''',
          'isCorrect': true,
        },
        {
          'text': '''Lord Dalhousie was the Governor General of India during the Sepoy Mutiny (Revolt of 1857).''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_2 = topicRef2.collection('questions').doc('question_2');
    await questionRef2_2.set({
      'questionId': '''2''',
      'order': 2,
      'statements': [
        {
          'text': '''Tantia Tope, a leader of the Revolt of 1857, was betrayed by a friend, captured, and put to death by the British.''',
          'isCorrect': true,
        },
        {
          'text': '''Nana Saheb, a leader of the Revolt of 1857, was betrayed by a friend, captured, and put to death by the British.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_3 = topicRef2.collection('questions').doc('question_3');
    await questionRef2_3.set({
      'questionId': '''3''',
      'order': 3,
      'statements': [
        {
          'text': '''Kunwar Singh, a prominent leader of the Revolt of 1857, belonged to Bihar.''',
          'isCorrect': true,
        },
        {
          'text': '''Kunwar Singh, a prominent leader of the Revolt of 1857, belonged to Awadh.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_4 = topicRef2.collection('questions').doc('question_4');
    await questionRef2_4.set({
      'questionId': '''4''',
      'order': 4,
      'statements': [
        {
          'text': '''Jhansi was affected by the Revolt of 1857.''',
          'isCorrect': true,
        },
        {
          'text': '''Jhansi remained unaffected by the Revolt of 1857 and stayed loyal to the British throughout.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_5 = topicRef2.collection('questions').doc('question_5');
    await questionRef2_5.set({
      'questionId': '''5''',
      'order': 5,
      'statements': [
        {
          'text': '''Jagdishpur was affected by the Revolt of 1857.''',
          'isCorrect': true,
        },
        {
          'text': '''Jagdishpur remained unaffected by the Revolt of 1857.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_6 = topicRef2.collection('questions').doc('question_6');
    await questionRef2_6.set({
      'questionId': '''6''',
      'order': 6,
      'statements': [
        {
          'text': '''Lucknow was affected by the Revolt of 1857.''',
          'isCorrect': true,
        },
        {
          'text': '''Lucknow remained unaffected by the Revolt of 1857.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_7 = topicRef2.collection('questions').doc('question_7');
    await questionRef2_7.set({
      'questionId': '''7''',
      'order': 7,
      'statements': [
        {
          'text': '''Aitchison's remark, "In this instance we could not play off the Mohammedans against the Hindus," related to the Revolt of 1857.''',
          'isCorrect': true,
        },
        {
          'text': '''Aitchison's remark, "In this instance we could not play off the Mohammedans against the Hindus," related to the Ilbert Bill controversy.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_8 = topicRef2.collection('questions').doc('question_8');
    await questionRef2_8.set({
      'questionId': '''8''',
      'order': 8,
      'statements': [
        {
          'text': '''The educated middle class in India remained neutral to the Revolt of 1857.''',
          'isCorrect': true,
        },
        {
          'text': '''The educated middle class in India actively supported and led the Revolt of 1857.''',
          'isCorrect': false,
        },
      ],
    });

    final topicRef3 = sectionRef.collection('topics').doc('''events_from_1857_1885''');
    await topicRef3.set({
      'name': '''Events from 1857-1885''',
      'order': 3,
    }, SetOptions(merge: true));

    final questionRef3_1 = topicRef3.collection('questions').doc('question_1');
    await questionRef3_1.set({
      'questionId': '''1''',
      'order': 1,
      'statements': [
        {
          'text': '''The Rakhmabai case of 1884 revolved around the age of consent.''',
          'isCorrect': true,
        },
        {
          'text': '''The Rakhmabai case of 1884 revolved around the issue of widow remarriage.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef3_2 = topicRef3.collection('questions').doc('question_2');
    await questionRef3_2.set({
      'questionId': '''2''',
      'order': 2,
      'statements': [
        {
          'text': '''The Rakhmabai case of 1884 revolved around the restitution of conjugal rights.''',
          'isCorrect': true,
        },
        {
          'text': '''The Rakhmabai case of 1884 revolved around the issue of female infanticide.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef3_3 = topicRef3.collection('questions').doc('question_3');
    await questionRef3_3.set({
      'questionId': '''3''',
      'order': 3,
      'statements': [
        {
          'text': '''One of the economic results of British rule in India in the 19th century was the commercialization of Indian agriculture.''',
          'isCorrect': true,
        },
        {
          'text': '''One of the economic results of British rule in India in the 19th century was the rapid industrialization of the Indian economy.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef3_4 = topicRef3.collection('questions').doc('question_4');
    await questionRef3_4.set({
      'questionId': '''4''',
      'order': 4,
      'statements': [
        {
          'text': '''N.M. Lokhande was a pioneer in organising the labour movement in British India.''',
          'isCorrect': true,
        },
        {
          'text': '''N.M. Lokhande was a pioneer in organising the revolutionary movement against British rule.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef3_5 = topicRef3.collection('questions').doc('question_5');
    await questionRef3_5.set({
      'questionId': '''5''',
      'order': 5,
      'statements': [
        {
          'text': '''Radhakanta Deb was the first President of the British Indian Association.''',
          'isCorrect': true,
        },
        {
          'text': '''Surendranath Banerjee was the first President of the British Indian Association.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef3_6 = topicRef3.collection('questions').doc('question_6');
    await questionRef3_6.set({
      'questionId': '''6''',
      'order': 6,
      'statements': [
        {
          'text': '''Surendranath Banerjee was the founder of the Indian Association.''',
          'isCorrect': true,
        },
        {
          'text': '''Surendranath Banerjee was the founder of the British Indian Association.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef3_7 = topicRef3.collection('questions').doc('question_7');
    await questionRef3_7.set({
      'questionId': '''7''',
      'order': 7,
      'statements': [
        {
          'text': '''Keshab Chandra Sen was associated with the establishment of the Tabernacle of New Dispensation.''',
          'isCorrect': true,
        },
        {
          'text': '''Keshab Chandra Sen was associated with the establishment of the Arya Samaj.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef3_8 = topicRef3.collection('questions').doc('question_8');
    await questionRef3_8.set({
      'questionId': '''8''',
      'order': 8,
      'statements': [
        {
          'text': '''Keshab Chandra Sen was associated with the establishment of the Indian Reform Association.''',
          'isCorrect': true,
        },
        {
          'text': '''Keshab Chandra Sen was associated with the establishment of the Deccan Education Society.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef3_9 = topicRef3.collection('questions').doc('question_9');
    await questionRef3_9.set({
      'questionId': '''9''',
      'order': 9,
      'statements': [
        {
          'text': '''Dadabhai Naoroji was an economic critic of colonialism in India.''',
          'isCorrect': true,
        },
        {
          'text': '''Dadabhai Naoroji was a supporter of British economic policies in India.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef3_10 = topicRef3.collection('questions').doc('question_10');
    await questionRef3_10.set({
      'questionId': '''10''',
      'order': 10,
      'statements': [
        {
          'text': '''G. Subramania Iyer was an economic critic of colonialism in India.''',
          'isCorrect': true,
        },
        {
          'text': '''G. Subramania Iyer was a staunch supporter of British colonial economic policy in India.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef3_11 = topicRef3.collection('questions').doc('question_11');
    await questionRef3_11.set({
      'questionId': '''11''',
      'order': 11,
      'statements': [
        {
          'text': '''R.C. Dutt was an economic critic of colonialism in India.''',
          'isCorrect': true,
        },
        {
          'text': '''R.C. Dutt was a staunch defender of British economic policy in India.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef3_12 = topicRef3.collection('questions').doc('question_12');
    await questionRef3_12.set({
      'questionId': '''12''',
      'order': 12,
      'statements': [
        {
          'text': '''One object of Queen Victoria's Proclamation of 1858 was to disclaim any intention to annex Indian States.''',
          'isCorrect': true,
        },
        {
          'text': '''One object of Queen Victoria's Proclamation of 1858 was to declare a fresh policy of annexation of Indian princely states.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef3_13 = topicRef3.collection('questions').doc('question_13');
    await questionRef3_13.set({
      'questionId': '''13''',
      'order': 13,
      'statements': [
        {
          'text': '''One object of Queen Victoria's Proclamation of 1858 was to place the Indian administration under the British Crown.''',
          'isCorrect': true,
        },
        {
          'text': '''One object of Queen Victoria's Proclamation of 1858 was to transfer control of India back to the East India Company.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef3_14 = topicRef3.collection('questions').doc('question_14');
    await questionRef3_14.set({
      'questionId': '''14''',
      'order': 14,
      'statements': [
        {
          'text': '''The Ilbert Bill Controversy was related to the removal of disqualifications imposed on Indian magistrates with regard to the trial of Europeans.''',
          'isCorrect': true,
        },
        {
          'text': '''The Ilbert Bill Controversy was related to the introduction of separate electorates for Muslims.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef3_15 = topicRef3.collection('questions').doc('question_15');
    await questionRef3_15.set({
      'questionId': '''15''',
      'order': 15,
      'statements': [
        {
          'text': '''The most effective contribution made by Dadabhai Naoroji to the Indian National Movement was exposing the economic exploitation of India by the British.''',
          'isCorrect': true,
        },
        {
          'text': '''The most effective contribution made by Dadabhai Naoroji to the Indian National Movement was leading an armed struggle against British rule.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef3_16 = topicRef3.collection('questions').doc('question_16');
    await questionRef3_16.set({
      'questionId': '''16''',
      'order': 16,
      'statements': [
        {
          'text': '''Home Charges included funds used to support the India Office in London.''',
          'isCorrect': true,
        },
        {
          'text': '''Home Charges included funds used to finance industrial development within India.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef3_17 = topicRef3.collection('questions').doc('question_17');
    await questionRef3_17.set({
      'questionId': '''17''',
      'order': 17,
      'statements': [
        {
          'text': '''Home Charges included funds used to pay salaries and pensions of British personnel engaged in India.''',
          'isCorrect': true,
        },
        {
          'text': '''Home Charges included funds used to pay salaries and pensions of Indian civil servants working within India.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef3_18 = topicRef3.collection('questions').doc('question_18');
    await questionRef3_18.set({
      'questionId': '''18''',
      'order': 18,
      'statements': [
        {
          'text': '''The first Factory Act restricting the working hours of women and children, and authorising local governments to make necessary rules, was adopted during the time of Lord Ripon.''',
          'isCorrect': true,
        },
        {
          'text': '''The first Factory Act restricting the working hours of women and children, and authorising local governments to make necessary rules, was adopted during the time of Lord Curzon.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef3_19 = topicRef3.collection('questions').doc('question_19');
    await questionRef3_19.set({
      'questionId': '''19''',
      'order': 19,
      'statements': [
        {
          'text': '''Under the Government of India Act, 1858, the British Parliament abolished the East India Company altogether and undertook the responsibility of ruling India directly.''',
          'isCorrect': true,
        },
        {
          'text': '''Under the Government of India Act, 1858, the East India Company retained control over Indian administration under Parliamentary supervision.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef3_20 = topicRef3.collection('questions').doc('question_20');
    await questionRef3_20.set({
      'questionId': '''20''',
      'order': 20,
      'statements': [
        {
          'text': '''Lord Ripon repealed the Vernacular Press Act.''',
          'isCorrect': true,
        },
        {
          'text': '''Lord Lytton repealed the Vernacular Press Act.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef3_21 = topicRef3.collection('questions').doc('question_21');
    await questionRef3_21.set({
      'questionId': '''21''',
      'order': 21,
      'statements': [
        {
          'text': '''The Ilbert Bill of 1883 sought to bring Indians and Europeans on par as far as the criminal jurisdiction of courts was concerned.''',
          'isCorrect': true,
        },
        {
          'text': '''The Ilbert Bill of 1883 sought to grant separate electorates to Indians in the provincial legislatures.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef3_22 = topicRef3.collection('questions').doc('question_22');
    await questionRef3_22.set({
      'questionId': '''22''',
      'order': 22,
      'statements': [
        {
          'text': '''The Poona Sarvajanik Sabha submitted a petition to the House of Commons in 1875 demanding India's direct representation in the British Parliament.''',
          'isCorrect': true,
        },
        {
          'text': '''The Poona Sarvajanik Sabha submitted a petition to the Governor-General in 1885 demanding complete independence for India.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef3_23 = topicRef3.collection('questions').doc('question_23');
    await questionRef3_23.set({
      'questionId': '''23''',
      'order': 23,
      'statements': [
        {
          'text': '''The Indian Councils Act, 1861 strengthened the Viceroy's authority over his executive council by substituting the 'portfolio' or departmental system for corporate functioning.''',
          'isCorrect': true,
        },
        {
          'text': '''The Indian Councils Act, 1861 introduced separate electorates for religious communities in India.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef3_24 = topicRef3.collection('questions').doc('question_24');
    await questionRef3_24.set({
      'questionId': '''24''',
      'order': 24,
      'statements': [
        {
          'text': '''Dadabhai Naoroji ascertained for the first time that the per capita income in India was Rs. 20 in 1867-68.''',
          'isCorrect': true,
        },
        {
          'text': '''Dadabhai Naoroji ascertained for the first time that the per capita income in India was Rs. 200 in 1867-68.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef3_25 = topicRef3.collection('questions').doc('question_25');
    await questionRef3_25.set({
      'questionId': '''25''',
      'order': 25,
      'statements': [
        {
          'text': '''Lord Lytton followed a spirited 'Forward' policy towards Afghanistan.''',
          'isCorrect': true,
        },
        {
          'text': '''Lord Ripon followed a spirited 'Forward' policy towards Afghanistan.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef3_26 = topicRef3.collection('questions').doc('question_26');
    await questionRef3_26.set({
      'questionId': '''26''',
      'order': 26,
      'statements': [
        {
          'text': '''Surendranath Banerji was dismissed by the British from the Indian Civil Service.''',
          'isCorrect': true,
        },
        {
          'text': '''Surendranath Banerji was the first Indian to be appointed to the Indian Civil Service.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef3_27 = topicRef3.collection('questions').doc('question_27');
    await questionRef3_27.set({
      'questionId': '''27''',
      'order': 27,
      'statements': [
        {
          'text': '''Theodore Beck was associated with the Mohammedan Anglo-Oriental College, Aligarh.''',
          'isCorrect': true,
        },
        {
          'text': '''Theodore Beck was associated with the founding of the Deccan Education Society in Pune.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef3_28 = topicRef3.collection('questions').doc('question_28');
    await questionRef3_28.set({
      'questionId': '''28''',
      'order': 28,
      'statements': [
        {
          'text': '''The Ilbert Bill is correctly associated with Lord Ripon.''',
          'isCorrect': true,
        },
        {
          'text': '''The Ilbert Bill is correctly associated with Lord Curzon.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef3_29 = topicRef3.collection('questions').doc('question_29');
    await questionRef3_29.set({
      'questionId': '''29''',
      'order': 29,
      'statements': [
        {
          'text': '''Pherozeshah Mehta was associated with the Indian National Congress.''',
          'isCorrect': true,
        },
        {
          'text': '''Pherozeshah Mehta was associated with the founding of the Muslim League.''',
          'isCorrect': false,
        },
      ],
    });

    final topicRef4 = sectionRef.collection('topics').doc('''from_establishment_to_split_of_congress_1885_1907''');
    await topicRef4.set({
      'name': '''From Establishment to Split of Congress (1885-1907)''',
      'order': 4,
    }, SetOptions(merge: true));

    final questionRef4_1 = topicRef4.collection('questions').doc('question_1');
    await questionRef4_1.set({
      'questionId': '''1''',
      'order': 1,
      'statements': [
        {
          'text': '''7th August is declared as the National Handloom Day because it was on this day in 1905 that the Swadeshi Movement was launched.''',
          'isCorrect': true,
        },
        {
          'text': '''7th August is declared as the National Handloom Day because it was on this day in 1906 that the Swadeshi Movement was launched.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_2 = topicRef4.collection('questions').doc('question_2');
    await questionRef4_2.set({
      'questionId': '''2''',
      'order': 2,
      'statements': [
        {
          'text': '''The Swadeshi Movement contributed to the revival of indigenous artisan crafts and industries.''',
          'isCorrect': true,
        },
        {
          'text': '''The Swadeshi Movement contributed to the revival of imported foreign goods and industries.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_3 = topicRef4.collection('questions').doc('question_3');
    await questionRef4_3.set({
      'questionId': '''3''',
      'order': 3,
      'statements': [
        {
          'text': '''The National Council of Education was established as a part of the Swadeshi Movement.''',
          'isCorrect': true,
        },
        {
          'text': '''The National Council of Education was established as a part of the Non-Cooperation Movement.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_4 = topicRef4.collection('questions').doc('question_4');
    await questionRef4_4.set({
      'questionId': '''4''',
      'order': 4,
      'statements': [
        {
          'text': ''''Swadeshi' and 'Boycott' were adopted as methods of struggle for the first time during the agitation against the Partition of Bengal.''',
          'isCorrect': true,
        },
        {
          'text': ''''Swadeshi' and 'Boycott' were adopted as methods of struggle for the first time during the agitation against the Rowlatt Act.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_5 = topicRef4.collection('questions').doc('question_5');
    await questionRef4_5.set({
      'questionId': '''5''',
      'order': 5,
      'statements': [
        {
          'text': '''The main reason for the split in the Indian National Congress at Surat in 1907 was the Extremists' lack of faith in the capacity of the Moderates to negotiate with the British Government.''',
          'isCorrect': true,
        },
        {
          'text': '''The main reason for the split in the Indian National Congress at Surat in 1907 was the Extremists' lack of faith in the capacity of the Extremists to negotiate with the British Government.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_6 = topicRef4.collection('questions').doc('question_6');
    await questionRef4_6.set({
      'questionId': '''6''',
      'order': 6,
      'statements': [
        {
          'text': '''The Swadeshi Movement contributed to a split in the Indian National Congress, resulting in the emergence of 'Moderates' and 'Extremists'.''',
          'isCorrect': true,
        },
        {
          'text': '''The Swadeshi Movement contributed to a split in the Indian National Congress, resulting in the emergence of 'Liberals' and 'Revolutionaries'.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_7 = topicRef4.collection('questions').doc('question_7');
    await questionRef4_7.set({
      'questionId': '''7''',
      'order': 7,
      'statements': [
        {
          'text': '''The first Muslim President of the Indian National Congress was Badruddin Tyabji.''',
          'isCorrect': true,
        },
        {
          'text': '''The first Muslim President of the Indian National Congress was Maulana Abul Kalam Azad.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_8 = topicRef4.collection('questions').doc('question_8');
    await questionRef4_8.set({
      'questionId': '''8''',
      'order': 8,
      'statements': [
        {
          'text': '''The Partition of Bengal made by Lord Curzon in 1905 lasted until King George V abrogated Curzon's Act at the Royal Durbar in Delhi in 1911.''',
          'isCorrect': true,
        },
        {
          'text': '''The Partition of Bengal made by Lord Curzon in 1905 lasted until King George V abrogated Curzon's Act at the Royal Durbar in Calcutta in 1911.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_9 = topicRef4.collection('questions').doc('question_9');
    await questionRef4_9.set({
      'questionId': '''9''',
      'order': 9,
      'statements': [
        {
          'text': '''The National Social Conference was formed because the Indian National Congress did not want to include social reforms in its deliberations and a separate body was formed for that purpose.''',
          'isCorrect': true,
        },
        {
          'text': '''The National Social Conference was formed because the Indian National Congress wanted to include social reforms in all its political deliberations, so no separate body was formed for that purpose.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_10 = topicRef4.collection('questions').doc('question_10');
    await questionRef4_10.set({
      'questionId': '''10''',
      'order': 10,
      'statements': [
        {
          'text': '''Sir William Wedderburn and W.S. Caine set up the Indian Parliamentary Committee in 1893 to agitate for Indian political reforms in the House of Commons.''',
          'isCorrect': true,
        },
        {
          'text': '''Sir William Wedderburn and W.S. Caine set up the Indian Parliamentary Committee in 1893 to agitate for Indian political reforms in the House of Lords.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_11 = topicRef4.collection('questions').doc('question_11');
    await questionRef4_11.set({
      'questionId': '''11''',
      'order': 11,
      'statements': [
        {
          'text': '''The immediate cause for the launch of the Swadeshi Movement was the partition of Bengal done by Lord Curzon.''',
          'isCorrect': true,
        },
        {
          'text': '''The immediate cause for the launch of the Swadeshi Movement was the annulment of the partition of Bengal by Lord Curzon.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_12 = topicRef4.collection('questions').doc('question_12');
    await questionRef4_12.set({
      'questionId': '''12''',
      'order': 12,
      'statements': [
        {
          'text': '''Boycott was one of the four resolutions passed at the Calcutta session of the Indian National Congress in 1906.''',
          'isCorrect': true,
        },
        {
          'text': '''Boycott was one of the four resolutions passed at the Calcutta session of the Indian National Congress in 1905.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_13 = topicRef4.collection('questions').doc('question_13');
    await questionRef4_13.set({
      'questionId': '''13''',
      'order': 13,
      'statements': [
        {
          'text': '''National education was one of the four resolutions passed at the Calcutta session of the Indian National Congress in 1906.''',
          'isCorrect': true,
        },
        {
          'text': '''National education was one of the four resolutions passed at the Madras session of the Indian National Congress in 1906.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_14 = topicRef4.collection('questions').doc('question_14');
    await questionRef4_14.set({
      'questionId': '''14''',
      'order': 14,
      'statements': [
        {
          'text': '''Swadeshi was one of the four resolutions passed at the Calcutta session of the Indian National Congress in 1906.''',
          'isCorrect': true,
        },
        {
          'text': '''Swadeshi was one of the four resolutions passed at the Surat session of the Indian National Congress in 1907.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_15 = topicRef4.collection('questions').doc('question_15');
    await questionRef4_15.set({
      'questionId': '''15''',
      'order': 15,
      'statements': [
        {
          'text': '''16th October 1905 is significant in the Indian freedom struggle because the partition of Bengal took effect on that date.''',
          'isCorrect': true,
        },
        {
          'text': '''16th October 1905 is significant in the Indian freedom struggle because the partition of Bengal was announced on that date.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_16 = topicRef4.collection('questions').doc('question_16');
    await questionRef4_16.set({
      'questionId': '''16''',
      'order': 16,
      'statements': [
        {
          'text': '''The First Session of the Indian National Congress was held in Bombay in December 1885.''',
          'isCorrect': true,
        },
        {
          'text': '''The First Session of the Indian National Congress was held in Calcutta in December 1885.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_17 = topicRef4.collection('questions').doc('question_17');
    await questionRef4_17.set({
      'questionId': '''17''',
      'order': 17,
      'statements': [
        {
          'text': '''G.K. Gokhale rejected the title of knighthood and refused to accept a position in the Council of the Secretary of State for India.''',
          'isCorrect': true,
        },
        {
          'text': '''G.K. Gokhale accepted the title of knighthood and accepted a position in the Council of the Secretary of State for India.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_18 = topicRef4.collection('questions').doc('question_18');
    await questionRef4_18.set({
      'questionId': '''18''',
      'order': 18,
      'statements': [
        {
          'text': '''Dadabhai Naoroji used the phrase 'Un-British' to criticise the English colonial control of India.''',
          'isCorrect': true,
        },
        {
          'text': '''Dadabhai Naoroji used the phrase 'Un-British' to praise the English colonial control of India.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_19 = topicRef4.collection('questions').doc('question_19');
    await questionRef4_19.set({
      'questionId': '''19''',
      'order': 19,
      'statements': [
        {
          'text': '''Aurobindo Ghosh gave a systematic critique of the moderate politics of the Indian National Congress in a series of articles entitled 'New Lamps for Old'.''',
          'isCorrect': true,
        },
        {
          'text': '''Aurobindo Ghosh gave a systematic critique of the moderate politics of the Indian National Congress in a series of articles entitled 'Young India'.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_20 = topicRef4.collection('questions').doc('question_20');
    await questionRef4_20.set({
      'questionId': '''20''',
      'order': 20,
      'statements': [
        {
          'text': '''The Second Session of the Indian National Congress was held under the presidency of Dadabhai Naoroji.''',
          'isCorrect': true,
        },
        {
          'text': '''The Second Session of the Indian National Congress was held under the presidency of W.C. Bonnerjee.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_21 = topicRef4.collection('questions').doc('question_21');
    await questionRef4_21.set({
      'questionId': '''21''',
      'order': 21,
      'statements': [
        {
          'text': '''Both the Indian National Congress and the Muslim League held their sessions at Lucknow in 1916 and concluded the Lucknow Pact.''',
          'isCorrect': true,
        },
        {
          'text': '''Both the Indian National Congress and the Muslim League held their sessions at Bombay in 1916 and concluded the Lucknow Pact.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_22 = topicRef4.collection('questions').doc('question_22');
    await questionRef4_22.set({
      'questionId': '''22''',
      'order': 22,
      'statements': [
        {
          'text': '''In 1898, the scheme of national education was formulated by Satish Chandra Mukherjee.''',
          'isCorrect': true,
        },
        {
          'text': '''In 1898, the scheme of national education was formulated by Aurobindo Ghosh.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_23 = topicRef4.collection('questions').doc('question_23');
    await questionRef4_23.set({
      'questionId': '''23''',
      'order': 23,
      'statements': [
        {
          'text': '''The Bengal National College was founded in 1906 with Aurobindo as the Principal.''',
          'isCorrect': true,
        },
        {
          'text': '''The Bengal National College was founded in 1906 with Bipin Chandra Pal as the Principal.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_24 = topicRef4.collection('questions').doc('question_24');
    await questionRef4_24.set({
      'questionId': '''24''',
      'order': 24,
      'statements': [
        {
          'text': '''Tagore preached the cult of Atmashakti, the main plank of which was the social and economic regeneration of the villages.''',
          'isCorrect': true,
        },
        {
          'text': '''Tagore preached the cult of Atmashakti, the main plank of which was the political and military expansion of the villages.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_25 = topicRef4.collection('questions').doc('question_25');
    await questionRef4_25.set({
      'questionId': '''25''',
      'order': 25,
      'statements': [
        {
          'text': '''Hakim Ajmal Khan was one of the leaders to start the nationalist and militant Ahrar movement.''',
          'isCorrect': true,
        },
        {
          'text': '''Hakim Ajmal Khan was one of the leaders to start the nationalist and militant Khilafat movement.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_26 = topicRef4.collection('questions').doc('question_26');
    await questionRef4_26.set({
      'questionId': '''26''',
      'order': 26,
      'statements': [
        {
          'text': '''When the Indian National Congress was formed, Sayyid Ahmad Khan opposed it.''',
          'isCorrect': true,
        },
        {
          'text': '''When the Indian National Congress was formed, Syed Ahmed Khan supported it and became one of its earliest leaders.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_27 = topicRef4.collection('questions').doc('question_27');
    await questionRef4_27.set({
      'questionId': '''27''',
      'order': 27,
      'statements': [
        {
          'text': '''Maulana Barkatullah and Maulana Obeidullah Sindhi were among those who formed a Provisional Government of India in Kabul.''',
          'isCorrect': true,
        },
        {
          'text': '''Maulana Barkatullah and Maulana Obeidullah Sindhi were among those who formed a Provisional Government of India in Delhi.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_28 = topicRef4.collection('questions').doc('question_28');
    await questionRef4_28.set({
      'questionId': '''28''',
      'order': 28,
      'statements': [
        {
          'text': '''C.R. Das was in prison when he functioned as the President of the Congress.''',
          'isCorrect': true,
        },
        {
          'text': '''C.R. Das was in London when he functioned as the President of the Congress.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_29 = topicRef4.collection('questions').doc('question_29');
    await questionRef4_29.set({
      'questionId': '''29''',
      'order': 29,
      'statements': [
        {
          'text': '''Alfred Webb was the President of the Congress in 1894.''',
          'isCorrect': true,
        },
        {
          'text': '''Alfred Webb was the President of the Congress in 1895.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_30 = topicRef4.collection('questions').doc('question_30');
    await questionRef4_30.set({
      'questionId': '''30''',
      'order': 30,
      'statements': [
        {
          'text': '''The native State of Tripura became involved in the Freedom Movement early in the 20th century because there were already some groups fighting against the kingship and its protector, the British.''',
          'isCorrect': true,
        },
        {
          'text': '''The native State of Tripura became involved in the Freedom Movement early in the 20th century because there were already some groups supporting the kingship and opposing the British.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_31 = topicRef4.collection('questions').doc('question_31');
    await questionRef4_31.set({
      'questionId': '''31''',
      'order': 31,
      'statements': [
        {
          'text': '''The basic weakness of the early nationalist movement lay in its narrow social base.''',
          'isCorrect': true,
        },
        {
          'text': '''The basic weakness of the early nationalist movement lay in its broad social base.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_32 = topicRef4.collection('questions').doc('question_32');
    await questionRef4_32.set({
      'questionId': '''32''',
      'order': 32,
      'statements': [
        {
          'text': '''The Congress policy of 'pray and petition' ultimately came to an end under the guidance of Bal Gangadhar Tilak.''',
          'isCorrect': true,
        },
        {
          'text': '''The Congress policy of 'pray and petition' ultimately came to an end under the guidance of Dadabhai Naoroji.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_33 = topicRef4.collection('questions').doc('question_33');
    await questionRef4_33.set({
      'questionId': '''33''',
      'order': 33,
      'statements': [
        {
          'text': '''The Surat session of the Indian National Congress separated the Extremists from the Moderates.''',
          'isCorrect': true,
        },
        {
          'text': '''The Surat session of the Indian National Congress brought the Extremists and Moderates together under a common programme.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_34 = topicRef4.collection('questions').doc('question_34');
    await questionRef4_34.set({
      'questionId': '''34''',
      'order': 34,
      'statements': [
        {
          'text': '''Indian Muslims, in general, were not attracted to the Extremist movement because of the Extremists' policy of harping on the Hindu past.''',
          'isCorrect': true,
        },
        {
          'text': '''Indian Muslims, in general, were strongly attracted to the Extremist movement because of the Extremists' policy of harping on the Hindu past.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_35 = topicRef4.collection('questions').doc('question_35');
    await questionRef4_35.set({
      'questionId': '''35''',
      'order': 35,
      'statements': [
        {
          'text': '''Extremist ideology during the early phase of the Indian freedom movement was defined by obtaining self-government by aggressive means in place of petitions and constitutional ways.''',
          'isCorrect': true,
        },
        {
          'text': '''Extremist ideology during the early phase of the Indian freedom movement was defined by obtaining self-government through petitions and constitutional ways instead of aggressive means.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_36 = topicRef4.collection('questions').doc('question_36');
    await questionRef4_36.set({
      'questionId': '''36''',
      'order': 36,
      'statements': [
        {
          'text': '''The statement, "The Congress is tottering to its fall and one of my great ambitions while in India is to assist it to a peaceful demise," is attributed to Lord Curzon.''',
          'isCorrect': true,
        },
        {
          'text': '''The statement, "The Congress is tottering to its fall and one of my great ambitions while in India is to assist it to a peaceful demise," is attributed to Lord Ripon.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_37 = topicRef4.collection('questions').doc('question_37');
    await questionRef4_37.set({
      'questionId': '''37''',
      'order': 37,
      'statements': [
        {
          'text': '''M.C. Setalvad, B.N. Rao and Alladi Krishnaswamy Iyer were distinguished members of the Servants of India Society.''',
          'isCorrect': true,
        },
        {
          'text': '''M.C. Setalvad, B.N. Rao and Alladi Krishnaswamy Iyer were distinguished members of the Arya Samaj.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_38 = topicRef4.collection('questions').doc('question_38');
    await questionRef4_38.set({
      'questionId': '''38''',
      'order': 38,
      'statements': [
        {
          'text': '''The biography of a graduate at 18, professor at 20, Secretary of the National Congress at 29, and President of the Indian National Congress at 39, regarded by Mahatma Gandhi as his master, describes Gopal Krishna Gokhale.''',
          'isCorrect': true,
        },
        {
          'text': '''The biography of a graduate at 18, professor at 20, Secretary of the National Congress at 29, and President of the Indian National Congress at 39, regarded by Mahatma Gandhi as his master, describes Bal Gangadhar Tilak.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_39 = topicRef4.collection('questions').doc('question_39');
    await questionRef4_39.set({
      'questionId': '''39''',
      'order': 39,
      'statements': [
        {
          'text': '''The passage describing a leader whose principal forte was social and religious reform, who worked against child marriage and the purdah system, and who inaugurated the Indian National Social Conference, refers to Mahadev Govind Ranade.''',
          'isCorrect': true,
        },
        {
          'text': '''The passage describing a leader whose principal forte was social and religious reform, who worked against child marriage and the purdah system, and who inaugurated the Indian National Congress, refers to Mahadev Govind Ranade.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_40 = topicRef4.collection('questions').doc('question_40');
    await questionRef4_40.set({
      'questionId': '''40''',
      'order': 40,
      'statements': [
        {
          'text': '''Sir Syed Ahmed Khan did not believe in the drain theory of Dadabhai Naoroji.''',
          'isCorrect': true,
        },
        {
          'text': '''Sir Syed Ahmed Khan believed in the drain theory of Dadabhai Naoroji.''',
          'isCorrect': false,
        },
      ],
    });

    final topicRef5 = sectionRef.collection('topics').doc('''freedom_struggle_before_gandhi_1908_1917''');
    await topicRef5.set({
      'name': '''Freedom Struggle Before Gandhi (1908-1917)''',
      'order': 5,
    }, SetOptions(merge: true));

    final questionRef5_1 = topicRef5.collection('questions').doc('question_1');
    await questionRef5_1.set({
      'questionId': '''1''',
      'order': 1,
      'statements': [
        {
          'text': '''Annie Besant was responsible for starting the Home Rule Movement.''',
          'isCorrect': true,
        },
        {
          'text': '''Gopal Krishna Gokhale was responsible for starting the Home Rule Movement.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef5_2 = topicRef5.collection('questions').doc('question_2');
    await questionRef5_2.set({
      'questionId': '''2''',
      'order': 2,
      'statements': [
        {
          'text': '''Annie Besant was once the President of the Indian National Congress.''',
          'isCorrect': true,
        },
        {
          'text': '''Annie Besant was once the President of the All India Muslim League.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef5_3 = topicRef5.collection('questions').doc('question_3');
    await questionRef5_3.set({
      'questionId': '''3''',
      'order': 3,
      'statements': [
        {
          'text': '''The Komagata Maru was a ship that undertook a voyage to Canada.''',
          'isCorrect': true,
        },
        {
          'text': '''The Komagata Maru was a ship that undertook a voyage to Australia.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef5_4 = topicRef5.collection('questions').doc('question_4');
    await questionRef5_4.set({
      'questionId': '''4''',
      'order': 4,
      'statements': [
        {
          'text': '''A London branch of the All India Muslim League was established in 1908 under the presidency of Ameer Ali.''',
          'isCorrect': true,
        },
        {
          'text': '''A London branch of the Indian National Congress was established in 1908 under the presidency of Ameer Ali.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef5_5 = topicRef5.collection('questions').doc('question_5');
    await questionRef5_5.set({
      'questionId': '''5''',
      'order': 5,
      'statements': [
        {
          'text': '''The most short-lived of all Britain's constitutional experiments in India was the Indian Councils Act of 1909.''',
          'isCorrect': true,
        },
        {
          'text': '''The most short-lived of all Britain's constitutional experiments in India was the Government of India Act, 1919.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef5_6 = topicRef5.collection('questions').doc('question_6');
    await questionRef5_6.set({
      'questionId': '''6''',
      'order': 6,
      'statements': [
        {
          'text': '''The correct chronological sequence of events is: the Komagata Maru Incident, followed by Mahatma Gandhi's arrival in India, followed by Tilak's Home Rule League.''',
          'isCorrect': true,
        },
        {
          'text': '''The correct chronological sequence of events is: Tilak's Home Rule League, followed by the Komagata Maru Incident, followed by Mahatma Gandhi's arrival in India.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef5_7 = topicRef5.collection('questions').doc('question_7');
    await questionRef5_7.set({
      'questionId': '''7''',
      'order': 7,
      'statements': [
        {
          'text': '''Mustard gas was used as a chemical weapon in the First World War.''',
          'isCorrect': true,
        },
        {
          'text': '''Mustard gas was first used as a chemical weapon in the Second World War.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef5_8 = topicRef5.collection('questions').doc('question_8');
    await questionRef5_8.set({
      'questionId': '''8''',
      'order': 8,
      'statements': [
        {
          'text': '''Annie Besant was a proponent of Fabianism as a movement.''',
          'isCorrect': true,
        },
        {
          'text': '''Annie Besant was a proponent of Marxism-Leninism as a movement.''',
          'isCorrect': false,
        },
      ],
    });

    final topicRef6 = sectionRef.collection('topics').doc('''early_phase_of_gandhian_struggle_1917_1925''');
    await topicRef6.set({
      'name': '''Early Phase of Gandhian Struggle (1917-1925)''',
      'order': 6,
    }, SetOptions(merge: true));

    final questionRef6_1 = topicRef6.collection('questions').doc('question_1');
    await questionRef6_1.set({
      'questionId': '''1''',
      'order': 1,
      'statements': [
        {
          'text': '''Boycott of law-courts and foreign cloth was part of the Non-Cooperation Programme.''',
          'isCorrect': true,
        },
        {
          'text': '''Boycott of law-courts and foreign cloth was part of the Civil Disobedience Programme, not the Non-Cooperation Programme.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_2 = topicRef6.collection('questions').doc('question_2');
    await questionRef6_2.set({
      'questionId': '''2''',
      'order': 2,
      'statements': [
        {
          'text': '''Observance of strict non-violence was part of the Non-Cooperation Programme.''',
          'isCorrect': true,
        },
        {
          'text': '''Use of force when necessary, rather than strict non-violence, was sanctioned under the Non-Cooperation Programme.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_3 = topicRef6.collection('questions').doc('question_3');
    await questionRef6_3.set({
      'questionId': '''3''',
      'order': 3,
      'statements': [
        {
          'text': '''Establishment of Panchayats for settling disputes was part of the Non-Cooperation Programme.''',
          'isCorrect': true,
        },
        {
          'text': '''Continued reliance on British-established law-courts for settling disputes was part of the Non-Cooperation Programme.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_4 = topicRef6.collection('questions').doc('question_4');
    await questionRef6_4.set({
      'questionId': '''4''',
      'order': 4,
      'statements': [
        {
          'text': '''The Congress declared the attainment of 'Swaraj' by all legitimate and peaceful means to be its objective in the Non-Cooperation Movement.''',
          'isCorrect': true,
        },
        {
          'text': '''The Congress declared the attainment of complete independence through armed insurrection to be its objective in the Non-Cooperation Movement.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_5 = topicRef6.collection('questions').doc('question_5');
    await questionRef6_5.set({
      'questionId': '''5''',
      'order': 5,
      'statements': [
        {
          'text': '''The Non-Cooperation Movement was to be implemented in stages, with civil disobedience and non-payment of taxes for the next stage only if Swaraj did not come within a year and the Government resorted to repression.''',
          'isCorrect': true,
        },
        {
          'text': '''The Non-Cooperation Movement was to be implemented all at once, with civil disobedience and non-payment of taxes launched simultaneously with the boycott programme from the outset.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_6 = topicRef6.collection('questions').doc('question_6');
    await questionRef6_6.set({
      'questionId': '''6''',
      'order': 6,
      'statements': [
        {
          'text': '''Madan Mohan Malaviya and Krishna Kant provided legal defence to the people arrested in the aftermath of the Chauri Chaura incident.''',
          'isCorrect': true,
        },
        {
          'text': '''Bal Gangadhar Tilak and Lala Lajpat Rai provided legal defence to the people arrested in the aftermath of the Chauri Chaura incident.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_7 = topicRef6.collection('questions').doc('question_7');
    await questionRef6_7.set({
      'questionId': '''7''',
      'order': 7,
      'statements': [
        {
          'text': '''Administration of Justice was treated as a 'Reserved' subject under the Government of India Act, 1919.''',
          'isCorrect': true,
        },
        {
          'text': '''Administration of Justice was treated as a 'Transferred' subject under the Government of India Act, 1919.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_8 = topicRef6.collection('questions').doc('question_8');
    await questionRef6_8.set({
      'questionId': '''8''',
      'order': 8,
      'statements': [
        {
          'text': '''Land Revenue was treated as a 'Reserved' subject under the Government of India Act, 1919.''',
          'isCorrect': true,
        },
        {
          'text': '''Land Revenue was treated as a 'Transferred' subject under the Government of India Act, 1919.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_9 = topicRef6.collection('questions').doc('question_9');
    await questionRef6_9.set({
      'questionId': '''9''',
      'order': 9,
      'statements': [
        {
          'text': '''Police was treated as a 'Reserved' subject under the Government of India Act, 1919.''',
          'isCorrect': true,
        },
        {
          'text': '''Police was treated as a 'Transferred' subject under the Government of India Act, 1919.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_10 = topicRef6.collection('questions').doc('question_10');
    await questionRef6_10.set({
      'questionId': '''10''',
      'order': 10,
      'statements': [
        {
          'text': '''The Government of India Act of 1935 gave women reserved seats in the legislature.''',
          'isCorrect': true,
        },
        {
          'text': '''The Government of India Act of 1919 gave women reserved seats in the legislature.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_11 = topicRef6.collection('questions').doc('question_11');
    await questionRef6_11.set({
      'questionId': '''11''',
      'order': 11,
      'statements': [
        {
          'text': '''Mahatma Gandhi was instrumental in the abolition of the system of 'indentured labour'.''',
          'isCorrect': true,
        },
        {
          'text': '''Motilal Nehru was instrumental in the abolition of the system of 'indentured labour'.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_12 = topicRef6.collection('questions').doc('question_12');
    await questionRef6_12.set({
      'questionId': '''12''',
      'order': 12,
      'statements': [
        {
          'text': '''Consequent upon the breaking of the Salt Law by Indian people, the Indian National Congress was declared illegal by the colonial rulers.''',
          'isCorrect': true,
        },
        {
          'text': '''Consequent upon the breaking of the Salt Law by Indian people, the Indian National Congress was granted greater legislative powers by the colonial rulers.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_13 = topicRef6.collection('questions').doc('question_13');
    await questionRef6_13.set({
      'questionId': '''13''',
      'order': 13,
      'statements': [
        {
          'text': '''A significant aspect of the Champaran Satyagraha was the joining of peasant unrest to India's National Movement.''',
          'isCorrect': true,
        },
        {
          'text': '''A significant aspect of the Kheda Satyagraha was the joining of industrial labour unrest to India's National Movement.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_14 = topicRef6.collection('questions').doc('question_14');
    await questionRef6_14.set({
      'questionId': '''14''',
      'order': 14,
      'statements': [
        {
          'text': '''In 1920, the All India Home Rule League changed its name to 'Swarajya Sabha'.''',
          'isCorrect': true,
        },
        {
          'text': '''In 1920, the All India Home Rule League changed its name to the 'Indian National Congress'.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_15 = topicRef6.collection('questions').doc('question_15');
    await questionRef6_15.set({
      'questionId': '''15''',
      'order': 15,
      'statements': [
        {
          'text': '''The principle of Dyarchy refers to the division of the subjects delegated to the provinces into two categories.''',
          'isCorrect': true,
        },
        {
          'text': '''The principle of Dyarchy refers to the division of the subjects delegated to the central government into two categories.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_16 = topicRef6.collection('questions').doc('question_16');
    await questionRef6_16.set({
      'questionId': '''16''',
      'order': 16,
      'statements': [
        {
          'text': '''The Montagu-Chelmsford Proposals were related to constitutional reforms.''',
          'isCorrect': true,
        },
        {
          'text': '''The Montagu-Chelmsford Proposals were related to land revenue reforms.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_17 = topicRef6.collection('questions').doc('question_17');
    await questionRef6_17.set({
      'questionId': '''17''',
      'order': 17,
      'statements': [
        {
          'text': '''The Government of India Act of 1919 clearly defined the jurisdiction of the central and provincial governments.''',
          'isCorrect': true,
        },
        {
          'text': '''The Government of India Act of 1919 left the jurisdiction of the central and provincial governments ambiguous and overlapping.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_18 = topicRef6.collection('questions').doc('question_18');
    await questionRef6_18.set({
      'questionId': '''18''',
      'order': 18,
      'statements': [
        {
          'text': '''The Rowlatt Act was based on the recommendations of the 'Sedition Committee'.''',
          'isCorrect': true,
        },
        {
          'text': '''The Rowlatt Act was based on the recommendations of the 'Hunter Committee'.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_19 = topicRef6.collection('questions').doc('question_19');
    await questionRef6_19.set({
      'questionId': '''19''',
      'order': 19,
      'statements': [
        {
          'text': '''In the Rowlatt Satyagraha, Gandhiji tried to use the Home Rule League.''',
          'isCorrect': true,
        },
        {
          'text': '''In the Rowlatt Satyagraha, Gandhiji tried to use the Muslim League.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_20 = topicRef6.collection('questions').doc('question_20');
    await questionRef6_20.set({
      'questionId': '''20''',
      'order': 20,
      'statements': [
        {
          'text': '''The Rowlatt Act aimed at imprisonment without trial and summary procedures for trial.''',
          'isCorrect': true,
        },
        {
          'text': '''The Rowlatt Act aimed at guaranteeing jury trial and full judicial procedure for all political prisoners.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_21 = topicRef6.collection('questions').doc('question_21');
    await questionRef6_21.set({
      'questionId': '''21''',
      'order': 21,
      'statements': [
        {
          'text': '''The introduction of dyarchy in the executive government of the provinces was a principal feature of the Government of India Act, 1919.''',
          'isCorrect': true,
        },
        {
          'text': '''The introduction of dyarchy in the executive government of the centre was a principal feature of the Government of India Act, 1919.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_22 = topicRef6.collection('questions').doc('question_22');
    await questionRef6_22.set({
      'questionId': '''22''',
      'order': 22,
      'statements': [
        {
          'text': '''Devolution of legislative authority by the centre to the provinces was a principal feature of the Government of India Act, 1919.''',
          'isCorrect': true,
        },
        {
          'text': '''Centralisation of legislative authority from the provinces to the centre was a principal feature of the Government of India Act, 1919.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_23 = topicRef6.collection('questions').doc('question_23');
    await questionRef6_23.set({
      'questionId': '''23''',
      'order': 23,
      'statements': [
        {
          'text': '''Mahatma Gandhi organised a satyagraha on behalf of the peasants of Kheda because the administration did not suspend the land revenue collection in spite of a drought.''',
          'isCorrect': true,
        },
        {
          'text': '''Mahatma Gandhi organised a satyagraha on behalf of the peasants of Champaran because the administration did not suspend the land revenue collection in spite of a drought.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_24 = topicRef6.collection('questions').doc('question_24');
    await questionRef6_24.set({
      'questionId': '''24''',
      'order': 24,
      'statements': [
        {
          'text': '''Acharya J.B. Kripalani was one of Mahatma Gandhi's colleagues in his Champaran investigation.''',
          'isCorrect': true,
        },
        {
          'text': '''Vallabhbhai Patel was one of Mahatma Gandhi's colleagues in his Champaran investigation.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_25 = topicRef6.collection('questions').doc('question_25');
    await questionRef6_25.set({
      'questionId': '''25''',
      'order': 25,
      'statements': [
        {
          'text': '''Mahatma Gandhi founded the Ahmedabad Textile Labour Association.''',
          'isCorrect': true,
        },
        {
          'text': '''Jawaharlal Nehru founded the Ahmedabad Textile Labour Association.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_26 = topicRef6.collection('questions').doc('question_26');
    await questionRef6_26.set({
      'questionId': '''26''',
      'order': 26,
      'statements': [
        {
          'text': '''The Rowlatt Act aroused popular indignation during the Indian Freedom Struggle because it authorized the government to imprison people without trial.''',
          'isCorrect': true,
        },
        {
          'text': '''The Rowlatt Act aroused popular indignation during the Indian Freedom Struggle because it imposed additional taxes on salt.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_27 = topicRef6.collection('questions').doc('question_27');
    await questionRef6_27.set({
      'questionId': '''27''',
      'order': 27,
      'statements': [
        {
          'text': '''J.B. Kripalani, a follower of Gandhi, was a teacher by profession.''',
          'isCorrect': true,
        },
        {
          'text': '''J.B. Kripalani, a follower of Gandhi, was a lawyer by profession.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_28 = topicRef6.collection('questions').doc('question_28');
    await questionRef6_28.set({
      'questionId': '''28''',
      'order': 28,
      'statements': [
        {
          'text': '''Lord Chelmsford was the Viceroy of India when the Rowlatt Act was passed.''',
          'isCorrect': true,
        },
        {
          'text': '''Lord Irwin was the Viceroy of India when the Rowlatt Act was passed.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_29 = topicRef6.collection('questions').doc('question_29');
    await questionRef6_29.set({
      'questionId': '''29''',
      'order': 29,
      'statements': [
        {
          'text': '''The Rowlatt Act aroused a wave of popular indignation that led to the massacre by the British at Jallianwala Bagh.''',
          'isCorrect': true,
        },
        {
          'text': '''The Government of India Act, 1919 aroused a wave of popular indignation that led to the massacre by the British at Jallianwala Bagh.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_30 = topicRef6.collection('questions').doc('question_30');
    await questionRef6_30.set({
      'questionId': '''30''',
      'order': 30,
      'statements': [
        {
          'text': '''Mahatma Gandhi first started his Satyagraha in India at Champaran.''',
          'isCorrect': true,
        },
        {
          'text': '''Mahatma Gandhi first started his Satyagraha in India at Kheda.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_31 = topicRef6.collection('questions').doc('question_31');
    await questionRef6_31.set({
      'questionId': '''31''',
      'order': 31,
      'statements': [
        {
          'text': '''In October 1920, M.N. Roy headed a group of Indians gathered at Tashkent to set up a Communist Party of India.''',
          'isCorrect': true,
        },
        {
          'text': '''In October 1920, S.A. Dange headed a group of Indians gathered at Tashkent to set up a Communist Party of India.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_32 = topicRef6.collection('questions').doc('question_32');
    await questionRef6_32.set({
      'questionId': '''32''',
      'order': 32,
      'statements': [
        {
          'text': '''Indra Narain Dwivedi was associated with the formation of the U.P. Kisan Sabha in February 1918.''',
          'isCorrect': true,
        },
        {
          'text': '''Indra Narain Dwivedi was associated with the formation of the All India Trade Union Congress in February 1918.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_33 = topicRef6.collection('questions').doc('question_33');
    await questionRef6_33.set({
      'questionId': '''33''',
      'order': 33,
      'statements': [
        {
          'text': '''Gauri Shankar Misra was associated with the formation of the U.P. Kisan Sabha in February 1918.''',
          'isCorrect': true,
        },
        {
          'text': '''Gauri Shankar Misra was associated with the formation of the Home Rule League in February 1918.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_34 = topicRef6.collection('questions').doc('question_34');
    await questionRef6_34.set({
      'questionId': '''34''',
      'order': 34,
      'statements': [
        {
          'text': '''Madan Mohan Malviya was associated with the formation of the U.P. Kisan Sabha in February 1918.''',
          'isCorrect': true,
        },
        {
          'text': '''Bal Gangadhar Tilak was associated with the formation of the U.P. Kisan Sabha in February 1918.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_35 = topicRef6.collection('questions').doc('question_35');
    await questionRef6_35.set({
      'questionId': '''35''',
      'order': 35,
      'statements': [
        {
          'text': '''Rajendra Prasad was actively associated with the Champaran movement.''',
          'isCorrect': true,
        },
        {
          'text': '''Rajendra Prasad was actively associated with the Bardoli Satyagraha.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_36 = topicRef6.collection('questions').doc('question_36');
    await questionRef6_36.set({
      'questionId': '''36''',
      'order': 36,
      'statements': [
        {
          'text': '''Vallabhbhai Patel was actively associated with the Kheda Satyagraha.''',
          'isCorrect': true,
        },
        {
          'text': '''Subhas Chandra Bose was actively associated with the Kheda Satyagraha.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_37 = topicRef6.collection('questions').doc('question_37');
    await questionRef6_37.set({
      'questionId': '''37''',
      'order': 37,
      'statements': [
        {
          'text': '''The Montagu-Chelmsford Report formed the basis of the Government of India Act, 1919.''',
          'isCorrect': true,
        },
        {
          'text': '''The Simon Commission Report formed the basis of the Government of India Act, 1919.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_38 = topicRef6.collection('questions').doc('question_38');
    await questionRef6_38.set({
      'questionId': '''38''',
      'order': 38,
      'statements': [
        {
          'text': '''Maulana Hasrat Mohani proposed that Swaraj should be defined as complete independence free from all foreign control.''',
          'isCorrect': true,
        },
        {
          'text': '''Mahatma Gandhi proposed that Swaraj should be defined as complete independence free from all foreign control.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_39 = topicRef6.collection('questions').doc('question_39');
    await questionRef6_39.set({
      'questionId': '''39''',
      'order': 39,
      'statements': [
        {
          'text': '''Rabindranath Tagore returned the Knighthood conferred on him by the British Government as a token of protest against the atrocities in Punjab in 1919.''',
          'isCorrect': true,
        },
        {
          'text': '''Rabindranath Tagore returned the Nobel Prize conferred on him as a token of protest against the atrocities in Punjab in 1919.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_40 = topicRef6.collection('questions').doc('question_40');
    await questionRef6_40.set({
      'questionId': '''40''',
      'order': 40,
      'statements': [
        {
          'text': '''The correct chronological order of the tenures of these Viceroys is: Lord Curzon, followed by Lord Hardinge, followed by Lord Chelmsford, followed by Lord Irwin.''',
          'isCorrect': true,
        },
        {
          'text': '''The correct chronological order of the tenures of these Viceroys is: Lord Curzon, followed by Lord Chelmsford, followed by Lord Hardinge, followed by Lord Irwin.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_41 = topicRef6.collection('questions').doc('question_41');
    await questionRef6_41.set({
      'questionId': '''41''',
      'order': 41,
      'statements': [
        {
          'text': '''The correct chronological order of these events is: the Minto-Morley Reforms, followed by the Montagu-Chelmsford Reforms, followed by the Chauri Chaura Outrage, followed by the Dandi March.''',
          'isCorrect': true,
        },
        {
          'text': '''The correct chronological order of these events is: the Montagu-Chelmsford Reforms, followed by the Minto-Morley Reforms, followed by the Chauri Chaura Outrage, followed by the Dandi March.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_42 = topicRef6.collection('questions').doc('question_42');
    await questionRef6_42.set({
      'questionId': '''42''',
      'order': 42,
      'statements': [
        {
          'text': '''The Rowlatt Act was passed by the government despite being opposed by all Indian members of the Legislative Council.''',
          'isCorrect': true,
        },
        {
          'text': '''The Rowlatt Act was passed by the government only after it gained the support of a majority of Indian members of the Legislative Council.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_43 = topicRef6.collection('questions').doc('question_43');
    await questionRef6_43.set({
      'questionId': '''43''',
      'order': 43,
      'statements': [
        {
          'text': '''When Congress leaders condemned the Montagu-Chelmsford Report, many moderates left the party to form the Indian Liberal Federation.''',
          'isCorrect': true,
        },
        {
          'text': '''When Congress leaders condemned the Montagu-Chelmsford Report, many extremists left the party to form the Swaraj Party.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_44 = topicRef6.collection('questions').doc('question_44');
    await questionRef6_44.set({
      'questionId': '''44''',
      'order': 44,
      'statements': [
        {
          'text': '''MacDonald is associated with the Communal Award.''',
          'isCorrect': true,
        },
        {
          'text': '''MacDonald is associated with the August Offer.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_45 = topicRef6.collection('questions').doc('question_45');
    await questionRef6_45.set({
      'questionId': '''45''',
      'order': 45,
      'statements': [
        {
          'text': '''Linlithgow is associated with the August Offer.''',
          'isCorrect': true,
        },
        {
          'text': '''Linlithgow is associated with the Communal Award.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_46 = topicRef6.collection('questions').doc('question_46');
    await questionRef6_46.set({
      'questionId': '''46''',
      'order': 46,
      'statements': [
        {
          'text': '''Dalhousie is associated with the Doctrine of Lapse.''',
          'isCorrect': true,
        },
        {
          'text': '''Canning is associated with the Doctrine of Lapse.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_47 = topicRef6.collection('questions').doc('question_47');
    await questionRef6_47.set({
      'questionId': '''47''',
      'order': 47,
      'statements': [
        {
          'text': '''Chelmsford is associated with the introduction of Dyarchy.''',
          'isCorrect': true,
        },
        {
          'text': '''Curzon is associated with the introduction of Dyarchy.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_48 = topicRef6.collection('questions').doc('question_48');
    await questionRef6_48.set({
      'questionId': '''48''',
      'order': 48,
      'statements': [
        {
          'text': '''The Hunter Commission was appointed after the Jallianwala Bagh massacre.''',
          'isCorrect': true,
        },
        {
          'text': '''The Simon Commission was appointed after the Jallianwala Bagh massacre.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_49 = topicRef6.collection('questions').doc('question_49');
    await questionRef6_49.set({
      'questionId': '''49''',
      'order': 49,
      'statements': [
        {
          'text': '''Hasrat Mohani proposed adopting Complete Independence as the goal of the Congress at the Ahmedabad session of 1920.''',
          'isCorrect': true,
        },
        {
          'text': '''Hasrat Mohani proposed adopting Complete Independence as the goal of the Congress at the Nagpur session of 1920.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_50 = topicRef6.collection('questions').doc('question_50');
    await questionRef6_50.set({
      'questionId': '''50''',
      'order': 50,
      'statements': [
        {
          'text': '''After returning from South Africa, Gandhiji launched his first successful Satyagraha in Champaran.''',
          'isCorrect': true,
        },
        {
          'text': '''After returning from South Africa, Gandhiji launched his first successful Satyagraha in Kheda.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_51 = topicRef6.collection('questions').doc('question_51');
    await questionRef6_51.set({
      'questionId': '''51''',
      'order': 51,
      'statements': [
        {
          'text': '''The first venture of Gandhi in all-India politics was the Rowlatt Satyagraha.''',
          'isCorrect': true,
        },
        {
          'text': '''The first venture of Gandhi in all-India politics was the Non-Cooperation Movement.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_52 = topicRef6.collection('questions').doc('question_52');
    await questionRef6_52.set({
      'questionId': '''52''',
      'order': 52,
      'statements': [
        {
          'text': '''The Khilafat movement brought urban Muslims into the fold of the National Movement.''',
          'isCorrect': true,
        },
        {
          'text': '''The Khilafat movement kept urban Muslims separate from India's National Movement.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_53 = topicRef6.collection('questions').doc('question_53');
    await questionRef6_53.set({
      'questionId': '''53''',
      'order': 53,
      'statements': [
        {
          'text': '''There was a predominant element of anti-imperialism in both the National and Khilafat Movements.''',
          'isCorrect': true,
        },
        {
          'text': '''There was a predominant element of religious orthodoxy, rather than anti-imperialism, in both the National and Khilafat Movements.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_54 = topicRef6.collection('questions').doc('question_54');
    await questionRef6_54.set({
      'questionId': '''54''',
      'order': 54,
      'statements': [
        {
          'text': '''Gandhi stopped the Non-Cooperation Movement in 1922.''',
          'isCorrect': true,
        },
        {
          'text': '''Gandhi stopped the Non-Cooperation Movement in 1920.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_55 = topicRef6.collection('questions').doc('question_55');
    await questionRef6_55.set({
      'questionId': '''55''',
      'order': 55,
      'statements': [
        {
          'text': '''Violence at Chauri Chaura led Gandhi to stop the Non-Cooperation Movement.''',
          'isCorrect': true,
        },
        {
          'text': '''Violence at Jallianwala Bagh led Gandhi to stop the Non-Cooperation Movement.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_56 = topicRef6.collection('questions').doc('question_56');
    await questionRef6_56.set({
      'questionId': '''56''',
      'order': 56,
      'statements': [
        {
          'text': '''The massacre of Jallianwala Bagh was characterised by Montague as 'Preventive Murder'.''',
          'isCorrect': true,
        },
        {
          'text': '''The massacre of Jallianwala Bagh was characterised by Montague as a 'Regrettable Accident'.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_57 = topicRef6.collection('questions').doc('question_57');
    await questionRef6_57.set({
      'questionId': '''57''',
      'order': 57,
      'statements': [
        {
          'text': '''The Non-Cooperation Movement led to the Congress becoming a mass movement for the first time.''',
          'isCorrect': true,
        },
        {
          'text': '''The Non-Cooperation Movement led to the Congress losing its mass base for the first time.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_58 = topicRef6.collection('questions').doc('question_58');
    await questionRef6_58.set({
      'questionId': '''58''',
      'order': 58,
      'statements': [
        {
          'text': '''The Non-Cooperation Movement led to the removal of the fear of British 'might' from the minds of the people.''',
          'isCorrect': true,
        },
        {
          'text': '''The Non-Cooperation Movement led to an increase in the fear of British 'might' in the minds of the people.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_59 = topicRef6.collection('questions').doc('question_59');
    await questionRef6_59.set({
      'questionId': '''59''',
      'order': 59,
      'statements': [
        {
          'text': '''The Sarabandi (no-tax) campaign of 1922 was led by Vallabhbhai Patel.''',
          'isCorrect': true,
        },
        {
          'text': '''The Sarabandi (no-tax) campaign of 1922 was led by Mahatma Gandhi.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_60 = topicRef6.collection('questions').doc('question_60');
    await questionRef6_60.set({
      'questionId': '''60''',
      'order': 60,
      'statements': [
        {
          'text': '''The Anarchical and Revolutionary Crime Act (1919) was popularly known as the Rowlatt Act.''',
          'isCorrect': true,
        },
        {
          'text': '''The Anarchical and Revolutionary Crime Act (1919) was popularly known as the Ilbert Bill.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_61 = topicRef6.collection('questions').doc('question_61');
    await questionRef6_61.set({
      'questionId': '''61''',
      'order': 61,
      'statements': [
        {
          'text': '''The correct chronological sequence of these events is: the Partition of Bengal, followed by the Lucknow Pact, followed by the Rowlatt Act, followed by the introduction of Dyarchy.''',
          'isCorrect': true,
        },
        {
          'text': '''The correct chronological sequence of these events is: the Lucknow Pact, followed by the Partition of Bengal, followed by the Rowlatt Act, followed by the introduction of Dyarchy.''',
          'isCorrect': false,
        },
      ],
    });

    final topicRef7 = sectionRef.collection('topics').doc('''civil_disobedience_movement_and_other_events_1926_1932''');
    await topicRef7.set({
      'name': '''Civil Disobedience Movement and Other Events (1926-1932)''',
      'order': 7,
    }, SetOptions(merge: true));

    final questionRef7_1 = topicRef7.collection('questions').doc('question_1');
    await questionRef7_1.set({
      'questionId': '''1''',
      'order': 1,
      'statements': [
        {
          'text': '''Subsequent to the Poona Pact, Mahatma Gandhi decided to include the upliftment of 'Harijans' in his political and social programme.''',
          'isCorrect': true,
        },
        {
          'text': '''Subsequent to the Lahore Session, Mahatma Gandhi decided to include the upliftment of 'Harijans' in his political and social programme.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef7_2 = topicRef7.collection('questions').doc('question_2');
    await questionRef7_2.set({
      'questionId': '''2''',
      'order': 2,
      'statements': [
        {
          'text': '''Mahatma Gandhi's statement 'Sedition has become my religion' was given at the time of publicly violating the Salt Law at Dandi.''',
          'isCorrect': true,
        },
        {
          'text': '''Mahatma Gandhi's statement 'Sedition has become my religion' was given at the time of the Chauri Chaura incident.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef7_3 = topicRef7.collection('questions').doc('question_3');
    await questionRef7_3.set({
      'questionId': '''3''',
      'order': 3,
      'statements': [
        {
          'text': '''Mahatma Gandhi was instrumental in the abolition of the system of 'indentured labour'.''',
          'isCorrect': true,
        },
        {
          'text': '''Jawaharlal Nehru was instrumental in the abolition of the system of 'indentured labour'.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef7_4 = topicRef7.collection('questions').doc('question_4');
    await questionRef7_4.set({
      'questionId': '''4''',
      'order': 4,
      'statements': [
        {
          'text': '''Consequent upon the breaking of the Salt Law by Indian people, the Indian National Congress was declared illegal by the colonial rulers.''',
          'isCorrect': true,
        },
        {
          'text': '''Consequent upon the breaking of the Salt Law by Indian people, the Muslim League was declared illegal by the colonial rulers.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef7_5 = topicRef7.collection('questions').doc('question_5');
    await questionRef7_5.set({
      'questionId': '''5''',
      'order': 5,
      'statements': [
        {
          'text': '''The Trade Disputes Act of 1929 provided for a system of tribunals and a ban on strikes.''',
          'isCorrect': true,
        },
        {
          'text': '''The Trade Disputes Act of 1929 abolished the system of tribunals and granted an unrestricted right to strike.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef7_6 = topicRef7.collection('questions').doc('question_6');
    await questionRef7_6.set({
      'questionId': '''6''',
      'order': 6,
      'statements': [
        {
          'text': '''The object of the Butler Committee of 1927 was to improve the relationship between the Government of India and the Indian States.''',
          'isCorrect': true,
        },
        {
          'text': '''The object of the Butler Committee of 1927 was to examine the growth of education in British India.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef7_7 = topicRef7.collection('questions').doc('question_7');
    await questionRef7_7.set({
      'questionId': '''7''',
      'order': 7,
      'statements': [
        {
          'text': '''C. Rajagopalachari organized a march on the Tanjore coast to break the Salt Law in April 1930.''',
          'isCorrect': true,
        },
        {
          'text': '''Sardar Vallabhbhai Patel organized a march on the Tanjore coast to break the Salt Law in April 1930.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef7_8 = topicRef7.collection('questions').doc('question_8');
    await questionRef7_8.set({
      'questionId': '''8''',
      'order': 8,
      'statements': [
        {
          'text': '''The 1929 Session of the Indian National Congress is significant in the history of the Freedom Movement because the attainment of Poorna Swaraj was adopted as the goal of the Congress.''',
          'isCorrect': true,
        },
        {
          'text': '''The 1927 Session of the Indian National Congress is significant in the history of the Freedom Movement because the attainment of Poorna Swaraj was adopted as the goal of the Congress.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef7_9 = topicRef7.collection('questions').doc('question_9');
    await questionRef7_9.set({
      'questionId': '''9''',
      'order': 9,
      'statements': [
        {
          'text': '''The people of India agitated against the arrival of the Simon Commission because there was no Indian member in the Commission.''',
          'isCorrect': true,
        },
        {
          'text': '''The people of India agitated against the arrival of the Simon Commission because it proposed the partition of Bengal.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef7_10 = topicRef7.collection('questions').doc('question_10');
    await questionRef7_10.set({
      'questionId': '''10''',
      'order': 10,
      'statements': [
        {
          'text': '''The Lahore Session of the Indian National Congress (1929) passed a resolution demanding complete independence.''',
          'isCorrect': true,
        },
        {
          'text': '''The Lahore Session of the Indian National Congress (1927) passed a resolution demanding complete independence.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef7_11 = topicRef7.collection('questions').doc('question_11');
    await questionRef7_11.set({
      'questionId': '''11''',
      'order': 11,
      'statements': [
        {
          'text': '''Mahatma Gandhi undertook a fast unto death in 1932 mainly because Ramsay MacDonald announced the Communal Award.''',
          'isCorrect': true,
        },
        {
          'text': '''Mahatma Gandhi undertook a fast unto death in 1932 mainly because the British Government refused to release political prisoners.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef7_12 = topicRef7.collection('questions').doc('question_12');
    await questionRef7_12.set({
      'questionId': '''12''',
      'order': 12,
      'statements': [
        {
          'text': '''The Nehru Report recommended joint electorates for the reservation of seats for minorities.''',
          'isCorrect': true,
        },
        {
          'text': '''The Nehru Report recommended separate electorates for the reservation of seats for minorities.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef7_13 = topicRef7.collection('questions').doc('question_13');
    await questionRef7_13.set({
      'questionId': '''13''',
      'order': 13,
      'statements': [
        {
          'text': '''The Nehru Report recommended the provision of fundamental rights for the people of India in the constitution.''',
          'isCorrect': true,
        },
        {
          'text': '''The Nehru Report rejected the idea of including fundamental rights for the people of India in the constitution.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef7_14 = topicRef7.collection('questions').doc('question_14');
    await questionRef7_14.set({
      'questionId': '''14''',
      'order': 14,
      'statements': [
        {
          'text': '''Pandit Jawaharlal Nehru drafted the Resolution on Fundamental Rights and Economic Programme for the Karachi Session of the Indian National Congress in 1931.''',
          'isCorrect': true,
        },
        {
          'text': '''Sardar Vallabhbhai Patel drafted the Resolution on Fundamental Rights and Economic Programme for the Karachi Session of the Indian National Congress in 1931.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef7_15 = topicRef7.collection('questions').doc('question_15');
    await questionRef7_15.set({
      'questionId': '''15''',
      'order': 15,
      'statements': [
        {
          'text': '''The Simon Commission recommended the replacement of diarchy with responsible government in the provinces.''',
          'isCorrect': true,
        },
        {
          'text': '''The Simon Commission recommended the retention of diarchy in the provinces.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef7_16 = topicRef7.collection('questions').doc('question_16');
    await questionRef7_16.set({
      'questionId': '''16''',
      'order': 16,
      'statements': [
        {
          'text': '''The Civil Disobedience Movement began with the Dandi March.''',
          'isCorrect': true,
        },
        {
          'text': '''The Civil Disobedience Movement began with the Chauri Chaura incident.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef7_17 = topicRef7.collection('questions').doc('question_17');
    await questionRef7_17.set({
      'questionId': '''17''',
      'order': 17,
      'statements': [
        {
          'text': '''The Lahore Session of the Indian National Congress in 1929, where a resolution was adopted to gain complete independence from the British, was held under the presidency of Jawaharlal Nehru.''',
          'isCorrect': true,
        },
        {
          'text': '''The Lahore Session of the Indian National Congress in 1929, where a resolution was adopted to gain complete independence from the British, was held under the presidency of Mahatma Gandhi.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef7_18 = topicRef7.collection('questions').doc('question_18');
    await questionRef7_18.set({
      'questionId': '''18''',
      'order': 18,
      'statements': [
        {
          'text': '''In the First Round Table Conference, Dr. Ambedkar demanded separate electorates for the depressed classes.''',
          'isCorrect': true,
        },
        {
          'text': '''In the First Round Table Conference, Motilal Nehru demanded separate electorates for the depressed classes.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef7_19 = topicRef7.collection('questions').doc('question_19');
    await questionRef7_19.set({
      'questionId': '''19''',
      'order': 19,
      'statements': [
        {
          'text': '''The Indian National Congress did not take part in the Third Round Table Conference.''',
          'isCorrect': true,
        },
        {
          'text': '''The Indian National Congress took an active part in the Third Round Table Conference.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef7_20 = topicRef7.collection('questions').doc('question_20');
    await questionRef7_20.set({
      'questionId': '''20''',
      'order': 20,
      'statements': [
        {
          'text': '''The Working Committee was authorised to launch a programme of Civil Disobedience at the Lahore Session of the Congress.''',
          'isCorrect': true,
        },
        {
          'text': '''The Working Committee was authorised to launch a programme of Civil Disobedience at the Karachi Session of the Congress.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef7_21 = topicRef7.collection('questions').doc('question_21');
    await questionRef7_21.set({
      'questionId': '''21''',
      'order': 21,
      'statements': [
        {
          'text': '''The Rowlatt Act aroused a wave of popular indignation and led to the Jallianwala Bagh massacre.''',
          'isCorrect': true,
        },
        {
          'text': '''The Government of India Act aroused a wave of popular indignation and led to the Jallianwala Bagh massacre.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef7_22 = topicRef7.collection('questions').doc('question_22');
    await questionRef7_22.set({
      'questionId': '''22''',
      'order': 22,
      'statements': [
        {
          'text': '''Subhash Chandra Bose formed the Forward Bloc.''',
          'isCorrect': true,
        },
        {
          'text': '''Jawaharlal Nehru formed the Forward Bloc.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef7_23 = topicRef7.collection('questions').doc('question_23');
    await questionRef7_23.set({
      'questionId': '''23''',
      'order': 23,
      'statements': [
        {
          'text': '''Bhagat Singh was one of the founders of the Hindustan Republican Socialist Association.''',
          'isCorrect': true,
        },
        {
          'text': '''Mahatma Gandhi was one of the founders of the Hindustan Republican Socialist Association.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef7_24 = topicRef7.collection('questions').doc('question_24');
    await questionRef7_24.set({
      'questionId': '''24''',
      'order': 24,
      'statements': [
        {
          'text': '''Sardar Vallabhbhai Patel was the leader of the Bardoli Satyagraha (1928).''',
          'isCorrect': true,
        },
        {
          'text': '''Mahatma Gandhi was the leader of the Bardoli Satyagraha (1928).''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef7_25 = topicRef7.collection('questions').doc('question_25');
    await questionRef7_25.set({
      'questionId': '''25''',
      'order': 25,
      'statements': [
        {
          'text': '''The purpose of the Whitley Commission during the colonial period in India was to report on the existing conditions of labour and to make recommendations.''',
          'isCorrect': true,
        },
        {
          'text': '''The purpose of the Whitley Commission during the colonial period in India was to examine the relationship between the Indian States and the Paramount Power.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef7_26 = topicRef7.collection('questions').doc('question_26');
    await questionRef7_26.set({
      'questionId': '''26''',
      'order': 26,
      'statements': [
        {
          'text': '''The Khudai Khidmatgars, also known as the Red Shirts, called for Pathan regional nationalist unity and a struggle against colonialism.''',
          'isCorrect': true,
        },
        {
          'text': '''The Khudai Khidmatgars, also known as the Red Shirts, called for the partition of Punjab along communal lines.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef7_27 = topicRef7.collection('questions').doc('question_27');
    await questionRef7_27.set({
      'questionId': '''27''',
      'order': 27,
      'statements': [
        {
          'text': '''The effect of labour participation in the Indian nationalist upsurge of the early 1930s was weak.''',
          'isCorrect': true,
        },
        {
          'text': '''The effect of labour participation in the Indian nationalist upsurge of the early 1930s was very strong and decisive.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef7_28 = topicRef7.collection('questions').doc('question_28');
    await questionRef7_28.set({
      'questionId': '''28''',
      'order': 28,
      'statements': [
        {
          'text': '''Labour leaders considered the ideology of the Indian National Congress as bourgeois and reactionary.''',
          'isCorrect': true,
        },
        {
          'text': '''Labour leaders considered the ideology of the Indian National Congress as revolutionary and progressive.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef7_29 = topicRef7.collection('questions').doc('question_29');
    await questionRef7_29.set({
      'questionId': '''29''',
      'order': 29,
      'statements': [
        {
          'text': '''The Butler Committee dealt with the relationship between the Indian States and the Paramount Power.''',
          'isCorrect': true,
        },
        {
          'text': '''The Butler Committee dealt with the reform of police administration in British India.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef7_30 = topicRef7.collection('questions').doc('question_30');
    await questionRef7_30.set({
      'questionId': '''30''',
      'order': 30,
      'statements': [
        {
          'text': '''The Hartog Committee Report dealt with the growth of education in British India and the potentialities of its further progress.''',
          'isCorrect': true,
        },
        {
          'text': '''The Hartog Committee Report dealt with the reorganisation of the Indian Civil Service.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef7_31 = topicRef7.collection('questions').doc('question_31');
    await questionRef7_31.set({
      'questionId': '''31''',
      'order': 31,
      'statements': [
        {
          'text': '''The Hunter Inquiry Committee Report was on the Jallianwala Bagh Massacre.''',
          'isCorrect': true,
        },
        {
          'text': '''The Hunter Inquiry Committee Report was on the working of the Trade Disputes Act.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef7_32 = topicRef7.collection('questions').doc('question_32');
    await questionRef7_32.set({
      'questionId': '''32''',
      'order': 32,
      'statements': [
        {
          'text': '''The Muddiman Committee Report examined the working of Dyarchy as laid down in the Montagu-Chelmsford Reforms.''',
          'isCorrect': true,
        },
        {
          'text': '''The Muddiman Committee Report examined the working of the Communal Award.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef7_33 = topicRef7.collection('questions').doc('question_33');
    await questionRef7_33.set({
      'questionId': '''33''',
      'order': 33,
      'statements': [
        {
          'text': '''The Morley-Minto Reforms resulted in communal electorates.''',
          'isCorrect': true,
        },
        {
          'text': '''The Morley-Minto Reforms resulted in the abolition of communal electorates.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef7_34 = topicRef7.collection('questions').doc('question_34');
    await questionRef7_34.set({
      'questionId': '''34''',
      'order': 34,
      'statements': [
        {
          'text': '''The Simon Commission resulted in countrywide agitation.''',
          'isCorrect': true,
        },
        {
          'text': '''The Simon Commission was welcomed by all political parties without any agitation.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef7_35 = topicRef7.collection('questions').doc('question_35');
    await questionRef7_35.set({
      'questionId': '''35''',
      'order': 35,
      'statements': [
        {
          'text': '''The Chauri Chaura incident resulted in the withdrawal of a movement.''',
          'isCorrect': true,
        },
        {
          'text': '''The Chauri Chaura incident resulted in the intensification of the Non-Cooperation Movement.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef7_36 = topicRef7.collection('questions').doc('question_36');
    await questionRef7_36.set({
      'questionId': '''36''',
      'order': 36,
      'statements': [
        {
          'text': '''The Dandi March resulted in the illegal manufacture of salt.''',
          'isCorrect': true,
        },
        {
          'text': '''The Dandi March resulted in the boycott of foreign cloth.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef7_37 = topicRef7.collection('questions').doc('question_37');
    await questionRef7_37.set({
      'questionId': '''37''',
      'order': 37,
      'statements': [
        {
          'text': '''The Poona Pact, signed between the British Government and Mahatma Gandhi in 1932, provided for joint electorates with reservation for Harijans.''',
          'isCorrect': true,
        },
        {
          'text': '''The Poona Pact, signed between the British Government and Mahatma Gandhi in 1932, provided for separate electorates for Harijans.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef7_38 = topicRef7.collection('questions').doc('question_38');
    await questionRef7_38.set({
      'questionId': '''38''',
      'order': 38,
      'statements': [
        {
          'text': '''The Surat Split occurred in 1907.''',
          'isCorrect': true,
        },
        {
          'text': '''The Surat Split occurred in 1916.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef7_39 = topicRef7.collection('questions').doc('question_39');
    await questionRef7_39.set({
      'questionId': '''39''',
      'order': 39,
      'statements': [
        {
          'text': '''The Communal Award was announced in 1932.''',
          'isCorrect': true,
        },
        {
          'text': '''The Communal Award was announced in 1930.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef7_40 = topicRef7.collection('questions').doc('question_40');
    await questionRef7_40.set({
      'questionId': '''40''',
      'order': 40,
      'statements': [
        {
          'text': '''The All Party Convention was held in 1928.''',
          'isCorrect': true,
        },
        {
          'text': '''The All Party Convention was held in 1930.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef7_41 = topicRef7.collection('questions').doc('question_41');
    await questionRef7_41.set({
      'questionId': '''41''',
      'order': 41,
      'statements': [
        {
          'text': '''The Poorna Swaraj Resolution was passed in 1929.''',
          'isCorrect': true,
        },
        {
          'text': '''The Poorna Swaraj Resolution was passed in 1931.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef7_42 = topicRef7.collection('questions').doc('question_42');
    await questionRef7_42.set({
      'questionId': '''42''',
      'order': 42,
      'statements': [
        {
          'text': '''The meetings of Indian and British political leaders during 1930-32 in London, referred to as the First, Second and Third Round Table Conferences, were actually instances of one conference held in three sessions rather than three separate conferences.''',
          'isCorrect': true,
        },
        {
          'text': '''The meetings of Indian and British political leaders during 1930-32 in London, referred to as the First, Second and Third Round Table Conferences, were three entirely separate and unrelated conferences.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef7_43 = topicRef7.collection('questions').doc('question_43');
    await questionRef7_43.set({
      'questionId': '''43''',
      'order': 43,
      'statements': [
        {
          'text': '''The first session of the National Conference was held at Calcutta in 1883.''',
          'isCorrect': true,
        },
        {
          'text': '''The first session of the National Conference was held at Calcutta in 1885.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef7_44 = topicRef7.collection('questions').doc('question_44');
    await questionRef7_44.set({
      'questionId': '''44''',
      'order': 44,
      'statements': [
        {
          'text': '''The Muslim League was founded at Dacca in 1906.''',
          'isCorrect': true,
        },
        {
          'text': '''The Muslim League was founded at Lucknow in 1906.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef7_45 = topicRef7.collection('questions').doc('question_45');
    await questionRef7_45.set({
      'questionId': '''45''',
      'order': 45,
      'statements': [
        {
          'text': '''The All India States Peoples Conference was formed in 1927.''',
          'isCorrect': true,
        },
        {
          'text': '''The All India States Peoples Conference was formed in 1935.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef7_46 = topicRef7.collection('questions').doc('question_46');
    await questionRef7_46.set({
      'questionId': '''46''',
      'order': 46,
      'statements': [
        {
          'text': '''The Communal Award was announced from Whitehall in 1932.''',
          'isCorrect': true,
        },
        {
          'text': '''The Communal Award was announced from Shimla in 1932.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef7_47 = topicRef7.collection('questions').doc('question_47');
    await questionRef7_47.set({
      'questionId': '''47''',
      'order': 47,
      'statements': [
        {
          'text': '''The radical wing of the Congress Party, with Jawaharlal Nehru as one of its main leaders, founded the 'Independence for India League' in opposition to the Nehru Report.''',
          'isCorrect': true,
        },
        {
          'text': '''The radical wing of the Congress Party, with Sardar Vallabhbhai Patel as one of its main leaders, founded the 'Independence for India League' in opposition to the Nehru Report.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef7_48 = topicRef7.collection('questions').doc('question_48');
    await questionRef7_48.set({
      'questionId': '''48''',
      'order': 48,
      'statements': [
        {
          'text': '''In 1930, Mahatma Gandhi started the Civil Disobedience Movement from Sabarmati.''',
          'isCorrect': true,
        },
        {
          'text': '''In 1930, Mahatma Gandhi started the Civil Disobedience Movement from Champaran.''',
          'isCorrect': false,
        },
      ],
    });

    final topicRef8 = sectionRef.collection('topics').doc('''events_from_1933_to_1939''');
    await topicRef8.set({
      'name': '''Events from 1933 to 1939''',
      'order': 8,
    }, SetOptions(merge: true));

    final questionRef8_1 = topicRef8.collection('questions').doc('question_1');
    await questionRef8_1.set({
      'questionId': '''1''',
      'order': 1,
      'statements': [
        {
          'text': '''The Government of India Act, 1935 provided for the establishment of an All-India Federation based on the union of British Indian Provinces and Princely States.''',
          'isCorrect': true,
        },
        {
          'text': '''The Government of India Act, 1935 provided for the establishment of an All-India Federation based solely on the union of British Indian Provinces, excluding the Princely States.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_2 = topicRef8.collection('questions').doc('question_2');
    await questionRef8_2.set({
      'questionId': '''2''',
      'order': 2,
      'statements': [
        {
          'text': '''The Government of India Act of 1935 gave women reserved seats in the legislature.''',
          'isCorrect': true,
        },
        {
          'text': '''The Government of India Act of 1935 did not give women reserved seats in the legislature.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_3 = topicRef8.collection('questions').doc('question_3');
    await questionRef8_3.set({
      'questionId': '''3''',
      'order': 3,
      'statements': [
        {
          'text': '''In the Federation established by the Government of India Act of 1935, the residuary powers were given to the Governor General.''',
          'isCorrect': true,
        },
        {
          'text': '''In the Federation established by the Government of India Act of 1935, the residuary powers were given to the Provincial Legislatures.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_4 = topicRef8.collection('questions').doc('question_4');
    await questionRef8_4.set({
      'questionId': '''4''',
      'order': 4,
      'statements': [
        {
          'text': '''The distribution of powers between the Centre and the States in the Indian Constitution is based on the scheme provided in the Government of India Act, 1935.''',
          'isCorrect': true,
        },
        {
          'text': '''The distribution of powers between the Centre and the States in the Indian Constitution is based on the scheme provided in the Montagu-Chelmsford Reforms of 1919.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_5 = topicRef8.collection('questions').doc('question_5');
    await questionRef8_5.set({
      'questionId': '''5''',
      'order': 5,
      'statements': [
        {
          'text': '''The 'Bombay Manifesto' signed in 1936 openly opposed the preaching of socialist ideals.''',
          'isCorrect': true,
        },
        {
          'text': '''The 'Bombay Manifesto' signed in 1936 openly supported the preaching of socialist ideals.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_6 = topicRef8.collection('questions').doc('question_6');
    await questionRef8_6.set({
      'questionId': '''6''',
      'order': 6,
      'statements': [
        {
          'text': '''The discussions in the Third Round Table Conference eventually led to the passing of the Government of India Act of 1935.''',
          'isCorrect': true,
        },
        {
          'text': '''The discussions in the First Round Table Conference eventually led to the passing of the Government of India Act of 1935.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_7 = topicRef8.collection('questions').doc('question_7');
    await questionRef8_7.set({
      'questionId': '''7''',
      'order': 7,
      'statements': [
        {
          'text': '''The Government of India Act of 1935 provided for the establishment of an All-India Federation based on a union of the provinces of British India and the Princely States.''',
          'isCorrect': true,
        },
        {
          'text': '''The Government of India Act of 1935 did not provide for the establishment of an All-India Federation.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_8 = topicRef8.collection('questions').doc('question_8');
    await questionRef8_8.set({
      'questionId': '''8''',
      'order': 8,
      'statements': [
        {
          'text': '''The Congress ministries in all the provinces resigned in the year 1939.''',
          'isCorrect': true,
        },
        {
          'text': '''The Congress ministries in all the provinces resigned in the year 1942.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_9 = topicRef8.collection('questions').doc('question_9');
    await questionRef8_9.set({
      'questionId': '''9''',
      'order': 9,
      'statements': [
        {
          'text': '''The Congress did not accept the decision of the Viceroy to declare war against Germany in the context of the Second World War.''',
          'isCorrect': true,
        },
        {
          'text': '''The Congress readily accepted the decision of the Viceroy to declare war against Germany in the context of the Second World War.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_10 = topicRef8.collection('questions').doc('question_10');
    await questionRef8_10.set({
      'questionId': '''10''',
      'order': 10,
      'statements': [
        {
          'text': '''The Government of India Act, 1935 provided for provincial autonomy.''',
          'isCorrect': true,
        },
        {
          'text': '''The Government of India Act, 1935 abolished provincial autonomy.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_11 = topicRef8.collection('questions').doc('question_11');
    await questionRef8_11.set({
      'questionId': '''11''',
      'order': 11,
      'statements': [
        {
          'text': '''The Government of India Act, 1935 provided for the establishment of a Federal Court.''',
          'isCorrect': true,
        },
        {
          'text': '''The Government of India Act, 1935 did not provide for the establishment of a Federal Court.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_12 = topicRef8.collection('questions').doc('question_12');
    await questionRef8_12.set({
      'questionId': '''12''',
      'order': 12,
      'statements': [
        {
          'text': '''The Government of India Act, 1935 provided for an All India Federation at the centre.''',
          'isCorrect': true,
        },
        {
          'text': '''The Government of India Act, 1935 provided for a unitary government at the centre.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_13 = topicRef8.collection('questions').doc('question_13');
    await questionRef8_13.set({
      'questionId': '''13''',
      'order': 13,
      'statements': [
        {
          'text': '''Subhash Chandra Bose founded the Forward Bloc in 1939 after he broke away from the Congress.''',
          'isCorrect': true,
        },
        {
          'text': '''Jawaharlal Nehru founded the Forward Bloc in 1939 after he broke away from the Congress.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_14 = topicRef8.collection('questions').doc('question_14');
    await questionRef8_14.set({
      'questionId': '''14''',
      'order': 14,
      'statements': [
        {
          'text': '''Under the Act of 1935, a Congress ministry was not formed in Punjab.''',
          'isCorrect': true,
        },
        {
          'text': '''Under the Act of 1935, a Congress ministry was formed in Punjab.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_15 = topicRef8.collection('questions').doc('question_15');
    await questionRef8_15.set({
      'questionId': '''15''',
      'order': 15,
      'statements': [
        {
          'text': '''The Government of India Act, 1935 abolished diarchy in the Governors' provinces.''',
          'isCorrect': true,
        },
        {
          'text': '''The Government of India Act, 1935 introduced diarchy in the Governors' provinces.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_16 = topicRef8.collection('questions').doc('question_16');
    await questionRef8_16.set({
      'questionId': '''16''',
      'order': 16,
      'statements': [
        {
          'text': '''The Government of India Act, 1935 gave the Governors the power to veto legislative action and to legislate on their own.''',
          'isCorrect': true,
        },
        {
          'text': '''The Government of India Act, 1935 stripped the Governors of all power to veto legislative action.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_17 = topicRef8.collection('questions').doc('question_17');
    await questionRef8_17.set({
      'questionId': '''17''',
      'order': 17,
      'statements': [
        {
          'text': '''The real intention of the British in including the princely states in the Federal Union proposed by the India Act of 1935 was to use the princes to counterbalance the anti-imperialist doctrines of the nationalist leaders.''',
          'isCorrect': true,
        },
        {
          'text': '''The real intention of the British in including the princely states in the Federal Union proposed by the India Act of 1935 was to grant the princely states complete independence from British control.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_18 = topicRef8.collection('questions').doc('question_18');
    await questionRef8_18.set({
      'questionId': '''18''',
      'order': 18,
      'statements': [
        {
          'text': '''Jawaharlal Nehru was the President of the All-India States' Peoples' Conference in 1939.''',
          'isCorrect': true,
        },
        {
          'text': '''Subhash Chandra Bose was the President of the All-India States' Peoples' Conference in 1939.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_19 = topicRef8.collection('questions').doc('question_19');
    await questionRef8_19.set({
      'questionId': '''19''',
      'order': 19,
      'statements': [
        {
          'text': '''All India federation was a feature of the Government of India Act of 1935.''',
          'isCorrect': true,
        },
        {
          'text': '''All India federation was a feature of the Government of India Act of 1919.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_20 = topicRef8.collection('questions').doc('question_20');
    await questionRef8_20.set({
      'questionId': '''20''',
      'order': 20,
      'statements': [
        {
          'text': '''Dyarchy at the centre was a feature of the Government of India Act of 1935.''',
          'isCorrect': true,
        },
        {
          'text': '''Dyarchy at the centre was a feature of the Government of India Act of 1919.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_21 = topicRef8.collection('questions').doc('question_21');
    await questionRef8_21.set({
      'questionId': '''21''',
      'order': 21,
      'statements': [
        {
          'text': '''Provincial autonomy was a feature of the Government of India Act of 1935.''',
          'isCorrect': true,
        },
        {
          'text': '''Provincial autonomy was a feature of the Government of India Act of 1919.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_22 = topicRef8.collection('questions').doc('question_22');
    await questionRef8_22.set({
      'questionId': '''22''',
      'order': 22,
      'statements': [
        {
          'text': '''Acharya Narendra Dev was a prominent leader of the Congress Socialist Party.''',
          'isCorrect': true,
        },
        {
          'text': '''Vallabhbhai Patel was a prominent leader of the Congress Socialist Party.''',
          'isCorrect': false,
        },
      ],
    });

    final topicRef9 = sectionRef.collection('topics').doc('''last_phase_of_british_rule_1940_1950''');
    await topicRef9.set({
      'name': '''Last Phase of British Rule (1940-1950)''',
      'order': 9,
    }, SetOptions(merge: true));

    final questionRef9_1 = topicRef9.collection('questions').doc('question_1');
    await questionRef9_1.set({
      'questionId': '''1''',
      'order': 1,
      'statements': [
        {
          'text': '''Dr. Sachchidananda Sinha was the Provisional President of the Constituent Assembly before Dr. Rajendra Prasad took over.''',
          'isCorrect': true,
        },
        {
          'text': '''Dr. Rajendra Prasad was the Provisional President of the Constituent Assembly before Dr. Sachchidananda Sinha took over.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef9_2 = topicRef9.collection('questions').doc('question_2');
    await questionRef9_2.set({
      'questionId': '''2''',
      'order': 2,
      'statements': [
        {
          'text': '''Under the proposals of the Cripps Mission, any Province not prepared to accept the new Constitution would have the right to sign a separate agreement with Britain regarding its future status.''',
          'isCorrect': true,
        },
        {
          'text': '''Under the proposals of the Cripps Mission, every Province was compulsorily required to accept the new Constitution with no right to opt out.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef9_3 = topicRef9.collection('questions').doc('question_3');
    await questionRef9_3.set({
      'questionId': '''3''',
      'order': 3,
      'statements': [
        {
          'text': '''On 8th August 1942, the Quit India Resolution was adopted by the AICC.''',
          'isCorrect': true,
        },
        {
          'text': '''On 8th August 1942, the Poorna Swaraj Resolution was adopted by the AICC.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef9_4 = topicRef9.collection('questions').doc('question_4');
    await questionRef9_4.set({
      'questionId': '''4''',
      'order': 4,
      'statements': [
        {
          'text': '''Shah Nawaz Khan, Prem Kumar Sehgal, and Gurbaksh Singh Dhillon are remembered as officers of the Indian National Army.''',
          'isCorrect': true,
        },
        {
          'text': '''Shah Nawaz Khan, Prem Kumar Sehgal, and Gurbaksh Singh Dhillon are remembered as members of the Interim Government of India.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef9_5 = topicRef9.collection('questions').doc('question_5');
    await questionRef9_5.set({
      'questionId': '''5''',
      'order': 5,
      'statements': [
        {
          'text': '''Sir Tej Bahadur Sapru was the President of the All India Liberal Federation.''',
          'isCorrect': true,
        },
        {
          'text': '''Sir Tej Bahadur Sapru was the President of the All India Trade Union Congress.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef9_6 = topicRef9.collection('questions').doc('question_6');
    await questionRef9_6.set({
      'questionId': '''6''',
      'order': 6,
      'statements': [
        {
          'text': '''K.C. Neogy was a member of the Constituent Assembly.''',
          'isCorrect': true,
        },
        {
          'text': '''K.C. Neogy was a member of the Interim Government formed in 1946.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef9_7 = topicRef9.collection('questions').doc('question_7');
    await questionRef9_7.set({
      'questionId': '''7''',
      'order': 7,
      'statements': [
        {
          'text': '''P.C. Joshi was the General Secretary of the Communist Party of India.''',
          'isCorrect': true,
        },
        {
          'text': '''P.C. Joshi was the President of the All India Kisan Sabha.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef9_8 = topicRef9.collection('questions').doc('question_8');
    await questionRef9_8.set({
      'questionId': '''8''',
      'order': 8,
      'statements': [
        {
          'text': '''Ashok Mehta, T.S. Ramanujan, and G.G. Mehta were among the founders of the Hind Mazdoor Sabha established in 1948.''',
          'isCorrect': true,
        },
        {
          'text': '''Ashok Mehta, T.S. Ramanujan, and G.G. Mehta were among the founders of the All India Trade Union Congress in 1920.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef9_9 = topicRef9.collection('questions').doc('question_9');
    await questionRef9_9.set({
      'questionId': '''9''',
      'order': 9,
      'statements': [
        {
          'text': '''The correct chronological sequence of these events is: the Second Round Table Conference, followed by the launch of the Quit India Movement, followed by the Mutiny in the Royal Indian Navy.''',
          'isCorrect': true,
        },
        {
          'text': '''The correct chronological sequence of these events is: the Mutiny in the Royal Indian Navy, followed by the launch of the Quit India Movement, followed by the Second Round Table Conference.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef9_10 = topicRef9.collection('questions').doc('question_10');
    await questionRef9_10.set({
      'questionId': '''10''',
      'order': 10,
      'statements': [
        {
          'text': '''The plan of Sir Stafford Cripps envisaged that after the Second World War, India should be given Dominion status.''',
          'isCorrect': true,
        },
        {
          'text': '''The plan of Sir Stafford Cripps envisaged that India would be granted complete and immediate independence during the Second World War.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef9_11 = topicRef9.collection('questions').doc('question_11');
    await questionRef9_11.set({
      'questionId': '''11''',
      'order': 11,
      'statements': [
        {
          'text': '''The Cabinet Mission recommended a federal government.''',
          'isCorrect': true,
        },
        {
          'text': '''The Cabinet Mission recommended the immediate partition of India into two separate dominions.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef9_12 = topicRef9.collection('questions').doc('question_12');
    await questionRef9_12.set({
      'questionId': '''12''',
      'order': 12,
      'statements': [
        {
          'text': '''The Radcliffe Committee was appointed to delimit the boundaries between India and Pakistan.''',
          'isCorrect': true,
        },
        {
          'text': '''The Radcliffe Committee was appointed to frame the Constitution of Independent India.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef9_13 = topicRef9.collection('questions').doc('question_13');
    await questionRef9_13.set({
      'questionId': '''13''',
      'order': 13,
      'statements': [
        {
          'text': '''The Quit India Movement was launched in response to the failure of the Cripps proposals.''',
          'isCorrect': true,
        },
        {
          'text': '''The Quit India Movement was launched in response to the failure of the Cabinet Mission.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef9_14 = topicRef9.collection('questions').doc('question_14');
    await questionRef9_14.set({
      'questionId': '''14''',
      'order': 14,
      'statements': [
        {
          'text': '''The members of the Constituent Assembly from the provinces were elected by the provincial legislative assemblies.''',
          'isCorrect': true,
        },
        {
          'text': '''The members of the Constituent Assembly from the provinces were directly elected by the adult population of British India.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef9_15 = topicRef9.collection('questions').doc('question_15');
    await questionRef9_15.set({
      'questionId': '''15''',
      'order': 15,
      'statements': [
        {
          'text': '''The Quit India Movement of 1942 was a non-violent movement.''',
          'isCorrect': true,
        },
        {
          'text': '''The Quit India Movement of 1942 was officially declared a violent armed uprising by the Indian National Congress.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef9_16 = topicRef9.collection('questions').doc('question_16');
    await questionRef9_16.set({
      'questionId': '''16''',
      'order': 16,
      'statements': [
        {
          'text': '''The Quit India Movement of 1942 was a spontaneous movement.''',
          'isCorrect': true,
        },
        {
          'text': '''The Quit India Movement of 1942 was a movement planned and controlled in every detail by the Congress high command.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef9_17 = topicRef9.collection('questions').doc('question_17');
    await questionRef9_17.set({
      'questionId': '''17''',
      'order': 17,
      'statements': [
        {
          'text': '''The Quit India Movement of 1942 did not attract the labour class in general.''',
          'isCorrect': true,
        },
        {
          'text': '''The Quit India Movement of 1942 attracted overwhelming participation from the organised labour class.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef9_18 = topicRef9.collection('questions').doc('question_18');
    await questionRef9_18.set({
      'questionId': '''18''',
      'order': 18,
      'statements': [
        {
          'text': '''Pandit Nehru and Maulana Azad were the official Congress negotiators with the Cripps Mission.''',
          'isCorrect': true,
        },
        {
          'text': '''Sardar Patel and Rajendra Prasad were the official Congress negotiators with the Cripps Mission.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef9_19 = topicRef9.collection('questions').doc('question_19');
    await questionRef9_19.set({
      'questionId': '''19''',
      'order': 19,
      'statements': [
        {
          'text': '''C. Rajagopalachari's pamphlet 'The Way Out', issued after the Quit India Movement, proposed a solution for the constitutional deadlock.''',
          'isCorrect': true,
        },
        {
          'text': '''C. Rajagopalachari's pamphlet 'The Way Out' called for an immediate and complete boycott of the Cripps Mission.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef9_20 = topicRef9.collection('questions').doc('question_20');
    await questionRef9_20.set({
      'questionId': '''20''',
      'order': 20,
      'statements': [
        {
          'text': '''The slogan 'Do or Die' is associated with the Quit India Movement.''',
          'isCorrect': true,
        },
        {
          'text': '''The slogan 'Do or Die' is associated with the Non-Cooperation Movement of 1920.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef9_21 = topicRef9.collection('questions').doc('question_21');
    await questionRef9_21.set({
      'questionId': '''21''',
      'order': 21,
      'statements': [
        {
          'text': '''In the 'Individual Satyagraha', Pandit Jawaharlal Nehru was chosen as the second Satyagrahi after Vinoba Bhave.''',
          'isCorrect': true,
        },
        {
          'text': '''In the 'Individual Satyagraha', Sardar Vallabhbhai Patel was chosen as the second Satyagrahi after Vinoba Bhave.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef9_22 = topicRef9.collection('questions').doc('question_22');
    await questionRef9_22.set({
      'questionId': '''22''',
      'order': 22,
      'statements': [
        {
          'text': '''The Cripps Proposals included the provision for the creation of a Constitution-making body.''',
          'isCorrect': true,
        },
        {
          'text': '''The Cripps Proposals rejected any provision for the creation of a Constitution-making body for India.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef9_23 = topicRef9.collection('questions').doc('question_23');
    await questionRef9_23.set({
      'questionId': '''23''',
      'order': 23,
      'statements': [
        {
          'text': '''Aruna Asaf Ali was a major woman organiser of underground activity during the Quit India Movement.''',
          'isCorrect': true,
        },
        {
          'text': '''Sarojini Naidu was a major woman organiser of underground activity during the Quit India Movement.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef9_24 = topicRef9.collection('questions').doc('question_24');
    await questionRef9_24.set({
      'questionId': '''24''',
      'order': 24,
      'statements': [
        {
          'text': '''Winston Churchill was the Prime Minister who sent the Cripps Mission to India.''',
          'isCorrect': true,
        },
        {
          'text': '''Clement Attlee was the Prime Minister who sent the Cripps Mission to India.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef9_25 = topicRef9.collection('questions').doc('question_25');
    await questionRef9_25.set({
      'questionId': '''25''',
      'order': 25,
      'statements': [
        {
          'text': '''Subhas Chandra Bose raised an army called the 'Free Indian Legion' during the Indian Freedom Struggle.''',
          'isCorrect': true,
        },
        {
          'text': '''Rash Behari Bose raised an army called the 'Free Indian Legion' during the Indian Freedom Struggle.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef9_26 = topicRef9.collection('questions').doc('question_26');
    await questionRef9_26.set({
      'questionId': '''26''',
      'order': 26,
      'statements': [
        {
          'text': '''The Simla Conference suggested the reconstitution of the Viceroy's Executive Council in which all portfolios, including that of War Member, were to be held by Indian leaders.''',
          'isCorrect': true,
        },
        {
          'text': '''The Simla Conference suggested that the portfolio of War Member should continue to be held exclusively by a British official.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef9_27 = topicRef9.collection('questions').doc('question_27');
    await questionRef9_27.set({
      'questionId': '''27''',
      'order': 27,
      'statements': [
        {
          'text': '''According to the Wavell Plan, the number of Hindu and Muslim members in the Executive Council were to be equal.''',
          'isCorrect': true,
        },
        {
          'text': '''According to the Wavell Plan, the number of Hindu members in the Executive Council was to be twice that of Muslim members.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef9_28 = topicRef9.collection('questions').doc('question_28');
    await questionRef9_28.set({
      'questionId': '''28''',
      'order': 28,
      'statements': [
        {
          'text': '''Dr. Rajendra Prasad held the portfolio of Food and Agriculture in the Interim Government formed in 1946.''',
          'isCorrect': true,
        },
        {
          'text': '''Dr. Rajendra Prasad held the portfolio of Home Affairs in the Interim Government formed in 1946.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef9_29 = topicRef9.collection('questions').doc('question_29');
    await questionRef9_29.set({
      'questionId': '''29''',
      'order': 29,
      'statements': [
        {
          'text': '''Jawaharlal Nehru was the Chairman of the Union Constitution Committee of the Constituent Assembly.''',
          'isCorrect': true,
        },
        {
          'text': '''Sardar Vallabhbhai Patel was the Chairman of the Union Constitution Committee of the Constituent Assembly.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef9_30 = topicRef9.collection('questions').doc('question_30');
    await questionRef9_30.set({
      'questionId': '''30''',
      'order': 30,
      'statements': [
        {
          'text': '''On the eve of the launch of the Quit India Movement, Mahatma Gandhi asked the Princes of the Princely States to accept the sovereignty of their own people.''',
          'isCorrect': true,
        },
        {
          'text': '''On the eve of the launch of the Quit India Movement, Mahatma Gandhi asked the Princes of the Princely States to remain loyal to the British Crown.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef9_31 = topicRef9.collection('questions').doc('question_31');
    await questionRef9_31.set({
      'questionId': '''31''',
      'order': 31,
      'statements': [
        {
          'text': '''The Indian Navy Revolt of 1946 took place when Indian sailors in the Royal Indian Navy at Bombay and Karachi rose against the Government.''',
          'isCorrect': true,
        },
        {
          'text': '''The Indian Navy Revolt of 1946 took place when Indian sailors in the Royal Indian Navy at Calcutta and Madras rose against the Government.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef9_32 = topicRef9.collection('questions').doc('question_32');
    await questionRef9_32.set({
      'questionId': '''32''',
      'order': 32,
      'statements': [
        {
          'text': '''The Constituent Assembly of India was elected by the Provincial Assemblies in the year 1946.''',
          'isCorrect': true,
        },
        {
          'text': '''The Constituent Assembly of India was elected by universal adult suffrage in the year 1946.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef9_33 = topicRef9.collection('questions').doc('question_33');
    await questionRef9_33.set({
      'questionId': '''33''',
      'order': 33,
      'statements': [
        {
          'text': '''An important aspect of the Cripps Mission of 1942 was the creation of an Indian Union with Dominion status soon after the Second World War.''',
          'isCorrect': true,
        },
        {
          'text': '''An important aspect of the Cripps Mission of 1942 was the immediate transfer of complete power to an Indian government during the war itself.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef9_34 = topicRef9.collection('questions').doc('question_34');
    await questionRef9_34.set({
      'questionId': '''34''',
      'order': 34,
      'statements': [
        {
          'text': '''Jawaharlal Nehru headed the Interim Cabinet formed in 1946.''',
          'isCorrect': true,
        },
        {
          'text': '''Liaquat Ali Khan headed the Interim Cabinet formed in 1946.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef9_35 = topicRef9.collection('questions').doc('question_35');
    await questionRef9_35.set({
      'questionId': '''35''',
      'order': 35,
      'statements': [
        {
          'text': '''The last opportunity to avoid the partition of India was lost with the rejection of the Cabinet Mission.''',
          'isCorrect': true,
        },
        {
          'text': '''The last opportunity to avoid the partition of India was lost with the rejection of the Cripps Mission.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef9_36 = topicRef9.collection('questions').doc('question_36');
    await questionRef9_36.set({
      'questionId': '''36''',
      'order': 36,
      'statements': [
        {
          'text': '''J.B. Kripalani was the President of the Indian National Congress at the time of the partition of India.''',
          'isCorrect': true,
        },
        {
          'text': '''Jawaharlal Nehru was the President of the Indian National Congress at the time of the partition of India.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef9_37 = topicRef9.collection('questions').doc('question_37');
    await questionRef9_37.set({
      'questionId': '''37''',
      'order': 37,
      'statements': [
        {
          'text': '''At the time of the partition of India, Punjab came forward with a plan for a united and independent existence.''',
          'isCorrect': true,
        },
        {
          'text': '''At the time of the partition of India, Bengal came forward with a plan for a united and independent existence.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef9_38 = topicRef9.collection('questions').doc('question_38');
    await questionRef9_38.set({
      'questionId': '''38''',
      'order': 38,
      'statements': [
        {
          'text': '''The Balkan Plan for the fragmentation of India was the brainchild of Lord Mountbatten.''',
          'isCorrect': true,
        },
        {
          'text': '''The Balkan Plan for the fragmentation of India was the brainchild of Sardar Vallabhbhai Patel.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef9_39 = topicRef9.collection('questions').doc('question_39');
    await questionRef9_39.set({
      'questionId': '''39''',
      'order': 39,
      'statements': [
        {
          'text': '''As an alternative to the partition of India, Gandhiji suggested to Mountbatten that he invite Jinnah to form the government.''',
          'isCorrect': true,
        },
        {
          'text': '''As an alternative to the partition of India, Gandhiji suggested to Mountbatten that he invite Liaquat Ali Khan to form the government.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef9_40 = topicRef9.collection('questions').doc('question_40');
    await questionRef9_40.set({
      'questionId': '''40''',
      'order': 40,
      'statements': [
        {
          'text': '''The Indian National Army (INA) came into existence in 1943 in Singapore.''',
          'isCorrect': true,
        },
        {
          'text': '''The Indian National Army (INA) came into existence in 1943 in Tokyo.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef9_41 = topicRef9.collection('questions').doc('question_41');
    await questionRef9_41.set({
      'questionId': '''41''',
      'order': 41,
      'statements': [
        {
          'text': '''The description of proposals made in May for a united India, with a Federal Union composed of British provinces, relates to Maulana Abul Kalam Azad.''',
          'isCorrect': true,
        },
        {
          'text': '''The description of proposals made in May for a united India, with a Federal Union composed of British provinces, relates to Jawaharlal Nehru.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef9_42 = topicRef9.collection('questions').doc('question_42');
    await questionRef9_42.set({
      'questionId': '''42''',
      'order': 42,
      'statements': [
        {
          'text': '''Subhas Chandra Bose looked upon a war between Germany and Britain as a godsent opportunity that would enable Indians to exploit the situation to their advantage.''',
          'isCorrect': true,
        },
        {
          'text': '''Mahatma Gandhi looked upon a war between Germany and Britain as a godsent opportunity that would enable Indians to exploit the situation to their advantage.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef9_43 = topicRef9.collection('questions').doc('question_43');
    await questionRef9_43.set({
      'questionId': '''43''',
      'order': 43,
      'statements': [
        {
          'text': '''Sardar Patel was totally in favour of the Cabinet Mission Plan among the Congress leaders.''',
          'isCorrect': true,
        },
        {
          'text': '''Subhas Chandra Bose was totally in favour of the Cabinet Mission Plan among the Congress leaders.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef9_44 = topicRef9.collection('questions').doc('question_44');
    await questionRef9_44.set({
      'questionId': '''44''',
      'order': 44,
      'statements': [
        {
          'text': '''Lord Linlithgow described the August Movement of 1942 as the most serious rebellion since the Sepoy Mutiny.''',
          'isCorrect': true,
        },
        {
          'text': '''Lord Wavell described the August Movement of 1942 as the most serious rebellion since the Sepoy Mutiny.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef9_45 = topicRef9.collection('questions').doc('question_45');
    await questionRef9_45.set({
      'questionId': '''45''',
      'order': 45,
      'statements': [
        {
          'text': '''There was a massive upsurge of the peasantry in certain areas during the August Movement of 1942.''',
          'isCorrect': true,
        },
        {
          'text': '''There was almost no participation of the peasantry in the August Movement of 1942.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef9_46 = topicRef9.collection('questions').doc('question_46');
    await questionRef9_46.set({
      'questionId': '''46''',
      'order': 46,
      'statements': [
        {
          'text': '''Lord Mountbatten came to India as Viceroy with specific instructions to keep India united if possible.''',
          'isCorrect': true,
        },
        {
          'text': '''Lord Mountbatten came to India as Viceroy with specific instructions to partition India immediately upon arrival.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef9_47 = topicRef9.collection('questions').doc('question_47');
    await questionRef9_47.set({
      'questionId': '''47''',
      'order': 47,
      'statements': [
        {
          'text': '''The Congress rejected the Cripps proposals.''',
          'isCorrect': true,
        },
        {
          'text': '''The Congress unconditionally accepted the Cripps proposals.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef9_48 = topicRef9.collection('questions').doc('question_48');
    await questionRef9_48.set({
      'questionId': '''48''',
      'order': 48,
      'statements': [
        {
          'text': '''The Cripps Mission consisted solely of whites.''',
          'isCorrect': true,
        },
        {
          'text': '''The Cripps Mission included several prominent Indian leaders as its members.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef9_49 = topicRef9.collection('questions').doc('question_49');
    await questionRef9_49.set({
      'questionId': '''49''',
      'order': 49,
      'statements': [
        {
          'text': '''When the Indian Muslim League was inducted into the interim government in 1946, Liaquat Ali Khan was assigned the portfolio of Finance.''',
          'isCorrect': true,
        },
        {
          'text': '''When the Indian Muslim League was inducted into the interim government in 1946, Liaquat Ali Khan was assigned the portfolio of Home Affairs.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef9_50 = topicRef9.collection('questions').doc('question_50');
    await questionRef9_50.set({
      'questionId': '''50''',
      'order': 50,
      'statements': [
        {
          'text': '''The Indian National Congress agreed in 1947 to the partition of the country mainly because they wanted to avoid large-scale communal riots.''',
          'isCorrect': true,
        },
        {
          'text': '''The Indian National Congress agreed in 1947 to the partition of the country mainly because they wanted to secure a permanent parliamentary majority.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef9_51 = topicRef9.collection('questions').doc('question_51');
    await questionRef9_51.set({
      'questionId': '''51''',
      'order': 51,
      'statements': [
        {
          'text': '''At the time of India's Independence, Mahatma Gandhi was not a member of the Congress.''',
          'isCorrect': true,
        },
        {
          'text': '''At the time of India's Independence, Mahatma Gandhi was the President of the Congress.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef9_52 = topicRef9.collection('questions').doc('question_52');
    await questionRef9_52.set({
      'questionId': '''52''',
      'order': 52,
      'statements': [
        {
          'text': '''The correct chronological sequence of these events is: the August Offer, followed by the Quit India Movement, followed by the I.N.A. trial, followed by the Royal Indian Naval Ratings' Revolt.''',
          'isCorrect': true,
        },
        {
          'text': '''The correct chronological sequence of these events is: the Royal Indian Naval Ratings' Revolt, followed by the I.N.A. trial, followed by the Quit India Movement, followed by the August Offer.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef9_53 = topicRef9.collection('questions').doc('question_53');
    await questionRef9_53.set({
      'questionId': '''53''',
      'order': 53,
      'statements': [
        {
          'text': '''Provincial grouping was a feature of the Cabinet Mission Plan.''',
          'isCorrect': true,
        },
        {
          'text': '''Provincial grouping was explicitly rejected as a feature of the Cabinet Mission Plan.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef9_54 = topicRef9.collection('questions').doc('question_54');
    await questionRef9_54.set({
      'questionId': '''54''',
      'order': 54,
      'statements': [
        {
          'text': '''The formation of an Interim Cabinet of Indians was a feature of the Cabinet Mission Plan.''',
          'isCorrect': true,
        },
        {
          'text': '''The formation of an Interim Cabinet composed entirely of British officials was a feature of the Cabinet Mission Plan.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef9_55 = topicRef9.collection('questions').doc('question_55');
    await questionRef9_55.set({
      'questionId': '''55''',
      'order': 55,
      'statements': [
        {
          'text': '''The Cabinet Mission Plan gave the right to frame the constitution to Indians.''',
          'isCorrect': true,
        },
        {
          'text': '''The Cabinet Mission Plan retained the right to frame the constitution with the British Parliament.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef9_56 = topicRef9.collection('questions').doc('question_56');
    await questionRef9_56.set({
      'questionId': '''56''',
      'order': 56,
      'statements': [
        {
          'text': '''Mahatma Gandhi suggested the winding up of the Indian National Congress after India attained independence.''',
          'isCorrect': true,
        },
        {
          'text': '''Jawaharlal Nehru suggested the winding up of the Indian National Congress after India attained independence.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef9_57 = topicRef9.collection('questions').doc('question_57');
    await questionRef9_57.set({
      'questionId': '''57''',
      'order': 57,
      'statements': [
        {
          'text': '''The Swaraj Party first mooted the idea of a constituent assembly to frame a constitution for India, in 1934.''',
          'isCorrect': true,
        },
        {
          'text': '''The Communist Party of India first mooted the idea of a constituent assembly to frame a constitution for India, in 1934.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef9_58 = topicRef9.collection('questions').doc('question_58');
    await questionRef9_58.set({
      'questionId': '''58''',
      'order': 58,
      'statements': [
        {
          'text': '''The British sovereign appointed the last Governor General of free India.''',
          'isCorrect': true,
        },
        {
          'text': '''The Constituent Assembly of India appointed the last Governor General of free India.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef9_59 = topicRef9.collection('questions').doc('question_59');
    await questionRef9_59.set({
      'questionId': '''59''',
      'order': 59,
      'statements': [
        {
          'text': '''B.R. Ambedkar was elected to the Constituent Assembly from West Bengal.''',
          'isCorrect': true,
        },
        {
          'text': '''B.R. Ambedkar was elected to the Constituent Assembly from Bombay.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef9_60 = topicRef9.collection('questions').doc('question_60');
    await questionRef9_60.set({
      'questionId': '''60''',
      'order': 60,
      'statements': [
        {
          'text': '''In the interim government formed in 1946, Jawaharlal Nehru was the Vice-President of the Executive Council.''',
          'isCorrect': true,
        },
        {
          'text': '''In the interim government formed in 1946, Liaquat Ali Khan was the Vice-President of the Executive Council.''',
          'isCorrect': false,
        },
      ],
    });

    final topicRef10 = sectionRef.collection('topics').doc('''social_reforms_and_reformers''');
    await topicRef10.set({
      'name': '''Social Reforms and Reformers''',
      'order': 10,
    }, SetOptions(merge: true));

    final questionRef10_1 = topicRef10.collection('questions').doc('question_1');
    await questionRef10_1.set({
      'questionId': '''1''',
      'order': 1,
      'statements': [
        {
          'text': '''Raja Ram Mohan Roy possessed great love and respect for the traditional philosophical systems of the East.''',
          'isCorrect': true,
        },
        {
          'text': '''Raja Ram Mohan Roy held the traditional philosophical systems of the East in contempt and sought to eliminate them entirely.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef10_2 = topicRef10.collection('questions').doc('question_2');
    await questionRef10_2.set({
      'questionId': '''2''',
      'order': 2,
      'statements': [
        {
          'text': '''Raja Ram Mohan Roy desired his countrymen to accept the rational and scientific approach and the principle of human dignity and social equality of all men and women.''',
          'isCorrect': true,
        },
        {
          'text': '''Raja Ram Mohan Roy desired his countrymen to reject rational and scientific approaches in favour of preserving strict social hierarchy.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef10_3 = topicRef10.collection('questions').doc('question_3');
    await questionRef10_3.set({
      'questionId': '''3''',
      'order': 3,
      'statements': [
        {
          'text': ''''Periyar' E.V. Ramaswamy Naicker was the founder of the 'Self-Respect Movement'.''',
          'isCorrect': true,
        },
        {
          'text': ''''Periyar' E.V. Ramaswamy Naicker was the founder of the Satya Shodhak Samaj.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef10_4 = topicRef10.collection('questions').doc('question_4');
    await questionRef10_4.set({
      'questionId': '''4''',
      'order': 4,
      'statements': [
        {
          'text': '''The 'Vital-Vidhwansak', the first monthly journal to have the untouchable people as its target audience, was published by Gopal Baba Walangkar.''',
          'isCorrect': true,
        },
        {
          'text': '''The 'Vital-Vidhwansak', the first monthly journal to have the untouchable people as its target audience, was published by Jyotirao Phule.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef10_5 = topicRef10.collection('questions').doc('question_5');
    await questionRef10_5.set({
      'questionId': '''5''',
      'order': 5,
      'statements': [
        {
          'text': '''Mahatma Gandhi was the leader associated with the All India Anti-Untouchability League.''',
          'isCorrect': true,
        },
        {
          'text': '''Dr. B.R. Ambedkar was the leader associated with the All India Anti-Untouchability League.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef10_6 = topicRef10.collection('questions').doc('question_6');
    await questionRef10_6.set({
      'questionId': '''6''',
      'order': 6,
      'statements': [
        {
          'text': '''Swami Sahajanand Saraswati was the leader associated with the All India Kisan Sabha.''',
          'isCorrect': true,
        },
        {
          'text': '''Jawaharlal Nehru was the leader associated with the All India Kisan Sabha.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef10_7 = topicRef10.collection('questions').doc('question_7');
    await questionRef10_7.set({
      'questionId': '''7''',
      'order': 7,
      'statements': [
        {
          'text': '''E.V. Ramaswami Naicker was the leader associated with the Self-Respect Movement.''',
          'isCorrect': true,
        },
        {
          'text': '''C.N. Annadurai was the leader associated with the Self-Respect Movement.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef10_8 = topicRef10.collection('questions').doc('question_8');
    await questionRef10_8.set({
      'questionId': '''8''',
      'order': 8,
      'statements': [
        {
          'text': '''The Satya Shodhak Samaj organised an anti-caste movement in Maharashtra.''',
          'isCorrect': true,
        },
        {
          'text': '''The Satya Shodhak Samaj organised an anti-caste movement in Punjab.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef10_9 = topicRef10.collection('questions').doc('question_9');
    await questionRef10_9.set({
      'questionId': '''9''',
      'order': 9,
      'statements': [
        {
          'text': '''Dr. B.R. Ambedkar established the All India Scheduled Castes Federation.''',
          'isCorrect': true,
        },
        {
          'text': '''Jyotirao Phule established the All India Scheduled Castes Federation.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef10_10 = topicRef10.collection('questions').doc('question_10');
    await questionRef10_10.set({
      'questionId': '''10''',
      'order': 10,
      'statements': [
        {
          'text': '''Dr. B.R. Ambedkar established the Independent Labour Party.''',
          'isCorrect': true,
        },
        {
          'text': '''Dr. B.R. Ambedkar established the Justice Party.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef10_11 = topicRef10.collection('questions').doc('question_11');
    await questionRef10_11.set({
      'questionId': '''11''',
      'order': 11,
      'statements': [
        {
          'text': '''The Brahmo Samaj opposed idolatry.''',
          'isCorrect': true,
        },
        {
          'text': '''The Brahmo Samaj actively promoted and encouraged idol worship.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef10_12 = topicRef10.collection('questions').doc('question_12');
    await questionRef10_12.set({
      'questionId': '''12''',
      'order': 12,
      'statements': [
        {
          'text': '''The Brahmo Samaj denied the need for a priestly class for interpreting the religious texts.''',
          'isCorrect': true,
        },
        {
          'text': '''The Brahmo Samaj insisted on the necessity of a priestly class for interpreting the religious texts.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef10_13 = topicRef10.collection('questions').doc('question_13');
    await questionRef10_13.set({
      'questionId': '''13''',
      'order': 13,
      'statements': [
        {
          'text': '''Ishwar Chandra Vidyasagar founded the Bethune School at Calcutta with the main aim of encouraging education for women.''',
          'isCorrect': true,
        },
        {
          'text': '''David Hare founded the Bethune School at Calcutta with the main aim of encouraging education for women.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef10_14 = topicRef10.collection('questions').doc('question_14');
    await questionRef10_14.set({
      'questionId': '''14''',
      'order': 14,
      'statements': [
        {
          'text': '''Bankim Chandra Chattopadhyay was the first graduate of the Calcutta University.''',
          'isCorrect': true,
        },
        {
          'text': '''Surendranath Banerjee was the first graduate of the Calcutta University.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef10_15 = topicRef10.collection('questions').doc('question_15');
    await questionRef10_15.set({
      'questionId': '''15''',
      'order': 15,
      'statements': [
        {
          'text': '''Under Keshab Chandra Sen, the Brahmo Samaj campaigned for women's education.''',
          'isCorrect': true,
        },
        {
          'text': '''Under Debendranath Tagore, the Brahmo Samaj campaigned for women's education.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef10_16 = topicRef10.collection('questions').doc('question_16');
    await questionRef10_16.set({
      'questionId': '''16''',
      'order': 16,
      'statements': [
        {
          'text': '''Vinoba Bhave founded the Sarvodaya Samaj to work among refugees.''',
          'isCorrect': true,
        },
        {
          'text': '''Jayaprakash Narayan founded the Sarvodaya Samaj to work among refugees.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef10_17 = topicRef10.collection('questions').doc('question_17');
    await questionRef10_17.set({
      'questionId': '''17''',
      'order': 17,
      'statements': [
        {
          'text': '''The word 'Adivasi' was used for the first time to refer to the tribal people by Thakkar Bappa.''',
          'isCorrect': true,
        },
        {
          'text': '''The word 'Adivasi' was used for the first time to refer to the tribal people by Verrier Elwin.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef10_18 = topicRef10.collection('questions').doc('question_18');
    await questionRef10_18.set({
      'questionId': '''18''',
      'order': 18,
      'statements': [
        {
          'text': '''Jamnalal Bajaj was associated with the Satyagraha Ashram at Wardha.''',
          'isCorrect': true,
        },
        {
          'text': '''Jamnalal Bajaj was associated with the Sabarmati Ashram at Ahmedabad.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef10_19 = topicRef10.collection('questions').doc('question_19');
    await questionRef10_19.set({
      'questionId': '''19''',
      'order': 19,
      'statements': [
        {
          'text': '''Dadabhai Naoroji was associated with the Bombay Association.''',
          'isCorrect': true,
        },
        {
          'text': '''Dadabhai Naoroji was associated with the Poona Sarvajanik Sabha.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef10_20 = topicRef10.collection('questions').doc('question_20');
    await questionRef10_20.set({
      'questionId': '''20''',
      'order': 20,
      'statements': [
        {
          'text': '''Lala Lajpat Rai was associated with the National School at Lahore.''',
          'isCorrect': true,
        },
        {
          'text': '''Lala Lajpat Rai was associated with the National School at Calcutta.''',
          'isCorrect': false,
        },
      ],
    });

    final topicRef11 = sectionRef.collection('topics').doc('''literature''');
    await topicRef11.set({
      'name': '''Literature''',
      'order': 11,
    }, SetOptions(merge: true));

    final questionRef11_1 = topicRef11.collection('questions').doc('question_1');
    await questionRef11_1.set({
      'questionId': '''1''',
      'order': 1,
      'statements': [
        {
          'text': '''Mohandas Karamchand Gandhi is associated with 'Songs from Prison', a translation of ancient Indian religious lyrics in English.''',
          'isCorrect': true,
        },
        {
          'text': '''Rabindranath Tagore is associated with 'Songs from Prison', a translation of ancient Indian religious lyrics in English.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef11_2 = topicRef11.collection('questions').doc('question_2');
    await questionRef11_2.set({
      'questionId': '''2''',
      'order': 2,
      'statements': [
        {
          'text': '''Rabindranath Tagore translated the National Anthem from Bengali to English at Madanapalle, Andhra Pradesh.''',
          'isCorrect': true,
        },
        {
          'text': '''Rabindranath Tagore translated the National Anthem from Bengali to English at Santiniketan, West Bengal.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef11_3 = topicRef11.collection('questions').doc('question_3');
    await questionRef11_3.set({
      'questionId': '''3''',
      'order': 3,
      'statements': [
        {
          'text': '''Sakharam Ganesh Deuskar's book 'Desher Katha' warned against the Colonial State's hypnotic conquest of the mind.''',
          'isCorrect': true,
        },
        {
          'text': '''Sakharam Ganesh Deuskar's book 'Desher Katha' praised the economic benefits brought by colonial rule to India.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef11_4 = topicRef11.collection('questions').doc('question_4');
    await questionRef11_4.set({
      'questionId': '''4''',
      'order': 4,
      'statements': [
        {
          'text': '''Sakharam Ganesh Deuskar's book 'Desher Katha' inspired the performance of swadeshi street plays and folk songs.''',
          'isCorrect': true,
        },
        {
          'text': '''Sakharam Ganesh Deuskar's book 'Desher Katha' had no influence on swadeshi street plays and folk songs.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef11_5 = topicRef11.collection('questions').doc('question_5');
    await questionRef11_5.set({
      'questionId': '''5''',
      'order': 5,
      'statements': [
        {
          'text': '''Lala Lajpat Rai wrote biographies of Mazzini, Garibaldi, Shivaji and Shrikrishna, stayed in America for some time, and was elected to the Central Assembly.''',
          'isCorrect': true,
        },
        {
          'text': '''Lala Lajpat Rai wrote biographies of Napoleon and Bismarck, never travelled outside India, and was never elected to the Central Assembly.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef11_6 = topicRef11.collection('questions').doc('question_6');
    await questionRef11_6.set({
      'questionId': '''6''',
      'order': 6,
      'statements': [
        {
          'text': '''Among these events, Dinabandhu Mitra writing 'Neeldarpan' happened earliest.''',
          'isCorrect': true,
        },
        {
          'text': '''Among these events, Dinabandhu Mitra writing 'Neeldarpan' happened last, not earliest.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef11_7 = topicRef11.collection('questions').doc('question_7');
    await questionRef11_7.set({
      'questionId': '''7''',
      'order': 7,
      'statements': [
        {
          'text': '''The message from the book 'Unto This Last' that transformed Mahatma Gandhi was that the good of the individual is contained in the good of all.''',
          'isCorrect': true,
        },
        {
          'text': '''The message from the book 'Unto This Last' that transformed Mahatma Gandhi was that individual wealth accumulation benefits society the most.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef11_8 = topicRef11.collection('questions').doc('question_8');
    await questionRef11_8.set({
      'questionId': '''8''',
      'order': 8,
      'statements': [
        {
          'text': '''Sarojini Naidu is the author of the collection of poems called 'Golden Threshold'.''',
          'isCorrect': true,
        },
        {
          'text': '''Sarojini Naidu is the author of the collection of poems called 'Gitanjali'.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef11_9 = topicRef11.collection('questions').doc('question_9');
    await questionRef11_9.set({
      'questionId': '''9''',
      'order': 9,
      'statements': [
        {
          'text': ''''Al-Hilal' was a journal brought out by Abul Kalam Azad.''',
          'isCorrect': true,
        },
        {
          'text': ''''Al-Hilal' was a journal brought out by Muhammad Ali Jinnah.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef11_10 = topicRef11.collection('questions').doc('question_10');
    await questionRef11_10.set({
      'questionId': '''10''',
      'order': 10,
      'statements': [
        {
          'text': '''Lal Bahadur Shastri translated the Autobiography of Madam Curie into Hindi.''',
          'isCorrect': true,
        },
        {
          'text': '''Jawaharlal Nehru translated the Autobiography of Madam Curie into Hindi.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef11_11 = topicRef11.collection('questions').doc('question_11');
    await questionRef11_11.set({
      'questionId': '''11''',
      'order': 11,
      'statements': [
        {
          'text': '''Bankimchandra wrote 'Debi Chaudhurani'.''',
          'isCorrect': true,
        },
        {
          'text': '''Sarat Chandra Chattopadhyay wrote 'Debi Chaudhurani'.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef11_12 = topicRef11.collection('questions').doc('question_12');
    await questionRef11_12.set({
      'questionId': '''12''',
      'order': 12,
      'statements': [
        {
          'text': '''Dinabandhu Mitra wrote 'Nil-Darpan'.''',
          'isCorrect': true,
        },
        {
          'text': '''Bankim Chandra Chatterjee wrote 'Nil-Darpan'.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef11_13 = topicRef11.collection('questions').doc('question_13');
    await questionRef11_13.set({
      'questionId': '''13''',
      'order': 13,
      'statements': [
        {
          'text': '''Premchand wrote 'Shatranj ke Khilari'.''',
          'isCorrect': true,
        },
        {
          'text': '''Rabindranath Tagore wrote 'Shatranj ke Khilari'.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef11_14 = topicRef11.collection('questions').doc('question_14');
    await questionRef11_14.set({
      'questionId': '''14''',
      'order': 14,
      'statements': [
        {
          'text': '''Rabindranath Tagore wrote the song 'Amar Sonar Bangla', written during the Swadeshi Movement, which inspired the liberation struggle of Bangladesh.''',
          'isCorrect': true,
        },
        {
          'text': '''Kazi Nazrul Islam wrote the song 'Amar Sonar Bangla', which was composed during the Non-Cooperation Movement.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef11_15 = topicRef11.collection('questions').doc('question_15');
    await questionRef11_15.set({
      'questionId': '''15''',
      'order': 15,
      'statements': [
        {
          'text': '''Ishwar Chandra Vidyasagar wrote the book 'Babuvivah'.''',
          'isCorrect': true,
        },
        {
          'text': '''Ishwar Chandra Vidyasagar wrote the book 'Anand Math'.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef11_16 = topicRef11.collection('questions').doc('question_16');
    await questionRef11_16.set({
      'questionId': '''16''',
      'order': 16,
      'statements': [
        {
          'text': '''Ishwar Chandra Vidyasagar started the newspaper 'Shome Prakash'.''',
          'isCorrect': true,
        },
        {
          'text': '''Ishwar Chandra Vidyasagar started the newspaper 'Amrita Bazar Patrika'.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef11_17 = topicRef11.collection('questions').doc('question_17');
    await questionRef11_17.set({
      'questionId': '''17''',
      'order': 17,
      'statements': [
        {
          'text': '''The Sanyasi rebellion was made famous by Bankim Chandra Chatterjee in his novel 'Anand Math'.''',
          'isCorrect': true,
        },
        {
          'text': '''The Sanyasi rebellion was made famous by Bankim Chandra Chatterjee in his novel 'Debi Chaudhurani'.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef11_18 = topicRef11.collection('questions').doc('question_18');
    await questionRef11_18.set({
      'questionId': '''18''',
      'order': 18,
      'statements': [
        {
          'text': '''Charles Wilkins was the first Englishman to translate the Bhagavad Gita into English.''',
          'isCorrect': true,
        },
        {
          'text': '''William Jones was the first Englishman to translate the Bhagavad Gita into English.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef11_19 = topicRef11.collection('questions').doc('question_19');
    await questionRef11_19.set({
      'questionId': '''19''',
      'order': 19,
      'statements': [
        {
          'text': '''Shyamji Krishna Varma is associated with the journal 'Indian Sociologist'.''',
          'isCorrect': true,
        },
        {
          'text': '''Shyamji Krishna Varma is associated with the journal 'Bande Mataram'.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef11_20 = topicRef11.collection('questions').doc('question_20');
    await questionRef11_20.set({
      'questionId': '''20''',
      'order': 20,
      'statements': [
        {
          'text': '''Madame Bhikaji Cama is associated with the journal 'The Talwar'.''',
          'isCorrect': true,
        },
        {
          'text': '''Madame Bhikaji Cama is associated with the journal 'Indian Sociologist'.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef11_21 = topicRef11.collection('questions').doc('question_21');
    await questionRef11_21.set({
      'questionId': '''21''',
      'order': 21,
      'statements': [
        {
          'text': '''Annie Besant is associated with the journal 'Commonwealth'.''',
          'isCorrect': true,
        },
        {
          'text': '''Annie Besant is associated with the journal 'Al-Hilal'.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef11_22 = topicRef11.collection('questions').doc('question_22');
    await questionRef11_22.set({
      'questionId': '''22''',
      'order': 22,
      'statements': [
        {
          'text': '''Aurobindo Ghosh is associated with the journal 'Bande Mataram'.''',
          'isCorrect': true,
        },
        {
          'text': '''Aurobindo Ghosh is associated with the journal 'The Talwar'.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef11_23 = topicRef11.collection('questions').doc('question_23');
    await questionRef11_23.set({
      'questionId': '''23''',
      'order': 23,
      'statements': [
        {
          'text': ''''Neel Darpan' was a play based on the exploitation of the indigo farmers.''',
          'isCorrect': true,
        },
        {
          'text': ''''Neel Darpan' was a play based on the exploitation of tea garden workers.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef11_24 = topicRef11.collection('questions').doc('question_24');
    await questionRef11_24.set({
      'questionId': '''24''',
      'order': 24,
      'statements': [
        {
          'text': '''Vijay Tendulkar is the author of the play 'Ghashiram Kotwal'.''',
          'isCorrect': true,
        },
        {
          'text': '''Girish Karnad is the author of the play 'Ghashiram Kotwal'.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef11_25 = topicRef11.collection('questions').doc('question_25');
    await questionRef11_25.set({
      'questionId': '''25''',
      'order': 25,
      'statements': [
        {
          'text': '''Urdu theatre used to depend heavily on Parsi theatre.''',
          'isCorrect': true,
        },
        {
          'text': '''Urdu theatre developed completely independent of, and had no connection with, Parsi theatre.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef11_26 = topicRef11.collection('questions').doc('question_26');
    await questionRef11_26.set({
      'questionId': '''26''',
      'order': 26,
      'statements': [
        {
          'text': ''''The First Indian War of Independence' was written by Vinayak Damodar Savarkar.''',
          'isCorrect': true,
        },
        {
          'text': ''''The First Indian War of Independence' was written by Bal Gangadhar Tilak.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef11_27 = topicRef11.collection('questions').doc('question_27');
    await questionRef11_27.set({
      'questionId': '''27''',
      'order': 27,
      'statements': [
        {
          'text': ''''Anand Math' was written by Bankim Chandra Chatterji.''',
          'isCorrect': true,
        },
        {
          'text': ''''Anand Math' was written by Rabindranath Tagore.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef11_28 = topicRef11.collection('questions').doc('question_28');
    await questionRef11_28.set({
      'questionId': '''28''',
      'order': 28,
      'statements': [
        {
          'text': ''''Life Divine' was written by Sri Aurobindo.''',
          'isCorrect': true,
        },
        {
          'text': ''''Life Divine' was written by Swami Vivekananda.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef11_29 = topicRef11.collection('questions').doc('question_29');
    await questionRef11_29.set({
      'questionId': '''29''',
      'order': 29,
      'statements': [
        {
          'text': ''''Sadhana' was written by Rabindranath Tagore.''',
          'isCorrect': true,
        },
        {
          'text': ''''Sadhana' was written by Sri Aurobindo.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef11_30 = topicRef11.collection('questions').doc('question_30');
    await questionRef11_30.set({
      'questionId': '''30''',
      'order': 30,
      'statements': [
        {
          'text': '''Surendranath Bannerjee wrote 'A Nation in Making'.''',
          'isCorrect': true,
        },
        {
          'text': '''Surendranath Bannerjee wrote 'Hind Swaraj'.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef11_31 = topicRef11.collection('questions').doc('question_31');
    await questionRef11_31.set({
      'questionId': '''31''',
      'order': 31,
      'statements': [
        {
          'text': '''M.K. Gandhi wrote 'Hind Swaraj'.''',
          'isCorrect': true,
        },
        {
          'text': '''M.K. Gandhi wrote 'The Indian Struggle'.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef11_32 = topicRef11.collection('questions').doc('question_32');
    await questionRef11_32.set({
      'questionId': '''32''',
      'order': 32,
      'statements': [
        {
          'text': '''Subhash Chandra Bose wrote 'The Indian Struggle'.''',
          'isCorrect': true,
        },
        {
          'text': '''Subhash Chandra Bose wrote 'A Nation in Making'.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef11_33 = topicRef11.collection('questions').doc('question_33');
    await questionRef11_33.set({
      'questionId': '''33''',
      'order': 33,
      'statements': [
        {
          'text': '''Lajpat Rai wrote autobiographical writings.''',
          'isCorrect': true,
        },
        {
          'text': '''Lajpat Rai never wrote any autobiographical writings.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef11_34 = topicRef11.collection('questions').doc('question_34');
    await questionRef11_34.set({
      'questionId': '''34''',
      'order': 34,
      'statements': [
        {
          'text': ''''Durgesh Nandini' is an important historical novel written during the latter half of the nineteenth century.''',
          'isCorrect': true,
        },
        {
          'text': ''''Durgesh Nandini' is an important historical novel written during the early twentieth century.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef11_35 = topicRef11.collection('questions').doc('question_35');
    await questionRef11_35.set({
      'questionId': '''35''',
      'order': 35,
      'statements': [
        {
          'text': ''''Vanguard' was an emigree Communist journal of M.N. Roy.''',
          'isCorrect': true,
        },
        {
          'text': ''''Vanguard' was an emigree Communist journal brought out by Shyamji Krishna Varma.''',
          'isCorrect': false,
        },
      ],
    });

    final topicRef12 = sectionRef.collection('topics').doc('''revolutionaries_and_revolutionary_movement''');
    await topicRef12.set({
      'name': '''Revolutionaries and Revolutionary Movement''',
      'order': 12,
    }, SetOptions(merge: true));

    final questionRef12_1 = topicRef12.collection('questions').doc('question_1');
    await questionRef12_1.set({
      'questionId': '''1''',
      'order': 1,
      'statements': [
        {
          'text': '''Rash Behari Bose was actively associated with the Ghadar Party, while Barindra Kumar Ghosh and Jogesh Chandra Chatterjee were not.''',
          'isCorrect': true,
        },
        {
          'text': '''Barindra Kumar Ghosh and Jogesh Chandra Chatterjee were actively associated with the Ghadar Party, while Rash Behari Bose was not.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef12_2 = topicRef12.collection('questions').doc('question_2');
    await questionRef12_2.set({
      'questionId': '''2''',
      'order': 2,
      'statements': [
        {
          'text': '''The Ghadar was a revolutionary association of Indians with its headquarters at San Francisco.''',
          'isCorrect': true,
        },
        {
          'text': '''The Ghadar was a militant faction within the Indian National Congress, with its headquarters at London.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef12_3 = topicRef12.collection('questions').doc('question_3');
    await questionRef12_3.set({
      'questionId': '''3''',
      'order': 3,
      'statements': [
        {
          'text': '''Usha Mehta is well-known for running the secret Congress radio in the wake of the Quit India Movement.''',
          'isCorrect': true,
        },
        {
          'text': '''Usha Mehta is well-known for organising the Chittagong Armoury Raid.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef12_4 = topicRef12.collection('questions').doc('question_4');
    await questionRef12_4.set({
      'questionId': '''4''',
      'order': 4,
      'statements': [
        {
          'text': '''Madam Bhikaji Cama served as private secretary to Dadabhai Naoroji and was born to Parsi parents.''',
          'isCorrect': true,
        },
        {
          'text': '''Madam Bhikaji Cama first unfurled the Indian national flag at the International Socialist Conference held in Paris in 1907.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef12_5 = topicRef12.collection('questions').doc('question_5');
    await questionRef12_5.set({
      'questionId': '''5''',
      'order': 5,
      'statements': [
        {
          'text': '''The Ghadar revolutionaries, who became active during the outbreak of World War I, were based in North America.''',
          'isCorrect': true,
        },
        {
          'text': '''The Ghadar revolutionaries, who became active during the outbreak of World War I, were based in Europe.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef12_6 = topicRef12.collection('questions').doc('question_6');
    await questionRef12_6.set({
      'questionId': '''6''',
      'order': 6,
      'statements': [
        {
          'text': '''The Chittagong Armoury Raid was organised by Surya Sen.''',
          'isCorrect': true,
        },
        {
          'text': '''The Chittagong Armoury Raid was organised by Rash Behari Bose.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef12_7 = topicRef12.collection('questions').doc('question_7');
    await questionRef12_7.set({
      'questionId': '''7''',
      'order': 7,
      'statements': [
        {
          'text': '''Kalpana Dutt is associated with the Chittagong Armoury Raid, Vikram Damodar Savarkar with the Abhinav Bharat, Aurobindo Ghosh with the Anushilan Samiti, and Guru Ram Singh with the Kuka Movement.''',
          'isCorrect': true,
        },
        {
          'text': '''Kalpana Dutt is associated with the Kuka Movement, Vikram Damodar Savarkar with the Anushilan Samiti, Aurobindo Ghosh with the Abhinav Bharat, and Guru Ram Singh with the Chittagong Armoury Raid.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef12_8 = topicRef12.collection('questions').doc('question_8');
    await questionRef12_8.set({
      'questionId': '''8''',
      'order': 8,
      'statements': [
        {
          'text': '''Abhinava Bharat, a secret society of revolutionaries, was organised by V. D. Savarkar.''',
          'isCorrect': true,
        },
        {
          'text': '''Abhinava Bharat, a secret society of revolutionaries, was organised by Aurobindo Ghosh.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef12_9 = topicRef12.collection('questions').doc('question_9');
    await questionRef12_9.set({
      'questionId': '''9''',
      'order': 9,
      'statements': [
        {
          'text': '''Lala Hardayal was the leader of the Ghadar Party.''',
          'isCorrect': true,
        },
        {
          'text': '''Rash Behari Bose was the leader of the Ghadar Party.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef12_10 = topicRef12.collection('questions').doc('question_10');
    await questionRef12_10.set({
      'questionId': '''10''',
      'order': 10,
      'statements': [
        {
          'text': '''Surya Sen is associated with the Chittagong Armoury Raid, Ram Prasad Bismil with the Kakori Conspiracy, Jatin Das with the Lahore Conspiracy, and Lala Hardayal with the Ghadar Party.''',
          'isCorrect': true,
        },
        {
          'text': '''Surya Sen is associated with the Kakori Conspiracy, Ram Prasad Bismil with the Chittagong Armoury Raid, Jatin Das with the Ghadar Party, and Lala Hardayal with the Lahore Conspiracy.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef12_11 = topicRef12.collection('questions').doc('question_11');
    await questionRef12_11.set({
      'questionId': '''11''',
      'order': 11,
      'statements': [
        {
          'text': '''V. D. Savarkar is associated with the Abhinav Bharat Society, Sri Aurobindo Ghosh with the Anushilan Samiti, Lala Hardayal with the Ghadar Party, and C. R. Das with the Swaraj Party.''',
          'isCorrect': true,
        },
        {
          'text': '''V. D. Savarkar is associated with the Anushilan Samiti, Sri Aurobindo Ghosh with the Abhinav Bharat Society, Lala Hardayal with the Swaraj Party, and C. R. Das with the Ghadar Party.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef12_12 = topicRef12.collection('questions').doc('question_12');
    await questionRef12_12.set({
      'questionId': '''12''',
      'order': 12,
      'statements': [
        {
          'text': '''The Barrah dacoity was the first major venture of the revolutionary terrorists of the freedom movement in East Bengal.''',
          'isCorrect': true,
        },
        {
          'text': '''The Barrah dacoity was the first major venture of the revolutionary terrorists of the freedom movement in Punjab.''',
          'isCorrect': false,
        },
      ],
    });

    final topicRef13 = sectionRef.collection('topics').doc('''development_of_modern_education_system''');
    await topicRef13.set({
      'name': '''Development of Modern Education System''',
      'order': 13,
    }, SetOptions(merge: true));

    final questionRef13_1 = topicRef13.collection('questions').doc('question_1');
    await questionRef13_1.set({
      'questionId': '''1''',
      'order': 1,
      'statements': [
        {
          'text': '''Ishwar Chandra Vidyasagar was associated as Secretary with the Hindu Female Schools, which later came to be known as Bethune Female School.''',
          'isCorrect': true,
        },
        {
          'text': '''Radhakanta Deb was associated as Secretary with the Hindu Female Schools, which later came to be known as Bethune Female School.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef13_2 = topicRef13.collection('questions').doc('question_2');
    await questionRef13_2.set({
      'questionId': '''2''',
      'order': 2,
      'statements': [
        {
          'text': '''Wellesley established the Fort William College, Calcutta, because he wanted to train British civilians for administrative purposes in India.''',
          'isCorrect': true,
        },
        {
          'text': '''Wellesley established the Fort William College, Calcutta, because he wanted to promote Western-style education among Indian students.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef13_3 = topicRef13.collection('questions').doc('question_3');
    await questionRef13_3.set({
      'questionId': '''3''',
      'order': 3,
      'statements': [
        {
          'text': '''The Wood's Dispatch introduced the Grants-in-Aid system and recommended the establishment of universities.''',
          'isCorrect': true,
        },
        {
          'text': '''The Wood's Dispatch recommended English as the sole medium of instruction at all levels and did not introduce the Grants-in-Aid system.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef13_4 = topicRef13.collection('questions').doc('question_4');
    await questionRef13_4.set({
      'questionId': '''4''',
      'order': 4,
      'statements': [
        {
          'text': '''Neither the Charter Act of 1813 nor the General Committee of Public Instruction, 1823 led to the introduction of English Education in India.''',
          'isCorrect': true,
        },
        {
          'text': '''Both the Charter Act of 1813 and the General Committee of Public Instruction, 1823 led to the introduction of English Education in India.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef13_5 = topicRef13.collection('questions').doc('question_5');
    await questionRef13_5.set({
      'questionId': '''5''',
      'order': 5,
      'statements': [
        {
          'text': '''The Calcutta Madarsa was founded by Warren Hastings.''',
          'isCorrect': true,
        },
        {
          'text': '''The Calcutta Madarsa was founded by Lord Curzon.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef13_6 = topicRef13.collection('questions').doc('question_6');
    await questionRef13_6.set({
      'questionId': '''6''',
      'order': 6,
      'statements': [
        {
          'text': '''In collaboration with David Hare and Alexander Duff, Raja Rammohan Roy established the Hindu College at Calcutta.''',
          'isCorrect': true,
        },
        {
          'text': '''David Hare single-handedly established the Hindu College at Calcutta, without any involvement of Raja Rammohan Roy.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef13_7 = topicRef13.collection('questions').doc('question_7');
    await questionRef13_7.set({
      'questionId': '''7''',
      'order': 7,
      'statements': [
        {
          'text': '''The aim of education as stated by the Wood's Dispatch of 1854 was the spread of western culture in India.''',
          'isCorrect': true,
        },
        {
          'text': '''The aim of education as stated by the Wood's Dispatch of 1854 was to preserve indigenous vernacular education without introducing western learning.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef13_8 = topicRef13.collection('questions').doc('question_8');
    await questionRef13_8.set({
      'questionId': '''8''',
      'order': 8,
      'statements': [
        {
          'text': '''The first-ever Bill to make primary education compulsory in India was rejected in 1911, because discontent would have increased if every cultivator could read.''',
          'isCorrect': true,
        },
        {
          'text': '''The first-ever Bill to make primary education compulsory in India was passed in 1911 without any opposition.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef13_9 = topicRef13.collection('questions').doc('question_9');
    await questionRef13_9.set({
      'questionId': '''9''',
      'order': 9,
      'statements': [
        {
          'text': '''The correct chronological sequence of events is Macaulay's Minute on Education, followed by Wood's Education Despatch, then the Indian Education (Hunter Commission), and finally the Sargeant Education Report.''',
          'isCorrect': true,
        },
        {
          'text': '''The correct chronological sequence of events is the Sargeant Education Report, followed by the Indian Education (Hunter Commission), then Wood's Education Despatch, and finally Macaulay's Minute on Education.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef13_10 = topicRef13.collection('questions').doc('question_10');
    await questionRef13_10.set({
      'questionId': '''10''',
      'order': 10,
      'statements': [
        {
          'text': '''The correct chronological order of these landmarks in Indian education is Hindu College Calcutta, Adam's Report, Wood's Despatch, and University of Calcutta.''',
          'isCorrect': true,
        },
        {
          'text': '''The correct chronological order of these landmarks in Indian education is Adam's Report, Hindu College Calcutta, University of Calcutta, and Wood's Despatch.''',
          'isCorrect': false,
        },
      ],
    });

    final topicRef14 = sectionRef.collection('topics').doc('''tribal_and_peasant_movements''');
    await topicRef14.set({
      'name': '''Tribal and Peasant Movements''',
      'order': 14,
    }, SetOptions(merge: true));

    final questionRef14_1 = topicRef14.collection('questions').doc('question_1');
    await questionRef14_1.set({
      'questionId': '''1''',
      'order': 1,
      'statements': [
        {
          'text': '''Indigo cultivation in India declined by the beginning of the 20th century because of its unprofitability in the world market due to new inventions.''',
          'isCorrect': true,
        },
        {
          'text': '''Indigo cultivation in India declined by the beginning of the 20th century because of government control over the planters.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef14_2 = topicRef14.collection('questions').doc('question_2');
    await questionRef14_2.set({
      'questionId': '''2''',
      'order': 2,
      'statements': [
        {
          'text': ''''Ulgulan' or the Great Tumult refers to Birsa Munda's Revolt of 1899-1900.''',
          'isCorrect': true,
        },
        {
          'text': ''''Ulgulan' or the Great Tumult refers to the Mappila Rebellion of 1921.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef14_3 = topicRef14.collection('questions').doc('question_3');
    await questionRef14_3.set({
      'questionId': '''3''',
      'order': 3,
      'statements': [
        {
          'text': '''After the Santhal rising subsided, the colonial Government created the territories called 'Santhal Paraganas' and made it illegal for a Santhal to transfer land to a Non-Santhal.''',
          'isCorrect': true,
        },
        {
          'text': '''After the Santhal rising subsided, the colonial Government neither created the territories called 'Santhal Paraganas' nor made it illegal for a Santhal to transfer land to a Non-Santhal.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef14_4 = topicRef14.collection('questions').doc('question_4');
    await questionRef14_4.set({
      'questionId': '''4''',
      'order': 4,
      'statements': [
        {
          'text': '''The demand for the Tebhaga Peasant Movement in Bengal was for reduction of rent to one-third of the produce.''',
          'isCorrect': true,
        },
        {
          'text': '''The demand for the Tebhaga Peasant Movement in Bengal was for a two-thirds share of the produce to the sharecroppers.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef14_5 = topicRef14.collection('questions').doc('question_5');
    await questionRef14_5.set({
      'questionId': '''5''',
      'order': 5,
      'statements': [
        {
          'text': '''The Sanyasi rebellion was made famous by Bankim Chandra Chatterjee in his novel Anand Math.''',
          'isCorrect': true,
        },
        {
          'text': '''The Bhil uprising was made famous by Bankim Chandra Chatterjee in his novel Anand Math.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef14_6 = topicRef14.collection('questions').doc('question_6');
    await questionRef14_6.set({
      'questionId': '''6''',
      'order': 6,
      'statements': [
        {
          'text': '''The chronological sequence of these events is Santhal Rebellion, Mutiny of the Sepoys, Indigo Revolt, and Deccan Riot.''',
          'isCorrect': true,
        },
        {
          'text': '''The chronological sequence of these events is Mutiny of the Sepoys, Santhal Rebellion, Indigo Revolt, and Deccan Riot.''',
          'isCorrect': false,
        },
      ],
    });

    final questionRef14_7 = topicRef14.collection('questions').doc('question_7');
    await questionRef14_7.set({
      'questionId': '''7''',
      'order': 7,
      'statements': [
        {
          'text': '''The Moplah revolt occurred in Kerala, the Pabna revolt in Bengal, the Eka Movement in Awadh, and the Birsa Munda revolt in Bihar.''',
          'isCorrect': true,
        },
        {
          'text': '''The Moplah revolt occurred in Bihar, the Pabna revolt in Bengal, the Eka Movement in Awadh, and the Birsa Munda revolt in Kerala.''',
          'isCorrect': false,
        },
      ],
    });

  }
}
