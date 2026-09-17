
import 'package:cloud_firestore/cloud_firestore.dart';

class EnvironmentFirestoreSeeder {
  EnvironmentFirestoreSeeder._();

  static final FirebaseFirestore _firestore =
      FirebaseFirestore.instance;



  static Future<void> seedEnvironment3() async {
    final subjectRef =
        _firestore.collection('subjects').doc('environment');

    await subjectRef.set({
      'name': 'Environment and Ecology',
      'order': 5,
      'hasSections': false,
    });

    // ----------------------------------------------------------
    // Environment Ecology
    // ----------------------------------------------------------

    final topicRef7 = subjectRef
        .collection('topics')
        .doc("environment_ecology");

    await topicRef7.set({
      'name': "Environment Ecology",
      'order': 7,
    });

    final questionRef7_1 = topicRef7
        .collection('questions')
        .doc('1');

    await questionRef7_1.set({
      'questionId': '1',
      'order': 1,
      'statements': [
        {
          'text': "Marine phytoplankton and photosynthetic bacteria produce about 50% of the world's oxygen.",
          'isCorrect': true,
        },
        {
          'text': "Rain forests produce more oxygen than that produced by oceans.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef7_2 = topicRef7
        .collection('questions')
        .doc('2');

    await questionRef7_2.set({
      'questionId': '2',
      'order': 2,
      'statements': [
        {
          'text': "Parasitoid species are found among all five of carabid beetles, centipedes, flies, termites and wasps.",
          'isCorrect': true,
        },
        {
          'text': "Parasitoid species are found in only two of the following: carabid beetles, centipedes, flies, termites and wasps.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef7_3 = topicRef7
        .collection('questions')
        .doc('3');

    await questionRef7_3.set({
      'questionId': '3',
      'order': 3,
      'statements': [
        {
          'text': "Groundnut, horse-gram and soybean all belong to the pea family.",
          'isCorrect': true,
        },
        {
          'text': "Only two of groundnut, horse-gram and soybean belong to the pea family.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef7_4 = topicRef7
        .collection('questions')
        .doc('4');

    await questionRef7_4.set({
      'questionId': '4',
      'order': 4,
      'statements': [
        {
          'text': "Cicada, froghopper and pond skater are all insects.",
          'isCorrect': true,
        },
        {
          'text': "Cicada, froghopper and pond skater are reptiles.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef7_5 = topicRef7
        .collection('questions')
        .doc('5');

    await questionRef7_5.set({
      'questionId': '5',
      'order': 5,
      'statements': [
        {
          'text': "None of the pairs Brazil–Indri, Indonesia–Elk, and Madagascar–Bonobo is correctly matched.",
          'isCorrect': true,
        },
        {
          'text': "The pair Madagascar–Bonobo is correctly matched, as the Bonobo is naturally found in Madagascar.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef7_6 = topicRef7
        .collection('questions')
        .doc('6');

    await questionRef7_6.set({
      'questionId': '6',
      'order': 6,
      'statements': [
        {
          'text': "Lions do not have a particular breeding season, and unlike most other big cats, cheetahs do not roar.",
          'isCorrect': true,
        },
        {
          'text': "Unlike male lions, male leopards do not proclaim their territory by scent marking.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef7_7 = topicRef7
        .collection('questions')
        .doc('7');

    await questionRef7_7.set({
      'questionId': '7',
      'order': 7,
      'statements': [
        {
          'text': "The fig has a unique co-evolved relationship with the fig wasp, the only insect that can pollinate it.",
          'isCorrect': true,
        },
        {
          'text': "The sandalwood tree has a unique co-evolved relationship with an insect that is its sole pollinator.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef7_8 = topicRef7
        .collection('questions')
        .doc('8');

    await questionRef7_8.set({
      'questionId': '8',
      'order': 8,
      'statements': [
        {
          'text': "Butterflies, fish and frogs all have poisonous species among them.",
          'isCorrect': true,
        },
        {
          'text': "Only one of butterflies, fish and frogs has poisonous species among them.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef7_9 = topicRef7
        .collection('questions')
        .doc('9');

    await questionRef7_9.set({
      'questionId': '9',
      'order': 9,
      'statements': [
        {
          'text': "Honeybees perform a waggle dance to indicate to other bees the direction and distance of a food source.",
          'isCorrect': true,
        },
        {
          'text': "Wasps perform a waggle dance to indicate to other wasps the direction and distance of a food source.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef7_10 = topicRef7
        .collection('questions')
        .doc('10');

    await questionRef7_10.set({
      'questionId': '10',
      'order': 10,
      'statements': [
        {
          'text': "The orangutan is known to make a tool with a stick to scrape insects from a hole in a tree or log of wood.",
          'isCorrect': true,
        },
        {
          'text': "The sloth bear is known to make a tool with a stick to scrape insects from a hole in a tree or log of wood.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef7_11 = topicRef7
        .collection('questions')
        .doc('11');

    await questionRef7_11.set({
      'questionId': '11',
      'order': 11,
      'statements': [
        {
          'text': "Some mushrooms have medicinal, psycho-active, insecticidal and bioluminescent properties.",
          'isCorrect': true,
        },
        {
          'text': "Only two of the listed properties are found among mushrooms: medicinal, psycho-active, insecticidal and bioluminescent.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef7_12 = topicRef7
        .collection('questions')
        .doc('12');

    await questionRef7_12.set({
      'questionId': '12',
      'order': 12,
      'statements': [
        {
          'text': "Aquatic plants in wetlands absorb heavy metals and excess nutrients, functioning like kidneys that filter out impurities.",
          'isCorrect': true,
        },
        {
          'text': "Wetlands function as the Earth's kidneys mainly because algae in them form the nutrient base for fish, molluscs, birds and mammals.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef7_13 = topicRef7
        .collection('questions')
        .doc('13');

    await questionRef7_13.set({
      'questionId': '13',
      'order': 13,
      'statements': [
        {
          'text': "Cyanobacteria and diatoms are primary producers in the food chains of oceans.",
          'isCorrect': true,
        },
        {
          'text': "Copepods and foraminifera are primary producers in the food chains of oceans.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef7_14 = topicRef7
        .collection('questions')
        .doc('14');

    await questionRef7_14.set({
      'questionId': '14',
      'order': 14,
      'statements': [
        {
          'text': "In the phosphorus cycle, the weathering of rocks is the main source of nutrient release into the cycle.",
          'isCorrect': true,
        },
        {
          'text': "In the nitrogen cycle, the weathering of rocks is the main source of nutrient release into the cycle.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef7_15 = topicRef7
        .collection('questions')
        .doc('15');

    await questionRef7_15.set({
      'questionId': '15',
      'order': 15,
      'statements': [
        {
          'text': "Earthworms, millipedes and woodlice are detritivores.",
          'isCorrect': true,
        },
        {
          'text': "Jellyfish and seahorses are detritivores.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef7_16 = topicRef7
        .collection('questions')
        .doc('16');

    await questionRef7_16.set({
      'questionId': '16',
      'order': 16,
      'statements': [
        {
          'text': "Cnidarians, fungi and protozoa can all establish symbiotic relationships with other organisms.",
          'isCorrect': true,
        },
        {
          'text': "Only cnidarians and fungi, and not protozoa, can establish symbiotic relationships with other organisms.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef7_17 = topicRef7
        .collection('questions')
        .doc('17');

    await questionRef7_17.set({
      'questionId': '17',
      'order': 17,
      'statements': [
        {
          'text': "Some species of turtles, fish and marine mammals are herbivores, and some species of snakes are viviparous.",
          'isCorrect': true,
        },
        {
          'text': "Turtles have no herbivorous species, unlike some fish, marine mammals and snakes.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef7_18 = topicRef7
        .collection('questions')
        .doc('18');

    await questionRef7_18.set({
      'questionId': '18',
      'order': 18,
      'statements': [
        {
          'text': "Hard and waxy leaves, tiny leaves, and thorns instead of leaves are all leaf modifications that occur in desert areas to inhibit water loss.",
          'isCorrect': true,
        },
        {
          'text': "Only thorns instead of leaves occur in desert areas to inhibit water loss; hard, waxy and tiny leaves are not such adaptations.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef7_19 = topicRef7
        .collection('questions')
        .doc('19');

    await questionRef7_19.set({
      'questionId': '19',
      'order': 19,
      'statements': [
        {
          'text': "A fall in butterfly populations could adversely affect pollination of some plants and could lead to a fall in the population of some wasps, spiders and birds.",
          'isCorrect': true,
        },
        {
          'text': "A fall in butterfly populations could cause a drastic increase in fungal infections of some cultivated plants.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef7_20 = topicRef7
        .collection('questions')
        .doc('20');

    await questionRef7_20.set({
      'questionId': '20',
      'order': 20,
      'statements': [
        {
          'text': "An ecosystem is best described as a community of organisms together with the environment in which they live.",
          'isCorrect': true,
        },
        {
          'text': "An ecosystem is best described merely as a community of organisms interacting with one another, without reference to their environment.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef7_21 = topicRef7
        .collection('questions')
        .doc('21');

    await questionRef7_21.set({
      'questionId': '21',
      'order': 21,
      'statements': [
        {
          'text': "Lichens are a symbiotic association of algae and fungi.",
          'isCorrect': true,
        },
        {
          'text': "Lichens are a symbiotic association of bacteria and fungi.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef7_22 = topicRef7
        .collection('questions')
        .doc('22');

    await questionRef7_22.set({
      'questionId': '22',
      'order': 22,
      'statements': [
        {
          'text': "The correct sequence of this food chain is Diatoms–Crustaceans–Herrings.",
          'isCorrect': true,
        },
        {
          'text': "The correct sequence of this food chain is Crustaceans–Diatoms–Herrings.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef7_23 = topicRef7
        .collection('questions')
        .doc('23');

    await questionRef7_23.set({
      'questionId': '23',
      'order': 23,
      'statements': [
        {
          'text': "Volcanic action, respiration, and decay of organic matter add carbon dioxide to the carbon cycle on Earth.",
          'isCorrect': true,
        },
        {
          'text': "Photosynthesis, along with respiration and decay of organic matter, adds carbon dioxide to the carbon cycle on Earth.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef7_24 = topicRef7
        .collection('questions')
        .doc('24');

    await questionRef7_24.set({
      'questionId': '24',
      'order': 24,
      'statements': [
        {
          'text': "Hard and waxy leaves, tiny or no leaves, and thorns instead of leaves are all leaf modifications that occur in desert areas to inhibit water loss.",
          'isCorrect': true,
        },
        {
          'text': "Only hard and waxy leaves occur in desert areas to inhibit water loss; tiny leaves and thorns are not such modifications.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef7_25 = topicRef7
        .collection('questions')
        .doc('25');

    await questionRef7_25.set({
      'questionId': '25',
      'order': 25,
      'statements': [
        {
          'text': "A food chain illustrates the order in which a chain of organisms feed upon each other.",
          'isCorrect': true,
        },
        {
          'text': "Food chains are found only within the population of a single species.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef7_26 = topicRef7
        .collection('questions')
        .doc('26');

    await questionRef7_26.set({
      'questionId': '26',
      'order': 26,
      'statements': [
        {
          'text': "Excretion of urea by animals and the death of vegetation add nitrogen to the soil.",
          'isCorrect': true,
        },
        {
          'text': "Burning of coal by man, along with the death of vegetation, adds nitrogen to the soil.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef7_27 = topicRef7
        .collection('questions')
        .doc('27');

    await questionRef7_27.set({
      'questionId': '27',
      'order': 27,
      'statements': [
        {
          'text': "The term 'ecological niche' describes both the physical space occupied by an organism and its functional role in its community.",
          'isCorrect': true,
        },
        {
          'text': "The term 'habitat' describes both the physical space occupied by an organism and its functional role in its community.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef7_28 = topicRef7
        .collection('questions')
        .doc('28');

    await questionRef7_28.set({
      'questionId': '28',
      'order': 28,
      'statements': [
        {
          'text': "In grasslands, trees do not replace grasses in ecological succession mainly because of water limits and fire.",
          'isCorrect': true,
        },
        {
          'text': "In grasslands, trees do not replace grasses in ecological succession mainly because of insects and fungi.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef7_29 = topicRef7
        .collection('questions')
        .doc('29');

    await questionRef7_29.set({
      'questionId': '29',
      'order': 29,
      'statements': [
        {
          'text': "In order of decreasing productivity, the correct sequence of ecosystems is mangroves, grasslands, lakes, and oceans.",
          'isCorrect': true,
        },
        {
          'text': "In order of decreasing productivity, the correct sequence of ecosystems is oceans, lakes, grasslands, and mangroves.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef7_30 = topicRef7
        .collection('questions')
        .doc('30');

    await questionRef7_30.set({
      'questionId': '30',
      'order': 30,
      'statements': [
        {
          'text': "Fungi and bacteria are known as decomposer organisms in food chains.",
          'isCorrect': true,
        },
        {
          'text': "Viruses, along with bacteria, are known as decomposer organisms in food chains.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef7_31 = topicRef7
        .collection('questions')
        .doc('31');

    await questionRef7_31.set({
      'questionId': '31',
      'order': 31,
      'statements': [
        {
          'text': "Bats, bees and birds are all pollinating agents.",
          'isCorrect': true,
        },
        {
          'text': "Only bees, and not bats or birds, act as pollinating agents.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef7_32 = topicRef7
        .collection('questions')
        .doc('32');

    await questionRef7_32.set({
      'questionId': '32',
      'order': 32,
      'statements': [
        {
          'text': "Nutrient cycling and crop pollination are an example of a supporting service in the Millennium Ecosystem Assessment framework.",
          'isCorrect': true,
        },
        {
          'text': "Production of food and water is an example of a supporting service in the Millennium Ecosystem Assessment framework.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef7_33 = topicRef7
        .collection('questions')
        .doc('33');

    await questionRef7_33.set({
      'questionId': '33',
      'order': 33,
      'statements': [
        {
          'text': "Respiration, decay of organic matter and volcanic action add carbon dioxide to the carbon cycle on Earth.",
          'isCorrect': true,
        },
        {
          'text': "Photosynthesis, along with respiration and volcanic action, adds carbon dioxide to the carbon cycle on Earth.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef7_34 = topicRef7
        .collection('questions')
        .doc('34');

    await questionRef7_34.set({
      'questionId': '34',
      'order': 34,
      'statements': [
        {
          'text': "Marine upwelling zones increase marine productivity mainly by bringing nutrients to the surface.",
          'isCorrect': true,
        },
        {
          'text': "Marine upwelling zones increase marine productivity mainly by bringing bottom-dwelling organisms to the surface.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef7_35 = topicRef7
        .collection('questions')
        .doc('35');

    await questionRef7_35.set({
      'questionId': '35',
      'order': 35,
      'statements': [
        {
          'text': "Tropical rain forests do not regenerate quickly after removal mainly because their soil is deficient in nutrients.",
          'isCorrect': true,
        },
        {
          'text': "Tropical rain forests do not regenerate quickly after removal mainly because the tree species there are slow-growing.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef7_36 = topicRef7
        .collection('questions')
        .doc('36');

    await questionRef7_36.set({
      'questionId': '36',
      'order': 36,
      'statements': [
        {
          'text': "In this food chain, the highest concentration of the pesticide would accumulate in the hawk, the top predator.",
          'isCorrect': true,
        },
        {
          'text': "In this food chain, the highest concentration of the pesticide would accumulate in the rat, an early consumer.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef7_37 = topicRef7
        .collection('questions')
        .doc('37');

    await questionRef7_37.set({
      'questionId': '37',
      'order': 37,
      'statements': [
        {
          'text': "Some plants are insectivorous because they are adapted to nitrogen-deficient soils and depend on insects for nitrogenous nutrition.",
          'isCorrect': true,
        },
        {
          'text': "Some plants are insectivorous because their growth in shady, dark places does not allow sufficient photosynthesis.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef7_38 = topicRef7
        .collection('questions')
        .doc('38');

    await questionRef7_38.set({
      'questionId': '38',
      'order': 38,
      'statements': [
        {
          'text': "Species that determine the ability of many other species to persist in a community are called keystone species.",
          'isCorrect': true,
        },
        {
          'text': "Species that determine the ability of many other species to persist in a community are called threatened species.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef7_39 = topicRef7
        .collection('questions')
        .doc('39');

    await questionRef7_39.set({
      'questionId': '39',
      'order': 39,
      'statements': [
        {
          'text': "Distinct blooms of excessive growth of pigmented dinoflagellates in estuaries are called red tides.",
          'isCorrect': true,
        },
        {
          'text': "Distinct blooms of excessive growth of pigmented dinoflagellates in estuaries are called black tides.",
          'isCorrect': false,
        },
      ],
    });

    // ----------------------------------------------------------
    // Biodiversity in India
    // ----------------------------------------------------------

    final topicRef8 = subjectRef
        .collection('topics')
        .doc("biodiversity_in_india");

    await topicRef8.set({
      'name': "Biodiversity in India",
      'order': 8,
    });

    final questionRef8_1 = topicRef8
        .collection('questions')
        .doc('1');

    await questionRef8_1.set({
      'questionId': '1',
      'order': 1,
      'statements': [
        {
          'text': "The Gooty tarantula's natural habitat in India is limited to some forest areas, and in the wild it is an arboreal species.",
          'isCorrect': true,
        },
        {
          'text': "The Gooty tarantula is an omnivorous crustacean found in India.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_2 = topicRef8
        .collection('questions')
        .doc('2');

    await questionRef8_2.set({
      'questionId': '2',
      'order': 2,
      'statements': [
        {
          'text': "Papaya, pineapple and guava were all introduced into India by the Portuguese in the sixteenth and seventeenth centuries.",
          'isCorrect': true,
        },
        {
          'text': "Only one of papaya, pineapple and guava was introduced into India by the Portuguese in the sixteenth and seventeenth centuries.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_3 = topicRef8
        .collection('questions')
        .doc('3');

    await questionRef8_3.set({
      'questionId': '3',
      'order': 3,
      'statements': [
        {
          'text': "Three of the five plant–description pairs given are correctly matched.",
          'isCorrect': true,
        },
        {
          'text': "All five of the plant–description pairs given are correctly matched.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_4 = topicRef8
        .collection('questions')
        .doc('4');

    await questionRef8_4.set({
      'questionId': '4',
      'order': 4,
      'statements': [
        {
          'text': "The Indian Flying Fox is placed under the 'vermin' category in the Wild Life (Protection) Act, 1972.",
          'isCorrect': true,
        },
        {
          'text': "The Indian Flying Fox feeds on the blood of other animals.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_5 = topicRef8
        .collection('questions')
        .doc('5');

    await questionRef8_5.set({
      'questionId': '5',
      'order': 5,
      'statements': [
        {
          'text': "Of cashew, papaya and red sanders, only red sanders is actually native to India.",
          'isCorrect': true,
        },
        {
          'text': "Of cashew, papaya and red sanders, only papaya is actually native to India.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_6 = topicRef8
        .collection('questions')
        .doc('6');

    await questionRef8_6.set({
      'questionId': '6',
      'order': 6,
      'statements': [
        {
          'text': "Of jackfruit, mahua and teak, only mahua and teak are deciduous trees.",
          'isCorrect': true,
        },
        {
          'text': "Of jackfruit, mahua and teak, all three are deciduous trees.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_7 = topicRef8
        .collection('questions')
        .doc('7');

    await questionRef8_7.set({
      'questionId': '7',
      'order': 7,
      'statements': [
        {
          'text': "Marsupials are not naturally found in India.",
          'isCorrect': true,
        },
        {
          'text': "Marsupials can thrive only in montane grasslands with no predators.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_8 = topicRef8
        .collection('questions')
        .doc('8');

    await questionRef8_8.set({
      'questionId': '8',
      'order': 8,
      'statements': [
        {
          'text': "Of the Lion-tailed Macaque, Malabar Civet and Sambar Deer, only the Malabar Civet is generally nocturnal or most active after sunset.",
          'isCorrect': true,
        },
        {
          'text': "Of the Lion-tailed Macaque, Malabar Civet and Sambar Deer, all three are generally nocturnal or most active after sunset.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_9 = topicRef8
        .collection('questions')
        .doc('9');

    await questionRef8_9.set({
      'questionId': '9',
      'order': 9,
      'statements': [
        {
          'text': "Indian squirrels store food materials like nuts and seeds in the ground, and they are omnivorous.",
          'isCorrect': true,
        },
        {
          'text': "Indian squirrels build nests by making burrows in the ground.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_10 = topicRef8
        .collection('questions')
        .doc('10');

    await questionRef8_10.set({
      'questionId': '10',
      'order': 10,
      'statements': [
        {
          'text': "Certain species of ants are well known as cultivators of fungi.",
          'isCorrect': true,
        },
        {
          'text': "Certain species of spiders are well known as cultivators of fungi.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_11 = topicRef8
        .collection('questions')
        .doc('11');

    await questionRef8_11.set({
      'questionId': '11',
      'order': 11,
      'statements': [
        {
          'text': "Gucchi is a fungus that grows in some Himalayan forest areas.",
          'isCorrect': true,
        },
        {
          'text': "Gucchi is commercially cultivated in the Himalayan foothills of north-eastern India.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_12 = topicRef8
        .collection('questions')
        .doc('12');

    await questionRef8_12.set({
      'questionId': '12',
      'order': 12,
      'statements': [
        {
          'text': "The Golden Mahseer is not a bird; it is a fish.",
          'isCorrect': true,
        },
        {
          'text': "The Indian Nightjar is not a bird.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_13 = topicRef8
        .collection('questions')
        .doc('13');

    await questionRef8_13.set({
      'questionId': '13',
      'order': 13,
      'statements': [
        {
          'text': "Biorock technology is talked about in the context of restoring damaged coral reefs.",
          'isCorrect': true,
        },
        {
          'text': "Biorock technology is talked about in the context of developing building materials from plant residues.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_14 = topicRef8
        .collection('questions')
        .doc('14');

    await questionRef8_14.set({
      'questionId': '14',
      'order': 14,
      'statements': [
        {
          'text': "Hedgehogs and pangolins roll up to protect their vulnerable parts from predators.",
          'isCorrect': true,
        },
        {
          'text': "Marmots, along with hedgehogs, roll up to protect their vulnerable parts from predators.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_15 = topicRef8
        .collection('questions')
        .doc('15');

    await questionRef8_15.set({
      'questionId': '15',
      'order': 15,
      'statements': [
        {
          'text': "Lemon grass is used in preparing a natural mosquito repellent.",
          'isCorrect': true,
        },
        {
          'text': "Elephant grass is used in preparing a natural mosquito repellent.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_16 = topicRef8
        .collection('questions')
        .doc('16');

    await questionRef8_16.set({
      'questionId': '16',
      'order': 16,
      'statements': [
        {
          'text': "The oyster is a filter feeder.",
          'isCorrect': true,
        },
        {
          'text': "The catfish is a filter feeder.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_17 = topicRef8
        .collection('questions')
        .doc('17');

    await questionRef8_17.set({
      'questionId': '17',
      'order': 17,
      'statements': [
        {
          'text': "The leader of an Indian elephant group is a female, and the maximum gestation period can be 22 months.",
          'isCorrect': true,
        },
        {
          'text': "Among the States in India, the highest elephant population is found in Kerala.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_18 = topicRef8
        .collection('questions')
        .doc('18');

    await questionRef8_18.set({
      'questionId': '18',
      'order': 18,
      'statements': [
        {
          'text': "Ceylon frogmouth, coppersmith barbet, gray-chinned minivet and white-throated redstart are all birds.",
          'isCorrect': true,
        },
        {
          'text': "Ceylon frogmouth, coppersmith barbet, gray-chinned minivet and white-throated redstart are all reptiles.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_19 = topicRef8
        .collection('questions')
        .doc('19');

    await questionRef8_19.set({
      'questionId': '19',
      'order': 19,
      'statements': [
        {
          'text': "Askot Wildlife Sanctuary and Gangotri National Park are among the most likely places to find the musk deer in its natural habitat.",
          'isCorrect': true,
        },
        {
          'text': "Kishanpur Wildlife Sanctuary and Manas National Park are among the most likely places to find the musk deer in its natural habitat.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_20 = topicRef8
        .collection('questions')
        .doc('20');

    await questionRef8_20.set({
      'questionId': '20',
      'order': 20,
      'statements': [
        {
          'text': "Tobacco, cocoa and rubber are a group of plants domesticated in the New World and introduced into the Old World.",
          'isCorrect': true,
        },
        {
          'text': "Cotton, coffee and sugarcane are a group of plants domesticated in the New World and introduced into the Old World.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_21 = topicRef8
        .collection('questions')
        .doc('21');

    await questionRef8_21.set({
      'questionId': '21',
      'order': 21,
      'statements': [
        {
          'text': "The Asiatic lion is naturally found in India only.",
          'isCorrect': true,
        },
        {
          'text': "The double-humped camel is naturally found in India only.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_22 = topicRef8
        .collection('questions')
        .doc('22');

    await questionRef8_22.set({
      'questionId': '22',
      'order': 22,
      'statements': [
        {
          'text': "Blue-finned Mahseer is naturally found in the Cauvery River, and the Rusty-spotted Cat is naturally found in the Eastern Ghats.",
          'isCorrect': true,
        },
        {
          'text': "The Irrawaddy Dolphin is naturally found in the Chambal River.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_23 = topicRef8
        .collection('questions')
        .doc('23');

    await questionRef8_23.set({
      'questionId': '23',
      'order': 23,
      'statements': [
        {
          'text': "Himalayan nettle (Girardinia diversifolia) is found to be a sustainable source of textile fibre.",
          'isCorrect': true,
        },
        {
          'text': "Himalayan nettle (Girardinia diversifolia) is found to be a sustainable source of an anti-malarial drug.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_24 = topicRef8
        .collection('questions')
        .doc('24');

    await questionRef8_24.set({
      'questionId': '24',
      'order': 24,
      'statements': [
        {
          'text': "Most of the world's coral reefs are in tropical waters, more than one-third are located in the territories of Australia, Indonesia and the Philippines, and coral reefs host far more animal phyla than tropical rainforests.",
          'isCorrect': true,
        },
        {
          'text': "Coral reefs host fewer animal phyla than tropical rainforests do.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_25 = topicRef8
        .collection('questions')
        .doc('25');

    await questionRef8_25.set({
      'questionId': '25',
      'order': 25,
      'statements': [
        {
          'text': "Prosopis juliflora is often mentioned in the news because it reduces biodiversity in the areas where it spreads.",
          'isCorrect': true,
        },
        {
          'text': "Prosopis juliflora is often mentioned in the news because it is used in cosmetics.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_26 = topicRef8
        .collection('questions')
        .doc('26');

    await questionRef8_26.set({
      'questionId': '26',
      'order': 26,
      'statements': [
        {
          'text': "The Chambal River is the best place to visit to see gharials in their natural habitat.",
          'isCorrect': true,
        },
        {
          'text': "Bhitarkanika Mangroves is the best place to visit to see gharials in their natural habitat.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_27 = topicRef8
        .collection('questions')
        .doc('27');

    await questionRef8_27.set({
      'questionId': '27',
      'order': 27,
      'statements': [
        {
          'text': "The Kharai camel is capable of swimming up to three kilometres in seawater and survives by grazing on mangroves.",
          'isCorrect': true,
        },
        {
          'text': "The Kharai camel lives in the wild and cannot be domesticated.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_28 = topicRef8
        .collection('questions')
        .doc('28');

    await questionRef8_28.set({
      'questionId': '28',
      'order': 28,
      'statements': [
        {
          'text': "The newly discovered tall banana species with orange-coloured fruit pulp was found in the Andaman Islands.",
          'isCorrect': true,
        },
        {
          'text': "The newly discovered tall banana species with orange-coloured fruit pulp was found in the Anaimalai Forests.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_29 = topicRef8
        .collection('questions')
        .doc('29');

    await questionRef8_29.set({
      'questionId': '29',
      'order': 29,
      'statements': [
        {
          'text': "Red Sanders is a tree species found in a part of South India.",
          'isCorrect': true,
        },
        {
          'text': "Red Sanders is one of the most important trees in the tropical rain forest areas of South India.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_30 = topicRef8
        .collection('questions')
        .doc('30');

    await questionRef8_30.set({
      'questionId': '30',
      'order': 30,
      'statements': [
        {
          'text': "The Great Indian Hornbill is most likely to be found in its natural habitat in the Western Ghats.",
          'isCorrect': true,
        },
        {
          'text': "The Great Indian Hornbill is most likely to be found in its natural habitat in the sand deserts of northwest India.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_31 = topicRef8
        .collection('questions')
        .doc('31');

    await questionRef8_31.set({
      'questionId': '31',
      'order': 31,
      'statements': [
        {
          'text': "The dugong is a herbivorous marine animal that is given legal protection under Schedule 1 of the Wildlife (Protection) Act, 1972.",
          'isCorrect': true,
        },
        {
          'text': "The dugong is found along the entire coast of India.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_32 = topicRef8
        .collection('questions')
        .doc('32');

    await questionRef8_32.set({
      'questionId': '32',
      'order': 32,
      'statements': [
        {
          'text': "The Gangetic dolphin is the national aquatic animal of India.",
          'isCorrect': true,
        },
        {
          'text': "The Gharial is the national aquatic animal of India.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_33 = topicRef8
        .collection('questions')
        .doc('33');

    await questionRef8_33.set({
      'questionId': '33',
      'order': 33,
      'statements': [
        {
          'text': "The Andaman and Nicobar Islands have a combination of mangrove forest, evergreen forest and deciduous forest.",
          'isCorrect': true,
        },
        {
          'text': "Southern Saurashtra has a combination of mangrove forest, evergreen forest and deciduous forest.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_34 = topicRef8
        .collection('questions')
        .doc('34');

    await questionRef8_34.set({
      'questionId': '34',
      'order': 34,
      'statements': [
        {
          'text': "Oak and rhododendron are plants you are likely to see growing naturally in the Himalayas.",
          'isCorrect': true,
        },
        {
          'text': "Sandalwood, along with oak and rhododendron, grows naturally in the Himalayas.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_35 = topicRef8
        .collection('questions')
        .doc('35');

    await questionRef8_35.set({
      'questionId': '35',
      'order': 35,
      'statements': [
        {
          'text': "The establishment of biosphere reserves is the most important strategy for conserving biodiversity together with traditional human life.",
          'isCorrect': true,
        },
        {
          'text': "The establishment of national parks is the most important strategy for conserving biodiversity together with traditional human life.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_36 = topicRef8
        .collection('questions')
        .doc('36');

    await questionRef8_36.set({
      'questionId': '36',
      'order': 36,
      'statements': [
        {
          'text': "The gum made from cluster bean (guar) seeds is used in the extraction of shale gas.",
          'isCorrect': true,
        },
        {
          'text': "The oil extracted from cluster bean (guar) seeds is used in the manufacture of biodegradable plastics.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_37 = topicRef8
        .collection('questions')
        .doc('37');

    await questionRef8_37.set({
      'questionId': '37',
      'order': 37,
      'statements': [
        {
          'text': "Neem oil can be used as a pesticide against insects and mites, and it has applications in the pharmaceutical industry.",
          'isCorrect': true,
        },
        {
          'text': "Neem seeds are used in the manufacture of biofuels and hospital detergents.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_38 = topicRef8
        .collection('questions')
        .doc('38');

    await questionRef8_38.set({
      'questionId': '38',
      'order': 38,
      'statements': [
        {
          'text': "Construction of dams and barrages, getting trapped in fishing nets, and use of synthetic fertilizers and agrochemicals are reasons for the decline of Ganges River Dolphins.",
          'isCorrect': true,
        },
        {
          'text': "An increase in the population of crocodiles in rivers is a reason for the decline of Ganges River Dolphins.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_39 = topicRef8
        .collection('questions')
        .doc('39');

    await questionRef8_39.set({
      'questionId': '39',
      'order': 39,
      'statements': [
        {
          'text': "The Common Myna is a bird that stalks alongside cattle to seize insects disturbed by their movement.",
          'isCorrect': true,
        },
        {
          'text': "The Black-necked Crane is a bird that stalks alongside cattle to seize insects disturbed by their movement.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_40 = topicRef8
        .collection('questions')
        .doc('40');

    await questionRef8_40.set({
      'questionId': '40',
      'order': 40,
      'statements': [
        {
          'text': "Andaman and Nicobar Islands, the Gulf of Kachchh, and the Gulf of Mannar all have coral reefs.",
          'isCorrect': true,
        },
        {
          'text': "The Sunderbans, along with the Andaman and Nicobar Islands, has coral reefs.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_41 = topicRef8
        .collection('questions')
        .doc('41');

    await questionRef8_41.set({
      'questionId': '41',
      'order': 41,
      'statements': [
        {
          'text': "The gharial, the leatherback turtle and the swamp deer are all endangered fauna of India.",
          'isCorrect': true,
        },
        {
          'text': "Of the gharial, leatherback turtle and swamp deer, only the swamp deer is endangered.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_42 = topicRef8
        .collection('questions')
        .doc('42');

    await questionRef8_42.set({
      'questionId': '42',
      'order': 42,
      'statements': [
        {
          'text': "The lion-tailed macaque is found in its natural habitat in Tamil Nadu, Kerala and Karnataka.",
          'isCorrect': true,
        },
        {
          'text': "The lion-tailed macaque is found in its natural habitat in Andhra Pradesh, along with Tamil Nadu and Kerala.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_43 = topicRef8
        .collection('questions')
        .doc('43');

    await questionRef8_43.set({
      'questionId': '43',
      'order': 43,
      'statements': [
        {
          'text': "The star tortoise, monitor lizard and pygmy hog are all naturally found in India.",
          'isCorrect': true,
        },
        {
          'text': "The spider monkey, along with the star tortoise and monitor lizard, is naturally found in India.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_44 = topicRef8
        .collection('questions')
        .doc('44');

    await questionRef8_44.set({
      'questionId': '44',
      'order': 44,
      'statements': [
        {
          'text': "Sea buckthorn helps control soil erosion and prevent desertification, and it has nutritional value while being well adapted to cold high-altitude areas.",
          'isCorrect': true,
        },
        {
          'text': "Sea buckthorn is a rich source of biodiesel and its timber is of great commercial value.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_45 = topicRef8
        .collection('questions')
        .doc('45');

    await questionRef8_45.set({
      'questionId': '45',
      'order': 45,
      'statements': [
        {
          'text': "The Great Indian Bustard, Musk Deer, Red Panda and Asiatic Wild Ass belong to the category of endangered species.",
          'isCorrect': true,
        },
        {
          'text': "The Kashmir Stag, Cheetal, Blue Bull and Great Indian Bustard all belong to the category of endangered species.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_46 = topicRef8
        .collection('questions')
        .doc('46');

    await questionRef8_46.set({
      'questionId': '46',
      'order': 46,
      'statements': [
        {
          'text': "The Oryx is adapted to live in hot and arid areas, whereas the Chiru is adapted to live in steppes and semi-desert areas of cold high mountains.",
          'isCorrect': true,
        },
        {
          'text': "The Oryx is poached for its antlers, whereas the Chiru is poached for its musk.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_47 = topicRef8
        .collection('questions')
        .doc('47');

    await questionRef8_47.set({
      'questionId': '47',
      'order': 47,
      'statements': [
        {
          'text': "The black-necked crane, the flying squirrel and the snow leopard are all naturally found in India.",
          'isCorrect': true,
        },
        {
          'text': "The cheetah, along with the black-necked crane and flying squirrel, is naturally found in India.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_48 = topicRef8
        .collection('questions')
        .doc('48');

    await questionRef8_48.set({
      'questionId': '48',
      'order': 48,
      'statements': [
        {
          'text': "If ocean phytoplankton were completely destroyed, the ocean's role as a carbon sink and the food chains in the ocean would both be adversely affected.",
          'isCorrect': true,
        },
        {
          'text': "If ocean phytoplankton were completely destroyed, the density of ocean water would drastically decrease.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_49 = topicRef8
        .collection('questions')
        .doc('49');

    await questionRef8_49.set({
      'questionId': '49',
      'order': 49,
      'statements': [
        {
          'text': "The decline of vultures in the Indian countryside is attributed to a drug used by cattle owners to treat diseased cattle.",
          'isCorrect': true,
        },
        {
          'text': "The decline of vultures in the Indian countryside is attributed to the destruction of their nesting sites by new invasive species.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_50 = topicRef8
        .collection('questions')
        .doc('50');

    await questionRef8_50.set({
      'questionId': '50',
      'order': 50,
      'statements': [
        {
          'text': "Ocean acidification is a concern because it adversely affects calcareous phytoplankton, coral reefs, and animals with phytoplanktonic larvae.",
          'isCorrect': true,
        },
        {
          'text': "Ocean acidification is a concern mainly because it adversely affects cloud seeding and the formation of clouds.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_51 = topicRef8
        .collection('questions')
        .doc('51');

    await questionRef8_51.set({
      'questionId': '51',
      'order': 51,
      'statements': [
        {
          'text': "Global warming, fragmentation of habitat and invasion of alien species can all be threats to the biodiversity of a geographical area.",
          'isCorrect': true,
        },
        {
          'text': "The promotion of vegetarianism, along with global warming and habitat fragmentation, can be a threat to the biodiversity of a geographical area.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_52 = topicRef8
        .collection('questions')
        .doc('52');

    await questionRef8_52.set({
      'questionId': '52',
      'order': 52,
      'statements': [
        {
          'text': "Biodiversity forms the basis for human existence through soil formation, prevention of soil erosion, recycling of waste, and pollination of crops.",
          'isCorrect': true,
        },
        {
          'text': "Biodiversity forms the basis for human existence only through soil formation and pollination of crops.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_53 = topicRef8
        .collection('questions')
        .doc('53');

    await questionRef8_53.set({
      'questionId': '53',
      'order': 53,
      'statements': [
        {
          'text': "A botanical garden is not a site for the in-situ method of conservation of flora.",
          'isCorrect': true,
        },
        {
          'text': "A biosphere reserve is not a site for the in-situ method of conservation of flora.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_54 = topicRef8
        .collection('questions')
        .doc('54');

    await questionRef8_54.set({
      'questionId': '54',
      'order': 54,
      'statements': [
        {
          'text': "The Indian wild ass is the animal whose natural habitat is a sandy and saline area with no predators, but whose existence is threatened by habitat destruction.",
          'isCorrect': true,
        },
        {
          'text': "The Indian wild buffalo is the animal whose natural habitat is a sandy and saline area with no predators.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_55 = topicRef8
        .collection('questions')
        .doc('55');

    await questionRef8_55.set({
      'questionId': '55',
      'order': 55,
      'statements': [
        {
          'text': "Mangrove trees do not get uprooted by storms and tides because of their extensive root systems, which helps them function as a safety hedge against coastal calamities.",
          'isCorrect': true,
        },
        {
          'text': "Mangrove trees function as a safety hedge against coastal calamities mainly because they are tall with dense canopies that shelter people during a cyclone or tsunami.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_56 = topicRef8
        .collection('questions')
        .doc('56');

    await questionRef8_56.set({
      'questionId': '56',
      'order': 56,
      'statements': [
        {
          'text': "The Himalayan Range is rich in species diversity mainly because it is a confluence of different biogeographical zones.",
          'isCorrect': true,
        },
        {
          'text': "The Himalayan Range is rich in species diversity mainly because it has less human interference.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_57 = topicRef8
        .collection('questions')
        .doc('57');

    await questionRef8_57.set({
      'questionId': '57',
      'order': 57,
      'statements': [
        {
          'text': "Species richness, endemism and threat perception are among the criteria that led to the recognition of the Western Ghats, Sri Lanka and Indo-Burma regions as biodiversity hotspots.",
          'isCorrect': true,
        },
        {
          'text': "Vegetation density, ethno-botanical importance and adaptation of flora and fauna to warm and humid conditions are the criteria that led to the recognition of the Western Ghats, Sri Lanka and Indo-Burma regions as biodiversity hotspots.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_58 = topicRef8
        .collection('questions')
        .doc('58');

    await questionRef8_58.set({
      'questionId': '58',
      'order': 58,
      'statements': [
        {
          'text': "The king cobra is an oviparous snake that makes a nest to lay its eggs in and guards the nest until they hatch.",
          'isCorrect': true,
        },
        {
          'text': "The king cobra is a viviparous snake that needs a nest to give birth to its offspring.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_59 = topicRef8
        .collection('questions')
        .doc('59');

    await questionRef8_59.set({
      'questionId': '59',
      'order': 59,
      'statements': [
        {
          'text': "The Taxus tree is naturally found in the Himalayas and is listed in the Red Data Book.",
          'isCorrect': true,
        },
        {
          'text': "A drug called 'taxol', obtained from Taxus trees, is effective against Parkinson's disease.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_60 = topicRef8
        .collection('questions')
        .doc('60');

    await questionRef8_60.set({
      'questionId': '60',
      'order': 60,
      'statements': [
        {
          'text': "Biodiversity hotspots are not located only in tropical regions.",
          'isCorrect': true,
        },
        {
          'text': "India has four biodiversity hotspots, namely Eastern Himalayas, Western Himalayas, Western Ghats and Andaman and Nicobar Islands.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_61 = topicRef8
        .collection('questions')
        .doc('61');

    await questionRef8_61.set({
      'questionId': '61',
      'order': 61,
      'statements': [
        {
          'text': "The Eastern Himalayas and the Eastern Mediterranean region are both biodiversity hotspots.",
          'isCorrect': true,
        },
        {
          'text': "North-western Australia, along with the Eastern Himalayas, is a biodiversity hotspot.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_62 = topicRef8
        .collection('questions')
        .doc('62');

    await questionRef8_62.set({
      'questionId': '62',
      'order': 62,
      'statements': [
        {
          'text': "The dugong, a marine animal vulnerable to extinction, is a mammal.",
          'isCorrect': true,
        },
        {
          'text': "The dugong, a marine animal vulnerable to extinction, is a bony fish.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_63 = topicRef8
        .collection('questions')
        .doc('63');

    await questionRef8_63.set({
      'questionId': '63',
      'order': 63,
      'statements': [
        {
          'text': "In the context of Indian wildlife, the flying fox is a bat.",
          'isCorrect': true,
        },
        {
          'text': "In the context of Indian wildlife, the flying fox is a kite.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_64 = topicRef8
        .collection('questions')
        .doc('64');

    await questionRef8_64.set({
      'questionId': '64',
      'order': 64,
      'statements': [
        {
          'text': "The langur is not an ape.",
          'isCorrect': true,
        },
        {
          'text': "The gibbon is not an ape.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_65 = topicRef8
        .collection('questions')
        .doc('65');

    await questionRef8_65.set({
      'questionId': '65',
      'order': 65,
      'statements': [
        {
          'text': "The pitcher plant is an insectivorous plant.",
          'isCorrect': true,
        },
        {
          'text': "The passion flower plant is an insectivorous plant.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_66 = topicRef8
        .collection('questions')
        .doc('66');

    await questionRef8_66.set({
      'questionId': '66',
      'order': 66,
      'statements': [
        {
          'text': "The diet of the king cobra is mainly composed of other snakes.",
          'isCorrect': true,
        },
        {
          'text': "The diet of the krait is mainly composed of other snakes.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_67 = topicRef8
        .collection('questions')
        .doc('67');

    await questionRef8_67.set({
      'questionId': '67',
      'order': 67,
      'statements': [
        {
          'text': "In spiders, the phenomenon is found wherein the female kills the male after copulation.",
          'isCorrect': true,
        },
        {
          'text': "In honeybees, the phenomenon is found wherein the female kills the male after copulation.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_68 = topicRef8
        .collection('questions')
        .doc('68');

    await questionRef8_68.set({
      'questionId': '68',
      'order': 68,
      'statements': [
        {
          'text': "Salt-water crocodile is found in the Andaman and Nicobar Islands, and shrew and tapir are found in the Western Ghats of the Malabar region.",
          'isCorrect': true,
        },
        {
          'text': "Salt-water crocodile is not found in the Andaman and Nicobar Islands.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_69 = topicRef8
        .collection('questions')
        .doc('69');

    await questionRef8_69.set({
      'questionId': '69',
      'order': 69,
      'statements': [
        {
          'text': "Mahogany is not essentially a species of Himalayan vegetation.",
          'isCorrect': true,
        },
        {
          'text': "Juniper is not essentially a species of Himalayan vegetation.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_70 = topicRef8
        .collection('questions')
        .doc('70');

    await questionRef8_70.set({
      'questionId': '70',
      'order': 70,
      'statements': [
        {
          'text': "In India, the Slow Loris lives in the dense forests of the North East.",
          'isCorrect': true,
        },
        {
          'text': "In India, the Red Panda is naturally found in the Western Himalayas only.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_71 = topicRef8
        .collection('questions')
        .doc('71');

    await questionRef8_71.set({
      'questionId': '71',
      'order': 71,
      'statements': [
        {
          'text': "Dalbergia species is associated with rosewood.",
          'isCorrect': true,
        },
        {
          'text': "Dalbergia species is associated with tea.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_72 = topicRef8
        .collection('questions')
        .doc('72');

    await questionRef8_72.set({
      'questionId': '72',
      'order': 72,
      'statements': [
        {
          'text': "The largest coral reef in the world is found near the coast of Australia.",
          'isCorrect': true,
        },
        {
          'text': "The largest coral reef in the world is found near the coast of the Philippines.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_73 = topicRef8
        .collection('questions')
        .doc('73');

    await questionRef8_73.set({
      'questionId': '73',
      'order': 73,
      'statements': [
        {
          'text': "Gibbon is the only ape found in India.",
          'isCorrect': true,
        },
        {
          'text': "Toothless mammals like pangolins are not found in India.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_74 = topicRef8
        .collection('questions')
        .doc('74');

    await questionRef8_74.set({
      'questionId': '74',
      'order': 74,
      'statements': [
        {
          'text': "Both the crocodile and the elephant are endangered species in India.",
          'isCorrect': true,
        },
        {
          'text': "Neither the crocodile nor the elephant is an endangered species in India.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_75 = topicRef8
        .collection('questions')
        .doc('75');

    await questionRef8_75.set({
      'questionId': '75',
      'order': 75,
      'statements': [
        {
          'text': "The chameleon can look ahead with one eye and, at the same time, look behind with another.",
          'isCorrect': true,
        },
        {
          'text': "The common blue-green algae Spirogyra and Ulothrix are found in both freshwater ponds and oceans.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_76 = topicRef8
        .collection('questions')
        .doc('76');

    await questionRef8_76.set({
      'questionId': '76',
      'order': 76,
      'statements': [
        {
          'text': "Achra Ratnagiri is a mangrove found in Maharashtra, Coondapur in Karnataka, Pichavaram in Tamil Nadu, and Vembanad in Kerala.",
          'isCorrect': true,
        },
        {
          'text': "Achra Ratnagiri is a mangrove found in Kerala, and Pichavaram is found in Andhra Pradesh.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_77 = topicRef8
        .collection('questions')
        .doc('77');

    await questionRef8_77.set({
      'questionId': '77',
      'order': 77,
      'statements': [
        {
          'text': "The sea coast of Orissa is famous as a nesting place for giant Olive Ridley turtles from South America.",
          'isCorrect': true,
        },
        {
          'text': "The sea coast of Tamil Nadu is famous as a nesting place for giant Olive Ridley turtles from South America.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_78 = topicRef8
        .collection('questions')
        .doc('78');

    await questionRef8_78.set({
      'questionId': '78',
      'order': 78,
      'statements': [
        {
          'text': "Marsupials are a characteristic class of animals found in Australia.",
          'isCorrect': true,
        },
        {
          'text': "Marsupials are a characteristic class of animals found in Africa.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_79 = topicRef8
        .collection('questions')
        .doc('79');

    await questionRef8_79.set({
      'questionId': '79',
      'order': 79,
      'statements': [
        {
          'text': "The animal 'X' referred to in the passage, with 20,000 to 25,000 individuals in India across evergreen forests, dry thorn forests, swamps, grasslands and moist deciduous forests, is the elephant.",
          'isCorrect': true,
        },
        {
          'text': "The animal 'X' referred to in the passage is the tiger.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_80 = topicRef8
        .collection('questions')
        .doc('80');

    await questionRef8_80.set({
      'questionId': '80',
      'order': 80,
      'statements': [
        {
          'text': "The extinction of the Dodo caused a tree species in Mauritius to fail to reproduce.",
          'isCorrect': true,
        },
        {
          'text': "The extinction of the Condor caused a tree species in Mauritius to fail to reproduce.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef8_81 = topicRef8
        .collection('questions')
        .doc('81');

    await questionRef8_81.set({
      'questionId': '81',
      'order': 81,
      'statements': [
        {
          'text': "Mangroves are specialised forest ecosystems of tropical and subtropical regions bordering certain sea coasts, and they stabilise the shoreline and act as a bulwark against encroachment by the sea.",
          'isCorrect': true,
        },
        {
          'text': "Mangroves stabilise the shoreline and act as a bulwark against encroachment by the sea, but they are not specialised forest ecosystems of tropical and subtropical regions.",
          'isCorrect': false,
        },
      ],
    });

    print('Environment (continued) seeding completed.');
  }


  static Future<void> seedEnvironment2() async {
    final subjectRef = _firestore.collection('subjects').doc('environment');

    await subjectRef.set({
      'name': 'Environment and Ecology',
      'order': 5,
      'hasSections': false,
    });

    // ----------------------------------------------------------
    // Environment Pollution and Remedies
    // ----------------------------------------------------------

    final topicRef5 = subjectRef
        .collection('topics')
        .doc('environment_pollution_and_remedies');

    await topicRef5.set({
      'name': 'Environment Pollution and Remedies',
      'order': 5,
    });

    final questionRef5_1 = topicRef5
        .collection('questions')
        .doc('1');

    await questionRef5_1.set({
      'questionId': '1',
      'order': 1,
      'statements': [
        {
          'text': 'Activated carbon exhibits a large surface area and a strong potential for adsorbing heavy metals.',
          'isCorrect': true,
        },
        {
          'text': 'Activated carbon cannot be easily synthesized from environmental wastes with high carbon content.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef5_2 = topicRef5
        .collection('questions')
        .doc('2');

    await questionRef5_2.set({
      'questionId': '2',
      'order': 2,
      'statements': [
        {
          'text': 'Cigarette butts, eyeglass lenses, and car tyres all contain plastic.',
          'isCorrect': true,
        },
        {
          'text': 'Car tyres do not contain plastic.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef5_3 = topicRef5
        .collection('questions')
        .doc('3');

    await questionRef5_3.set({
      'questionId': '3',
      'order': 3,
      'statements': [
        {
          'text': 'PFAS are not easily degraded in the environment.',
          'isCorrect': true,
        },
        {
          'text': 'Persistent exposure to PFAS does not lead to bioaccumulation in animal bodies.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef5_4 = topicRef5
        .collection('questions')
        .doc('4');

    await questionRef5_4.set({
      'questionId': '4',
      'order': 4,
      'statements': [
        {
          'text': 'Many chewing gums contain plastic as their gum base.',
          'isCorrect': true,
        },
        {
          'text': 'Many chewing gums found in the market are not considered a source of environmental pollution.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef5_5 = topicRef5
        .collection('questions')
        .doc('5');

    await questionRef5_5.set({
      'questionId': '5',
      'order': 5,
      'statements': [
        {
          'text': 'According to the Environmental Protection Agency (EPA), power plants using fossil fuels are the largest source of sulphur dioxide emissions.',
          'isCorrect': true,
        },
        {
          'text': 'According to the Environmental Protection Agency (EPA), ships using fossil fuels are the largest source of sulphur dioxide emissions.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef5_6 = topicRef5
        .collection('questions')
        .doc('6');

    await questionRef5_6.set({
      'questionId': '6',
      'order': 6,
      'statements': [
        {
          'text': '\'Membrane Bioreactors\' are often discussed in the context of wastewater treatment technologies.',
          'isCorrect': true,
        },
        {
          'text': '\'Membrane Bioreactors\' are often discussed in the context of vaccine production technologies.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef5_7 = topicRef5
        .collection('questions')
        .doc('7');

    await questionRef5_7.set({
      'questionId': '7',
      'order': 7,
      'statements': [
        {
          'text': 'Biofilters convert ammonia present in fish waste to nitrate.',
          'isCorrect': true,
        },
        {
          'text': 'Biofilters increase phosphorus as a nutrient for fish in water.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef5_8 = topicRef5
        .collection('questions')
        .doc('8');

    await questionRef5_8.set({
      'questionId': '8',
      'order': 8,
      'statements': [
        {
          'text': 'Coal-based thermal power plants cause mercury pollution.',
          'isCorrect': true,
        },
        {
          'text': 'There is no known safe level of exposure to mercury.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef5_9 = topicRef5
        .collection('questions')
        .doc('9');

    await questionRef5_9.set({
      'questionId': '9',
      'order': 9,
      'statements': [
        {
          'text': 'Excess of nitrogen oxide and sulphur dioxide in the environment are causes of acid rain.',
          'isCorrect': true,
        },
        {
          'text': 'Excess of carbon monoxide and ozone in the environment are causes of acid rain.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef5_10 = topicRef5
        .collection('questions')
        .doc('10');

    await questionRef5_10.set({
      'questionId': '10',
      'order': 10,
      'statements': [
        {
          'text': 'According to WHO Air Quality Guidelines, excessive ozone in the air can trigger asthma.',
          'isCorrect': true,
        },
        {
          'text': 'In a year, the highest levels of ozone pollution occur during periods of inclement weather.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef5_11 = topicRef5
        .collection('questions')
        .doc('11');

    await questionRef5_11.set({
      'questionId': '11',
      'order': 11,
      'statements': [
        {
          'text': 'Nanoparticles of some commercial products which enter the environment are unsafe for humans.',
          'isCorrect': true,
        },
        {
          'text': 'Other than those made by humans, nanoparticles do not exist in nature.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef5_12 = topicRef5
        .collection('questions')
        .doc('12');

    await questionRef5_12.set({
      'questionId': '12',
      'order': 12,
      'statements': [
        {
          'text': 'Magnetite particles, suspected to cause neurodegenerative problems, are generated as environmental pollutants from the brakes and engines of motor vehicles, and from power plants.',
          'isCorrect': true,
        },
        {
          'text': 'Magnetite particles, suspected to cause neurodegenerative problems, are generated as environmental pollutants from microwave stoves within homes and from telephone lines.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef5_13 = topicRef5
        .collection('questions')
        .doc('13');

    await questionRef5_13.set({
      'questionId': '13',
      'order': 13,
      'statements': [
        {
          'text': 'The \'R2 Code of Practices\' constitutes a tool available for promoting the adoption of environmentally responsible practices in the electronics recycling industry.',
          'isCorrect': true,
        },
        {
          'text': 'The \'R2 Code of Practices\' constitutes a tool available for promoting the adoption of ecological management of \'Wetlands of International Importance\'.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef5_14 = topicRef5
        .collection('questions')
        .doc('14');

    await questionRef5_14.set({
      'questionId': '14',
      'order': 14,
      'statements': [
        {
          'text': 'Copper slag can cause the leaching of some heavy metals into the environment.',
          'isCorrect': true,
        },
        {
          'text': 'Copper smelting plants may release lethal quantities of carbon monoxide into the environment.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef5_15 = topicRef5
        .collection('questions')
        .doc('15');

    await questionRef5_15.set({
      'questionId': '15',
      'order': 15,
      'statements': [
        {
          'text': 'Furnace oil is a product of oil refineries.',
          'isCorrect': true,
        },
        {
          'text': 'The use of furnace oil does not cause sulphur emissions into the environment.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef5_16 = topicRef5
        .collection('questions')
        .doc('16');

    await questionRef5_16.set({
      'questionId': '16',
      'order': 16,
      'statements': [
        {
          'text': 'Automobile exhaust, tobacco smoke, and wood burning are reasons/factors for exposure to benzene pollution.',
          'isCorrect': true,
        },
        {
          'text': 'Using varnished wooden furniture and products made of polyurethane are reasons/factors for exposure to benzene pollution.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef5_17 = topicRef5
        .collection('questions')
        .doc('17');

    await questionRef5_17.set({
      'questionId': '17',
      'order': 17,
      'statements': [
        {
          'text': 'Coal ash contains arsenic, lead and mercury.',
          'isCorrect': true,
        },
        {
          'text': 'High ash content is not observed in Indian coal.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef5_18 = topicRef5
        .collection('questions')
        .doc('18');

    await questionRef5_18.set({
      'questionId': '18',
      'order': 18,
      'statements': [
        {
          'text': 'Steel slag can be used for the construction of base roads.',
          'isCorrect': true,
        },
        {
          'text': 'Steel slag cannot be used for the improvement of agricultural soil.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef5_19 = topicRef5
        .collection('questions')
        .doc('19');

    await questionRef5_19.set({
      'questionId': '19',
      'order': 19,
      'statements': [
        {
          'text': 'There is concern about \'microbeads\' released into the environment because they are considered harmful to marine ecosystems.',
          'isCorrect': true,
        },
        {
          'text': 'There is concern about \'microbeads\' released into the environment because they are considered to cause skin cancer in children.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef5_20 = topicRef5
        .collection('questions')
        .doc('20');

    await questionRef5_20.set({
      'questionId': '20',
      'order': 20,
      'statements': [
        {
          'text': 'Carbofuran, methyl parathion, phorate and triazophos are used as pesticides in agriculture.',
          'isCorrect': true,
        },
        {
          'text': 'Carbofuran, methyl parathion, phorate and triazophos are used as preservatives in processed foods.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef5_21 = topicRef5
        .collection('questions')
        .doc('21');

    await questionRef5_21.set({
      'questionId': '21',
      'order': 21,
      'statements': [
        {
          'text': 'The Environment Protection Act, 1986 empowers the Government of India to lay down the standards for emission or discharge of environmental pollutants from various sources.',
          'isCorrect': true,
        },
        {
          'text': 'The Environment Protection Act, 1986 empowers the Government of India to state the requirement of public participation in the process of environmental protection, and the procedure and manner in which it is sought.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef5_22 = topicRef5
        .collection('questions')
        .doc('22');

    await questionRef5_22.set({
      'questionId': '22',
      'order': 22,
      'statements': [
        {
          'text': 'As per the Solid Waste Management Rules, 2016 in India, the Rules provide for exact and elaborate criteria for the identification of sites for landfills and waste processing facilities.',
          'isCorrect': true,
        },
        {
          'text': 'As per the Solid Waste Management Rules, 2016 in India, the waste generator has to segregate waste into five categories.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef5_23 = topicRef5
        .collection('questions')
        .doc('23');

    await questionRef5_23.set({
      'questionId': '23',
      'order': 23,
      'statements': [
        {
          'text': '\'Extended producer responsibility\' was introduced as an important feature in the E-Waste (Management and Handling) Rules, 2011.',
          'isCorrect': true,
        },
        {
          'text': '\'Extended producer responsibility\' was introduced as an important feature in the Bio-medical Waste (Management and Handling) Rules, 1998.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef5_24 = topicRef5
        .collection('questions')
        .doc('24');

    await questionRef5_24.set({
      'questionId': '24',
      'order': 24,
      'statements': [
        {
          'text': 'The NGT provides environmental justice and helps reduce the burden of litigation in the High Courts, whereas the CPCB promotes the cleanliness of streams and wells and aims to improve the quality of air in the country.',
          'isCorrect': true,
        },
        {
          'text': 'The NGT has been established by an Act, whereas the CPCB has been created by an executive order of the government.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef5_25 = topicRef5
        .collection('questions')
        .doc('25');

    await questionRef5_25.set({
      'questionId': '25',
      'order': 25,
      'statements': [
        {
          'text': 'Genetic engineering can be used to create microorganisms specifically designed for bioremediation.',
          'isCorrect': true,
        },
        {
          'text': 'Any contaminant with heavy metals such as cadmium and lead can be readily and completely treated by bioremediation using microorganisms.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef5_26 = topicRef5
        .collection('questions')
        .doc('26');

    await questionRef5_26.set({
      'questionId': '26',
      'order': 26,
      'statements': [
        {
          'text': 'Biological Oxygen Demand (BOD) is a standard criterion for pollution assay in aquatic ecosystems.',
          'isCorrect': true,
        },
        {
          'text': 'Biological Oxygen Demand (BOD) is a standard criterion for measuring oxygen levels in blood.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef5_27 = topicRef5
        .collection('questions')
        .doc('27');

    await questionRef5_27.set({
      'questionId': '27',
      'order': 27,
      'statements': [
        {
          'text': 'Carbon monoxide, nitrogen dioxide, and sulphur dioxide are normally considered in calculating the value of the Air Quality Index in cities of India.',
          'isCorrect': true,
        },
        {
          'text': 'Carbon dioxide and methane are normally considered in calculating the value of the Air Quality Index in cities of India.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef5_28 = topicRef5
        .collection('questions')
        .doc('28');

    await questionRef5_28.set({
      'questionId': '28',
      'order': 28,
      'statements': [
        {
          'text': 'The decomposition of human waste in bio-toilets used by the Indian Railways is not initiated by a fungal inoculum.',
          'isCorrect': true,
        },
        {
          'text': 'The decomposition of human waste in bio-toilets used by the Indian Railways is initiated by a fungal inoculum.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef5_29 = topicRef5
        .collection('questions')
        .doc('29');

    await questionRef5_29.set({
      'questionId': '29',
      'order': 29,
      'statements': [
        {
          'text': 'Fly ash can be used as a replacement for some of the Portland cement content of concrete.',
          'isCorrect': true,
        },
        {
          'text': 'Fly ash is made up of silicon dioxide and calcium oxide only, and does not contain any toxic elements.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef5_30 = topicRef5
        .collection('questions')
        .doc('30');

    await questionRef5_30.set({
      'questionId': '30',
      'order': 30,
      'statements': [
        {
          'text': 'Oxides of sulphur, oxides of nitrogen, carbon monoxide, and carbon dioxide are important pollutants released by the steel industry in India.',
          'isCorrect': true,
        },
        {
          'text': 'Carbon dioxide is not among the pollutants released by the steel industry in India.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef5_31 = topicRef5
        .collection('questions')
        .doc('31');

    await questionRef5_31.set({
      'questionId': '31',
      'order': 31,
      'statements': [
        {
          'text': 'Brominated flame retardants are able to accumulate in humans and animals.',
          'isCorrect': true,
        },
        {
          'text': 'Brominated flame retardants are not highly resistant to degradation in the environment.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef5_32 = topicRef5
        .collection('questions')
        .doc('32');

    await questionRef5_32.set({
      'questionId': '32',
      'order': 32,
      'statements': [
        {
          'text': 'Nanoparticles used by industry in the manufacture of various products can trigger the production of free radicals.',
          'isCorrect': true,
        },
        {
          'text': 'Nanoparticles used by industry in the manufacture of various products cannot enter the food chains.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef5_33 = topicRef5
        .collection('questions')
        .doc('33');

    await questionRef5_33.set({
      'questionId': '33',
      'order': 33,
      'statements': [
        {
          'text': 'Beryllium, Cadmium, Chromium, Mercury and Lead are released into the environment as e-waste due to improper disposal of old computers.',
          'isCorrect': true,
        },
        {
          'text': 'Heptachlor and Plutonium are released into the environment as e-waste due to improper disposal of old computers.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef5_34 = topicRef5
        .collection('questions')
        .doc('34');

    await questionRef5_34.set({
      'questionId': '34',
      'order': 34,
      'statements': [
        {
          'text': 'Acid rain is caused by the pollution of the environment by nitrous oxide and sulphur dioxide.',
          'isCorrect': true,
        },
        {
          'text': 'Acid rain is caused by the pollution of the environment by carbon dioxide and nitrogen.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef5_35 = topicRef5
        .collection('questions')
        .doc('35');

    await questionRef5_35.set({
      'questionId': '35',
      'order': 35,
      'statements': [
        {
          'text': 'Photochemical smog is a resultant of the reaction among NO2, O3 and PAN in the presence of sunlight.',
          'isCorrect': true,
        },
        {
          'text': 'Photochemical smog is a resultant of the reaction among CO, CO2 and PAN in the presence of sunlight.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef5_36 = topicRef5
        .collection('questions')
        .doc('36');

    await questionRef5_36.set({
      'questionId': '36',
      'order': 36,
      'statements': [
        {
          'text': 'Arsenic, Fluoride, and Uranium can be found as pollutants in the drinking water in some parts of India.',
          'isCorrect': true,
        },
        {
          'text': 'Sorbitol and Formaldehyde can be found as pollutants in the drinking water in some parts of India.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef5_37 = topicRef5
        .collection('questions')
        .doc('37');

    await questionRef5_37.set({
      'questionId': '37',
      'order': 37,
      'statements': [
        {
          'text': 'Smelting units and paints are still sources of lead poisoning even after the addition of lead to petrol has been banned.',
          'isCorrect': true,
        },
        {
          'text': 'Pens and pencils, and hair oils and cosmetics, are sources of lead poisoning after the addition of lead to petrol has been banned.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef5_38 = topicRef5
        .collection('questions')
        .doc('38');

    await questionRef5_38.set({
      'questionId': '38',
      'order': 38,
      'statements': [
        {
          'text': 'Upwelling in the seas is a causative factor for the increase in harmful algal blooms in the seawater of India.',
          'isCorrect': true,
        },
        {
          'text': 'Discharge of nutrients from the estuaries is not a causative factor for the increase in harmful algal blooms in the seawater of India.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef5_39 = topicRef5
        .collection('questions')
        .doc('39');

    await questionRef5_39.set({
      'questionId': '39',
      'order': 39,
      'statements': [
        {
          'text': 'Carbon dioxide, oxides of nitrogen, and oxides of sulphur are emissions from coal combustion at thermal power plants.',
          'isCorrect': true,
        },
        {
          'text': 'Carbon dioxide is not an emission from coal combustion at thermal power plants.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef5_40 = topicRef5
        .collection('questions')
        .doc('40');

    await questionRef5_40.set({
      'questionId': '40',
      'order': 40,
      'statements': [
        {
          'text': 'When a fluorescent lamp is switched on, the mercury in the lamp causes the emission of ultra-violet radiations.',
          'isCorrect': true,
        },
        {
          'text': 'A mercury coating on the inside of the lamp makes the light bright white.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef5_41 = topicRef5
        .collection('questions')
        .doc('41');

    await questionRef5_41.set({
      'questionId': '41',
      'order': 41,
      'statements': [
        {
          'text': 'Pseudomonas is a bacterial strain, developed by genetic manipulations, that can be used for treating oil spills.',
          'isCorrect': true,
        },
        {
          'text': 'Agrobacterium is a bacterial strain, developed by genetic manipulations, that can be used for treating oil spills.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef5_42 = topicRef5
        .collection('questions')
        .doc('42');

    await questionRef5_42.set({
      'questionId': '42',
      'order': 42,
      'statements': [
        {
          'text': 'Oxides of carbon are emitted when coal burns.',
          'isCorrect': true,
        },
        {
          'text': 'Oxides of carbon emitted from coal burning are the cause of acid rain.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef5_43 = topicRef5
        .collection('questions')
        .doc('43');

    await questionRef5_43.set({
      'questionId': '43',
      'order': 43,
      'statements': [
        {
          'text': 'Ozone is produced during the formation of photochemical smog.',
          'isCorrect': true,
        },
        {
          'text': 'Methane is produced during the formation of photochemical smog.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef5_44 = topicRef5
        .collection('questions')
        .doc('44');

    await questionRef5_44.set({
      'questionId': '44',
      'order': 44,
      'statements': [
        {
          'text': 'Water pollution in a river is measured by the dissolved amount of oxygen.',
          'isCorrect': true,
        },
        {
          'text': 'Water pollution in a river is measured by the dissolved amount of chlorine.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef5_45 = topicRef5
        .collection('questions')
        .doc('45');

    await questionRef5_45.set({
      'questionId': '45',
      'order': 45,
      'statements': [
        {
          'text': 'Among diesel, coal, hydrogen and kerosene, hydrogen causes minimum environmental pollution.',
          'isCorrect': true,
        },
        {
          'text': 'Among diesel, coal, hydrogen and kerosene, coal causes minimum environmental pollution.',
          'isCorrect': false,
        },
      ],
    });

    // ----------------------------------------------------------
    // Climate Change and Remedies
    // ----------------------------------------------------------

    final topicRef6 = subjectRef
        .collection('topics')
        .doc('climate_change_and_remedies');

    await topicRef6.set({
      'name': 'Climate Change and Remedies',
      'order': 6,
    });

    final questionRef6_1 = topicRef6
        .collection('questions')
        .doc('1');

    await questionRef6_1.set({
      'questionId': '1',
      'order': 1,
      'statements': [
        {
          'text': 'The survival of animals, including humans, will be affected as shedding of body heat through perspiration becomes difficult when wet bulb temperatures routinely exceed 35 degree C.',
          'isCorrect': true,
        },
        {
          'text': 'Peninsular India will most likely suffer from flooding, tropical cyclones and droughts as an implication of wet bulb temperatures routinely exceeding 35 degree C.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_2 = topicRef6
        .collection('questions')
        .doc('2');

    await questionRef6_2.set({
      'questionId': '2',
      'order': 2,
      'statements': [
        {
          'text': 'Circular economy reduces the use of raw materials as inputs.',
          'isCorrect': true,
        },
        {
          'text': 'Circular economy does not reduce wastage in the production process.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_3 = topicRef6
        .collection('questions')
        .doc('3');

    await questionRef6_3.set({
      'questionId': '3',
      'order': 3,
      'statements': [
        {
          'text': 'Carbon dioxide emissions from the cement industry account for more than 5% of global carbon emissions.',
          'isCorrect': true,
        },
        {
          'text': 'Silica-bearing clay is not mixed with limestone while manufacturing cement.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_4 = topicRef6
        .collection('questions')
        .doc('4');

    await questionRef6_4.set({
      'questionId': '4',
      'order': 4,
      'statements': [
        {
          'text': 'Direct Air Capture can be used as a way of carbon sequestration.',
          'isCorrect': true,
        },
        {
          'text': 'Direct Air Capture cannot be a source of carbon for combining with hydrogen to create synthetic low-carbon fuel in aviation.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_5 = topicRef6
        .collection('questions')
        .doc('5');

    await questionRef6_5.set({
      'questionId': '5',
      'order': 5,
      'statements': [
        {
          'text': 'Electricity and heat producers are the largest sources of CO2 emissions in India.',
          'isCorrect': true,
        },
        {
          'text': 'Carbon dioxide (CO2) emissions in India are less than 0.5 t CO2/capita.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_6 = topicRef6
        .collection('questions')
        .doc('6');

    await questionRef6_6.set({
      'questionId': '6',
      'order': 6,
      'statements': [
        {
          'text': 'The Congo Basin has the world\'s largest tropical peatland, which holds about three years\' worth of global carbon emissions from fossil fuels.',
          'isCorrect': true,
        },
        {
          'text': 'The Amazon Basin has the world\'s largest tropical peatland, which holds about three years\' worth of global carbon emissions from fossil fuels.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_7 = topicRef6
        .collection('questions')
        .doc('7');

    await questionRef6_7.set({
      'questionId': '7',
      'order': 7,
      'statements': [
        {
          'text': 'Hydrofluorocarbons are used in the making of aerosols, foam agents, and fire retardants.',
          'isCorrect': true,
        },
        {
          'text': 'Hydrofluorocarbons are used in the making of lubricants.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_8 = topicRef6
        .collection('questions')
        .doc('8');

    await questionRef6_8.set({
      'questionId': '8',
      'order': 8,
      'statements': [
        {
          'text': 'Spreading finely ground basalt rock extensively on farmlands is often considered and discussed for carbon capture and sequestration.',
          'isCorrect': true,
        },
        {
          'text': 'Increasing the alkalinity of oceans by adding lime is not considered or discussed for carbon capture and sequestration.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_9 = topicRef6
        .collection('questions')
        .doc('9');

    await questionRef6_9.set({
      'questionId': '9',
      'order': 9,
      'statements': [
        {
          'text': 'Among cotton, rice, sugarcane and wheat, rice is the most important anthropogenic source of both methane and nitrous oxide.',
          'isCorrect': true,
        },
        {
          'text': 'Among cotton, rice, sugarcane and wheat, wheat is the most important anthropogenic source of both methane and nitrous oxide.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_10 = topicRef6
        .collection('questions')
        .doc('10');

    await questionRef6_10.set({
      'questionId': '10',
      'order': 10,
      'statements': [
        {
          'text': 'Blue carbon is carbon captured by oceans and coastal ecosystems.',
          'isCorrect': true,
        },
        {
          'text': 'Blue carbon is carbon contained in petroleum and natural gas.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_11 = topicRef6
        .collection('questions')
        .doc('11');

    await questionRef6_11.set({
      'questionId': '11',
      'order': 11,
      'statements': [
        {
          'text': 'Copper slag, cold mix asphalt technology, and geotextiles are preferred in rural road construction for ensuring environmental sustainability and reducing carbon footprint.',
          'isCorrect': true,
        },
        {
          'text': 'Hot mix asphalt technology and Portland cement are preferred in rural road construction for ensuring environmental sustainability and reducing carbon footprint.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_12 = topicRef6
        .collection('questions')
        .doc('12');

    await questionRef6_12.set({
      'questionId': '12',
      'order': 12,
      'statements': [
        {
          'text': '\'Social Cost of Carbon\' refers to the long-term damage done by a tonne of CO2 emissions in a given year.',
          'isCorrect': true,
        },
        {
          'text': '\'Social Cost of Carbon\' refers to the requirement of fossil fuels for a country to provide goods and services to its citizens, based on the burning of those fuels.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_13 = topicRef6
        .collection('questions')
        .doc('13');

    await questionRef6_13.set({
      'questionId': '13',
      'order': 13,
      'statements': [
        {
          'text': 'Large deposits of \'methane hydrate\' are found in the Arctic Tundra and under the seafloor.',
          'isCorrect': true,
        },
        {
          'text': 'Methane in the atmosphere does not oxidise to carbon dioxide after a decade or two.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_14 = topicRef6
        .collection('questions')
        .doc('14');

    await questionRef6_14.set({
      'questionId': '14',
      'order': 14,
      'statements': [
        {
          'text': 'Carbon monoxide, methane, ozone and sulphur dioxide are released into the atmosphere due to the burning of crop/biomass residue.',
          'isCorrect': true,
        },
        {
          'text': 'Sulphur dioxide is not released into the atmosphere due to the burning of crop/biomass residue.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_15 = topicRef6
        .collection('questions')
        .doc('15');

    await questionRef6_15.set({
      'questionId': '15',
      'order': 15,
      'statements': [
        {
          'text': 'Cattle release ammonia into the environment.',
          'isCorrect': true,
        },
        {
          'text': 'Agricultural soils do not release nitrogen oxides into the environment.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_16 = topicRef6
        .collection('questions')
        .doc('16');

    await questionRef6_16.set({
      'questionId': '16',
      'order': 16,
      'statements': [
        {
          'text': 'Hydrogen up to one-fifth by volume can be blended with CNG as fuel for buses.',
          'isCorrect': true,
        },
        {
          'text': 'The main advantage of the use of H-CNG is the elimination of carbon monoxide emissions.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_17 = topicRef6
        .collection('questions')
        .doc('17');

    await questionRef6_17.set({
      'questionId': '17',
      'order': 17,
      'statements': [
        {
          'text': '\'Carbon fertilization\' refers to increased plant growth due to increased concentration of carbon dioxide in the atmosphere.',
          'isCorrect': true,
        },
        {
          'text': '\'Carbon fertilization\' refers to increased temperature of the earth due to increased concentration of carbon dioxide in the atmosphere.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_18 = topicRef6
        .collection('questions')
        .doc('18');

    await questionRef6_18.set({
      'questionId': '18',
      'order': 18,
      'statements': [
        {
          'text': 'The term \'sixth mass extinction/sixth extinction\' is often mentioned in the context of mankind\'s overexploitation of natural resources, fragmentation and loss of natural habitats, destruction of ecosystems, pollution, and world climate change.',
          'isCorrect': true,
        },
        {
          'text': 'The term \'sixth mass extinction/sixth extinction\' is often mentioned in the context of fears of a possible collision of a meteorite with the Earth in the near future, in the manner it happened 65 million years ago.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_19 = topicRef6
        .collection('questions')
        .doc('19');

    await questionRef6_19.set({
      'questionId': '19',
      'order': 19,
      'statements': [
        {
          'text': 'Abandoned and uneconomic coal seams can be potential sites for carbon sequestration.',
          'isCorrect': true,
        },
        {
          'text': 'Subterranean deep saline formations cannot be potential sites for carbon sequestration.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_20 = topicRef6
        .collection('questions')
        .doc('20');

    await questionRef6_20.set({
      'questionId': '20',
      'order': 20,
      'statements': [
        {
          'text': 'Birdlife International is a Global Partnership of Conservation Organizations.',
          'isCorrect': true,
        },
        {
          'text': 'The concept of \'biodiversity hotspots\' originated from Birdlife International.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_21 = topicRef6
        .collection('questions')
        .doc('21');

    await questionRef6_21.set({
      'questionId': '21',
      'order': 21,
      'statements': [
        {
          'text': 'IUCN runs thousands of field projects around the world to better manage natural environments.',
          'isCorrect': true,
        },
        {
          'text': 'IUCN is an organ of the United Nations, and CITES is an international agreement between governments.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_22 = topicRef6
        .collection('questions')
        .doc('22');

    await questionRef6_22.set({
      'questionId': '22',
      'order': 22,
      'statements': [
        {
          'text': 'Wetlands International works at the field level to develop and mobilize knowledge, and uses practical experience to advocate for better policies.',
          'isCorrect': true,
        },
        {
          'text': 'Wetlands International is an intergovernmental organization formed by the countries which are signatories to the Ramsar Convention.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_23 = topicRef6
        .collection('questions')
        .doc('23');

    await questionRef6_23.set({
      'questionId': '23',
      'order': 23,
      'statements': [
        {
          'text': 'If a wetland of international importance is brought under the \'Montreux Record\', it implies that changes in ecological character have occurred, are occurring, or are likely to occur in the wetland as a result of human interference.',
          'isCorrect': true,
        },
        {
          'text': 'If a wetland of international importance is brought under the \'Montreux Record\', it implies that the country in which the wetland is located should enact a law to prohibit any human activity within five kilometres from the edge of the wetland.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_24 = topicRef6
        .collection('questions')
        .doc('24');

    await questionRef6_24.set({
      'questionId': '24',
      'order': 24,
      'statements': [
        {
          'text': 'If the global temperature increases beyond 3 degree C above the pre-industrial level, widespread coral mortality will occur.',
          'isCorrect': true,
        },
        {
          'text': 'If the global temperature increases beyond 3 degree C above the pre-industrial level, all the global wetlands will permanently disappear.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_25 = topicRef6
        .collection('questions')
        .doc('25');

    await questionRef6_25.set({
      'questionId': '25',
      'order': 25,
      'statements': [
        {
          'text': 'Chlorofluorocarbons are used in the production of plastic foams and as pressurizing agents in aerosol cans.',
          'isCorrect': true,
        },
        {
          'text': 'Chlorofluorocarbons are used in the production of tubeless tyres.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_26 = topicRef6
        .collection('questions')
        .doc('26');

    await questionRef6_26.set({
      'questionId': '26',
      'order': 26,
      'statements': [
        {
          'text': 'The increasing amount of carbon dioxide in the air is slowly raising the temperature of the atmosphere because it absorbs the infrared part of solar radiation.',
          'isCorrect': true,
        },
        {
          'text': 'The increasing amount of carbon dioxide in the air is slowly raising the temperature of the atmosphere because it absorbs the ultraviolet part of solar radiation.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_27 = topicRef6
        .collection('questions')
        .doc('27');

    await questionRef6_27.set({
      'questionId': '27',
      'order': 27,
      'statements': [
        {
          'text': 'Zero tillage helps in carbon sequestration/storage in the soil.',
          'isCorrect': true,
        },
        {
          'text': 'Contour bunding and relay cropping help in carbon sequestration/storage in the soil.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_28 = topicRef6
        .collection('questions')
        .doc('28');

    await questionRef6_28.set({
      'questionId': '28',
      'order': 28,
      'statements': [
        {
          'text': 'The formation of the ozone hole in the Antarctic region is caused by the presence of a prominent polar front and stratospheric clouds, along with the inflow of chlorofluorocarbons.',
          'isCorrect': true,
        },
        {
          'text': 'The formation of the ozone hole in the Antarctic region is caused by the presence of prominent tropospheric turbulence and the inflow of chlorofluorocarbons.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_29 = topicRef6
        .collection('questions')
        .doc('29');

    await questionRef6_29.set({
      'questionId': '29',
      'order': 29,
      'statements': [
        {
          'text': 'A lot of the increased carbon dioxide does not remain in the lower atmosphere because of photosynthesis by phytoplankton in the oceans.',
          'isCorrect': true,
        },
        {
          'text': 'A lot of the increased carbon dioxide does not remain in the lower atmosphere because of its escape into the outer stratosphere.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_30 = topicRef6
        .collection('questions')
        .doc('30');

    await questionRef6_30.set({
      'questionId': '30',
      'order': 30,
      'statements': [
        {
          'text': 'The \'Red Data Books\' published by the IUCN contain lists of threatened plant and animal species.',
          'isCorrect': true,
        },
        {
          'text': 'The \'Red Data Books\' published by the IUCN contain lists of endemic plant and animal species present in biodiversity hotspots.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_31 = topicRef6
        .collection('questions')
        .doc('31');

    await questionRef6_31.set({
      'questionId': '31',
      'order': 31,
      'statements': [
        {
          'text': 'Soot and sulphur hexafluoride found in the ambient atmosphere contribute to the warming up of the atmosphere.',
          'isCorrect': true,
        },
        {
          'text': 'Water vapour found in the ambient atmosphere does not contribute to the warming up of the atmosphere.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_32 = topicRef6
        .collection('questions')
        .doc('32');

    await questionRef6_32.set({
      'questionId': '32',
      'order': 32,
      'statements': [
        {
          'text': 'The anaerobic conditions associated with rice cultivation cause the emission of methane.',
          'isCorrect': true,
        },
        {
          'text': 'Nitrous oxide is not emitted from cultivated soil when nitrogen-based fertilizers are used.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_33 = topicRef6
        .collection('questions')
        .doc('33');

    await questionRef6_33.set({
      'questionId': '33',
      'order': 33,
      'statements': [
        {
          'text': 'Rice fields, coal mining, domestic animals, and wetlands are all sources of methane, a major greenhouse gas.',
          'isCorrect': true,
        },
        {
          'text': 'Wetlands are not a source of methane, a major greenhouse gas.',
          'isCorrect': false,
        },
      ],
    });

    print('Environment (continued) seeding completed.');
  }

  static Future<void> seedEnvironment1() async {
    final subjectRef =
        _firestore.collection('subjects').doc('environment');

    await subjectRef.set({
      'name': 'Environment and Ecology',
      'order': 5,
      'hasSections': false,
    });

    // ----------------------------------------------------------
    // Agriculture
    // ----------------------------------------------------------

    final topicRef3 = subjectRef.collection('topics').doc("agriculture");

    await topicRef3.set({
      'name': "Agriculture",
      'order': 3,
    });

    final questionRef3_1 = topicRef3.collection('questions').doc('1');
    await questionRef3_1.set({
      'questionId': '1',
      'order': 1,
      'statements': [
        {
          'text': "Alfalfa, chickpea and clover are nitrogen-fixing plants.",
          'isCorrect': true,
        },
        {
          'text': "Alfalfa, chickpea and clover are not nitrogen-fixing plants.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef3_2 = topicRef3.collection('questions').doc('2');
    await questionRef3_2.set({
      'questionId': '2',
      'order': 2,
      'statements': [
        {
          'text': "The System of Rice Intensification using alternate wetting and drying can reduce seed requirement, methane production and electricity consumption.",
          'isCorrect': true,
        },
        {
          'text': "The System of Rice Intensification using alternate wetting and drying increases seed requirement, methane production and electricity consumption.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef3_3 = topicRef3.collection('questions').doc('3');
    await questionRef3_3.set({
      'questionId': '3',
      'order': 3,
      'statements': [
        {
          'text': "The Climate-Smart Village approach in India is part of a CCAFS project under CGIAR, and ICRISAT is one of CGIAR's research centres.",
          'isCorrect': true,
        },
        {
          'text': "The Climate-Smart Village approach in India is not part of a CCAFS project under CGIAR, and ICRISAT is not one of CGIAR's research centres.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef3_4 = topicRef3.collection('questions').doc('4');
    await questionRef3_4.set({
      'questionId': '4',
      'order': 4,
      'statements': [
        {
          'text': "Zero tillage allows sowing without burning previous crop residue, enables direct planting in suitable conditions and can support carbon sequestration in soil.",
          'isCorrect': true,
        },
        {
          'text': "Zero tillage requires burning previous crop residue before sowing and does not support carbon sequestration in soil.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef3_5 = topicRef3.collection('questions').doc('5');
    await questionRef3_5.set({
      'questionId': '5',
      'order': 5,
      'statements': [
        {
          'text': "Crop diversification, legume intensification and tensiometer use are considered eco-friendly agricultural practices in India.",
          'isCorrect': true,
        },
        {
          'text': "Crop diversification, legume intensification and tensiometer use are not considered eco-friendly agricultural practices in India.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef3_6 = topicRef3.collection('questions').doc('6');
    await questionRef3_6.set({
      'questionId': '6',
      'order': 6,
      'statements': [
        {
          'text': "Biochar can be used in vertical farming, can promote nitrogen-fixing microorganisms and helps the growing medium retain water for longer.",
          'isCorrect': true,
        },
        {
          'text': "Biochar cannot be used in vertical farming, does not promote nitrogen-fixing microorganisms and does not help the growing medium retain water.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef3_7 = topicRef3.collection('questions').doc('7');
    await questionRef3_7.set({
      'questionId': '7',
      'order': 7,
      'statements': [
        {
          'text': "Membership of the Global Alliance for Climate-Smart Agriculture does not create binding obligations.",
          'isCorrect': true,
        },
        {
          'text': "Membership of the Global Alliance for Climate-Smart Agriculture creates legally binding obligations for its members.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef3_8 = topicRef3.collection('questions').doc('8');
    await questionRef3_8.set({
      'questionId': '8',
      'order': 8,
      'statements': [
        {
          'text': "APEDA functions as the Secretariat for implementing the National Programme for Organic Production, and Sikkim became India's first fully organic State.",
          'isCorrect': true,
        },
        {
          'text': "APEDA does not function as the Secretariat for implementing the National Programme for Organic Production, and Sikkim was not India's first fully organic State.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef3_9 = topicRef3.collection('questions').doc('9');
    await questionRef3_9.set({
      'questionId': '9',
      'order': 9,
      'statements': [
        {
          'text': "Drip irrigation can reduce weeds and soil erosion.",
          'isCorrect': true,
        },
        {
          'text': "Drip irrigation increases weed growth and soil erosion.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef3_10 = topicRef3.collection('questions').doc('10');
    await questionRef3_10.set({
      'questionId': '10',
      'order': 10,
      'statements': [
        {
          'text': "Neem coating slows down the rate of dissolution of urea in the soil.",
          'isCorrect': true,
        },
        {
          'text': "Neem coating increases the rate of dissolution of urea in the soil.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef3_11 = topicRef3.collection('questions').doc('11');
    await questionRef3_11.set({
      'questionId': '11',
      'order': 11,
      'statements': [
        {
          'text': "Excessive or inappropriate use of nitrogenous fertilizers can increase soil acidity and cause nitrate leaching into groundwater.",
          'isCorrect': true,
        },
        {
          'text': "Excessive or inappropriate use of nitrogenous fertilizers does not increase soil acidity or cause nitrate leaching into groundwater.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef3_12 = topicRef3.collection('questions').doc('12');
    await questionRef3_12.set({
      'questionId': '12',
      'order': 12,
      'statements': [
        {
          'text': "The Command Area Development Programme was launched in 1974–75 to improve water-use efficiency.",
          'isCorrect': true,
        },
        {
          'text': "The Command Area Development Programme was launched after 2000 and was not intended to improve water-use efficiency.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef3_13 = topicRef3.collection('questions').doc('13');
    await questionRef3_13.set({
      'questionId': '13',
      'order': 13,
      'statements': [
        {
          'text': "Maize can be used to produce starch, biodiesel feedstock and alcoholic beverages.",
          'isCorrect': true,
        },
        {
          'text': "Maize cannot be used to produce starch, biodiesel feedstock or alcoholic beverages.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef3_14 = topicRef3.collection('questions').doc('14');
    await questionRef3_14.set({
      'questionId': '14',
      'order': 14,
      'statements': [
        {
          'text': "The Sustainable Sugarcane Initiative involves low seed cost, effective drip irrigation and greater scope for intercropping.",
          'isCorrect': true,
        },
        {
          'text': "The Sustainable Sugarcane Initiative involves high seed costs, inefficient irrigation and no scope for intercropping.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef3_15 = topicRef3.collection('questions').doc('15');
    await questionRef3_15.set({
      'questionId': '15',
      'order': 15,
      'statements': [
        {
          'text': "Nostoc is used as a biofertilizer.",
          'isCorrect': true,
        },
        {
          'text': "Nostoc is not used as a biofertilizer.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef3_16 = topicRef3.collection('questions').doc('16');
    await questionRef3_16.set({
      'questionId': '16',
      'order': 16,
      'statements': [
        {
          'text': "Some species of bacteria, fungi and flowering plants are employed as biopesticides.",
          'isCorrect': true,
        },
        {
          'text': "No species of bacteria, fungi or flowering plants are employed as biopesticides.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef3_17 = topicRef3.collection('questions').doc('17');
    await questionRef3_17.set({
      'questionId': '17',
      'order': 17,
      'statements': [
        {
          'text': "Micro-irrigation can reduce fertilizer and nutrient loss and can help check the receding groundwater table in some farming areas.",
          'isCorrect': true,
        },
        {
          'text': "Micro-irrigation increases fertilizer and nutrient loss and cannot help address the receding groundwater table in farming areas.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef3_18 = topicRef3.collection('questions').doc('18');
    await questionRef3_18.set({
      'questionId': '18',
      'order': 18,
      'statements': [
        {
          'text': "Salinization can make some soils impermeable.",
          'isCorrect': true,
        },
        {
          'text': "Salinization does not affect soil permeability.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef3_19 = topicRef3.collection('questions').doc('19');
    await questionRef3_19.set({
      'questionId': '19',
      'order': 19,
      'statements': [
        {
          'text': "Some species of blue-green algae can convert atmospheric nitrogen into a form that crop plants can absorb readily.",
          'isCorrect': true,
        },
        {
          'text': "Blue-green algae cannot convert atmospheric nitrogen into a form that crop plants can absorb readily.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef3_20 = topicRef3.collection('questions').doc('20');
    await questionRef3_20.set({
      'questionId': '20',
      'order': 20,
      'statements': [
        {
          'text': "Organic farming is an eco-friendly agricultural practice.",
          'isCorrect': true,
        },
        {
          'text': "Organic farming is not an eco-friendly agricultural practice.",
          'isCorrect': false,
        },
      ],
    });

    // ----------------------------------------------------------
    // Biofuels
    // ----------------------------------------------------------

    final topicRef4 = subjectRef.collection('topics').doc("biofuels");

    await topicRef4.set({
      'name': "Biofuels",
      'order': 4,
    });

    final questionRef4_1 = topicRef4.collection('questions').doc('1');
    await questionRef4_1.set({
      'questionId': '1',
      'order': 1,
      'statements': [
        {
          'text': "Among Brazil and the United States, the United States produces more ethanol, while sugarcane is the principal feedstock for ethanol production in Brazil.",
          'isCorrect': true,
        },
        {
          'text': "Among Brazil and the United States, Brazil produces less ethanol than the United States, and corn is the principal feedstock for ethanol production in Brazil.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_2 = topicRef4.collection('questions').doc('2');
    await questionRef4_2.set({
      'questionId': '2',
      'order': 2,
      'statements': [
        {
          'text': "Full battery electric vehicles, hydrogen fuel cell vehicles and fuel cell electric hybrid vehicles are all considered alternative powertrain vehicles.",
          'isCorrect': true,
        },
        {
          'text': "Full battery electric vehicles, hydrogen fuel cell vehicles and fuel cell electric hybrid vehicles are not considered alternative powertrain vehicles.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_3 = topicRef4.collection('questions').doc('3');
    await questionRef4_3.set({
      'questionId': '3',
      'order': 3,
      'statements': [
        {
          'text': "PM Surya Ghar Muft Bijli Yojana targets one crore residential rooftop solar installations, provides grassroots-level training, and aims to create more than three lakh skilled manpower.",
          'isCorrect': true,
        },
        {
          'text': "PM Surya Ghar Muft Bijli Yojana targets only ten lakh residential rooftop solar installations and does not aim to provide grassroots-level training or create skilled manpower.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_4 = topicRef4.collection('questions').doc('4');
    await questionRef4_4.set({
      'questionId': '4',
      'order': 4,
      'statements': [
        {
          'text': "Coal gasification technology can be used in the production of ethanol, nitroglycerine and urea.",
          'isCorrect': true,
        },
        {
          'text': "Coal gasification technology cannot be used in the production of ethanol, nitroglycerine or urea.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_5 = topicRef4.collection('questions').doc('5');
    await questionRef4_5.set({
      'questionId': '5',
      'order': 5,
      'statements': [
        {
          'text': "Battery storage, biomass generators, fuel cells and rooftop solar photovoltaic units are all considered Distributed Energy Resources.",
          'isCorrect': true,
        },
        {
          'text': "Battery storage, biomass generators, fuel cells and rooftop solar photovoltaic units are not considered Distributed Energy Resources.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_6 = topicRef4.collection('questions').doc('6');
    await questionRef4_6.set({
      'questionId': '6',
      'order': 6,
      'statements': [
        {
          'text': "Agricultural residues, corn grain, wastewater treatment sludge and wood mill waste can all be used as feedstock for producing Sustainable Aviation Fuel.",
          'isCorrect': true,
        },
        {
          'text': "Agricultural residues, corn grain, wastewater treatment sludge and wood mill waste cannot be used as feedstock for producing Sustainable Aviation Fuel.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_7 = topicRef4.collection('questions').doc('7');
    await questionRef4_7.set({
      'questionId': '7',
      'order': 7,
      'statements': [
        {
          'text': "Water vapour is the exhaust pipe emission from hydrogen-powered Fuel Cell Electric Vehicles.",
          'isCorrect': true,
        },
        {
          'text': "Carbon dioxide is the exhaust pipe emission from hydrogen-powered Fuel Cell Electric Vehicles.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_8 = topicRef4.collection('questions').doc('8');
    await questionRef4_8.set({
      'questionId': '8',
      'order': 8,
      'statements': [
        {
          'text': "Pumped-storage hydropower is appropriately discussed in the context of long-duration energy storage.",
          'isCorrect': true,
        },
        {
          'text': "Pumped-storage hydropower is not suitable for long-duration energy storage.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_9 = topicRef4.collection('questions').doc('9');
    await questionRef4_9.set({
      'questionId': '9',
      'order': 9,
      'statements': [
        {
          'text': "Green hydrogen can be used directly as a fuel for internal combustion, blended with natural gas, and used in hydrogen fuel cells to run vehicles.",
          'isCorrect': true,
        },
        {
          'text': "Green hydrogen cannot be used as a fuel for internal combustion engines, blended with natural gas, or used in hydrogen fuel cells to run vehicles.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_10 = topicRef4.collection('questions').doc('10');
    await questionRef4_10.set({
      'questionId': '10',
      'order': 10,
      'statements': [
        {
          'text': "Green hydrogen is expected to play a significant role in decarbonizing fertilizer plants, oil refineries and steel plants.",
          'isCorrect': true,
        },
        {
          'text': "Green hydrogen is not expected to play a significant role in decarbonizing fertilizer plants, oil refineries and steel plants.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_11 = topicRef4.collection('questions').doc('11');
    await questionRef4_11.set({
      'questionId': '11',
      'order': 11,
      'statements': [
        {
          'text': "Kerala has a fully solar-powered international airport.",
          'isCorrect': true,
        },
        {
          'text': "Kerala does not have a fully solar-powered international airport.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_12 = topicRef4.collection('questions').doc('12');
    await questionRef4_12.set({
      'questionId': '12',
      'order': 12,
      'statements': [
        {
          'text': "Cassava, damaged wheat grains, rotten potatoes and sugar beet can be used as raw materials for the production of biofuels under India's National Policy on Biofuels.",
          'isCorrect': true,
        },
        {
          'text': "Cassava, damaged wheat grains, rotten potatoes and sugar beet cannot be used as raw materials for the production of biofuels under India's National Policy on Biofuels.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_13 = topicRef4.collection('questions').doc('13');
    await questionRef4_13.set({
      'questionId': '13',
      'order': 13,
      'statements': [
        {
          'text': "Solar power can be used for both surface and submersible pumps, as well as centrifugal and piston pumps.",
          'isCorrect': true,
        },
        {
          'text': "Solar power can be used only for surface pumps and cannot be used for submersible, centrifugal or piston pumps.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_14 = topicRef4.collection('questions').doc('14');
    await questionRef4_14.set({
      'questionId': '14',
      'order': 14,
      'statements': [
        {
          'text': "Developing algae-based biofuel production requires high-level expertise and technology, and economically viable production may require large-scale facilities that can raise ecological and social concerns.",
          'isCorrect': true,
        },
        {
          'text': "Algae-based biofuel production requires little technical expertise and can be economically viable on a small scale without any ecological or social concerns.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_15 = topicRef4.collection('questions').doc('15');
    await questionRef4_15.set({
      'questionId': '15',
      'order': 15,
      'statements': [
        {
          'text': "IREDA is a Public Limited Government Company and a Non-Banking Financial Company.",
          'isCorrect': true,
        },
        {
          'text': "IREDA is neither a Public Limited Government Company nor a Non-Banking Financial Company.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_16 = topicRef4.collection('questions').doc('16');
    await questionRef4_16.set({
      'questionId': '16',
      'order': 16,
      'statements': [
        {
          'text': "Coconut shells, groundnut shells and rice husk can be used in biomass gasification.",
          'isCorrect': true,
        },
        {
          'text': "Coconut shells, groundnut shells and rice husk cannot be used in biomass gasification.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_17 = topicRef4.collection('questions').doc('17');
    await questionRef4_17.set({
      'questionId': '17',
      'order': 17,
      'statements': [
        {
          'text': "Microbial fuel cells use living organisms as catalysts to generate electricity and can be installed in wastewater treatment plants to cleanse water and produce electricity.",
          'isCorrect': true,
        },
        {
          'text': "Microbial fuel cells do not use living organisms as catalysts and cannot be used in wastewater treatment plants to generate electricity.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_18 = topicRef4.collection('questions').doc('18');
    await questionRef4_18.set({
      'questionId': '18',
      'order': 18,
      'statements': [
        {
          'text': "Maize can be cultivated for ethanol production.",
          'isCorrect': true,
        },
        {
          'text': "Maize cannot be cultivated for ethanol production.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_19 = topicRef4.collection('questions').doc('19');
    await questionRef4_19.set({
      'questionId': '19',
      'order': 19,
      'statements': [
        {
          'text': "Pongamia pinnata grows naturally in many arid regions of India, and its seeds are rich in lipid content with nearly half being oleic acid.",
          'isCorrect': true,
        },
        {
          'text': "Pongamia pinnata does not grow naturally in arid regions of India, and its seeds are not rich in lipid content.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_20 = topicRef4.collection('questions').doc('20');
    await questionRef4_20.set({
      'questionId': '20',
      'order': 20,
      'statements': [
        {
          'text': "Ethanol as a viable biofuel can be obtained from sugarcane.",
          'isCorrect': true,
        },
        {
          'text': "Ethanol as a viable biofuel cannot be obtained from sugarcane.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_21 = topicRef4.collection('questions').doc('21');
    await questionRef4_21.set({
      'questionId': '21',
      'order': 21,
      'statements': [
        {
          'text': "The Ministry of Rural Development implements the Biodiesel Mission in India.",
          'isCorrect': true,
        },
        {
          'text': "The Ministry of Rural Development does not implement the Biodiesel Mission in India.",
          'isCorrect': false,
        },
      ],
    });

    print('Environment (continued) seeding completed.');
  }
  static Future<void> seedEnvironment() async {
    final subjectRef =
        _firestore.collection('subjects').doc('environment');

    await subjectRef.set({
      'name': 'Environment and Ecology',
      'order': 5,
      'hasSections': false,
    });

    // ----------------------------------------------------------
    // Indian Initiatives for Environment Protection
    // ----------------------------------------------------------

    final topicRef1 = subjectRef.collection('topics').doc("indian_initiatives_for_environment_protection");

    await topicRef1.set({
      'name': "Indian Initiatives for Environment Protection",
      'order': 1,
    });

    final questionRef1_1 = topicRef1.collection('questions').doc('1');
    await questionRef1_1.set({
      'questionId': '1',
      'order': 1,
      'statements': [
        {
          'text': "Once an area is notified as a 'Community Reserve', hunting is not allowed in that area, and the people of that area are allowed to collect non-timber forest produce.",
          'isCorrect': true,
        },
        {
          'text': "Once an area is notified as a 'Community Reserve', the Chief Wildlife Warden of the State becomes the governing authority of that forest, and people of that area are allowed traditional agricultural practices.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_2 = topicRef1.collection('questions').doc('2');
    await questionRef1_2.set({
      'questionId': '2',
      'order': 2,
      'statements': [
        {
          'text': "Within a State, the notification of an area as a Scheduled Area takes place through an order of the President, and the largest administrative unit forming the Scheduled Area is the District, with the lowest being a cluster of villages within a Block.",
          'isCorrect': true,
        },
        {
          'text': "The Chief Ministers of the concerned States are required to submit annual reports to the Union Home Ministry on the administration of Scheduled Areas in the States.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_3 = topicRef1.collection('questions').doc('3');
    await questionRef1_3.set({
      'questionId': '3',
      'order': 3,
      'statements': [
        {
          'text': "In India, the Biodiversity Management Committees are key to realizing the objectives of the Nagoya Protocol, and they have important functions in determining access and benefit sharing, including the power to levy collection fees on access to biological resources within their jurisdiction.",
          'isCorrect': true,
        },
        {
          'text': "In India, the Biodiversity Management Committees have no role in realizing the objectives of the Nagoya Protocol, and they have no power to levy collection fees on access to biological resources.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_4 = topicRef1.collection('questions').doc('4');
    await questionRef1_4.set({
      'questionId': '4',
      'order': 4,
      'statements': [
        {
          'text': "The Central Ground Water Authority has been constituted under the Environment (Protection) Act, 1986.",
          'isCorrect': true,
        },
        {
          'text': "The Central Water Commission has been constituted under the Environment (Protection) Act, 1986.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_5 = topicRef1.collection('questions').doc('5');
    await questionRef1_5.set({
      'questionId': '5',
      'order': 5,
      'statements': [
        {
          'text': "When a wild animal is declared protected under Indian wildlife protection laws, such an animal is entitled to equal protection whether it is found inside protected areas or outside them.",
          'isCorrect': true,
        },
        {
          'text': "Wild animals are the sole property of the government, and mere apprehension of a protected wild animal becoming a danger to human life is sufficient ground for its capture or killing.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_6 = topicRef1.collection('questions').doc('6');
    await questionRef1_6.set({
      'questionId': '6',
      'order': 6,
      'statements': [
        {
          'text': "Desert National Park is spread over two districts, and it is one of the natural habitats of the Great Indian Bustard.",
          'isCorrect': true,
        },
        {
          'text': "There is no human habitation inside Desert National Park.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_7 = topicRef1.collection('questions').doc('7');
    await questionRef1_7.set({
      'questionId': '7',
      'order': 7,
      'statements': [
        {
          'text': "Among the listed Tiger Reserves, Nagarjunasagar-Srisailam has the largest area under 'Critical Tiger Habitat'.",
          'isCorrect': true,
        },
        {
          'text': "Among the listed Tiger Reserves, Corbett has the largest area under 'Critical Tiger Habitat'.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_8 = topicRef1.collection('questions').doc('8');
    await questionRef1_8.set({
      'questionId': '8',
      'order': 8,
      'statements': [
        {
          'text': "If a particular plant species is placed under Schedule VI of the Wildlife Protection Act, 1972, a licence is required to cultivate that plant.",
          'isCorrect': true,
        },
        {
          'text': "If a particular plant species is placed under Schedule VI of the Wildlife Protection Act, 1972, such a plant cannot be cultivated under any circumstances.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_9 = topicRef1.collection('questions').doc('9');
    await questionRef1_9.set({
      'questionId': '9',
      'order': 9,
      'statements': [
        {
          'text': "Nagarhole National Park, Sathyamangalam Tiger Reserve, and Wayanad Wildlife Sanctuary are located in the Cauvery basin.",
          'isCorrect': true,
        },
        {
          'text': "Papikonda National Park is located in the Cauvery basin.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_10 = topicRef1.collection('questions').doc('10');
    await questionRef1_10.set({
      'questionId': '10',
      'order': 10,
      'statements': [
        {
          'text': "Kanha National Park is well-known for the conservation of a sub-species of the Indian swamp deer (Barasingha) that thrives on hard ground and is exclusively graminivorous.",
          'isCorrect': true,
        },
        {
          'text': "Manas National Park is well-known for the conservation of a sub-species of the Indian swamp deer (Barasingha) that thrives on hard ground and is exclusively graminivorous.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_11 = topicRef1.collection('questions').doc('11');
    await questionRef1_11.set({
      'questionId': '11',
      'order': 11,
      'statements': [
        {
          'text': "Valley of Flowers National Park lies completely in the temperate alpine zone.",
          'isCorrect': true,
        },
        {
          'text': "Namdapha National Park lies completely in the temperate alpine zone.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_12 = topicRef1.collection('questions').doc('12');
    await questionRef1_12.set({
      'questionId': '12',
      'order': 12,
      'statements': [
        {
          'text': "Neyyar, Peppara and Shendurney Wildlife Sanctuaries, and the Kalakad Mundanthurai Tiger Reserve, are part of the Agasthyamala Biosphere Reserve.",
          'isCorrect': true,
        },
        {
          'text': "Mudumalai, Sathyamangalam and Wayanad Wildlife Sanctuaries, and Silent Valley National Park, are part of the Agasthyamala Biosphere Reserve.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_13 = topicRef1.collection('questions').doc('13');
    await questionRef1_13.set({
      'questionId': '13',
      'order': 13,
      'statements': [
        {
          'text': "The Wetlands (Conservation and Management) Rules, 2010 also encompass the drainage area or catchment regions of the wetlands, as determined by the authority.",
          'isCorrect': true,
        },
        {
          'text': "Under the Ramsar Convention, it is mandatory for the Government of India to protect and conserve all the wetlands in the territory of India.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_14 = topicRef1.collection('questions').doc('14');
    await questionRef1_14.set({
      'questionId': '14',
      'order': 14,
      'statements': [
        {
          'text': "As per law, the Compensatory Afforestation Fund Management and Planning Authority exists at both the National and State levels.",
          'isCorrect': true,
        },
        {
          'text': "People's participation is mandatory in the compensatory afforestation programmes carried out under the Compensatory Afforestation Fund Act, 2016.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_15 = topicRef1.collection('questions').doc('15');
    await questionRef1_15.set({
      'questionId': '15',
      'order': 15,
      'statements': [
        {
          'text': "Pakhui Wildlife Sanctuary is located in Arunachal Pradesh.",
          'isCorrect': true,
        },
        {
          'text': "Pakhui Wildlife Sanctuary is located in Nagaland.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_16 = topicRef1.collection('questions').doc('16');
    await questionRef1_16.set({
      'questionId': '16',
      'order': 16,
      'statements': [
        {
          'text': "The definition of 'Critical Wildlife Habitat' is incorporated in the Forest Rights Act, 2006, and the Baigas were, for the first time in India, given Habitat Rights.",
          'isCorrect': true,
        },
        {
          'text': "The Union Ministry of Environment, Forest and Climate Change officially decides and declares Habitat Rights for Particularly Vulnerable Tribal Groups in any part of India.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_17 = topicRef1.collection('questions').doc('17');
    await questionRef1_17.set({
      'questionId': '17',
      'order': 17,
      'statements': [
        {
          'text': "According to the Wildlife (Protection) Act, 1972, the Gharial, the Indian wild ass, and the Wild buffalo cannot be hunted by any person except under provisions provided by law.",
          'isCorrect': true,
        },
        {
          'text': "According to the Wildlife (Protection) Act, 1972, only the Gharial cannot be hunted by any person except under provisions provided by law.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_18 = topicRef1.collection('questions').doc('18');
    await questionRef1_18.set({
      'questionId': '18',
      'order': 18,
      'statements': [
        {
          'text': "The term 'M-STrIPES' is used in the context of the maintenance and monitoring of Tiger Reserves.",
          'isCorrect': true,
        },
        {
          'text': "The term 'M-STrIPES' is used in the context of captive breeding of wild fauna.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_19 = topicRef1.collection('questions').doc('19');
    await questionRef1_19.set({
      'questionId': '19',
      'order': 19,
      'statements': [
        {
          'text': "If a species of tortoise is declared protected under Schedule I of the Wildlife (Protection) Act, 1972, it enjoys the same level of protection as the tiger.",
          'isCorrect': true,
        },
        {
          'text': "If a species of tortoise is declared protected under Schedule I of the Wildlife (Protection) Act, 1972, it implies that it no longer exists in the wild and that it is impossible to prevent its extinction.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_20 = topicRef1.collection('questions').doc('20');
    await questionRef1_20.set({
      'questionId': '20',
      'order': 20,
      'statements': [
        {
          'text': "There was a proposal to translocate some lions from their natural habitat in Gujarat to the Kuno Palpur Wildlife Sanctuary.",
          'isCorrect': true,
        },
        {
          'text': "There was a proposal to translocate some lions from their natural habitat in Gujarat to Sariska National Park.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_21 = topicRef1.collection('questions').doc('21');
    await questionRef1_21.set({
      'questionId': '21',
      'order': 21,
      'statements': [
        {
          'text': "From the ecological point of view, the Sathyamangalam Tiger Reserve is considered a good link between the Eastern Ghats and the Western Ghats.",
          'isCorrect': true,
        },
        {
          'text': "From the ecological point of view, the Nallamala Forest is considered a good link between the Eastern Ghats and the Western Ghats.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_22 = topicRef1.collection('questions').doc('22');
    await questionRef1_22.set({
      'questionId': '22',
      'order': 22,
      'statements': [
        {
          'text': "River basin is the unit of planning and management under the National Ganga River Basin Authority, which spearheads river conservation efforts at the national level.",
          'isCorrect': true,
        },
        {
          'text': "One of the Chief Ministers of the States through which the Ganga flows becomes the Chairman of the National Ganga River Basin Authority, on a rotation basis.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_23 = topicRef1.collection('questions').doc('23');
    await questionRef1_23.set({
      'questionId': '23',
      'order': 23,
      'statements': [
        {
          'text': "The Green India Mission of the Government of India aims at restoring and enhancing forest cover and responding to climate change through a combination of adaptation and mitigation measures.",
          'isCorrect': true,
        },
        {
          'text': "The Green India Mission of the Government of India aims at incorporating environmental costs and benefits into Union and State Budgets through 'green accounting', and at launching a second green revolution to enhance agricultural output.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_24 = topicRef1.collection('questions').doc('24');
    await questionRef1_24.set({
      'questionId': '24',
      'order': 24,
      'statements': [
        {
          'text': "Namdapha National Park has a climate that varies from tropical to subtropical, temperate, and arctic.",
          'isCorrect': true,
        },
        {
          'text': "Nandadevi National Park has a climate that varies from tropical to subtropical, temperate, and arctic.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_25 = topicRef1.collection('questions').doc('25');
    await questionRef1_25.set({
      'questionId': '25',
      'order': 25,
      'statements': [
        {
          'text': "Keibul Lamjao National Park is unique in being a swamp with floating vegetation that supports rich biodiversity.",
          'isCorrect': true,
        },
        {
          'text': "Bhitarkanika National Park is unique in being a swamp with floating vegetation that supports rich biodiversity.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_26 = topicRef1.collection('questions').doc('26');
    await questionRef1_26.set({
      'questionId': '26',
      'order': 26,
      'statements': [
        {
          'text': "Eco-Sensitive Zones are not declared under the Wildlife (Protection) Act, 1972, and their purpose is not to prohibit all kinds of human activities except agriculture.",
          'isCorrect': true,
        },
        {
          'text': "Eco-Sensitive Zones are declared under the Wildlife (Protection) Act, 1972.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_27 = topicRef1.collection('questions').doc('27');
    await questionRef1_27.set({
      'questionId': '27',
      'order': 27,
      'statements': [
        {
          'text': "The National Tiger Conservation Authority is a statutory body, and the National Ganga River Basin Authority is chaired by the Prime Minister.",
          'isCorrect': true,
        },
        {
          'text': "The Animal Welfare Board of India is established under the Environment (Protection) Act, 1986.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_28 = topicRef1.collection('questions').doc('28');
    await questionRef1_28.set({
      'questionId': '28',
      'order': 28,
      'statements': [
        {
          'text': "Dampa Tiger Reserve is correctly matched with Mizoram, and Saramati Peak is correctly matched with Nagaland.",
          'isCorrect': true,
        },
        {
          'text': "Gumti Wildlife Sanctuary is correctly matched with Sikkim.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_29 = topicRef1.collection('questions').doc('29');
    await questionRef1_29.set({
      'questionId': '29',
      'order': 29,
      'statements': [
        {
          'text': "Harike Wetlands is correctly matched with the confluence of the Beas and Satluj (Sutlej) rivers.",
          'isCorrect': true,
        },
        {
          'text': "Keoladeo Ghana National Park is correctly matched with the confluence of the Banas and Chambal rivers, and Kolleru Lake is correctly matched with the confluence of the Musi and Krishna rivers.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_30 = topicRef1.collection('questions').doc('30');
    await questionRef1_30.set({
      'questionId': '30',
      'order': 30,
      'statements': [
        {
          'text': "Prevention of soil runoff, rainwater harvesting and recharge of the groundwater table, and regeneration of natural vegetation are benefits of implementing the Integrated Watershed Development Programme.",
          'isCorrect': true,
        },
        {
          'text': "Linking the country's perennial rivers with seasonal rivers is a benefit of implementing the Integrated Watershed Development Programme.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_31 = topicRef1.collection('questions').doc('31');
    await questionRef1_31.set({
      'questionId': '31',
      'order': 31,
      'statements': [
        {
          'text': "None of the listed National Park-river pairs - Corbett with the Ganga, Kaziranga with the Manas, and Silent Valley with the Kaveri - is correctly matched.",
          'isCorrect': true,
        },
        {
          'text': "Corbett National Park is correctly matched with the river Ganga flowing through it.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_32 = topicRef1.collection('questions').doc('32');
    await questionRef1_32.set({
      'questionId': '32',
      'order': 32,
      'statements': [
        {
          'text': "Nokrek Biosphere Reserve is correctly matched with the Garo Hills.",
          'isCorrect': true,
        },
        {
          'text': "Loktak Lake is correctly matched with the Barail Range, and Namdapha National Park is correctly matched with the Dafla Hills.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_33 = topicRef1.collection('questions').doc('33');
    await questionRef1_33.set({
      'questionId': '33',
      'order': 33,
      'statements': [
        {
          'text': "The country's total geographical area under the category of wetlands is recorded more in Gujarat as compared to other States.",
          'isCorrect': true,
        },
        {
          'text': "In India, the total geographical area of coastal wetlands is larger than that of inland wetlands.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_34 = topicRef1.collection('questions').doc('34');
    await questionRef1_34.set({
      'questionId': '34',
      'order': 34,
      'statements': [
        {
          'text': "Bandipur, Manas, and Sunderbans are declared Tiger Reserves.",
          'isCorrect': true,
        },
        {
          'text': "Bhitarkanika is declared a Tiger Reserve.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_35 = topicRef1.collection('questions').doc('35');
    await questionRef1_35.set({
      'questionId': '35',
      'order': 35,
      'statements': [
        {
          'text': "The National Biodiversity Authority checks biopiracy and protects indigenous and traditional genetic resources, and applications for Intellectual Property Rights related to genetic or biological resources cannot be made without its approval.",
          'isCorrect': true,
        },
        {
          'text': "The National Biodiversity Authority directly monitors and supervises scientific research on the genetic modification of crop plants.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_36 = topicRef1.collection('questions').doc('36');
    await questionRef1_36.set({
      'questionId': '36',
      'order': 36,
      'statements': [
        {
          'text': "In National Parks in India, local people are not allowed to collect and use biomass.",
          'isCorrect': true,
        },
        {
          'text': "In Wildlife Sanctuaries in India, local people are not allowed to collect and use biomass.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_37 = topicRef1.collection('questions').doc('37');
    await questionRef1_37.set({
      'questionId': '37',
      'order': 37,
      'statements': [
        {
          'text': "The Mining and Mineral Development (Regulation) Act, 1957, the Customs Act, 1962, and the Indian Forest Act, 1927 have relevance to biodiversity conservation in India.",
          'isCorrect': true,
        },
        {
          'text': "The Import and Export (Control) Act, 1947 has relevance to biodiversity conservation in India.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_38 = topicRef1.collection('questions').doc('38');
    await questionRef1_38.set({
      'questionId': '38',
      'order': 38,
      'statements': [
        {
          'text': "Bhitarkanika, Orissa is well known for the Salt Water Crocodile, and Desert National Park, Rajasthan is well known for the Great Indian Bustard.",
          'isCorrect': true,
        },
        {
          'text': "Eravikulam, Kerala is well known for the Hoolock Gibbon.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_39 = topicRef1.collection('questions').doc('39');
    await questionRef1_39.set({
      'questionId': '39',
      'order': 39,
      'statements': [
        {
          'text': "India should conserve all Ramsar sites through an ecosystem approach and allow their simultaneous and sustainable use.",
          'isCorrect': true,
        },
        {
          'text': "India should keep all Ramsar sites completely inaccessible to man so that they will not be exploited.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_40 = topicRef1.collection('questions').doc('40');
    await questionRef1_40.set({
      'questionId': '40',
      'order': 40,
      'statements': [
        {
          'text': "The boundaries of a National Park are defined by legislation, and in a Wildlife Sanctuary, limited biotic interference is permitted.",
          'isCorrect': true,
        },
        {
          'text': "A Biosphere Reserve is declared to conserve a few specific species of flora and fauna.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_41 = topicRef1.collection('questions').doc('41');
    await questionRef1_41.set({
      'questionId': '41',
      'order': 41,
      'statements': [
        {
          'text': "Appropriate alternate technologies are not sufficiently available, and India cannot invest huge funds in research and development - these are possible limitations of India in mitigating global warming.",
          'isCorrect': true,
        },
        {
          'text': "Many developed countries have already set up their polluting industries in India - this is a possible limitation of India in mitigating global warming.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_42 = topicRef1.collection('questions').doc('42');
    await questionRef1_42.set({
      'questionId': '42',
      'order': 42,
      'statements': [
        {
          'text': "The Ministry of Environment and Forests implements the Cartagena Protocol on Biosafety in India.",
          'isCorrect': true,
        },
        {
          'text': "The Ministry of Science and Technology implements the Cartagena Protocol on Biosafety in India.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_43 = topicRef1.collection('questions').doc('43');
    await questionRef1_43.set({
      'questionId': '43',
      'order': 43,
      'statements': [
        {
          'text': "Rajasthan has the largest inland saline wetland among Indian States.",
          'isCorrect': true,
        },
        {
          'text': "Gujarat has the largest inland saline wetland among Indian States.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_44 = topicRef1.collection('questions').doc('44');
    await questionRef1_44.set({
      'questionId': '44',
      'order': 44,
      'statements': [
        {
          'text': "The headquarters of the Animal Welfare Board of India is located in Chennai.",
          'isCorrect': true,
        },
        {
          'text': "The headquarters of the Animal Welfare Board of India is located in Kolkata.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_45 = topicRef1.collection('questions').doc('45');
    await questionRef1_45.set({
      'questionId': '45',
      'order': 45,
      'statements': [
        {
          'text': "Among the listed regions, the Andaman and Nicobar Islands has the maximum number of National Parks.",
          'isCorrect': true,
        },
        {
          'text': "Among the listed regions, Assam has the maximum number of National Parks.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_46 = topicRef1.collection('questions').doc('46');
    await questionRef1_46.set({
      'questionId': '46',
      'order': 46,
      'statements': [
        {
          'text': "Kanchenjunga is not one of the four Indian Biosphere Reserves that, as of 2008, had been recognized on the World Network by UNESCO.",
          'isCorrect': true,
        },
        {
          'text': "Gulf of Mannar is not one of the four Indian Biosphere Reserves that, as of 2008, had been recognized on the World Network by UNESCO.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_47 = topicRef1.collection('questions').doc('47');
    await questionRef1_47.set({
      'questionId': '47',
      'order': 47,
      'statements': [
        {
          'text': "Indravati National Park is located in the Bastar region.",
          'isCorrect': true,
        },
        {
          'text': "Bandhavgarh National Park is located in the Bastar region.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_48 = topicRef1.collection('questions').doc('48');
    await questionRef1_48.set({
      'questionId': '48',
      'order': 48,
      'statements': [
        {
          'text': "Indira Gandhi Wildlife Sanctuary and National Park is also known as Top Slip.",
          'isCorrect': true,
        },
        {
          'text': "Periyar Wildlife Sanctuary is also known as Top Slip.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_49 = topicRef1.collection('questions').doc('49');
    await questionRef1_49.set({
      'questionId': '49',
      'order': 49,
      'statements': [
        {
          'text': "Chandra Prabha is near Varanasi, Karera is near Jhansi, Jaisamand is near Udaipur, and Nahargarh is near Jaipur.",
          'isCorrect': true,
        },
        {
          'text': "Chandra Prabha is near Jaipur, and Nahargarh is near Varanasi.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_50 = topicRef1.collection('questions').doc('50');
    await questionRef1_50.set({
      'questionId': '50',
      'order': 50,
      'statements': [
        {
          'text': "Bundala Biosphere Reserve, added to UNESCO's Man and Biosphere network, is located in Sri Lanka.",
          'isCorrect': true,
        },
        {
          'text': "Bundala Biosphere Reserve, added to UNESCO's Man and Biosphere network, is located in India.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_51 = topicRef1.collection('questions').doc('51');
    await questionRef1_51.set({
      'questionId': '51',
      'order': 51,
      'statements': [
        {
          'text': "Nallamalai is not one of India's Biosphere Reserves.",
          'isCorrect': true,
        },
        {
          'text': "Nilgiri is not one of India's Biosphere Reserves.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_52 = topicRef1.collection('questions').doc('52');
    await questionRef1_52.set({
      'questionId': '52',
      'order': 52,
      'statements': [
        {
          'text': "Bondla Wildlife Sanctuary is in Goa, Kangerghat National Park is in Chhattisgarh, Orang Sanctuary is in Assam, and Ushakothi Wildlife Sanctuary is in Orissa.",
          'isCorrect': true,
        },
        {
          'text': "Bondla Wildlife Sanctuary is in Assam, and Orang Sanctuary is in Goa.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_53 = topicRef1.collection('questions').doc('53');
    await questionRef1_53.set({
      'questionId': '53',
      'order': 53,
      'statements': [
        {
          'text': "Kanger Ghati National Park is in Chhattisgarh, Nagerhole National Park is in Karnataka, Kugti Wildlife Sanctuary is in Himachal Pradesh, and Sultanpur Bird Sanctuary is in Haryana.",
          'isCorrect': true,
        },
        {
          'text': "Kanger Ghati National Park is in Karnataka, and Sultanpur Bird Sanctuary is in Himachal Pradesh.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_54 = topicRef1.collection('questions').doc('54');
    await questionRef1_54.set({
      'questionId': '54',
      'order': 54,
      'statements': [
        {
          'text': "Similipal Biosphere Reserve is in Orissa, Dehang Debang Biosphere Reserve is in Arunachal Pradesh, Nokrek Biosphere Reserve is in Meghalaya, and Kanchenjunga Biosphere Reserve is in Sikkim.",
          'isCorrect': true,
        },
        {
          'text': "Similipal Biosphere Reserve is in Sikkim, and Kanchenjunga Biosphere Reserve is in Orissa.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_55 = topicRef1.collection('questions').doc('55');
    await questionRef1_55.set({
      'questionId': '55',
      'order': 55,
      'statements': [
        {
          'text': "Gulf of Mannar is one of India's biosphere reserves, the Ganga Action Plan Phase II has been merged with the National River Conservation Plan, and the Environmental Information System (ENVIS) acts as a decentralised information network for environmental information.",
          'isCorrect': true,
        },
        {
          'text': "The National Museum of Natural History at New Delhi imparts non-formal education in environment and conservation.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_56 = topicRef1.collection('questions').doc('56');
    await questionRef1_56.set({
      'questionId': '56',
      'order': 56,
      'statements': [
        {
          'text': "The first marine sanctuary in India, having coral reefs, mollusca, dolphins, tortoises and various sea birds, was established in the Gulf of Kachchh.",
          'isCorrect': true,
        },
        {
          'text': "The first marine sanctuary in India, having coral reefs, mollusca, dolphins, tortoises and various sea birds, was established in Lakshadweep.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_57 = topicRef1.collection('questions').doc('57');
    await questionRef1_57.set({
      'questionId': '57',
      'order': 57,
      'statements': [
        {
          'text': "The minimum land area recommended for forest cover to maintain proper ecological balance in India is 33%.",
          'isCorrect': true,
        },
        {
          'text': "The minimum land area recommended for forest cover to maintain proper ecological balance in India is 25%.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_58 = topicRef1.collection('questions').doc('58');
    await questionRef1_58.set({
      'questionId': '58',
      'order': 58,
      'statements': [
        {
          'text': "The Water (Cess) Act, 1977 does not deal with the protection of the environment.",
          'isCorrect': true,
        },
        {
          'text': "The Forest (Conservation) Act, 1980 does not deal with the protection of the environment.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_59 = topicRef1.collection('questions').doc('59');
    await questionRef1_59.set({
      'questionId': '59',
      'order': 59,
      'statements': [
        {
          'text': "The Western Ghats region of India is regarded as an 'ecological hot spot'.",
          'isCorrect': true,
        },
        {
          'text': "The Eastern Ghats region of India is regarded as an 'ecological hot spot'.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_60 = topicRef1.collection('questions').doc('60');
    await questionRef1_60.set({
      'questionId': '60',
      'order': 60,
      'statements': [
        {
          'text': "The National Forest Policy of 1988 includes afforestation and development of wastelands, reforestation and replantation in existing forests, and encouraging wood substitutes and other types of fuel.",
          'isCorrect': true,
        },
        {
          'text': "The National Forest Policy of 1988 includes promotion of wide use of insecticides and pesticides to restrict the loss of forest area from degradation caused by pests and insects.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef1_61 = topicRef1.collection('questions').doc('61');
    await questionRef1_61.set({
      'questionId': '61',
      'order': 61,
      'statements': [
        {
          'text': "Among the listed sites, the Gulf of Kachchh does not belong to the Biosphere Reserves set up so far.",
          'isCorrect': true,
        },
        {
          'text': "Among the listed sites, Great Nicobar does not belong to the Biosphere Reserves set up so far.",
          'isCorrect': false,
        },
      ],
    });

    // ----------------------------------------------------------
    // Global Initiatives for Environment Protection
    // ----------------------------------------------------------

    final topicRef2 = subjectRef.collection('topics').doc("global_initiatives_for_environment_protection");

    await topicRef2.set({
      'name': "Global Initiatives for Environment Protection",
      'order': 2,
    });

    final questionRef2_1 = topicRef2.collection('questions').doc('1');
    await questionRef2_1.set({
      'questionId': '1',
      'order': 1,
      'statements': [
        {
          'text': "Article 6 of the Paris Agreement sets out the principles of carbon markets and intends to promote inter-country non-market strategies to reach their climate targets, both of which explain why it is frequently discussed in global discussions on sustainable development and climate change.",
          'isCorrect': true,
        },
        {
          'text': "Neither the carbon market principles nor the non-market strategies mentioned in Article 6 of the Paris Agreement explain why it is frequently discussed in global discussions on climate change.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_2 = topicRef2.collection('questions').doc('2');
    await questionRef2_2.set({
      'questionId': '2',
      'order': 2,
      'statements': [
        {
          'text': "India refrained from signing the COP28 'Declaration on Climate and Health' because decarbonizing India's health sector could compromise the resilience of its healthcare system, not because the Declaration is a binding one that makes decarbonization mandatory.",
          'isCorrect': true,
        },
        {
          'text': "The COP28 Declaration on Climate and Health is a binding declaration, and if signed, it becomes mandatory to decarbonize the health sector.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_3 = topicRef2.collection('questions').doc('3');
    await questionRef2_3.set({
      'questionId': '3',
      'order': 3,
      'statements': [
        {
          'text': "The Asian Development Bank (ADB) launched the 'Nature Solutions Finance Hub for Asia and the Pacific'.",
          'isCorrect': true,
        },
        {
          'text': "The New Development Bank (NDB) launched the 'Nature Solutions Finance Hub for Asia and the Pacific'.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_4 = topicRef2.collection('questions').doc('4');
    await questionRef2_4.set({
      'questionId': '4',
      'order': 4,
      'statements': [
        {
          'text': "The European Union has enacted the Nature Restoration Law (NRL) to tackle climate change and biodiversity loss.",
          'isCorrect': true,
        },
        {
          'text': "The World Bank has enacted the Nature Restoration Law (NRL) to tackle climate change and biodiversity loss.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_5 = topicRef2.collection('questions').doc('5');
    await questionRef2_5.set({
      'questionId': '5',
      'order': 5,
      'statements': [
        {
          'text': "The European Parliament approved the Net-Zero Industry Act recently.",
          'isCorrect': true,
        },
        {
          'text': "The European Union intends to achieve carbon neutrality by 2040 and therefore aims to develop all of its own clean technology by that time.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_6 = topicRef2.collection('questions').doc('6');
    await questionRef2_6.set({
      'questionId': '6',
      'order': 6,
      'statements': [
        {
          'text': "The 'Invasive Species Specialist Group', which develops the Global Invasive Species Database, belongs to the International Union for Conservation of Nature.",
          'isCorrect': true,
        },
        {
          'text': "The 'Invasive Species Specialist Group', which develops the Global Invasive Species Database, belongs to the United Nations Environment Programme.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_7 = topicRef2.collection('questions').doc('7');
    await questionRef2_7.set({
      'questionId': '7',
      'order': 7,
      'statements': [
        {
          'text': "Carbon markets are likely to be one of the most widespread tools in the fight against climate change, and carbon markets do transfer resources from the private sector to the State, though this is not the explanation for why they are widespread.",
          'isCorrect': true,
        },
        {
          'text': "Carbon markets do not transfer any resources from the private sector to the State.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_8 = topicRef2.collection('questions').doc('8');
    await questionRef2_8.set({
      'questionId': '8',
      'order': 8,
      'statements': [
        {
          'text': "'Climate Action Tracker', which monitors the emission reduction pledges of different countries, is a database created by a coalition of research organisations.",
          'isCorrect': true,
        },
        {
          'text': "'Climate Action Tracker', which monitors the emission reduction pledges of different countries, is a wing of the Intergovernmental Panel on Climate Change.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_9 = topicRef2.collection('questions').doc('9');
    await questionRef2_9.set({
      'questionId': '9',
      'order': 9,
      'statements': [
        {
          'text': "'The Climate Group' is an international non-profit organization that drives climate action by building and running large networks, EP100 brings together leading companies committed to driving innovation in energy efficiency while delivering on emission reduction goals, and some Indian companies are members of EP100.",
          'isCorrect': true,
        },
        {
          'text': "The International Energy Agency, in partnership with the Climate Group, launched the global initiative 'EP100', and the International Energy Agency is the Secretariat to the 'Under2 Coalition'.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_10 = topicRef2.collection('questions').doc('10');
    await questionRef2_10.set({
      'questionId': '10',
      'order': 10,
      'statements': [
        {
          'text': "The 'Miyawaki method' is well known for the creation of mini forests in urban areas.",
          'isCorrect': true,
        },
        {
          'text': "The 'Miyawaki method' is well known for the promotion of commercial farming in arid and semi-arid areas.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_11 = topicRef2.collection('questions').doc('11');
    await questionRef2_11.set({
      'questionId': '11',
      'order': 11,
      'statements': [
        {
          'text': "The 'Common Carbon Metric', supported by UNEP, has been developed for assessing the carbon footprint of building operations around the world.",
          'isCorrect': true,
        },
        {
          'text': "The 'Common Carbon Metric', supported by UNEP, has been developed for assessing the overall carbon footprint caused by the use of fossil fuels by the world in a unit of time.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_12 = topicRef2.collection('questions').doc('12');
    await questionRef2_12.set({
      'questionId': '12',
      'order': 12,
      'statements': [
        {
          'text': "The New York Declaration on Forests was first endorsed at the United Nations Climate Summit in 2014, it endorses a global timeline to end the loss of forests, and it is endorsed by governments, big companies and indigenous communities.",
          'isCorrect': true,
        },
        {
          'text': "The New York Declaration on Forests is a legally binding international declaration, and India was one of the signatories at its inception.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_13 = topicRef2.collection('questions').doc('13');
    await questionRef2_13.set({
      'questionId': '13',
      'order': 13,
      'statements': [
        {
          'text': "'Momentum for Change: Climate Neutral Now' is an initiative launched by the UNFCCC Secretariat.",
          'isCorrect': true,
        },
        {
          'text': "'Momentum for Change: Climate Neutral Now' is an initiative launched by the UNEP Secretariat.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_14 = topicRef2.collection('questions').doc('14');
    await questionRef2_14.set({
      'questionId': '14',
      'order': 14,
      'statements': [
        {
          'text': "The Partnership for Action on Green Economy (PAGE) emerged at the United Nations Conference on Sustainable Development, 2012, in Rio De Janeiro.",
          'isCorrect': true,
        },
        {
          'text': "The Partnership for Action on Green Economy (PAGE) emerged at the Earth Summit on Sustainable Development, 2002, in Johannesburg.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_15 = topicRef2.collection('questions').doc('15');
    await questionRef2_15.set({
      'questionId': '15',
      'order': 15,
      'statements': [
        {
          'text': "The 'Global Climate Change Alliance' is an initiative of the European Union that provides technical and financial support to targeted developing countries to integrate climate change into their development policies and budgets.",
          'isCorrect': true,
        },
        {
          'text': "The 'Global Climate Change Alliance' is coordinated by the World Resources Institute (WRI) and the World Business Council for Sustainable Development (WBCSD).",
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_16 = topicRef2.collection('questions').doc('16');
    await questionRef2_16.set({
      'questionId': '16',
      'order': 16,
      'statements': [
        {
          'text': "The Climate and Clean Air Coalition (CCAC) to Reduce Short Lived Climate Pollutants focuses on methane, black carbon, and hydrofluorocarbons.",
          'isCorrect': true,
        },
        {
          'text': "The Climate and Clean Air Coalition (CCAC) to Reduce Short Lived Climate Pollutants is a unique initiative of the G20 group of countries.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_17 = topicRef2.collection('questions').doc('17');
    await questionRef2_17.set({
      'questionId': '17',
      'order': 17,
      'statements': [
        {
          'text': "The mission of TRAFFIC is to ensure that trade in wild plants and animals is not a threat to the conservation of nature.",
          'isCorrect': true,
        },
        {
          'text': "TRAFFIC is a bureau under the United Nations Environment Programme (UNEP).",
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_18 = topicRef2.collection('questions').doc('18');
    await questionRef2_18.set({
      'questionId': '18',
      'order': 18,
      'statements': [
        {
          'text': "'The Economics of Ecosystems and Biodiversity (TEEB)' is a global initiative that focuses on drawing attention to the economic benefits of biodiversity, and it presents an approach that can help decision-makers recognize, demonstrate and capture the value of ecosystems and biodiversity.",
          'isCorrect': true,
        },
        {
          'text': "'The Economics of Ecosystems and Biodiversity (TEEB)' is an initiative hosted by UNEP, IMF and the World Economic Forum.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_19 = topicRef2.collection('questions').doc('19');
    await questionRef2_19.set({
      'questionId': '19',
      'order': 19,
      'statements': [
        {
          'text': "Proper design and effective implementation of the UN-REDD+ Programme can significantly contribute to the protection of biodiversity, the resilience of forest ecosystems, and poverty reduction.",
          'isCorrect': true,
        },
        {
          'text': "Proper design and effective implementation of the UN-REDD+ Programme can significantly contribute only to poverty reduction, and not to the protection of biodiversity or the resilience of forest ecosystems.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_20 = topicRef2.collection('questions').doc('20');
    await questionRef2_20.set({
      'questionId': '20',
      'order': 20,
      'statements': [
        {
          'text': "Clean Development Mechanism is correctly matched with the Kyoto Protocol.",
          'isCorrect': true,
        },
        {
          'text': "Annex-I Countries is correctly matched with the Cartagena Protocol, and Certified Emissions Reductions is correctly matched with the Nagoya Protocol.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_21 = topicRef2.collection('questions').doc('21');
    await questionRef2_21.set({
      'questionId': '21',
      'order': 21,
      'statements': [
        {
          'text': "The 'Greenhouse Gas Protocol' is an international accounting tool for government and business leaders to understand, quantify and manage greenhouse gas emissions.",
          'isCorrect': true,
        },
        {
          'text': "The 'Greenhouse Gas Protocol' is an initiative of the United Nations to offer financial incentives to developing countries to reduce greenhouse gas emissions and adopt eco-friendly technologies.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_22 = topicRef2.collection('questions').doc('22');
    await questionRef2_22.set({
      'questionId': '22',
      'order': 22,
      'statements': [
        {
          'text': "'Agenda 21' is a global action plan for sustainable development.",
          'isCorrect': true,
        },
        {
          'text': "'Agenda 21' originated at the World Summit on Sustainable Development held in Johannesburg in 2002.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_23 = topicRef2.collection('questions').doc('23');
    await questionRef2_23.set({
      'questionId': '23',
      'order': 23,
      'statements': [
        {
          'text': "The Paris Agreement aims to limit greenhouse gas emissions so that the rise in average global temperature by the end of this century does not exceed 2 degrees Celsius, or even 1.5 degrees Celsius, above pre-industrial levels.",
          'isCorrect': true,
        },
        {
          'text': "The Paris Agreement was signed by all member countries of the UN and went into effect in 2017, and developed countries committed to donate \$1000 billion a year from 2020 to help developing countries cope with climate change.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_24 = topicRef2.collection('questions').doc('24');
    await questionRef2_24.set({
      'questionId': '24',
      'order': 24,
      'statements': [
        {
          'text': "The Sustainable Development Goals have to be achieved by 2030.",
          'isCorrect': true,
        },
        {
          'text': "The Sustainable Development Goals were first proposed in 1972 by a global think tank called the 'Club of Rome'.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_25 = topicRef2.collection('questions').doc('25');
    await questionRef2_25.set({
      'questionId': '25',
      'order': 25,
      'statements': [
        {
          'text': "The term 'Intended Nationally Determined Contributions' is used in the context of the plan of action outlined by countries of the world to combat climate change.",
          'isCorrect': true,
        },
        {
          'text': "The term 'Intended Nationally Determined Contributions' is used in the context of capital contributed by member countries in the establishment of the Asian Infrastructure Investment Bank.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_26 = topicRef2.collection('questions').doc('26');
    await questionRef2_26.set({
      'questionId': '26',
      'order': 26,
      'statements': [
        {
          'text': "The 'BioCarbon Fund Initiative for Sustainable Forest Landscapes' is managed by the World Bank.",
          'isCorrect': true,
        },
        {
          'text': "The 'BioCarbon Fund Initiative for Sustainable Forest Landscapes' is managed by the Asian Development Bank.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_27 = topicRef2.collection('questions').doc('27');
    await questionRef2_27.set({
      'questionId': '27',
      'order': 27,
      'statements': [
        {
          'text': "The 'Forest Carbon Partnership Facility' is a global partnership of governments, businesses, civil society and indigenous peoples, and it assists countries in their REDD+ efforts by providing financial and technical assistance.",
          'isCorrect': true,
        },
        {
          'text': "The 'Forest Carbon Partnership Facility' provides financial aid to universities, individual scientists and institutions involved in scientific forestry research.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_28 = topicRef2.collection('questions').doc('28');
    await questionRef2_28.set({
      'questionId': '28',
      'order': 28,
      'statements': [
        {
          'text': "The Montreal Protocol is associated with the issue of control and phasing out of the use of ozone-depleting substances.",
          'isCorrect': true,
        },
        {
          'text': "The Kyoto Protocol is associated with the issue of control and phasing out of the use of ozone-depleting substances.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_29 = topicRef2.collection('questions').doc('29');
    await questionRef2_29.set({
      'questionId': '29',
      'order': 29,
      'statements': [
        {
          'text': "The Rio+20 Conference, often mentioned in the news, is the United Nations Conference on Sustainable Development.",
          'isCorrect': true,
        },
        {
          'text': "The Rio+20 Conference, often mentioned in the news, is a Ministerial Meeting of the World Trade Organization.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_30 = topicRef2.collection('questions').doc('30');
    await questionRef2_30.set({
      'questionId': '30',
      'order': 30,
      'statements': [
        {
          'text': "The 'Green Climate Fund' is intended to assist developing countries in adaptation and mitigation practices to counter climate change.",
          'isCorrect': true,
        },
        {
          'text': "The 'Green Climate Fund' is founded under the aegis of UNEP, OECD, the Asian Development Bank and the World Bank.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_31 = topicRef2.collection('questions').doc('31');
    await questionRef2_31.set({
      'questionId': '31',
      'order': 31,
      'statements': [
        {
          'text': "The 'Global Environment Facility' serves as the financial mechanism for the Convention on Biological Diversity and the United Nations Framework Convention on Climate Change.",
          'isCorrect': true,
        },
        {
          'text': "The 'Global Environment Facility' undertakes scientific research on environmental issues at the global level.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_32 = topicRef2.collection('questions').doc('32');
    await questionRef2_32.set({
      'questionId': '32',
      'order': 32,
      'statements': [
        {
          'text': "Carbon credits are not traded at a price fixed from time to time by the United Nations Environment Programme - their price is determined by the market.",
          'isCorrect': true,
        },
        {
          'text': "Carbon credits are traded at a price fixed from time to time by the United Nations Environment Programme.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_33 = topicRef2.collection('questions').doc('33');
    await questionRef2_33.set({
      'questionId': '33',
      'order': 33,
      'statements': [
        {
          'text': "The Greendex 2009 score is a measure of environmentally sustainable consumer behaviour in different countries.",
          'isCorrect': true,
        },
        {
          'text': "The Greendex 2009 score is a measure of efforts made by different countries in adopting technologies for reducing carbon footprint.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_34 = topicRef2.collection('questions').doc('34');
    await questionRef2_34.set({
      'questionId': '34',
      'order': 34,
      'statements': [
        {
          'text': "The United Nations Framework Convention on Climate Change (UNFCCC) is an international treaty drawn at the UN Conference on Environment and Development, Rio de Janeiro, 1992.",
          'isCorrect': true,
        },
        {
          'text': "The United Nations Framework Convention on Climate Change (UNFCCC) is an international treaty drawn at the United Nations Conference on the Human Environment, Stockholm, 1972.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_35 = topicRef2.collection('questions').doc('35');
    await questionRef2_35.set({
      'questionId': '35',
      'order': 35,
      'statements': [
        {
          'text': "The concept of sustainable development is inherently intertwined with the concept of carrying capacity.",
          'isCorrect': true,
        },
        {
          'text': "The concept of sustainable development is inherently intertwined with the concept of globalization.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_36 = topicRef2.collection('questions').doc('36');
    await questionRef2_36.set({
      'questionId': '36',
      'order': 36,
      'statements': [
        {
          'text': "The concept of carbon credit originated from the Kyoto Protocol.",
          'isCorrect': true,
        },
        {
          'text': "The concept of carbon credit originated from the Earth Summit, Rio de Janeiro.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_37 = topicRef2.collection('questions').doc('37');
    await questionRef2_37.set({
      'questionId': '37',
      'order': 37,
      'statements': [
        {
          'text': "In the context of CO2 emission and global warming, the Clean Development Mechanism is the market-driven device under the UNFCCC that allows developing countries to get funds and incentives from developed countries to adopt better technologies that reduce greenhouse gas emissions.",
          'isCorrect': true,
        },
        {
          'text': "In the context of CO2 emission and global warming, 'Carbon Footprint' is the market-driven device under the UNFCCC that allows developing countries to get funds and incentives from developed countries to adopt better technologies that reduce greenhouse gas emissions.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_38 = topicRef2.collection('questions').doc('38');
    await questionRef2_38.set({
      'questionId': '38',
      'order': 38,
      'statements': [
        {
          'text': "The World Summit on Sustainable Development (Rio+10) was held in Johannesburg.",
          'isCorrect': true,
        },
        {
          'text': "The World Summit on Sustainable Development (Rio+10) was held in Shanghai.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_39 = topicRef2.collection('questions').doc('39');
    await questionRef2_39.set({
      'questionId': '39',
      'order': 39,
      'statements': [
        {
          'text': "Clean Development Mechanism (CDM), in respect of carbon credits, is one of the Kyoto Protocol Mechanisms.",
          'isCorrect': true,
        },
        {
          'text': "Under the Clean Development Mechanism, the projects handled pertain only to the Annex-I countries.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_40 = topicRef2.collection('questions').doc('40');
    await questionRef2_40.set({
      'questionId': '40',
      'order': 40,
      'statements': [
        {
          'text': "New Zealand was the first country in the world to propose a carbon tax for its people to address global warming.",
          'isCorrect': true,
        },
        {
          'text': "Australia was the first country in the world to propose a carbon tax for its people to address global warming.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_41 = topicRef2.collection('questions').doc('41');
    await questionRef2_41.set({
      'questionId': '41',
      'order': 41,
      'statements': [
        {
          'text': "The Biosafety Protocol deals with genetically modified organisms.",
          'isCorrect': true,
        },
        {
          'text': "India is not a signatory to the Biosafety Protocol / Convention on Biological Diversity.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_42 = topicRef2.collection('questions').doc('42');
    await questionRef2_42.set({
      'questionId': '42',
      'order': 42,
      'statements': [
        {
          'text': "The Kyoto Protocol came into force in the year 2005, and methane as a greenhouse gas is more harmful than carbon dioxide.",
          'isCorrect': true,
        },
        {
          'text': "The Kyoto Protocol deals primarily with the depletion of the Ozone layer.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_43 = topicRef2.collection('questions').doc('43');
    await questionRef2_43.set({
      'questionId': '43',
      'order': 43,
      'statements': [
        {
          'text': "The World Summit held in Johannesburg in September 2002, with representation from all countries, was on the subject of sustainable development.",
          'isCorrect': true,
        },
        {
          'text': "The World Summit held in Johannesburg in September 2002, with representation from all countries, was on the subject of global terrorism.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_44 = topicRef2.collection('questions').doc('44');
    await questionRef2_44.set({
      'questionId': '44',
      'order': 44,
      'statements': [
        {
          'text': "According to Meadows (1972), if present trends in world population, industrialisation, pollution, food production and resource depletion continue unchanged, the 'Limits to Growth' on our planet will be reached in the next 100 years.",
          'isCorrect': true,
        },
        {
          'text': "According to Meadows (1972), if present trends in world population, industrialisation, pollution, food production and resource depletion continue unchanged, the 'Limits to Growth' on our planet will be reached in the next 200 years.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_45 = topicRef2.collection('questions').doc('45');
    await questionRef2_45.set({
      'questionId': '45',
      'order': 45,
      'statements': [
        {
          'text': "The World Environment Conference to discuss global warming was held in 1997 in Kyoto.",
          'isCorrect': true,
        },
        {
          'text': "The World Environment Conference to discuss global warming was held in 1997 in Rio de Janeiro.",
          'isCorrect': false,
        },
      ],
    });

    print('Environment seeding completed.');
  }
}