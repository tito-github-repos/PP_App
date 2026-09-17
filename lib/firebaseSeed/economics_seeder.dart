
import 'package:cloud_firestore/cloud_firestore.dart';

class EconomicsSeeder {
  EconomicsSeeder._();

  static final FirebaseFirestore _firestore =
      FirebaseFirestore.instance;

 static Future<void> ecoSeed4() async {
    final subjectRef =
        _firestore.collection('subjects').doc('economics');

    await subjectRef.set({
      'name': 'Economics',
      'order': 3,
      'hasSections': false,
    }, SetOptions(merge: true));

    final topicRef12 =
        subjectRef.collection('topics').doc("employment_and_labour");
    await topicRef12.set({
      'name': "Employment and Labour",
      'order': 12,
    }, SetOptions(merge: true));

    await topicRef12.collection('questions').doc("1").set({
      'questionId': "1",
      'order': 1,
      'statements': [
        {'text': "The Pradhan Mantri Shram Yogi Maan-Dhan Yojana requires age-specific contributions from beneficiaries and provides a minimum monthly pension of ₹3,000 after attaining the age of 60 years.", 'isCorrect': true},
        {'text': "The Pradhan Mantri Shram Yogi Maan-Dhan Yojana provides a minimum monthly pension of ₹5,000 after attaining the age of 60 years and does not require age-specific contributions from beneficiaries.", 'isCorrect': false},
      ],
    });
    await topicRef12.collection('questions').doc("2").set({
      'questionId': "2",
      'order': 2,
      'statements': [
        {'text': "Casual workers are entitled to regular working hours and overtime payment, and the government can specify by notification that an establishment or industry shall pay wages through bank accounts.", 'isCorrect': true},
        {'text': "Casual workers are not entitled to regular working hours or overtime payment, and the government cannot specify that wages should be paid through bank accounts.", 'isCorrect': false},
      ],
    });
    await topicRef12.collection('questions').doc("3").set({
      'questionId': "3",
      'order': 3,
      'statements': [
        {'text': "Under the Industrial Employment (Standing Orders) Central (Amendment) Rules, 2018, fixed-term employment provisions can make it easier for firms to lay off workers, and no notice of termination is necessary in the case of a temporary workman.", 'isCorrect': true},
        {'text': "Under the Industrial Employment (Standing Orders) Central (Amendment) Rules, 2018, fixed-term employment provisions make it compulsory for firms to retain all workers permanently, and notice of termination is mandatory in every case of a temporary workman.", 'isCorrect': false},
      ],
    });
    await topicRef12.collection('questions').doc("4").set({
      'questionId': "4",
      'order': 4,
      'statements': [
        {'text': "Pradhan Mantri Kaushal Vikas Yojana imparts training in soft skills, entrepreneurship, financial and digital literacy and aims to align the competencies of the unregulated workforce with the National Skill Qualification Framework.", 'isCorrect': true},
        {'text': "Pradhan Mantri Kaushal Vikas Yojana does not provide training in soft skills, entrepreneurship, financial literacy, or digital literacy and has no connection with the National Skill Qualification Framework.", 'isCorrect': false},
      ],
    });
    await topicRef12.collection('questions').doc("5").set({
      'questionId': "5",
      'order': 5,
      'statements': [
        {'text': "The National Skills Qualification Framework facilitates mobility between vocational and general education.", 'isCorrect': true},
        {'text': "The National Skills Qualification Framework prevents mobility between vocational and general education.", 'isCorrect': false},
      ],
    });
    await topicRef12.collection('questions').doc("6").set({
      'questionId': "6",
      'order': 6,
      'statements': [
        {'text': "The National Career Service is neither an initiative of the Department of Personnel and Training nor launched exclusively to improve employment opportunities for uneducated youth.", 'isCorrect': true},
        {'text': "The National Career Service is an initiative of the Department of Personnel and Training and was launched exclusively to improve employment opportunities for uneducated youth.", 'isCorrect': false},
      ],
    });
    await topicRef12.collection('questions').doc("7").set({
      'questionId': "7",
      'order': 7,
      'statements': [
        {'text': "The Recognition of Prior Learning Scheme is associated with certifying skills acquired by construction workers through traditional channels.", 'isCorrect': true},
        {'text': "The Recognition of Prior Learning Scheme is associated exclusively with enrolling students in universities for distance-learning programmes.", 'isCorrect': false},
      ],
    });
    await topicRef12.collection('questions').doc("8").set({
      'questionId': "8",
      'order': 8,
      'statements': [
        {'text': "Disguised unemployment generally means that the marginal productivity of labour is zero.", 'isCorrect': true},
        {'text': "Disguised unemployment generally means that the marginal productivity of labour is very high.", 'isCorrect': false},
      ],
    });
    await topicRef12.collection('questions').doc("9").set({
      'questionId': "9",
      'order': 9,
      'statements': [
        {'text': "Employees working in hotels and restaurants, motor transport undertakings, newspaper establishments, and private medical institutions can have social security coverage under the Employees’ State Insurance Scheme.", 'isCorrect': true},
        {'text': "Employees working in hotels and restaurants, motor transport undertakings, newspaper establishments, and private medical institutions cannot receive social security coverage under the Employees’ State Insurance Scheme.", 'isCorrect': false},
      ],
    });
    await topicRef12.collection('questions').doc("10").set({
      'questionId': "10",
      'order': 10,
      'statements': [
        {'text': "Under the Mahatma Gandhi National Rural Employment Guarantee Act, adult members of any household are eligible to benefit by seeking employment.", 'isCorrect': true},
        {'text': "Under the Mahatma Gandhi National Rural Employment Guarantee Act, only adult members of Scheduled Caste and Scheduled Tribe households are eligible to benefit by seeking employment.", 'isCorrect': false},
      ],
    });
    await topicRef12.collection('questions').doc("11").set({
      'questionId': "11",
      'order': 11,
      'statements': [
        {'text': "The Swawlamban scheme provides training and skills to women in traditional and non-traditional trades.", 'isCorrect': true},
        {'text': "The Rashtriya Mahila Kosh provides training and skills to women in traditional and non-traditional trades.", 'isCorrect': false},
      ],
    });
    await topicRef12.collection('questions').doc("12").set({
      'questionId': "12",
      'order': 12,
      'statements': [
        {'text': "The Rajiv Gandhi National Institute of Youth Development is located in Tamil Nadu.", 'isCorrect': true},
        {'text': "The Rajiv Gandhi National Institute of Youth Development is located in Karnataka.", 'isCorrect': false},
      ],
    });
    await topicRef12.collection('questions').doc("13").set({
      'questionId': "13",
      'order': 13,
      'statements': [
        {'text': "Drinking water for rural areas is a component of the Bharat Nirman Plan, and workers under the National Rural Employment Guarantee Act, 2005 are entitled to wages as provided under the relevant provisions.", 'isCorrect': true},
        {'text': "Drinking water for rural areas is not a component of the Bharat Nirman Plan, and workers under the National Rural Employment Guarantee Act, 2005 are not entitled to wages under the relevant provisions.", 'isCorrect': false},
      ],
    });
    await topicRef12.collection('questions').doc("14").set({
      'questionId': "14",
      'order': 14,
      'statements': [
        {'text': "Under the National Rural Employment Guarantee Act, 2005, the provisions relating to 100 days of employment and the priority for women stated in the question are not both correct.", 'isCorrect': true},
        {'text': "Under the National Rural Employment Guarantee Act, 2005, every eligible household is guaranteed only 50 days of employment in a year, and women are given no priority in employment.", 'isCorrect': false},
      ],
    });
    await topicRef12.collection('questions').doc("15").set({
      'questionId': "15",
      'order': 15,
      'statements': [
        {'text': "The Swarna Jayanti Shahari Rozgar Yojana did not include the Prime Minister’s Rozgar Yojana.", 'isCorrect': true},
        {'text': "The Swarna Jayanti Shahari Rozgar Yojana included the Prime Minister’s Rozgar Yojana as one of its components.", 'isCorrect': false},
      ],
    });
    await topicRef12.collection('questions').doc("16").set({
      'questionId': "16",
      'order': 16,
      'statements': [
        {'text': "The Employment Assurance Scheme did not guarantee employment according to any of the specific categories mentioned in the options.", 'isCorrect': true},
        {'text': "The Employment Assurance Scheme guaranteed year-round employment to every adult member of every rural household.", 'isCorrect': false},
      ],
    });
    await topicRef12.collection('questions').doc("17").set({
      'questionId': "17",
      'order': 17,
      'statements': [
        {'text': "The objective of the National Renewal Fund was to safeguard the interests of workers affected by technological upgradation of industry or the closure of sick units.", 'isCorrect': true},
        {'text': "The objective of the National Renewal Fund was primarily to develop infrastructure such as energy, transport, communications, and irrigation.", 'isCorrect': false},
      ],
    });

    final topicRef13 =
        subjectRef.collection('topics').doc("agriculture");
    await topicRef13.set({
      'name': "Agriculture",
      'order': 13,
    }, SetOptions(merge: true));

    await topicRef13.collection('questions').doc("1").set({
      'questionId': "1",
      'order': 1,
      'statements': [
        {'text': "India is the largest producer and exporter of turmeric in the world, more than 30 varieties of turmeric are grown in India, and Maharashtra, Telangana, Karnataka and Tamil Nadu are major turmeric-producing States.", 'isCorrect': true},
        {'text': "India is not the largest producer of turmeric in the world, fewer than 10 varieties of turmeric are grown in India, and Maharashtra, Telangana, Karnataka and Tamil Nadu are not major turmeric-producing States.", 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc("2").set({
      'questionId': "2",
      'order': 2,
      'statements': [
        {'text': "The Rashtriya Gokul Mission is important for the upliftment of rural poor because many low-producing indigenous animals are owned by small and marginal farmers and landless labourers, and it promotes indigenous cattle and buffalo rearing and conservation scientifically and holistically.", 'isCorrect': true},
        {'text': "The Rashtriya Gokul Mission focuses exclusively on exotic cattle breeds and does not promote the conservation or scientific development of indigenous cattle and buffaloes.", 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc("3").set({
      'questionId': "3",
      'order': 3,
      'statements': [
        {'text': "Under the Digital India Land Records Modernization Programme, the Central Government provides 100% funding, cadastral maps are digitised, and records of rights are being transliterated from local languages into constitutionally recognized languages.", 'isCorrect': true},
        {'text': "Under the Digital India Land Records Modernization Programme, the Central Government provides only 50% funding, and cadastral maps are not digitised.", 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc("4").set({
      'questionId': "4",
      'order': 4,
      'statements': [
        {'text': "The concept of Small Farmer Large Field involves many marginal farmers in an area organizing themselves into groups and synchronizing selected agricultural operations.", 'isCorrect': true},
        {'text': "The concept of Small Farmer Large Field involves individual marginal farmers cultivating completely separate fields without coordinating any agricultural operations.", 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc("5").set({
      'questionId': "5",
      'order': 5,
      'statements': [
        {'text': "The Government of India provides Minimum Support Price for niger seeds, niger is cultivated as a Kharif crop, and some tribal communities use niger seed oil for cooking.", 'isCorrect': true},
        {'text': "The Government of India does not provide Minimum Support Price for niger seeds, and niger is cultivated exclusively as a Rabi crop.", 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc("6").set({
      'questionId': "6",
      'order': 6,
      'statements': [
        {'text': "The Tea Board is a statutory body, and it has overseas offices at Dubai and Moscow.", 'isCorrect': true},
        {'text': "The Tea Board is a non-statutory body and has no overseas offices at Dubai or Moscow.", 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc("7").set({
      'questionId': "7",
      'order': 7,
      'statements': [
        {'text': "Computerization of Primary Agricultural Credit Societies, social capital development, and the setting up of cold storage facilities by governments can be considered public investment in agriculture.", 'isCorrect': true},
        {'text': "Computerization of Primary Agricultural Credit Societies, social capital development, and government-supported cold storage facilities cannot be considered public investment in agriculture.", 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc("8").set({
      'questionId': "8",
      'order': 8,
      'statements': [
        {'text': "Minimum Support Price, government trading, government stockpiling, and consumer subsidies can affect the price of rice in India.", 'isCorrect': true},
        {'text': "Minimum Support Price, government trading, government stockpiling, and consumer subsidies have no effect on the price of rice in India.", 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc("9").set({
      'questionId': "9",
      'order': 9,
      'statements': [
        {'text': "Under the Kisan Credit Card Scheme, short-term credit support is provided for working capital for maintenance of farm assets, consumption requirements of farm households, and post-harvest expenses.", 'isCorrect': true},
        {'text': "Under the Kisan Credit Card Scheme, short-term credit support is provided only for purchasing agricultural land and cannot be used for maintenance of farm assets, household consumption requirements, or post-harvest expenses.", 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc("10").set({
      'questionId': "10",
      'order': 10,
      'statements': [
        {'text': "Procurement at Minimum Support Price is not unlimited for all cereals, pulses and oilseeds in every State or Union Territory, and MSP is not fixed at a level beyond which market prices can never rise.", 'isCorrect': true},
        {'text': "Procurement at Minimum Support Price is unlimited for all cereals, pulses and oilseeds in every State and Union Territory, and market prices can never rise above the MSP.", 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc("11").set({
      'questionId': "11",
      'order': 11,
      'statements': [
        {'text': "The major aim of land reforms in independent India was to provide agricultural land to the landless.", 'isCorrect': true},
        {'text': "The major aim of land reforms in independent India was to increase land ownership concentration among large landlords.", 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc("12").set({
      'questionId': "12",
      'order': 12,
      'statements': [
        {'text': "The economic cost of foodgrains to the Food Corporation of India includes the Minimum Support Price and bonus paid to farmers along with procurement incidentals and distribution costs.", 'isCorrect': true},
        {'text': "The economic cost of foodgrains to the Food Corporation of India includes only the Minimum Support Price paid to farmers and excludes procurement incidentals and distribution costs.", 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc("13").set({
      'questionId': "13",
      'order': 13,
      'statements': [
        {'text': "In recent years, the area under rice cultivation has been the highest among the listed crops, and the area under cotton cultivation has been greater than that under sugarcane.", 'isCorrect': true},
        {'text': "In recent years, the area under sugarcane cultivation has been the highest among the listed crops, and the area under cotton cultivation has been less than that under sugarcane.", 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc("14").set({
      'questionId': "14",
      'order': 14,
      'statements': [
        {'text': "According to the NSSO 70th Round Situation Assessment Survey of Agricultural Households, Rajasthan had the highest percentage share of agricultural households among rural households, and in Kerala more than 60 percent of agricultural households reported maximum income from non-agricultural sources.", 'isCorrect': true},
        {'text': "According to the NSSO 70th Round Situation Assessment Survey of Agricultural Households, Kerala had the highest percentage share of agricultural households among rural households, and Rajasthan reported more than 60 percent of agricultural households receiving maximum income from non-agricultural sources.", 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc("15").set({
      'questionId': "15",
      'order': 15,
      'statements': [
        {'text': "Conservation Agriculture includes adopting minimum tillage, using crop residues to cover the soil surface, and adopting spatial and temporal crop sequencing or crop rotations.", 'isCorrect': true},
        {'text': "Conservation Agriculture requires intensive tillage, complete removal of crop residues from the soil surface, and avoidance of crop rotations.", 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc("16").set({
      'questionId': "16",
      'order': 16,
      'statements': [
        {'text': "The Cabinet Committee on Economic Affairs announces Minimum Support Prices for barley, finger millet, groundnut, and sesamum among the crops listed.", 'isCorrect': true},
        {'text': "The Cabinet Committee on Economic Affairs does not announce Minimum Support Prices for barley, finger millet, groundnut, or sesamum.", 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc("17").set({
      'questionId': "17",
      'order': 17,
      'statements': [
        {'text': "The National Agriculture Market is a pan-India electronic trading portal for agricultural commodities and provides farmers access to a nationwide market with prices linked to the quality of their produce.", 'isCorrect': true},
        {'text': "The National Agriculture Market is a State-level physical trading system that does not provide farmers access to a nationwide market or prices linked to produce quality.", 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc("18").set({
      'questionId': "18",
      'order': 18,
      'statements': [
        {'text': "The nationwide Soil Health Card Scheme aims to check the overuse of fertilizers in farmlands.", 'isCorrect': true},
        {'text': "The nationwide Soil Health Card Scheme encourages the increased and unrestricted use of chemical fertilizers in farmlands.", 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc("19").set({
      'questionId': "19",
      'order': 19,
      'statements': [
        {'text': "The Initiative for Nutritional Security through Intensive Millets Promotion demonstrates improved production and post-harvest technologies and value-addition techniques through a cluster approach, with poor, small, marginal and tribal farmers having a larger stake in the scheme.", 'isCorrect': true},
        {'text': "The Initiative for Nutritional Security through Intensive Millets Promotion does not demonstrate improved production technologies or value-addition techniques and does not particularly benefit poor, small, marginal, or tribal farmers.", 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc("20").set({
      'questionId': "20",
      'order': 20,
      'statements': [
        {'text': "Under the Pradhan Mantri Fasal Bima Yojana, post-harvest losses arising from cyclones and unseasonal rains are covered.", 'isCorrect': true},
        {'text': "Under the Pradhan Mantri Fasal Bima Yojana, post-harvest losses arising from cyclones and unseasonal rains are not covered.", 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc("21").set({
      'questionId': "21",
      'order': 21,
      'statements': [
        {'text': "The Seed Village Concept involves training farmers in quality seed production and making quality seeds available to others at the appropriate time and affordable cost.", 'isCorrect': true},
        {'text': "The Seed Village Concept discourages farmers from producing quality seeds and relies entirely on imported seeds for distribution.", 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc("22").set({
      'questionId': "22",
      'order': 22,
      'statements': [
        {'text': "The Fair and Remunerative Price of sugarcane is approved by the Cabinet Committee on Economic Affairs.", 'isCorrect': true},
        {'text': "The Fair and Remunerative Price of sugarcane is fixed by the Reserve Bank of India.", 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc("23").set({
      'questionId': "23",
      'order': 23,
      'statements': [
        {'text': "In India, markets in agricultural products are regulated under the Agricultural Produce Market Committee Acts enacted by State Governments.", 'isCorrect': true},
        {'text': "In India, markets in agricultural products are regulated exclusively by Acts enacted by the Union Government.", 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc("24").set({
      'questionId': "24",
      'order': 24,
      'statements': [
        {'text': "A major constraint in increasing Seed Replacement Rates is the demand-supply gap regarding quality seeds for low-value and high-volume crops.", 'isCorrect': true},
        {'text': "A major constraint in increasing Seed Replacement Rates is an excess supply of quality seeds for all low-value and high-volume crops.", 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc("25").set({
      'questionId': "25",
      'order': 25,
      'statements': [
        {'text': "The Government of India promotes Mega Food Parks to provide infrastructure facilities for the food processing industry and increase the processing of perishable items while reducing wastage.", 'isCorrect': true},
        {'text': "The Government of India promotes Mega Food Parks primarily to reduce food-processing infrastructure and discourage the processing of perishable agricultural products.", 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc("26").set({
      'questionId': "26",
      'order': 26,
      'statements': [
        {'text': "In India, the total cultivated land under pulses remained more or less stagnant during the last decade.", 'isCorrect': true},
        {'text': "In India, the total cultivated land under pulses has doubled continuously every year during the last decade.", 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc("27").set({
      'questionId': "27",
      'order': 27,
      'statements': [
        {'text': "The Union Government fixes the Statutory Minimum Price of sugarcane for each sugar season, and sugar and sugarcane are essential commodities under the Essential Commodities Act.", 'isCorrect': true},
        {'text': "The Union Government does not fix any Statutory Minimum Price for sugarcane, and neither sugar nor sugarcane is covered under the Essential Commodities Act.", 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc("28").set({
      'questionId': "28",
      'order': 28,
      'statements': [
        {'text': "The Commission for Agricultural Costs and Prices does not recommend Minimum Support Prices for 32 crops, and the National Food Security Mission was not launched by the Union Ministry of Consumer Affairs, Food and Public Distribution.", 'isCorrect': true},
        {'text': "The Commission for Agricultural Costs and Prices recommends Minimum Support Prices for exactly 32 crops, and the National Food Security Mission was launched by the Union Ministry of Consumer Affairs, Food and Public Distribution.", 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc("29").set({
      'questionId': "29",
      'order': 29,
      'statements': [
        {'text': "Norman Ernest Borlaug, regarded as the father of the Green Revolution in India, was from the United States of America.", 'isCorrect': true},
        {'text': "Norman Ernest Borlaug, regarded as the father of the Green Revolution in India, was from India.", 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc("30").set({
      'questionId': "30",
      'order': 30,
      'statements': [
        {'text': "India has the largest livestock population in the world.", 'isCorrect': true},
        {'text': "India does not have the largest livestock population in the world.", 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc("31").set({
      'questionId': "31",
      'order': 31,
      'statements': [
        {'text': "Among the given economic indicators and agricultural production figures, GDP per capita at current prices of about ₹37,000 and wheat production of about 75 million tonnes were correctly matched.", 'isCorrect': true},
        {'text': "Among the given economic indicators and agricultural production figures, GDP per capita at current prices of about ₹37,000 and wheat production of about 75 million tonnes were incorrectly matched.", 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc("32").set({
      'questionId': "32",
      'order': 32,
      'statements': [
        {'text': "Kisan Credit Card holders are provided personal accident insurance of ₹50,000 for accidental death and ₹25,000 for permanent disability.", 'isCorrect': true},
        {'text': "Kisan Credit Card holders are provided personal accident insurance of ₹5 lakh for accidental death and ₹2.5 lakh for permanent disability.", 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc("33").set({
      'questionId': "33",
      'order': 33,
      'statements': [
        {'text': "The Government of India followed a procurement target rather than an open-ended procurement policy, and wheat and rice under the Targeted Public Distribution System were issued at uniform Central Issue Prices to States and Union Territories.", 'isCorrect': true},
        {'text': "The Government of India follows a completely open-ended procurement policy, and wheat and rice under the Targeted Public Distribution System are issued at different Central Issue Prices to every State and Union Territory.", 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc("34").set({
      'questionId': "34",
      'order': 34,
      'statements': [
        {'text': "India continues to depend on imports to meet its oilseed requirements because farmers prefer foodgrains with remunerative support prices, oilseed cultivation largely depends on rainfall, and oils from tree-origin seeds and rice bran have remained underutilized.", 'isCorrect': true},
        {'text': "India is fully self-sufficient in edible oils and does not depend on imports to meet its oilseed requirements.", 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc("35").set({
      'questionId': "35",
      'order': 35,
      'statements': [
        {'text': "Among the listed high-yielding crop varieties, Arjun and Sonalika are varieties of wheat.", 'isCorrect': true},
        {'text': "Among the listed high-yielding crop varieties, Arjun and Sonalika are varieties of rice.", 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc("36").set({
      'questionId': "36",
      'order': 36,
      'statements': [
        {'text': "The prices at which the Government purchases foodgrains for maintaining the public distribution system and building buffer stocks are known as procurement prices.", 'isCorrect': true},
        {'text': "The prices at which the Government purchases foodgrains for maintaining the public distribution system and building buffer stocks are known as consumer prices.", 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc("37").set({
      'questionId': "37",
      'order': 37,
      'statements': [
        {'text': "The National Agriculture Insurance Scheme, replacing the Comprehensive Crop Insurance Scheme, was introduced in 1999.", 'isCorrect': true},
        {'text': "The National Agriculture Insurance Scheme, which replaced the Comprehensive Crop Insurance Scheme, was introduced in 2009.", 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc("38").set({
      'questionId': "38",
      'order': 38,
      'statements': [
        {'text': "The main sources of credit to farmers include Primary Agricultural Cooperative Societies, commercial banks, Regional Rural Banks, and private moneylenders.", 'isCorrect': true},
        {'text': "The main sources of credit to farmers include only private moneylenders, while Primary Agricultural Cooperative Societies, commercial banks, and Regional Rural Banks do not provide agricultural credit.", 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc("39").set({
      'questionId': "39",
      'order': 39,
      'statements': [
        {'text': "The objectives of the Commission for Agricultural Costs and Prices include stabilizing agricultural prices, ensuring meaningful real income levels for farmers, and protecting consumer interests by providing essential agricultural commodities at reasonable rates through the public distribution system.", 'isCorrect': true},
        {'text': "The objectives of the Commission for Agricultural Costs and Prices exclude agricultural price stabilization, farmers’ real income, and consumer interests.", 'isCorrect': false},
      ],
    });
    await topicRef13.collection('questions').doc("40").set({
      'questionId': "40",
      'order': 40,
      'statements': [
        {'text': "Agricultural income tax is assigned to State Governments by the Constitution of India.", 'isCorrect': true},
        {'text': "Agricultural income tax is assigned to the Union Government by the Constitution of India.", 'isCorrect': false},
      ],
    });

    final topicRef14 =
        subjectRef.collection('topics').doc("economic_reforms");
    await topicRef14.set({
      'name': "Economic Reforms",
      'order': 14,
    }, SetOptions(merge: true));

    await topicRef14.collection('questions').doc("1").set({
      'questionId': "1",
      'order': 1,
      'statements': [
        {'text': "Foreign-owned e-commerce firms operating in India cannot sell their own goods in addition to operating marketplace platforms, and the degree to which they can own big sellers on their platforms is limited.", 'isCorrect': true},
        {'text': "Foreign-owned e-commerce firms operating in India can freely sell their own goods while operating marketplace platforms, and there is no limitation on the degree to which they can own big sellers on their platforms.", 'isCorrect': false},
      ],
    });
    await topicRef14.collection('questions').doc("2").set({
      'questionId': "2",
      'order': 2,
      'statements': [
        {'text': "Under the Maternity Benefit (Amendment) Act, 2017, women with two children get reduced maternity benefit entitlements.", 'isCorrect': true},
        {'text': "Under the Maternity Benefit (Amendment) Act, 2017, women are entitled to the same maternity benefit regardless of the number of children they have.", 'isCorrect': false},
      ],
    });
    await topicRef14.collection('questions').doc("3").set({
      'questionId': "3",
      'order': 3,
      'statements': [
        {'text': "Plant varieties are not eligible to be patented in India.", 'isCorrect': true},
        {'text': "All plant varieties are eligible to be patented in India without any restriction.", 'isCorrect': false},
      ],
    });
    await topicRef14.collection('questions').doc("4").set({
      'questionId': "4",
      'order': 4,
      'statements': [
        {'text': "The Food Safety and Standards Act, 2006 replaced the Prevention of Food Adulteration Act, 1954.", 'isCorrect': true},
        {'text': "The Food Safety and Standards Act, 2006 did not replace the Prevention of Food Adulteration Act, 1954.", 'isCorrect': false},
      ],
    });
    await topicRef14.collection('questions').doc("5").set({
      'questionId': "5",
      'order': 5,
      'statements': [
        {'text': "The Standard Mark of the Bureau of Indian Standards (BIS) is mandatory for automotive tyres and tubes.", 'isCorrect': true},
        {'text': "The Standard Mark of the Bureau of Indian Standards (BIS) is optional for all automotive tyres and tubes.", 'isCorrect': false},
      ],
    });
    await topicRef14.collection('questions').doc("6").set({
      'questionId': "6",
      'order': 6,
      'statements': [
        {'text': "The Quality Council of India was set up jointly by the Government of India and Indian industry, and its Chairman is appointed by the Prime Minister on the recommendations of industry.", 'isCorrect': true},
        {'text': "The Quality Council of India was established exclusively by the Government of India, and its Chairman is appointed directly by Parliament.", 'isCorrect': false},
      ],
    });
    await topicRef14.collection('questions').doc("7").set({
      'questionId': "7",
      'order': 7,
      'statements': [
        {'text': "The National Intellectual Property Rights Policy reiterates India's commitment to the Doha Development Agenda and the TRIPS Agreement, and the Department of Industrial Policy and Promotion is the nodal agency for regulating intellectual property rights in India.", 'isCorrect': true},
        {'text': "The National Intellectual Property Rights Policy rejects India's commitment to the Doha Development Agenda and the TRIPS Agreement, and the Department of Industrial Policy and Promotion has no role in intellectual property rights in India.", 'isCorrect': false},
      ],
    });
    await topicRef14.collection('questions').doc("8").set({
      'questionId': "8",
      'order': 8,
      'statements': [
        {'text': "The National Investment and Infrastructure Fund is not an organ of NITI Aayog and did not have a corpus of Rs. 4,00,000 crore.", 'isCorrect': true},
        {'text': "The National Investment and Infrastructure Fund is an organ of NITI Aayog and has a corpus of Rs. 4,00,000 crore.", 'isCorrect': false},
      ],
    });
    await topicRef14.collection('questions').doc("9").set({
      'questionId': "9",
      'order': 9,
      'statements': [
        {'text': "Properties held benami are liable for confiscation by the Government.", 'isCorrect': true},
        {'text': "Properties held benami cannot be confiscated by the Government under any circumstances.", 'isCorrect': false},
      ],
    });
    await topicRef14.collection('questions').doc("10").set({
      'questionId': "10",
      'order': 10,
      'statements': [
        {'text': "Pre-packaged food items must carry information on the list of ingredients including additives, nutrition information, and whether the food is vegetarian or non-vegetarian.", 'isCorrect': true},
        {'text': "Pre-packaged food items are not required to carry information about ingredients, additives, nutrition, or whether the food is vegetarian or non-vegetarian.", 'isCorrect': false},
      ],
    });
    await topicRef14.collection('questions').doc("11").set({
      'questionId': "11",
      'order': 11,
      'statements': [
        {'text': "District Mineral Foundations are intended to protect the interests of persons affected by mining operations.", 'isCorrect': true},
        {'text': "District Mineral Foundations are intended primarily to promote mining companies and have no responsibility towards persons affected by mining operations.", 'isCorrect': false},
      ],
    });
    await topicRef14.collection('questions').doc("12").set({
      'questionId': "12",
      'order': 12,
      'statements': [
        {'text': "The Financial Stability and Development Council is headed by the Union Finance Minister and monitors macro-prudential supervision of the economy.", 'isCorrect': true},
        {'text': "The Financial Stability and Development Council is headed by the Prime Minister and does not monitor macro-prudential supervision of the economy.", 'isCorrect': false},
      ],
    });
    await topicRef14.collection('questions').doc("13").set({
      'questionId': "13",
      'order': 13,
      'statements': [
        {'text': "The National Development Council and the Parliament are associated with planning in India.", 'isCorrect': true},
        {'text': "The National Development Council and the Parliament have no association with planning in India.", 'isCorrect': false},
      ],
    });
    await topicRef14.collection('questions').doc("14").set({
      'questionId': "14",
      'order': 14,
      'statements': [
        {'text': "Economic and social planning is included in the Concurrent List, and Panchayats are constitutionally assigned the task of preparing plans for economic development and social justice.", 'isCorrect': true},
        {'text': "Economic and social planning is included exclusively in the Union List, and Panchayats have no constitutional responsibility for preparing plans for economic development and social justice.", 'isCorrect': false},
      ],
    });
    await topicRef14.collection('questions').doc("15").set({
      'questionId': "15",
      'order': 15,
      'statements': [
        {'text': "The Prime Minister, Union Cabinet Ministers, and Chief Ministers of States constitute the National Development Council.", 'isCorrect': true},
        {'text': "The National Development Council consists only of the Prime Minister and does not include Union Cabinet Ministers or Chief Ministers of States.", 'isCorrect': false},
      ],
    });
    await topicRef14.collection('questions').doc("16").set({
      'questionId': "16",
      'order': 16,
      'statements': [
        {'text': "The Thirteenth Finance Commission recommended a design for the Goods and Services Tax with a compensation package and the devolution of a specified share of central taxes to local bodies as grants.", 'isCorrect': true},
        {'text': "The Thirteenth Finance Commission neither recommended a design for the Goods and Services Tax nor provided for a compensation package or grants to local bodies.", 'isCorrect': false},
      ],
    });
    await topicRef14.collection('questions').doc("17").set({
      'questionId': "17",
      'order': 17,
      'statements': [
        {'text': "None of the listed statements about encouraging foreign capital, distributing finances among public sector undertakings, or ensuring transparency correctly describes the role of the Finance Commission.", 'isCorrect': true},
        {'text': "The Finance Commission is responsible for encouraging foreign capital, distributing finances among public sector undertakings, and ensuring transparency in public administration.", 'isCorrect': false},
      ],
    });
    await topicRef14.collection('questions').doc("18").set({
      'questionId': "18",
      'order': 18,
      'statements': [
        {'text': "The Forward Markets Commission regulated commodities futures trading in India.", 'isCorrect': true},
        {'text': "The Forward Markets Commission regulated only the stock market and had no role in commodities futures trading in India.", 'isCorrect': false},
      ],
    });
    await topicRef14.collection('questions').doc("19").set({
      'questionId': "19",
      'order': 19,
      'statements': [
        {'text': "The Prime Minister is the Chairman of the National Water Resources Council in India.", 'isCorrect': true},
        {'text': "The Union Minister for Jal Shakti, rather than the Prime Minister, is the Chairman of the National Water Resources Council in India.", 'isCorrect': false},
      ],
    });
    await topicRef14.collection('questions').doc("20").set({
      'questionId': "20",
      'order': 20,
      'statements': [
        {'text': "Balmer Lawrie and Company Ltd., Dredging Corporation of India, and Educational Consultants of India Ltd. are public sector undertakings of the Government of India.", 'isCorrect': true},
        {'text': "Balmer Lawrie and Company Ltd., Dredging Corporation of India, and Educational Consultants of India Ltd. are private sector companies and not public sector undertakings of the Government of India.", 'isCorrect': false},
      ],
    });
    await topicRef14.collection('questions').doc("21").set({
      'questionId': "21",
      'order': 21,
      'statements': [
        {'text': "Onkar S. Kunwar was the President of FICCI.", 'isCorrect': true},
        {'text': "Onkar S. Kunwar was never the President of FICCI.", 'isCorrect': false},
      ],
    });
    await topicRef14.collection('questions').doc("22").set({
      'questionId': "22",
      'order': 22,
      'statements': [
        {'text': "Kumarmangalam Birla was not a member of the Investment Commission formed in December 2004.", 'isCorrect': true},
        {'text': "Kumarmangalam Birla was a member of the Investment Commission formed in December 2004.", 'isCorrect': false},
      ],
    });
    await topicRef14.collection('questions').doc("23").set({
      'questionId': "23",
      'order': 23,
      'statements': [
        {'text': "The Secretary of the Planning Commission was also the Secretary of the National Development Council, and economic and social planning is included in the Concurrent List of the Constitution.", 'isCorrect': true},
        {'text': "The Secretary of the Planning Commission was not associated with the National Development Council, and economic and social planning is included exclusively in the Union List of the Constitution.", 'isCorrect': false},
      ],
    });
    await topicRef14.collection('questions').doc("24").set({
      'questionId': "24",
      'order': 24,
      'statements': [
        {'text': "The government holding in BPCL was between 50% and 60%.", 'isCorrect': true},
        {'text': "The government holding in BPCL was less than 10%.", 'isCorrect': false},
      ],
    });
    await topicRef14.collection('questions').doc("25").set({
      'questionId': "25",
      'order': 25,
      'statements': [
        {'text': "The Finance Commission allocates among the States their shares in the proceeds of taxes and considers applications for grants-in-aid from States.", 'isCorrect': true},
        {'text': "The Finance Commission has no role in allocating among the States their shares in tax proceeds or considering grants-in-aid to States.", 'isCorrect': false},
      ],
    });
    await topicRef14.collection('questions').doc("26").set({
      'questionId': "26",
      'order': 26,
      'statements': [
        {'text': "Survey of India is under the Ministry of Science and Technology.", 'isCorrect': true},
        {'text': "Survey of India is under the Ministry of Finance.", 'isCorrect': false},
      ],
    });
    await topicRef14.collection('questions').doc("27").set({
      'questionId': "27",
      'order': 27,
      'statements': [
        {'text': "The objectives of the National Renewal Fund included training and counselling workers affected by retrenchment or voluntary retirement and redeployment of workers.", 'isCorrect': true},
        {'text': "The National Renewal Fund did not include training, counselling, or redeployment support for workers affected by retrenchment or voluntary retirement.", 'isCorrect': false},
      ],
    });
    await topicRef14.collection('questions').doc("28").set({
      'questionId': "28",
      'order': 28,
      'statements': [
        {'text': "The correct chronological sequence of establishment of IFCI, ICICI, IDBI and NABARD is IFCI, ICICI, IDBI and NABARD.", 'isCorrect': true},
        {'text': "The correct chronological sequence of establishment of IFCI, ICICI, IDBI and NABARD is NABARD, IDBI, ICICI and IFCI.", 'isCorrect': false},
      ],
    });
    await topicRef14.collection('questions').doc("29").set({
      'questionId': "29",
      'order': 29,
      'statements': [
        {'text': "Eco Mark is given to Indian products that are environment friendly.", 'isCorrect': true},
        {'text': "Eco Mark is given to Indian products regardless of whether they are environment friendly.", 'isCorrect': false},
      ],
    });
    await topicRef14.collection('questions').doc("30").set({
      'questionId': "30",
      'order': 30,
      'statements': [
        {'text': "The committees on disinvestment of shares in public sector enterprises, industrial sickness, tax reforms and reforms in the insurance sector were chaired respectively by C. Rangarajan, Onkar Goswami, Rajah Chelliah and R.N. Malhotra.", 'isCorrect': true},
        {'text': "The committees on disinvestment of shares in public sector enterprises, industrial sickness, tax reforms and reforms in the insurance sector were chaired respectively by R.N. Malhotra, Rajah Chelliah, C. Rangarajan and Onkar Goswami.", 'isCorrect': false},
      ],
    });
    await topicRef14.collection('questions').doc("31").set({
      'questionId': "31",
      'order': 31,
      'statements': [
        {'text': "The correct sequence of establishment of IFCI, ICICI, UTI and IDBI is IFCI, ICICI, UTI and IDBI.", 'isCorrect': true},
        {'text': "The correct sequence of establishment of IFCI, ICICI, UTI and IDBI is IDBI, UTI, ICICI and IFCI.", 'isCorrect': false},
      ],
    });

    final topicRef15 =
        subjectRef.collection('topics').doc("five_year_plans");
    await topicRef15.set({
      'name': "Five-Year Plans",
      'order': 15,
    }, SetOptions(merge: true));

    await topicRef15.collection('questions').doc("1").set({
      'questionId': "1",
      'order': 1,
      'statements': [
        {'text': "From the Second Five-Year Plan, there was a determined thrust towards substitution of basic and capital goods industries, and the Fourth Five-Year Plan aimed to correct the earlier trend of increased concentration of wealth and economic power.", 'isCorrect': true},
        {'text': "From the Second Five-Year Plan, India avoided developing basic and capital goods industries, and the Fourth Five-Year Plan aimed to increase the concentration of wealth and economic power.", 'isCorrect': false},
      ],
    });
    await topicRef15.collection('questions').doc("2").set({
      'questionId': "2",
      'order': 2,
      'statements': [
        {'text': "The main objective of the Twelfth Five-Year Plan was faster, sustainable and more inclusive growth.", 'isCorrect': true},
        {'text': "The main objective of the Twelfth Five-Year Plan was rapid industrial growth without any emphasis on sustainability or inclusive development.", 'isCorrect': false},
      ],
    });
    await topicRef15.collection('questions').doc("3").set({
      'questionId': "3",
      'order': 3,
      'statements': [
        {'text': "In India's Five-Year Plans, the shift in industrialization towards lower emphasis on heavy industries and greater emphasis on infrastructure began with the Eighth Five-Year Plan.", 'isCorrect': true},
        {'text': "In India's Five-Year Plans, the shift in industrialization towards lower emphasis on heavy industries and greater emphasis on infrastructure began with the Second Five-Year Plan.", 'isCorrect': false},
      ],
    });
    await topicRef15.collection('questions').doc("4").set({
      'questionId': "4",
      'order': 4,
      'statements': [
        {'text': "Inclusive growth as enunciated in the Eleventh Five-Year Plan did not include strengthening of the capital market.", 'isCorrect': true},
        {'text': "Inclusive growth as enunciated in the Eleventh Five-Year Plan included strengthening of the capital market as one of its objectives.", 'isCorrect': false},
      ],
    });
    await topicRef15.collection('questions').doc("5").set({
      'questionId': "5",
      'order': 5,
      'statements': [
        {'text': "The Emergency was imposed, new elections took place, and the Janata Party was elected during the Fifth Five-Year Plan.", 'isCorrect': true},
        {'text': "The Emergency was imposed, new elections took place, and the Janata Party was elected during the Seventh Five-Year Plan.", 'isCorrect': false},
      ],
    });
    await topicRef15.collection('questions').doc("6").set({
      'questionId': "6",
      'order': 6,
      'statements': [
        {'text': "The Second Five-Year Plan emphasized the establishment of heavy industries, and the Third Five-Year Plan introduced import substitution as a strategy for industrialization.", 'isCorrect': true},
        {'text': "The Second Five-Year Plan emphasized agriculture rather than heavy industries, and the Third Five-Year Plan rejected import substitution as a strategy for industrialization.", 'isCorrect': false},
      ],
    });
    await topicRef15.collection('questions').doc("7").set({
      'questionId': "7",
      'order': 7,
      'statements': [
        {'text': "The Five-Year Plan in India was finally approved by the National Development Council.", 'isCorrect': true},
        {'text': "The Five-Year Plan in India was finally approved by the Parliament rather than the National Development Council.", 'isCorrect': false},
      ],
    });
    await topicRef15.collection('questions').doc("8").set({
      'questionId': "8",
      'order': 8,
      'statements': [
        {'text': "The Seventh Five-Year Plan covered the period from 1985 to 1990.", 'isCorrect': true},
        {'text': "The Seventh Five-Year Plan covered the period from 1990 to 1995.", 'isCorrect': false},
      ],
    });
    await topicRef15.collection('questions').doc("9").set({
      'questionId': "9",
      'order': 9,
      'statements': [
        {'text': "The Eighth Five-Year Plan differed from earlier plans by placing considerable emphasis on infrastructure growth.", 'isCorrect': true},
        {'text': "The Eighth Five-Year Plan differed from earlier plans by reducing the importance of infrastructure growth.", 'isCorrect': false},
      ],
    });
    await topicRef15.collection('questions').doc("10").set({
      'questionId': "10",
      'order': 10,
      'statements': [
        {'text': "The Eighth Five-Year Plan recognised human development as the core of all developmental efforts.", 'isCorrect': true},
        {'text': "The Eighth Five-Year Plan did not recognise human development as an important part of developmental efforts.", 'isCorrect': false},
      ],
    });
    await topicRef15.collection('questions').doc("11").set({
      'questionId': "11",
      'order': 11,
      'statements': [
        {'text': "The annual growth rate aimed at in the Eighth Five-Year Plan was 5.6 percent.", 'isCorrect': true},
        {'text': "The annual growth rate aimed at in the Eighth Five-Year Plan was 8.6 percent.", 'isCorrect': false},
      ],
    });
    await topicRef15.collection('questions').doc("12").set({
      'questionId': "12",
      'order': 12,
      'statements': [
        {'text': "The largest source of financing for the public sector outlay of the Eighth Five-Year Plan was deficit financing.", 'isCorrect': true},
        {'text': "The largest source of financing for the public sector outlay of the Eighth Five-Year Plan was external borrowing.", 'isCorrect': false},
      ],
    });

    print('Economics True/False Questions seeding completed.');
  }



  static Future<void> ecoSeed3() async {
    final subjectRef = _firestore.collection('subjects').doc('economics');

    await subjectRef.set({
      'name': 'Economics',
      'order': 3,
      'hasSections': false,
    }, SetOptions(merge: true));

    final topicRef8 = subjectRef.collection('topics').doc("international_trade");
    await topicRef8.set({
      'name': "International Trade",
      'order': 8,
    }, SetOptions(merge: true));

    await topicRef8.collection('questions').doc("1").set({
      'questionId': "1",
      'order': 1,
      'statements': [
        {'text': "Many local companies and some foreign companies operating in India have taken advantage of India's 'Production-Linked Incentive' scheme.", 'isCorrect': true},
        {'text': "India accounts for 3.2% of the global export of goods.", 'isCorrect': false},
      ],
    });
    await topicRef8.collection('questions').doc("2").set({
      'questionId': "2",
      'order': 2,
      'statements': [
        {'text': "India's imports of iron and steel, chemicals, fertilisers and machinery have decreased in recent years, and India suffers from an overall trade/current account deficit.", 'isCorrect': true},
        {'text': "India's merchandise exports are less than its merchandise imports, and India's exports of services are more than its imports of services.", 'isCorrect': false},
      ],
    });
    await topicRef8.collection('questions').doc("3").set({
      'questionId': "3",
      'order': 3,
      'statements': [
        {'text': "Trade-Related Investment Measures (TRIMS) prohibit quantitative restrictions on imports by foreign investors, and TRIMS are not concerned with the regulation of foreign investment.", 'isCorrect': true},
        {'text': "Trade-Related Investment Measures (TRIMS) apply to investment measures related to trade in both goods and services.", 'isCorrect': false},
      ],
    });
    await topicRef8.collection('questions').doc("4").set({
      'questionId': "4",
      'order': 4,
      'statements': [
        {'text': "In the last five years (as of 2020), Nepal has been the largest trading partner of India in South Asia.", 'isCorrect': true},
        {'text': "The value of Indo-Sri Lanka trade has consistently increased in the last decade.", 'isCorrect': false},
      ],
    });
    await topicRef8.collection('questions').doc("5").set({
      'questionId': "5",
      'order': 5,
      'statements': [
        {'text': "Among the agricultural commodities imported by India, vegetable oils have accounted for the highest imports in terms of value in recent years.", 'isCorrect': true},
        {'text': "Among the agricultural commodities imported by India, pulses have accounted for the highest imports in terms of value in recent years.", 'isCorrect': false},
      ],
    });
    await topicRef8.collection('questions').doc("6").set({
      'questionId': "6",
      'order': 6,
      'statements': [
        {'text': "The quantity of imported edible oil has been more than the domestic production of edible oils in recent years.", 'isCorrect': true},
        {'text': "The Government does not impose any customs duty on all imported edible oils as a special case.", 'isCorrect': false},
      ],
    });
    await topicRef8.collection('questions').doc("7").set({
      'questionId': "7",
      'order': 7,
      'statements': [
        {'text': "In India, during the financial year 2004-2005, the increase in the value of exports (in rupee terms) over 2003-2004 was more than 10 percent, and India's share in world merchandise exports in 2005 was around 1 percent, not 2 percent.", 'isCorrect': true},
        {'text': "In India, during the financial year 2004-2005, an increase of below 10% over the value of exports in the financial year 2003-2004 was reported, and according to the WTO, India's share in world merchandise exports was 2% in 2005.", 'isCorrect': false},
      ],
    });
    await topicRef8.collection('questions').doc("8").set({
      'questionId': "8",
      'order': 8,
      'statements': [
        {'text': "For the first time, India's exports crossed \$50 billion in value in the year 2002-03.", 'isCorrect': true},
        {'text': "For the first time, India had no trade deficit in the year 2002-03.", 'isCorrect': false},
      ],
    });
    await topicRef8.collection('questions').doc("9").set({
      'questionId': "9",
      'order': 9,
      'statements': [
        {'text': "India's import of crude and petroleum products during 2001-02 accounted for about 27% of India's total imports.", 'isCorrect': true},
        {'text': "During 2001-02, India's exports increased by 10% as compared to the previous year.", 'isCorrect': false},
      ],
    });
    await topicRef8.collection('questions').doc("10").set({
      'questionId': "10",
      'order': 10,
      'statements': [
        {'text': "India does not rank first in the world in fruit production, and it does not rank second in the world in the export of tobacco.", 'isCorrect': true},
        {'text': "India ranks first in the world in fruit production, and it ranks second in the world in the export of tobacco.", 'isCorrect': false},
      ],
    });
    await topicRef8.collection('questions').doc("11").set({
      'questionId': "11",
      'order': 11,
      'statements': [
        {'text': "In the five years before 2003, Indian software exports increased at a compound annual growth rate of about 60%, and the software and service industry in India registered an overall growth of about 28% in rupee terms during 2001-2002.", 'isCorrect': true},
        {'text': "In the five years before 2003, Indian software exports increased at a compound annual growth rate of about 15%, and the software and service industry in India registered a decline in rupee terms during 2001-2002.", 'isCorrect': false},
      ],
    });
    await topicRef8.collection('questions').doc("12").set({
      'questionId': "12",
      'order': 12,
      'statements': [
        {'text': "During 2001-02, negative growth in exports was witnessed in respect of iron and steel, coffee, textiles and marine products.", 'isCorrect': true},
        {'text': "During the year 2001-02, the value of India's total exports declined, registering a negative growth of 2.17%.", 'isCorrect': false},
      ],
    });
    await topicRef8.collection('questions').doc("13").set({
      'questionId': "13",
      'order': 13,
      'statements': [
        {'text': "The new EXIM Policy of that period was liberal, market-oriented, and favoured global trade, and separately, GATT played a significant role in the liberalisation of the economy, though the latter is not the explanation for the former.", 'isCorrect': true},
        {'text': "The new EXIM Policy was liberal, market-oriented, and favoured global trade, precisely because GATT played a significant role in the liberalisation of the economy.", 'isCorrect': false},
      ],
    });
    await topicRef8.collection('questions').doc("14").set({
      'questionId': "14",
      'order': 14,
      'statements': [
        {'text': "Among the commodities imported by India during 2001-02, pearls, precious and semi-precious stones were the highest in terms of Rupee value.", 'isCorrect': true},
        {'text': "Among the commodities imported by India during 2001-02, edible oil was the highest in terms of Rupee value.", 'isCorrect': false},
      ],
    });
    await topicRef8.collection('questions').doc("15").set({
      'questionId': "15",
      'order': 15,
      'statements': [
        {'text': "India has the maximum volume of foreign trade with the USA.", 'isCorrect': true},
        {'text': "India has the maximum volume of foreign trade with Japan.", 'isCorrect': false},
      ],
    });
    await topicRef8.collection('questions').doc("16").set({
      'questionId': "16",
      'order': 16,
      'statements': [
        {'text': "In terms of value, marine products accounted for the largest agricultural exports by India during 1997-98 to 1999-2000.", 'isCorrect': true},
        {'text': "In terms of value, spices accounted for the largest agricultural exports by India during 1997-98 to 1999-2000.", 'isCorrect': false},
      ],
    });
    await topicRef8.collection('questions').doc("17").set({
      'questionId': "17",
      'order': 17,
      'statements': [
        {'text': "The rate of growth of India's exports showed an appreciable increase after 1991, and separately, the Government of India resorted to devaluation of the currency, though devaluation is not the correct explanation for the export growth.", 'isCorrect': true},
        {'text': "The rate of growth of India's exports showed an appreciable increase after 1991 precisely because the Government of India resorted to devaluation of the currency.", 'isCorrect': false},
      ],
    });
    await topicRef8.collection('questions').doc("18").set({
      'questionId': "18",
      'order': 18,
      'statements': [
        {'text': "Information technology was fast becoming a very important field of activity in India.", 'isCorrect': true},
        {'text': "Software is one of the major exports of the country, and India has a very strong base in hardware.", 'isCorrect': false},
      ],
    });
    await topicRef8.collection('questions').doc("19").set({
      'questionId': "19",
      'order': 19,
      'statements': [
        {'text': "Canada replaced Italy as the major importer of bauxite from India.", 'isCorrect': true},
        {'text': "Ukraine replaced Italy as the major importer of bauxite from India.", 'isCorrect': false},
      ],
    });
    await topicRef8.collection('questions').doc("20").set({
      'questionId': "20",
      'order': 20,
      'statements': [
        {'text': "India exported iron-ore mainly to Japan, leather goods to Russia, tea to the UK, and cotton fabrics to the USA.", 'isCorrect': true},
        {'text': "India exported iron-ore mainly to the USA, and leather goods to Japan.", 'isCorrect': false},
      ],
    });
    await topicRef8.collection('questions').doc("21").set({
      'questionId': "21",
      'order': 21,
      'statements': [
        {'text': "An important policy instrument of economic liberalization is the reduction in import duties on capital goods, because this reduction helps local entrepreneurs improve technology to face global markets.", 'isCorrect': true},
        {'text': "An important policy instrument of economic liberalization is the reduction in import duties on capital goods, but this has no connection to helping local entrepreneurs improve technology to face global markets.", 'isCorrect': false},
      ],
    });
    await topicRef8.collection('questions').doc("22").set({
      'questionId': "22",
      'order': 22,
      'statements': [
        {'text': "Fruits and palm oil are among the commodities exported to India by arid and semi-arid countries in the Middle East.", 'isCorrect': true},
        {'text': "Raw wool and carpets are among the commodities exported to India by arid and semi-arid countries in the Middle East.", 'isCorrect': false},
      ],
    });
    await topicRef8.collection('questions').doc("23").set({
      'questionId': "23",
      'order': 23,
      'statements': [
        {'text': "As per 1994-95 figures, the decreasing order of value of India's imports among Petroleum, Capital goods, Chemicals, Iron and Steel, and Pearls and precious stones was: Petroleum, Capital goods, Chemicals, Iron and Steel, and Pearls and precious stones.", 'isCorrect': true},
        {'text': "As per 1994-95 figures, the decreasing order of value of India's imports among Petroleum, Capital goods, Chemicals, Iron and Steel, and Pearls and precious stones was: Capital goods, Petroleum, Pearls and precious stones, Chemicals, and Iron and Steel.", 'isCorrect': false},
      ],
    });
    await topicRef8.collection('questions').doc("24").set({
      'questionId': "24",
      'order': 24,
      'statements': [
        {'text': "The new Exim Policy announced in 1992 was for a period of 5 years.", 'isCorrect': true},
        {'text': "The new Exim Policy announced in 1992 was for a period of 3 years.", 'isCorrect': false},
      ],
    });

    final topicRef9 = subjectRef.collection('topics').doc("international_economic_organisations");
    await topicRef9.set({
      'name': "International Economic Organisations",
      'order': 9,
    }, SetOptions(merge: true));

    await topicRef9.collection('questions').doc("1").set({
      'questionId': "1",
      'order': 1,
      'statements': [
        {'text': "'Rapid Financing Instrument' and 'Rapid Credit Facility' are related to the lending provisions of the International Monetary Fund.", 'isCorrect': true},
        {'text': "'Rapid Financing Instrument' and 'Rapid Credit Facility' are related to the lending provisions of the Asian Development Bank.", 'isCorrect': false},
      ],
    });
    await topicRef9.collection('questions').doc("2").set({
      'questionId': "2",
      'order': 2,
      'statements': [
        {'text': "The G20 Common Framework is an initiative endorsed by the G20 together with the Paris Club, to support Low Income Countries with unsustainable debt.", 'isCorrect': true},
        {'text': "The G20 Common Framework is an initiative of the G20 alone, without the Paris Club, aimed at supporting High Income Countries with unsustainable debt.", 'isCorrect': false},
      ],
    });
    await topicRef9.collection('questions').doc("3").set({
      'questionId': "3",
      'order': 3,
      'statements': [
        {'text': "'Water Credit' puts microfinance tools to work in the water and sanitation sector, and it aims to enable poor people to meet their water needs without depending on subsidies.", 'isCorrect': true},
        {'text': "'Water Credit' is a global initiative launched under the aegis of the World Health Organization and the World Bank.", 'isCorrect': false},
      ],
    });
    await topicRef9.collection('questions').doc("4").set({
      'questionId': "4",
      'order': 4,
      'statements': [
        {'text': "The Gold Tranche (Reserve Tranche) refers to a credit system granted by the IMF to its members.", 'isCorrect': true},
        {'text': "The Gold Tranche (Reserve Tranche) refers to a loan system of the World Bank.", 'isCorrect': false},
      ],
    });
    await topicRef9.collection('questions').doc("5").set({
      'questionId': "5",
      'order': 5,
      'statements': [
        {'text': "Argentina, Mexico, South Africa and Turkey are all members of the G20.", 'isCorrect': true},
        {'text': "Australia, Canada, Malaysia and New Zealand are all members of the G20.", 'isCorrect': false},
      ],
    });
    await topicRef9.collection('questions').doc("6").set({
      'questionId': "6",
      'order': 6,
      'statements': [
        {'text': "The Asian Infrastructure Investment Bank (AIIB) has more than 80 member nations.", 'isCorrect': true},
        {'text': "India is the largest shareholder in the Asian Infrastructure Investment Bank (AIIB), which does not have any members from outside Asia.", 'isCorrect': false},
      ],
    });
    await topicRef9.collection('questions').doc("7").set({
      'questionId': "7",
      'order': 7,
      'statements': [
        {'text': "'Maintenance of law and order' is not a sub-index of the World Bank's 'Ease of Doing Business Index'.", 'isCorrect': true},
        {'text': "'Paying taxes' is not a sub-index of the World Bank's 'Ease of Doing Business Index'.", 'isCorrect': false},
      ],
    });
    await topicRef9.collection('questions').doc("8").set({
      'questionId': "8",
      'order': 8,
      'statements': [
        {'text': "India enacted The Geographical Indications of Goods (Registration and Protection) Act, 1999 in order to comply with its obligations to the WTO.", 'isCorrect': true},
        {'text': "India enacted The Geographical Indications of Goods (Registration and Protection) Act, 1999 in order to comply with its obligations to UNCTAD.", 'isCorrect': false},
      ],
    });
    await topicRef9.collection('questions').doc("9").set({
      'questionId': "9",
      'order': 9,
      'statements': [
        {'text': "International Labour Organisation's Conventions 138 and 182 are related to Child Labour.", 'isCorrect': true},
        {'text': "International Labour Organisation's Conventions 138 and 182 are related to gender parity in the workplace.", 'isCorrect': false},
      ],
    });
    await topicRef9.collection('questions').doc("10").set({
      'questionId': "10",
      'order': 10,
      'statements': [
        {'text': "India does not host all the Annual Ministerial Conferences of APMCHUD in partnership with ADB, APEC and ASEAN.", 'isCorrect': true},
        {'text': "The first APMCHUD was held in India in 2006 on the theme 'Emerging Urban Forms: Policy Responses and Governance Structure'.", 'isCorrect': false},
      ],
    });
    await topicRef9.collection('questions').doc("11").set({
      'questionId': "11",
      'order': 11,
      'statements': [
        {'text': "The Global Infrastructure Facility is a World Bank collaboration that facilitates the preparation and structuring of complex infrastructure Public-Private Partnerships to mobilize private sector and institutional investor capital.", 'isCorrect': true},
        {'text': "The Global Infrastructure Facility is an ASEAN initiative to upgrade infrastructure in Asia, financed by credit from the Asian Development Bank.", 'isCorrect': false},
      ],
    });
    await topicRef9.collection('questions').doc("12").set({
      'questionId': "12",
      'order': 12,
      'statements': [
        {'text': "UN-Habitat has been mandated by the United Nations General Assembly to promote socially and environmentally sustainable towns and cities to provide adequate shelter for all, and it contributes to the UN system's objective of reducing poverty and promoting access to safe drinking water and basic sanitation.", 'isCorrect': true},
        {'text': "UN-Habitat's partners are either governments or local urban authorities only.", 'isCorrect': false},
      ],
    });
    await topicRef9.collection('questions').doc("13").set({
      'questionId': "13",
      'order': 13,
      'statements': [
        {'text': "The 'Broad-based Trade and Investment Agreement' (BTIA) is seen in the news in the context of negotiations between India and the European Union.", 'isCorrect': true},
        {'text': "The 'Broad-based Trade and Investment Agreement' (BTIA) is seen in the news in the context of negotiations between India and the Gulf Cooperation Council.", 'isCorrect': false},
      ],
    });
    await topicRef9.collection('questions').doc("14").set({
      'questionId': "14",
      'order': 14,
      'statements': [
        {'text': "India has ratified the Trade Facilitation Agreement (TFA) of the WTO, and the TFA is part of the WTO's Bali Ministerial Package of 2013.", 'isCorrect': true},
        {'text': "The Trade Facilitation Agreement (TFA) came into force in January 2016.", 'isCorrect': false},
      ],
    });
    await topicRef9.collection('questions').doc("15").set({
      'questionId': "15",
      'order': 15,
      'statements': [
        {'text': "The overall goal of the FAO's 'Globally Important Agricultural Heritage System' (GIAHS) initiative is to identify and safeguard eco-friendly traditional farm practices and their associated landscapes, agricultural biodiversity, and knowledge systems of local communities.", 'isCorrect': true},
        {'text': "The overall goal of the FAO's 'Globally Important Agricultural Heritage System' (GIAHS) initiative is to provide modern technology, training in modern farming methods and financial support to greatly enhance agricultural productivity in identified GIAHS.", 'isCorrect': false},
      ],
    });
    await topicRef9.collection('questions').doc("16").set({
      'questionId': "16",
      'order': 16,
      'statements': [
        {'text': "The headquarters of the New Development Bank is in Shanghai.", 'isCorrect': true},
        {'text': "The New Development Bank has been set up by APEC.", 'isCorrect': false},
      ],
    });
    await topicRef9.collection('questions').doc("17").set({
      'questionId': "17",
      'order': 17,
      'statements': [
        {'text': "The 'Global Financial Stability Report' is prepared by the International Monetary Fund.", 'isCorrect': true},
        {'text': "The 'Global Financial Stability Report' is prepared by the European Central Bank.", 'isCorrect': false},
      ],
    });
    await topicRef9.collection('questions').doc("18").set({
      'questionId': "18",
      'order': 18,
      'statements': [
        {'text': "The terms 'amber box, blue box and green box' are used in the context of WTO affairs.", 'isCorrect': true},
        {'text': "The terms 'amber box, blue box and green box' are used in the context of UNFCCC affairs.", 'isCorrect': false},
      ],
    });
    await topicRef9.collection('questions').doc("19").set({
      'questionId': "19",
      'order': 19,
      'statements': [
        {'text': "The Renminbi was proposed to be added to the basket of the IMF's Special Drawing Rights (SDR).", 'isCorrect': true},
        {'text': "The Indian Rupee was proposed to be added to the basket of the IMF's Special Drawing Rights (SDR).", 'isCorrect': false},
      ],
    });
    await topicRef9.collection('questions').doc("20").set({
      'questionId': "20",
      'order': 20,
      'statements': [
        {'text': "The International Monetary and Financial Committee (IMFC) discusses matters of concern affecting the global economy and advises the IMF on the direction of its work, and the World Bank participates as an observer in the IMFC's meetings.", 'isCorrect': true},
        {'text': "The International Monetary and Financial Committee (IMFC) has no role in advising the IMF, and the World Bank does not participate in its meetings even as an observer.", 'isCorrect': false},
      ],
    });
    await topicRef9.collection('questions').doc("21").set({
      'questionId': "21",
      'order': 21,
      'statements': [
        {'text': "The terms 'Agreement on Agriculture', 'Agreement on the Application of Sanitary and Phytosanitary Measures', and 'Peace Clause' appear in the news in the context of the affairs of the World Trade Organization.", 'isCorrect': true},
        {'text': "The terms 'Agreement on Agriculture', 'Agreement on the Application of Sanitary and Phytosanitary Measures', and 'Peace Clause' appear in the news in the context of the affairs of the Food and Agriculture Organization.", 'isCorrect': false},
      ],
    });
    await topicRef9.collection('questions').doc("22").set({
      'questionId': "22",
      'order': 22,
      'statements': [
        {'text': "The price of any currency in the international market is decided by the demand for goods/services provided by the concerned country, and by the stability of the government of the concerned country.", 'isCorrect': true},
        {'text': "The price of any currency in the international market is decided by the World Bank and by the economic potential of the country in question.", 'isCorrect': false},
      ],
    });
    await topicRef9.collection('questions').doc("23").set({
      'questionId': "23",
      'order': 23,
      'statements': [
        {'text': "The International Monetary Fund grants loans only to its member countries.", 'isCorrect': true},
        {'text': "The International Monetary Fund can grant loans to any country, whether or not it is a member.", 'isCorrect': false},
      ],
    });
    await topicRef9.collection('questions').doc("24").set({
      'questionId': "24",
      'order': 24,
      'statements': [
        {'text': "A Trade Mark is an individual's or a company's right, whereas a Geographical Indication is a community's right, and a Trade Mark can be licensed whereas a Geographical Indication cannot be licensed.", 'isCorrect': true},
        {'text': "A Trade Mark is assigned to manufactured goods, whereas a Geographical Indication is assigned only to agricultural goods, products, and handicrafts.", 'isCorrect': false},
      ],
    });
    await topicRef9.collection('questions').doc("25").set({
      'questionId': "25",
      'order': 25,
      'statements': [
        {'text': "The United Nations Monetary and Financial Conference, where agreements were signed to set up the IBRD, GATT and IMF, is commonly known as the Bretton Woods Conference.", 'isCorrect': true},
        {'text': "The United Nations Monetary and Financial Conference, where agreements were signed to set up the IBRD, GATT and IMF, is commonly known as the Yalta Conference.", 'isCorrect': false},
      ],
    });
    await topicRef9.collection('questions').doc("26").set({
      'questionId': "26",
      'order': 26,
      'statements': [
        {'text': "Raghuram Rajan served as the Chief Economist of the International Monetary Fund.", 'isCorrect': true},
        {'text': "Ashok Lahiri served as the Chief Economist of the International Monetary Fund.", 'isCorrect': false},
      ],
    });
    await topicRef9.collection('questions').doc("27").set({
      'questionId': "27",
      'order': 27,
      'statements': [
        {'text': "The price of any currency in the international market is decided by the demand for goods/services provided by the country concerned, and by the stability of the government of the concerned country.", 'isCorrect': true},
        {'text': "The price of any currency in the international market is decided by the World Bank and by the economic potential of the country.", 'isCorrect': false},
      ],
    });
    await topicRef9.collection('questions').doc("28").set({
      'questionId': "28",
      'order': 28,
      'statements': [
        {'text': "One of the important agreements reached at the 1996 Ministerial Conference of the WTO relates to commerce in Information Technology.", 'isCorrect': true},
        {'text': "One of the important agreements reached at the 1996 Ministerial Conference of the WTO relates to a Multilateral Agreement on Investment.", 'isCorrect': false},
      ],
    });
    await topicRef9.collection('questions').doc("29").set({
      'questionId': "29",
      'order': 29,
      'statements': [
        {'text': "India's share in world trade is likely to help boost exports of agricultural commodities and is likely to triple by the year 2000 A.D., as anticipated benefits from the World Trade Organisation.", 'isCorrect': true},
        {'text': "India's share in the world trade is to go up from the present 600 million US dollars to 5 billion US dollars by 2000 A.D., as an anticipated benefit from the World Trade Organisation.", 'isCorrect': false},
      ],
    });

    final topicRef10 = subjectRef.collection('topics').doc("population_and_demography");
    await topicRef10.set({
      'name': "Population and Demography",
      'order': 10,
    }, SetOptions(merge: true));

    await topicRef10.collection('questions').doc("1").set({
      'questionId': "1",
      'order': 1,
      'statements': [
        {'text': "The total fertility rate in an economy is defined as the average number of live births a woman would have by the end of her child-bearing age.", 'isCorrect': true},
        {'text': "The total fertility rate in an economy is defined as the number of children born per 1000 people in the population in a year.", 'isCorrect': false},
      ],
    });
    await topicRef10.collection('questions').doc("2").set({
      'questionId': "2",
      'order': 2,
      'statements': [
        {'text': "The level of mutual trust and harmony in society would be considered as part of a country's social capital.", 'isCorrect': true},
        {'text': "The size of the population in the working age group would be considered as part of a country's social capital.", 'isCorrect': false},
      ],
    });
    await topicRef10.collection('questions').doc("3").set({
      'questionId': "3",
      'order': 3,
      'statements': [
        {'text': "Particularly Vulnerable Tribal Groups (PVTGs) reside in 18 States and one Union Territory, a stagnant or declining population is one of the criteria for determining PVTG status, and the Irular and Konda Reddi tribes are included in the list of PVTGs.", 'isCorrect': true},
        {'text': "There are 95 Particularly Vulnerable Tribal Groups (PVTGs) officially notified in the country so far.", 'isCorrect': false},
      ],
    });
    await topicRef10.collection('questions').doc("4").set({
      'questionId': "4",
      'order': 4,
      'statements': [
        {'text': "Human capital formation, as a concept, is better explained as a process that increases the knowledge, skills level and capacities of the people of a country, involving the accumulation of intangible wealth.", 'isCorrect': true},
        {'text': "Human capital formation, as a concept, is better explained as a process that enables individuals of a country to accumulate more tangible wealth and capital.", 'isCorrect': false},
      ],
    });
    await topicRef10.collection('questions').doc("5").set({
      'questionId': "5",
      'order': 5,
      'statements': [
        {'text': "To obtain the full benefits of the demographic dividend, India should promote skill development.", 'isCorrect': true},
        {'text': "To obtain the full benefits of the demographic dividend, India should introduce more social security schemes.", 'isCorrect': false},
      ],
    });
    await topicRef10.collection('questions').doc("6").set({
      'questionId': "6",
      'order': 6,
      'statements': [
        {'text': "The correct order of the specific stages of demographic transition associated with economic development is: high birth rate with high death rate, followed by high birth rate with low death rate, followed by low birth rate with low death rate.", 'isCorrect': true},
        {'text': "The correct order of the specific stages of demographic transition associated with economic development is: low birth rate with low death rate, followed by high birth rate with high death rate, followed by high birth rate with low death rate.", 'isCorrect': false},
      ],
    });
    await topicRef10.collection('questions').doc("7").set({
      'questionId': "7",
      'order': 7,
      'statements': [
        {'text': "India is regarded as a country with a 'Demographic Dividend' due to its high population in the age group of 15-64 years.", 'isCorrect': true},
        {'text': "India is regarded as a country with a 'Demographic Dividend' due to its high population in the age group below 15 years.", 'isCorrect': false},
      ],
    });
    await topicRef10.collection('questions').doc("8").set({
      'questionId': "8",
      'order': 8,
      'statements': [
        {'text': "Between the 1951 and 2001 Censuses, the density of India's population increased by less than three times, and the annual exponential growth rate of India's population did not double.", 'isCorrect': true},
        {'text': "Between the 1951 and 2001 Censuses, the density of the population of India increased more than three times, and the annual growth rate (exponential) of the population of India doubled.", 'isCorrect': false},
      ],
    });
    await topicRef10.collection('questions').doc("9").set({
      'questionId': "9",
      'order': 9,
      'statements': [
        {'text': "The infant mortality rate takes into account the death of infants within the first year after birth, and it is expressed as the number of infant deaths in a particular year per 1,000 live births during that year.", 'isCorrect': true},
        {'text': "Infant mortality rate takes into account the death of infants within a month after birth, and it is the number of infant deaths in a particular year per 100 live births during that year.", 'isCorrect': false},
      ],
    });
    await topicRef10.collection('questions').doc("10").set({
      'questionId': "10",
      'order': 10,
      'statements': [
        {'text': "As per India's National Population Policy, 2000, the long-term objective is to achieve population stabilization by the year 2045.", 'isCorrect': true},
        {'text': "As per India's National Population Policy, 2000, the long-term objective is to achieve population stabilization by the year 2025.", 'isCorrect': false},
      ],
    });
    await topicRef10.collection('questions').doc("11").set({
      'questionId': "11",
      'order': 11,
      'statements': [
        {'text': "Among Chandigarh, Mizoram, Puducherry and Sikkim, Sikkim had the minimum population as per Census 2001.", 'isCorrect': true},
        {'text': "Among Chandigarh, Mizoram, Puducherry and Sikkim, Mizoram had the minimum population as per Census 2001.", 'isCorrect': false},
      ],
    });
    await topicRef10.collection('questions').doc("12").set({
      'questionId': "12",
      'order': 12,
      'statements': [
        {'text': "Among Himachal Pradesh, Bihar, Orissa and Uttar Pradesh, Himachal Pradesh had the highest percentage of rural population as per Census 2001.", 'isCorrect': true},
        {'text': "Among Himachal Pradesh, Bihar, Orissa and Uttar Pradesh, Bihar had the highest percentage of rural population as per Census 2001.", 'isCorrect': false},
      ],
    });
    await topicRef10.collection('questions').doc("13").set({
      'questionId': "13",
      'order': 13,
      'statements': [
        {'text': "Ludhiana, Kochi, Surat, and Nagpur were all among the million-plus cities in India as per Census 2001.", 'isCorrect': true},
        {'text': "Only Kochi, Surat, and Nagpur, and not Ludhiana, were among the million-plus cities in India as per Census 2001.", 'isCorrect': false},
      ],
    });
    await topicRef10.collection('questions').doc("14").set({
      'questionId': "14",
      'order': 14,
      'statements': [
        {'text': "The correct sequence of the median age of the populations of India, China, the USA and the UK, from lowest to highest, is: India, China, USA, UK.", 'isCorrect': true},
        {'text': "The correct sequence of the median age of the populations of India, China, the USA and the UK, from lowest to highest, is: China, India, UK, USA.", 'isCorrect': false},
      ],
    });
    await topicRef10.collection('questions').doc("15").set({
      'questionId': "15",
      'order': 15,
      'statements': [
        {'text': "The approximate percentage of persons above 65 years of age in India's population (as of 2008) was 5-6%.", 'isCorrect': true},
        {'text': "The approximate percentage of persons above 65 years of age in India's population (as of 2008) was 14-15%.", 'isCorrect': false},
      ],
    });
    await topicRef10.collection('questions').doc("16").set({
      'questionId': "16",
      'order': 16,
      'statements': [
        {'text': "Among Himachal Pradesh, Meghalaya, Arunachal Pradesh and Sikkim, Arunachal Pradesh had the lowest density of population.", 'isCorrect': true},
        {'text': "Among Himachal Pradesh, Meghalaya, Arunachal Pradesh and Sikkim, Sikkim had the lowest density of population.", 'isCorrect': false},
      ],
    });
    await topicRef10.collection('questions').doc("17").set({
      'questionId': "17",
      'order': 17,
      'statements': [
        {'text': "As per Census 2001, Kerala does not have the smallest gap in male and female literacy rates among the 28 States, and Rajasthan's literacy rate is not above the national average.", 'isCorrect': true},
        {'text': "According to Census 2001, Kerala has the smallest gap in male and female literacy rates among the 28 States, and Rajasthan has a literacy rate above the national average.", 'isCorrect': false},
      ],
    });
    await topicRef10.collection('questions').doc("18").set({
      'questionId': "18",
      'order': 18,
      'statements': [
        {'text': "Maharashtra has the highest population after Uttar Pradesh among the 28 Indian States (Delhi and Pondicherry not included), as per Census 2001.", 'isCorrect': true},
        {'text': "Sikkim has the minimum area among the 28 Indian States, and Chandigarh has the highest literacy rate among Pondicherry, NCT of Delhi and other Union Territories.", 'isCorrect': false},
      ],
    });
    await topicRef10.collection('questions').doc("19").set({
      'questionId': "19",
      'order': 19,
      'statements': [
        {'text': "Area-wise, Chhattisgarh is larger than West Bengal, and according to the 2001 Census, the population of West Bengal is larger than that of Chhattisgarh.", 'isCorrect': true},
        {'text': "Area-wise, Chhattisgarh is smaller than West Bengal, and according to the 2001 Census, the population of Chhattisgarh is larger than that of West Bengal.", 'isCorrect': false},
      ],
    });
    await topicRef10.collection('questions').doc("20").set({
      'questionId': "20",
      'order': 20,
      'statements': [
        {'text': "The National Population Policy of India, 2000 seeks to achieve replacement level of fertility by 2010, and Kerala is the first state in India to achieve a replacement level of fertility.", 'isCorrect': true},
        {'text': "India is the second country in the world to adopt a National Family Planning Programme.", 'isCorrect': false},
      ],
    });
    await topicRef10.collection('questions').doc("21").set({
      'questionId': "21",
      'order': 21,
      'statements': [
        {'text': "As per Census 2001, Pondicherry has the highest sex ratio among the Union Territories.", 'isCorrect': true},
        {'text': "As per Census 2001, Mizoram is the Indian State with the least population.", 'isCorrect': false},
      ],
    });
    await topicRef10.collection('questions').doc("22").set({
      'questionId': "22",
      'order': 22,
      'statements': [
        {'text': "According to the Census 2001, Maharashtra has the maximum population in India after Uttar Pradesh.", 'isCorrect': true},
        {'text': "According to the Census 2001, West Bengal has the maximum population in India after Uttar Pradesh.", 'isCorrect': false},
      ],
    });
    await topicRef10.collection('questions').doc("23").set({
      'questionId': "23",
      'order': 23,
      'statements': [
        {'text': "As per the 2001 Census, the two States with the lowest sex ratio are Haryana and Punjab, and Kerala has both the highest literacy rate and the highest sex ratio.", 'isCorrect': true},
        {'text': "As per the 2001 Census, the two States with the lowest population per square km of area are Meghalaya and Mizoram.", 'isCorrect': false},
      ],
    });
    await topicRef10.collection('questions').doc("24").set({
      'questionId': "24",
      'order': 24,
      'statements': [
        {'text': "Among Chhattisgarh, Madhya Pradesh, Orissa and Rajasthan, Chhattisgarh had the highest female literacy rate as per Census 2001.", 'isCorrect': true},
        {'text': "Among Chhattisgarh, Madhya Pradesh, Orissa and Rajasthan, Rajasthan had the highest female literacy rate as per Census 2001.", 'isCorrect': false},
      ],
    });
    await topicRef10.collection('questions').doc("25").set({
      'questionId': "25",
      'order': 25,
      'statements': [
        {'text': "Among Kerala, Madhya Pradesh, Uttar Pradesh and West Bengal, West Bengal had the highest population density as per Census 2001.", 'isCorrect': true},
        {'text': "Among Kerala, Madhya Pradesh, Uttar Pradesh and West Bengal, Uttar Pradesh had the highest population density as per Census 2001.", 'isCorrect': false},
      ],
    });
    await topicRef10.collection('questions').doc("26").set({
      'questionId': "26",
      'order': 26,
      'statements': [
        {'text': "India's population growth from 1901-21 was a phase of stagnant growth, from 1921-51 a phase of steady growth, from 1951-81 a phase of rapid high growth, and from 1981-2001 a phase of high growth with definite signs of slowing down.", 'isCorrect': true},
        {'text': "India's population growth from 1901-21 was a phase of steady growth, and from 1921-51 a phase of stagnant growth.", 'isCorrect': false},
      ],
    });
    await topicRef10.collection('questions').doc("27").set({
      'questionId': "27",
      'order': 27,
      'statements': [
        {'text': "The largest number of Buddhists in India is found in Maharashtra.", 'isCorrect': true},
        {'text': "The largest number of Buddhists in India is found in Uttar Pradesh.", 'isCorrect': false},
      ],
    });
    await topicRef10.collection('questions').doc("28").set({
      'questionId': "28",
      'order': 28,
      'statements': [
        {'text': "The given decadal Census data on population growth (10.7, 14.3, 16.2, 18.9 million across the decades from 1961 to 2000) refers to the Sikh population-by-religion group.", 'isCorrect': true},
        {'text': "The given decadal Census data on population growth (10.7, 14.3, 16.2, 18.9 million across the decades from 1961 to 2000) refers to the Buddhist population-by-religion group.", 'isCorrect': false},
      ],
    });
    await topicRef10.collection('questions').doc("29").set({
      'questionId': "29",
      'order': 29,
      'statements': [
        {'text': "The population of each megacity in India is more than 5 million, and megacities are either national or State capitals.", 'isCorrect': true},
        {'text': "All the megacities of India are important sea ports.", 'isCorrect': false},
      ],
    });
    await topicRef10.collection('questions').doc("30").set({
      'questionId': "30",
      'order': 30,
      'statements': [
        {'text': "According to 1991 Census data, Bihar had the lowest literacy rate in India.", 'isCorrect': true},
        {'text': "According to 1991 Census data, Uttar Pradesh had the highest density of population in India.", 'isCorrect': false},
      ],
    });
    await topicRef10.collection('questions').doc("31").set({
      'questionId': "31",
      'order': 31,
      'statements': [
        {'text': "Among the given social/religious groups, tribals in Bihar, Orissa, Madhya Pradesh and Maharashtra had the highest extent of poverty, as per government statistics for the 1990s.", 'isCorrect': true},
        {'text': "Among the given social/religious groups, Muslims in Kerala, Gujarat and Andhra Pradesh had the highest extent of poverty, as per government statistics for the 1990s.", 'isCorrect': false},
      ],
    });
    await topicRef10.collection('questions').doc("32").set({
      'questionId': "32",
      'order': 32,
      'statements': [
        {'text': "The most widely accepted reason for the low population growth rate in Kerala is that Kerala has invested heavily in promoting literacy and public health and placed high priority on social policies.", 'isCorrect': true},
        {'text': "The most widely accepted reason for the low population growth rate in Kerala is that Kerala has made the highest investment in family planning.", 'isCorrect': false},
      ],
    });
    await topicRef10.collection('questions').doc("33").set({
      'questionId': "33",
      'order': 33,
      'statements': [
        {'text': "As per the 1991 Census, Pondicherry and Delhi had the highest literacy rate among the groups of Union Territories.", 'isCorrect': true},
        {'text': "As per the 1991 Census, Chandigarh and Dadra & Nagar Haveli had the highest literacy rate among the groups of Union Territories.", 'isCorrect': false},
      ],
    });
    await topicRef10.collection('questions').doc("34").set({
      'questionId': "34",
      'order': 34,
      'statements': [
        {'text': "According to statistics, more female children are born each year than male children in India.", 'isCorrect': true},
        {'text': "In India, the death rate of a male child is higher than that of a female child.", 'isCorrect': false},
      ],
    });
    await topicRef10.collection('questions').doc("35").set({
      'questionId': "35",
      'order': 35,
      'statements': [
        {'text': "As per the 1991 Census, the descending order of female literacy rates among Kerala, Mizoram, Goa and Nagaland was: Kerala, Mizoram, Goa, and Nagaland.", 'isCorrect': true},
        {'text': "As per the 1991 Census, the descending order of female literacy rates among Kerala, Mizoram, Goa and Nagaland was: Kerala, Goa, Mizoram, and Nagaland.", 'isCorrect': false},
      ],
    });
    await topicRef10.collection('questions').doc("36").set({
      'questionId': "36",
      'order': 36,
      'statements': [
        {'text': "According to the census figures of that time, the sex ratio in India was increasing.", 'isCorrect': true},
        {'text': "According to the census figures of that time, the sex ratio in India was declining.", 'isCorrect': false},
      ],
    });
    await topicRef10.collection('questions').doc("37").set({
      'questionId': "37",
      'order': 37,
      'statements': [
        {'text': "The tribal population in the Andaman and Nicobar Islands belongs to the Negroid race.", 'isCorrect': true},
        {'text': "The tribal population in the Andaman and Nicobar Islands belongs to the Mongoloid race.", 'isCorrect': false},
      ],
    });
    await topicRef10.collection('questions').doc("38").set({
      'questionId': "38",
      'order': 38,
      'statements': [
        {'text': "As per the 1991 Census, the descending order of average household size among Uttar Pradesh, West Bengal, Gujarat and Kerala was: Uttar Pradesh, West Bengal, Gujarat, and Kerala.", 'isCorrect': true},
        {'text': "As per the 1991 Census, the descending order of average household size among Uttar Pradesh, West Bengal, Gujarat and Kerala was: Gujarat, Uttar Pradesh, West Bengal, and Kerala.", 'isCorrect': false},
      ],
    });
    await topicRef10.collection('questions').doc("39").set({
      'questionId': "39",
      'order': 39,
      'statements': [
        {'text': "As per the 1991 Census, among Sikkim, Nagaland and Meghalaya, Sikkim had a lower population density than the other two.", 'isCorrect': true},
        {'text': "As per the 1991 Census, among Sikkim, Nagaland and Meghalaya, Meghalaya had a lower population density than the other two.", 'isCorrect': false},
      ],
    });
    await topicRef10.collection('questions').doc("40").set({
      'questionId': "40",
      'order': 40,
      'statements': [
        {'text': "According to the 1991 Census, the highest percentage of India's population was found in the age group of 5 to 14 years.", 'isCorrect': true},
        {'text': "According to the 1991 Census, the highest percentage of India's population was found in the age group of 25 to 34 years.", 'isCorrect': false},
      ],
    });
    await topicRef10.collection('questions').doc("41").set({
      'questionId': "41",
      'order': 41,
      'statements': [
        {'text': "One reason for India's occupational structure remaining more or less the same over the years is that people are largely unaware of the significance of the transition from agriculture to industry for economic development.", 'isCorrect': true},
        {'text': "One reason for India's occupational structure remaining more or less the same over the years is that productivity in agriculture has been high enough to induce people to stay with agriculture.", 'isCorrect': false},
      ],
    });

    final topicRef11 = subjectRef.collection('topics').doc("poverty_development_health_and_education");
    await topicRef11.set({
      'name': "Poverty, Development, Health and Education",
      'order': 11,
    }, SetOptions(merge: true));

    await topicRef11.collection('questions').doc("1").set({
      'questionId': "1",
      'order': 1,
      'statements': [
        {'text': "Under the Pradhan Mantri Surakshit Matritva Abhiyan, private sector health care providers of certain specialities can volunteer to provide services at nearby government health facilities.", 'isCorrect': true},
        {'text': "The Pradhan Mantri Surakshit Matritva Abhiyan guarantees a minimum package of antenatal care services to women only in their second and third trimesters of pregnancy and six months of post-delivery health care in any government health facility.", 'isCorrect': false},
      ],
    });
    await topicRef11.collection('questions').doc("2").set({
      'questionId': "2",
      'order': 2,
      'statements': [
        {'text': "India's public sector health care system largely focuses on curative care with limited preventive, promotive and rehabilitative care, and separately, under India's decentralized approach to health care delivery, the States are primarily responsible for organizing health services.", 'isCorrect': true},
        {'text': "India's public sector health care system focuses on curative care with limited preventive care precisely because States are primarily responsible for organizing health services under India's decentralized approach.", 'isCorrect': false},
      ],
    });
    await topicRef11.collection('questions').doc("3").set({
      'questionId': "3",
      'order': 3,
      'statements': [
        {'text': "Janani Suraksha Yojana is a safe motherhood intervention of the State Health Departments, aims to reduce maternal and neonatal mortality among poor pregnant women, and aims to promote institutional delivery among poor pregnant women.", 'isCorrect': true},
        {'text': "Janani Suraksha Yojana's objective includes providing public health facilities to sick infants up to one year of age.", 'isCorrect': false},
      ],
    });
    await topicRef11.collection('questions').doc("4").set({
      'questionId': "4",
      'order': 4,
      'statements': [
        {'text': "The Anaemia Mukt Bharat Strategy runs a campaign for delayed cord clamping at the time of childbirth, provides for periodic deworming to children and adolescents, and addresses non-nutritional causes of anaemia in endemic pockets, with special focus on malaria, hemoglobinopathies and fluorosis.", 'isCorrect': true},
        {'text': "The Anaemia Mukt Bharat Strategy provides prophylactic calcium supplementation for pre-school children, adolescents and pregnant women.", 'isCorrect': false},
      ],
    });
    await topicRef11.collection('questions').doc("5").set({
      'questionId': "5",
      'order': 5,
      'statements': [
        {'text': "The Ayushman Bharat Digital Mission has seamless portability across the country.", 'isCorrect': true},
        {'text': "Private and public hospitals must mandatorily adopt the Ayushman Bharat Digital Mission, and every citizen of India must ultimately be part of it.", 'isCorrect': false},
      ],
    });
    await topicRef11.collection('questions').doc("6").set({
      'questionId': "6",
      'order': 6,
      'statements': [
        {'text': "The India Sanitation Coalition is not funded solely by the Government of India and the World Health Organization, and the National Institute of Urban Affairs is not strictly an apex body of the Ministry of Housing and Urban Affairs.", 'isCorrect': true},
        {'text': "The India Sanitation Coalition is a platform to promote sustainable sanitation funded by the Government of India and the World Health Organization, and the National Institute of Urban Affairs is an apex body of the Ministry of Housing and Urban Affairs.", 'isCorrect': false},
      ],
    });
    await topicRef11.collection('questions').doc("7").set({
      'questionId': "7",
      'order': 7,
      'statements': [
        {'text': "The Atal Innovation Mission is set up under NITI Aayog.", 'isCorrect': true},
        {'text': "The Atal Innovation Mission is set up under the Department of Science and Technology.", 'isCorrect': false},
      ],
    });
    await topicRef11.collection('questions').doc("8").set({
      'questionId': "8",
      'order': 8,
      'statements': [
        {'text': "In a given year in India, official poverty lines are higher in some States than others because price levels vary from State to State.", 'isCorrect': true},
        {'text': "In a given year in India, official poverty lines are higher in some States than others because poverty rates vary from State to State.", 'isCorrect': false},
      ],
    });
    await topicRef11.collection('questions').doc("9").set({
      'questionId': "9",
      'order': 9,
      'statements': [
        {'text': "Under the National Food Security Act, 2013, the eldest woman in a household, of age 18 years or above, shall be the head of the household for the purpose of issuance of a ration card.", 'isCorrect': true},
        {'text': "Under the National Food Security Act, 2013, only families coming under the category of 'below poverty line (BPL)' are eligible to receive subsidised food grains.", 'isCorrect': false},
      ],
    });
    await topicRef11.collection('questions').doc("10").set({
      'questionId': "10",
      'order': 10,
      'statements': [
        {'text': "The objectives of the 'National Nutrition Mission' include creating awareness relating to malnutrition among pregnant women and lactating mothers, and reducing the incidence of anaemia among young children, adolescent girls and women.", 'isCorrect': true},
        {'text': "The objectives of the 'National Nutrition Mission' include promoting the consumption of millets, coarse cereals, unpolished rice, and poultry eggs.", 'isCorrect': false},
      ],
    });
    await topicRef11.collection('questions').doc("11").set({
      'questionId': "11",
      'order': 11,
      'statements': [
        {'text': "The purpose of 'Vidyanjali Yojana' is to increase the quality of education provided in government schools by taking help from the private sector and the community.", 'isCorrect': true},
        {'text': "The purpose of 'Vidyanjali Yojana' is to enable famous foreign educational institutions to open their campuses in India.", 'isCorrect': false},
      ],
    });
    await topicRef11.collection('questions').doc("12").set({
      'questionId': "12",
      'order': 12,
      'statements': [
        {'text': "The aim of the 'Unnat Bharat Abhiyan' programme is to connect institutions of higher education with local communities to address development challenges through appropriate technologies.", 'isCorrect': true},
        {'text': "The aim of the 'Unnat Bharat Abhiyan' programme is to achieve 100% literacy by promoting collaboration between voluntary organizations, the government's education system, and local communities.", 'isCorrect': false},
      ],
    });
    await topicRef11.collection('questions').doc("13").set({
      'questionId': "13",
      'order': 13,
      'statements': [
        {'text': "'SWAYAM', a Government of India initiative, aims at providing affordable and quality education to citizens for free.", 'isCorrect': true},
        {'text': "'SWAYAM', a Government of India initiative, aims at promoting Self-Help Groups in rural areas.", 'isCorrect': false},
      ],
    });
    await topicRef11.collection('questions').doc("14").set({
      'questionId': "14",
      'order': 14,
      'statements': [
        {'text': "The 'Stand Up India' scheme's purpose is to promote entrepreneurship among SC/ST and women entrepreneurs, and it provides for refinance through SIDBI.", 'isCorrect': true},
        {'text': "The 'Stand Up India' scheme's purpose is limited to promoting entrepreneurship among SC/ST entrepreneurs, and it does not provide for refinance through SIDBI.", 'isCorrect': false},
      ],
    });
    await topicRef11.collection('questions').doc("15").set({
      'questionId': "15",
      'order': 15,
      'statements': [
        {'text': "'Mission Indradhanush', launched by the Government of India, pertains to the immunization of children and pregnant women.", 'isCorrect': true},
        {'text': "'Mission Indradhanush', launched by the Government of India, pertains to the construction of smart cities across the country.", 'isCorrect': false},
      ],
    });
    await topicRef11.collection('questions').doc("16").set({
      'questionId': "16",
      'order': 16,
      'statements': [
        {'text': "'Rashtriya Garima Abhiyaan' is a national campaign to eradicate the practice of manual scavenging and rehabilitate manual scavengers.", 'isCorrect': true},
        {'text': "'Rashtriya Garima Abhiyaan' is a national campaign to release bonded labourers from their bondage and rehabilitate them.", 'isCorrect': false},
      ],
    });
    await topicRef11.collection('questions').doc("17").set({
      'questionId': "17",
      'order': 17,
      'statements': [
        {'text': "The National Innovation Foundation-India (NIF) is an autonomous body of the Department of Science and Technology under the Central Government.", 'isCorrect': true},
        {'text': "The National Innovation Foundation-India (NIF) is an initiative to strengthen highly advanced scientific research in India's premier scientific institutions in collaboration with advanced foreign scientific institutions.", 'isCorrect': false},
      ],
    });
    await topicRef11.collection('questions').doc("18").set({
      'questionId': "18",
      'order': 18,
      'statements': [
        {'text': "The 'Janani Suraksha Yojana' Programme endeavours to promote institutional deliveries and to provide monetary assistance to the mother to meet the cost of delivery.", 'isCorrect': true},
        {'text': "The 'Janani Suraksha Yojana' Programme endeavours to provide for wage loss due to pregnancy and confinement.", 'isCorrect': false},
      ],
    });
    await topicRef11.collection('questions').doc("19").set({
      'questionId': "19",
      'order': 19,
      'statements': [
        {'text': "District Rural Development Agencies (DRDAs) secure inter-sectoral and inter-departmental coordination for effective implementation of anti-poverty programmes, and they watch over and ensure effective utilization of funds intended for anti-poverty programmes.", 'isCorrect': true},
        {'text': "District Rural Development Agencies (DRDAs) act as Panchayati Raj Institutions in certain specified backward regions, and they undertake area-specific scientific study of the causes of poverty and malnutrition.", 'isCorrect': false},
      ],
    });
    await topicRef11.collection('questions').doc("20").set({
      'questionId': "20",
      'order': 20,
      'statements': [
        {'text': "Under the National Rural Health Mission, the jobs of 'ASHA' include accompanying women to the health facility for antenatal care checkups, using pregnancy test kits for early detection of pregnancy, and providing information on nutrition and immunization.", 'isCorrect': true},
        {'text': "Under the National Rural Health Mission, the jobs of 'ASHA' include conducting the delivery of the baby.", 'isCorrect': false},
      ],
    });
    await topicRef11.collection('questions').doc("21").set({
      'questionId': "21",
      'order': 21,
      'statements': [
        {'text': "The National Rural Livelihood Mission seeks to improve livelihood options of the rural poor by strengthening self-help groups and providing skill development.", 'isCorrect': true},
        {'text': "The National Rural Livelihood Mission seeks to improve livelihood options of the rural poor by setting up a large number of new manufacturing industries and agri-business centres in rural areas.", 'isCorrect': false},
      ],
    });
    await topicRef11.collection('questions').doc("22").set({
      'questionId': "22",
      'order': 22,
      'statements': [
        {'text': "If properly implemented, the National Water Mission would help meet part of urban areas' water needs through recycling of wastewater, and the water requirements of coastal cities with inadequate alternative sources of water would be met by adopting appropriate technologies allowing the use of ocean water.", 'isCorrect': true},
        {'text': "If properly implemented, the National Water Mission would link all the rivers of Himalayan origin to the rivers of peninsular India, and expenses incurred by farmers for digging bore-wells would be completely reimbursed by the Government.", 'isCorrect': false},
      ],
    });
    await topicRef11.collection('questions').doc("23").set({
      'questionId': "23",
      'order': 23,
      'statements': [
        {'text': "Promoting self-help groups, promoting micro, small and medium enterprises, and implementing the Right to Education Act can all aid in furthering the government's objective of inclusive growth.", 'isCorrect': true},
        {'text': "Only promoting self-help groups, and not micro, small and medium enterprises or the Right to Education Act, can aid in furthering the government's objective of inclusive growth.", 'isCorrect': false},
      ],
    });
    await topicRef11.collection('questions').doc("24").set({
      'questionId': "24",
      'order': 24,
      'statements': [
        {'text': "Under the 'Aam Aadmi Bima Yojna', the member insured must be the head of the family or an earning member of the family in a rural landless household, and there is a provision for free scholarship for insured members' children studying between classes 9 and 12.", 'isCorrect': true},
        {'text': "Under the 'Aam Aadmi Bima Yojna', the member insured must be in the age group of 30 to 65 years.", 'isCorrect': false},
      ],
    });
    await topicRef11.collection('questions').doc("25").set({
      'questionId': "25",
      'order': 25,
      'statements': [
        {'text': "Persons with disabilities in India are entitled under law to free schooling till the age of 18 years in government-run schools, preferential allotment of land for setting up business, and ramps in public buildings.", 'isCorrect': true},
        {'text': "Persons with disabilities in India are entitled under law only to ramps in public buildings, and not to free schooling or preferential allotment of land.", 'isCorrect': false},
      ],
    });
    await topicRef11.collection('questions').doc("26").set({
      'questionId': "26",
      'order': 26,
      'statements': [
        {'text': "The National Rehabilitation and Resettlement Policy, 2007 is not applicable only to persons affected by land acquisition for projects, and it was not formulated by the Ministry of Social Justice and Empowerment.", 'isCorrect': true},
        {'text': "The National Rehabilitation and Resettlement Policy, 2007 is applicable only to persons affected by the acquisition of land for projects, and it has been formulated by the Ministry of Social Justice and Empowerment.", 'isCorrect': false},
      ],
    });
    await topicRef11.collection('questions').doc("27").set({
      'questionId': "27",
      'order': 27,
      'statements': [
        {'text': "Swadhar is meant for women in difficult circumstances, whereas Swayam Siddha is meant for the holistic empowerment of women through Self-Help Groups, and Swadhar is implemented through the ICDS units set up in the States, whereas Swayam Siddha is implemented through Local Self-Government bodies or reputed Voluntary Organizations.", 'isCorrect': true},
        {'text': "Swayam Siddha is meant for those in difficult circumstances, whereas Swadhar is meant for the holistic empowerment of women through Self-Help Groups.", 'isCorrect': false},
      ],
    });
    await topicRef11.collection('questions').doc("28").set({
      'questionId': "28",
      'order': 28,
      'statements': [
        {'text': "An objective of the National Food Security Mission is to increase the production of rice, wheat and pulses through area expansion and productivity enhancement.", 'isCorrect': true},
        {'text': "An objective of the National Food Security Mission is to increase the production of rice, wheat, pulses, oil seeds and vegetables through area expansion and productivity enhancement.", 'isCorrect': false},
      ],
    });
    await topicRef11.collection('questions').doc("29").set({
      'questionId': "29",
      'order': 29,
      'statements': [
        {'text': "The Ministry of Textiles launched the Rajiv Gandhi Shilpi Swasthya Bima Yojana.", 'isCorrect': true},
        {'text': "The Ministry of Health and Family Welfare launched the Rashtriya Swasthya Bima Yojana.", 'isCorrect': false},
      ],
    });
    await topicRef11.collection('questions').doc("30").set({
      'questionId': "30",
      'order': 30,
      'statements': [
        {'text': "The Gurupadswamy Committee dealt with the issue of child labour.", 'isCorrect': true},
        {'text': "The nation-wide scheme of the National Child Labour Projects (NCLP) is run by the Union Ministry of Social Justice and Empowerment.", 'isCorrect': false},
      ],
    });
    await topicRef11.collection('questions').doc("31").set({
      'questionId': "31",
      'order': 31,
      'statements': [
        {'text': "The Targeted Public Distribution System (TPDS) provides subsidised food grains to Below Poverty Line and Antyodaya Anna Yojana households through the public distribution system.", 'isCorrect': true},
        {'text': "The Ministry of Human Resource Development gives financial support to the Mid-Day Meal Scheme through the Ministry of Social Justice and Empowerment.", 'isCorrect': false},
      ],
    });
    await topicRef11.collection('questions').doc("32").set({
      'questionId': "32",
      'order': 32,
      'statements': [
        {'text': "The Central Rural Sanitation Programme was launched in 1986 to improve the quality of life of rural people in India.", 'isCorrect': true},
        {'text': "Rural sanitation is a subject in the Concurrent List in the Constitution of India.", 'isCorrect': false},
      ],
    });
    await topicRef11.collection('questions').doc("33").set({
      'questionId': "33",
      'order': 33,
      'statements': [
        {'text': "The government's welfare schemes at that time included the Antyodaya Anna Yojana, the National Old Age Pension Scheme, and an allocation of 25 kg of food grains per household under a related scheme.", 'isCorrect': true},
        {'text': "None of the government's welfare schemes at that time included the Antyodaya Anna Yojana, the National Old Age Pension Scheme, or a 25 kg food grain allocation scheme.", 'isCorrect': false},
      ],
    });
    await topicRef11.collection('questions').doc("34").set({
      'questionId': "34",
      'order': 34,
      'statements': [
        {'text': "The Antyodaya Anna Yojana and the (Pradhan Mantri) Gram Sadak Yojana were both announced by the Union Government in the year 2000.", 'isCorrect': true},
        {'text': "The Jawahar Gram Samriddhi Yojana and 'Sarvapriya' scheme were both announced by the Union Government in the year 2000.", 'isCorrect': false},
      ],
    });
    await topicRef11.collection('questions').doc("35").set({
      'questionId': "35",
      'order': 35,
      'statements': [
        {'text': "The passage about instilling initiative into the vast millions of workers relates to Community Development.", 'isCorrect': true},
        {'text': "The passage about instilling initiative into the vast millions of workers relates to the Panchayati Raj System.", 'isCorrect': false},
      ],
    });
    await topicRef11.collection('questions').doc("36").set({
      'questionId': "36",
      'order': 36,
      'statements': [
        {'text': "The Indian Human Development Report does not give an Unemployment Related Index for each sample village.", 'isCorrect': true},
        {'text': "The Indian Human Development Report does not give a Health Related Index for each sample village.", 'isCorrect': false},
      ],
    });
    await topicRef11.collection('questions').doc("37").set({
      'questionId': "37",
      'order': 37,
      'statements': [
        {'text': "Madhya Pradesh was the first Indian State to have its Human Development Report prepared and released by Amartya Kumar Sen, in Delhi.", 'isCorrect': true},
        {'text': "West Bengal was the first Indian State to have its Human Development Report prepared and released by Amartya Kumar Sen, in Delhi.", 'isCorrect': false},
      ],
    });
    await topicRef11.collection('questions').doc("38").set({
      'questionId': "38",
      'order': 38,
      'statements': [
        {'text': "Persons below the poverty line in India are classified as such based on whether they are entitled to a minimum prescribed food basket.", 'isCorrect': true},
        {'text': "Persons below the poverty line in India are classified as such based on whether their daily wages fall below prescribed minimum wages.", 'isCorrect': false},
      ],
    });
    await topicRef11.collection('questions').doc("39").set({
      'questionId': "39",
      'order': 39,
      'statements': [
        {'text': "Regional disparities in India are high and rising because of persistent investment over time only in select locales, some areas being agro-climatically less conducive to development, and some areas continuing to face little or no agrarian transformation.", 'isCorrect': true},
        {'text': "Regional disparities in India are high and rising mainly because some areas have faced continuous political instability.", 'isCorrect': false},
      ],
    });
    await topicRef11.collection('questions').doc("40").set({
      'questionId': "40",
      'order': 40,
      'statements': [
        {'text': "The Human Development Index comprises literacy rates, life expectancy at birth, and GDP per head at real purchasing power.", 'isCorrect': true},
        {'text': "The Human Development Index comprises literacy rates, life expectancy at birth, and GNP in US dollars.", 'isCorrect': false},
      ],
    });
    await topicRef11.collection('questions').doc("41").set({
      'questionId': "41",
      'order': 41,
      'statements': [
        {'text': "A major health mission carried out in 1996 was the Pulse Polio Immunization programme.", 'isCorrect': true},
        {'text': "A major health mission carried out in 1996 was the war against leprosy.", 'isCorrect': false},
      ],
    });
    await topicRef11.collection('questions').doc("42").set({
      'questionId': "42",
      'order': 42,
      'statements': [
        {'text': "The Rashtriya Mahila Kosh meets the credit needs of poor women, the Mahila Samriddhi Yojana promotes savings among rural women, the Indira Mahila Yojana focuses on education for women's equality, and the Mahila Samakhya Programme focuses on empowerment of women.", 'isCorrect': true},
        {'text': "The Rashtriya Mahila Kosh focuses on empowerment of women, and the Mahila Samakhya Programme meets the credit needs of poor women.", 'isCorrect': false},
      ],
    });
    await topicRef11.collection('questions').doc("43").set({
      'questionId': "43",
      'order': 43,
      'statements': [
        {'text': "Schemes of Urban Micro Enterprises, Urban Wage Employment, and Housing and Shelter Upgradation were parts of the Nehru Rozgar Yojana.", 'isCorrect': true},
        {'text': "Schemes of Urban Micro Enterprises, Urban Wage Employment, and Housing and Shelter Upgradation were parts of the Jawahar Rozgar Yojana.", 'isCorrect': false},
      ],
    });
    await topicRef11.collection('questions').doc("44").set({
      'questionId': "44",
      'order': 44,
      'statements': [
        {'text': "Rural incomes in India are generally lower than urban incomes because many farmers are illiterate and know little about scientific agriculture, prices of primary products are lower than those of manufactured products, and investment in agriculture has been low compared to investment in industry.", 'isCorrect': true},
        {'text': "Rural incomes in India are generally lower than urban incomes mainly because of a low literacy rate among farmers alone, with investment in agriculture at the same level as investment in industry.", 'isCorrect': false},
      ],
    });
    await topicRef11.collection('questions').doc("45").set({
      'questionId': "45",
      'order': 45,
      'statements': [
        {'text': "Though India's national income has gone up several-fold since 1947, there has been no marked improvement in the per capita income level, and separately, a sizeable proportion of India's population is still living below the poverty line.", 'isCorrect': true},
        {'text': "There has been no marked improvement in India's per capita income level precisely because a sizeable proportion of the population is still living below the poverty line.", 'isCorrect': false},
      ],
    });
    await topicRef11.collection('questions').doc("46").set({
      'questionId': "46",
      'order': 46,
      'statements': [
        {'text': "Under the Jawahar Rozgar Yojana, 30% of employment was reserved for women.", 'isCorrect': true},
        {'text': "The Jawahar Rozgar Yojana was aimed exclusively at the urban poor.", 'isCorrect': false},
      ],
    });

    print('Economics True/False seeding completed.');
  }



  /// Seeds the complete Indian Economy workbook.
  /// No sections: sheets are topics directly under subjects/economics.
  /// Topic orders continue from the previous Economics workbook (4-7).
  static Future<void> ecoSeed2() async {
    final subjectRef =
        _firestore.collection('subjects').doc('economics');

    await subjectRef.set({
      'name': 'Economics',
      'order': 6,
      'hasSections': false,
    }, SetOptions(merge: true));

    final topicRef4 =
        subjectRef.collection('topics').doc("macroeconomy");
    await topicRef4.set({
      'name': "Macroeconomy",
      'order': 4,
    }, SetOptions(merge: true));

    await topicRef4.collection('questions').doc("1").set({
      'questionId': "1",
      'order': 1,
      'statements': [
        {'text': "Dairy farming is a primary sector activity, and weaving cloth is a secondary sector activity.", 'isCorrect': true},
        {'text': "Storage of agricultural produce is a secondary sector activity, and mineral exploration is a tertiary sector activity.", 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc("2").set({
      'questionId': "2",
      'order': 5,
      'statements': [
        {'text': "A computer used in production is classified as fixed capital, and petrol used as fuel is classified as working capital.", 'isCorrect': true},
        {'text': "A farmer's plough is classified as working capital, and yarn used by a weaver is classified as fixed capital.", 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc("3").set({
      'questionId': "3",
      'order': 3,
      'statements': [
        {'text': "If the United States were to default on its debt, holders of US Treasury Bonds would not be able to exercise their claims to receive payment, because US Government debt is backed only by the faith of the Government and not by any hard assets.", 'isCorrect': true},
        {'text': "The USA Government debt is backed by hard assets, not merely by the faith of the Government.", 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc("4").set({
      'questionId': "4",
      'order': 4,
      'statements': [
        {'text': "In the post-pandemic period, many Central Banks worldwide carried out interest rate hikes because they generally assume they have the ability to counteract rising consumer prices through monetary policy means.", 'isCorrect': true},
        {'text': "Central Banks generally do not believe they have the ability to counteract rising consumer prices through monetary policy means.", 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc("5").set({
      'questionId': "5",
      'order': 5,
      'statements': [
        {'text': "Farmers harvesting their crops and textile mills converting raw cotton into fabrics are activities that constitute the real sector of the economy.", 'isCorrect': true},
        {'text': "A commercial bank lending money to a trading company, and a corporate body issuing Rupee Denominated Bonds overseas, are activities that constitute the real sector of the economy.", 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc("6").set({
      'questionId': "6",
      'order': 6,
      'statements': [
        {'text': "An increase in expenditure on public projects is a step most likely to be taken at the time of an economic recession.", 'isCorrect': true},
        {'text': "A reduction of expenditure on public projects is a step most likely to be taken at the time of an economic recession.", 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc("7").set({
      'questionId': "7",
      'order': 7,
      'statements': [
        {'text': "Market demand for a good might increase, other things remaining unchanged, if the price of its substitute increases or if its own price falls.", 'isCorrect': true},
        {'text': "Market demand for a good might increase if the price of its complement increases, or if the good is an inferior good and the income of consumers increases.", 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc("8").set({
      'questionId': "8",
      'order': 8,
      'statements': [
        {'text': "In rural areas, the growth in the non-farm economy increased after 1991, and the growth rate in rural employment decreased.", 'isCorrect': true},
        {'text': "Worker productivity increased in urban areas while it decreased in rural areas, and the percentage share of rural areas in the workforce steadily increased, after the 1991 economic liberalization.", 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc("9").set({
      'questionId': "9",
      'order': 9,
      'statements': [
        {'text': "Purchasing Power Parity (PPP) exchange rates are calculated by comparing the prices of the same basket of goods and services in different countries.", 'isCorrect': true},
        {'text': "In terms of PPP dollars, India is the sixth largest economy in the world.", 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc("10").set({
      'questionId': "10",
      'order': 10,
      'statements': [
        {'text': "Legal tender money is the money which a creditor is under compulsion to accept in settlement of his claims.", 'isCorrect': true},
        {'text': "Legal tender money is the money which is tendered in courts of law to defray the fee of legal cases.", 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc("11").set({
      'questionId': "11",
      'order': 11,
      'statements': [
        {'text': "If a commodity is provided free to the public by the Government, the opportunity cost is transferred from the consumers of the product to the tax-paying public.", 'isCorrect': true},
        {'text': "If a commodity is provided free to the public by the Government, the opportunity cost is zero.", 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc("12").set({
      'questionId': "12",
      'order': 12,
      'statements': [
        {'text': "An increase in absolute and per capita real GNP does not connote a higher level of economic development if poverty and unemployment increase.", 'isCorrect': true},
        {'text': "An increase in absolute and per capita real GNP does not connote a higher level of economic development if industrial output fails to keep pace with agricultural output.", 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc("13").set({
      'questionId': "13",
      'order': 13,
      'statements': [
        {'text': "Despite being a high saving economy, capital formation may not result in a significant increase in output due to a high capital-output ratio.", 'isCorrect': true},
        {'text': "Despite being a high saving economy, capital formation may not result in a significant increase in output due to illiteracy.", 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc("14").set({
      'questionId': "14",
      'order': 14,
      'statements': [
        {'text': "After India's liberalization of economic policies in 1991, the share of India's exports in world trade increased, FDI inflows increased, and India's foreign exchange reserves increased enormously.", 'isCorrect': true},
        {'text': "After India's liberalization of economic policies in 1991, the share of agriculture in GDP increased enormously.", 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc("15").set({
      'questionId': "15",
      'order': 15,
      'statements': [
        {'text': "The Gross Domestic Product at market prices (in rupees) has steadily increased in the last decade.", 'isCorrect': true},
        {'text': "The rate of growth of real Gross Domestic Product has steadily increased in the last decade.", 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc("16").set({
      'questionId': "16",
      'order': 16,
      'statements': [
        {'text': "The problem of international liquidity is related to the non-availability of dollars and other hard currencies.", 'isCorrect': true},
        {'text': "The problem of international liquidity is related to the non-availability of goods and services.", 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc("17").set({
      'questionId': "17",
      'order': 17,
      'statements': [
        {'text': "A decrease in the tax-to-GDP ratio of a country indicates slowing economic growth rates.", 'isCorrect': true},
        {'text': "A decrease in the tax-to-GDP ratio of a country indicates less equitable distribution of national income.", 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc("18").set({
      'questionId': "18",
      'order': 18,
      'statements': [
        {'text': "Economic growth in country X will necessarily occur if there is capital formation in X.", 'isCorrect': true},
        {'text': "Economic growth in country X will necessarily occur if there is population growth in X.", 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc("19").set({
      'questionId': "19",
      'order': 19,
      'statements': [
        {'text': "The national income of a country for a given period is equal to the money value of final goods and services produced.", 'isCorrect': true},
        {'text': "The national income of a country for a given period is equal to the sum of personal income of all individuals.", 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc("20").set({
      'questionId': "20",
      'order': 20,
      'statements': [
        {'text': "Capital gains may arise when there is a natural increase in the value of property owned, or when a purchased painting grows in value due to increased popularity.", 'isCorrect': true},
        {'text': "Capital gains may arise when there is an increase in the sales of a product.", 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc("21").set({
      'questionId': "21",
      'order': 21,
      'statements': [
        {'text': "The growth rate of GDP and the growth rate of per capita income in India have not steadily increased over the last five years but have fluctuated.", 'isCorrect': true},
        {'text': "The growth rate of GDP has steadily increased in the last five years.", 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc("22").set({
      'questionId': "22",
      'order': 22,
      'statements': [
        {'text': "Economic growth is usually coupled with inflation.", 'isCorrect': true},
        {'text': "Economic growth is usually coupled with deflation.", 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc("23").set({
      'questionId': "23",
      'order': 23,
      'statements': [
        {'text': "A 'closed economy' is an economy in which neither exports nor imports take place.", 'isCorrect': true},
        {'text': "A 'closed economy' is an economy in which only exports take place.", 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc("24").set({
      'questionId': "24",
      'order': 24,
      'statements': [
        {'text': "The percentage share of the Public Sector in GDP has declined in the last 10 years.", 'isCorrect': true},
        {'text': "The Gross Domestic Product (GDP) has increased by four times in the last 10 years.", 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc("25").set({
      'questionId': "25",
      'order': 25,
      'statements': [
        {'text': "'Melt down' is most appropriately described as a fall in stock prices.", 'isCorrect': true},
        {'text': "'Recession' is most appropriately described as a fall in the growth rate, and 'Slow down' is most appropriately described as a fall in GDP.", 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc("26").set({
      'questionId': "26",
      'order': 26,
      'statements': [
        {'text': "The Special Drawing Right (SDR) is treated as an artificial currency.", 'isCorrect': true},
        {'text': "The American Depositary Receipt (ADR) is treated as an artificial currency.", 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc("27").set({
      'questionId': "27",
      'order': 27,
      'statements': [
        {'text': "Deflation is a persistent fall in the general price level of goods and services.", 'isCorrect': true},
        {'text': "Deflation is a sudden fall in the value of a currency against other currencies.", 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc("28").set({
      'questionId': "28",
      'order': 28,
      'statements': [
        {'text': "The enactment of the Banking Regulation Act was the earliest of these events to take place in independent India's economy.", 'isCorrect': true},
        {'text': "The introduction of the First Five-Year Plan was the earliest of these events to take place in independent India's economy.", 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc("29").set({
      'questionId': "29",
      'order': 29,
      'statements': [
        {'text': "The decreasing order of contribution of different sectors to India's GDP is Services, followed by Industry, followed by Agriculture.", 'isCorrect': true},
        {'text': "The decreasing order of contribution of different sectors to India's GDP is Industry, followed by Services, followed by Agriculture.", 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc("30").set({
      'questionId': "30",
      'order': 30,
      'statements': [
        {'text': "Among China, India, Indonesia and Sri Lanka, India has the lowest GDP per capita.", 'isCorrect': true},
        {'text': "Among China, India, Indonesia and Sri Lanka, Indonesia has the lowest GDP per capita.", 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc("31").set({
      'questionId': "31",
      'order': 31,
      'statements': [
        {'text': "In decreasing order of contribution to India's GDP at factor cost at constant 2000-01 prices, Trade, Hotels, Transport and Communication ranks highest, followed by Financing, Insurance, Real Estate and Business Services, then Agriculture, Forestry and Fishing, and finally Manufacturing.", 'isCorrect': true},
        {'text': "In decreasing order of contribution to India's GDP at factor cost at constant 2000-01 prices, Agriculture, Forestry and Fishing ranks highest, followed by Trade, Hotels, Transport and Communication, then Financing, Insurance, Real Estate and Business Services, and finally Manufacturing.", 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc("32").set({
      'questionId': "32",
      'order': 32,
      'statements': [
        {'text': "Foreign Direct Investment is considered a good type of capital inflow for a host country, in view of the East Asian financial crisis and Latin American experience.", 'isCorrect': true},
        {'text': "Foreign Portfolio Investment is considered a good type of capital inflow for a host country, in view of the East Asian financial crisis and Latin American experience.", 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc("33").set({
      'questionId': "33",
      'order': 33,
      'statements': [
        {'text': "A country is said to be in a debt trap if it has to borrow to make interest payments on outstanding loans.", 'isCorrect': true},
        {'text': "A country is said to be in a debt trap if it has to abide by the conditionalities imposed by the International Monetary Fund.", 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc("34").set({
      'questionId': "34",
      'order': 34,
      'statements': [
        {'text': "National Income represents Gross National Product at market prices minus depreciation.", 'isCorrect': true},
        {'text': "National Income represents Gross National Product at market prices minus depreciation and indirect taxes plus subsidies.", 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc("35").set({
      'questionId': "35",
      'order': 35,
      'statements': [
        {'text': "In descending order of per capita Net State Domestic Product, among Gujarat, Karnataka, Maharashtra and Tamil Nadu, as of 2001, Karnataka ranks highest, followed by Gujarat, then Tamil Nadu, then Maharashtra.", 'isCorrect': true},
        {'text': "In descending order of per capita Net State Domestic Product, among Gujarat, Karnataka, Maharashtra and Tamil Nadu, as of 2001, Gujarat ranks highest, followed by Maharashtra, then Tamil Nadu, then Karnataka.", 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc("36").set({
      'questionId': "36",
      'order': 36,
      'statements': [
        {'text': "Per Capita Real Income is the most appropriate measure of a country's economic growth.", 'isCorrect': true},
        {'text': "Gross Domestic Product is the most appropriate measure of a country's economic growth.", 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc("37").set({
      'questionId': "37",
      'order': 37,
      'statements': [
        {'text': "The growth rate of per capita income at current prices is higher than that at constant prices because the latter takes into account the increase in the price level.", 'isCorrect': true},
        {'text': "The growth rate of per capita income at current prices is higher than that at constant prices because the latter takes into account the growth of population.", 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc("38").set({
      'questionId': "38",
      'order': 38,
      'statements': [
        {'text': "The new GDP series released by the Central Statistical Organisation in February 1999 is with reference to the base price of 1993-94.", 'isCorrect': true},
        {'text': "The new GDP series released by the Central Statistical Organisation in February 1999 is with reference to the base price of 1991-92.", 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc("39").set({
      'questionId': "39",
      'order': 39,
      'statements': [
        {'text': "Boom refers to business activity at a high level with increasing income, output and employment at the macro level; Recession refers to a gradual fall of income, output and employment with business activity in a low gear; Depression refers to an unprecedented level of under-employment and unemployment with a drastic fall in income, output and employment; and Recovery refers to a steady rise in the general level of prices, income, output and employment.", 'isCorrect': true},
        {'text': "Boom refers to a gradual fall of income, output and employment with business activity in a low gear, while Recession refers to business activity at a high level with increasing income, output and employment at the macro level.", 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc("40").set({
      'questionId': "40",
      'order': 40,
      'statements': [
        {'text': "In an open economy, the national income (Y) is given by Y = C + I + G + (X - M).", 'isCorrect': true},
        {'text': "In an open economy, the national income (Y) is given by Y = C + I + G + X.", 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc("41").set({
      'questionId': "41",
      'order': 41,
      'statements': [
        {'text': "Since 1980, the share of the tertiary sector in the total GDP of India has shown an increasing trend.", 'isCorrect': true},
        {'text': "Since 1980, the share of the tertiary sector in the total GDP of India has shown a decreasing trend.", 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc("42").set({
      'questionId': "42",
      'order': 42,
      'statements': [
        {'text': "A consumer is said to be in equilibrium if he is able to fulfil his needs with a given level of income.", 'isCorrect': true},
        {'text': "A consumer is said to be in equilibrium if he is able to live in full comfort with a given level of income.", 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc("43").set({
      'questionId': "43",
      'order': 43,
      'statements': [
        {'text': "Supply-side economics lays greater emphasis on the point of view of the producer.", 'isCorrect': true},
        {'text': "Supply-side economics lays greater emphasis on the point of view of the consumer.", 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc("44").set({
      'questionId': "44",
      'order': 44,
      'statements': [
        {'text': "National Income is the Net National Product at market price.", 'isCorrect': true},
        {'text': "National Income is the Net National Product at factor cost.", 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc("45").set({
      'questionId': "45",
      'order': 45,
      'statements': [
        {'text': "A redistribution of income in a country can be best brought about through progressive taxation combined with progressive expenditure.", 'isCorrect': true},
        {'text': "A redistribution of income in a country can be best brought about through progressive taxation combined with regressive expenditure.", 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc("46").set({
      'questionId': "46",
      'order': 46,
      'statements': [
        {'text': "Structural adjustment is a gradual, multi-step process, while stabilization is a quick adaptation process.", 'isCorrect': true},
        {'text': "Stabilization is a gradual, multi-step process while structural adjustment is a quick adaptation process.", 'isCorrect': false},
      ],
    });
    await topicRef4.collection('questions').doc("47").set({
      'questionId': "47",
      'order': 47,
      'statements': [
        {'text': "The main reason for the low growth rate in India, despite a high rate of savings and capital formation, is a high capital-output ratio.", 'isCorrect': true},
        {'text': "The main reason for the low growth rate in India, despite a high rate of savings and capital formation, is a low capital-output ratio.", 'isCorrect': false},
      ],
    });

    final topicRef5 =
        subjectRef.collection('topics').doc("government_budgeting_and_govt_accounts");
    await topicRef5.set({
      'name': "Government Budgeting and Govt. Accounts",
      'order': 5,
    }, SetOptions(merge: true));

    await topicRef5.collection('questions').doc("1").set({
      'questionId': "1",
      'order': 1,
      'statements': [
        {'text': "Capital receipts either create a liability for the Government or cause a reduction in its assets, and borrowings and disinvestment are examples of capital receipts.", 'isCorrect': true},
        {'text': "Interest received on loans creates a liability of the Government.", 'isCorrect': false},
      ],
    });
    await topicRef5.collection('questions').doc("2").set({
      'questionId': "2",
      'order': 2,
      'statements': [
        {'text': "Given a fiscal deficit of ₹50,000 crores and interest liabilities of ₹1,500 crores, the gross primary deficit works out to ₹48,500 crores.", 'isCorrect': true},
        {'text': "Given a fiscal deficit of ₹50,000 crores and interest liabilities of ₹1,500 crores, the gross primary deficit works out to ₹51,500 crores.", 'isCorrect': false},
      ],
    });
    await topicRef5.collection('questions').doc("3").set({
      'questionId': "3",
      'order': 3,
      'statements': [
        {'text': "Given revenue expenditure of ₹80,000 crores, revenue receipts of ₹60,000 crores, borrowings of ₹10,000 crores, and interest payments of ₹6,000 crores, the revenue deficit is ₹20,000 crores, the fiscal deficit is ₹10,000 crores, and the primary deficit is ₹4,000 crores.", 'isCorrect': true},
        {'text': "Given revenue expenditure of ₹80,000 crores, revenue receipts of ₹60,000 crores, borrowings of ₹10,000 crores, and interest payments of ₹6,000 crores, the primary deficit works out to ₹10,000 crores.", 'isCorrect': false},
      ],
    });
    await topicRef5.collection('questions').doc("4").set({
      'questionId': "4",
      'order': 4,
      'statements': [
        {'text': "The Union Finance Minister lays the Annual Financial Statement before both Houses of Parliament, and at the Union level no demand for a grant can be made except on the recommendation of the President of India.", 'isCorrect': true},
        {'text': "At the Union level, a demand for a grant can be made without the recommendation of the President of India.", 'isCorrect': false},
      ],
    });
    await topicRef5.collection('questions').doc("5").set({
      'questionId': "5",
      'order': 5,
      'statements': [
        {'text': "A share of household financial savings goes towards government borrowings, and dated securities issued at market-related rates in auctions form a large component of India's internal debt.", 'isCorrect': true},
        {'text': "Household financial savings do not go towards government borrowings, and dated securities form only a small component of India's internal debt.", 'isCorrect': false},
      ],
    });
    await topicRef5.collection('questions').doc("6").set({
      'questionId': "6",
      'order': 6,
      'statements': [
        {'text': "The Macro Economic Framework Statement, placed before Parliament along with the Budget, is mandated by the provisions of the Fiscal Responsibility and Budget Management Act, 2003.", 'isCorrect': true},
        {'text': "The Macro Economic Framework Statement, placed before Parliament along with the Budget, is mandated by Article 112 and Article 110(1) of the Constitution of India.", 'isCorrect': false},
      ],
    });
    await topicRef5.collection('questions').doc("7").set({
      'questionId': "7",
      'order': 7,
      'statements': [
        {'text': "Non-financial debt in the Indian economy includes housing loans owed by households, amounts outstanding on credit cards, and Treasury bills.", 'isCorrect': true},
        {'text': "Non-financial debt in the Indian economy includes only Treasury bills, and not housing loans or credit card amounts owed by households.", 'isCorrect': false},
      ],
    });
    await topicRef5.collection('questions').doc("8").set({
      'questionId': "8",
      'order': 8,
      'statements': [
        {'text': "Most of India's external debt is not owed by governmental entities, and not all of India's external debt is denominated in US dollars.", 'isCorrect': true},
        {'text': "Most of India's external debt is owed by governmental entities, and all of India's external debt is denominated in US dollars.", 'isCorrect': false},
      ],
    });
    await topicRef5.collection('questions').doc("9").set({
      'questionId': "9",
      'order': 9,
      'statements': [
        {'text': "The Fiscal Responsibility and Budget Management Review Committee recommended a debt-to-GDP ratio of 60% for the general (combined) Government by 2023, comprising 40% for the Central Government and 20% for the State Governments; and under the Constitution of India, a State must take the Central Government's consent to raise any loan if it owes any outstanding liabilities to the Centre.", 'isCorrect': true},
        {'text': "The Central Government has domestic liabilities of 21% of GDP as compared to 49% of GDP for the State Governments.", 'isCorrect': false},
      ],
    });
    await topicRef5.collection('questions').doc("10").set({
      'questionId': "10",
      'order': 10,
      'statements': [
        {'text': "Reducing revenue expenditure and rationalizing subsidies are actions the Government can take to reduce a persistent deficit.", 'isCorrect': true},
        {'text': "Introducing new welfare schemes and reducing import duty are actions the Government can take to reduce a persistent deficit.", 'isCorrect': false},
      ],
    });
    await topicRef5.collection('questions').doc("11").set({
      'questionId': "11",
      'order': 11,
      'statements': [
        {'text': "Expenditure on acquisition of assets like roads, buildings and machinery, loans received from foreign governments, and loans and advances granted to States and Union Territories are all included in the capital budget of the Government of India.", 'isCorrect': true},
        {'text': "Only expenditure on acquisition of assets like roads, buildings and machinery is included in the capital budget of the Government of India.", 'isCorrect': false},
      ],
    });
    await topicRef5.collection('questions').doc("12").set({
      'questionId': "12",
      'order': 12,
      'statements': [
        {'text': "No amount can be withdrawn from the Consolidated Fund of India without the authorization of the Parliament of India.", 'isCorrect': true},
        {'text': "The Department of Revenue is responsible for the preparation of the Union Budget that is presented to Parliament.", 'isCorrect': false},
      ],
    });
    await topicRef5.collection('questions').doc("13").set({
      'questionId': "13",
      'order': 13,
      'statements': [
        {'text': "Reducing revenue expenditure and rationalizing subsidies are actions the government can take to reduce a persistent deficit.", 'isCorrect': true},
        {'text': "Introducing new welfare schemes and expanding industries are actions the government can take to reduce a persistent deficit.", 'isCorrect': false},
      ],
    });
    await topicRef5.collection('questions').doc("14").set({
      'questionId': "14",
      'order': 14,
      'statements': [
        {'text': "Defence expenditure, interest payments, salaries and pensions, and subsidies are all covered under Non-Plan Expenditure in the Union Budget.", 'isCorrect': true},
        {'text': "Only defence expenditure is covered under Non-Plan Expenditure in the Union Budget.", 'isCorrect': false},
      ],
    });
    await topicRef5.collection('questions').doc("15").set({
      'questionId': "15",
      'order': 15,
      'statements': [
        {'text': "In India, deficit financing is used for raising resources for economic development.", 'isCorrect': true},
        {'text': "In India, deficit financing is used for raising resources for the redemption of public debt.", 'isCorrect': false},
      ],
    });
    await topicRef5.collection('questions').doc("16").set({
      'questionId': "16",
      'order': 16,
      'statements': [
        {'text': "Placing the Annual Financial Statement before Parliament, withdrawing moneys from the Consolidated Fund of India only after passing the Appropriation Bill, provisions of supplementary grants and vote-on-account, and introducing the Finance Bill in Parliament are methods of Parliamentary control over public finance in India.", 'isCorrect': true},
        {'text': "A periodic or at least a mid-year review of the government's programme against macroeconomic forecasts and expenditure by a Parliamentary Budget Office is a method of Parliamentary control over public finance in India.", 'isCorrect': false},
      ],
    });
    await topicRef5.collection('questions').doc("17").set({
      'questionId': "17",
      'order': 17,
      'statements': [
        {'text': "A 'vote-on-account' only deals with the expenditure side of the government's budget, while an 'interim budget' includes both expenditure and receipts.", 'isCorrect': true},
        {'text': "A 'vote-on-account' is a provision used by a regular government, while an 'interim budget' is a provision used by a caretaker government.", 'isCorrect': false},
      ],
    });
    await topicRef5.collection('questions').doc("18").set({
      'questionId': "18",
      'order': 18,
      'statements': [
        {'text': "Unlike traditional asphalt, bio-asphalt is not based on fossil fuels, can be made from organic waste materials, and is eco-friendly to use for surfacing roads.", 'isCorrect': true},
        {'text': "Bio-asphalt (biosphalt) can be made from non-renewable resources.", 'isCorrect': false},
      ],
    });
    await topicRef5.collection('questions').doc("19").set({
      'questionId': "19",
      'order': 19,
      'statements': [
        {'text': "A 'fiscal stimulus' is an intense affirmative action of the government to boost economic activity in the country.", 'isCorrect': true},
        {'text': "A 'fiscal stimulus' is a massive investment by the government in the manufacturing sector to ensure the supply of goods to meet demand surge caused by rapid economic growth.", 'isCorrect': false},
      ],
    });
    await topicRef5.collection('questions').doc("20").set({
      'questionId': "20",
      'order': 20,
      'statements': [
        {'text': "The authorization for the withdrawal of funds from the Consolidated Fund of India must come from the Parliament of India.", 'isCorrect': true},
        {'text': "The authorization for the withdrawal of funds from the Consolidated Fund of India must come from the President of India.", 'isCorrect': false},
      ],
    });
    await topicRef5.collection('questions').doc("21").set({
      'questionId': "21",
      'order': 21,
      'statements': [
        {'text': "All revenues received by the Union Government by way of taxes and other receipts for the conduct of government business are credited to the Consolidated Fund of India.", 'isCorrect': true},
        {'text': "All revenues received by the Union Government by way of taxes and other receipts for the conduct of government business are credited to the Public Account.", 'isCorrect': false},
      ],
    });
    await topicRef5.collection('questions').doc("22").set({
      'questionId': "22",
      'order': 22,
      'statements': [
        {'text': "If the annual budget is not passed by the Lok Sabha, the Prime Minister submits the resignation of the Council of Ministers.", 'isCorrect': true},
        {'text': "If the annual budget is not passed by the Lok Sabha, the budget is modified and presented again.", 'isCorrect': false},
      ],
    });
    await topicRef5.collection('questions').doc("23").set({
      'questionId': "23",
      'order': 23,
      'statements': [
        {'text': "Certain Asset Management Companies are appointed as the fund managers of the National Investment Fund, and a certain proportion of its annual income is used for financing select social sectors.", 'isCorrect': true},
        {'text': "The assets in the National Investment Fund are managed directly by the Union Ministry of Finance, and the National Investment Fund is maintained within the Consolidated Fund of India.", 'isCorrect': false},
      ],
    });
    await topicRef5.collection('questions').doc("24").set({
      'questionId': "24",
      'order': 24,
      'statements': [
        {'text': "Privatization of higher educational institutions, downsizing of bureaucracy, and selling or offloading the shares of Public Sector Undertakings can be used as measures to control the fiscal deficit in India.", 'isCorrect': true},
        {'text': "Encouraging Foreign Direct Investment inflows can be used as a measure to control the fiscal deficit in India.", 'isCorrect': false},
      ],
    });
    await topicRef5.collection('questions').doc("25").set({
      'questionId': "25",
      'order': 25,
      'statements': [
        {'text': "The Department of Economic Affairs is responsible for the preparation and presentation of the Union Budget to Parliament.", 'isCorrect': true},
        {'text': "The Department of Revenue is responsible for the preparation and presentation of the Union Budget to Parliament.", 'isCorrect': false},
      ],
    });
    await topicRef5.collection('questions').doc("26").set({
      'questionId': "26",
      'order': 26,
      'statements': [
        {'text': "Cutting tax rates and increasing government spending can be considered part of a 'fiscal stimulus' package in the context of economic recession.", 'isCorrect': true},
        {'text': "Abolishing subsidies can be considered part of a 'fiscal stimulus' package in the context of economic recession.", 'isCorrect': false},
      ],
    });
    await topicRef5.collection('questions').doc("27").set({
      'questionId': "27",
      'order': 27,
      'statements': [
        {'text': "The Fiscal Responsibility and Budget Management Act, 2003 did not stipulate the elimination of primary deficit by the end of the fiscal year 2008-2009.", 'isCorrect': true},
        {'text': "The Fiscal Responsibility and Budget Management Act, 2003 stipulated the elimination of primary deficit by the end of the fiscal year 2008-2009.", 'isCorrect': false},
      ],
    });
    await topicRef5.collection('questions').doc("28").set({
      'questionId': "28",
      'order': 28,
      'statements': [
        {'text': "The Fiscal Responsibility and Budget Management Act (FRBMA) concerns both fiscal deficit and revenue deficit.", 'isCorrect': true},
        {'text': "The Fiscal Responsibility and Budget Management Act (FRBMA) concerns fiscal deficit only.", 'isCorrect': false},
      ],
    });
    await topicRef5.collection('questions').doc("29").set({
      'questionId': "29",
      'order': 29,
      'statements': [
        {'text': "The Indian Constitution provides for the establishment of a Consolidated Fund, a Public Account and a Contingency Fund for each State, and appropriations and disbursements under the Railway Budget were subject to the same form of parliamentary control as other appropriations and disbursements.", 'isCorrect': true},
        {'text': "Disbursements from the Public Accounts of India are subject to the Vote of Parliament.", 'isCorrect': false},
      ],
    });
    await topicRef5.collection('questions').doc("30").set({
      'questionId': "30",
      'order': 30,
      'statements': [
        {'text': "The Reserve Bank of India was not nationalised on 26 January 1950, and the borrowing programme of the Government of India is not handled by the Department of Expenditure, Ministry of Finance.", 'isCorrect': true},
        {'text': "The Reserve Bank of India was nationalised on 26 January 1950.", 'isCorrect': false},
      ],
    });
    await topicRef5.collection('questions').doc("31").set({
      'questionId': "31",
      'order': 31,
      'statements': [
        {'text': "India's external debt increased between March 2000 and March 2001 due to an increase in multilateral and bilateral debt.", 'isCorrect': true},
        {'text': "India's external debt increased between March 2000 and March 2001 due to an increase in commercial borrowings and NRI deposits.", 'isCorrect': false},
      ],
    });
    await topicRef5.collection('questions').doc("32").set({
      'questionId': "32",
      'order': 32,
      'statements': [
        {'text': "The Finance Commission recommends the principles governing the grants-in-aid of revenues to the states out of the Consolidated Fund of India.", 'isCorrect': true},
        {'text': "The Inter-State Council recommends the principles governing the grants-in-aid of revenues to the states out of the Consolidated Fund of India.", 'isCorrect': false},
      ],
    });
    await topicRef5.collection('questions').doc("33").set({
      'questionId': "33",
      'order': 33,
      'statements': [
        {'text': "The continued high borrowing by the Government has kept real interest rates high in the economy, the upward trend in the ratio of Fiscal Deficit to GDP in recent years has had an adverse effect on private investments, and interest payments are the single largest component of the non-plan revenue expenditure of the Union Government.", 'isCorrect': true},
        {'text': "External liabilities reported in the Union Budget are based on historical exchange rates.", 'isCorrect': false},
      ],
    });
    await topicRef5.collection('questions').doc("34").set({
      'questionId': "34",
      'order': 34,
      'statements': [
        {'text': "In 2001, Germany approved a \$32 million credit to India for oceanographic research.", 'isCorrect': true},
        {'text': "In 2001, Germany approved a \$32 million credit to India for the Tehri dam project.", 'isCorrect': false},
      ],
    });
    await topicRef5.collection('questions').doc("35").set({
      'questionId': "35",
      'order': 35,
      'statements': [
        {'text': "Market borrowing, Treasury bills, and special securities issued to the Reserve Bank of India are all components of internal debt.", 'isCorrect': true},
        {'text': "Only market borrowing is a component of internal debt, and not Treasury bills or special securities issued to the Reserve Bank of India.", 'isCorrect': false},
      ],
    });
    await topicRef5.collection('questions').doc("36").set({
      'questionId': "36",
      'order': 36,
      'statements': [
        {'text': "Fiscal deficit is the excess of Total Expenditure over Total Receipts less borrowings, Budget deficit is the excess of Total Expenditure over Total Receipts, Revenue deficit is the excess of Revenue Expenditure over Revenue Receipts, and Primary deficit is the excess of Total Expenditure over Total Receipts less borrowings and Interest Payments.", 'isCorrect': true},
        {'text': "Fiscal deficit is the excess of Revenue Expenditure over Revenue Receipts, while Revenue deficit is the excess of Total Expenditure over Total Receipts less borrowings.", 'isCorrect': false},
      ],
    });
    await topicRef5.collection('questions').doc("37").set({
      'questionId': "37",
      'order': 37,
      'statements': [
        {'text': "The Union Budget, 2000 awarded a Tax Holiday for the North-Eastern Region to promote industrialisation for 10 years.", 'isCorrect': true},
        {'text': "The Union Budget, 2000 awarded a Tax Holiday for the North-Eastern Region to promote industrialisation for 5 years.", 'isCorrect': false},
      ],
    });
    await topicRef5.collection('questions').doc("38").set({
      'questionId': "38",
      'order': 38,
      'statements': [
        {'text': "Fiscal deficit is greater than budgetary deficit.", 'isCorrect': true},
        {'text': "Fiscal deficit is the borrowings from the Reserve Bank of India plus other liabilities of the Government to meet its expenditure.", 'isCorrect': false},
      ],
    });
    await topicRef5.collection('questions').doc("39").set({
      'questionId': "39",
      'order': 39,
      'statements': [
        {'text': "The Economic Survey in India is published officially every year by the Ministry of Finance, Government of India.", 'isCorrect': true},
        {'text': "The Economic Survey in India is published officially every year by the Planning Commission of India.", 'isCorrect': false},
      ],
    });
    await topicRef5.collection('questions').doc("40").set({
      'questionId': "40",
      'order': 40,
      'statements': [
        {'text': "Subsidies, interest payments, defence expenditure, and maintenance expenditure for infrastructure created in previous plans all come under Non-Plan expenditure.", 'isCorrect': true},
        {'text': "Only interest payments and maintenance expenditure for infrastructure created in previous plans come under Non-Plan expenditure.", 'isCorrect': false},
      ],
    });
    await topicRef5.collection('questions').doc("41").set({
      'questionId': "41",
      'order': 41,
      'statements': [
        {'text': "Based on the given data, the Central Government continues to be under pressure to spend more and more on interest payments.", 'isCorrect': true},
        {'text': "Based on the given data, the Central Government continues to be under pressure to reduce expenditure on defence.", 'isCorrect': false},
      ],
    });
    await topicRef5.collection('questions').doc("42").set({
      'questionId': "42",
      'order': 42,
      'statements': [
        {'text': "Defence expenditure, subsidies, all expenditures linked with previous plan periods, and interest payments are all among the non-plan expenditures of the Government of India.", 'isCorrect': true},
        {'text': "Only defence expenditure and subsidies are among the non-plan expenditures of the Government of India.", 'isCorrect': false},
      ],
    });

    final topicRef6 =
        subjectRef.collection('topics').doc("indian_taxation_system");
    await topicRef6.set({
      'name': "Indian Taxation System",
      'order': 6,
    }, SetOptions(merge: true));

    await topicRef6.collection('questions').doc("1").set({
      'questionId': "1",
      'order': 1,
      'statements': [
        {'text': "In India, rural agricultural land is not considered a capital asset under the provisions of the Income-tax Act, 1961.", 'isCorrect': true},
        {'text': "In India, income from allied agricultural activities like poultry farming and wool rearing in rural areas is exempted from any tax.", 'isCorrect': false},
      ],
    });
    await topicRef6.collection('questions').doc("2").set({
      'questionId': "2",
      'order': 2,
      'statements': [
        {'text': "Loss of revenue to the state exchequer due to tax evasion has been the main cause of worry to the Government of India regarding the creation of black money.", 'isCorrect': true},
        {'text': "Diversion of resources to the purchase of real estate and investment in luxury housing has been the main cause of worry to the Government of India regarding the creation of black money.", 'isCorrect': false},
      ],
    });
    await topicRef6.collection('questions').doc("3").set({
      'questionId': "3",
      'order': 3,
      'statements': [
        {'text': "India's equalization tax of 6% on online advertisement services offered by non-resident entities was not introduced as part of the Income Tax Act, and non-resident entities cannot claim a tax credit for it in their home country under the Double Taxation Avoidance Agreement.", 'isCorrect': true},
        {'text': "India's equalization tax of 6% on online advertisement services offered by non-resident entities was introduced as part of the Income Tax Act.", 'isCorrect': false},
      ],
    });
    await topicRef6.collection('questions').doc("4").set({
      'questionId': "4",
      'order': 4,
      'statements': [
        {'text': "Cereal grains hulled, chicken eggs cooked, and newspapers containing advertising material are exempted under GST.", 'isCorrect': true},
        {'text': "Fish processed and canned is exempted under GST.", 'isCorrect': false},
      ],
    });
    await topicRef6.collection('questions').doc("5").set({
      'questionId': "5",
      'order': 5,
      'statements': [
        {'text': "Implementing GST will replace multiple taxes collected by multiple authorities and will create a single market in India.", 'isCorrect': true},
        {'text': "Implementing GST will drastically reduce India's Current Account Deficit and enable it to overtake China in economic growth in the near future.", 'isCorrect': false},
      ],
    });
    await topicRef6.collection('questions').doc("6").set({
      'questionId': "6",
      'order': 6,
      'statements': [
        {'text': "Tax revenue as a percentage of GDP of India has not steadily increased in the last decade, and neither has fiscal deficit as a percentage of GDP.", 'isCorrect': true},
        {'text': "Tax revenue as a percentage of GDP of India has steadily increased in the last decade.", 'isCorrect': false},
      ],
    });
    await topicRef6.collection('questions').doc("7").set({
      'questionId': "7",
      'order': 7,
      'statements': [
        {'text': "The term 'Base Erosion and Profit Shifting' is used in the context of curbing tax evasion by multinational companies.", 'isCorrect': true},
        {'text': "The term 'Base Erosion and Profit Shifting' is used in the context of mining operations by multinational companies in resource-rich but backward areas.", 'isCorrect': false},
      ],
    });
    await topicRef6.collection('questions').doc("8").set({
      'questionId': "8",
      'order': 8,
      'statements': [
        {'text': "The sales tax paid while purchasing a toothpaste is a tax imposed and collected by the State Government.", 'isCorrect': true},
        {'text': "The sales tax paid while purchasing a toothpaste is a tax imposed by the Central Government but collected by the State Government.", 'isCorrect': false},
      ],
    });
    await topicRef6.collection('questions').doc("9").set({
      'questionId': "9",
      'order': 9,
      'statements': [
        {'text': "Value Added Tax is basically a subject of the State Governments, not the Central Government.", 'isCorrect': true},
        {'text': "Value Added Tax is basically a subject of the Central Government, with the State Governments only acting as facilitators for its successful implementation.", 'isCorrect': false},
      ],
    });
    await topicRef6.collection('questions').doc("10").set({
      'questionId': "10",
      'order': 10,
      'statements': [
        {'text': "The tax proceeds of excise duty as a percentage of gross tax revenue significantly declined in India in the five years up to 2010.", 'isCorrect': true},
        {'text': "The tax proceeds of corporation tax as a percentage of gross tax revenue significantly declined in India in the five years up to 2010.", 'isCorrect': false},
      ],
    });
    await topicRef6.collection('questions').doc("11").set({
      'questionId': "11",
      'order': 11,
      'statements': [
        {'text': "In India, taxes on transactions in Stock Exchanges and Futures Markets are levied by the Union.", 'isCorrect': true},
        {'text': "In India, taxes on transactions in Stock Exchanges and Futures Markets are collected by the States.", 'isCorrect': false},
      ],
    });
    await topicRef6.collection('questions').doc("12").set({
      'questionId': "12",
      'order': 12,
      'statements': [
        {'text': "Fringe Benefit Tax, Interest Tax, and Securities Transaction Tax are all Direct Taxes.", 'isCorrect': true},
        {'text': "Only the Fringe Benefit Tax is a Direct Tax among Fringe Benefit Tax, Interest Tax, and Securities Transaction Tax.", 'isCorrect': false},
      ],
    });
    await topicRef6.collection('questions').doc("13").set({
      'questionId': "13",
      'order': 13,
      'statements': [
        {'text': "Service tax is an indirect tax levied by the Central Government.", 'isCorrect': true},
        {'text': "Service tax is a direct tax levied by the Central Government.", 'isCorrect': false},
      ],
    });
    await topicRef6.collection('questions').doc("14").set({
      'questionId': "14",
      'order': 14,
      'statements': [
        {'text': "The task force on direct taxes under the chairmanship of Dr. Vijay L. Kelkar, in 2002, recommended the abolition of Wealth Tax.", 'isCorrect': true},
        {'text': "The task force on direct taxes under the chairmanship of Dr. Vijay L. Kelkar, in 2002, recommended an increase in the exemption limit of personal income to Rs. 1.20 lakh for widows.", 'isCorrect': false},
      ],
    });
    await topicRef6.collection('questions').doc("15").set({
      'questionId': "15",
      'order': 15,
      'statements': [
        {'text': "Stamp duties on financial transactions in India are not simply levied and collected by the State Government alone, and they are not appropriated by the Union Government.", 'isCorrect': true},
        {'text': "Stamp duties on financial transactions in India are appropriated by the Union Government.", 'isCorrect': false},
      ],
    });
    await topicRef6.collection('questions').doc("16").set({
      'questionId': "16",
      'order': 16,
      'statements': [
        {'text': "The Kelkar proposals which were in the news were recommendations for tax reforms.", 'isCorrect': true},
        {'text': "The Kelkar proposals which were in the news were recommendations for reforms in the power sector.", 'isCorrect': false},
      ],
    });
    await topicRef6.collection('questions').doc("17").set({
      'questionId': "17",
      'order': 17,
      'statements': [
        {'text': "Customs duty and Excise duty are indirect taxes.", 'isCorrect': true},
        {'text': "Corporation tax and Wealth tax are indirect taxes.", 'isCorrect': false},
      ],
    });
    await topicRef6.collection('questions').doc("18").set({
      'questionId': "18",
      'order': 18,
      'statements': [
        {'text': "The Standing Committee of State Finance Ministers recommended, in January 2000, uniform rates across the States in respect of Sales tax.", 'isCorrect': true},
        {'text': "The Standing Committee of State Finance Ministers recommended, in January 2000, uniform rates across the States in respect of Value Added Tax.", 'isCorrect': false},
      ],
    });
    await topicRef6.collection('questions').doc("19").set({
      'questionId': "19",
      'order': 19,
      'statements': [
        {'text': "The Union levies, collects and distributes the proceeds of Income Tax between itself and the States.", 'isCorrect': true},
        {'text': "The Union levies, collects and keeps all the proceeds of Income Tax to itself.", 'isCorrect': false},
      ],
    });
    await topicRef6.collection('questions').doc("20").set({
      'questionId': "20",
      'order': 20,
      'statements': [
        {'text': "The Minimum Alternate Tax (MAT) was introduced in the Budget of the Government of India for the year 1996-97.", 'isCorrect': true},
        {'text': "The Minimum Alternate Tax (MAT) was introduced in the Budget of the Government of India for the year 1991-92.", 'isCorrect': false},
      ],
    });
    await topicRef6.collection('questions').doc("21").set({
      'questionId': "21",
      'order': 21,
      'statements': [
        {'text': "Corporation tax is levied by the Union and belongs to it exclusively.", 'isCorrect': true},
        {'text': "Corporation tax is levied by the Union and shared by the Union and the States.", 'isCorrect': false},
      ],
    });

    final topicRef7 =
        subjectRef.collection('topics').doc("rbi_functions_money_supply_monetary_policy_forex_mgt_balance_of_payment");
    await topicRef7.set({
      'name': "RBI Functions - Money Supply, Monetary Policy, Forex Mgt & Balance of Payment",
      'order': 7,
    }, SetOptions(merge: true));

    await topicRef7.collection('questions').doc("1").set({
      'questionId': "1",
      'order': 1,
      'statements': [
        {'text': "Conducting 'Open Market Operations' is considered part of RBI's 'Sterilization' activity, aimed at neutralising the money-supply impact of its forex market interventions.", 'isCorrect': true},
        {'text': "Regulating the functions of Non-Banking Financial Institutions is considered part of RBI's 'Sterilization' activity.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("2").set({
      'questionId': "2",
      'order': 2,
      'statements': [
        {'text': "In India, the Reserve Bank of India is primarily responsible for maintaining price stability by controlling inflation.", 'isCorrect': true},
        {'text': "In India, the Department of Consumer Affairs is primarily responsible for maintaining price stability by controlling inflation.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("3").set({
      'questionId': "3",
      'order': 3,
      'statements': [
        {'text': "A tight monetary policy of the US Federal Reserve could lead to capital flight from India, increasing the interest cost of firms with existing External Commercial Borrowings.", 'isCorrect': true},
        {'text': "A tight monetary policy of the US Federal Reserve typically leads to increased capital inflows into India, reducing the interest cost of firms with existing ECBs.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("4").set({
      'questionId': "4",
      'order': 4,
      'statements': [
        {'text': "An increase in the Nominal Effective Exchange Rate (NEER) indicates appreciation of the rupee, while a rising REER driven by higher relative domestic inflation signals a loss, not an improvement, in trade competitiveness.", 'isCorrect': true},
        {'text': "An increase in the Real Effective Exchange Rate (REER) indicates an improvement in a country's trade competitiveness.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("5").set({
      'questionId': "5",
      'order': 5,
      'statements': [
        {'text': "If inflation is too high, the RBI is likely to sell government securities to absorb liquidity from the market.", 'isCorrect': true},
        {'text': "If inflation is too high, the RBI is likely to buy government securities to inject liquidity into the market.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("6").set({
      'questionId': "6",
      'order': 6,
      'statements': [
        {'text': "Devaluation of a currency necessarily improves the competitiveness of domestic exports in foreign markets, though it does not necessarily improve the overall trade balance or raise the foreign value of the domestic currency.", 'isCorrect': true},
        {'text': "Devaluation of a currency necessarily increases the foreign value of the domestic currency.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("7").set({
      'questionId': "7",
      'order': 7,
      'statements': [
        {'text': "Creating new money to finance a budget deficit is likely to be the most inflationary of the various methods of financing a deficit.", 'isCorrect': true},
        {'text': "Borrowing from the public to finance a budget deficit is likely to be the most inflationary of the various methods of financing a deficit.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("8").set({
      'questionId': "8",
      'order': 8,
      'statements': [
        {'text': "Foreign currency earnings from India's IT sector and remittances from Indians abroad help reduce the risk of a currency crisis.", 'isCorrect': true},
        {'text': "Increasing government expenditure helps reduce the risk of a currency crisis.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("9").set({
      'questionId': "9",
      'order': 9,
      'statements': [
        {'text': "The money multiplier in an economy increases with an increase in the banking habit of the people.", 'isCorrect': true},
        {'text': "The money multiplier in an economy increases with an increase in the Cash Reserve Ratio maintained by banks.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("10").set({
      'questionId': "10",
      'order': 10,
      'statements': [
        {'text': "Demand-pull inflation can be caused or increased by expansionary policies, fiscal stimulus, and higher purchasing power, but not by rising interest rates.", 'isCorrect': true},
        {'text': "Demand-pull inflation is typically caused or increased by rising interest rates in the economy.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("11").set({
      'questionId': "11",
      'order': 11,
      'statements': [
        {'text': "Not depending on short-term foreign borrowings is likely to give India some immunity if another global financial crisis were to occur.", 'isCorrect': true},
        {'text': "Maintaining full capital account convertibility is likely to give India some immunity if another global financial crisis were to occur.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("12").set({
      'questionId': "12",
      'order': 12,
      'statements': [
        {'text': "Withdrawing cash from a Demand Deposit Account has no immediate effect on the aggregate money supply in the economy, since it merely converts deposit money into currency.", 'isCorrect': true},
        {'text': "Withdrawing cash from a Demand Deposit Account immediately reduces the aggregate money supply in the economy by that amount.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("13").set({
      'questionId': "13",
      'order': 13,
      'statements': [
        {'text': "The weightage of food in the Consumer Price Index (CPI) is higher than in the Wholesale Price Index (WPI), and WPI does not capture changes in the prices of services.", 'isCorrect': true},
        {'text': "The Reserve Bank of India has adopted the Wholesale Price Index (WPI), not the Consumer Price Index, as its key measure of inflation for setting policy rates.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("14").set({
      'questionId': "14",
      'order': 14,
      'statements': [
        {'text': "Under an expansionist monetary policy, the RBI would not increase the Marginal Standing Facility Rate.", 'isCorrect': true},
        {'text': "Under an expansionist monetary policy, the RBI would increase the Marginal Standing Facility Rate to boost liquidity.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("15").set({
      'questionId': "15",
      'order': 15,
      'statements': [
        {'text': "Following an expansionary monetary policy is not among the likely measures the Government/RBI would take to stop the slide of the Indian rupee.", 'isCorrect': true},
        {'text': "Following an expansionary monetary policy is one of the most likely measures the Government/RBI would take to stop the slide of the Indian rupee.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("16").set({
      'questionId': "16",
      'order': 16,
      'statements': [
        {'text': "The money multiplier in an economy increases with an increase in the banking habit of the population.", 'isCorrect': true},
        {'text': "The money multiplier in an economy increases with an increase in the Statutory Liquidity Ratio.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("17").set({
      'questionId': "17",
      'order': 17,
      'statements': [
        {'text': "The Monetary Policy Committee (MPC) decides the RBI's benchmark interest rates; it is a six-member body chaired by the RBI Governor, not the Union Finance Minister.", 'isCorrect': true},
        {'text': "The Monetary Policy Committee (MPC) is a 12-member body that functions under the chairmanship of the Union Finance Minister.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("18").set({
      'questionId': "18",
      'order': 18,
      'statements': [
        {'text': "'Import cover' refers to the number of months of imports that could be paid for using a country's international reserves.", 'isCorrect': true},
        {'text': "'Import cover' refers to the ratio of the value of a country's imports to its Gross Domestic Product.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("19").set({
      'questionId': "19",
      'order': 19,
      'statements': [
        {'text': "Bank rate and open market operations are components of Monetary Policy, while public debt and public revenue are not.", 'isCorrect': true},
        {'text': "Public debt and public revenue are components of Monetary Policy in India.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("20").set({
      'questionId': "20",
      'order': 20,
      'statements': [
        {'text': "Decreased money circulation helps in controlling inflation in India.", 'isCorrect': true},
        {'text': "Increased money circulation helps in controlling inflation in India.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("21").set({
      'questionId': "21",
      'order': 21,
      'statements': [
        {'text': "When the RBI reduces the Statutory Liquidity Ratio, Scheduled Commercial Banks may cut their lending rates as more funds become available for lending.", 'isCorrect': true},
        {'text': "When the RBI reduces the Statutory Liquidity Ratio, it drastically reduces the liquidity available to the banking system.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("22").set({
      'questionId': "22",
      'order': 22,
      'statements': [
        {'text': "The Consumer Price Index Number for Industrial Workers is brought out by the Labour Bureau.", 'isCorrect': true},
        {'text': "The Consumer Price Index Number for Industrial Workers is brought out by the Reserve Bank of India.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("23").set({
      'questionId': "23",
      'order': 23,
      'statements': [
        {'text': "Convertibility of the rupee implies freely permitting the conversion of the rupee into other currencies and vice versa.", 'isCorrect': true},
        {'text': "Convertibility of the rupee implies being able to convert rupee notes into gold.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("24").set({
      'questionId': "24",
      'order': 24,
      'statements': [
        {'text': "The Current Account of the Balance of Payments consists of the balance of trade and the balance of invisibles, not foreign assets or Special Drawing Rights.", 'isCorrect': true},
        {'text': "The Current Account of the Balance of Payments includes foreign assets and Special Drawing Rights.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("25").set({
      'questionId': "25",
      'order': 25,
      'statements': [
        {'text': "The primary purpose of Statutory Reserve Requirements is to enable the Central Bank to control the amount of advances that banks can create.", 'isCorrect': true},
        {'text': "The primary purpose of Statutory Reserve Requirements is to prevent commercial banks from making excessive profits.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("26").set({
      'questionId': "26",
      'order': 26,
      'statements': [
        {'text': "A decrease in the interest rate in an economy will increase investment expenditure.", 'isCorrect': true},
        {'text': "A decrease in the interest rate in an economy will increase the total savings in the economy.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("27").set({
      'questionId': "27",
      'order': 27,
      'statements': [
        {'text': "A rise in the general level of prices may be caused by an increase in money supply, a decrease in the aggregate level of output, or an increase in effective demand.", 'isCorrect': true},
        {'text': "A rise in the general level of prices can only be caused by an increase in the money supply, and not by changes in output or demand.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("28").set({
      'questionId': "28",
      'order': 28,
      'statements': [
        {'text': "India's Foreign Exchange Reserves include foreign-currency assets, gold holdings of the RBI, and Special Drawing Rights.", 'isCorrect': true},
        {'text': "India's Foreign Exchange Reserves include foreign-currency assets, loans from foreign countries, and Special Drawing Rights.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("29").set({
      'questionId': "29",
      'order': 29,
      'statements': [
        {'text': "Creating new money to finance a budget deficit is the most inflationary method of financing it, more so than borrowing from the public or from banks.", 'isCorrect': true},
        {'text': "Borrowing from banks to finance a budget deficit is more inflationary than creating new money to finance it.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("30").set({
      'questionId': "30",
      'order': 30,
      'statements': [
        {'text': "If the money supply remains the same while the demand for money increases, there will be an increase in the rate of interest.", 'isCorrect': true},
        {'text': "If the money supply remains the same while the demand for money increases, there will be a decrease in the rate of interest.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("31").set({
      'questionId': "31",
      'order': 31,
      'statements': [
        {'text': "Inflation benefits debtors, since they repay loans in currency that has lost real value; it does not benefit bond-holders, whose fixed returns lose real value.", 'isCorrect': true},
        {'text': "Inflation benefits bond-holders, since their fixed returns gain real value during periods of rising prices.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("32").set({
      'questionId': "32",
      'order': 32,
      'statements': [
        {'text': "In decreasing order of liquidity: currency ranks highest, followed by demand deposits, then savings deposits, then time deposits with banks.", 'isCorrect': true},
        {'text': "In decreasing order of liquidity: demand deposits rank highest, followed by currency, then time deposits, then savings deposits with banks.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("33").set({
      'questionId': "33",
      'order': 33,
      'statements': [
        {'text': "'Open market operations' in the Indian economy refers to the purchase and sale of government securities by the RBI.", 'isCorrect': true},
        {'text': "'Open market operations' in the Indian economy refers to borrowing by scheduled banks from the RBI.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("34").set({
      'questionId': "34",
      'order': 34,
      'statements': [
        {'text': "The Balance of Payments of a country is a systematic record of all its import and export transactions during a given period, normally a year.", 'isCorrect': true},
        {'text': "The Balance of Payments of a country is a systematic record only of the goods exported from the country during a year.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("35").set({
      'questionId': "35",
      'order': 35,
      'statements': [
        {'text': "An increase in the bank rate generally indicates that the Central Bank is following a tight money policy.", 'isCorrect': true},
        {'text': "An increase in the bank rate generally indicates that the Central Bank is following an easy money policy.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("36").set({
      'questionId': "36",
      'order': 36,
      'statements': [
        {'text': "Foreign loans, foreign direct investment, and portfolio investment constitute the capital account; private remittances are part of the current account, not the capital account.", 'isCorrect': true},
        {'text': "Private remittances, along with foreign loans and FDI, constitute the capital account of the Balance of Payments.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("37").set({
      'questionId': "37",
      'order': 37,
      'statements': [
        {'text': "Purchase of government securities from the public by the Central Bank, and government borrowing from the Central Bank, result in an increase in the money supply.", 'isCorrect': true},
        {'text': "Deposit of currency in commercial banks by the public, and sale of government securities to the public by the Central Bank, result in an increase in the money supply.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("38").set({
      'questionId': "38",
      'order': 38,
      'statements': [
        {'text': "India's persistent food inflation has been attributed to changing consumption patterns from rising incomes and structural constraints in the food supply chain, not a sharp decline in the area under food grain cultivation.", 'isCorrect': true},
        {'text': "India's persistent food inflation has mainly been attributed to a roughly 30% decrease in the area under food grain cultivation over five years.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("39").set({
      'questionId': "39",
      'order': 39,
      'statements': [
        {'text': "In economic terms, the visit of foreign nationals to witness the Commonwealth Games in India is treated as an export of services.", 'isCorrect': true},
        {'text': "In economic terms, the visit of foreign nationals to witness the Commonwealth Games in India is treated as an import of services.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("40").set({
      'questionId': "40",
      'order': 40,
      'statements': [
        {'text': "Devaluing the domestic currency, and adopting policies to attract greater FDI and FII funds, can help reduce the current account deficit; reducing the export subsidy does not.", 'isCorrect': true},
        {'text': "Reducing the export subsidy, along with devaluing the domestic currency, is a key action that helps reduce the current account deficit.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("41").set({
      'questionId': "41",
      'order': 41,
      'statements': [
        {'text': "The 'base effect' in inflation refers to the impact of the price levels of the previous year on the calculation of the current inflation rate.", 'isCorrect': true},
        {'text': "The 'base effect' in inflation refers to the impact of a drastic deficiency in supply due to failure of crops.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("42").set({
      'questionId': "42",
      'order': 42,
      'statements': [
        {'text': "The lowering of the bank rate by the RBI leads to more liquidity in the market.", 'isCorrect': true},
        {'text': "The lowering of the bank rate by the RBI leads to less liquidity in the market.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("43").set({
      'questionId': "43",
      'order': 43,
      'statements': [
        {'text': "When the RBI announces an increase in the Cash Reserve Ratio, it means commercial banks will have less money to lend.", 'isCorrect': true},
        {'text': "When the RBI announces an increase in the Cash Reserve Ratio, it means commercial banks will have more money to lend.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("44").set({
      'questionId': "44",
      'order': 44,
      'statements': [
        {'text': "The Wholesale Price Index (WPI) in India is available only on a monthly basis and gives less weight to food articles than the Consumer Price Index for Industrial Workers.", 'isCorrect': true},
        {'text': "The Wholesale Price Index (WPI) in India is available on a daily basis and gives more weight to food articles than the CPI(IW).", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("45").set({
      'questionId': "45",
      'order': 45,
      'statements': [
        {'text': "The Tarapore Committee was associated with fuller capital account convertibility.", 'isCorrect': true},
        {'text': "The Tarapore Committee was associated with the establishment of Special Economic Zones.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("46").set({
      'questionId': "46",
      'order': 46,
      'statements': [
        {'text': "The repo rate is the rate at which commercial banks borrow short-term funds from the Reserve Bank of India.", 'isCorrect': true},
        {'text': "The repo rate is the rate at which the Reserve Bank of India borrows funds from commercial banks.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("47").set({
      'questionId': "47",
      'order': 47,
      'statements': [
        {'text': "The Balance of Payments gives a better picture of a country's economic transactions with the rest of the world than the Balance of Trade, because BoP accounts for both visible and invisible items while BoT does not.", 'isCorrect': true},
        {'text': "The Balance of Trade gives a more complete picture of a country's economic transactions with the rest of the world than the Balance of Payments.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("48").set({
      'questionId': "48",
      'order': 48,
      'statements': [
        {'text': "The series of index numbers of wholesale prices introduced from April 2000 has 1993-94 as its base year.", 'isCorrect': true},
        {'text': "India's foreign exchange reserves during 2004 did not exceed the 125 billion US dollar mark.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("49").set({
      'questionId': "49",
      'order': 49,
      'statements': [
        {'text': "Under FEMA, violation of foreign exchange rules has ceased to be a criminal offence and is instead treated as a civil offence.", 'isCorrect': true},
        {'text': "Under FEMA, violation of foreign exchange rules continues to be treated as a criminal offence, just as under the earlier FERA.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("50").set({
      'questionId': "50",
      'order': 50,
      'statements': [
        {'text': "The new WPI series with base 1993-94 became effective from 1 April 2000, and the weight assigned to electricity was increased in this new series.", 'isCorrect': true},
        {'text': "The new WPI series with base 1993-94 became effective from April 1998.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("51").set({
      'questionId': "51",
      'order': 51,
      'statements': [
        {'text': "Broad Money (M3) in India includes currency with the public, demand deposits with banks, and time deposits with banks.", 'isCorrect': true},
        {'text': "Broad Money (M3) in India includes only currency with the public and demand deposits with banks, excluding time deposits.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("52").set({
      'questionId': "52",
      'order': 52,
      'statements': [
        {'text': "Full convertibility of the rupee would mean its free float with other international currencies, its direct exchange with any currency at prescribed places within and outside the country, and its acting like any other international currency.", 'isCorrect': true},
        {'text': "Full convertibility of the rupee would mean only its free float with other international currencies, with no change in how or where it can be exchanged.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("53").set({
      'questionId': "53",
      'order': 53,
      'statements': [
        {'text': "The new series of the Wholesale Price Index (WPI) released by the Government of India was based on the prices of 1993-94.", 'isCorrect': true},
        {'text': "The new series of the Wholesale Price Index (WPI) released by the Government of India was based on the prices of 1981-82.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("54").set({
      'questionId': "54",
      'order': 54,
      'statements': [
        {'text': "The ceiling on foreign exchange for a host of current account transactions was lowered in the year 2000 because there was a fall in foreign currency assets.", 'isCorrect': true},
        {'text': "The ceiling on foreign exchange for current account transactions was lowered in 2000 because there was a rise, not a fall, in foreign currency assets.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("55").set({
      'questionId': "55",
      'order': 55,
      'statements': [
        {'text': "The Indian rupee is fully convertible only in respect of the Current Account of the Balance of Payments, not the Capital Account or into gold.", 'isCorrect': true},
        {'text': "The Indian rupee is fully convertible in respect of both the Current Account and the Capital Account of the Balance of Payments.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("56").set({
      'questionId': "56",
      'order': 56,
      'statements': [
        {'text': "Devaluation of a currency may promote exports because the price of the country's products in the international market may fall as a result.", 'isCorrect': true},
        {'text': "Devaluation of a currency may promote exports, but this has no connection with any change in the price of the country's products in international markets.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("57").set({
      'questionId': "57",
      'order': 57,
      'statements': [
        {'text': "The ratio banks are required to maintain between their cash/liquid assets in hand and total assets is called the Statutory Liquidity Ratio (SLR).", 'isCorrect': true},
        {'text': "The ratio banks are required to maintain between their cash in hand and total assets is called the Central Bank Reserve (CBR).", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("58").set({
      'questionId': "58",
      'order': 58,
      'statements': [
        {'text': "Capital Account Convertibility of the Indian Rupee implies that it can be exchanged for any major currency for the purpose of trading financial assets.", 'isCorrect': true},
        {'text': "Capital Account Convertibility of the Indian Rupee implies that it can be exchanged only for the purpose of travel.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("59").set({
      'questionId': "59",
      'order': 59,
      'statements': [
        {'text': "The average rate of gross domestic savings for the Indian economy has been estimated to be in the range of 25 to 30 percent.", 'isCorrect': true},
        {'text': "The average rate of gross domestic savings for the Indian economy has been estimated to be in the range of 15 to 20 percent.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("60").set({
      'questionId': "60",
      'order': 60,
      'statements': [
        {'text': "Broad Money in India is the sum of currency with the public, demand deposits with banks, and time deposits with banks, excluding other deposits with the RBI.", 'isCorrect': true},
        {'text': "Broad Money in India is the sum of currency with the public, demand deposits, time deposits, and other deposits with the RBI.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("61").set({
      'questionId': "61",
      'order': 61,
      'statements': [
        {'text': "In India, inflation has traditionally been measured by the Wholesale Price Index Number.", 'isCorrect': true},
        {'text': "In India, inflation has traditionally been measured by the Consumers Price Index for agricultural workers.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("62").set({
      'questionId': "62",
      'order': 62,
      'statements': [
        {'text': "Achieving full convertibility of the Indian rupee is advocated partly because it would help stabilise the rupee's exchange value against major world currencies.", 'isCorrect': true},
        {'text': "Achieving full convertibility of the Indian rupee is advocated mainly because it would eliminate India's need to hold any foreign exchange reserves.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("63").set({
      'questionId': "63",
      'order': 63,
      'statements': [
        {'text': "Hawala transactions relate to payments received in rupees against overseas currencies, and vice versa, without going through official banking channels.", 'isCorrect': true},
        {'text': "Hawala transactions relate to payments made to political parties or individuals for meeting election expenses through official banking channels.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("64").set({
      'questionId': "64",
      'order': 64,
      'statements': [
        {'text': "An increase in foreign exchange reserves is correctly matched with monetary expansion, a low import growth rate with recession in Indian industry, and portfolio investment with foreign institutional investors.", 'isCorrect': true},
        {'text': "Euro-issues are correctly matched with shares of European companies held by Indian companies.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("65").set({
      'questionId': "65",
      'order': 65,
      'statements': [
        {'text': "Bank Rate implies the rate of interest at which the Reserve Bank of India discounts the Bills of Exchange.", 'isCorrect': true},
        {'text': "Bank Rate implies the rate of interest paid by the Reserve Bank of India on the deposits of commercial banks.", 'isCorrect': false},
      ],
    });
    await topicRef7.collection('questions').doc("66").set({
      'questionId': "66",
      'order': 66,
      'statements': [
        {'text': "The Narasimhan Committee for Financial Sector Reforms suggested a reduction in the SLR, CRR, and priority sector financing.", 'isCorrect': true},
        {'text': "The Narasimhan Committee for Financial Sector Reforms suggested an increase in the SLR, CRR, and priority sector financing.", 'isCorrect': false},
      ],
    });

    print('Indian Economy seeding completed.');
  }




  static Future<void> seed() async {
    final subjectRef = _firestore.collection('subjects').doc('economics');

    await subjectRef.set({
      'name': 'Economics',
      'order': 3,
      'hasSections': false,
    }, SetOptions(merge: true));

    final topicRef1 = subjectRef.collection('topics').doc("rbi_and_indian_banking_and_finance_system");
    await topicRef1.set({
      'name': "RBI and Indian Banking and Finance System",
      'order': 1,
    }, SetOptions(merge: true));

    await topicRef1.collection('questions').doc("q1").set({
      'questionId': "Q1",
      'order': 1,
      'statements': [
        {'text': "Buying and selling government bonds, buying and selling foreign currency, and printing and distributing currency notes are sources of income for the Reserve Bank of India.", 'isCorrect': true},
        {'text': "Pension fund management is a source of income for the Reserve Bank of India.", 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc("q2").set({
      'questionId': "Q2",
      'order': 2,
      'statements': [
        {'text': "Apart from India, the United Arab Emirates and France are countries where international merchant payments are accepted under UPI.", 'isCorrect': true},
        {'text': "Apart from India, Germany is a country where international merchant payments are accepted under UPI.", 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc("q3").set({
      'questionId': "Q3",
      'order': 3,
      'statements': [
        {'text': "In RTGS, settlement of transactions is instantaneous, whereas in NEFT it takes some time to settle payments.", 'isCorrect': true},
        {'text': "Under RTGS, customers are charged for inward transactions, which is not the case under NEFT.", 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc("q4").set({
      'questionId': "Q4",
      'order': 4,
      'statements': [
        {'text': "The Reserve Bank of India prescribes a minimum capital requirement for wholly owned banking subsidiaries of foreign banks operating in India.", 'isCorrect': true},
        {'text': "According to Reserve Bank of India rules, at least 50% of the board members of a wholly owned banking subsidiary of a foreign bank in India must be Indian nationals.", 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc("q5").set({
      'questionId': "Q5",
      'order': 5,
      'statements': [
        {'text': "Syndicated lending spreads the risk of borrower default across multiple lenders.", 'isCorrect': true},
        {'text': "A syndicated loan can only be a fixed lump sum of funds and cannot be structured as a credit line.", 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc("q6").set({
      'questionId': "Q6",
      'order': 6,
      'statements': [
        {'text': "The digital rupee is a sovereign currency issued by the Reserve Bank of India in alignment with its monetary policy.", 'isCorrect': true},
        {'text': "The digital rupee is insured against inflation by its very design.", 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc("q7").set({
      'questionId': "Q7",
      'order': 7,
      'statements': [
        {'text': "All bank loans extended to Micro, Small and Medium Enterprises qualify under the priority sector.", 'isCorrect': true},
        {'text': "According to the MSMED Act, 2006, medium enterprises are those with investments in plant and machinery between 15 crore and 25 crore.", 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc("q8").set({
      'questionId': "Q8",
      'order': 8,
      'statements': [
        {'text': "It is possible to make payments in a central bank digital currency without using the US dollar or the SWIFT system.", 'isCorrect': true},
        {'text': "It is not possible to make payments in a central bank digital currency without relying on the US dollar or the SWIFT system.", 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc("q9").set({
      'questionId': "Q9",
      'order': 9,
      'statements': [
        {'text': "In a Self-Help Group, all members of the group take responsibility for a loan taken by an individual member.", 'isCorrect': true},
        {'text': "The Self-Help Group programme was originally initiated by the State Bank of India.", 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc("q10").set({
      'questionId': "Q10",
      'order': 10,
      'statements': [
        {'text': "Brickwork Ratings is an Indian credit rating agency.", 'isCorrect': true},
        {'text': "In India, credit rating agencies are regulated by the Reserve Bank of India.", 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc("q11").set({
      'questionId': "Q11",
      'order': 11,
      'statements': [
        {'text': "The Banks Board Bureau recommends the selection of heads for Public Sector Banks.", 'isCorrect': true},
        {'text': "The Governor of the Reserve Bank of India is the Chairman of the Banks Board Bureau.", 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc("q12").set({
      'questionId': "Q12",
      'order': 12,
      'statements': [
        {'text': "The Governor of the Reserve Bank of India is appointed by the Central Government.", 'isCorrect': true},
        {'text': "Certain provisions in the Constitution of India give the Central Government the right to issue directions to the Reserve Bank of India in public interest.", 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc("q13").set({
      'questionId': "Q13",
      'order': 13,
      'statements': [
        {'text': "Urban cooperative banks in India can issue equity shares and preference shares.", 'isCorrect': true},
        {'text': "Urban cooperative banks in India are supervised and regulated by local boards set up by the state governments.", 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc("q14").set({
      'questionId': "Q14",
      'order': 14,
      'statements': [
        {'text': "The lender of last resort function of the central bank refers to providing liquidity to banks facing a temporary crisis.", 'isCorrect': true},
        {'text': "The lender of last resort function of the central bank refers to lending to governments to finance budgetary deficits.", 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc("q15").set({
      'questionId': "Q15",
      'order': 15,
      'statements': [
        {'text': "The Service Area Approach was implemented under the purview of the Lead Bank Scheme.", 'isCorrect': true},
        {'text': "The Service Area Approach was implemented under the purview of the Mahatma Gandhi National Rural Employment Guarantee Scheme.", 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc("q16").set({
      'questionId': "Q16",
      'order': 16,
      'statements': [
        {'text': "Deposits are not included in the assets of a commercial bank in India, as they form part of its liabilities.", 'isCorrect': true},
        {'text': "Advances are not included in the assets of a commercial bank in India.", 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc("q17").set({
      'questionId': "Q17",
      'order': 17,
      'statements': [
        {'text': "One of the most important functions of District Central Cooperative Banks is to provide funds to Primary Agricultural Credit Societies.", 'isCorrect': true},
        {'text': "District Central Cooperative Banks deliver more short-term credit to the agriculture sector than Scheduled Commercial Banks and Regional Rural Banks.", 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc("q18").set({
      'questionId': "Q18",
      'order': 18,
      'statements': [
        {'text': "The Inter-Creditor Agreement signed by Indian banks and financial institutions aimed at faster resolution of stressed assets of Rs 50 crore or more under consortium lending.", 'isCorrect': true},
        {'text': "The Inter-Creditor Agreement signed by Indian banks and financial institutions was meant to act as an independent regulator for loan applications of Rs 50 crore or more.", 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc("q19").set({
      'questionId': "Q19",
      'order': 19,
      'statements': [
        {'text': "The Chairmen of public sector banks are selected by the Banks Board Bureau.", 'isCorrect': true},
        {'text': "The Chairmen of public sector banks are selected by the Reserve Bank of India.", 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc("q20").set({
      'questionId': "Q20",
      'order': 20,
      'statements': [
        {'text': "Under RBI's data storage directive, payment system providers must ensure that the entire data relating to payment systems operated by them is stored in a system only in India.", 'isCorrect': true},
        {'text': "Under RBI's data storage directive, payment system providers must ensure that their systems are owned and operated by public sector enterprises.", 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc("q21").set({
      'questionId': "Q21",
      'order': 21,
      'statements': [
        {'text': "The National Payments Corporation of India links all the ATMs in India.", 'isCorrect': true},
        {'text': "The Reserve Bank of India links all the ATMs in India.", 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc("q22").set({
      'questionId': "Q22",
      'order': 22,
      'statements': [
        {'text': "Capital Adequacy Ratio is the amount that banks have to maintain in the form of their own funds to offset any loss they may incur if an account holder fails to repay dues.", 'isCorrect': true},
        {'text': "The Capital Adequacy Ratio is decided by each individual bank.", 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc("q23").set({
      'questionId': "Q23",
      'order': 23,
      'statements': [
        {'text': "The BHIM app allows users to transfer money to anyone with a UPI-enabled bank account.", 'isCorrect': true},
        {'text': "A chip-and-PIN debit card has four factors of authentication, while the BHIM app has only two factors of authentication.", 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc("q24").set({
      'questionId': "Q24",
      'order': 24,
      'statements': [
        {'text': "The Merchant Discount Rate is the charge levied on a merchant by a bank for accepting payments from customers through the bank's debit card.", 'isCorrect': true},
        {'text': "The Merchant Discount Rate is the incentive given by a bank to a merchant for accepting debit card payments for goods and services.", 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc("q25").set({
      'questionId': "Q25",
      'order': 25,
      'statements': [
        {'text': "To put public sector banks in order, the associate banks were merged with the parent State Bank of India.", 'isCorrect': true},
        {'text': "Capital infusion into public sector banks by the Government of India has steadily increased over the last decade.", 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc("q26").set({
      'questionId': "Q26",
      'order': 26,
      'statements': [
        {'text': "All State Government employees joining the services after the date of notification by the respective State Governments can join the National Pension System.", 'isCorrect': true},
        {'text': "Only resident Indian citizens can join the National Pension System.", 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc("q27").set({
      'questionId': "Q27",
      'order': 27,
      'statements': [
        {'text': "Small Finance Banks in India were set up to supply credit to small business units and to small and marginal farmers.", 'isCorrect': true},
        {'text': "Small Finance Banks in India were set up to encourage young entrepreneurs to set up businesses, particularly in rural areas.", 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc("q28").set({
      'questionId': "Q28",
      'order': 28,
      'statements': [
        {'text': "Implementing the Unified Payments Interface is likely to make mobile wallets unnecessary for online payments.", 'isCorrect': true},
        {'text': "Implementing the Unified Payments Interface is likely to cause digital currency to totally replace physical currency in about two decades.", 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc("q29").set({
      'questionId': "Q29",
      'order': 29,
      'statements': [
        {'text': "The Scheme for Sustainable Structuring of Stressed Assets (S4A) is an RBI scheme for reworking the financial structure of big corporate entities facing genuine difficulties.", 'isCorrect': true},
        {'text': "The Scheme for Sustainable Structuring of Stressed Assets (S4A) is a disinvestment plan of the Government regarding Central Public Sector Undertakings.", 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc("q30").set({
      'questionId': "Q30",
      'order': 30,
      'statements': [
        {'text': "The National Payments Corporation of India helps in promoting financial inclusion in the country.", 'isCorrect': true},
        {'text': "The National Payments Corporation of India has not launched any card payment scheme such as RuPay.", 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc("q31").set({
      'questionId': "Q31",
      'order': 31,
      'statements': [
        {'text': "Core Banking Solutions is a networking of a bank's branches that enables customers to operate their accounts from any branch of the bank on its network, regardless of where they opened their account.", 'isCorrect': true},
        {'text': "Core Banking Solutions is an effort to increase the Reserve Bank of India's control over commercial banks through computerization.", 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc("q32").set({
      'questionId': "Q32",
      'order': 32,
      'statements': [
        {'text': "The Atal Pension Yojana guarantees the same amount of pension for the spouse for life after the subscriber's death.", 'isCorrect': true},
        {'text': "Under the Atal Pension Yojana, only one member of a family can join the scheme.", 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc("q33").set({
      'questionId': "Q33",
      'order': 33,
      'statements': [
        {'text': "The Marginal Cost of Funds based Lending Rate guidelines help improve transparency in the methodology followed by banks for determining interest rates on advances.", 'isCorrect': true},
        {'text': "The MCLR guidelines do not aim to ensure the availability of bank credit at interest rates that are fair to both borrowers and banks.", 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc("q34").set({
      'questionId': "Q34",
      'order': 34,
      'statements': [
        {'text': "Pradhan Mantri MUDRA Yojana is aimed at bringing small entrepreneurs into the formal financial system.", 'isCorrect': true},
        {'text': "Pradhan Mantri MUDRA Yojana is aimed at providing loans to poor farmers for cultivating particular crops.", 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc("q35").set({
      'questionId': "Q35",
      'order': 35,
      'statements': [
        {'text': "Payment Banks cannot undertake lending activities.", 'isCorrect': true},
        {'text': "Payment Banks can issue both credit cards and debit cards.", 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc("q36").set({
      'questionId': "Q36",
      'order': 36,
      'statements': [
        {'text': "Pradhan Mantri Jan Dhan Yojana has been launched for promoting financial inclusion in the country.", 'isCorrect': true},
        {'text': "Pradhan Mantri Jan Dhan Yojana has been launched for providing housing loans to poor people at cheaper interest rates.", 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc("q37").set({
      'questionId': "Q37",
      'order': 37,
      'statements': [
        {'text': "Basel III seeks to improve the banking sector's ability to deal with financial and economic stress and improve risk management.", 'isCorrect': true},
        {'text': "Basel III seeks to develop national strategies for the conservation and sustainable use of biological diversity.", 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc("q38").set({
      'questionId': "Q38",
      'order': 38,
      'statements': [
        {'text': "The terms 'Marginal Standing Facility Rate' and 'Net Demand and Time Liabilities' are used in relation to banking operations.", 'isCorrect': true},
        {'text': "The terms 'Marginal Standing Facility Rate' and 'Net Demand and Time Liabilities' are used in relation to communications networking.", 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc("q39").set({
      'questionId': "Q39",
      'order': 39,
      'statements': [
        {'text': "Business Correspondents enable beneficiaries in branchless rural areas to draw their subsidies and social security benefits in their own villages.", 'isCorrect': true},
        {'text': "Business Correspondents do not enable beneficiaries in rural areas to make deposits and withdrawals.", 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc("q40").set({
      'questionId': "Q40",
      'order': 40,
      'statements': [
        {'text': "Regional rural banks grant direct credit assistance to rural households.", 'isCorrect': true},
        {'text': "The National Bank for Agriculture and Rural Development grants direct credit assistance to rural households.", 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc("q41").set({
      'questionId': "Q41",
      'order': 41,
      'statements': [
        {'text': "Priority Sector Lending by banks in India constitutes lending to agriculture, micro and small enterprises, and weaker sections.", 'isCorrect': true},
        {'text': "Priority Sector Lending by banks in India does not include lending to weaker sections.", 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc("q42").set({
      'questionId': "Q42",
      'order': 42,
      'statements': [
        {'text': "The Reserve Bank of India regulates commercial banks in matters of liquidity of assets, branch expansion, and merger of banks.", 'isCorrect': true},
        {'text': "The Reserve Bank of India regulates commercial banks in matters relating to the winding-up of banks.", 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc("q43").set({
      'questionId': "Q43",
      'order': 43,
      'statements': [
        {'text': "As a bankers' bank, the Reserve Bank of India holds other banks' deposits and lends funds to commercial banks in times of need.", 'isCorrect': true},
        {'text': "The Reserve Bank of India, as a bankers' bank, does not advise commercial banks on monetary matters.", 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc("q44").set({
      'questionId': "Q44",
      'order': 44,
      'statements': [
        {'text': "The basic aim of the Lead Bank Scheme is that individual banks should adopt particular districts for intensive development.", 'isCorrect': true},
        {'text': "The basic aim of the Lead Bank Scheme is that all banks should make intensive efforts to mobilize deposits.", 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc("q45").set({
      'questionId': "Q45",
      'order': 45,
      'statements': [
        {'text': "Teaser loans are considered an aspect of sub-prime lending, exposing banks to the risk of defaulters in future.", 'isCorrect': true},
        {'text': "In India, teaser loans are mostly given to inexperienced entrepreneurs to set up manufacturing or export units.", 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc("q46").set({
      'questionId': "Q46",
      'order': 46,
      'statements': [
        {'text': "Commercial banks have the highest share in the disbursement of credit to agriculture and allied activities in India.", 'isCorrect': true},
        {'text': "Cooperative banks have the highest share in the disbursement of credit to agriculture and allied activities in India.", 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc("q47").set({
      'questionId': "Q47",
      'order': 47,
      'statements': [
        {'text': "Services rendered under microfinance include credit facilities, savings facilities, insurance facilities, and fund transfer.", 'isCorrect': true},
        {'text': "Fund transfer is not among the services rendered under microfinance.", 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc("q48").set({
      'questionId': "Q48",
      'order': 48,
      'statements': [
        {'text': "Adoption of villages by bank branches can be considered a step taken to achieve financial inclusion in India.", 'isCorrect': true},
        {'text': "Nationalization of banks can be considered a step taken to achieve financial inclusion in India.", 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc("q49").set({
      'questionId': "Q49",
      'order': 49,
      'statements': [
        {'text': "The Banking Ombudsman is appointed by the Reserve Bank of India.", 'isCorrect': true},
        {'text': "The service provided by the Banking Ombudsman is free of any fee.", 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc("q50").set({
      'questionId': "Q50",
      'order': 50,
      'statements': [
        {'text': "The functions of commercial banks in India include the purchase and sale of shares and securities on behalf of customers.", 'isCorrect': true},
        {'text': "Acting as executors and trustees of wills is not among the functions of commercial banks in India.", 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc("q51").set({
      'questionId': "Q51",
      'order': 51,
      'statements': [
        {'text': "The interest rate on savings accounts in nationalized commercial banks in India is not fixed by the Union Ministry of Finance.", 'isCorrect': true},
        {'text': "The interest rate on savings accounts in nationalized commercial banks in India is fixed by the Indian Banks' Association.", 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc("q52").set({
      'questionId': "Q52",
      'order': 52,
      'statements': [
        {'text': "Debt Service Obligation is a mechanism used by commercial banks for providing credit to the government.", 'isCorrect': true},
        {'text': "Statutory Liquidity Ratio is a mechanism used by commercial banks for providing credit to the government.", 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc("q53").set({
      'questionId': "Q53",
      'order': 53,
      'statements': [
        {'text': "Non-Banking Financial Companies in India can engage in the acquisition of securities issued by the government.", 'isCorrect': true},
        {'text': "Non-Banking Financial Companies in India cannot accept demand deposits like savings accounts.", 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc("q54").set({
      'questionId': "Q54",
      'order': 54,
      'statements': [
        {'text': "Under the Indira Gandhi National Old Age Pension Scheme, eligibility is not limited only to persons in rural areas.", 'isCorrect': true},
        {'text': "The Central Assistance under the Indira Gandhi National Old Age Pension Scheme is Rs. 300 per month per beneficiary, with States urged to provide matching amounts.", 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc("q55").set({
      'questionId': "Q55",
      'order': 55,
      'statements': [
        {'text': "Basel II relates to measures against cyber crimes.", 'isCorrect': true},
        {'text': "Basel II relates to international standards for measuring the adequacy of a bank's capital.", 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc("q56").set({
      'questionId': "Q56",
      'order': 56,
      'statements': [
        {'text': "The National Housing Bank was set up in India as a wholly-owned subsidiary of ICICI Bank.", 'isCorrect': true},
        {'text': "The National Housing Bank was set up in India as a wholly-owned subsidiary of the Reserve Bank of India.", 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc("q57").set({
      'questionId': "Q57",
      'order': 57,
      'statements': [
        {'text': "Corporation Bank is not a nationalized bank.", 'isCorrect': true},
        {'text': "Federal Bank is not a nationalized bank.", 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc("q58").set({
      'questionId': "Q58",
      'order': 58,
      'statements': [
        {'text': "The headquarters of United India Insurance Company Limited are located at Chennai.", 'isCorrect': true},
        {'text': "The Life Insurance Corporation of India is the oldest insurance company in India.", 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc("q59").set({
      'questionId': "Q59",
      'order': 59,
      'statements': [
        {'text': "The National Housing Bank, the apex institution of housing finance in India, was set up as a wholly-owned subsidiary of the Reserve Bank of India.", 'isCorrect': true},
        {'text': "The Small Industries Development Bank of India was not established as a subsidiary of the Industrial Development Bank of India.", 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc("q60").set({
      'questionId': "Q60",
      'order': 60,
      'statements': [
        {'text': "The first bank of limited liability managed by Indians, founded in 1881, was the Oudh Commercial Bank.", 'isCorrect': true},
        {'text': "The first bank of limited liability managed by Indians, founded in 1881, was the Punjab National Bank.", 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc("q61").set({
      'questionId': "Q61",
      'order': 61,
      'statements': [
        {'text': "Foreign Direct Investment up to 49 per cent from all sources is permitted in private sector banks in India under the automatic route.", 'isCorrect': true},
        {'text': "The maximum limit of shareholding of Indian promoters in private sector banks in India is 49 per cent of the paid-up capital.", 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc("q62").set({
      'questionId': "Q62",
      'order': 62,
      'statements': [
        {'text': "The Narasimhan Committee examined and suggested Financial Sector Reforms.", 'isCorrect': true},
        {'text': "The Chelliah Committee examined and suggested Financial Sector Reforms.", 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc("q63").set({
      'questionId': "Q63",
      'order': 63,
      'statements': [
        {'text': "The Reserve Bank of India acts as a banker to the Central Government and formulates and administers monetary policy.", 'isCorrect': true},
        {'text': "The Reserve Bank of India does not act as an agent of the Government in respect of India's membership of the IMF.", 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc("q64").set({
      'questionId': "Q64",
      'order': 64,
      'statements': [
        {'text': "The accounting year of the Reserve Bank of India is April to March.", 'isCorrect': true},
        {'text': "The accounting year of the Reserve Bank of India is July to June.", 'isCorrect': false},
      ],
    });
    await topicRef1.collection('questions').doc("q65").set({
      'questionId': "Q65",
      'order': 65,
      'statements': [
        {'text': "Rationing of credit is an instrument of selective credit control in India.", 'isCorrect': true},
        {'text': "Variable cost reserve ratios are an instrument of selective credit control in India.", 'isCorrect': false},
      ],
    });

    final topicRef2 = subjectRef.collection('topics').doc("capital_market_money_market_and_fdi");
    await topicRef2.set({
      'name': "Capital Market, Money Market and FDI",
      'order': 2,
    }, SetOptions(merge: true));

    await topicRef2.collection('questions').doc("1").set({
      'questionId': "1",
      'order': 1,
      'statements': [
        {'text': "A company's Business Responsibility and Sustainability Report (BRSR) mainly contains disclosures that are non-financial in nature.", 'isCorrect': true},
        {'text': "The Reserve Bank of India mandates all listed companies in India to submit a Business Responsibility and Sustainability Report (BRSR).", 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc("2").set({
      'questionId': "2",
      'order': 2,
      'statements': [
        {'text': "India accounts for a very large portion of all equity option contracts traded globally.", 'isCorrect': true},
        {'text': "There is no regulatory body in India to warn small investors about the risks of options trading or to act against unregistered financial advisors in this regard.", 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc("3").set({
      'questionId': "3",
      'order': 3,
      'statements': [
        {'text': "Bondholders are lenders to a company, whereas stockholders are its owners.", 'isCorrect': true},
        {'text': "For repayment purposes, stockholders are prioritized over bondholders by a company.", 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc("4").set({
      'questionId': "4",
      'order': 4,
      'statements': [
        {'text': "Among Bonds, Hedge Funds, Stocks, and Venture Capital, exactly two -- Hedge Funds and Venture Capital -- are treated as Alternative Investment Funds.", 'isCorrect': true},
        {'text': "Among Bonds, Hedge Funds, Stocks, and Venture Capital, only one is treated as an Alternative Investment Fund.", 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc("5").set({
      'questionId': "5",
      'order': 5,
      'statements': [
        {'text': "'Collateral Borrowing and Lending Obligation' (CBLO) is an instrument of the money market in India.", 'isCorrect': true},
        {'text': "'Collateral Borrowing and Lending Obligation' (CBLO) is an instrument of the stock market in India.", 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc("6").set({
      'questionId': "6",
      'order': 6,
      'statements': [
        {'text': "In India, Stock Exchanges can offer separate trading platforms for debt instruments.", 'isCorrect': true},
        {'text': "In India, Foreign Institutional Investors are not permitted to hold Government Securities (G-Secs).", 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc("7").set({
      'questionId': "7",
      'order': 7,
      'statements': [
        {'text': "In India, Insurance Companies, Pension Funds, and Retail Investors can all trade in Corporate Bonds and Government Securities.", 'isCorrect': true},
        {'text': "In India, Insurance Companies are not permitted to trade in Corporate Bonds and Government Securities.", 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc("8").set({
      'questionId': "8",
      'order': 8,
      'statements': [
        {'text': "Exchange-Traded Funds (ETFs) and Currency Swaps are considered financial instruments.", 'isCorrect': true},
        {'text': "Motor vehicles are considered financial instruments.", 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc("9").set({
      'questionId': "9",
      'order': 9,
      'statements': [
        {'text': "Among the Government Bond Market, Call Money Market, Treasury Bill Market, and Stock Market, exactly two -- the Government Bond Market and the Stock Market -- are included in capital markets.", 'isCorrect': true},
        {'text': "The Call Money Market and the Treasury Bill Market are included in capital markets.", 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc("10").set({
      'questionId': "10",
      'order': 10,
      'statements': [
        {'text': "In finance, the term 'beta' refers to a numeric value that measures the fluctuations of a stock relative to changes in the overall stock market.", 'isCorrect': true},
        {'text': "In finance, the term 'beta' refers to the process of simultaneously buying and selling an asset on different platforms.", 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc("11").set({
      'questionId': "11",
      'order': 11,
      'statements': [
        {'text': "Inflation-Indexed Bonds (IIBs) provide investors protection from the uncertainty of inflation.", 'isCorrect': true},
        {'text': "The interest received as well as the capital gains on Inflation-Indexed Bonds (IIBs) are not taxable.", 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc("12").set({
      'questionId': "12",
      'order': 12,
      'statements': [
        {'text': "A foreign company transferring shares that derive their substantial value from assets located in India best reflects an 'Indirect Transfer' with reference to India.", 'isCorrect': true},
        {'text': "An Indian company investing in a foreign enterprise and paying taxes to the foreign country on the profits from its investment reflects an 'Indirect Transfer' with reference to India.", 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc("13").set({
      'questionId': "13",
      'order': 13,
      'statements': [
        {'text': "As there is an option to exchange the bond for equity, Convertible Bonds pay a lower rate of interest.", 'isCorrect': true},
        {'text': "Convertible Bonds pay a higher rate of interest than comparable bonds because of the option to convert into equity.", 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc("14").set({
      'questionId': "14",
      'order': 14,
      'statements': [
        {'text': "Actions of the United States Federal Reserve influence Indian Government Bond Yields.", 'isCorrect': true},
        {'text': "Actions of the Reserve Bank of India do not influence Indian Government Bond Yields.", 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc("15").set({
      'questionId': "15",
      'order': 15,
      'statements': [
        {'text': "Foreign Currency Convertible Bonds and Foreign Institutional Investment made under certain conditions can be included in Foreign Direct Investment.", 'isCorrect': true},
        {'text': "Non-Resident External (NRE) deposits can be included in Foreign Direct Investment.", 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc("16").set({
      'questionId': "16",
      'order': 16,
      'statements': [
        {'text': "The 'Negotiated Dealing System-Order Matching' (NDS-OM) is a government securities trading platform of the Reserve Bank of India.", 'isCorrect': true},
        {'text': "The 'Central Depository Services Ltd' (CDSL) is jointly promoted by the Reserve Bank of India and the Bombay Stock Exchange.", 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc("17").set({
      'questionId': "17",
      'order': 17,
      'statements': [
        {'text': "'Call Money' is a short-term finance used for interbank transactions in India.", 'isCorrect': true},
        {'text': "'Certificate of Deposit' is a long-term instrument issued by the Reserve Bank of India to a corporation.", 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc("18").set({
      'questionId': "18",
      'order': 18,
      'statements': [
        {'text': "A major characteristic of Foreign Direct Investment (FDI) in India is that it is largely a non-debt creating capital flow.", 'isCorrect': true},
        {'text': "A major characteristic of Foreign Direct Investment (FDI) in India is that it is investment made by foreign institutional investors in Government securities.", 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc("19").set({
      'questionId': "19",
      'order': 19,
      'statements': [
        {'text': "Participatory Notes are issued by registered foreign portfolio investors to overseas investors who want to be part of the Indian stock market without registering themselves directly.", 'isCorrect': true},
        {'text': "Certificates of Deposit are issued by registered foreign portfolio investors to overseas investors who want to be part of the Indian stock market without registering themselves directly.", 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc("20").set({
      'questionId': "20",
      'order': 20,
      'statements': [
        {'text': "Treasury bills are issued at a discount from their par value.", 'isCorrect': true},
        {'text': "The Reserve Bank of India manages and services Government of India Securities as well as State Government Securities.", 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc("21").set({
      'questionId': "21",
      'order': 21,
      'statements': [
        {'text': "One purpose of the Government's 'Sovereign Gold Bond Scheme' and 'Gold Monetization Scheme' is to bring the idle gold lying with Indian households into the economy.", 'isCorrect': true},
        {'text': "A purpose of the Government's 'Sovereign Gold Bond Scheme' and 'Gold Monetization Scheme' is to promote Foreign Direct Investment in the gold and jewellery sector.", 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc("22").set({
      'questionId': "22",
      'order': 22,
      'statements': [
        {'text': "The International Finance Corporation, which offers IFC Masala Bonds, is an arm of the World Bank.", 'isCorrect': true},
        {'text': "IFC Masala Bonds are foreign-currency-denominated bonds and are not a source of debt financing for the public and private sectors.", 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc("23").set({
      'questionId': "23",
      'order': 23,
      'statements': [
        {'text': "Venture capital refers to long-term start-up capital provided to new entrepreneurs.", 'isCorrect': true},
        {'text': "Venture capital refers to short-term capital provided to industries.", 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc("24").set({
      'questionId': "24",
      'order': 24,
      'statements': [
        {'text': "Subsidiaries of foreign companies in India, majority foreign equity holding in Indian companies, and companies exclusively financed by foreign companies would all be included in Foreign Direct Investment in India.", 'isCorrect': true},
        {'text': "Portfolio investment would be included in Foreign Direct Investment in India.", 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc("25").set({
      'questionId': "25",
      'order': 25,
      'statements': [
        {'text': "Foreign Institutional Investment (FII) helps in increasing capital availability in general, while Foreign Direct Investment (FDI) targets specific sectors.", 'isCorrect': true},
        {'text': "Foreign Institutional Investment (FII) helps bring better management skills and technology, while Foreign Direct Investment (FDI) only brings in capital.", 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc("26").set({
      'questionId': "26",
      'order': 26,
      'statements': [
        {'text': "In the parlance of financial investments, the term 'bear' denotes an investor who feels that the price of a particular security is going to fall.", 'isCorrect': true},
        {'text': "In the parlance of financial investments, the term 'bear' denotes an investor who expects the price of a particular share to rise.", 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc("27").set({
      'questionId': "27",
      'order': 27,
      'statements': [
        {'text': "A great deal of Foreign Direct Investment (FDI) comes to India from Mauritius because India has a double taxation avoidance agreement with Mauritius.", 'isCorrect': true},
        {'text': "A great deal of Foreign Direct Investment (FDI) comes to India from Mauritius because most citizens of Mauritius have an ethnic identity with India and feel secure investing there.", 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc("28").set({
      'questionId': "28",
      'order': 28,
      'statements': [
        {'text': "Participatory Notes (PNs) are associated with Foreign Institutional Investors.", 'isCorrect': true},
        {'text': "Participatory Notes (PNs) are associated with the Kyoto Protocol.", 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc("29").set({
      'questionId': "29",
      'order': 29,
      'statements': [
        {'text': "IndoNext, launched in January 2005, is an alternative trading platform promoted by the Bombay Stock Exchange and Regional Stock Exchanges.", 'isCorrect': true},
        {'text': "IndoNext, launched in January 2005, is a scheme to promote Indian tourism.", 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc("30").set({
      'questionId': "30",
      'order': 30,
      'statements': [
        {'text': "For calculating the Sensex, all the Sensex stocks are assigned proportional weightage.", 'isCorrect': true},
        {'text': "The Sensex is based on 50 of the most important stocks available on the Bombay Stock Exchange (BSE).", 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc("31").set({
      'questionId': "31",
      'order': 31,
      'statements': [
        {'text': "In the last decade referred to, the telecommunications sector attracted the highest Foreign Direct Investment inflows into India among the given options.", 'isCorrect': true},
        {'text': "In the last decade referred to, the food processing sector attracted the highest Foreign Direct Investment inflows into India among the given options.", 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc("32").set({
      'questionId': "32",
      'order': 32,
      'statements': [
        {'text': "Debenture holders of a company are its creditors.", 'isCorrect': true},
        {'text': "Debenture holders of a company are its shareholders.", 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc("33").set({
      'questionId': "33",
      'order': 33,
      'statements': [
        {'text': "Out of the 100% FDI allowed by India in the tea sector, the foreign firm would have to disinvest 33% of the equity in favour of an Indian partner within four years.", 'isCorrect': true},
        {'text': "Regarding FDI in print media in India, the single largest Indian shareholder was required to hold less than 26% of the equity.", 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc("34").set({
      'questionId': "34",
      'order': 34,
      'statements': [
        {'text': "Among the major stock exchanges of India, the Bombay Stock Exchange recorded the highest turnover during the year 2000-01.", 'isCorrect': true},
        {'text': "Among the major stock exchanges of India, the National Stock Exchange recorded the highest turnover during the year 2000-01.", 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc("35").set({
      'questionId': "35",
      'order': 35,
      'statements': [
        {'text': "The largest share of Foreign Direct Investment during 1997-2000 went to the engineering sector.", 'isCorrect': true},
        {'text': "The largest share of Foreign Direct Investment during 1997-2000 went to the electronics and electric equipment sector.", 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc("36").set({
      'questionId': "36",
      'order': 36,
      'statements': [
        {'text': "The 'Gilt-edged market' refers to the market for Government securities.", 'isCorrect': true},
        {'text': "The 'Gilt-edged market' refers to the bullion market.", 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc("37").set({
      'questionId': "37",
      'order': 37,
      'statements': [
        {'text': "Resurgent India Bonds were issued in US Dollar, Pound Sterling, and Deutsche Mark.", 'isCorrect': true},
        {'text': "Resurgent India Bonds were issued in US Dollar, Pound Sterling, and Japanese Yen.", 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc("38").set({
      'questionId': "38",
      'order': 38,
      'statements': [
        {'text': "A rise in the 'SENSEX' means an overall rise in the prices of selected BSE companies.", 'isCorrect': true},
        {'text': "A rise in the 'SENSEX' means a rise in the prices of all companies listed on the BSE.", 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc("39").set({
      'questionId': "39",
      'order': 39,
      'statements': [
        {'text': "To prevent the recurrence of scams in the Indian Capital Market, the Government of India has assigned regulatory powers to SEBI.", 'isCorrect': true},
        {'text': "To prevent the recurrence of scams in the Indian Capital Market, the Government of India has assigned regulatory powers to the RBI.", 'isCorrect': false},
      ],
    });
    await topicRef2.collection('questions').doc("40").set({
      'questionId': "40",
      'order': 40,
      'statements': [
        {'text': "The Unit Trust of India is the largest mutual fund organisation in India among the options given.", 'isCorrect': true},
        {'text': "The SBI Mutual Fund is the largest mutual fund organisation in India among the options given.", 'isCorrect': false},
      ],
    });

    final topicRef3 = subjectRef.collection('topics').doc("corporates_and_industries");
    await topicRef3.set({
      'name': "Corporates and Industries",
      'order': 3,
    }, SetOptions(merge: true));

    await topicRef3.collection('questions').doc("1").set({
      'questionId': "1",
      'order': 1,
      'statements': [
        {'text': "The Coir Board is not administered by the Ministry of Heavy Industries.", 'isCorrect': true},
        {'text': "The National Automotive Board comes under the Ministry of Commerce and Industry.", 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc("2").set({
      'questionId': "2",
      'order': 2,
      'statements': [
        {'text': "The Petroleum and Natural Gas Regulatory Board regulates the refining, storage and distribution of petroleum products, and the marketing and sale of petroleum products.", 'isCorrect': true},
        {'text': "The Petroleum and Natural Gas Regulatory Board regulates the production of crude oil and the production of natural gas.", 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc("3").set({
      'questionId': "3",
      'order': 3,
      'statements': [
        {'text': "In India, the Central Government has the power to notify minor minerals under the relevant law.", 'isCorrect': true},
        {'text': "In India, State Governments have no power for making rules for grant of concessions in respect of extraction of minor minerals even though such minerals are located in their territories.", 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc("4").set({
      'questionId': "4",
      'order': 4,
      'statements': [
        {'text': "India has joined the Minerals Security Partnership as a member.", 'isCorrect': true},
        {'text': "India is a resource-rich country in all the 30 critical minerals that it has identified.", 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc("5").set({
      'questionId': "5",
      'order': 5,
      'statements': [
        {'text': "CSR rules in India specify that expenditures that benefit the company directly or its employees will not be considered as CSR activities.", 'isCorrect': true},
        {'text': "CSR rules in India do not specify a minimum spending amount on CSR activities.", 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc("6").set({
      'questionId': "6",
      'order': 6,
      'statements': [
        {'text': "InvITs are recognized as borrowers under the 'Securitisation and Reconstruction of Financial Assets and Enforcement of Security Interest Act, 2002'.", 'isCorrect': true},
        {'text': "Interest income from deposits in Infrastructure Investment Trusts (InvITs) distributed to investors is exempted from tax, but the dividend is taxable.", 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc("7").set({
      'questionId': "7",
      'order': 7,
      'statements': [
        {'text': "Brand recognition, intellectual property, and a mailing list of clients are considered intangible investments.", 'isCorrect': true},
        {'text': "Inventory is considered an intangible investment.", 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc("8").set({
      'questionId': "8",
      'order': 8,
      'statements': [
        {'text': "Some coal-based thermal power plants in India are privately owned.", 'isCorrect': true},
        {'text': "None of the coal-based thermal power plants in India is privately owned.", 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc("9").set({
      'questionId': "9",
      'order': 9,
      'statements': [
        {'text': "Acquiring new technology is considered capital expenditure by an organisation or a company.", 'isCorrect': true},
        {'text': "Debt financing is considered capital expenditure, while equity financing is considered revenue expenditure.", 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc("10").set({
      'questionId': "10",
      'order': 10,
      'statements': [
        {'text': "In India, the Labour Bureau compiles information on industrial disputes, closures, retrenchments and lay-offs in factories employing workers.", 'isCorrect': true},
        {'text': "In India, the Central Statistics Office compiles information on industrial disputes, closures, retrenchments and lay-offs in factories employing workers.", 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc("11").set({
      'questionId': "11",
      'order': 11,
      'statements': [
        {'text': "The Coal Controller's Organization (CCO) monitors the progress of development of Captive Coal/Lignite blocks.", 'isCorrect': true},
        {'text': "The Coal Controller's Organization (CCO) ensures that coal mining companies deliver coal to end users within the prescribed time.", 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc("12").set({
      'questionId': "12",
      'order': 12,
      'statements': [
        {'text': "The Interest Coverage Ratio helps in understanding the present risk of a firm that a bank is going to give a loan to.", 'isCorrect': true},
        {'text': "The higher a borrowing firm's Interest Coverage Ratio, the worse is its ability to service its debt.", 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc("13").set({
      'questionId': "13",
      'order': 13,
      'statements': [
        {'text': "One of the tasks of the Petroleum and Natural Gas Regulatory Board (PNGRB) is to ensure competitive markets for gas.", 'isCorrect': true},
        {'text': "The Petroleum and Natural Gas Regulatory Board (PNGRB) is the first regulatory body set up by the Government of India.", 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc("14").set({
      'questionId': "14",
      'order': 14,
      'statements': [
        {'text': "The coal sector in India was nationalized by the Government of India under Indira Gandhi.", 'isCorrect': true},
        {'text': "Coal blocks in India are now allocated on a lottery basis.", 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc("15").set({
      'questionId': "15",
      'order': 15,
      'statements': [
        {'text': "Sand is a 'minor mineral' according to the prevailing law in India.", 'isCorrect': true},
        {'text': "State Governments have the power to grant mining leases of minor minerals, but the powers regarding the formation of rules related to the grant of minor minerals lie with the Central Government.", 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc("16").set({
      'questionId': "16",
      'order': 16,
      'statements': [
        {'text': "Solar power tariffs in India are not determined by the Solar Energy Corporation of India.", 'isCorrect': true},
        {'text': "India is the largest in the world in the manufacture of silicon wafers used in photovoltaic units.", 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc("17").set({
      'questionId': "17",
      'order': 17,
      'statements': [
        {'text': "Rajasthan has iron ore mines.", 'isCorrect': true},
        {'text': "In India, State Governments do not have the power to auction non-coal mines.", 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc("18").set({
      'questionId': "18",
      'order': 18,
      'statements': [
        {'text': "India's first 'National Investment and Manufacturing Zone' was proposed to be set up in Andhra Pradesh.", 'isCorrect': true},
        {'text': "India's first 'National Investment and Manufacturing Zone' was proposed to be set up in Gujarat.", 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc("19").set({
      'questionId': "19",
      'order': 19,
      'statements': [
        {'text': "A purpose of 'UDAY', a scheme of the Government, is to provide for the financial turnaround and revival of power distribution companies.", 'isCorrect': true},
        {'text': "A purpose of 'UDAY', a scheme of the Government, is to provide electricity to every household in the country by 2018.", 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc("20").set({
      'questionId': "20",
      'order': 20,
      'statements': [
        {'text': "The Rural Electrification Policy notified in August 2006 aims at providing access to electricity for all households by 2010.", 'isCorrect': true},
        {'text': "The Rural Electrification Policy notified in August 2006 aims at providing access to electricity for all households by 2012.", 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc("21").set({
      'questionId': "21",
      'order': 21,
      'statements': [
        {'text': "Banaras Brocades and Sarees, and Tirupathi Laddu have been accorded 'Geographical Indication' status.", 'isCorrect': true},
        {'text': "Rajasthani Daal-Bati-Churma has been accorded 'Geographical Indication' status.", 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc("22").set({
      'questionId': "22",
      'order': 22,
      'statements': [
        {'text': "In the Index of Eight Core Industries, Electricity generation is given the highest weight.", 'isCorrect': true},
        {'text': "In the Index of Eight Core Industries, Steel Production is given the highest weight.", 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc("23").set({
      'questionId': "23",
      'order': 23,
      'statements': [
        {'text': "Thermal power is the maximum consumer of water among industries in India.", 'isCorrect': true},
        {'text': "Textiles is the maximum consumer of water among industries in India.", 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc("24").set({
      'questionId': "24",
      'order': 24,
      'statements': [
        {'text': "Indian coal is characterized by high ash content and low sulphur content.", 'isCorrect': true},
        {'text': "Indian coal is characterized by a low ash fusion temperature.", 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc("25").set({
      'questionId': "25",
      'order': 25,
      'statements': [
        {'text': "Setting up of National Investment and Manufacturing Zones was a recent policy initiative of the Government of India to promote the growth of the manufacturing sector.", 'isCorrect': true},
        {'text': "Providing the benefit of 'single window clearance' was not a policy initiative of the Government of India to promote the growth of the manufacturing sector.", 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc("26").set({
      'questionId': "26",
      'order': 26,
      'statements': [
        {'text': "Cement, Fertilizers, Natural gas, and Refinery products are among India's Eight Core Industries.", 'isCorrect': true},
        {'text': "Textiles is among India's Eight Core Industries.", 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc("27").set({
      'questionId': "27",
      'order': 27,
      'statements': [
        {'text': "The government does not intend to use the revenue earned from the disinvestment of CPSEs mainly to pay back the external debt.", 'isCorrect': true},
        {'text': "The government intends to use the revenue earned from the disinvestment of central public sector enterprises (CPSEs) mainly to pay back the external debt.", 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc("28").set({
      'questionId': "28",
      'order': 28,
      'statements': [
        {'text': "Internal governance of a Limited Liability Partnership firm may be decided by mutual agreement among the partners.", 'isCorrect': true},
        {'text': "In a Limited Liability Partnership firm, the number of partners should be less than 20.", 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc("29").set({
      'questionId': "29",
      'order': 29,
      'statements': [
        {'text': "Development of infrastructure facilities is an objective of the SEZ Act, 2005.", 'isCorrect': true},
        {'text': "Promotion of exports of services only is an objective of the SEZ Act, 2005.", 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc("30").set({
      'questionId': "30",
      'order': 30,
      'statements': [
        {'text': "MMTC Limited is India's largest international trading organization.", 'isCorrect': true},
        {'text': "Neelachal Ispat Nigam Limited was not set up by MMTC jointly with the Government of Orissa.", 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc("31").set({
      'questionId': "31",
      'order': 31,
      'statements': [
        {'text': "The Central Statistical Organization brings out the publication called 'Energy Statistics' from time to time.", 'isCorrect': true},
        {'text': "The Central Power Research Institute brings out the publication called 'Energy Statistics' from time to time.", 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc("32").set({
      'questionId': "32",
      'order': 32,
      'statements': [
        {'text': "The B.K. Chaturvedi Committee dealt with price reform in the oil sector.", 'isCorrect': true},
        {'text': "The B.K. Chaturvedi Committee dealt with the review of Centre-State relations.", 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc("33").set({
      'questionId': "33",
      'order': 33,
      'statements': [
        {'text': "The Deepak Parekh Committee was constituted to suggest measures for financing the development of infrastructure.", 'isCorrect': true},
        {'text': "The Deepak Parekh Committee was constituted to suggest measures to reduce the fiscal deficit in the Union Budget.", 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc("34").set({
      'questionId': "34",
      'order': 34,
      'statements': [
        {'text': "Electricity generation in India, in rounded figures, was about 660 billion kWh.", 'isCorrect': true},
        {'text': "Installed electricity generation capacity in India, in rounded figures, was about 100000 MW.", 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc("35").set({
      'questionId': "35",
      'order': 35,
      'statements': [
        {'text': "The Rural Electrification Policy notified in August 2006 aims at providing access to electricity for all households by 2012.", 'isCorrect': true},
        {'text': "The Rural Electrification Policy notified in August 2006 aims at providing access to electricity for all households by 2010.", 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc("36").set({
      'questionId': "36",
      'order': 36,
      'statements': [
        {'text': "The Vizag Steel Plant (RINL) has been declared a Mini Ratna.", 'isCorrect': true},
        {'text': "The merger of IISCO with SAIL has not been completed.", 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc("37").set({
      'questionId': "37",
      'order': 37,
      'statements': [
        {'text': "One of the components of the Accelerated Power Development and Reforms Programme (APDRP) is upgradation of the sub-transmission and distribution system for electricity in India.", 'isCorrect': true},
        {'text': "The Appellate Tribunal for Electricity has been established by each State Government in India.", 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc("38").set({
      'questionId': "38",
      'order': 38,
      'statements': [
        {'text': "National Thermal Power Corporation has diversified into the hydropower sector.", 'isCorrect': true},
        {'text': "Power Grid Corporation of India has diversified into the telecom sector.", 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc("39").set({
      'questionId': "39",
      'order': 39,
      'statements': [
        {'text': "The Oil Pool Account of the Government of India was dismantled with effect from 1.4.2002.", 'isCorrect': true},
        {'text': "An expert committee headed by Dr R.A. Mashelkar recommended that Bharat Stage-II Emission Norms should be applied throughout the country by April 1, 2004.", 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc("40").set({
      'questionId': "40",
      'order': 40,
      'statements': [
        {'text': "In 2002-03, in decreasing order of value, minerals produced in India were Fuel minerals, Metallic minerals, and Non-metallic minerals.", 'isCorrect': true},
        {'text': "In 2002-03, in decreasing order of value, minerals produced in India were Metallic minerals, Fuel minerals, and Non-metallic minerals.", 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc("41").set({
      'questionId': "41",
      'order': 41,
      'statements': [
        {'text': "During 2000-01, the steel industry recorded the highest growth rate in India among the given options.", 'isCorrect': true},
        {'text': "During 2000-01, the cement industry recorded the highest growth rate in India among the given options.", 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc("42").set({
      'questionId': "42",
      'order': 42,
      'statements': [
        {'text': "India is the second largest producer of nitrogenous fertilisers in the world.", 'isCorrect': true},
        {'text': "India is the ninth largest steel producing country in the world.", 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc("43").set({
      'questionId': "43",
      'order': 43,
      'statements': [
        {'text': "The Abid Hussain Committee recommended the abolition of reservation of items for the small-scale sector in industry.", 'isCorrect': true},
        {'text': "The Narasimham Committee recommended the abolition of reservation of items for the small-scale sector in industry.", 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc("44").set({
      'questionId': "44",
      'order': 44,
      'statements': [
        {'text': "100 per cent Foreign Direct Investment in the power sector in India is allowed without an upper limit.", 'isCorrect': true},
        {'text': "The Union Ministry of Power has signed Memoranda of Understanding with 14 states.", 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc("45").set({
      'questionId': "45",
      'order': 45,
      'statements': [
        {'text': "The Indian Ordnance Factory is the largest departmentally run industrial undertaking in the country.", 'isCorrect': true},
        {'text': "Indian Oil Corporation operates all the oil refineries in India.", 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc("46").set({
      'questionId': "46",
      'order': 46,
      'statements': [
        {'text': "Minerals and Metals Trading Corporation of India Limited is the largest non-oil importer of the country.", 'isCorrect': true},
        {'text': "Project and Equipment Corporation of India Limited is under the Ministry of Industry.", 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc("47").set({
      'questionId': "47",
      'order': 47,
      'statements': [
        {'text': "The installed capacity of power generation in India is around 95000 MW.", 'isCorrect': true},
        {'text': "Thermal plants at present account for nearly 80% of total power generation in India.", 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc("48").set({
      'questionId': "48",
      'order': 48,
      'statements': [
        {'text': "There was an increase in industrial production in India during 1999-2000.", 'isCorrect': true},
        {'text': "The period 1999-2000 witnessed an unstable exchange rate and worsening business sentiments in India.", 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc("49").set({
      'questionId': "49",
      'order': 49,
      'statements': [
        {'text': "Capital investments, business turnover, and power consumption determine the nature and size of an industry.", 'isCorrect': true},
        {'text': "Labour force is one of the factors that determines the nature and size of an industry.", 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc("50").set({
      'questionId': "50",
      'order': 50,
      'statements': [
        {'text': "M/s Satia Paper Mills, Punjab, uses black liquor as its feed material for power generation.", 'isCorrect': true},
        {'text': "M/s Satia Paper Mills, Punjab, uses slaughterhouse waste as its feed material for power generation.", 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc("51").set({
      'questionId': "51",
      'order': 51,
      'statements': [
        {'text': "Economic liberalisation in India started with substantial changes in industrial licensing policy.", 'isCorrect': true},
        {'text': "Economic liberalisation in India started with the convertibility of the Indian rupee.", 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc("52").set({
      'questionId': "52",
      'order': 52,
      'statements': [
        {'text': "From the balance sheet of a company, it is possible to determine the size and composition of the assets and liabilities of the company.", 'isCorrect': true},
        {'text': "From the balance sheet of a company, it is possible to determine the market share, debts, and assets of the company.", 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc("53").set({
      'questionId': "53",
      'order': 53,
      'statements': [
        {'text': "Industrial development in India is, to an extent, constrained by a lack of technology, skills and infrastructure.", 'isCorrect': true},
        {'text': "Industrial development in India is, to an extent, constrained by a lack of savings to invest.", 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc("54").set({
      'questionId': "54",
      'order': 54,
      'statements': [
        {'text': "With markets assuming a central place in India's economy during the nineties, the role of central planning in many sectors was rendered redundant.", 'isCorrect': true},
        {'text': "The nation's priorities shifted away from industrial development to rural development during the nineties, which explains the reduced importance of industrial planning.", 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc("55").set({
      'questionId': "55",
      'order': 55,
      'statements': [
        {'text': "Small-scale industries provide higher employment on a per unit capital deployment basis.", 'isCorrect': true},
        {'text': "Small-scale industries have performed better in the export of manufactured products than large-scale industries.", 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc("56").set({
      'questionId': "56",
      'order': 56,
      'statements': [
        {'text': "The infrastructure required for attracting tourists in India is inadequate, which is one reason India's tourism industry is small relative to its potential.", 'isCorrect': true},
        {'text': "For most of the months, India is too hot for western tourists to feel comfortable, which is why India's tourism industry is small relative to its potential.", 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc("57").set({
      'questionId': "57",
      'order': 57,
      'statements': [
        {'text': "'White goods', which the Government of India decided to delicense, include items purchased for conspicuous consumption.", 'isCorrect': true},
        {'text': "'White goods', which the Government of India decided to delicense, include milk and milk products.", 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc("58").set({
      'questionId': "58",
      'order': 58,
      'statements': [
        {'text': "The number of industries for which industrial licensing is required in India has been reduced to 15.", 'isCorrect': true},
        {'text': "The number of industries for which industrial licensing is required in India has been reduced to 6.", 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc("59").set({
      'questionId': "59",
      'order': 59,
      'statements': [
        {'text': "Yamunanagar, Guwahati, and Ballarpur are known for the paper manufacturing industry.", 'isCorrect': true},
        {'text': "Shahabad is known for the paper manufacturing industry.", 'isCorrect': false},
      ],
    });
    await topicRef3.collection('questions').doc("60").set({
      'questionId': "60",
      'order': 60,
      'statements': [
        {'text': "The contribution of India's small-scale sector to the gross turnover in the manufacturing sector since 1992 has been of the order of 34%.", 'isCorrect': true},
        {'text': "The contribution of India's small-scale sector to the gross turnover in the manufacturing sector since 1992 has been of the order of 40%.", 'isCorrect': false},
      ],
    });

    print('Economics seeding completed.');
  }
}
