
import 'package:cloud_firestore/cloud_firestore.dart';

class GeographySeeder {
  GeographySeeder._();

  static final FirebaseFirestore _firestore = FirebaseFirestore.instance;


  static Future<void> geoSeed2() async {
    final subjectRef = _firestore.collection('subjects').doc('geography');

    await subjectRef.set({
      'name': 'Geography',
      'order': 4,
      'hasSections': false,
    }, SetOptions(merge: true));

    final topicRef10 = subjectRef.collection('topics').doc("indian_geography_map_based_questions");
    await topicRef10.set({
      'name': "Indian Geography - Map Based Questions",
      'order': 10,
    }, SetOptions(merge: true));

    await topicRef10.collection('questions').doc("1").set({
      'questionId': "1",
      'order': 1,
      'statements': [
        {'text': "Among Bengaluru, Hyderabad, Nagpur and Pune, Bengaluru lies on a longitude closest to that of Delhi.", 'isCorrect': true},
        {'text': "Among Bengaluru, Hyderabad, Nagpur and Pune, Hyderabad lies on a longitude closest to that of Delhi.", 'isCorrect': false},
      ],
    });
    await topicRef10.collection('questions').doc("2").set({
      'questionId': "2",
      'order': 2,
      'statements': [
        {'text': "If travelling by road from Kohima to Kottayam, the minimum number of States within India through which one can travel, including the origin and destination, is 7.", 'isCorrect': true},
        {'text': "If travelling by road from Kohima to Kottayam, the minimum number of States within India through which one can travel, including the origin and destination, is 6.", 'isCorrect': false},
      ],
    });
    await topicRef10.collection('questions').doc("3").set({
      'questionId': "3",
      'order': 3,
      'statements': [
        {'text': "Pulicat Lake is spread over two States only.", 'isCorrect': true},
        {'text': "In India, the Himalayas are spread over five States only, and the Western Ghats are spread over five States only.", 'isCorrect': false},
      ],
    });
    await topicRef10.collection('questions').doc("4").set({
      'questionId': "4",
      'order': 4,
      'statements': [
        {'text': "Sumatra is geographically closest to Great Nicobar.", 'isCorrect': true},
        {'text': "Sri Lanka is geographically closest to Great Nicobar.", 'isCorrect': false},
      ],
    });
    await topicRef10.collection('questions').doc("5").set({
      'questionId': "5",
      'order': 5,
      'statements': [
        {'text': "Arunachal Pradesh and Gujarat are the easternmost and westernmost States of India, respectively.", 'isCorrect': true},
        {'text': "Assam and Rajasthan are the easternmost and westernmost States of India, respectively.", 'isCorrect': false},
      ],
    });
    await topicRef10.collection('questions').doc("6").set({
      'questionId': "6",
      'order': 6,
      'statements': [
        {'text': "The Andaman and Nicobar Islands are separated from each other by the 'Ten Degree Channel'.", 'isCorrect': true},
        {'text': "The Nicobar Islands and Sumatra are separated from each other by the 'Ten Degree Channel'.", 'isCorrect': false},
      ],
    });
    await topicRef10.collection('questions').doc("7").set({
      'questionId': "7",
      'order': 7,
      'statements': [
        {'text': "The latitudes that pass through Sikkim also pass through Rajasthan.", 'isCorrect': true},
        {'text': "The latitudes that pass through Sikkim also pass through Jammu & Kashmir.", 'isCorrect': false},
      ],
    });
    await topicRef10.collection('questions').doc("8").set({
      'questionId': "8",
      'order': 8,
      'statements': [
        {'text': "In India, 9 States share the coastline.", 'isCorrect': true},
        {'text': "In India, 7 States share the coastline.", 'isCorrect': false},
      ],
    });
    await topicRef10.collection('questions').doc("9").set({
      'questionId': "9",
      'order': 9,
      'statements': [
        {'text': "Among Hyderabad, Bhopal, Lucknow and Bengaluru, Lucknow is the most eastward located city.", 'isCorrect': true},
        {'text': "Among Hyderabad, Bhopal, Lucknow and Bengaluru, Bengaluru is the most eastward located city.", 'isCorrect': false},
      ],
    });
    await topicRef10.collection('questions').doc("10").set({
      'questionId': "10",
      'order': 10,
      'statements': [
        {'text': "Among the four southern States, Karnataka alone shares boundaries with the maximum number of Indian States.", 'isCorrect': true},
        {'text': "Among the four southern States, Andhra Pradesh alone shares boundaries with the maximum number of Indian States.", 'isCorrect': false},
      ],
    });
    await topicRef10.collection('questions').doc("11").set({
      'questionId': "11",
      'order': 11,
      'statements': [
        {'text': "Assam shares a border with Bhutan and Bangladesh, West Bengal shares a border with Bhutan and Nepal, and Mizoram shares a border with Bangladesh and Myanmar.", 'isCorrect': true},
        {'text': "Assam shares a border with Nepal and Bangladesh, not Bhutan.", 'isCorrect': false},
      ],
    });
    await topicRef10.collection('questions').doc("12").set({
      'questionId': "12",
      'order': 12,
      'statements': [
        {'text': "Rajasthan, Chhattisgarh and Jharkhand border Uttar Pradesh.", 'isCorrect': true},
        {'text': "Punjab and Uttar Pradesh share a common border.", 'isCorrect': false},
      ],
    });
    await topicRef10.collection('questions').doc("13").set({
      'questionId': "13",
      'order': 13,
      'statements': [
        {'text': "The latitude of Aurangabad's location is between those of Vadodara and Pune, and Bangalore is situated more southward than Chennai.", 'isCorrect': true},
        {'text': "The longitude of Jabalpur's location is between those of Indore and Bhopal.", 'isCorrect': false},
      ],
    });
    await topicRef10.collection('questions').doc("14").set({
      'questionId': "14",
      'order': 14,
      'statements': [
        {'text': "Among Delhi, Kolkata, Jodhpur and Nagpur, Kolkata is nearest to the Tropic of Cancer.", 'isCorrect': true},
        {'text': "Among Delhi, Kolkata, Jodhpur and Nagpur, Nagpur is nearest to the Tropic of Cancer.", 'isCorrect': false},
      ],
    });
    await topicRef10.collection('questions').doc("15").set({
      'questionId': "15",
      'order': 15,
      'statements': [
        {'text': "The Palk Bay lies between the Gulf of Mannar and the Bay of Bengal.", 'isCorrect': true},
        {'text': "The Palk Bay lies between the Gulf of Kachchh and the Gulf of Khambhat.", 'isCorrect': false},
      ],
    });

    final topicRef11 = subjectRef.collection('topics').doc("indian_geography_mountains_glaciers_etc");
    await topicRef11.set({
      'name': "Indian Geography- Mountains, Glaciers etc.",
      'order': 11,
    }, SetOptions(merge: true));

    await topicRef11.collection('questions').doc("1").set({
      'questionId': "1",
      'order': 1,
      'statements': [
        {'text': "None of the statements about Amarkantak Hills being at the confluence of the Vindhya and Sahyadri Ranges, Biligirirangan Hills forming the easternmost part of the Satpura Range, or Seshachalam Hills forming the southernmost part of the Western Ghats is correct.", 'isCorrect': true},
        {'text': "Amarkantak Hills are at the confluence of the Vindhya and Sahyadri Ranges.", 'isCorrect': false},
      ],
    });
    await topicRef11.collection('questions').doc("2").set({
      'questionId': "2",
      'order': 2,
      'statements': [
        {'text': "Nanda Devi is correctly paired with the Kumaon Himalaya.", 'isCorrect': true},
        {'text': "Namcha Barwa is correctly paired with the Garhwal Himalaya.", 'isCorrect': false},
      ],
    });
    await topicRef11.collection('questions').doc("3").set({
      'questionId': "3",
      'order': 3,
      'statements': [
        {'text': "The Siachen Glacier is situated to the north of the Nubra Valley.", 'isCorrect': true},
        {'text': "The Siachen Glacier is situated to the east of Aksai Chin.", 'isCorrect': false},
      ],
    });
    await topicRef11.collection('questions').doc("4").set({
      'questionId': "4",
      'order': 4,
      'statements': [
        {'text': "The Barren Island volcano is an active volcano located in Indian territory.", 'isCorrect': true},
        {'text': "The Barren Island volcano last erupted in 1991 and has remained inactive since then.", 'isCorrect': false},
      ],
    });
    await topicRef11.collection('questions').doc("5").set({
      'questionId': "5",
      'order': 5,
      'statements': [
        {'text': "The Gadgil Committee Report and the Kasturirangan Committee Report are related to the protection of the Western Ghats.", 'isCorrect': true},
        {'text': "The Gadgil Committee Report and the Kasturirangan Committee Report are related to the Ganga Action Plan.", 'isCorrect': false},
      ],
    });
    await topicRef11.collection('questions').doc("6").set({
      'questionId': "6",
      'order': 6,
      'statements': [
        {'text': "Mahadeo Hills are correctly paired with Central India, and Mikir Hills are correctly paired with North-East India.", 'isCorrect': true},
        {'text': "Cardamom Hills are correctly paired with the Coromandel Coast.", 'isCorrect': false},
      ],
    });
    await topicRef11.collection('questions').doc("7").set({
      'questionId': "7",
      'order': 7,
      'statements': [
        {'text': "Deep gorges, U-turn river courses, parallel mountain ranges, and steep gradients causing landslides are all evidence of the Himalayas being young fold mountains.", 'isCorrect': true},
        {'text': "Only deep gorges and U-turn river courses, and not parallel mountain ranges or steep gradients, are evidence of the Himalayas being young fold mountains.", 'isCorrect': false},
      ],
    });
    await topicRef11.collection('questions').doc("8").set({
      'questionId': "8",
      'order': 8,
      'statements': [
        {'text': "If there were no Himalayan ranges, much of the country would experience cold waves from Siberia, the Indo-Gangetic plain would be devoid of extensive alluvial soils, and the monsoon pattern would be different from what it is at present.", 'isCorrect': true},
        {'text': "If there were no Himalayan ranges, only the cold waves from Siberia would be affected, with no impact on alluvial soils or the monsoon pattern.", 'isCorrect': false},
      ],
    });
    await topicRef11.collection('questions').doc("9").set({
      'questionId': "9",
      'order': 9,
      'statements': [
        {'text': "The Nilgiri Hills are found where the Eastern Ghats and the Western Ghats meet.", 'isCorrect': true},
        {'text': "The Cardamom Hills are found where the Eastern Ghats and the Western Ghats meet.", 'isCorrect': false},
      ],
    });
    await topicRef11.collection('questions').doc("10").set({
      'questionId': "10",
      'order': 10,
      'statements': [
        {'text': "The Guru Shikhar Peak is located in Rajasthan.", 'isCorrect': true},
        {'text': "The Guru Shikhar Peak is located in Gujarat.", 'isCorrect': false},
      ],
    });
    await topicRef11.collection('questions').doc("11").set({
      'questionId': "11",
      'order': 11,
      'statements': [
        {'text': "The Shevaroy Hills are located in Tamil Nadu.", 'isCorrect': true},
        {'text': "The Shevaroy Hills are located in Karnataka.", 'isCorrect': false},
      ],
    });
    await topicRef11.collection('questions').doc("12").set({
      'questionId': "12",
      'order': 12,
      'statements': [
        {'text': "The Nathu La pass was reopened around the middle of 2006 to facilitate trade between India and China.", 'isCorrect': true},
        {'text': "The Shipki La pass was reopened around the middle of 2006 to facilitate trade between India and China.", 'isCorrect': false},
      ],
    });
    await topicRef11.collection('questions').doc("13").set({
      'questionId': "13",
      'order': 13,
      'statements': [
        {'text': "Markha Valley is in Jammu and Kashmir, Dzukou Valley is in Nagaland, Sangla Valley is in Himachal Pradesh, and Yumthang Valley is in Sikkim.", 'isCorrect': true},
        {'text': "Markha Valley is in Sikkim, and Yumthang Valley is in Jammu and Kashmir.", 'isCorrect': false},
      ],
    });
    await topicRef11.collection('questions').doc("14").set({
      'questionId': "14",
      'order': 14,
      'statements': [
        {'text': "The Western Ghats are relatively higher in their southern region, not the northern region.", 'isCorrect': true},
        {'text': "The Western Ghats are relatively higher in their northern region.", 'isCorrect': false},
      ],
    });
    await topicRef11.collection('questions').doc("15").set({
      'questionId': "15",
      'order': 15,
      'statements': [
        {'text': "From north to south, the correct sequence of hills is Nallamalai Hills, Javadi Hills, Nilgiri Hills, and Anaimalai Hills.", 'isCorrect': true},
        {'text': "From north to south, the correct sequence of hills is Anaimalai Hills, Javadi Hills, Nilgiri Hills, and Nallamalai Hills.", 'isCorrect': false},
      ],
    });
    await topicRef11.collection('questions').doc("16").set({
      'questionId': "16",
      'order': 16,
      'statements': [
        {'text': "From north to south, the correct sequence is Mahadeo Hills, Satpura Range, then Sahyadri Parvat.", 'isCorrect': true},
        {'text': "From north to south, the correct sequence is Sahyadri Parvat, Mahadeo Hills, then Satpura Range.", 'isCorrect': false},
      ],
    });
    await topicRef11.collection('questions').doc("17").set({
      'questionId': "17",
      'order': 17,
      'statements': [
        {'text': "The Nanda Devi peak forms a part of the Kumaon Himalayas.", 'isCorrect': true},
        {'text': "The Nanda Devi peak forms a part of the Punjab Himalayas.", 'isCorrect': false},
      ],
    });
    await topicRef11.collection('questions').doc("18").set({
      'questionId': "18",
      'order': 18,
      'statements': [
        {'text': "The approximate age of the Aravalli range is 670 million years.", 'isCorrect': true},
        {'text': "The approximate age of the Aravalli range is 370 million years.", 'isCorrect': false},
      ],
    });
    await topicRef11.collection('questions').doc("19").set({
      'questionId': "19",
      'order': 19,
      'statements': [
        {'text': "The Deccan Traps date to the Cretaceous-Eocene period, the Western Ghats date to the Late Cenozoic, the Aravalli dates to the Pre-Cambrian, and the Narmada-Tapi rift dates to the Pleistocene.", 'isCorrect': true},
        {'text': "The Deccan Traps date to the Pre-Cambrian period, and the Aravalli dates to the Cretaceous-Eocene period.", 'isCorrect': false},
      ],
    });
    await topicRef11.collection('questions').doc("20").set({
      'questionId': "20",
      'order': 20,
      'statements': [
        {'text': "Saddle Peak, the highest peak of the Andaman and Nicobar Islands, is located in North Andaman.", 'isCorrect': true},
        {'text': "Saddle Peak, the highest peak of the Andaman and Nicobar Islands, is located in Great Nicobar.", 'isCorrect': false},
      ],
    });
    await topicRef11.collection('questions').doc("21").set({
      'questionId': "21",
      'order': 21,
      'statements': [
        {'text': "Among Aravalli, Satpura, Ajanta and Sahyadri, the Ajanta range is spread over only one State in India.", 'isCorrect': true},
        {'text': "Among Aravalli, Satpura, Ajanta and Sahyadri, the Aravalli range is spread over only one State in India.", 'isCorrect': false},
      ],
    });
    await topicRef11.collection('questions').doc("22").set({
      'questionId': "22",
      'order': 22,
      'statements': [
        {'text': "Arakan Yoma, an extension of the Himalayas, is located in Myanmar.", 'isCorrect': true},
        {'text': "Arakan Yoma, an extension of the Himalayas, is located in Nepal.", 'isCorrect': false},
      ],
    });

    final topicRef12 = subjectRef.collection('topics').doc("indian_geography_rocks_soil_minerals_etc");
    await topicRef12.set({
      'name': "Indian Geography - Rocks, Soil, Minerals etc.",
      'order': 12,
    }, SetOptions(merge: true));

    await topicRef12.collection('questions').doc("1").set({
      'questionId': "1",
      'order': 1,
      'statements': [
        {'text': "Monazite is a source of rare earths, it contains thorium, and in India only government bodies can process or export monazite.", 'isCorrect': true},
        {'text': "Monazite occurs naturally in the entire Indian coastal sands of India.", 'isCorrect': false},
      ],
    });
    await topicRef12.collection('questions').doc("2").set({
      'questionId': "2",
      'order': 2,
      'statements': [
        {'text': "The black cotton soil of India has been formed due to the weathering of fissure volcanic rock.", 'isCorrect': true},
        {'text': "The black cotton soil of India has been formed due to the weathering of granite and schist.", 'isCorrect': false},
      ],
    });
    await topicRef12.collection('questions').doc("3").set({
      'questionId': "3",
      'order': 3,
      'statements': [
        {'text': "Chromite, Kyanite, and Sillimanite are officially designated as major minerals in India.", 'isCorrect': true},
        {'text': "Bentonite is officially designated as a major mineral in India.", 'isCorrect': false},
      ],
    });
    await topicRef12.collection('questions').doc("4").set({
      'questionId': "4",
      'order': 4,
      'statements': [
        {'text': "Shale gas resources in India are found in the Cambay Basin, the Cauvery Basin, and the Krishna-Godavari Basin.", 'isCorrect': true},
        {'text': "Shale gas resources in India are found only in the Cambay Basin.", 'isCorrect': false},
      ],
    });
    await topicRef12.collection('questions').doc("5").set({
      'questionId': "5",
      'order': 5,
      'statements': [
        {'text': "In India, the problem of soil erosion is associated with deforestation.", 'isCorrect': true},
        {'text': "In India, the problem of soil erosion is associated with terrace cultivation and tropical climate, but not deforestation.", 'isCorrect': false},
      ],
    });
    await topicRef12.collection('questions').doc("6").set({
      'questionId': "6",
      'order': 6,
      'statements': [
        {'text': "Shale gas is not simply a mixture of propane and butane, and India does have identified shale gas sources besides coalbed methane.", 'isCorrect': true},
        {'text': "Coalbed methane is the pure methane gas extracted from coal seams, while shale gas is a mixture of propane and butane only that can be extracted from fine-grained sedimentary rocks.", 'isCorrect': false},
      ],
    });
    await topicRef12.collection('questions').doc("7").set({
      'questionId': "7",
      'order': 7,
      'statements': [
        {'text': "Laterite soils of India are generally red in colour, and Tapioca and Cashew nuts grow well on these soils.", 'isCorrect': true},
        {'text': "Laterite soils of India are rich in nitrogen and Potash, and are well-developed in Rajasthan and Uttar Pradesh.", 'isCorrect': false},
      ],
    });
    await topicRef12.collection('questions').doc("8").set({
      'questionId': "8",
      'order': 8,
      'statements': [
        {'text': "Mica occurs in abundance in Kodarma.", 'isCorrect': true},
        {'text': "Natural gas occurs in the Gondwana beds, and the Dharwars are famous for petroleum.", 'isCorrect': false},
      ],
    });
    await topicRef12.collection('questions').doc("9").set({
      'questionId': "9",
      'order': 9,
      'statements': [
        {'text': "Most of the power plants in India are coal-based and are not able to get sufficient supplies of coal from within the country, and steel companies need large quantities of coking coal which has to be imported.", 'isCorrect': true},
        {'text': "It is the policy of India to save its own coal reserves for future use and import coal from other countries for present use.", 'isCorrect': false},
      ],
    });
    await topicRef12.collection('questions').doc("10").set({
      'questionId': "10",
      'order': 10,
      'statements': [
        {'text': "The red colour of certain soils in India is mainly due to the presence of ferric oxides.", 'isCorrect': true},
        {'text': "The red colour of certain soils in India is mainly due to the abundance of magnesium.", 'isCorrect': false},
      ],
    });
    await topicRef12.collection('questions').doc("11").set({
      'questionId': "11",
      'order': 11,
      'statements': [
        {'text': "The Gondwana rocks are considered the most important rock system of India because more than 90% of India's coal reserves are found in them.", 'isCorrect': true},
        {'text': "The Gondwana rocks are considered the most important rock system of India because more than 90% of limestone reserves of India are found in them.", 'isCorrect': false},
      ],
    });
    await topicRef12.collection('questions').doc("12").set({
      'questionId': "12",
      'order': 12,
      'statements': [
        {'text': "More than 90% of India's national nickel sources are found in Orissa.", 'isCorrect': true},
        {'text': "More than 90% of India's national copper sources are found in Jharkhand.", 'isCorrect': false},
      ],
    });
    await topicRef12.collection('questions').doc("13").set({
      'questionId': "13",
      'order': 13,
      'statements': [
        {'text': "India does have deposits of Thorium, and Kerala's monazite sands do not contain Uranium.", 'isCorrect': true},
        {'text': "India does not have any deposits of Thorium.", 'isCorrect': false},
      ],
    });
    await topicRef12.collection('questions').doc("14").set({
      'questionId': "14",
      'order': 14,
      'statements': [
        {'text': "The Namchik-Namphuk Coalfields are located in Arunachal Pradesh.", 'isCorrect': true},
        {'text': "The Namchik-Namphuk Coalfields are located in Meghalaya.", 'isCorrect': false},
      ],
    });
    await topicRef12.collection('questions').doc("15").set({
      'questionId': "15",
      'order': 15,
      'statements': [
        {'text': "Bauxite, Dolomite, Iron ore, and Tin are all found naturally in the State of Chhattisgarh.", 'isCorrect': true},
        {'text': "Only Iron ore, and none of Bauxite, Dolomite or Tin, is found naturally in the State of Chhattisgarh.", 'isCorrect': false},
      ],
    });
    await topicRef12.collection('questions').doc("16").set({
      'questionId': "16",
      'order': 16,
      'statements': [
        {'text': "Balaghat is known for its manganese deposits, and Majhgawan is known for its diamond mines.", 'isCorrect': true},
        {'text': "Balaghat is known for its diamond mines, and Majhgawan is known for its manganese deposits.", 'isCorrect': false},
      ],
    });
    await topicRef12.collection('questions').doc("17").set({
      'questionId': "17",
      'order': 17,
      'statements': [
        {'text': "Ilmenite, Zircon, and Sillimanite are found in the beach sands of many parts of Kerala.", 'isCorrect': true},
        {'text': "Tungsten is found in the beach sands of many parts of Kerala.", 'isCorrect': false},
      ],
    });
    await topicRef12.collection('questions').doc("18").set({
      'questionId': "18",
      'order': 18,
      'statements': [
        {'text': "Coal is mined at Giridih, Copper at Alwar, Manganese at Dharwar, and Lignite at Jayamkondam.", 'isCorrect': true},
        {'text': "Coal is mined at Jayamkondam, and Lignite is mined at Giridih.", 'isCorrect': false},
      ],
    });
    await topicRef12.collection('questions').doc("19").set({
      'questionId': "19",
      'order': 19,
      'statements': [
        {'text': "The Ravva offshore block, with great potential for oil, is located in the Krishna-Godavari basin.", 'isCorrect': true},
        {'text': "The Ravva offshore block, with great potential for oil, is located in the Cauvery basin.", 'isCorrect': false},
      ],
    });
    await topicRef12.collection('questions').doc("20").set({
      'questionId': "20",
      'order': 20,
      'statements': [
        {'text': "Graphite is mined at Bellary, Lead at Zawar, Salt at Didwana, and Silver at Rampa.", 'isCorrect': true},
        {'text': "Graphite is mined at Zawar, and Lead is mined at Bellary.", 'isCorrect': false},
      ],
    });
    await topicRef12.collection('questions').doc("21").set({
      'questionId': "21",
      'order': 21,
      'statements': [
        {'text': "Coal typically occurs at Karanpura, Gold at Hutti, Mica at Nellore, and Manganese at Bhandara.", 'isCorrect': true},
        {'text': "Coal typically occurs at Bhandara, and Manganese occurs at Karanpura.", 'isCorrect': false},
      ],
    });
    await topicRef12.collection('questions').doc("22").set({
      'questionId': "22",
      'order': 22,
      'statements': [
        {'text': "Manganese is mined in Madhya Pradesh, Nickel in Orissa, Lead-zinc in Rajasthan, and Asbestos in Andhra Pradesh.", 'isCorrect': true},
        {'text': "Manganese is mined in Orissa, and Nickel is mined in Madhya Pradesh.", 'isCorrect': false},
      ],
    });

    final topicRef13 = subjectRef.collection('topics').doc("indian_geography_rivers_lakes_lagoons");
    await topicRef13.set({
      'name': "Indian Geography - Rivers, Lakes, Lagoons",
      'order': 13,
    }, SetOptions(merge: true));

    await topicRef13.collection('questions').doc("1").set({
      'questionId': "1",
      'order': 1,
      'statements': [
        {'text': "From west to east, the Himalayan rivers joining the Ganga downstream of Prayagraj are, in sequence, Gomati, Ghaghara, Gandak, and Kosi.", 'isCorrect': true},
        {'text': "From west to east, the Himalayan rivers joining the Ganga downstream of Prayagraj are, in sequence, Ghaghara, Gomati, Gandak, and Kosi.", 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc("2").set({
      'questionId': "2",
      'order': 2,
      'statements': [
        {'text': "Only one of the given waterfall-region-river rows (Dhuandhar-Malwa-Narmada, Hundru-Chota Nagpur-Subarnarekha, Gersoppa-Western Ghats-Netravati) is correctly matched.", 'isCorrect': true},
        {'text': "All three of the given waterfall-region-river rows are correctly matched.", 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc("3").set({
      'questionId': "3",
      'order': 3,
      'statements': [
        {'text': "Only one of the statements — Jhelum River passing through Wular Lake, Krishna River directly feeding Kolleru Lake, and meandering of Gandak River forming Kanwar Lake — is correct.", 'isCorrect': true},
        {'text': "All three statements about Jhelum-Wular Lake, Krishna-Kolleru Lake, and Gandak-Kanwar Lake are correct.", 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc("4").set({
      'questionId': "4",
      'order': 4,
      'statements': [
        {'text': "Only two of the given wetland/lake-location pairs are correctly matched.", 'isCorrect': true},
        {'text': "All four of the given wetland/lake-location pairs are correctly matched.", 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc("5").set({
      'questionId': "5",
      'order': 5,
      'statements': [
        {'text': "Only three of the given reservoir-state pairs are not correctly matched.", 'isCorrect': true},
        {'text': "Only one of the given reservoir-state pairs is not correctly matched.", 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc("6").set({
      'questionId': "6",
      'order': 6,
      'statements': [
        {'text': "Among Chenab, Jhelum, Ravi and Sutlej, the Sutlej is the river into which the other three pour before it joins the Indus directly.", 'isCorrect': true},
        {'text': "Among Chenab, Jhelum, Ravi and Sutlej, the Chenab is the river into which the other three pour before it joins the Indus directly.", 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc("7").set({
      'questionId': "7",
      'order': 7,
      'statements': [
        {'text': "Didwana, Kuchaman, Sargol and Khatu are the names of saline lakes.", 'isCorrect': true},
        {'text': "Didwana, Kuchaman, Sargol and Khatu are the names of Ramsar sites.", 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc("8").set({
      'questionId': "8",
      'order': 8,
      'statements': [
        {'text': "Nagavali and Vamsadhara rise from the Eastern Ghats.", 'isCorrect': true},
        {'text': "Brahmani and Subarnarekha rise from the Eastern Ghats.", 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc("9").set({
      'questionId': "9",
      'order': 9,
      'statements': [
        {'text': "The Central Ground Water Authority (CGWA) was formed under the Environment (Protection) Act.", 'isCorrect': true},
        {'text': "36% of India's districts are classified as 'overexploited' or 'critical' by the Central Ground Water Authority, and India has the largest area under groundwater irrigation in the world.", 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc("10").set({
      'questionId': "10",
      'order': 10,
      'statements': [
        {'text': "Aliyar, Isapur and Kangsabati are all water reservoirs.", 'isCorrect': true},
        {'text': "Aliyar, Isapur and Kangsabati are all tropical rain forests.", 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc("11").set({
      'questionId': "11",
      'order': 11,
      'statements': [
        {'text': "Pandharpur is correctly paired with the river Chandrabhaga, and Tiruchirappalli is correctly paired with the river Cauvery.", 'isCorrect': true},
        {'text': "Hampi is correctly paired with the river Malaprabha.", 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc("12").set({
      'questionId': "12",
      'order': 12,
      'statements': [
        {'text': "The Bandarpunch glacier feeds the Yamuna, the Bara Shigri glacier feeds the Chenab, and the Siachen glacier feeds the Nubra.", 'isCorrect': true},
        {'text': "The Milam glacier feeds the Mandakini, and the Zemu glacier feeds the Manas.", 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc("13").set({
      'questionId': "13",
      'order': 13,
      'statements': [
        {'text': "Among Kodaikanal, Kolleru, Nainital and Renuka, Kodaikanal is an artificial lake.", 'isCorrect': true},
        {'text': "Among Kodaikanal, Kolleru, Nainital and Renuka, Nainital is an artificial lake.", 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc("14").set({
      'questionId': "14",
      'order': 14,
      'statements': [
        {'text': "The river Rangeet originates in Sikkim and is a tributary of the river Teesta.", 'isCorrect': true},
        {'text': "The source of the river Teesta is the same as that of the Brahmaputra, and it flows into the Bay of Bengal on the border of India and Bangladesh.", 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc("15").set({
      'questionId': "15",
      'order': 15,
      'statements': [
        {'text': "Dibang, Kameng and Lohit are all tributaries of the Brahmaputra.", 'isCorrect': true},
        {'text': "Only Dibang, and not Kameng or Lohit, is a tributary of the Brahmaputra.", 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc("16").set({
      'questionId': "16",
      'order': 16,
      'statements': [
        {'text': "Indravati and Pranahita are tributaries of the Godavari.", 'isCorrect': true},
        {'text': "Vamsadhara and Pennar are tributaries of the Godavari.", 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc("17").set({
      'questionId': "17",
      'order': 17,
      'statements': [
        {'text': "Lohit and Subansiri flow through Arunachal Pradesh.", 'isCorrect': true},
        {'text': "Barak flows through Arunachal Pradesh.", 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc("18").set({
      'questionId': "18",
      'order': 18,
      'statements': [
        {'text': "The Narmada river flows to the west because it occupies a linear rift valley.", 'isCorrect': true},
        {'text': "The Narmada river flows to the west because the land slopes to the west from central India.", 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc("19").set({
      'questionId': "19",
      'order': 19,
      'statements': [
        {'text': "Bhitarkanika is the important biodiversity site formed near the coast of the Bay of Bengal where two rivers — one with its source in Jharkhand and another with its source in Odisha — merge.", 'isCorrect': true},
        {'text': "Simlipal is the important biodiversity site formed near the coast of the Bay of Bengal where two rivers merge.", 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc("20").set({
      'questionId': "20",
      'order': 20,
      'statements': [
        {'text': "The 'U' turn made by the Brahmaputra in its course to flow into India is due to the syntaxial bending of the geologically young Himalayas.", 'isCorrect': true},
        {'text': "The 'U' turn made by the Brahmaputra in its course to flow into India is due to the uplift of folded Himalayan series alone.", 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc("21").set({
      'questionId': "21",
      'order': 21,
      'statements': [
        {'text': "The river Luni is lost in the marshy land of the Rann of Kuchchh.", 'isCorrect': true},
        {'text': "The river Luni flows into the Gulf of Khambhat.", 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc("22").set({
      'questionId': "22",
      'order': 22,
      'statements': [
        {'text': "Among the given dam/lake-river pairs, 'Kolleru Lake - Krishna' is not correctly matched.", 'isCorrect': true},
        {'text': "Kolleru Lake is correctly matched with the river Krishna.", 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc("23").set({
      'questionId': "23",
      'order': 23,
      'statements': [
        {'text': "Beas, Chenab, Ravi, Satluj, and Yamuna are rivers that pass through Himachal Pradesh.", 'isCorrect': true},
        {'text': "Only Beas and Chenab, among the given rivers, pass through Himachal Pradesh.", 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc("24").set({
      'questionId': "24",
      'order': 24,
      'statements': [
        {'text': "There are east-flowing rivers in Kerala, and there are west-flowing rivers in Madhya Pradesh.", 'isCorrect': true},
        {'text': "There are no east-flowing rivers in Kerala, and no west-flowing rivers in Madhya Pradesh.", 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc("25").set({
      'questionId': "25",
      'order': 25,
      'statements': [
        {'text': "Among Beas, Chenab, Ravi and Sutlej, the Sutlej does not originate in India.", 'isCorrect': true},
        {'text': "Among Beas, Chenab, Ravi and Sutlej, the Chenab does not originate in India.", 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc("26").set({
      'questionId': "26",
      'order': 26,
      'statements': [
        {'text': "Amarkantak is the place where two important rivers of India originate, one flowing north to merge with a river flowing to the Bay of Bengal, and the other flowing towards the Arabian Sea.", 'isCorrect': true},
        {'text': "Mahabaleshwar is the place where two important rivers of India originate, one flowing north to merge with a river flowing to the Bay of Bengal, and the other flowing towards the Arabian Sea.", 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc("27").set({
      'questionId': "27",
      'order': 27,
      'statements': [
        {'text': "Jog Falls is correctly paired with the river Sharavati, and Sivasamudram Falls is correctly paired with the river Cauvery.", 'isCorrect': true},
        {'text': "Kapildhara Falls is correctly paired with the river Godavari.", 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc("28").set({
      'questionId': "28",
      'order': 28,
      'statements': [
        {'text': "The Manas is correctly paired as a tributary of the Brahmaputra.", 'isCorrect': true},
        {'text': "The Chambal is correctly paired as a tributary of the Narmada.", 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc("29").set({
      'questionId': "29",
      'order': 29,
      'statements': [
        {'text': "Betul is near the river Tapti, Jagdalpur is near the river Indravati, Jabalpur is near the river Narmada, and Ujjain is near the river Shipra.", 'isCorrect': true},
        {'text': "Betul is near the river Indravati, and Jagdalpur is near the river Tapti.", 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc("30").set({
      'questionId': "30",
      'order': 30,
      'statements': [
        {'text': "The river Narmada originates at Amarkantak.", 'isCorrect': true},
        {'text': "The river Mahanadi originates at Amarkantak.", 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc("31").set({
      'questionId': "31",
      'order': 31,
      'statements': [
        {'text': "The Deccan Plateau is higher along its western edge and gently slopes towards the Bay of Bengal in the east, but the river Kalinadi is not actually an east-flowing river in the southern part of India.", 'isCorrect': true},
        {'text': "River Kalinadi is an east-flowing river in the southern part of India.", 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc("32").set({
      'questionId': "32",
      'order': 32,
      'statements': [
        {'text': "From north towards south, the correct sequence of the rivers is Shyok, Zaskar, Spiti, and Satluj.", 'isCorrect': true},
        {'text': "From north towards south, the correct sequence of the rivers is Shyok, Spiti, Zaskar, and Satluj.", 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc("33").set({
      'questionId': "33",
      'order': 33,
      'statements': [
        {'text': "Lake Sambhar is nearest to the city of Jaipur, Rajasthan.", 'isCorrect': true},
        {'text': "Lake Sambhar is nearest to the city of Jodhpur, Rajasthan.", 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc("34").set({
      'questionId': "34",
      'order': 34,
      'statements': [
        {'text': "West-flowing rivers of Peninsular India have no deltas, but this is not because they carry no alluvial sediments.", 'isCorrect': true},
        {'text': "West-flowing rivers of Peninsular India have no deltas because these rivers do not carry any alluvial sediments.", 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc("35").set({
      'questionId': "35",
      'order': 35,
      'statements': [
        {'text': "In descending order of length, the correct sequence of the rivers is Godavari, Narmada, Mahanadi, and Tapi.", 'isCorrect': true},
        {'text': "In descending order of length, the correct sequence of the rivers is Godavari, Mahanadi, Narmada, and Tapi.", 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc("36").set({
      'questionId': "36",
      'order': 36,
      'statements': [
        {'text': "Among Ashtamudi, Chilka, Periyar and Pulicat lakes, Periyar lake is not a lagoon.", 'isCorrect': true},
        {'text': "Among Ashtamudi, Chilka, Periyar and Pulicat lakes, Chilka lake is not a lagoon.", 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc("37").set({
      'questionId': "37",
      'order': 37,
      'statements': [
        {'text': "The correct north-to-south sequence of eastward-flowing rivers of peninsular India is Subarnarekha, Mahanadi, Godavari, Krishna, Pennar, Cauvery, and Vagai.", 'isCorrect': true},
        {'text': "The correct north-to-south sequence of eastward-flowing rivers of peninsular India is Mahanadi, Subarnarekha, Godavari, Krishna, Cauvery, Pennar, and Vagai.", 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc("38").set({
      'questionId': "38",
      'order': 38,
      'statements': [
        {'text': "Narmada rises from the Amarkantak region, Nizam Sagar is situated on the Manjra river, and Penganga is a tributary of the Godavari.", 'isCorrect': true},
        {'text': "Ghaggar's water is utilised in the Indira Gandhi Canal.", 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc("39").set({
      'questionId': "39",
      'order': 39,
      'statements': [
        {'text': "The frequency of floods in North Indian plains has increased during the last couple of decades because there has been a reduction in the depth of river valleys due to deposition of silt.", 'isCorrect': true},
        {'text': "The frequency of floods in North Indian plains has not increased during the last couple of decades.", 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc("40").set({
      'questionId': "40",
      'order': 40,
      'statements': [
        {'text': "The Ganga Plain is the most densely populated part of India, and the Ganga is the most harnessed river of India, though the latter does not fully explain the former.", 'isCorrect': true},
        {'text': "The Ganga Plain is not the most densely populated part of India.", 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc("41").set({
      'questionId': "41",
      'order': 41,
      'statements': [
        {'text': "Among Damodar, Mahanadi, Sone and Yamuna, the Damodar is the east-flowing river of India with a rift valley due to down-warping.", 'isCorrect': true},
        {'text': "Among Damodar, Mahanadi, Sone and Yamuna, the Mahanadi is the east-flowing river of India with a rift valley due to down-warping.", 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc("42").set({
      'questionId': "42",
      'order': 42,
      'statements': [
        {'text': "The river Cauvery thrice forks into two streams and reunites a few miles further on, forming the islands of Srirangapatnam, Sivasamudram and Srirangam.", 'isCorrect': true},
        {'text': "The river Krishna thrice forks into two streams and reunites a few miles further on, forming the islands of Srirangapatnam, Sivasamudram and Srirangam.", 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc("43").set({
      'questionId': "43",
      'order': 43,
      'statements': [
        {'text': "The correct north-to-south sequence of the rivers Kishenganga, Ganga, Wainganga, and Penganga is Kishenganga, Ganga, Wainganga, Penganga.", 'isCorrect': true},
        {'text': "The correct north-to-south sequence of the rivers Kishenganga, Ganga, Wainganga, and Penganga is Ganga, Kishenganga, Wainganga, Penganga.", 'isCorrect': false},
      ],
    });

    print('Geography True/False seeding completed.');
  }

  static Future<void> geoSeed1() async {
    final subjectRef =
        _firestore.collection('subjects').doc('geography');

    await subjectRef.set({
      'name': 'Geography',
      'order': 4,
      'hasSections': false,
    }, SetOptions(merge: true));

    final topicRef7 =
        subjectRef.collection('topics').doc("physical_geography_geomorphology");
    await topicRef7.set({
      'name': "Physical Geography - Geomorphology",
      'order': 7,
    }, SetOptions(merge: true));

    await topicRef7.collection('questions').doc("1").set({
      'questionId': "1",
      'order': 1,
      'statements': [
        {'text': "Anadyr in Siberia and Nome in Alaska are only a few kilometers apart, but because the International Date Line runs between them, it is a different calendar day in each place even at the same local time, such as breakfast time.", 'isCorrect': true},
        {'text': "When it is Monday in Anadyr, it is Tuesday in Nome, since Nome lies just across the International Date Line to the east.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("2").set({
      'questionId': "2",
      'order': 2,
      'statements': [
        {'text': "Evidence of continental drift includes the matching belt of ancient rocks between Brazil and West Africa, Ghana's gold deposits originating from the Brazilian plateau, and the Gondwana sediment system in India having counterparts across six landmasses of the Southern Hemisphere.", 'isCorrect': true},
        {'text': "There is no matching evidence between the ancient rock belts of Brazil and West Africa to support the theory of continental drift.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("3").set({
      'questionId': "3",
      'order': 3,
      'statements': [
        {'text': "Both the bombardment of Earth's atmosphere by solar flares and coronal mass ejections, and the movement of polar meltwater toward the equator, are real phenomena, but only the redistribution of polar meltwater toward the equator explains the observed shift in Earth's rotation and axis.", 'isCorrect': true},
        {'text': "Both solar flares/coronal mass ejections and the movement of polar meltwater toward the equator equally explain the shift observed in Earth's rotation and axis.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("4").set({
      'questionId': "4",
      'order': 4,
      'statements': [
        {'text': "Chalk is a highly porous rock that readily absorbs water, which explains why it is highly permeable, whereas clay's low permeability is due to its extremely fine pore structure impeding water flow, not because it is completely non-porous.", 'isCorrect': true},
        {'text': "Clay is not at all porous, and this total absence of porosity is why it is such an impermeable rock.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("5").set({
      'questionId': "5",
      'order': 5,
      'statements': [
        {'text': "Pyroclastic debris, ash and dust, nitrogen compounds, and sulphur compounds are all products of volcanic eruptions.", 'isCorrect': true},
        {'text': "Nitrogen compounds and sulphur compounds are not products of volcanic eruptions; only ash, dust and pyroclastic debris are released.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("6").set({
      'questionId': "6",
      'order': 6,
      'statements': [
        {'text': "Rainwater contains both dissolved carbon dioxide and atmospheric oxygen, and both of these dissolved gases contribute to the chemical weathering of rocks by rainfall.", 'isCorrect': true},
        {'text': "Rainwater contains only dissolved carbon dioxide, and dissolved oxygen plays no role in the weathering of rocks.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("7").set({
      'questionId': "7",
      'order': 7,
      'statements': [
        {'text': "On June 21, the Tropic of Cancer and the Arctic Circle experience more than 12 hours of sunlight, while the Equator experiences close to 12 hours and the Tropic of Capricorn experiences less than 12 hours.", 'isCorrect': true},
        {'text': "On June 21, the Equator and the Tropic of Capricorn experience more than 12 hours of sunlight, while the Tropic of Cancer experiences less than 12 hours.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("8").set({
      'questionId': "8",
      'order': 8,
      'statements': [
        {'text': "Ilmenite and rutile, abundant in certain coastal tracts of India, are rich sources of titanium.", 'isCorrect': true},
        {'text': "Ilmenite and rutile, abundant in certain coastal tracts of India, are rich sources of aluminium.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("9").set({
      'questionId': "9",
      'order': 9,
      'statements': [
        {'text': "In a seismograph, P waves are recorded earlier than S waves, because P waves' particles vibrate to and fro in the direction of wave propagation, while S waves' particles vibrate at right angles to the direction of propagation.", 'isCorrect': true},
        {'text': "In a seismograph, S waves are recorded earlier than P waves, since S waves travel faster through the Earth's interior.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("10").set({
      'questionId': "10",
      'order': 10,
      'statements': [
        {'text': "In the Northern Hemisphere, the longest day of the year normally occurs in the second half of the month of June.", 'isCorrect': true},
        {'text': "In the Northern Hemisphere, the longest day of the year normally occurs in the first half of the month of July.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("11").set({
      'questionId': "11",
      'order': 11,
      'statements': [
        {'text': "On 21st June, the Sun does not set below the horizon at the Arctic Circle.", 'isCorrect': true},
        {'text': "On 21st June, the Sun shines vertically overhead at noon on the Equator.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("12").set({
      'questionId': "12",
      'order': 12,
      'statements': [
        {'text': "The term 'Denisovan' refers to an early human species, a group of extinct archaic humans.", 'isCorrect': true},
        {'text': "The term 'Denisovan' refers to a cave system found in North-East India.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("13").set({
      'questionId': "13",
      'order': 13,
      'statements': [
        {'text': "Heavy sand mining in riverbeds can lead to pollution of groundwater and lowering of the water table, but it does not decrease the salinity of the water.", 'isCorrect': true},
        {'text': "Heavy sand mining in riverbeds primarily results in decreased salinity of the water, with little effect on groundwater or the water table.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("14").set({
      'questionId': "14",
      'order': 14,
      'statements': [
        {'text': "Both continental drift and glacial cycles are phenomena that might have influenced the evolution of organisms.", 'isCorrect': true},
        {'text': "Neither continental drift nor glacial cycles had any influence on the evolution of organisms.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("15").set({
      'questionId': "15",
      'order': 15,
      'statements': [
        {'text': "Variations in the length of daytime and night-time from season to season are due to the Earth's revolution around the Sun on a tilted axis.", 'isCorrect': true},
        {'text': "Variations in the length of daytime and night-time from season to season are due to the Earth's rotation on its own axis.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("16").set({
      'questionId': "16",
      'order': 16,
      'statements': [
        {'text': "Excluding ice caps and glaciers, the largest proportion of Earth's freshwater exists as groundwater.", 'isCorrect': true},
        {'text': "Excluding ice caps and glaciers, the largest proportion of Earth's freshwater exists in freshwater lakes and rivers.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("17").set({
      'questionId': "17",
      'order': 17,
      'statements': [
        {'text': "Electromagnetic radiation, geothermal energy, gravitational force, plate movements, and the rotation and revolution of the Earth are all responsible for bringing about dynamic changes on the Earth's surface.", 'isCorrect': true},
        {'text': "Only plate movements and geothermal energy are responsible for bringing about dynamic changes on the Earth's surface; solar radiation and the Earth's rotation play no role.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("18").set({
      'questionId': "18",
      'order': 18,
      'statements': [
        {'text': "Contour Bunding, as a method of soil conservation, is primarily used on sloping agricultural lands to reduce runoff, not specifically on desert margins, flood-prone flat plains, or weed-infested scrublands.", 'isCorrect': true},
        {'text': "Contour Bunding is a method of soil conservation specifically used on desert margins that are liable to strong wind action.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("19").set({
      'questionId': "19",
      'order': 19,
      'statements': [
        {'text': "Carbon, Hydrogen, and Nitrogen are considered the set of elements primarily responsible for the origin of life on Earth.", 'isCorrect': true},
        {'text': "Hydrogen, Oxygen, and Sodium are considered the set of elements primarily responsible for the origin of life on Earth.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("20").set({
      'questionId': "20",
      'order': 20,
      'statements': [
        {'text': "To walk east while using the polestar (which indicates north) as a directional guide, a person should walk keeping the polestar to his left.", 'isCorrect': true},
        {'text': "To walk east while using the polestar as a directional guide, a person should walk keeping the polestar to his right.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("21").set({
      'questionId': "21",
      'order': 21,
      'statements': [
        {'text': "Crop rotation, sand fences, terracing, and wind breaks are all considered appropriate methods for soil conservation in India.", 'isCorrect': true},
        {'text': "Only terracing and crop rotation are considered appropriate methods for soil conservation in India; sand fences and wind breaks are not relevant.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("22").set({
      'questionId': "22",
      'order': 22,
      'statements': [
        {'text': "Below the mantle, the Earth's core is mainly composed of iron.", 'isCorrect': true},
        {'text': "Below the mantle, the Earth's core is mainly composed of silicon.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("23").set({
      'questionId': "23",
      'order': 23,
      'statements': [
        {'text': "The Photoelectric Effect is correctly associated with Albert Einstein; the theory of Continental Drift is associated with Alfred Wegener, and the Expansion of the Universe is associated with Edwin Hubble.", 'isCorrect': true},
        {'text': "The theory of Continental Drift is correctly associated with Edwin Hubble, and the Expansion of the Universe is correctly associated with Alfred Wegener.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("24").set({
      'questionId': "24",
      'order': 24,
      'statements': [
        {'text': "In order of distance from the Sun, Jupiter and Saturn lie between Mars and Uranus.", 'isCorrect': true},
        {'text': "In order of distance from the Sun, Earth and Jupiter lie between Mars and Uranus.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("25").set({
      'questionId': "25",
      'order': 25,
      'statements': [
        {'text': "The Earth moves around the Sun in its orbit at an approximate mean velocity of 30 km/s.", 'isCorrect': true},
        {'text': "The Earth moves around the Sun in its orbit at an approximate mean velocity of 20 km/s.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("26").set({
      'questionId': "26",
      'order': 26,
      'statements': [
        {'text': "The same face of the Moon is always presented to the Earth because the Moon's rotation period about its own axis is about the same as the time it takes to orbit the Earth, roughly 27 days, not 23 days.", 'isCorrect': true},
        {'text': "The same face of the Moon is always presented to the Earth because the Moon rotates about its own axis in exactly 23 days, matching its orbital period.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("27").set({
      'questionId': "27",
      'order': 27,
      'statements': [
        {'text': "The existence of human life on Venus is highly improbable, largely because Venus has an extremely high level of carbon dioxide in its atmosphere.", 'isCorrect': true},
        {'text': "The existence of human life on Venus is highly improbable, but this has no connection to the high level of carbon dioxide in its atmosphere.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("28").set({
      'questionId': "28",
      'order': 28,
      'statements': [
        {'text': "The Earth's magnetic north pole is located on a peninsula in northern Canada, and the Earth's magnetic equator passes through Thumba in South India.", 'isCorrect': true},
        {'text': "The axis of the Earth's magnetic field is inclined at 23 degrees to the Earth's geographic axis.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("29").set({
      'questionId': "29",
      'order': 29,
      'statements': [
        {'text': "Earth's total land area is approximately 1475 lakh square kilometres, and the Pacific Ocean holds the maximum percentage of Earth's water.", 'isCorrect': true},
        {'text': "The ratio of Earth's land area to water area is approximately 1:4.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("30").set({
      'questionId': "30",
      'order': 30,
      'statements': [
        {'text': "In decreasing order of their percentage of the Earth's land, among these continents the correct order is Africa, North America, South America, and Europe.", 'isCorrect': true},
        {'text': "In decreasing order of their percentage of the Earth's land, the correct order is North America, Africa, South America, and Europe.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("31").set({
      'questionId': "31",
      'order': 31,
      'statements': [
        {'text': "Development of a fault, movement along a fault, the impact produced by a volcanic eruption, and the folding of rocks can all cause earthquakes.", 'isCorrect': true},
        {'text': "Only movement along a fault causes earthquakes; volcanic eruptions and the folding of rocks do not contribute to seismic activity.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("32").set({
      'questionId': "32",
      'order': 32,
      'statements': [
        {'text': "The correct sequential order of soil erosion processes is: splash erosion, sheet erosion, rill erosion, and finally gully erosion.", 'isCorrect': true},
        {'text': "The correct sequential order of soil erosion processes is: sheet erosion, splash erosion, gully erosion, and finally rill erosion.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("33").set({
      'questionId': "33",
      'order': 33,
      'statements': [
        {'text': "Most magmas are a combination of liquid, solid, and gas; water vapour and carbon dioxide are the principal gases dissolved in magma; and basaltic magma is hotter than silicic magma.", 'isCorrect': true},
        {'text': "Magma that solidifies in a horizontal position between layers of sedimentary rock is known as a dike.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("34").set({
      'questionId': "34",
      'order': 34,
      'statements': [
        {'text': "The intensity of an earthquake is measured on the Mercalli scale, while its magnitude, a measure of the energy released, is based on direct measurement of the amplitude of seismic waves.", 'isCorrect': true},
        {'text': "On the Richter scale, each whole number increase represents a hundredfold increase in the amount of energy released.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("35").set({
      'questionId': "35",
      'order': 35,
      'statements': [
        {'text': "Sedimentary rocks are formed at the Earth's surface by the hydrological system, involve the weathering of pre-existing rocks, often contain fossils, and typically occur in layers.", 'isCorrect': true},
        {'text': "Sedimentary rocks are formed deep within the Earth's mantle under extreme heat and pressure, and rarely occur in layers.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("36").set({
      'questionId': "36",
      'order': 36,
      'statements': [
        {'text': "Volcanic eruptions do not occur in the Baltic Sea, unlike in the Caribbean Sea, Black Sea, and Caspian Sea regions which have volcanic activity.", 'isCorrect': true},
        {'text': "Volcanic eruptions do not occur in the Caribbean Sea.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("37").set({
      'questionId': "37",
      'order': 37,
      'statements': [
        {'text': "A ship crossing the 180-degree meridian westward at 23:30 hrs on January 1, 1999 would record the time as January 2, 0030 hrs after one hour of onward journey, since crossing the date line westward adds a day.", 'isCorrect': true},
        {'text': "A ship crossing the 180-degree meridian westward would record the time as January 1, 0030 hrs after one hour of onward journey, since crossing the date line does not change the calendar date.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("38").set({
      'questionId': "38",
      'order': 38,
      'statements': [
        {'text': "O. Schmidt is the scholar who suggested that the Earth originated from gases and dust particles.", 'isCorrect': true},
        {'text': "James Jeans is the scholar who suggested that the Earth originated from gases and dust particles.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("39").set({
      'questionId': "39",
      'order': 39,
      'statements': [
        {'text': "Anthracite coal contains a higher percentage of carbon than bituminous coal, lignite, or peat.", 'isCorrect': true},
        {'text': "Peat contains a higher percentage of carbon than anthracite, bituminous coal, or lignite.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("40").set({
      'questionId': "40",
      'order': 40,
      'statements': [
        {'text': "If it is noon at the Greenwich Meridian while people at another place are having their 6 o'clock morning tea, that place is located at approximately 90 degrees West longitude.", 'isCorrect': true},
        {'text': "If it is noon at the Greenwich Meridian while people at another place are having their 6 o'clock morning tea, that place is located at approximately 172 degrees 30 minutes East longitude.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("41").set({
      'questionId': "41",
      'order': 41,
      'statements': [
        {'text': "If the Earth's direction of rotation were reversed, the Indian Standard Time when it is noon at the International Date Line would be 18:30 hrs.", 'isCorrect': true},
        {'text': "If the Earth's direction of rotation were reversed, the Indian Standard Time when it is noon at the International Date Line would be 05:30 hrs.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("42").set({
      'questionId': "42",
      'order': 42,
      'statements': [
        {'text': "Oxygen is present in the largest amount, in terms of percentage by mass, in the Earth's crust.", 'isCorrect': true},
        {'text': "Silicon is present in the largest amount, in terms of percentage by mass, in the Earth's crust.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("43").set({
      'questionId': "43",
      'order': 43,
      'statements': [
        {'text': "In order of standard time from ahead of GMT to behind GMT, the correct sequence among Japan, Iraq, Greece, Cuba, and Costa Rica is: Japan, Iraq, Greece, Cuba, Costa Rica.", 'isCorrect': true},
        {'text': "In order of standard time from ahead of GMT to behind GMT, the correct sequence is: Greece, Costa Rica, Cuba, Iraq, Japan.", 'isCorrect': false},
      ],
    });

    final topicRef8 =
        subjectRef.collection('topics').doc("physical_geography_climatology");
    await topicRef8.set({
      'name': "Physical Geography - Climatology",
      'order': 8,
    }, SetOptions(merge: true));

    await topicRef8.collection('questions').doc("1").set({
      'questionId': "1",
      'order': 1,
      'statements': [
        {'text': "The amount of dust particles in the atmosphere is higher in subtropical and temperate areas than in equatorial and polar regions, because these regions have more dry winds, not fewer.", 'isCorrect': true},
        {'text': "Subtropical and temperate areas have fewer dry winds than equatorial and polar regions, which is why they have more atmospheric dust.", 'isCorrect': false},
      ],
    });
    await topicRef8.collection('questions').doc("2").set({
      'questionId': "2",
      'order': 2,
      'statements': [
        {'text': "Without the atmosphere, temperatures would be well below freezing everywhere on Earth; heat absorbed and trapped by the atmosphere maintains the planet's average temperature; and gases like carbon dioxide are particularly good at absorbing and trapping radiation.", 'isCorrect': true},
        {'text': "The atmosphere plays no significant role in maintaining the Earth's average temperature; surface temperatures would remain largely unchanged without it.", 'isCorrect': false},
      ],
    });
    await topicRef8.collection('questions').doc("3").set({
      'questionId': "3",
      'order': 3,
      'statements': [
        {'text': "Artificial rainfall to reduce air pollution typically makes use of silver iodide and potassium iodide as cloud-seeding agents.", 'isCorrect': true},
        {'text': "Artificial rainfall to reduce air pollution typically makes use of silver nitrate and potassium chloride as cloud-seeding agents.", 'isCorrect': false},
      ],
    });
    await topicRef8.collection('questions').doc("4").set({
      'questionId': "4",
      'order': 4,
      'statements': [
        {'text': "The atmosphere is heated more by terrestrial (outgoing long-wave) radiation than by incoming solar radiation, because carbon dioxide and other greenhouse gases are good absorbers of long-wave radiation.", 'isCorrect': true},
        {'text': "The atmosphere is heated more by incoming solar radiation than by terrestrial radiation, since greenhouse gases mainly absorb short-wave solar radiation.", 'isCorrect': false},
      ],
    });
    await topicRef8.collection('questions').doc("5").set({
      'questionId': "5",
      'order': 5,
      'statements': [
        {'text': "The troposphere is much thicker at the equator than at the poles, because strong convectional currents at the equator transport heat to great heights.", 'isCorrect': true},
        {'text': "The troposphere is much thicker at the poles than at the equator, due to stronger convectional currents at the poles.", 'isCorrect': false},
      ],
    });
    await topicRef8.collection('questions').doc("6").set({
      'questionId': "6",
      'order': 6,
      'statements': [
        {'text': "The amount of water vapour in the atmosphere decreases with altitude, and its percentage is maximum near the equator, not at the poles.", 'isCorrect': true},
        {'text': "The percentage of water vapour in the atmosphere is maximum at the poles, where cold air is said to hold the most moisture.", 'isCorrect': false},
      ],
    });
    await topicRef8.collection('questions').doc("7").set({
      'questionId': "7",
      'order': 7,
      'statements': [
        {'text': "A climate with a low annual and daily temperature range, precipitation occurring throughout the year, and precipitation between 50 and 250 cm, describes the Marine West Coast climate.", 'isCorrect': true},
        {'text': "A climate with a low annual and daily temperature range, precipitation occurring throughout the year, and precipitation between 50 and 250 cm, describes the Equatorial climate.", 'isCorrect': false},
      ],
    });
    await topicRef8.collection('questions').doc("8").set({
      'questionId': "8",
      'order': 8,
      'statements': [
        {'text': "The Coriolis force increases with an increase in wind velocity, and it is maximum at the poles while being absent at the equator.", 'isCorrect': true},
        {'text': "The Coriolis force decreases with an increase in wind velocity, and it is maximum at the equator while being absent at the poles.", 'isCorrect': false},
      ],
    });
    await topicRef8.collection('questions').doc("9").set({
      'questionId': "9",
      'order': 9,
      'statements': [
        {'text': "Infrared waves in solar radiation are largely absorbed by water vapour, which is concentrated in the lower atmosphere.", 'isCorrect': true},
        {'text': "The total amount of insolation received at the equator is roughly ten times that received at the poles.", 'isCorrect': false},
      ],
    });
    await topicRef8.collection('questions').doc("10").set({
      'questionId': "10",
      'order': 10,
      'statements': [
        {'text': "The soil in tropical rain forests is generally poor in nutrients, because the high temperature and moisture cause dead organic matter to decompose quickly, with nutrients rapidly leached away rather than accumulating.", 'isCorrect': true},
        {'text': "The soil in tropical rain forests is rich in nutrients, because the high temperature and moisture cause dead organic matter to decompose quickly and enrich the soil.", 'isCorrect': false},
      ],
    });
    await topicRef8.collection('questions').doc("11").set({
      'questionId': "11",
      'order': 11,
      'statements': [
        {'text': "High clouds tend to trap outgoing infrared radiation and cause a warming effect, while low clouds primarily reflect incoming solar radiation and cause a cooling effect.", 'isCorrect': true},
        {'text': "High clouds primarily reflect solar radiation and cool the Earth's surface, while low clouds absorb infrared radiation and cause a warming effect.", 'isCorrect': false},
      ],
    });
    await topicRef8.collection('questions').doc("12").set({
      'questionId': "12",
      'order': 12,
      'statements': [
        {'text': "Forest development in savannah areas is generally kept in check by a combination of fire, grazing herbivores, and seasonal rainfall.", 'isCorrect': true},
        {'text': "Forest development in savannah areas is generally kept in check mainly by burrowing animals, termites, and soil properties, rather than by fire or grazing herbivores.", 'isCorrect': false},
      ],
    });
    await topicRef8.collection('questions').doc("13").set({
      'questionId': "13",
      'order': 13,
      'statements': [
        {'text': "A biome where leaf litter decomposes faster than in any other biome, leaving the soil surface often bare, and where much vegetation reaches the canopy by climbing trees or growing as epiphytes, describes the Tropical rainforest.", 'isCorrect': true},
        {'text': "A biome where leaf litter decomposes faster than in any other biome and much vegetation grows as epiphytes describes the Coniferous forest.", 'isCorrect': false},
      ],
    });
    await topicRef8.collection('questions').doc("14").set({
      'questionId': "14",
      'order': 14,
      'statements': [
        {'text': "Only some cyclones develop a distinct 'eye'; jet streams occur in both the Northern and Southern Hemispheres, and the temperature inside a cyclone's eye is actually warmer than its surroundings, not cooler.", 'isCorrect': true},
        {'text': "Jet streams occur only in the Northern Hemisphere, and the temperature inside the eye of a cyclone is nearly 10 degrees Celsius lower than that of its surroundings.", 'isCorrect': false},
      ],
    });
    await topicRef8.collection('questions').doc("15").set({
      'questionId': "15",
      'order': 15,
      'statements': [
        {'text': "Cirrus cloud thinning and the injection of sulphate aerosols into the stratosphere are geoengineering techniques some scientists have suggested for reducing global warming.", 'isCorrect': true},
        {'text': "Cirrus cloud thinning and the injection of sulphate aerosols into the stratosphere are suggested techniques for reducing the frequency and intensity of tropical cyclones.", 'isCorrect': false},
      ],
    });
    await topicRef8.collection('questions').doc("16").set({
      'questionId': "16",
      'order': 16,
      'statements': [
        {'text': "Dewdrops are not formed on a cloudy night because clouds reflect the Earth's outgoing radiation back to the surface, keeping it relatively warm.", 'isCorrect': true},
        {'text': "Dewdrops are not formed on a cloudy night because clouds absorb the radiation released from the Earth's surface.", 'isCorrect': false},
      ],
    });
    await topicRef8.collection('questions').doc("17").set({
      'questionId': "17",
      'order': 17,
      'statements': [
        {'text': "The Indian Ocean Dipole is characterised by a difference in sea surface temperature between the tropical Western Indian Ocean and the tropical Eastern Indian Ocean, and it can influence how an El Nino affects the Indian monsoon.", 'isCorrect': true},
        {'text': "The Indian Ocean Dipole is characterised by a difference in sea surface temperature between the tropical Western Indian Ocean and the tropical Eastern Pacific Ocean.", 'isCorrect': false},
      ],
    });
    await topicRef8.collection('questions').doc("18").set({
      'questionId': "18",
      'order': 18,
      'statements': [
        {'text': "The moist air masses (western disturbances) that cause winter rains in North-Western India are part of the westerlies.", 'isCorrect': true},
        {'text': "Winds blowing between 30 degrees North and 60 degrees South latitudes throughout the year are collectively known as the westerlies.", 'isCorrect': false},
      ],
    });
    await topicRef8.collection('questions').doc("19").set({
      'questionId': "19",
      'order': 19,
      'statements': [
        {'text': "A description of clear, bright mornings with a sea breeze, followed by mounting heat, dark clouds, and short but intense afternoon thunderstorms, describes the Equatorial climate region.", 'isCorrect': true},
        {'text': "A description of clear, bright mornings followed by short but intense afternoon thunderstorms describes the Mediterranean climate region.", 'isCorrect': false},
      ],
    });
    await topicRef8.collection('questions').doc("20").set({
      'questionId': "20",
      'order': 20,
      'statements': [
        {'text': "Cyclones do not originate in the South Atlantic and South-Eastern Pacific tropical regions mainly because the Inter-Tropical Convergence Zone seldom occurs there.", 'isCorrect': true},
        {'text': "Cyclones do not originate in the South Atlantic and South-Eastern Pacific tropical regions mainly because sea surface temperatures there are too low.", 'isCorrect': false},
      ],
    });
    await topicRef8.collection('questions').doc("21").set({
      'questionId': "21",
      'order': 21,
      'statements': [
        {'text': "The seasonal reversal of winds is a typical characteristic of the Monsoon climate.", 'isCorrect': true},
        {'text': "The seasonal reversal of winds is a typical characteristic of the Mediterranean climate.", 'isCorrect': false},
      ],
    });
    await topicRef8.collection('questions').doc("22").set({
      'questionId': "22",
      'order': 22,
      'statements': [
        {'text': "Unique characteristics of equatorial forests include tall, closely set trees forming a continuous canopy, coexistence of a large number of species, and numerous varieties of epiphytes.", 'isCorrect': true},
        {'text': "The presence of tall, closely set trees forming a continuous canopy is the only unique characteristic of equatorial forests; species diversity and epiphytes are not distinctive features.", 'isCorrect': false},
      ],
    });
    await topicRef8.collection('questions').doc("23").set({
      'questionId': "23",
      'order': 23,
      'statements': [
        {'text': "None of the commonly cited processes (meeting of cumulonimbus clouds, lightning separating nimbus clouds, or violent upward air movement alone) properly explains thunder; it is caused by the rapid expansion of air due to the intense heating from a lightning discharge.", 'isCorrect': true},
        {'text': "Thunder during a thunderstorm is produced by the violent upward movement of air and water particles within cumulonimbus clouds.", 'isCorrect': false},
      ],
    });
    await topicRef8.collection('questions').doc("24").set({
      'questionId': "24",
      'order': 24,
      'statements': [
        {'text': "Temperature normally decreases with height because the atmosphere is heated primarily from the Earth's surface upward, and the air is less dense in the upper atmosphere.", 'isCorrect': true},
        {'text': "Temperature normally decreases with height mainly because there is more moisture in the upper atmosphere.", 'isCorrect': false},
      ],
    });
    await topicRef8.collection('questions').doc("25").set({
      'questionId': "25",
      'order': 25,
      'statements': [
        {'text': "The Tropical Savannah region is characterised by a definite dry season and a definite wet season.", 'isCorrect': true},
        {'text': "The Tropical Savannah region is characterised by rainfall occurring evenly throughout the year.", 'isCorrect': false},
      ],
    });
    await topicRef8.collection('questions').doc("26").set({
      'questionId': "26",
      'order': 26,
      'statements': [
        {'text': "La Nina is characterised by unusually cold ocean temperatures in the equatorial Pacific Ocean, and, contrary to being effect-free, La Nina does influence India's south-west monsoon.", 'isCorrect': true},
        {'text': "La Nina is characterised by unusually cold ocean temperature in the equatorial Indian Ocean, and it has no effect on India's monsoon climate.", 'isCorrect': false},
      ],
    });
    await topicRef8.collection('questions').doc("27").set({
      'questionId': "27",
      'order': 27,
      'statements': [
        {'text': "Westerlies in the Southern Hemisphere are stronger and more persistent than in the Northern Hemisphere mainly because the Southern Hemisphere has less landmass to obstruct wind flow.", 'isCorrect': true},
        {'text': "Westerlies in the Southern Hemisphere are stronger and more persistent than in the Northern Hemisphere because the Coriolis force is higher in the Southern Hemisphere.", 'isCorrect': false},
      ],
    });
    await topicRef8.collection('questions').doc("28").set({
      'questionId': "28",
      'order': 28,
      'statements': [
        {'text': "The ionosphere facilitates radio communication because it contains ionised particles that reflect radio waves back to Earth, not because of the presence of ozone or the long wavelength of radio waves.", 'isCorrect': true},
        {'text': "The ionosphere facilitates radio communication because the presence of ozone in this layer causes the reflection of radio waves back to Earth.", 'isCorrect': false},
      ],
    });
    await topicRef8.collection('questions').doc("29").set({
      'questionId': "29",
      'order': 29,
      'statements': [
        {'text': "Jet aircraft fly smoothly in the lower stratosphere because there are no clouds or water vapour there, and no vertical winds occur in that layer.", 'isCorrect': true},
        {'text': "Jet aircraft fly smoothly in the lower stratosphere mainly because of the presence of strong, stable vertical winds in that layer.", 'isCorrect': false},
      ],
    });
    await topicRef8.collection('questions').doc("30").set({
      'questionId': "30",
      'order': 30,
      'statements': [
        {'text': "Biodiversity is normally greater at lower latitudes compared to higher latitudes, and along mountain gradients, biodiversity is normally greater at lower altitudes compared to higher altitudes.", 'isCorrect': true},
        {'text': "Biodiversity is normally greater at higher latitudes and higher altitudes compared to lower latitudes and lower altitudes.", 'isCorrect': false},
      ],
    });
    await topicRef8.collection('questions').doc("31").set({
      'questionId': "31",
      'order': 31,
      'statements': [
        {'text': "A region with a warm and dry climate, mild and wet winters, and evergreen oak trees is characteristic of the Mediterranean region.", 'isCorrect': true},
        {'text': "A region with a warm and dry climate, mild and wet winters, and evergreen oak trees is characteristic of the Eastern China region.", 'isCorrect': false},
      ],
    });
    await topicRef8.collection('questions').doc("32").set({
      'questionId': "32",
      'order': 32,
      'statements': [
        {'text': "The rotation of the Earth (the Coriolis effect) causes wind to deflect toward the left in the Southern Hemisphere.", 'isCorrect': true},
        {'text': "Variations in atmospheric pressure alone cause wind to deflect toward the left in the Southern Hemisphere.", 'isCorrect': false},
      ],
    });
    await topicRef8.collection('questions').doc("33").set({
      'questionId': "33",
      'order': 33,
      'statements': [
        {'text': "Land covered with fresh snow reflects back more sunlight (has higher albedo) than sand desert, paddy cropland, or prairie land.", 'isCorrect': true},
        {'text': "Sand desert reflects back more sunlight than land covered with fresh snow, paddy cropland, or prairie land.", 'isCorrect': false},
      ],
    });
    await topicRef8.collection('questions').doc("34").set({
      'questionId': "34",
      'order': 34,
      'statements': [
        {'text': "A normal El Nino results in diminished hurricane activity in the Atlantic Ocean, whereas El Nino Modoki is associated with a greater number and frequency of Atlantic hurricanes.", 'isCorrect': true},
        {'text': "A normal El Nino forms in the Central Pacific Ocean, whereas El Nino Modoki forms in the Eastern Pacific Ocean.", 'isCorrect': false},
      ],
    });
    await topicRef8.collection('questions').doc("35").set({
      'questionId': "35",
      'order': 35,
      'statements': [
        {'text': "In the world, tropical deserts typically occur along the western margins of continents within the trade wind belt.", 'isCorrect': true},
        {'text': "In India, the East Himalayan region receives its high rainfall mainly from north-east winds.", 'isCorrect': false},
      ],
    });
    await topicRef8.collection('questions').doc("36").set({
      'questionId': "36",
      'order': 36,
      'statements': [
        {'text': "Ike and Gustav were names of hurricanes that occurred very recently, while Kate was not among the recent hurricane names of that period.", 'isCorrect': true},
        {'text': "Kate and Gustav were the names of hurricanes that occurred very recently, while Ike was not.", 'isCorrect': false},
      ],
    });
    await topicRef8.collection('questions').doc("37").set({
      'questionId': "37",
      'order': 37,
      'statements': [
        {'text': "The albedo of an object determines its visual brightness when viewed with reflected light, and the albedo of Mercury is actually much lower than that of the Earth.", 'isCorrect': true},
        {'text': "The albedo of Mercury is much greater than the albedo of the Earth.", 'isCorrect': false},
      ],
    });
    await topicRef8.collection('questions').doc("38").set({
      'questionId': "38",
      'order': 38,
      'statements': [
        {'text': "The belts over the oceans at about 30 to 35 degrees North and South latitudes are known as the Horse Latitudes, and they are high-pressure belts, not low-pressure belts.", 'isCorrect': true},
        {'text': "The Horse Latitudes, located at about 30 to 35 degrees North and South latitudes, are low-pressure belts.", 'isCorrect': false},
      ],
    });
    await topicRef8.collection('questions').doc("39").set({
      'questionId': "39",
      'order': 39,
      'statements': [
        {'text': "The length of a terrestrial (statute) mile is less than that of a nautical mile.", 'isCorrect': true},
        {'text': "Harmattan is a dusty land-wind of the East African Coast, and Greece and Albania form part of the Iberian Peninsula.", 'isCorrect': false},
      ],
    });
    await topicRef8.collection('questions').doc("40").set({
      'questionId': "40",
      'order': 40,
      'statements': [
        {'text': "Wind patterns are clockwise in the Northern Hemisphere and anticlockwise in the Southern Hemisphere, because the direction of these wind patterns is governed by the Coriolis effect.", 'isCorrect': true},
        {'text': "Wind patterns are anticlockwise in the Northern Hemisphere and clockwise in the Southern Hemisphere, due to the Coriolis effect.", 'isCorrect': false},
      ],
    });
    await topicRef8.collection('questions').doc("41").set({
      'questionId': "41",
      'order': 41,
      'statements': [
        {'text': "Cirrus clouds are composed of ice crystals.", 'isCorrect': true},
        {'text': "Cumulus clouds are classified as high clouds and are composed of ice crystals.", 'isCorrect': false},
      ],
    });
    await topicRef8.collection('questions').doc("42").set({
      'questionId': "42",
      'order': 42,
      'statements': [
        {'text': "The thickness of the atmosphere is maximum over the Equator, because high insolation and strong convection currents occur there.", 'isCorrect': true},
        {'text': "The thickness of the atmosphere is maximum over the Poles, because of high insolation and strong convection currents there.", 'isCorrect': false},
      ],
    });
    await topicRef8.collection('questions').doc("43").set({
      'questionId': "43",
      'order': 43,
      'statements': [
        {'text': "Temperate Coniferous forests cover the highest percentage of forest area in the world.", 'isCorrect': true},
        {'text': "Tropical Rain forests cover the highest percentage of forest area in the world.", 'isCorrect': false},
      ],
    });
    await topicRef8.collection('questions').doc("44").set({
      'questionId': "44",
      'order': 44,
      'statements': [
        {'text': "The amount of moisture in the atmosphere is related to latitude, because the capacity of air to hold moisture as water vapour is related to temperature.", 'isCorrect': true},
        {'text': "The amount of moisture in the atmosphere is unrelated to latitude or to the temperature-dependent capacity of air to hold water vapour.", 'isCorrect': false},
      ],
    });
    await topicRef8.collection('questions').doc("45").set({
      'questionId': "45",
      'order': 45,
      'statements': [
        {'text': "Areas lying within five to eight degrees latitude on either side of the equator receive rainfall throughout the year, because high temperatures and humidity cause convectional rain to fall mostly in the afternoons near the equator.", 'isCorrect': true},
        {'text': "Areas lying within five to eight degrees latitude of the equator receive rainfall throughout the year, but this has no connection with convectional rain caused by high temperature and humidity.", 'isCorrect': false},
      ],
    });
    await topicRef8.collection('questions').doc("46").set({
      'questionId': "46",
      'order': 46,
      'statements': [
        {'text': "Cleared tropical rain forest land does not remain productive farmland for long without chemical fertilizers, even though the primary productivity of tropical rain forests is indeed very high compared to temperate forests.", 'isCorrect': true},
        {'text': "Cleared tropical rain forest land can support intensive agriculture for several years even without chemical fertilizers, because of its very high primary productivity.", 'isCorrect': false},
      ],
    });
    await topicRef8.collection('questions').doc("47").set({
      'questionId': "47",
      'order': 47,
      'statements': [
        {'text': "Thunder-cloud development is due to a combination of condensation, high temperature and humidity, orography, and vertical winds.", 'isCorrect': true},
        {'text': "Thunder-cloud development is due only to condensation and high temperature and humidity; orography and vertical winds play no role.", 'isCorrect': false},
      ],
    });
    await topicRef8.collection('questions').doc("48").set({
      'questionId': "48",
      'order': 48,
      'statements': [
        {'text': "El Nino and the Southern Oscillation (ENSO) is the event associated with short-term prediction of occasional weak monsoon rains in the Indian subcontinent.", 'isCorrect': true},
        {'text': "The movement of Jet Streams is the primary event associated with short-term prediction of occasional weak monsoon rains in the Indian subcontinent.", 'isCorrect': false},
      ],
    });
    await topicRef8.collection('questions').doc("49").set({
      'questionId': "49",
      'order': 49,
      'statements': [
        {'text': "In China-type climate, rainfall occurs throughout the year, and tropical highlands exhibit vertical zonation of different climates.", 'isCorrect': true},
        {'text': "In equatorial regions, the year is divided into four main seasons, and in the Mediterranean region, summer receives more rain than winter.", 'isCorrect': false},
      ],
    });
    await topicRef8.collection('questions').doc("50").set({
      'questionId': "50",
      'order': 50,
      'statements': [
        {'text': "In decreasing order of albedo, the correct sequence among these ecosystems is: Tundra, Taiga, Tropical deciduous forest, Tropical evergreen forest.", 'isCorrect': true},
        {'text': "In decreasing order of albedo, the correct sequence among these ecosystems is: Taiga, Tundra, Tropical evergreen forest, Tropical deciduous forest.", 'isCorrect': false},
      ],
    });
    await topicRef8.collection('questions').doc("51").set({
      'questionId': "51",
      'order': 51,
      'statements': [
        {'text': "The 60 to 65 degree latitudes in both hemispheres have a low-pressure belt instead of a high-pressure one, though this is not because low-pressure areas are more permanent over oceans than over land.", 'isCorrect': true},
        {'text': "The 60 to 65 degree latitudes in both hemispheres have a low-pressure belt instead of a high-pressure one because low-pressure areas are more permanent over oceans than over land.", 'isCorrect': false},
      ],
    });
    await topicRef8.collection('questions').doc("52").set({
      'questionId': "52",
      'order': 52,
      'statements': [
        {'text': "Surface winds spiral inwards toward the centre of a cyclone, and air does descend within the calm eye at the cyclone's centre, though this descent is not what causes the inward spiraling of the surface winds.", 'isCorrect': true},
        {'text': "Surface winds spiral inward toward the centre of a cyclone precisely because air descends at the cyclone's centre, pulling the winds in.", 'isCorrect': false},
      ],
    });
    await topicRef8.collection('questions').doc("53").set({
      'questionId': "53",
      'order': 53,
      'statements': [
        {'text': "The Fohn wind is associated with the Alps, the Samun wind with Kurdistan, the Santa Ana wind with California, and the Zonda wind with Argentina.", 'isCorrect': true},
        {'text': "The Fohn wind is associated with Kurdistan, the Samun wind with the Alps, the Santa Ana wind with Argentina, and the Zonda wind with California.", 'isCorrect': false},
      ],
    });
    await topicRef8.collection('questions').doc("54").set({
      'questionId': "54",
      'order': 54,
      'statements': [
        {'text': "Anticyclonic conditions form in winter when atmospheric pressure is high and air temperatures are low, and winter rainfall in Northern India is linked with the development of such anticyclonic conditions with low temperatures.", 'isCorrect': true},
        {'text': "Anticyclonic conditions form in winter when atmospheric pressure is low and air temperatures are high.", 'isCorrect': false},
      ],
    });
    await topicRef8.collection('questions').doc("55").set({
      'questionId': "55",
      'order': 55,
      'statements': [
        {'text': "Cloudy nights are warmer than clear nights because clouds reflect back the heat radiated by the Earth's surface.", 'isCorrect': true},
        {'text': "Cloudy nights are warmer than clear nights because clouds produce their own heat and radiate it toward the Earth.", 'isCorrect': false},
      ],
    });
    await topicRef8.collection('questions').doc("56").set({
      'questionId': "56",
      'order': 56,
      'statements': [
        {'text': "The Roaring Forties blow with great strength and constancy, generally from north-west to east in the Southern Hemisphere, and are associated with overcast skies, rain, and raw weather.", 'isCorrect': true},
        {'text': "The Roaring Forties blow uninterrupted in both the Northern and Southern Hemispheres.", 'isCorrect': false},
      ],
    });
    await topicRef8.collection('questions').doc("57").set({
      'questionId': "57",
      'order': 57,
      'statements': [
        {'text': "The correct sequence of atmospheric layers from the Earth's surface upward is: Troposphere, Stratosphere, Mesosphere, and then the Ionosphere.", 'isCorrect': true},
        {'text': "The correct sequence of atmospheric layers from the Earth's surface upward is: Troposphere, Stratosphere, Ionosphere, and then the Mesosphere.", 'isCorrect': false},
      ],
    });
    await topicRef8.collection('questions').doc("58").set({
      'questionId': "58",
      'order': 58,
      'statements': [
        {'text': "The January isotherm of 15 degrees Celsius is taken as the basis for dividing India into tropical and sub-tropical climatic zones.", 'isCorrect': true},
        {'text': "The January isotherm of 21 degrees Celsius is taken as the basis for dividing India into tropical and sub-tropical climatic zones.", 'isCorrect': false},
      ],
    });
    await topicRef8.collection('questions').doc("59").set({
      'questionId': "59",
      'order': 59,
      'statements': [
        {'text': "A daily weather map showing isobars is an example of an isopleth map.", 'isCorrect': true},
        {'text': "A daily weather map showing isobars is an example of a choropleth map.", 'isCorrect': false},
      ],
    });
    await topicRef8.collection('questions').doc("60").set({
      'questionId': "60",
      'order': 60,
      'statements': [
        {'text': "The Ionosphere is the layer of the atmosphere responsible for the deflection of radio waves.", 'isCorrect': true},
        {'text': "The Stratosphere is the layer of the atmosphere responsible for the deflection of radio waves.", 'isCorrect': false},
      ],
    });
    await topicRef8.collection('questions').doc("61").set({
      'questionId': "61",
      'order': 61,
      'statements': [
        {'text': "Areas near the equator receive rainfall throughout the year because high temperatures and high humidity cause convectional rain on most afternoons near the equator.", 'isCorrect': true},
        {'text': "Areas near the equator receive rainfall throughout the year, but this has no connection to convectional rain caused by high temperature and humidity.", 'isCorrect': false},
      ],
    });
    await topicRef8.collection('questions').doc("62").set({
      'questionId': "62",
      'order': 62,
      'statements': [
        {'text': "High temperature and low pressure over the Indian subcontinent during summer draws air from the Indian Ocean, leading to the in-blowing of the Southwest Monsoon.", 'isCorrect': true},
        {'text': "High temperature and low pressure over the Indian subcontinent during summer draws air from the Indian Ocean, leading to the in-blowing of the Southeast Monsoon.", 'isCorrect': false},
      ],
    });
    await topicRef8.collection('questions').doc("63").set({
      'questionId': "63",
      'order': 63,
      'statements': [
        {'text': "'Willy-Willy' refers to a tropical cyclone that occurs off the coast of north-west Australia.", 'isCorrect': true},
        {'text': "'Willy-Willy' refers to a wind that blows in a desert.", 'isCorrect': false},
      ],
    });
    await topicRef8.collection('questions').doc("64").set({
      'questionId': "64",
      'order': 64,
      'statements': [
        {'text': "Clouds float in the atmosphere because of their low density.", 'isCorrect': true},
        {'text': "Clouds float in the atmosphere because of their low temperature.", 'isCorrect': false},
      ],
    });

    final topicRef9 =
        subjectRef.collection('topics').doc("physical_geography_oceanography");
    await topicRef9.set({
      'name': "Physical Geography - Oceanography",
      'order': 9,
    }, SetOptions(merge: true));

    await topicRef9.collection('questions').doc("1").set({
      'questionId': "1",
      'order': 1,
      'statements': [
        {'text': "In January, in the Northern Hemisphere, isotherms bend equatorward while crossing landmasses and poleward while crossing oceans, because the air over the oceans is warmer than that over the landmasses at that time of year.", 'isCorrect': true},
        {'text': "In January, in the Northern Hemisphere, isotherms bend poleward while crossing landmasses and equatorward while crossing oceans, because the air over the oceans is warmer than over land.", 'isCorrect': false},
      ],
    });
    await topicRef9.collection('questions').doc("2").set({
      'questionId': "2",
      'order': 2,
      'statements': [
        {'text': "On January isothermal maps, isotherms deviate to the north over oceans and to the south over continents, due to the influence of warm ocean currents like the Gulf Stream and North Atlantic Drift, which make the North Atlantic Ocean warmer, not colder.", 'isCorrect': true},
        {'text': "The Gulf Stream and North Atlantic Drift are cold ocean currents that make the North Atlantic Ocean colder, causing the isotherms to bend towards the north.", 'isCorrect': false},
      ],
    });
    await topicRef9.collection('questions').doc("3").set({
      'questionId': "3",
      'order': 3,
      'statements': [
        {'text': "The specific heat of water is greater than that of land surfaces, and as a result, the temperature contrast between continents and oceans is actually greater in winter than in summer.", 'isCorrect': true},
        {'text': "The temperature contrast between continents and oceans is greater during summer than in winter, because the specific heat of water is greater than that of land surfaces.", 'isCorrect': false},
      ],
    });
    await topicRef9.collection('questions').doc("4").set({
      'questionId': "4",
      'order': 4,
      'statements': [
        {'text': "The amount of water held in polar ice caps and glaciers is more than the amount of groundwater, whereas the amount of water in rivers and lakes is less than the amount of groundwater.", 'isCorrect': true},
        {'text': "The amount of water in rivers and lakes is more than the amount of groundwater on Earth.", 'isCorrect': false},
      ],
    });
    await topicRef9.collection('questions').doc("5").set({
      'questionId': "5",
      'order': 5,
      'statements': [
        {'text': "India has received licences for seabed mineral exploration in international waters, and rare earth minerals are present on the seafloor there; it is the International Seabed Authority, not a 'Global Ocean Commission', that grants such licences.", 'isCorrect': true},
        {'text': "The Global Ocean Commission grants licences for seabed exploration and mining in international waters.", 'isCorrect': false},
      ],
    });
    await topicRef9.collection('questions').doc("6").set({
      'questionId': "6",
      'order': 6,
      'statements': [
        {'text': "In the tropical zone, trade winds make the western sections of oceans warmer than the eastern sections, while in the temperate zone, westerlies make the eastern sections of oceans warmer than the western sections.", 'isCorrect': true},
        {'text': "In the tropical zone, trade winds make the eastern sections of oceans warmer than the western sections, while in the temperate zone, westerlies make the western sections warmer than the eastern sections.", 'isCorrect': false},
      ],
    });
    await topicRef9.collection('questions').doc("7").set({
      'questionId': "7",
      'order': 7,
      'statements': [
        {'text': "Ocean Mean Temperature (OMT) data collected during January-March can be used to assess whether monsoon rainfall is likely to be less or more than the long-term mean.", 'isCorrect': true},
        {'text': "Ocean Mean Temperature (OMT) is measured up to the depth of the 26 degree Celsius isotherm specifically in the south-western Indian Ocean during January-March.", 'isCorrect': false},
      ],
    });
    await topicRef9.collection('questions').doc("8").set({
      'questionId': "8",
      'order': 8,
      'statements': [
        {'text': "Tides in oceans and seas occur due to the combined gravitational forces of the Sun, the Moon, and the Earth.", 'isCorrect': true},
        {'text': "Tides in oceans and seas occur due to the gravitational force of the Moon alone.", 'isCorrect': false},
      ],
    });
    await topicRef9.collection('questions').doc("9").set({
      'questionId': "9",
      'order': 9,
      'statements': [
        {'text': "The eastward flow of the equatorial counter-current is explained by the convergence of the two equatorial currents (the North and South Equatorial Currents).", 'isCorrect': true},
        {'text': "The eastward flow of the equatorial counter-current is explained by the Earth's rotation on its axis.", 'isCorrect': false},
      ],
    });
    await topicRef9.collection('questions').doc("10").set({
      'questionId': "10",
      'order': 10,
      'statements': [
        {'text': "The annual range of temperature is higher in the interior of continents compared to coastal areas mainly due to the thermal difference between land and water.", 'isCorrect': true},
        {'text': "The annual range of temperature is higher in the interior of continents compared to coastal areas mainly due to heavier rainfall in the interior compared to the coasts.", 'isCorrect': false},
      ],
    });
    await topicRef9.collection('questions').doc("11").set({
      'questionId': "11",
      'order': 11,
      'statements': [
        {'text': "The most important fishing grounds of the world are found in regions where warm and cold oceanic currents meet.", 'isCorrect': true},
        {'text': "The most important fishing grounds of the world are found in regions where large rivers drain freshwater into the sea.", 'isCorrect': false},
      ],
    });
    await topicRef9.collection('questions').doc("12").set({
      'questionId': "12",
      'order': 12,
      'statements': [
        {'text': "Ocean currents are influenced by the Earth's rotation, air pressure and wind, and the density of ocean water, but not by the Earth's revolution around the Sun.", 'isCorrect': true},
        {'text': "Ocean currents are influenced mainly by the Earth's revolution around the Sun and the density of ocean water.", 'isCorrect': false},
      ],
    });
    await topicRef9.collection('questions').doc("13").set({
      'questionId': "13",
      'order': 13,
      'statements': [
        {'text': "The African and Eurasian desert belt is mainly formed due to its location within sub-tropical high-pressure cells, not due to the influence of warm ocean currents.", 'isCorrect': true},
        {'text': "The African and Eurasian desert belt is mainly formed due to the influence of warm ocean currents along its coasts.", 'isCorrect': false},
      ],
    });
    await topicRef9.collection('questions').doc("14").set({
      'questionId': "14",
      'order': 14,
      'statements': [
        {'text': "Fresh water constitutes only a small percentage of Earth's total water, and of that fresh water, roughly two-thirds (not 95%) is bound up in polar ice caps and glaciers.", 'isCorrect': true},
        {'text': "Fresh water available for use on Earth amounts to less than 1% of the total water found, and 95% of that fresh water is bound up in polar ice caps and glaciers.", 'isCorrect': false},
      ],
    });
    await topicRef9.collection('questions').doc("15").set({
      'questionId': "15",
      'order': 15,
      'statements': [
        {'text': "The annual range of temperature is greater in the Northern Hemisphere than in the Southern Hemisphere, though it is not true that this range is greater in the Pacific Ocean than in the Atlantic Ocean.", 'isCorrect': true},
        {'text': "The annual range of temperature is greater in the Pacific Ocean than in the Atlantic Ocean.", 'isCorrect': false},
      ],
    });
    await topicRef9.collection('questions').doc("16").set({
      'questionId': "16",
      'order': 16,
      'statements': [
        {'text': "Gulfs with wide fronts and narrowing rears (a funnel shape) experience high tides, not gulfs with narrow fronts and wider rears.", 'isCorrect': true},
        {'text': "Gulfs with narrow fronts and wider rears experience unusually high tides due to the funnel effect.", 'isCorrect': false},
      ],
    });
    await topicRef9.collection('questions').doc("17").set({
      'questionId': "17",
      'order': 17,
      'statements': [
        {'text': "Ocean currents help maintain the Earth's heat balance, are set in motion primarily by prevailing winds, and are affected by the configuration of the ocean basin.", 'isCorrect': true},
        {'text': "Ocean currents are described only as slow surface movements of water in the ocean, unrelated to prevailing winds or ocean basin configuration.", 'isCorrect': false},
      ],
    });
    await topicRef9.collection('questions').doc("18").set({
      'questionId': "18",
      'order': 18,
      'statements': [
        {'text': "During Neap Tides, the high tide is lower and the low tide is higher than usual, though Neap Tides actually occur during the Moon's first and third quarter phases, while Spring Tides occur on both the New Moon and the Full Moon.", 'isCorrect': true},
        {'text': "Neap Tides, unlike Spring Tides, occur on the New Moon instead of on the Full Moon.", 'isCorrect': false},
      ],
    });
    await topicRef9.collection('questions').doc("19").set({
      'questionId': "19",
      'order': 19,
      'statements': [
        {'text': "Tides are of great help in navigation and fishing, enable big ships to enter or leave harbours safely, prevent siltation in harbours, and Kandla and Diamond Harbour are examples of tidal ports.", 'isCorrect': true},
        {'text': "Tides are of no real help in navigation or fishing, and do not prevent siltation in harbours; Kandla and Diamond Harbour are not tidal ports.", 'isCorrect': false},
      ],
    });
    await topicRef9.collection('questions').doc("20").set({
      'questionId': "20",
      'order': 20,
      'statements': [
        {'text': "The change in the regular direction of ocean currents in the Indian Ocean is caused by the Indian Ocean's monsoon drift.", 'isCorrect': true},
        {'text': "The change in the regular direction of ocean currents in the Indian Ocean is caused by the Indian Ocean being a land-locked ocean.", 'isCorrect': false},
      ],
    });

    print('Geography True/False seeding completed.');
  }

  static Future<void> geoSeed() async {
    final subjectRef = _firestore.collection('subjects').doc('geography');

    await subjectRef.set({
      'name': 'Geography',
      'order': 4,
      'hasSections': false,
    }, SetOptions(merge: true));

    final topicRef4 = subjectRef.collection('topics').doc("river_valley_projects");
    await topicRef4.set({
      'name': "River Valley Projects",
      'order': 4,
    }, SetOptions(merge: true));

    await topicRef4.collection('questions').doc("1").set({
      'questionId': "1",
      'order': 1,
      'statements': [
        {'text': "The Dul Hasti Power Station is based on the Chenab River.", 'isCorrect': true},
        {'text': "The Dul Hasti Power Station is based on the Beas River.", 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc("2").set({
      'questionId': "2",
      'order': 2,
      'statements': [
        {'text': "The Omkareshwar Project is associated with the Narmada River.", 'isCorrect': true},
        {'text': "The Omkareshwar Project is associated with the Godavari River.", 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc("3").set({
      'questionId': "3",
      'order': 3,
      'statements': [
        {'text': "The Tehri Hydropower Complex is located on the Bhagirathi River.", 'isCorrect': true},
        {'text': "The Tehri Hydropower Complex is located on the Alaknanda River.", 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc("4").set({
      'questionId': "4",
      'order': 4,
      'statements': [
        {'text': "The Damanganga Project in Gujarat, Girna Project in Maharashtra, and Pamba Project in Kerala are correctly matched.", 'isCorrect': true},
        {'text': "The Damanganga Project is located in Maharashtra, the Girna Project in Gujarat, and the Pamba Project in Tamil Nadu.", 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc("5").set({
      'questionId': "5",
      'order': 5,
      'statements': [
        {'text': "The Tapovan and Vishnugarh Hydroelectric Projects are located in Uttarakhand.", 'isCorrect': true},
        {'text': "The Tapovan and Vishnugarh Hydroelectric Projects are located in Himachal Pradesh.", 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc("6").set({
      'questionId': "6",
      'order': 6,
      'statements': [
        {'text': "BALCO is located at Korba, HINDALCO at Renukoot, Indian Aluminium Company at Hirakud, and NALCO at Koraput.", 'isCorrect': true},
        {'text': "BALCO is located at Renukoot, HINDALCO at Korba, Indian Aluminium Company at Koraput, and NALCO at Hirakud.", 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc("7").set({
      'questionId': "7",
      'order': 7,
      'statements': [
        {'text': "The Betwa and Ken rivers were selected for the river-linking project between Uttar Pradesh and Madhya Pradesh.", 'isCorrect': true},
        {'text': "The Betwa and Ken rivers were selected for a river-linking project between Rajasthan and Gujarat.", 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc("8").set({
      'questionId': "8",
      'order': 8,
      'statements': [
        {'text': "Gandhi Sagar Dam is a part of the Chambal Project.", 'isCorrect': true},
        {'text': "Gandhi Sagar Dam is a part of the Damodar Valley Project.", 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc("9").set({
      'questionId': "9",
      'order': 9,
      'statements': [
        {'text': "Kothagudem is in Andhra Pradesh, Raichur in Karnataka, Mettur in Tamil Nadu, and Wanakbori in Gujarat.", 'isCorrect': true},
        {'text': "Kothagudem is in Karnataka, Raichur in Tamil Nadu, Mettur in Gujarat, and Wanakbori in Andhra Pradesh.", 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc("10").set({
      'questionId': "10",
      'order': 10,
      'statements': [
        {'text': "Satara is well known for its wind energy plant.", 'isCorrect': true},
        {'text': "Satara is well known primarily for its large solar energy plant rather than wind energy.", 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc("11").set({
      'questionId': "11",
      'order': 11,
      'statements': [
        {'text': "The Integrated Steel Plant at Jaipur in Orissa is not correctly matched with the Steel Authority of India.", 'isCorrect': true},
        {'text': "The Integrated Steel Plant at Jaipur in Orissa is correctly matched with the Steel Authority of India.", 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc("12").set({
      'questionId': "12",
      'order': 12,
      'statements': [
        {'text': "The statement that Rourkela Steel Plant was set up with Soviet Union collaboration is incorrect.", 'isCorrect': true},
        {'text': "Rourkela Steel Plant was set up with collaboration from the Soviet Union.", 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc("13").set({
      'questionId': "13",
      'order': 13,
      'statements': [
        {'text': "Damodar Valley Corporation is the first multipurpose river valley project of independent India.", 'isCorrect': true},
        {'text': "Damodar Valley Corporation was established as the first multipurpose river valley project during British rule in India.", 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc("14").set({
      'questionId': "14",
      'order': 14,
      'statements': [
        {'text': "The Bokaro thermal power plant is located in Jharkhand.", 'isCorrect': true},
        {'text': "The Bokaro thermal power plant is located in West Bengal.", 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc("15").set({
      'questionId': "15",
      'order': 15,
      'statements': [
        {'text': "HINDALCO's aluminium factory at Renukut owes its location mainly to the abundant supply of power.", 'isCorrect': true},
        {'text': "HINDALCO's aluminium factory at Renukut owes its location mainly to the availability of abundant bauxite deposits at the site.", 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc("16").set({
      'questionId': "16",
      'order': 16,
      'statements': [
        {'text': "The Cauvery is associated with Mettur Dam, Krishna with Alamatti Dam, Narmada with Sardar Sarovar Dam, and Chambal with Gandhi Sagar Dam.", 'isCorrect': true},
        {'text': "The Cauvery is associated with Sardar Sarovar Dam, Krishna with Mettur Dam, Narmada with Gandhi Sagar Dam, and Chambal with Alamatti Dam.", 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc("17").set({
      'questionId': "17",
      'order': 17,
      'statements': [
        {'text': "The Alamatti Dam is built on the Krishna River.", 'isCorrect': true},
        {'text': "The Alamatti Dam is built on the Godavari River.", 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc("18").set({
      'questionId': "18",
      'order': 18,
      'statements': [
        {'text': "The canal-carrying capacity of Farakka is 40,000 cusecs.", 'isCorrect': true},
        {'text': "The canal-carrying capacity of Farakka is 10,000 cusecs.", 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc("19").set({
      'questionId': "19",
      'order': 19,
      'statements': [
        {'text': "Sabarigiri is a hydroelectric project, Ghatprabha is an irrigation project, and Ramganga is a multipurpose project.", 'isCorrect': true},
        {'text': "Sabarigiri is an irrigation project, Ghatprabha is a hydroelectric project, and Ramganga is exclusively a thermal power project.", 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc("20").set({
      'questionId': "20",
      'order': 20,
      'statements': [
        {'text': "Local supply of coal is not available to VSL at Bhadravati.", 'isCorrect': true},
        {'text': "Local supply of coal is abundantly available to VSL at Bhadravati.", 'isCorrect': false},
      ],
    });

    final topicRef5 = subjectRef.collection('topics').doc("world_geography_resources");
    await topicRef5.set({
      'name': "World Geography Resources",
      'order': 5,
    }, SetOptions(merge: true));

    await topicRef5.collection('questions').doc("1").set({
      'questionId': "1",
      'order': 1,
      'statements': [
        {'text': "Botswana is rich in diamonds, Chile is rich in lithium, and Indonesia is rich in nickel.", 'isCorrect': true},
        {'text': "Botswana is rich in petroleum, Chile is not rich in lithium, and Indonesia is not rich in nickel.", 'isCorrect': false},
      ],
    });
    await topicRef5.collection('questions').doc("2").set({
      'questionId': "2",
      'order': 2,
      'statements': [
        {'text': "The Andes Mountains pass through Bolivia, Colombia, Ecuador and Venezuela among the countries listed.", 'isCorrect': true},
        {'text': "The Andes Mountains do not pass through Bolivia, Colombia, Ecuador or Venezuela.", 'isCorrect': false},
      ],
    });
    await topicRef5.collection('questions').doc("3").set({
      'questionId': "3",
      'order': 3,
      'statements': [
        {'text': "Côte d'Ivoire and Ghana are well known as the two largest cocoa producers in the world.", 'isCorrect': true},
        {'text': "Côte d'Ivoire and Ghana are not among the world's major cocoa producers.", 'isCorrect': false},
      ],
    });
    await topicRef5.collection('questions').doc("4").set({
      'questionId': "4",
      'order': 4,
      'statements': [
        {'text': "About three-fourths of the world's cobalt is produced by the Democratic Republic of the Congo.", 'isCorrect': true},
        {'text': "Only a very small proportion of the world's cobalt is produced by the Democratic Republic of the Congo.", 'isCorrect': false},
      ],
    });
    await topicRef5.collection('questions').doc("5").set({
      'questionId': "5",
      'order': 5,
      'statements': [
        {'text': "Cameroon is part of the Congo Basin.", 'isCorrect': true},
        {'text': "Cameroon is not part of the Congo Basin.", 'isCorrect': false},
      ],
    });
    await topicRef5.collection('questions').doc("6").set({
      'questionId': "6",
      'order': 6,
      'statements': [
        {'text': "Switzerland is one of the leading exporters of gold in terms of value, but it does not have the second-largest gold reserves in the world.", 'isCorrect': true},
        {'text': "Switzerland is not one of the leading exporters of gold in terms of value and has the second-largest gold reserves in the world.", 'isCorrect': false},
      ],
    });
    await topicRef5.collection('questions').doc("7").set({
      'questionId': "7",
      'order': 7,
      'statements': [
        {'text': "Lake Faguibine in West Africa has become dry and turned into a desert.", 'isCorrect': true},
        {'text': "Lake Faguibine in West Africa has remained permanently full of water and has not experienced desertification.", 'isCorrect': false},
      ],
    });
    await topicRef5.collection('questions').doc("8").set({
      'questionId': "8",
      'order': 8,
      'statements': [
        {'text': "Gandikota Canyon in South India was created by the Pennar River.", 'isCorrect': true},
        {'text': "Gandikota Canyon in South India was created by the Krishna River.", 'isCorrect': false},
      ],
    });
    await topicRef5.collection('questions').doc("9").set({
      'questionId': "9",
      'order': 9,
      'statements': [
        {'text': "Catalonia is in Spain and Mindanao is in the Philippines.", 'isCorrect': true},
        {'text': "Catalonia is in Portugal and Mindanao is in Indonesia.", 'isCorrect': false},
      ],
    });
    await topicRef5.collection('questions').doc("10").set({
      'questionId': "10",
      'order': 10,
      'statements': [
        {'text': "The Atlas Mountains are located in North-Western Africa.", 'isCorrect': true},
        {'text': "The Atlas Mountains are located in South America.", 'isCorrect': false},
      ],
    });
    await topicRef5.collection('questions').doc("11").set({
      'questionId': "11",
      'order': 11,
      'statements': [
        {'text': "Australia has the world's largest reserves of uranium.", 'isCorrect': true},
        {'text': "Australia has no significant reserves of uranium.", 'isCorrect': false},
      ],
    });
    await topicRef5.collection('questions').doc("12").set({
      'questionId': "12",
      'order': 12,
      'statements': [
        {'text': "Berlin is situated on the River Spree and not on the Rhine.", 'isCorrect': true},
        {'text': "Berlin is situated on the River Rhine and not on the Spree.", 'isCorrect': false},
      ],
    });
    await topicRef5.collection('questions').doc("13").set({
      'questionId': "13",
      'order': 13,
      'statements': [
        {'text': "The Great Victoria Desert is in Australia, the Grand Canyon is in the USA, Lake Winnipeg is in Canada, and the Southern Alps are in New Zealand.", 'isCorrect': true},
        {'text': "The Great Victoria Desert is in Africa, the Grand Canyon is in Canada, Lake Winnipeg is in the USA, and the Southern Alps are in Australia.", 'isCorrect': false},
      ],
    });
    await topicRef5.collection('questions').doc("14").set({
      'questionId': "14",
      'order': 14,
      'statements': [
        {'text': "Bangkok is associated with the Chao Phraya River, Phnom Penh with the Mekong, Hanoi with the Red River, and Yangon with the Irrawaddy.", 'isCorrect': true},
        {'text': "Bangkok is associated with the Mekong River, Phnom Penh with the Red River, Hanoi with the Chao Phraya River, and Yangon with the Yangtze River.", 'isCorrect': false},
      ],
    });
    await topicRef5.collection('questions').doc("15").set({
      'questionId': "15",
      'order': 15,
      'statements': [
        {'text': "The Amazon is the longest river among Amazon, Amur, Congo and Lena.", 'isCorrect': true},
        {'text': "The Lena is the longest river among Amazon, Amur, Congo and Lena.", 'isCorrect': false},
      ],
    });
    await topicRef5.collection('questions').doc("16").set({
      'questionId': "16",
      'order': 16,
      'statements': [
        {'text': "Diamantina Trench is situated in the Indian Ocean.", 'isCorrect': true},
        {'text': "Diamantina Trench is situated in the Atlantic Ocean.", 'isCorrect': false},
      ],
    });
    await topicRef5.collection('questions').doc("17").set({
      'questionId': "17",
      'order': 17,
      'statements': [
        {'text': "Baikonur is located in Kazakhstan and not in Russia.", 'isCorrect': true},
        {'text': "Baikonur is located in Russia and not in Kazakhstan.", 'isCorrect': false},
      ],
    });
    await topicRef5.collection('questions').doc("18").set({
      'questionId': "18",
      'order': 18,
      'statements': [
        {'text': "Canada was the leading producer of uranium among the countries listed in the question.", 'isCorrect': true},
        {'text': "Canada was not a leading producer of uranium among the countries listed in the question.", 'isCorrect': false},
      ],
    });
    await topicRef5.collection('questions').doc("19").set({
      'questionId': "19",
      'order': 19,
      'statements': [
        {'text': "Washington DC is associated with the Potomac River, Berlin with the Spree, Paris with the Seine, and Madrid with the Manzanares.", 'isCorrect': true},
        {'text': "Washington DC is associated with the Hudson River, Berlin with the Danube, Paris with the Thames, and Madrid with the Rhine.", 'isCorrect': false},
      ],
    });
    await topicRef5.collection('questions').doc("20").set({
      'questionId': "20",
      'order': 20,
      'statements': [
        {'text': "Mount St. Helens is located in the United States of America.", 'isCorrect': true},
        {'text': "Mount St. Helens is located in Canada.", 'isCorrect': false},
      ],
    });
    await topicRef5.collection('questions').doc("21").set({
      'questionId': "21",
      'order': 21,
      'statements': [
        {'text': "The Balearic Islands are located in the Mediterranean Sea.", 'isCorrect': true},
        {'text': "The Balearic Islands are located in the Atlantic Ocean.", 'isCorrect': false},
      ],
    });
    await topicRef5.collection('questions').doc("22").set({
      'questionId': "22",
      'order': 22,
      'statements': [
        {'text': "Belmopan is the capital of Belize and not Nicaragua.", 'isCorrect': true},
        {'text': "Belmopan is the capital of Nicaragua and not Belize.", 'isCorrect': false},
      ],
    });
    await topicRef5.collection('questions').doc("23").set({
      'questionId': "23",
      'order': 23,
      'statements': [
        {'text': "The Mekong River does not flow through Malaysia.", 'isCorrect': true},
        {'text': "The Mekong River flows through Malaysia.", 'isCorrect': false},
      ],
    });
    await topicRef5.collection('questions').doc("24").set({
      'questionId': "24",
      'order': 24,
      'statements': [
        {'text': "British Columbia is in Canada, Bavaria is in Germany, Gibraltar is a British Overseas Territory, and Rhode Island is in the USA.", 'isCorrect': true},
        {'text': "British Columbia is in the USA, Bavaria is in Austria, Gibraltar is a French Overseas Territory, and Rhode Island is in Canada.", 'isCorrect': false},
      ],
    });
    await topicRef5.collection('questions').doc("25").set({
      'questionId': "25",
      'order': 25,
      'statements': [
        {'text': "Victoria Falls is associated with the Zambezi River.", 'isCorrect': true},
        {'text': "Victoria Falls is associated with the Nile River.", 'isCorrect': false},
      ],
    });
    await topicRef5.collection('questions').doc("26").set({
      'questionId': "26",
      'order': 26,
      'statements': [
        {'text': "The high population density in the Nile Valley and the Island of Java is primarily due to intensive agriculture.", 'isCorrect': true},
        {'text': "The high population density in the Nile Valley and the Island of Java is primarily due to the absence of agriculture.", 'isCorrect': false},
      ],
    });
    await topicRef5.collection('questions').doc("27").set({
      'questionId': "27",
      'order': 27,
      'statements': [
        {'text': "The Aleutian Trench is in the North Pacific Ocean, the Kermadec Trench is in the South Pacific Ocean, the Sunda Trench is in the Indian Ocean, and the South Sandwich Trench is in the South Atlantic Ocean.", 'isCorrect': true},
        {'text': "The Aleutian Trench is in the South Atlantic Ocean, the Kermadec Trench is in the Indian Ocean, the Sunda Trench is in the Arctic Ocean, and the South Sandwich Trench is in the Pacific Ocean.", 'isCorrect': false},
      ],
    });
    await topicRef5.collection('questions').doc("28").set({
      'questionId': "28",
      'order': 28,
      'statements': [
        {'text': "Venezuela is a major producer of mineral oil, Zambia of copper, Gabon of manganese and Guyana of bauxite.", 'isCorrect': true},
        {'text': "Venezuela is not a producer of mineral oil, Zambia is not a producer of copper, Gabon is not a producer of manganese and Guyana is not a producer of bauxite.", 'isCorrect': false},
      ],
    });
    await topicRef5.collection('questions').doc("29").set({
      'questionId': "29",
      'order': 29,
      'statements': [
        {'text': "Santos is known as the “Coffee Port” of the world.", 'isCorrect': true},
        {'text': "Santos is known as the “Cotton Port” of the world.", 'isCorrect': false},
      ],
    });
    await topicRef5.collection('questions').doc("30").set({
      'questionId': "30",
      'order': 30,
      'statements': [
        {'text': "Mount Rainier is in the USA, Mount Etna is in Italy, Parícutin is in Mexico, and Taal is in the Philippines.", 'isCorrect': true},
        {'text': "Mount Rainier is in Canada, Mount Etna is in Greece, Parícutin is in Chile, and Taal is in Indonesia.", 'isCorrect': false},
      ],
    });
    await topicRef5.collection('questions').doc("31").set({
      'questionId': "31",
      'order': 31,
      'statements': [
        {'text': "Cedar is associated with Mexico, Douglas Fir with Canada, Mahogany with Honduras and Teak with Myanmar.", 'isCorrect': true},
        {'text': "Cedar is associated with Canada, Douglas Fir with Mexico, Mahogany with Russia and Teak with Norway.", 'isCorrect': false},
      ],
    });
    await topicRef5.collection('questions').doc("32").set({
      'questionId': "32",
      'order': 32,
      'statements': [
        {'text': "Chile continues to be an important producer of copper because it is endowed with major deposits of porphyry copper.", 'isCorrect': true},
        {'text': "Chile is not an important producer of copper and does not possess major deposits of porphyry copper.", 'isCorrect': false},
      ],
    });
    await topicRef5.collection('questions').doc("33").set({
      'questionId': "33",
      'order': 33,
      'statements': [
        {'text': "The archipelago described as extending from Aceh to Torres Strait and containing thousands of islands is Indonesia.", 'isCorrect': true},
        {'text': "The archipelago described as extending from Aceh to Torres Strait and containing thousands of islands is Australia.", 'isCorrect': false},
      ],
    });
    await topicRef5.collection('questions').doc("34").set({
      'questionId': "34",
      'order': 34,
      'statements': [
        {'text': "Russia was identified as the largest producer of fuelwood in the world among the given options.", 'isCorrect': true},
        {'text': "Russia was not identified as the largest producer of fuelwood in the world among the given options.", 'isCorrect': false},
      ],
    });
    await topicRef5.collection('questions').doc("35").set({
      'questionId': "35",
      'order': 35,
      'statements': [
        {'text': "About 50% of the world's population is concentrated between 20°N and 40°N latitudes.", 'isCorrect': true},
        {'text': "Less than 10% of the world's population is concentrated between 20°N and 40°N latitudes.", 'isCorrect': false},
      ],
    });
    await topicRef5.collection('questions').doc("36").set({
      'questionId': "36",
      'order': 36,
      'statements': [
        {'text': "Antarctica is the continent with the highest mean elevation in the world.", 'isCorrect': true},
        {'text': "Asia is the continent with the highest mean elevation in the world.", 'isCorrect': false},
      ],
    });

    final topicRef6 = subjectRef.collection('topics').doc("world_geography_water_bodies");
    await topicRef6.set({
      'name': "World Geography Water Bodies",
      'order': 6,
    }, SetOptions(merge: true));

    await topicRef6.collection('questions').doc("1").set({
      'questionId': "1",
      'order': 1,
      'statements': [
        {'text': "Lake Tanganyika, Lake Tonlé Sap and Patos Lagoon are not crossed by the Equator.", 'isCorrect': true},
        {'text': "Lake Tanganyika, Lake Tonlé Sap and Patos Lagoon are crossed by the Equator.", 'isCorrect': false},
      ],
    });
    await topicRef6.collection('questions').doc("2").set({
      'questionId': "2",
      'order': 2,
      'statements': [
        {'text': "Mallorca is part of Spain, Normandy is a region of France and Sardinia is part of Italy.", 'isCorrect': true},
        {'text': "Mallorca is part of Portugal, Normandy is a region of Germany and Sardinia is part of Greece.", 'isCorrect': false},
      ],
    });
    await topicRef6.collection('questions').doc("3").set({
      'questionId': "3",
      'order': 3,
      'statements': [
        {'text': "Three of the listed countries—the United Kingdom, Denmark and New Zealand—have more than four time zones when their overseas territories are considered.", 'isCorrect': true},
        {'text': "The United Kingdom, Denmark and New Zealand have four or fewer time zones when their overseas territories are considered.", 'isCorrect': false},
      ],
    });
    await topicRef6.collection('questions').doc("4").set({
      'questionId': "4",
      'order': 4,
      'statements': [
        {'text': "Finland and Norway are the two listed countries that have a border with the North Sea.", 'isCorrect': true},
        {'text': "Finland and Norway are the two listed countries that do not have a border with the North Sea.", 'isCorrect': false},
      ],
    });
    await topicRef6.collection('questions').doc("5").set({
      'questionId': "5",
      'order': 5,
      'statements': [
        {'text': "The longest international border in the world is between Canada and the United States of America.", 'isCorrect': true},
        {'text': "The longest international border in the world is between Russia and China.", 'isCorrect': false},
      ],
    });
    await topicRef6.collection('questions').doc("6").set({
      'questionId': "6",
      'order': 6,
      'statements': [
        {'text': "The Red Sea receives very little precipitation and no perennial rivers flow into it.", 'isCorrect': true},
        {'text': "The Red Sea receives heavy precipitation and several perennial rivers flow into it.", 'isCorrect': false},
      ],
    });
    await topicRef6.collection('questions').doc("7").set({
      'questionId': "7",
      'order': 7,
      'statements': [
        {'text': "Among the listed countries, Bulgaria and Romania share land borders with Ukraine.", 'isCorrect': true},
        {'text': "Among the listed countries, Bulgaria and Romania do not share land borders with Ukraine.", 'isCorrect': false},
      ],
    });
    await topicRef6.collection('questions').doc("8").set({
      'questionId': "8",
      'order': 8,
      'statements': [
        {'text': "Tajikistan, Turkmenistan and Uzbekistan have borders with Afghanistan.", 'isCorrect': true},
        {'text': "Tajikistan, Turkmenistan and Uzbekistan do not have borders with Afghanistan.", 'isCorrect': false},
      ],
    });
    await topicRef6.collection('questions').doc("9").set({
      'questionId': "9",
      'order': 9,
      'statements': [
        {'text': "The Volga flows into the Caspian Sea and the Zambezi flows into the Indian Ocean.", 'isCorrect': true},
        {'text': "The Volga flows into the Black Sea and the Zambezi flows into the Atlantic Ocean.", 'isCorrect': false},
      ],
    });
    await topicRef6.collection('questions').doc("10").set({
      'questionId': "10",
      'order': 10,
      'statements': [
        {'text': "The Adriatic Sea borders Albania, the Caspian Sea borders Kazakhstan and the Mediterranean Sea borders Morocco.", 'isCorrect': true},
        {'text': "The Adriatic Sea does not border Albania, the Caspian Sea does not border Kazakhstan and the Mediterranean Sea does not border Morocco.", 'isCorrect': false},
      ],
    });
    await topicRef6.collection('questions').doc("11").set({
      'questionId': "11",
      'order': 11,
      'statements': [
        {'text': "The Aral Sea has shrunk immensely in the recent past largely due to human activities.", 'isCorrect': true},
        {'text': "The Aral Sea has expanded immensely in the recent past largely due to human activities.", 'isCorrect': false},
      ],
    });
    await topicRef6.collection('questions').doc("12").set({
      'questionId': "12",
      'order': 12,
      'statements': [
        {'text': "Lebanon and Syria have coastlines along the Mediterranean Sea.", 'isCorrect': true},
        {'text': "Lebanon and Syria do not have coastlines along the Mediterranean Sea.", 'isCorrect': false},
      ],
    });
    await topicRef6.collection('questions').doc("13").set({
      'questionId': "13",
      'order': 13,
      'statements': [
        {'text': "Jordan is the South-West Asian country among the listed options that does not open out to the Mediterranean Sea.", 'isCorrect': true},
        {'text': "Jordan is a South-West Asian country that opens out to the Mediterranean Sea.", 'isCorrect': false},
      ],
    });
    await topicRef6.collection('questions').doc("14").set({
      'questionId': "14",
      'order': 14,
      'statements': [
        {'text': "Turkey is located between the Black Sea and the Mediterranean Sea.", 'isCorrect': true},
        {'text': "Turkey is located between the Baltic Sea and the Mediterranean Sea.", 'isCorrect': false},
      ],
    });
    await topicRef6.collection('questions').doc("15").set({
      'questionId': "15",
      'order': 15,
      'statements': [
        {'text': "From south to north, the correct sequence is Jakarta, Singapore, Bangkok and Hanoi.", 'isCorrect': true},
        {'text': "From south to north, the correct sequence is Hanoi, Bangkok, Singapore and Jakarta.", 'isCorrect': false},
      ],
    });
    await topicRef6.collection('questions').doc("16").set({
      'questionId': "16",
      'order': 16,
      'statements': [
        {'text': "Opening a canal across the Kra Isthmus between the Gulf of Thailand and the Andaman Sea could greatly reduce navigation time between India and East Asia.", 'isCorrect': true},
        {'text': "Opening a canal across the Kra Isthmus between the Gulf of Thailand and the Andaman Sea would greatly increase navigation time between India and East Asia.", 'isCorrect': false},
      ],
    });
    await topicRef6.collection('questions').doc("17").set({
      'questionId': "17",
      'order': 17,
      'statements': [
        {'text': "Singapore can be encountered while travelling through the Strait of Malacca.", 'isCorrect': true},
        {'text': "Singapore can be encountered while travelling through the Bering Strait.", 'isCorrect': false},
      ],
    });
    await topicRef6.collection('questions').doc("18").set({
      'questionId': "18",
      'order': 18,
      'statements': [
        {'text': "The Tropic of Capricorn passes through Australia, Namibia, Brazil and Chile.", 'isCorrect': true},
        {'text': "The Tropic of Capricorn passes through India, China, Canada and Russia.", 'isCorrect': false},
      ],
    });
    await topicRef6.collection('questions').doc("19").set({
      'questionId': "19",
      'order': 19,
      'statements': [
        {'text': "Among Colombo, Jakarta, Manila and Singapore, Singapore is nearest to the Equator.", 'isCorrect': true},
        {'text': "Among Colombo, Jakarta, Manila and Singapore, Manila is nearest to the Equator.", 'isCorrect': false},
      ],
    });
    await topicRef6.collection('questions').doc("20").set({
      'questionId': "20",
      'order': 20,
      'statements': [
        {'text': "The Bering Strait is the nearest among the listed straits to the International Date Line.", 'isCorrect': true},
        {'text': "The Strait of Gibraltar is the nearest among the listed straits to the International Date Line.", 'isCorrect': false},
      ],
    });
    await topicRef6.collection('questions').doc("21").set({
      'questionId': "21",
      'order': 21,
      'statements': [
        {'text': "Malta is located in the Mediterranean Sea.", 'isCorrect': true},
        {'text': "Malta is located in the Atlantic Ocean.", 'isCorrect': false},
      ],
    });
    await topicRef6.collection('questions').doc("22").set({
      'questionId': "22",
      'order': 22,
      'statements': [
        {'text': "Moldova shares borders with Ukraine and Romania.", 'isCorrect': true},
        {'text': "Moldova shares borders with Poland and Belarus.", 'isCorrect': false},
      ],
    });
    await topicRef6.collection('questions').doc("23").set({
      'questionId': "23",
      'order': 23,
      'statements': [
        {'text': "The Channel Tunnel connecting the United Kingdom and France passes beneath the Strait of Dover.", 'isCorrect': true},
        {'text': "The Channel Tunnel connecting the United Kingdom and France passes beneath the Strait of Gibraltar.", 'isCorrect': false},
      ],
    });
    await topicRef6.collection('questions').doc("24").set({
      'questionId': "24",
      'order': 24,
      'statements': [
        {'text': "Addis Ababa does not share the same clock time as London, Lisbon and Accra.", 'isCorrect': true},
        {'text': "Addis Ababa shares the same clock time as London, Lisbon and Accra.", 'isCorrect': false},
      ],
    });
    await topicRef6.collection('questions').doc("25").set({
      'questionId': "25",
      'order': 25,
      'statements': [
        {'text': "Other than India and China, Myanmar shares borders with Thailand, Laos and Bangladesh.", 'isCorrect': true},
        {'text': "Other than India and China, Myanmar shares borders only with Vietnam and Cambodia.", 'isCorrect': false},
      ],
    });
    await topicRef6.collection('questions').doc("26").set({
      'questionId': "26",
      'order': 26,
      'statements': [
        {'text': "The Equator passes through Colombia, Kenya and Indonesia.", 'isCorrect': true},
        {'text': "The Equator passes through India, Egypt and Australia.", 'isCorrect': false},
      ],
    });
    await topicRef6.collection('questions').doc("27").set({
      'questionId': "27",
      'order': 27,
      'statements': [
        {'text': "The Huangpu River flows through Shanghai.", 'isCorrect': true},
        {'text': "The Huangpu River flows through Beijing.", 'isCorrect': false},
      ],
    });
    await topicRef6.collection('questions').doc("28").set({
      'questionId': "28",
      'order': 28,
      'statements': [
        {'text': "Ukraine does not share a border with Lithuania.", 'isCorrect': true},
        {'text': "Ukraine shares a land border with Lithuania.", 'isCorrect': false},
      ],
    });
    await topicRef6.collection('questions').doc("29").set({
      'questionId': "29",
      'order': 29,
      'statements': [
        {'text': "From north to south, the Pakistani towns are Peshawar, Islamabad, Gujranwala and Multan.", 'isCorrect': true},
        {'text': "From north to south, the Pakistani towns are Multan, Gujranwala, Islamabad and Peshawar.", 'isCorrect': false},
      ],
    });
    await topicRef6.collection('questions').doc("30").set({
      'questionId': "30",
      'order': 30,
      'statements': [
        {'text': "Latvia shares borders with Russia, Estonia and Lithuania.", 'isCorrect': true},
        {'text': "Latvia shares borders with Poland, Belarus and Ukraine.", 'isCorrect': false},
      ],
    });
    await topicRef6.collection('questions').doc("31").set({
      'questionId': "31",
      'order': 31,
      'statements': [
        {'text': "The Black Sea borders Bulgaria, the Red Sea borders Eritrea, the Yellow Sea borders China and the Caspian Sea borders Kazakhstan.", 'isCorrect': true},
        {'text': "The Black Sea does not border Bulgaria, the Red Sea does not border Eritrea, the Yellow Sea does not border China and the Caspian Sea does not border Kazakhstan.", 'isCorrect': false},
      ],
    });
    await topicRef6.collection('questions').doc("32").set({
      'questionId': "32",
      'order': 32,
      'statements': [
        {'text': "Venezuela does not border Panama.", 'isCorrect': true},
        {'text': "Venezuela shares a land border with Panama.", 'isCorrect': false},
      ],
    });
    await topicRef6.collection('questions').doc("33").set({
      'questionId': "33",
      'order': 33,
      'statements': [
        {'text': "Bolivia is a landlocked country.", 'isCorrect': true},
        {'text': "Bolivia has a coastline on the Pacific Ocean.", 'isCorrect': false},
      ],
    });
    await topicRef6.collection('questions').doc("34").set({
      'questionId': "34",
      'order': 34,
      'statements': [
        {'text': "Israel shares common borders with Lebanon, Syria, Jordan and Egypt.", 'isCorrect': true},
        {'text': "Israel shares common borders only with Turkey and Iraq.", 'isCorrect': false},
      ],
    });
    await topicRef6.collection('questions').doc("35").set({
      'questionId': "35",
      'order': 35,
      'statements': [
        {'text': "Armenia does not border the Caspian Sea.", 'isCorrect': true},
        {'text': "Armenia borders the Caspian Sea.", 'isCorrect': false},
      ],
    });
    await topicRef6.collection('questions').doc("36").set({
      'questionId': "36",
      'order': 36,
      'statements': [
        {'text': "Albania, Bosnia and Herzegovina, and Croatia have the Adriatic Sea as a boundary.", 'isCorrect': true},
        {'text': "Albania, Bosnia and Herzegovina, and Croatia do not have the Adriatic Sea as a boundary.", 'isCorrect': false},
      ],
    });
    await topicRef6.collection('questions').doc("37").set({
      'questionId': "37",
      'order': 37,
      'statements': [
        {'text': "From east to west, the correct sequence among the listed former Yugoslav regions is Yugoslavia, Bosnia, Croatia and Slovenia.", 'isCorrect': true},
        {'text': "From east to west, the correct sequence among the listed former Yugoslav regions is Slovenia, Croatia, Bosnia and Yugoslavia.", 'isCorrect': false},
      ],
    });
    await topicRef6.collection('questions').doc("38").set({
      'questionId': "38",
      'order': 38,
      'statements': [
        {'text': "Lake Victoria forms part of the international boundary between Tanzania and Uganda.", 'isCorrect': true},
        {'text': "Lake Victoria does not form part of the international boundary between Tanzania and Uganda.", 'isCorrect': false},
      ],
    });
    await topicRef6.collection('questions').doc("39").set({
      'questionId': "39",
      'order': 39,
      'statements': [
        {'text': "A voyage from Mumbai to Suez does not require passing through the Suez Canal.", 'isCorrect': true},
        {'text': "A voyage from Mumbai to Suez requires passing through the Suez Canal before reaching Suez.", 'isCorrect': false},
      ],
    });
    await topicRef6.collection('questions').doc("40").set({
      'questionId': "40",
      'order': 40,
      'statements': [
        {'text': "During an onward journey from Delhi to Tokyo, the airports occur in the sequence Bangkok, Hanoi, Hong Kong and Taipei.", 'isCorrect': true},
        {'text': "During an onward journey from Delhi to Tokyo, the airports occur in the sequence Taipei, Hong Kong, Hanoi and Bangkok.", 'isCorrect': false},
      ],
    });

    print('Geography True/False Questions seeding completed.');
  }

  static Future<void> seed() async {
    final subjectRef = _firestore.collection('subjects').doc('geography');

    await subjectRef.set({
      'name': 'Geography',
      'order': 4,
      'hasSections': false,
    }, SetOptions(merge: true));

    final topicRef1 = subjectRef.collection('topics').doc("indian_geography_location_climate_forests_etc");
    await topicRef1.set({
      'name': "Indian Geography - Location, Climate, Forests etc",
      'order': 1,
    }, SetOptions(merge: true));

    await topicRef1.collection('questions').doc("1").set({
      'questionId': "1",
      'order': 1,
      'statements': [
        {'text': "The Rann of Kutch is the best example in India of repeated falls in sea level giving rise to present-day extensive marshland.", 'isCorrect': true},
        {'text': "Bhitarkanika Mangroves is the best example in India of repeated falls in sea level giving rise to present-day extensive marshland.", 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc("2").set({
      'questionId': "2",
      'order': 2,
      'statements': [
        {'text': "Among Chhattisgarh, Madhya Pradesh, Maharashtra and Odisha, Chhattisgarh has the highest percentage of forest cover to total area of the State.", 'isCorrect': true},
        {'text': "Among Chhattisgarh, Madhya Pradesh, Maharashtra and Odisha, Maharashtra has the highest percentage of forest cover to total area of the State.", 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc("3").set({
      'questionId': "3",
      'order': 3,
      'statements': [
        {'text': "Chandipur is the place in India where the sea water recedes from the shoreline for a few kilometres and comes back twice a day, allowing one to walk on the sea floor.", 'isCorrect': true},
        {'text': "Bhavnagar is the place in India where the sea water recedes from the shoreline for a few kilometres and comes back twice a day, allowing one to walk on the sea floor.", 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc("4").set({
      'questionId': "4",
      'order': 4,
      'statements': [
        {'text': "'Tropical Wet Evergreen Forests' occur in Arunachal Pradesh and Mizoram.", 'isCorrect': true},
        {'text': "'Tropical Wet Evergreen Forests' occur in Himachal Pradesh.", 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc("5").set({
      'questionId': "5",
      'order': 5,
      'statements': [
        {'text': "In India, teak is a dominant tree species in the Tropical Moist Deciduous forest.", 'isCorrect': true},
        {'text': "In India, teak is a dominant tree species in the Tropical Rain forest.", 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc("6").set({
      'questionId': "6",
      'order': 6,
      'statements': [
        {'text': "Srisailam is located in the Nallamala Hills.", 'isCorrect': true},
        {'text': "Omkareshwar is located in the Satmala Hills.", 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc("7").set({
      'questionId': "7",
      'order': 7,
      'statements': [
        {'text': "Arunachal Pradesh is located on the same latitude that passes through northern Rajasthan and has over 80% of its area under forest cover.", 'isCorrect': true},
        {'text': "Assam is located on the same latitude that passes through northern Rajasthan and has over 80% of its area under forest cover.", 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc("8").set({
      'questionId': "8",
      'order': 8,
      'statements': [
        {'text': "The amount of annual rainfall in the northern plains of India decreases from east to west.", 'isCorrect': true},
        {'text': "The duration of the monsoon increases from southern India to northern India.", 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc("9").set({
      'questionId': "9",
      'order': 9,
      'statements': [
        {'text': "Gujarat's northern part is arid and semi-arid, its central part produces cotton, and cultivation of cash crops is predominant over food crops there.", 'isCorrect': true},
        {'text': "Tamil Nadu's northern part is arid and semi-arid, its central part produces cotton, and cultivation of cash crops is predominant over food crops there.", 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc("10").set({
      'questionId': "10",
      'order': 10,
      'statements': [
        {'text': "The approximate land use classification in India shows net area sown at about 47%, forests at about 23%, and other areas at about 30%.", 'isCorrect': true},
        {'text': "The approximate land use classification in India shows net area sown at about 58%, forests at about 17%, and other areas at about 25%.", 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc("11").set({
      'questionId': "11",
      'order': 11,
      'statements': [
        {'text': "In India, the Tropical Moist Deciduous Forest occupies the largest area among forest types.", 'isCorrect': true},
        {'text': "In India, the Tropical Wet Evergreen Forest occupies the largest area among forest types.", 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc("12").set({
      'questionId': "12",
      'order': 12,
      'statements': [
        {'text': "An area with a hot and humid climate, about 200 cm of annual rainfall, hill slopes up to 1100 metres altitude, and an annual temperature range of 15 degree C to 30 degree C is most likely to grow pepper.", 'isCorrect': true},
        {'text': "An area with a hot and humid climate, about 200 cm of annual rainfall, hill slopes up to 1100 metres altitude, and an annual temperature range of 15 degree C to 30 degree C is most likely to grow mustard.", 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc("13").set({
      'questionId': "13",
      'order': 13,
      'statements': [
        {'text': "In decreasing order of normal annual rainfall, the correct sequence among Kochi, Kolkata, Patna and Delhi is Kochi, Kolkata, Patna, Delhi.", 'isCorrect': true},
        {'text': "In decreasing order of normal annual rainfall, the correct sequence among Kochi, Kolkata, Patna and Delhi is Kolkata, Kochi, Patna, Delhi.", 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc("14").set({
      'questionId': "14",
      'order': 14,
      'statements': [
        {'text': "The National Forestry Action Programme aims at bringing one-third of the area of India under tree/forest cover.", 'isCorrect': true},
        {'text': "The forest cover in India constitutes around 20% of its geographical area, out of which dense forest constitutes around 40%.", 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc("15").set({
      'questionId': "15",
      'order': 15,
      'statements': [
        {'text': "The Pathrakkadavu Hydroelectric project is proposed to be built near the Silent Valley National Park.", 'isCorrect': true},
        {'text': "Silent Valley National Park is in the Nallamalai range.", 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc("16").set({
      'questionId': "16",
      'order': 16,
      'statements': [
        {'text': "Gujarat has the highest number of airports among Indian states.", 'isCorrect': true},
        {'text': "Andhra Pradesh has the longest coastline among Indian states.", 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc("17").set({
      'questionId': "17",
      'order': 17,
      'statements': [
        {'text': "Bangalore has the benefit of receiving rainfall from both the south-west and north-east monsoons.", 'isCorrect': true},
        {'text': "Bangalore receives much higher average annual rainfall than Mangalore.", 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc("18").set({
      'questionId': "18",
      'order': 18,
      'statements': [
        {'text': "Sinquerim Beach is located in Goa.", 'isCorrect': true},
        {'text': "Sinquerim Beach is located in Andhra Pradesh.", 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc("19").set({
      'questionId': "19",
      'order': 19,
      'statements': [
        {'text': "Among Sikkim, Goa, Haryana and Kerala, Haryana has the minimum total forest cover.", 'isCorrect': true},
        {'text': "Among Sikkim, Goa, Haryana and Kerala, Goa has the minimum total forest cover.", 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc("20").set({
      'questionId': "20",
      'order': 20,
      'statements': [
        {'text': "Among Bangalore, Delhi, Jodhpur and Nagpur, Bangalore is at the highest altitude above mean sea level.", 'isCorrect': true},
        {'text': "Among Bangalore, Delhi, Jodhpur and Nagpur, Delhi is at the highest altitude above mean sea level.", 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc("21").set({
      'questionId': "21",
      'order': 21,
      'statements': [
        {'text': "Among Andhra Pradesh, Gujarat, Karnataka and Tamil Nadu, Tamil Nadu is the smallest in area.", 'isCorrect': true},
        {'text': "Among Andhra Pradesh, Gujarat, Karnataka and Tamil Nadu, Karnataka is the smallest in area.", 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc("22").set({
      'questionId': "22",
      'order': 22,
      'statements': [
        {'text': "Alluvial soil is the predominant type of soil in the northern plains of India.", 'isCorrect': true},
        {'text': "The dominant source of irrigation in India is not wells.", 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc("23").set({
      'questionId': "23",
      'order': 23,
      'statements': [
        {'text': "Open stunted forests with bushes and small trees having long roots and sharp thorns or spines are commonly found in Western Andhra Pradesh.", 'isCorrect': true},
        {'text': "Open stunted forests with bushes and small trees having long roots and sharp thorns or spines are commonly found in the Siwaliks and Terai region.", 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc("24").set({
      'questionId': "24",
      'order': 24,
      'statements': [
        {'text': "A meteorological station with an average annual temperature of 26 degree C, average annual rainfall of 63 cm, and an annual temperature range of 9 degree C is Chennai.", 'isCorrect': true},
        {'text': "A meteorological station with an average annual temperature of 26 degree C, average annual rainfall of 63 cm, and an annual temperature range of 9 degree C is Kolkata.", 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc("25").set({
      'questionId': "25",
      'order': 25,
      'statements': [
        {'text': "India experienced the first light of the sunrise of the new millennium along the 92 degree 30' E meridian.", 'isCorrect': true},
        {'text': "India experienced the first light of the sunrise of the new millennium along the 82 degree 30' E meridian.", 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc("26").set({
      'questionId': "26",
      'order': 26,
      'statements': [
        {'text': "If it is 10.00 a.m. IST, the local time at Shillong on 92 degree E longitude would be 10.38 a.m.", 'isCorrect': true},
        {'text': "If it is 10.00 a.m. IST, the local time at Shillong on 92 degree E longitude would be 9.38 a.m.", 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc("27").set({
      'questionId': "27",
      'order': 27,
      'statements': [
        {'text': "Snowfall in the Himalayas is explained by altitude.", 'isCorrect': true},
        {'text': "Snowfall in the Himalayas is explained by latitude.", 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc("28").set({
      'questionId': "28",
      'order': 28,
      'statements': [
        {'text': "Sundari trees are associated with West Bengal.", 'isCorrect': true},
        {'text': "Teak trees are associated with Jammu and Kashmir.", 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc("29").set({
      'questionId': "29",
      'order': 29,
      'statements': [
        {'text': "The Alpine vegetation limit is higher in the eastern Himalayas than in the western Himalayas because the eastern Himalayas receive more monsoon rainfall.", 'isCorrect': true},
        {'text': "The Alpine vegetation limit is higher in the eastern Himalayas than in the western Himalayas because the eastern Himalayas are higher than the western Himalayas.", 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc("30").set({
      'questionId': "30",
      'order': 30,
      'statements': [
        {'text': "Palaeomagnetic results indicate that the Indian landmass has moved northward in the past.", 'isCorrect': true},
        {'text': "Palaeomagnetic results indicate that the Indian landmass has moved southward in the past.", 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc("31").set({
      'questionId': "31",
      'order': 31,
      'statements': [
        {'text': "The Indian subcontinent was originally part of a huge landmass called the Gondwana Continent.", 'isCorrect': true},
        {'text': "The Indian subcontinent was originally part of a huge landmass called Aryavarta.", 'isCorrect': false},
      ],
    });

    final topicRef2 = subjectRef.collection('topics').doc("indian_geography_agriculture");
    await topicRef2.set({
      'name': "Indian Geography - Agriculture",
      'order': 2,
    }, SetOptions(merge: true));

    await topicRef2.collection('questions').doc("1").set({
      'questionId': "1",
      'order': 1,
      'statements': [
        {'text': "India has more arable land area than China.", 'isCorrect': true},
        {'text': "The proportion of irrigated area is more in India as compared to China.", 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc("2").set({
      'questionId': "2",
      'order': 2,
      'statements': [
        {'text': "Andhra Pradesh, Kerala, Himachal Pradesh, and Tripura are all generally known as tea-producing States in India.", 'isCorrect': true},
        {'text': "Himachal Pradesh is not generally known as a tea-producing State in India.", 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc("3").set({
      'questionId': "3",
      'order': 3,
      'statements': [
        {'text': "In India, most of the tamarind is collected as minor forest produce.", 'isCorrect': true},
        {'text': "Moringa (drumstick tree) is a leguminous evergreen tree.", 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc("4").set({
      'questionId': "4",
      'order': 4,
      'statements': [
        {'text': "Permaculture farming discourages monocultural practices, whereas monoculture practices are predominant in conventional chemical farming.", 'isCorrect': true},
        {'text': "Conventional chemical farming is easily possible in semi-arid regions, but permaculture farming is not so easily possible in such regions.", 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc("5").set({
      'questionId': "5",
      'order': 5,
      'statements': [
        {'text': "Among sugarcane, sunflower, pearl millet and red gram, sugarcane is the least water-efficient crop.", 'isCorrect': true},
        {'text': "Among sugarcane, sunflower, pearl millet and red gram, red gram is the least water-efficient crop.", 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc("6").set({
      'questionId': "6",
      'order': 6,
      'statements': [
        {'text': "Fertigation allows for increased availability of nutrients to plants.", 'isCorrect': true},
        {'text': "Fertigation allows for efficient application of Rock Phosphate and other phosphatic fertilizers.", 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc("7").set({
      'questionId': "7",
      'order': 7,
      'statements': [
        {'text': "Black gram can be cultivated as both a kharif and a rabi crop in India.", 'isCorrect': true},
        {'text': "Green gram alone accounts for nearly half of India's pulse production.", 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc("8").set({
      'questionId': "8",
      'order': 8,
      'statements': [
        {'text': "The crop that is subtropical in nature, is injured by hard frost, requires at least 210 frost-free days, 50 to 100 cm of rainfall, and light well-drained soil, is cotton.", 'isCorrect': true},
        {'text': "The crop that is subtropical in nature, is injured by hard frost, requires at least 210 frost-free days, 50 to 100 cm of rainfall, and light well-drained soil, is jute.", 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc("9").set({
      'questionId': "9",
      'order': 9,
      'statements': [
        {'text': "Sugarcane can be cultivated using settlings prepared from tissue culture.", 'isCorrect': true},
        {'text': "When direct planting of setts is done, the germination percentage is better with single-budded setts as compared to setts with many buds.", 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc("10").set({
      'questionId': "10",
      'order': 10,
      'statements': [
        {'text': "Among China, India, Myanmar and Vietnam, India has been the largest exporter of rice in the world in the last five years.", 'isCorrect': true},
        {'text': "Among China, India, Myanmar and Vietnam, Vietnam has been the largest exporter of rice in the world in the last five years.", 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc("11").set({
      'questionId': "11",
      'order': 11,
      'statements': [
        {'text': "Irrigation over a period of time can contribute to the salinization of some agricultural lands.", 'isCorrect': true},
        {'text': "A high content of organic matter in soil drastically reduces its water-holding capacity.", 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc("12").set({
      'questionId': "12",
      'order': 12,
      'statements': [
        {'text': "Reduced or zero tillage of the land can help in water conservation in agriculture.", 'isCorrect': true},
        {'text': "Applying gypsum before irrigating the field can help in water conservation in agriculture.", 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc("13").set({
      'questionId': "13",
      'order': 13,
      'statements': [
        {'text': "Kinnaur is not well known for the production of areca nut.", 'isCorrect': true},
        {'text': "Kinnaur is well known for the production of areca nut.", 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc("14").set({
      'questionId': "14",
      'order': 14,
      'statements': [
        {'text': "Cotton, Groundnut and Rice are Kharif crops.", 'isCorrect': true},
        {'text': "Wheat is a Kharif crop.", 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc("15").set({
      'questionId': "15",
      'order': 15,
      'statements': [
        {'text': "Groundnut, Sesamum and Pearl millet are predominantly rainfed crops in India.", 'isCorrect': true},
        {'text': "Pearl millet is not a predominantly rainfed crop in India.", 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc("16").set({
      'questionId': "16",
      'order': 16,
      'statements': [
        {'text': "The chief characteristic of 'mixed farming' is the rearing of animals and cultivation of crops together.", 'isCorrect': true},
        {'text': "The chief characteristic of 'mixed farming' is the cultivation of two or more crops in the same field.", 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc("17").set({
      'questionId': "17",
      'order': 17,
      'statements': [
        {'text': "Cowpea and Green gram are used as pulse, fodder, and green manure.", 'isCorrect': true},
        {'text': "Pigeon pea is used as pulse, fodder, and green manure.", 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc("18").set({
      'questionId': "18",
      'order': 18,
      'statements': [
        {'text': "Among Andhra Pradesh, Arunachal Pradesh, Madhya Pradesh and Uttar Pradesh, Arunachal Pradesh has the most suitable climatic conditions for cultivating a large variety of orchids at minimum cost of production.", 'isCorrect': true},
        {'text': "Among Andhra Pradesh, Arunachal Pradesh, Madhya Pradesh and Uttar Pradesh, Uttar Pradesh has the most suitable climatic conditions for cultivating a large variety of orchids at minimum cost of production.", 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc("19").set({
      'questionId': "19",
      'order': 19,
      'statements': [
        {'text': "Paddy and jute are the most suitable pair of crops for the humid, high-temperature climate of the lower Gangetic plain.", 'isCorrect': true},
        {'text': "Wheat and cotton are the most suitable pair of crops for the humid, high-temperature climate of the lower Gangetic plain.", 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc("20").set({
      'questionId': "20",
      'order': 20,
      'statements': [
        {'text': "A rich pool of skilled labour being available in Tamil Nadu is a reason for it being a leading producer of mill-made cotton yarn.", 'isCorrect': true},
        {'text': "Black cotton soil is the predominant type of soil in Tamil Nadu.", 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc("21").set({
      'questionId': "21",
      'order': 21,
      'statements': [
        {'text': "Coffee plant requires a hot and humid climate of tropical areas, whereas tea can be cultivated in both tropical and subtropical areas.", 'isCorrect': true},
        {'text': "Coffee is propagated by seeds, but tea is propagated by stem cuttings only.", 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc("22").set({
      'questionId': "22",
      'order': 22,
      'statements': [
        {'text': "Chikmangalur is not well known for sugar production.", 'isCorrect': true},
        {'text': "Chikmangalur is well-known for sugar production.", 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc("23").set({
      'questionId': "23",
      'order': 23,
      'statements': [
        {'text': "In decreasing order of production in India, the correct sequence of foodgrains is Rice, Wheat, Coarse cereals, and Pulses.", 'isCorrect': true},
        {'text': "In decreasing order of production in India, the correct sequence of foodgrains is Wheat, Rice, Pulses, and Coarse cereals.", 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc("24").set({
      'questionId': "24",
      'order': 24,
      'statements': [
        {'text': "Tea plants need fertile soil with high humus content.", 'isCorrect': true},
        {'text': "There are no tea plantations in any African country.", 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc("25").set({
      'questionId': "25",
      'order': 25,
      'statements': [
        {'text': "The percentage of net sown area in the total area of Andhra Pradesh is less as compared to that of West Bengal.", 'isCorrect': true},
        {'text': "The soil of most of Andhra Pradesh is laterite.", 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc("26").set({
      'questionId': "26",
      'order': 26,
      'statements': [
        {'text': "India is the only country in the world producing all five known commercial varieties of silk.", 'isCorrect': true},
        {'text': "India is not the largest producer of sugar in the world.", 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc("27").set({
      'questionId': "27",
      'order': 27,
      'statements': [
        {'text': "Cotton, Groundnut and Maize are Kharif crops.", 'isCorrect': true},
        {'text': "Mustard is a Kharif crop.", 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc("28").set({
      'questionId': "28",
      'order': 28,
      'statements': [
        {'text': "About 97% of India's demand for natural rubber is met from domestic production.", 'isCorrect': true},
        {'text': "India does not export natural rubber.", 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc("29").set({
      'questionId': "29",
      'order': 29,
      'statements': [
        {'text': "The eastern coast of India produces more rice than the western coast.", 'isCorrect': true},
        {'text': "The eastern coast of India receives more rainfall than the western coast.", 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc("30").set({
      'questionId': "30",
      'order': 30,
      'statements': [
        {'text': "About 90 per cent of the area under pulses in India is rainfed.", 'isCorrect': true},
        {'text': "Rice occupies about 34 per cent of the gross cropped area of India.", 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc("31").set({
      'questionId': "31",
      'order': 31,
      'statements': [
        {'text': "In decreasing order, the four leading sugarcane-producing States in India are Uttar Pradesh, Maharashtra, Tamil Nadu, and Andhra Pradesh.", 'isCorrect': true},
        {'text': "In decreasing order, the four leading sugarcane-producing States in India are Maharashtra, Uttar Pradesh, Tamil Nadu, and Andhra Pradesh.", 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc("32").set({
      'questionId': "32",
      'order': 32,
      'statements': [
        {'text': "Rajasthan has the largest area of cultivable wastelands in India.", 'isCorrect': true},
        {'text': "Gujarat is the largest producer of groundnut in India.", 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc("33").set({
      'questionId': "33",
      'order': 33,
      'statements': [
        {'text': "Cotton requires rainfall of 500-1000 mm and a temperature range of 18 degree C to 22 degree C.", 'isCorrect': true},
        {'text': "Cotton requires rainfall of 1000-1500 mm and a temperature range of 40 degree C to 60 degree C.", 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc("34").set({
      'questionId': "34",
      'order': 34,
      'statements': [
        {'text': "Kerala is the foremost producer of black pepper among Indian states.", 'isCorrect': true},
        {'text': "Kerala is the foremost producer of pineapple among Indian states.", 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc("35").set({
      'questionId': "35",
      'order': 35,
      'statements': [
        {'text': "Tea grows best in a warm and moist climate at high altitude.", 'isCorrect': true},
        {'text': "Tea grows best in a cool climate with poorer soil.", 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc("36").set({
      'questionId': "36",
      'order': 36,
      'statements': [
        {'text': "In descending order of production quantity, the major oilseeds produced in India are Soyabean, Groundnut, Mustard, and Sesamum.", 'isCorrect': true},
        {'text': "In descending order of production quantity, the major oilseeds produced in India are Sesamum, Mustard, Groundnut, and Soyabean.", 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc("37").set({
      'questionId': "37",
      'order': 37,
      'statements': [
        {'text': "Maharashtra is known for cotton, West Bengal for jute, and Gujarat for groundnut as their important crops.", 'isCorrect': true},
        {'text': "Kerala is known for tapioca as its important crop.", 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc("38").set({
      'questionId': "38",
      'order': 38,
      'statements': [
        {'text': "Good cultivation of wheat requires moderate temperature and moderate rainfall.", 'isCorrect': true},
        {'text': "Good cultivation of wheat requires high temperature and heavy rainfall.", 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc("39").set({
      'questionId': "39",
      'order': 39,
      'statements': [
        {'text': "Jute is an important crop of the Barak valley.", 'isCorrect': true},
        {'text': "Tea is an important crop of the Barak valley.", 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc("40").set({
      'questionId': "40",
      'order': 40,
      'statements': [
        {'text': "North-western and Western India produce the largest amount of cotton in the country.", 'isCorrect': true},
        {'text': "Western and Southern India produce the largest amount of cotton in the country.", 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc("41").set({
      'questionId': "41",
      'order': 41,
      'statements': [
        {'text': "Among rice, coffee, rubber and wheat, international trade in rice is low in the context of its total produce.", 'isCorrect': true},
        {'text': "Among rice, coffee, rubber and wheat, international trade in coffee is low in the context of its total produce.", 'isCorrect': false},
      ],
    });

    final topicRef3 = subjectRef.collection('topics').doc("indian_geography_roads_railways_ports_and_airports");
    await topicRef3.set({
      'name': "Indian Geography - Roads, Railways, Ports and Airports",
      'order': 3,
    }, SetOptions(merge: true));

    await topicRef3.collection('questions').doc("1").set({
      'questionId': "1",
      'order': 1,
      'statements': [
        {'text': "Donyi Polo Airport and Kushinagar International Airport have recently been constructed as Greenfield projects.", 'isCorrect': true},
        {'text': "Vijayawada International Airport has recently been constructed as a Greenfield project.", 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc("2").set({
      'questionId': "2",
      'order': 2,
      'statements': [
        {'text': "The East-West Corridor under the Golden Quadrilateral Project does not connect Dibrugarh and Surat.", 'isCorrect': true},
        {'text': "The East-West Corridor under the Golden Quadrilateral Project connects Dibrugarh and Surat.", 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc("3").set({
      'questionId': "3",
      'order': 3,
      'statements': [
        {'text': "Mundra Port is the largest privately owned port in India.", 'isCorrect': true},
        {'text': "Vishakhapatnam Port is the largest container port in India.", 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc("4").set({
      'questionId': "4",
      'order': 4,
      'statements': [
        {'text': "NH4 does not connect Chennai and Hyderabad.", 'isCorrect': true},
        {'text': "NH4 connects Chennai and Hyderabad.", 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc("5").set({
      'questionId': "5",
      'order': 5,
      'statements': [
        {'text': "Among Kochi, Dahej, Paradip and New Mangalore, Dahej is a non-major port in India.", 'isCorrect': true},
        {'text': "Among Kochi, Dahej, Paradip and New Mangalore, Paradip is a non-major port in India.", 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc("6").set({
      'questionId': "6",
      'order': 6,
      'statements': [
        {'text': "National Highway 6 passes through Maharashtra, Chhattisgarh and Orissa.", 'isCorrect': true},
        {'text': "National Highway 5 passes through Maharashtra, Chhattisgarh and Orissa.", 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc("7").set({
      'questionId': "7",
      'order': 7,
      'statements': [
        {'text': "The headquarters of the North Eastern Railway zone is Gorakhpur.", 'isCorrect': true},
        {'text': "The headquarters of the South Eastern Railway zone is Bhubaneshwar.", 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc("8").set({
      'questionId': "8",
      'order': 8,
      'statements': [
        {'text': "Among Agra-Mumbai, Chennai-Thane, Kolkata-Hajira and Pune-Machilipatnam, the Kolkata-Hajira route is the longest National Highway route.", 'isCorrect': true},
        {'text': "Among Agra-Mumbai, Chennai-Thane, Kolkata-Hajira and Pune-Machilipatnam, the Agra-Mumbai route is the longest National Highway route.", 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc("9").set({
      'questionId': "9",
      'order': 9,
      'statements': [
        {'text': "Among Kolkata, Kochi, Mumbai and Visakhapatnam, Kochi has the largest shipyard in India.", 'isCorrect': true},
        {'text': "Among Kolkata, Kochi, Mumbai and Visakhapatnam, Mumbai has the largest shipyard in India.", 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc("10").set({
      'questionId': "10",
      'order': 10,
      'statements': [
        {'text': "Among the Indian states, Kerala has the highest density of surface road.", 'isCorrect': true},
        {'text': "The Indian railways system is the largest in the world.", 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc("11").set({
      'questionId': "11",
      'order': 11,
      'statements': [
        {'text': "Among Calcutta, Kandla, Mumbai and Visakhapatnam, Kandla port handles the highest tonnage of import cargo in India.", 'isCorrect': true},
        {'text': "Among Calcutta, Kandla, Mumbai and Visakhapatnam, Mumbai port handles the highest tonnage of import cargo in India.", 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc("12").set({
      'questionId': "12",
      'order': 12,
      'statements': [
        {'text': "The Konkan Railway is the only rail route that cuts across the Western Ghats.", 'isCorrect': true},
        {'text': "The Konkan Railway Construction Company raised money through Public Issues.", 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc("13").set({
      'questionId': "13",
      'order': 13,
      'statements': [
        {'text': "In descending order of length of surface roads per 100 km2 of area, the correct sequence among Haryana, Maharashtra, Punjab and Tamil Nadu is Tamil Nadu, Haryana, Punjab, Maharashtra.", 'isCorrect': true},
        {'text': "In descending order of length of surface roads per 100 km2 of area, the correct sequence among Haryana, Maharashtra, Punjab and Tamil Nadu is Punjab, Tamil Nadu, Haryana, Maharashtra.", 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc("14").set({
      'questionId': "14",
      'order': 14,
      'statements': [
        {'text': "Goa, Karnataka, Maharashtra and Kerala stand to benefit the most from the Konkan Railway.", 'isCorrect': true},
        {'text': "Madhya Pradesh, Maharashtra, Tamil Nadu and Kerala stand to benefit the most from the Konkan Railway.", 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc("15").set({
      'questionId': "15",
      'order': 15,
      'statements': [
        {'text': "The national highway from Delhi to Calcutta via Mathura and Varanasi is numbered NH 2.", 'isCorrect': true},
        {'text': "The national highway from Delhi to Calcutta via Mathura and Varanasi is numbered NH 4.", 'isCorrect': false},
      ],
    });

    print('Geography seeding completed.');
  }
}
