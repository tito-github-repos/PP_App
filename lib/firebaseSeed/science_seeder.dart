
import 'package:cloud_firestore/cloud_firestore.dart';

class ScienceAndTechnologySeeder {




  static Future<void> seedPhysics() async {

    final FirebaseFirestore _firestore = FirebaseFirestore.instance;
    final subjectRef = _firestore
        .collection('subjects')
        .doc('science_and_technology');

    final topicRef = subjectRef
        .collection('topics')
        .doc('physics');

    await topicRef.set({
      'name': 'Physics',
      'order': 7,
    });

    final questionRef1 = topicRef
        .collection('questions')
        .doc('1');

    await questionRef1.set({
      'questionId': '1',
      'order': 1,
      'statements': [
        {
          'text': "RTGs are used for powering the onboard systems of spacecraft and can use Plutonium-238 as a radioactive heat source.",
          'isCorrect': true,
        },
        {
          'text': "RTGs are not used for powering onboard systems of spacecraft and cannot use Plutonium-238 as a radioactive heat source.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef2 = topicRef
        .collection('questions')
        .doc('2');

    await questionRef2.set({
      'questionId': '2',
      'order': 2,
      'statements': [
        {
          'text': "India, despite having uranium deposits, depends on coal for most of its electricity production, and uranium enriched to at least 60% is not required for electricity generation.",
          'isCorrect': true,
        },
        {
          'text': "India depends mainly on nuclear power for most of its electricity production, and uranium enriched to at least 60% is required for electricity generation.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef3 = topicRef
        .collection('questions')
        .doc('3');

    await questionRef3.set({
      'questionId': '3',
      'order': 3,
      'statements': [
        {
          'text': "A qubit is the fundamental unit of information used in quantum computing.",
          'isCorrect': true,
        },
        {
          'text': "A qubit is not the fundamental unit of information used in quantum computing.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef4 = topicRef
        .collection('questions')
        .doc('4');

    await questionRef4.set({
      'questionId': '4',
      'order': 4,
      'statements': [
        {
          'text': "Sodium lamps produce light in all directions, whereas LEDs are directional, and sodium lamps produce nearly monochromatic light while LEDs offer significant colour advantages.",
          'isCorrect': true,
        },
        {
          'text': "LEDs produce light equally in all directions, whereas sodium lamps are directional, and LEDs produce only monochromatic light without significant colour advantages.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef5 = topicRef
        .collection('questions')
        .doc('5');

    await questionRef5.set({
      'questionId': '5',
      'order': 5,
      'statements': [
        {
          'text': "The cooking temperature in a pressure cooker depends mainly on the area of the hole in the lid and the weight of the lid.",
          'isCorrect': true,
        },
        {
          'text': "The cooking temperature in a pressure cooker depends mainly on the colour of the cooker and the material of its handles.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef6 = topicRef
        .collection('questions')
        .doc('6');

    await questionRef6.set({
      'questionId': '6',
      'order': 6,
      'statements': [
        {
          'text': "OLED displays can be fabricated on flexible plastic substrates, used for roll-up displays embedded in clothing, and can also be transparent.",
          'isCorrect': true,
        },
        {
          'text': "OLED displays cannot be fabricated on flexible plastic substrates and cannot be used for roll-up or transparent displays.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef7 = topicRef
        .collection('questions')
        .doc('7');

    await questionRef7.set({
      'questionId': '7',
      'order': 7,
      'statements': [
        {
          'text': "If the International Thermonuclear Experimental Reactor succeeds, India can gain the capability to build fusion reactors for power generation.",
          'isCorrect': true,
        },
        {
          'text': "Even if the International Thermonuclear Experimental Reactor succeeds, India cannot gain any capability related to building fusion reactors for power generation.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef8 = topicRef
        .collection('questions')
        .doc('8');

    await questionRef8.set({
      'questionId': '8',
      'order': 8,
      'statements': [
        {
          'text': "Photovoltaics directly convert light into electricity, while solar thermal technology uses the Sun's energy to generate heat that is subsequently used for electricity generation.",
          'isCorrect': true,
        },
        {
          'text': "Photovoltaics convert sunlight directly into heat, while solar thermal technology converts sunlight directly into electricity without generating heat.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef9 = topicRef
        .collection('questions')
        .doc('9');

    await questionRef9.set({
      'questionId': '9',
      'order': 9,
      'statements': [
        {
          'text': "Ball bearings reduce the effective area of contact between the wheel and axle, thereby reducing friction.",
          'isCorrect': true,
        },
        {
          'text': "Ball bearings increase the effective area of contact between the wheel and axle, thereby increasing friction.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef10 = topicRef
        .collection('questions')
        .doc('10');

    await questionRef10.set({
      'questionId': '10',
      'order': 10,
      'statements': [
        {
          'text': "The apparent size of the Sun at dusk, the colour of the Sun at dawn, and the twinkling of stars are optical phenomena that create visual effects.",
          'isCorrect': true,
        },
        {
          'text': "The apparent size and colour of the Sun and the twinkling of stars are not caused by optical phenomena.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef11 = topicRef
        .collection('questions')
        .doc('11');

    await questionRef11.set({
      'questionId': '11',
      'order': 11,
      'statements': [
        {
          'text': "A rainbow is produced through dispersion, refraction, and internal reflection of sunlight in raindrops.",
          'isCorrect': true,
        },
        {
          'text': "A rainbow is produced only by reflection of sunlight and does not involve dispersion or refraction.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef12 = topicRef
        .collection('questions')
        .doc('12');

    await questionRef12.set({
      'questionId': '12',
      'order': 12,
      'statements': [
        {
          'text': "Gravity is not the strongest of the four fundamental forces of nature.",
          'isCorrect': true,
        },
        {
          'text': "Gravity is the strongest of the four fundamental forces of nature.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef13 = topicRef
        .collection('questions')
        .doc('13');

    await questionRef13.set({
      'questionId': '13',
      'order': 13,
      'statements': [
        {
          'text': "The discovery of the Higgs boson helps us understand why elementary particles have mass.",
          'isCorrect': true,
        },
        {
          'text': "The discovery of the Higgs boson does not help us understand why elementary particles have mass.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef14 = topicRef
        .collection('questions')
        .doc('14');

    await questionRef14.set({
      'questionId': '14',
      'order': 14,
      'statements': [
        {
          'text': "The creation of antimatter helps probe the possible existence of antimatter stars and galaxies and contributes to understanding the evolution of the universe.",
          'isCorrect': true,
        },
        {
          'text': "The creation of antimatter has no role in studying antimatter stars, galaxies, or the evolution of the universe.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef15 = topicRef
        .collection('questions')
        .doc('15');

    await questionRef15.set({
      'questionId': '15',
      'order': 15,
      'statements': [
        {
          'text': "Without capillarity, using a kerosene lamp and blotting paper would be difficult, and large trees would not be able to grow normally.",
          'isCorrect': true,
        },
        {
          'text': "Capillarity is not important for using a kerosene lamp, blotting paper, or the growth of large trees.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef16 = topicRef
        .collection('questions')
        .doc('16');

    await questionRef16.set({
      'questionId': '16',
      'order': 16,
      'statements': [
        {
          'text': "Thorium is more abundant than uranium, can generate more energy per unit mass of mined mineral, and produces comparatively less harmful waste.",
          'isCorrect': true,
        },
        {
          'text': "Thorium is less abundant than uranium and produces more harmful waste than uranium-based nuclear fuel.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef17 = topicRef
        .collection('questions')
        .doc('17');

    await questionRef17.set({
      'questionId': '17',
      'order': 17,
      'statements': [
        {
          'text': "Graphene is a two-dimensional material with good electrical conductivity, is extremely thin and strong, and can be used as conducting electrodes in touch screens, LCDs, and OLEDs.",
          'isCorrect': true,
        },
        {
          'text': "Graphene is a thick three-dimensional material with poor electrical conductivity and cannot be used as an electrode in electronic displays.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef18 = topicRef
        .collection('questions')
        .doc('18');

    await questionRef18.set({
      'questionId': '18',
      'order': 18,
      'statements': [
        {
          'text': "Heavy water is used in a nuclear reactor to slow down neutrons.",
          'isCorrect': true,
        },
        {
          'text': "Heavy water is used in a nuclear reactor to speed up neutrons.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef19 = topicRef
        .collection('questions')
        .doc('19');

    await questionRef19.set({
      'questionId': '19',
      'order': 19,
      'statements': [
        {
          'text': "A CFL uses mercury vapour and phosphor, while an LED uses semiconductor material, and LEDs are more energy-efficient than CFLs.",
          'isCorrect': true,
        },
        {
          'text': "A CFL uses only semiconductor material, while an LED uses mercury vapour and phosphor, and CFLs are more energy-efficient than LEDs.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef20 = topicRef
        .collection('questions')
        .doc('20');

    await questionRef20.set({
      'questionId': '20',
      'order': 20,
      'statements': [
        {
          'text': "Blu-ray supports high-definition video and has several times more storage capacity than a traditional DVD.",
          'isCorrect': true,
        },
        {
          'text': "Blu-ray does not support high-definition video and has less storage capacity than a traditional DVD.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef21 = topicRef
        .collection('questions')
        .doc('21');

    await questionRef21.set({
      'questionId': '21',
      'order': 21,
      'statements': [
        {
          'text': "The density of water is maximum at 4°C, which allows water below the frozen surface of a lake to remain liquid.",
          'isCorrect': true,
        },
        {
          'text': "The density of water is maximum at 0°C, causing lakes to freeze completely from bottom to top.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef22 = topicRef
        .collection('questions')
        .doc('22');

    await questionRef22.set({
      'questionId': '22',
      'order': 22,
      'statements': [
        {
          'text': "The cooling system of a motor car radiator mainly works on the principle of convection.",
          'isCorrect': true,
        },
        {
          'text': "The cooling system of a motor car radiator mainly works on the principle of conduction.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef23 = topicRef
        .collection('questions')
        .doc('23');

    await questionRef23.set({
      'questionId': '23',
      'order': 23,
      'statements': [
        {
          'text': "Neutrinos are chargeless elementary particles, are produced in beta decay, have a negligible but non-zero mass, and trillions pass through the human body every second.",
          'isCorrect': true,
        },
        {
          'text': "Neutrinos are positively charged particles with large mass and are not produced during beta decay.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef24 = topicRef
        .collection('questions')
        .doc('24');

    await questionRef24.set({
      'questionId': '24',
      'order': 24,
      'statements': [
        {
          'text': "A potato heats up in a microwave oven because it contains water, whereas a dry paper plate contains very little water.",
          'isCorrect': true,
        },
        {
          'text': "A potato heats up in a microwave oven because it contains no water, whereas a dry paper plate heats rapidly because of its high water content.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef25 = topicRef
        .collection('questions')
        .doc('25');

    await questionRef25.set({
      'questionId': '25',
      'order': 25,
      'statements': [
        {
          'text': "The European Organization for Nuclear Research conducted the experiment involving sub-atomic particles accelerated to nearly the speed of light.",
          'isCorrect': true,
        },
        {
          'text': "The European Organization for Nuclear Research does not conduct experiments involving sub-atomic particles accelerated to nearly the speed of light.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef26 = topicRef
        .collection('questions')
        .doc('26');

    await questionRef26.set({
      'questionId': '26',
      'order': 26,
      'statements': [
        {
          'text': "Blue light has the highest energy among blue, green, red, and yellow light.",
          'isCorrect': true,
        },
        {
          'text': "Red light has the highest energy among blue, green, red, and yellow light.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef27 = topicRef
        .collection('questions')
        .doc('27');

    await questionRef27.set({
      'questionId': '27',
      'order': 27,
      'statements': [
        {
          'text': "Infra-red waves are used in night vision apparatus.",
          'isCorrect': true,
        },
        {
          'text': "Infra-red waves are not used in night vision apparatus.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef28 = topicRef
        .collection('questions')
        .doc('28');

    await questionRef28.set({
      'questionId': '28',
      'order': 28,
      'statements': [
        {
          'text': "Red light is less energetic than green light, while the wavelength of red light is greater than that of green light.",
          'isCorrect': true,
        },
        {
          'text': "Red light is more energetic than green light and has a shorter wavelength than green light.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef29 = topicRef
        .collection('questions')
        .doc('29');

    await questionRef29.set({
      'questionId': '29',
      'order': 29,
      'statements': [
        {
          'text': "Radio waves are electromagnetic in nature and do not bend in a magnetic field like charged particles.",
          'isCorrect': true,
        },
        {
          'text': "Radio waves are charged particles and bend strongly in a magnetic field.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef30 = topicRef
        .collection('questions')
        .doc('30');

    await questionRef30.set({
      'questionId': '30',
      'order': 30,
      'statements': [
        {
          'text': "William Henry Bragg shared the Nobel Prize in Physics with his son, William Lawrence Bragg.",
          'isCorrect': true,
        },
        {
          'text': "William Henry Bragg did not share the Nobel Prize in Physics with his son, William Lawrence Bragg.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef31 = topicRef
        .collection('questions')
        .doc('31');

    await questionRef31.set({
      'questionId': '31',
      'order': 31,
      'statements': [
        {
          'text': "A widely used musical scale called the diatonic scale has seven frequencies.",
          'isCorrect': true,
        },
        {
          'text': "The widely used diatonic musical scale has only five frequencies.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef32 = topicRef
        .collection('questions')
        .doc('32');

    await questionRef32.set({
      'questionId': '32',
      'order': 32,
      'statements': [
        {
          'text': "A semiconductor laser is used in a laser printer.",
          'isCorrect': true,
        },
        {
          'text': "A semiconductor laser is not used in a laser printer.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef33 = topicRef
        .collection('questions')
        .doc('33');

    await questionRef33.set({
      'questionId': '33',
      'order': 33,
      'statements': [
        {
          'text': "H.C. Urey discovered heavy water.",
          'isCorrect': true,
        },
        {
          'text': "H.C. Urey did not discover heavy water.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef34 = topicRef
        .collection('questions')
        .doc('34');

    await questionRef34.set({
      'questionId': '34',
      'order': 34,
      'statements': [
        {
          'text': "The intersection of magenta and yellow produces red, while the intersection of cyan and magenta produces blue.",
          'isCorrect': true,
        },
        {
          'text': "The intersection of magenta and yellow produces green, while cyan and magenta produce red.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef35 = topicRef
        .collection('questions')
        .doc('35');

    await questionRef35.set({
      'questionId': '35',
      'order': 35,
      'statements': [
        {
          'text': "Sound travels through rocks in the form of longitudinal elastic waves.",
          'isCorrect': true,
        },
        {
          'text': "Sound travels through rocks only as transverse waves and not as longitudinal elastic waves.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef36 = topicRef
        .collection('questions')
        .doc('36');

    await questionRef36.set({
      'questionId': '36',
      'order': 36,
      'statements': [
        {
          'text': "Among the given wires, a wire of 3 m length and 1.5 mm diameter will undergo maximum elongation under the same load.",
          'isCorrect': true,
        },
        {
          'text': "Among the given wires, a wire of 3 m length and 1.5 mm diameter will undergo minimum elongation under the same load.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef37 = topicRef
        .collection('questions')
        .doc('37');

    await questionRef37.set({
      'questionId': '37',
      'order': 37,
      'statements': [
        {
          'text': "The speed of sound depends on the temperature of the surrounding medium, and a Mach number of 1 at 15 km altitude does not necessarily mean a higher speed than at sea level.",
          'isCorrect': true,
        },
        {
          'text': "The speed of sound does not depend on the temperature of the surrounding medium, and Mach 1 always represents the same speed at every altitude.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef38 = topicRef
        .collection('questions')
        .doc('38');

    await questionRef38.set({
      'questionId': '38',
      'order': 38,
      'statements': [
        {
          'text': "The speed of sound is maximum in wood among the given options.",
          'isCorrect': true,
        },
        {
          'text': "The speed of sound is minimum in wood among the given options.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef39 = topicRef
        .collection('questions')
        .doc('39');

    await questionRef39.set({
      'questionId': '39',
      'order': 39,
      'statements': [
        {
          'text': "Christopher Cockerell invented the hovercraft, David Bushnell is associated with the submarine, and J.C. Perrier is associated with the steamship.",
          'isCorrect': true,
        },
        {
          'text': "Christopher Cockerell invented the submarine, David Bushnell invented the hovercraft, and J.C. Perrier invented the airplane.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef40 = topicRef
        .collection('questions')
        .doc('40');

    await questionRef40.set({
      'questionId': '40',
      'order': 40,
      'statements': [
        {
          'text': "The Richter scale is logarithmic, and an increase of one magnitude represents a tenfold increase in amplitude.",
          'isCorrect': true,
        },
        {
          'text': "The Richter scale is linear, and an increase of one magnitude represents only a twofold increase in amplitude.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef41 = topicRef
        .collection('questions')
        .doc('41');

    await questionRef41.set({
      'questionId': '41',
      'order': 41,
      'statements': [
        {
          'text': "A commonly used fluorescent tube light is generally marked 6500 K.",
          'isCorrect': true,
        },
        {
          'text': "A commonly used fluorescent tube light is generally marked 2700 K.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef42 = topicRef
        .collection('questions')
        .doc('42');

    await questionRef42.set({
      'questionId': '42',
      'order': 42,
      'statements': [
        {
          'text': "The order of magnitude of electrical resistance of a dry human body is approximately 10⁴ ohms.",
          'isCorrect': true,
        },
        {
          'text': "The electrical resistance of a dry human body is approximately 10 ohms.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef43 = topicRef
        .collection('questions')
        .doc('43');

    await questionRef43.set({
      'questionId': '43',
      'order': 43,
      'statements': [
        {
          'text': "Theodore Maiman invented the laser.",
          'isCorrect': true,
        },
        {
          'text': "Theodore Maiman did not invent the laser.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef44 = topicRef
        .collection('questions')
        .doc('44');

    await questionRef44.set({
      'questionId': '44',
      'order': 44,
      'statements': [
        {
          'text': "The frequency of alternating voltage in the given context is 60 hertz, corresponding to the stated direction changes of the current.",
          'isCorrect': true,
        },
        {
          'text': "The frequency of alternating voltage in the given context is 50 hertz and does not correspond to the stated direction changes of the current.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef45 = topicRef
        .collection('questions')
        .doc('45');

    await questionRef45.set({
      'questionId': '45',
      'order': 45,
      'statements': [
        {
          'text': "A body moving with uniform angular velocity in a circular path has radial acceleration directed towards the centre.",
          'isCorrect': true,
        },
        {
          'text': "A body moving with uniform angular velocity in a circular path has radial acceleration directed away from the centre.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef46 = topicRef
        .collection('questions')
        .doc('46');

    await questionRef46.set({
      'questionId': '46',
      'order': 46,
      'statements': [
        {
          'text': "A hydrogen-filled balloon increases in size as it rises higher in the atmosphere.",
          'isCorrect': true,
        },
        {
          'text': "A hydrogen-filled balloon decreases in size as it rises higher in the atmosphere.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef47 = topicRef
        .collection('questions')
        .doc('47');

    await questionRef47.set({
      'questionId': '47',
      'order': 47,
      'statements': [
        {
          'text': "In an air-conditioner, heat is extracted from room air at the evaporator coils and rejected outside at the condenser coils.",
          'isCorrect': true,
        },
        {
          'text': "In an air-conditioner, heat is rejected inside the room at the evaporator coils and absorbed from outside at the condenser coils.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef48 = topicRef
        .collection('questions')
        .doc('48');

    await questionRef48.set({
      'questionId': '48',
      'order': 48,
      'statements': [
        {
          'text': "A four-wheel vehicle moving at high speed on a sharp circular path may overturn about its inner wheels and skid outwards.",
          'isCorrect': true,
        },
        {
          'text': "A four-wheel vehicle moving at high speed on a sharp circular path may overturn about its outer wheels and skid inwards.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef49 = topicRef
        .collection('questions')
        .doc('49');

    await questionRef49.set({
      'questionId': '49',
      'order': 49,
      'statements': [
        {
          'text': "Liquid sodium is employed as a coolant in certain nuclear reactors.",
          'isCorrect': true,
        },
        {
          'text': "Liquid sodium cannot be employed as a coolant in any nuclear reactor.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef50 = topicRef
        .collection('questions')
        .doc('50');

    await questionRef50.set({
      'questionId': '50',
      'order': 50,
      'statements': [
        {
          'text': "Diffusion of light in the atmosphere takes place due to dust particles.",
          'isCorrect': true,
        },
        {
          'text': "Diffusion of light in the atmosphere takes place only due to water vapour and not due to dust particles.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef51 = topicRef
        .collection('questions')
        .doc('51');

    await questionRef51.set({
      'questionId': '51',
      'order': 51,
      'statements': [
        {
          'text': "An oil tanker moving forward on a level road with uniform acceleration will have its free oil surface inclined to the horizontal with smaller depth at the rear end.",
          'isCorrect': true,
        },
        {
          'text': "An oil tanker moving forward with uniform acceleration will have its free oil surface inclined with greater depth at the rear end.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef52 = topicRef
        .collection('questions')
        .doc('52');

    await questionRef52.set({
      'questionId': '52',
      'order': 52,
      'statements': [
        {
          'text': "The velocity of sound in air decreases as the humidity increases.",
          'isCorrect': true,
        },
        {
          'text': "The velocity of sound in air decreases as humidity increases.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef53 = topicRef
        .collection('questions')
        .doc('53');

    await questionRef53.set({
      'questionId': '53',
      'order': 53,
      'statements': [
        {
          'text': "The magnetic quantum number of an atom refers to the orientation of an orbital.",
          'isCorrect': true,
        },
        {
          'text': "The magnetic quantum number of an atom refers to the size of an orbital rather than its orientation.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef54 = topicRef
        .collection('questions')
        .doc('54');

    await questionRef54.set({
      'questionId': '54',
      'order': 54,
      'statements': [
        {
          'text': "The weight of a body decreases with an increase in latitude on Earth because Earth is not a perfect sphere.",
          'isCorrect': true,
        },
        {
          'text': "The weight of a body increases with an increase in latitude because Earth is a perfect sphere.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef55 = topicRef
        .collection('questions')
        .doc('55');

    await questionRef55.set({
      'questionId': '55',
      'order': 55,
      'statements': [
        {
          'text': "A mirage is formed due to terrestrial heating and refraction of light.",
          'isCorrect': true,
        },
        {
          'text': "A mirage is formed mainly due to reflection from clouds and not due to terrestrial heating and refraction.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef56 = topicRef
        .collection('questions')
        .doc('56');

    await questionRef56.set({
      'questionId': '56',
      'order': 56,
      'statements': [
        {
          'text': "The Sun's halo is produced by the refraction of light through ice crystals in Cirrus clouds.",
          'isCorrect': true,
        },
        {
          'text': "The Sun's halo is produced by reflection of light from raindrops rather than refraction through ice crystals in Cirrus clouds.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef57 = topicRef
        .collection('questions')
        .doc('57');

    await questionRef57.set({
      'questionId': '57',
      'order': 57,
      'statements': [
        {
          'text': "Radio waves are produced by rapidly oscillating electrical currents, and police use the Doppler effect of reflected short radio waves to detect overspeeding vehicles.",
          'isCorrect': true,
        },
        {
          'text': "Radio waves are not produced by oscillating electrical currents, and police do not use the Doppler effect of reflected radio waves to detect overspeeding vehicles.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef58 = topicRef
        .collection('questions')
        .doc('58');

    await questionRef58.set({
      'questionId': '58',
      'order': 58,
      'statements': [
        {
          'text': "With an increase in temperature, the viscosity of glycerine increases because the kinetic energy of its molecules increases.",
          'isCorrect': true,
        },
        {
          'text': "With an increase in temperature, the viscosity of glycerine increases because molecular kinetic energy decreases.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef59 = topicRef
        .collection('questions')
        .doc('59');

    await questionRef59.set({
      'questionId': '59',
      'order': 59,
      'statements': [
        {
          'text': "An iron ball floats on mercury but gets immersed in water, while the statement that the specific gravity of iron is more than that of mercury is false.",
          'isCorrect': false,
        },
        {
          'text': "An iron ball sinks in mercury and floats in water because the specific gravity of iron is greater than that of mercury.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef60 = topicRef
        .collection('questions')
        .doc('60');

    await questionRef60.set({
      'questionId': '60',
      'order': 60,
      'statements': [
        {
          'text': "A self-sustained chain reaction in a nuclear reactor is possible because more neutrons are released during fission and fast neutrons are slowed down by graphite.",
          'isCorrect': true,
        },
        {
          'text': "A self-sustained chain reaction is impossible because fission releases no neutrons and graphite cannot slow down neutrons.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef61 = topicRef
        .collection('questions')
        .doc('61');

    await questionRef61.set({
      'questionId': '61',
      'order': 61,
      'statements': [
        {
          'text': "Strabo was the first among the given options to state that the Earth was spherical.",
          'isCorrect': true,
        },
        {
          'text': "Strabo was the first person to prove that the Earth is flat.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef62 = topicRef
        .collection('questions')
        .doc('62');

    await questionRef62.set({
      'questionId': '62',
      'order': 62,
      'statements': [
        {
          'text': "If stars are seen to rise perpendicular to the horizon, the observer is located on the Equator.",
          'isCorrect': true,
        },
        {
          'text': "If stars are seen to rise perpendicular to the horizon, the observer is located at the North Pole.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef63 = topicRef
        .collection('questions')
        .doc('63');

    await questionRef63.set({
      'questionId': '63',
      'order': 63,
      'statements': [
        {
          'text': "A stick dipped in water appears short and bent due to scattering of light from water molecules.",
          'isCorrect': true,
        },
        {
          'text': "A stick dipped in water appears short and bent due to scattering of light from water molecules.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef64 = topicRef
        .collection('questions')
        .doc('64');

    await questionRef64.set({
      'questionId': '64',
      'order': 64,
      'statements': [
        {
          'text': "The boiling point of water decreases with increasing altitude, while the statement that atmospheric pressure increases with altitude is false.",
          'isCorrect': false,
        },
        {
          'text': "The boiling point of water increases with increasing altitude because atmospheric pressure increases with altitude.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef65 = topicRef
        .collection('questions')
        .doc('65');

    await questionRef65.set({
      'questionId': '65',
      'order': 65,
      'statements': [
        {
          'text': "When light waves pass from air to glass, their wavelength and velocity are affected.",
          'isCorrect': true,
        },
        {
          'text': "When light waves pass from air to glass, neither their wavelength nor their velocity changes.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef66 = topicRef
        .collection('questions')
        .doc('66');

    await questionRef66.set({
      'questionId': '66',
      'order': 66,
      'statements': [
        {
          'text': "A neutrino has zero mass, a quark has fractional charge, a positron has fractional spin, and a phonon has integral spin.",
          'isCorrect': true,
        },
        {
          'text': "A neutrino has a large positive charge, a quark has no charge, a positron has integral spin, and a phonon has fractional spin.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef67 = topicRef
        .collection('questions')
        .doc('67');

    await questionRef67.set({
      'questionId': '67',
      'order': 67,
      'statements': [
        {
          'text': "The mass of a 100 kg body remains 100 kg on the Moon.",
          'isCorrect': true,
        },
        {
          'text': "The mass of a 100 kg body becomes less than 100 kg on the Moon.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef68 = topicRef
        .collection('questions')
        .doc('68');

    await questionRef68.set({
      'questionId': '68',
      'order': 68,
      'statements': [
        {
          'text': "In a simple pendulum, acceleration is zero at the mean position, a given velocity is attained twice in each cycle, and the amplitude decreases with time.",
          'isCorrect': true,
        },
        {
          'text': "In a simple pendulum, acceleration is maximum at the mean position, and a given velocity is attained only once in each cycle.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef69 = topicRef
        .collection('questions')
        .doc('69');

    await questionRef69.set({
      'questionId': '69',
      'order': 69,
      'statements': [
        {
          'text': "A sudden fall in barometer reading indicates stormy weather.",
          'isCorrect': true,
        },
        {
          'text': "A sudden fall in barometer reading indicates clear and stable weather.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef70 = topicRef
        .collection('questions')
        .doc('70');

    await questionRef70.set({
      'questionId': '70',
      'order': 70,
      'statements': [
        {
          'text': "A radioactive substance with a half-life of four months will have three-fourths of its substance decayed in eight months.",
          'isCorrect': true,
        },
        {
          'text': "A radioactive substance with a half-life of four months will have only one-fourth of its substance decayed in eight months.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef71 = topicRef
        .collection('questions')
        .doc('71');

    await questionRef71.set({
      'questionId': '71',
      'order': 71,
      'statements': [
        {
          'text': "A TV remote control unit uses light waves to operate a TV set.",
          'isCorrect': true,
        },
        {
          'text': "A TV remote control unit uses radio waves rather than light waves to operate a TV set.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef72 = topicRef
        .collection('questions')
        .doc('72');

    await questionRef72.set({
      'questionId': '72',
      'order': 72,
      'statements': [
        {
          'text': "A noise level of 100 decibels corresponds to noise from a machine shop.",
          'isCorrect': true,
        },
        {
          'text': "A noise level of 100 decibels corresponds to a quiet whisper.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef73 = topicRef
        .collection('questions')
        .doc('73');

    await questionRef73.set({
      'questionId': '73',
      'order': 73,
      'statements': [
        {
          'text': "A streamlined body and multipoint fuel injection make newer models of motor cars more fuel efficient.",
          'isCorrect': true,
        },
        {
          'text': "Streamlined bodies and multipoint fuel injection make motor cars less fuel efficient.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef74 = topicRef
        .collection('questions')
        .doc('74');

    await questionRef74.set({
      'questionId': '74',
      'order': 74,
      'statements': [
        {
          'text': "A choke coil fitted in a fluorescent tube steps up the line voltage.",
          'isCorrect': true,
        },
        {
          'text': "A choke coil fitted in a fluorescent tube steps down the line voltage.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef75 = topicRef
        .collection('questions')
        .doc('75');

    await questionRef75.set({
      'questionId': '75',
      'order': 75,
      'statements': [
        {
          'text': "A CD audio player uses a laser beam for reproducing sound.",
          'isCorrect': true,
        },
        {
          'text': "A CD audio player does not use a laser beam for reproducing sound.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef76 = topicRef
        .collection('questions')
        .doc('76');

    await questionRef76.set({
      'questionId': '76',
      'order': 76,
      'statements': [
        {
          'text': "Rainbow-like colours seen on a Compact Disc in sunlight can be explained by refraction, diffraction and transmission.",
          'isCorrect': true,
        },
        {
          'text': "Rainbow-like colours seen on a Compact Disc in sunlight are caused only by reflection and not by diffraction.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef77 = topicRef
        .collection('questions')
        .doc('77');

    await questionRef77.set({
      'questionId': '77',
      'order': 77,
      'statements': [
        {
          'text': "A man standing on a completely frictionless surface can propel himself by whistling because the momentum of an isolated system cannot change.",
          'isCorrect': true,
        },
        {
          'text': "A man standing on a completely frictionless surface can propel himself forward by whistling without ejecting any mass.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef78 = topicRef
        .collection('questions')
        .doc('78');

    await questionRef78.set({
      'questionId': '78',
      'order': 78,
      'statements': [
        {
          'text': "In motion pictures, usually 24 frames are projected every second, and persistence of vision explains this effect.",
          'isCorrect': true,
        },
        {
          'text': "Motion pictures usually project only two frames per second, and persistence of vision has no role in creating the illusion of motion.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef79 = topicRef
        .collection('questions')
        .doc('79');

    await questionRef79.set({
      'questionId': '79',
      'order': 79,
      'statements': [
        {
          'text': "Small glass beads fixed on traffic signals glow brightly due to total internal reflection.",
          'isCorrect': true,
        },
        {
          'text': "Small glass beads fixed on traffic signals glow brightly mainly because of ordinary absorption of light.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef80 = topicRef
        .collection('questions')
        .doc('80');

    await questionRef80.set({
      'questionId': '80',
      'order': 80,
      'statements': [
        {
          'text': "A motor car battery usually has a voltage of 12 V and its capacity is expressed in ampere-hours.",
          'isCorrect': true,
        },
        {
          'text': "A motor car battery usually has a voltage of 220 V and its capacity is expressed in watts.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef81 = topicRef
        .collection('questions')
        .doc('81');

    await questionRef81.set({
      'questionId': '81',
      'order': 81,
      'statements': [
        {
          'text': "High speed is measured using Mach, wavelength using Angstrom, pressure using Pascal, and energy using Joule.",
          'isCorrect': true,
        },
        {
          'text': "High speed is measured using Joule, wavelength using Pascal, pressure using Angstrom, and energy using Mach.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef82 = topicRef
        .collection('questions')
        .doc('82');

    await questionRef82.set({
      'questionId': '82',
      'order': 82,
      'statements': [
        {
          'text': "The rising of underground water is a phenomenon for which capillarity is not the only reason.",
          'isCorrect': true,
        },
        {
          'text': "The rising of underground water is caused only by capillarity and no other phenomenon.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef83 = topicRef
        .collection('questions')
        .doc('83');

    await questionRef83.set({
      'questionId': '83',
      'order': 83,
      'statements': [
        {
          'text': "A coin viewed in water appears closer than it actually is, and a coin above water viewed by a person underwater appears at a higher level.",
          'isCorrect': true,
        },
        {
          'text': "A coin viewed in water appears farther away than it actually is, and a coin above water viewed by a person underwater appears at a lower level.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef84 = topicRef
        .collection('questions')
        .doc('84');

    await questionRef84.set({
      'questionId': '84',
      'order': 84,
      'statements': [
        {
          'text': "Low temperatures have applications in space travel, surgery and magnetic levitation.",
          'isCorrect': true,
        },
        {
          'text': "Low temperatures have no applications in space travel, surgery, or magnetic levitation.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef85 = topicRef
        .collection('questions')
        .doc('85');

    await questionRef85.set({
      'questionId': '85',
      'order': 85,
      'statements': [
        {
          'text': "A fuse used as a safety device in the main electric supply must have a low melting point.",
          'isCorrect': true,
        },
        {
          'text': "A fuse used as a safety device in the main electric supply must have a very high melting point.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef86 = topicRef
        .collection('questions')
        .doc('86');

    await questionRef86.set({
      'questionId': '86',
      'order': 86,
      'statements': [
        {
          'text': "A ball dropped with an acceleration of 9.8 m/s² will have a velocity of 29.4 m/s after 3 seconds.",
          'isCorrect': true,
        },
        {
          'text': "A ball dropped with an acceleration of 9.8 m/s² will have a velocity of 9.8 m/s after 3 seconds.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef87 = topicRef
        .collection('questions')
        .doc('87');

    await questionRef87.set({
      'questionId': '87',
      'order': 87,
      'statements': [
        {
          'text': "Zirconium is an essential element used in the construction of nuclear reactors.",
          'isCorrect': true,
        },
        {
          'text': "Zirconium has no use in the construction of nuclear reactors.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef88 = topicRef
        .collection('questions')
        .doc('88');

    await questionRef88.set({
      'questionId': '88',
      'order': 88,
      'statements': [
        {
          'text': "The chain reaction in a nuclear reactor is controlled, unlike in an atomic bomb.",
          'isCorrect': true,
        },
        {
          'text': "The chain reaction in a nuclear reactor is uncontrolled, just like in an atomic bomb.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef89 = topicRef
        .collection('questions')
        .doc('89');

    await questionRef89.set({
      'questionId': '89',
      'order': 89,
      'statements': [
        {
          'text': "Dr. Raja Ramanna is associated with Nuclear Physics, Dr. M.S. Swaminathan with Agricultural Sciences, Prof. U.R. Rao with Space Research, and Prof. Meghnad Saha with Thermodynamics and Astrophysics.",
          'isCorrect': true,
        },
        {
          'text': "Dr. Raja Ramanna is associated with Agriculture, Dr. M.S. Swaminathan with Nuclear Physics, Prof. U.R. Rao with Thermodynamics, and Prof. Meghnad Saha with Agricultural Sciences.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef90 = topicRef
        .collection('questions')
        .doc('90');

    await questionRef90.set({
      'questionId': '90',
      'order': 90,
      'statements': [
        {
          'text': "The tendency of a liquid drop to contract and occupy minimum area is due to surface tension.",
          'isCorrect': true,
        },
        {
          'text': "The tendency of a liquid drop to contract and occupy minimum area is due to gravitational force.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef91 = topicRef
        .collection('questions')
        .doc('91');

    await questionRef91.set({
      'questionId': '91',
      'order': 91,
      'statements': [
        {
          'text': "Momentum is a vector quantity.",
          'isCorrect': true,
        },
        {
          'text': "Momentum is a scalar quantity.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef92 = topicRef
        .collection('questions')
        .doc('92');

    await questionRef92.set({
      'questionId': '92',
      'order': 92,
      'statements': [
        {
          'text': "The working principle of a washing machine is centrifugation.",
          'isCorrect': true,
        },
        {
          'text': "The working principle of a washing machine is based mainly on gravitational attraction rather than centrifugation.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef93 = topicRef
        .collection('questions')
        .doc('93');

    await questionRef93.set({
      'questionId': '93',
      'order': 93,
      'statements': [
        {
          'text': "Oxygen is paramagnetic in nature.",
          'isCorrect': true,
        },
        {
          'text': "Oxygen is diamagnetic in nature.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef94 = topicRef
        .collection('questions')
        .doc('94');

    await questionRef94.set({
      'questionId': '94',
      'order': 94,
      'statements': [
        {
          'text': "An air bubble at the bottom of a lake increases in size as it rises to the top.",
          'isCorrect': true,
        },
        {
          'text': "An air bubble at the bottom of a lake decreases in size as it rises to the top.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef95 = topicRef
        .collection('questions')
        .doc('95');

    await questionRef95.set({
      'questionId': '95',
      'order': 95,
      'statements': [
        {
          'text': "When a mirror is rotated by an angle of 6 degrees, the reflected ray rotates by 12 degrees.",
          'isCorrect': true,
        },
        {
          'text': "When a mirror is rotated by an angle of 6 degrees, the reflected ray rotates by only 6 degrees.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef96 = topicRef
        .collection('questions')
        .doc('96');

    await questionRef96.set({
      'questionId': '96',
      'order': 96,
      'statements': [
        {
          'text': "If a truck, car and motorcycle have equal kinetic energies and equal stopping forces are applied, they will stop after travelling equal distances.",
          'isCorrect': true,
        },
        {
          'text': "If a truck, car and motorcycle have equal kinetic energies and equal stopping forces are applied, they will stop after travelling different distances.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef97 = topicRef
        .collection('questions')
        .doc('97');

    await questionRef97.set({
      'questionId': '97',
      'order': 97,
      'statements': [
        {
          'text': "Total internal reflection can take place when light travels from diamond to glass.",
          'isCorrect': true,
        },
        {
          'text': "Total internal reflection cannot take place when light travels from diamond to glass under any condition.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef98 = topicRef
        .collection('questions')
        .doc('98');

    await questionRef98.set({
      'questionId': '98',
      'order': 98,
      'statements': [
        {
          'text': "A transformer is useful for stepping up or stepping down voltages, while the statement that it is used in DC circuits is false.",
          'isCorrect': false,
        },
        {
          'text': "A transformer is used only in DC circuits and cannot step up or step down voltages.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef99 = topicRef
        .collection('questions')
        .doc('99');

    await questionRef99.set({
      'questionId': '99',
      'order': 99,
      'statements': [
        {
          'text': "Domestic electrical wiring is basically a parallel connection.",
          'isCorrect': true,
        },
        {
          'text': "Domestic electrical wiring is basically a series connection.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef100 = topicRef
        .collection('questions')
        .doc('100');

    await questionRef100.set({
      'questionId': '100',
      'order': 100,
      'statements': [
        {
          'text': "At the present level of technology, solar energy can be used to supply hot water, provide water for minor irrigation, provide street lighting, and electrify clusters of villages and small towns.",
          'isCorrect': true,
        },
        {
          'text': "At the present level of technology, solar energy cannot be used for hot water, irrigation, street lighting, or electrification of villages.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef101 = topicRef
        .collection('questions')
        .doc('101');

    await questionRef101.set({
      'questionId': '101',
      'order': 101,
      'statements': [
        {
          'text': "A simple machine helps a person do the same amount of work with lesser force.",
          'isCorrect': true,
        },
        {
          'text': "A simple machine helps a person do more work with lesser force without changing the distance moved.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef102 = topicRef
        .collection('questions')
        .doc('102');

    await questionRef102.set({
      'questionId': '102',
      'order': 102,
      'statements': [
        {
          'text': "A person in a spaceship halfway between Earth and the Sun will observe a jet-black sky, non-twinkling stars, and a much higher outside temperature than on Earth's surface.",
          'isCorrect': true,
        },
        {
          'text': "A person in a spaceship halfway between Earth and the Sun will observe a blue sky, twinkling stars, and a lower outside temperature than on Earth's surface.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef103 = topicRef
        .collection('questions')
        .doc('103');

    await questionRef103.set({
      'questionId': '103',
      'order': 103,
      'statements': [
        {
          'text': "The Diamond Ring phenomenon is observed only along the peripheral regions of the totality trail during a solar eclipse.",
          'isCorrect': true,
        },
        {
          'text': "The Diamond Ring phenomenon can be observed throughout the entire duration of a solar eclipse.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef104 = topicRef
        .collection('questions')
        .doc('104');

    await questionRef104.set({
      'questionId': '104',
      'order': 104,
      'statements': [
        {
          'text': "The mass of an alpha particle is very nearly equal to that of an atom of helium.",
          'isCorrect': true,
        },
        {
          'text': "The mass of an alpha particle is very nearly equal to that of a hydrogen atom.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef105 = topicRef
        .collection('questions')
        .doc('105');

    await questionRef105.set({
      'questionId': '105',
      'order': 105,
      'statements': [
        {
          'text': "Frequency Modulation is used to transmit audio signals in television broadcasts.",
          'isCorrect': true,
        },
        {
          'text': "Frequency Modulation is not used to transmit audio signals in television broadcasts.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef106 = topicRef
        .collection('questions')
        .doc('106');

    await questionRef106.set({
      'questionId': '106',
      'order': 106,
      'statements': [
        {
          'text': "A scintillation counter can be used to confirm whether drinking water contains a gamma-emitting isotope.",
          'isCorrect': true,
        },
        {
          'text': "A scintillation counter cannot detect gamma-emitting isotopes in drinking water.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef107 = topicRef
        .collection('questions')
        .doc('107');

    await questionRef107.set({
      'questionId': '107',
      'order': 107,
      'statements': [
        {
          'text': "The normal temperature of the human body on the Kelvin scale is approximately 310 K.",
          'isCorrect': true,
        },
        {
          'text': "The normal temperature of the human body on the Kelvin scale is approximately 100 K.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef108 = topicRef
        .collection('questions')
        .doc('108');

    await questionRef108.set({
      'questionId': '108',
      'order': 108,
      'statements': [
        {
          'text': "The same note played on a sitar and a flute can be distinguished because of the difference in quality of sound.",
          'isCorrect': true,
        },
        {
          'text': "The same note played on a sitar and a flute cannot be distinguished because all musical instruments produce identical sound quality.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef109 = topicRef
        .collection('questions')
        .doc('109');

    await questionRef109.set({
      'questionId': '109',
      'order': 109,
      'statements': [
        {
          'text': "A diamond sparkles more than a glass imitation, while the statement that diamond has a lower refractive index than glass is false.",
          'isCorrect': false,
        },
        {
          'text': "A diamond sparkles less than a glass imitation because diamond has a lower refractive index than glass.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef110 = topicRef
        .collection('questions')
        .doc('110');

    await questionRef110.set({
      'questionId': '110',
      'order': 110,
      'statements': [
        {
          'text': "Brahmagupta anticipated Newton by declaring that all things gravitate towards the Earth.",
          'isCorrect': true,
        },
        {
          'text': "Brahmagupta stated that objects naturally move away from the Earth due to gravity.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef111 = topicRef
        .collection('questions')
        .doc('111');

    await questionRef111.set({
      'questionId': '111',
      'order': 111,
      'statements': [
        {
          'text': "Optical fibre works on the principle of total internal reflection.",
          'isCorrect': true,
        },
        {
          'text': "Optical fibre works on the principle of ordinary reflection rather than total internal reflection.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef112 = topicRef
        .collection('questions')
        .doc('112');

    await questionRef112.set({
      'questionId': '112',
      'order': 112,
      'statements': [
        {
          'text': "A light appearing blue to passengers in a rocket ship receding from Earth would appear yellow to an observer on Earth.",
          'isCorrect': true,
        },
        {
          'text': "A light appearing blue to passengers in a rocket ship receding from Earth would also appear blue to an observer on Earth.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef113 = topicRef
        .collection('questions')
        .doc('113');

    await questionRef113.set({
      'questionId': '113',
      'order': 113,
      'statements': [
        {
          'text': "An air bubble in water acts like a concave lens.",
          'isCorrect': true,
        },
        {
          'text': "An air bubble in water acts like a convex lens.",
          'isCorrect': false,
        },
      ],
    });

    print('Physics seeding completed.');
  }



  static Future<void> seedScienceTechnology3() async {
            final _firestore = FirebaseFirestore.instance;

    final subjectRef = _firestore.collection('subjects').doc('science_and_technology');

    await subjectRef.set({
      'name': 'Science and Technology',
      'order': 6,
      'hasSections': false,
    }, SetOptions(merge: true));

    // ----------------------------------------------------------
    // Biology
    // ----------------------------------------------------------

    final topicRef6 = subjectRef.collection('topics').doc('biology');
    await topicRef6.set({
      'name': 'Biology',
      'order': 6,
    }, SetOptions(merge: true));

    final questionRef6_1 = topicRef6.collection('questions').doc('1');
    await questionRef6_1.set({
      'questionId': '1',
      'order': 1,
      'statements': [
        {
          'text': 'Some viruses can survive in ocean waters.',
          'isCorrect': true,
        },
        {
          'text': 'No virus can survive in ocean waters.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_2 = topicRef6.collection('questions').doc('2');
    await questionRef6_2.set({
      'questionId': '2',
      'order': 2,
      'statements': [
        {
          'text': 'Nitric Oxide is synthesised in the human body and dilates blood vessels, increasing blood flow.',
          'isCorrect': true,
        },
        {
          'text': 'Nitrous Oxide is synthesised in the human body and dilates blood vessels, increasing blood flow.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_3 = topicRef6.collection('questions').doc('3');
    await questionRef6_3.set({
      'questionId': '3',
      'order': 3,
      'statements': [
        {
          'text': 'Some microorganisms can grow in environments with temperatures above the boiling point of water.',
          'isCorrect': true,
        },
        {
          'text': 'No microorganisms can grow in a highly acidic environment with a pH below 3.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_4 = topicRef6.collection('questions').doc('4');
    await questionRef6_4.set({
      'questionId': '4',
      'order': 4,
      'statements': [
        {
          'text': 'B cells and T cells protect the human body from diseases caused by pathogens.',
          'isCorrect': true,
        },
        {
          'text': 'B cells and T cells alleviate the body\'s pain and inflammation.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_5 = topicRef6.collection('questions').doc('5');
    await questionRef6_5.set({
      'questionId': '5',
      'order': 5,
      'statements': [
        {
          'text': 'Probiotics are made of both bacteria and yeast.',
          'isCorrect': true,
        },
        {
          'text': 'The organisms in probiotics are found in foods we ingest but they do not naturally occur in our gut.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_6 = topicRef6.collection('questions').doc('6');
    await questionRef6_6.set({
      'questionId': '6',
      'order': 6,
      'statements': [
        {
          'text': 'Bacteria and Fungi can be cultured in an artificial/synthetic medium.',
          'isCorrect': true,
        },
        {
          'text': 'Viruses can be cultured in an artificial/synthetic medium.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_7 = topicRef6.collection('questions').doc('7');
    await questionRef6_7.set({
      'questionId': '7',
      'order': 7,
      'statements': [
        {
          'text': 'In nature, lichen and moss are most likely to be found surviving on a surface without soil.',
          'isCorrect': true,
        },
        {
          'text': 'In nature, fern and mushroom are most likely to be found surviving on a surface without soil.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_8 = topicRef6.collection('questions').doc('8');
    await questionRef6_8.set({
      'questionId': '8',
      'order': 8,
      'statements': [
        {
          'text': 'Common cold is sometimes caused by an adenovirus, whereas AIDS is caused by a retrovirus.',
          'isCorrect': true,
        },
        {
          'text': 'Adenoviruses have single-stranded DNA genomes, whereas retroviruses have double-stranded DNA genomes.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_9 = topicRef6.collection('questions').doc('9');
    await questionRef6_9.set({
      'questionId': '9',
      'order': 9,
      'statements': [
        {
          'text': 'Plant cells have cellulose cell walls, whilst animal cells do not.',
          'isCorrect': true,
        },
        {
          'text': 'Plant cells do not have plasma membranes, unlike animal cells which do.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_10 = topicRef6.collection('questions').doc('10');
    await questionRef6_10.set({
      'questionId': '10',
      'order': 10,
      'statements': [
        {
          'text': 'Taking incorrect doses of antibiotics to cure diseases is a reason for the occurrence of multi-drug resistance in microbial pathogens in India.',
          'isCorrect': true,
        },
        {
          'text': 'Genetic predisposition of some people is a reason for the occurrence of multi-drug resistance in microbial pathogens in India.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_11 = topicRef6.collection('questions').doc('11');
    await questionRef6_11.set({
      'questionId': '11',
      'order': 11,
      'statements': [
        {
          'text': 'Birds, dust blowing, rain, and wind blowing can all spread plant diseases.',
          'isCorrect': true,
        },
        {
          'text': 'Rain does not spread plant diseases.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_12 = topicRef6.collection('questions').doc('12');
    await questionRef6_12.set({
      'questionId': '12',
      'order': 12,
      'statements': [
        {
          'text': 'Viruses can infect bacteria, fungi, and plants.',
          'isCorrect': true,
        },
        {
          'text': 'Viruses cannot infect fungi.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_13 = topicRef6.collection('questions').doc('13');
    await questionRef6_13.set({
      'questionId': '13',
      'order': 13,
      'statements': [
        {
          'text': 'In photosynthesis, free energy is converted into potential energy and stored.',
          'isCorrect': true,
        },
        {
          'text': 'In photosynthesis, potential energy is released to form free energy.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_14 = topicRef6.collection('questions').doc('14');
    await questionRef6_14.set({
      'questionId': '14',
      'order': 14,
      'statements': [
        {
          'text': 'Among crab, mite, scorpion and spider, mite, scorpion and spider belong to the same class.',
          'isCorrect': true,
        },
        {
          'text': 'Among crab, mite, scorpion and spider, crab belongs to the same class as mite, scorpion and spider.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_15 = topicRef6.collection('questions').doc('15');
    await questionRef6_15.set({
      'questionId': '15',
      'order': 15,
      'statements': [
        {
          'text': 'Vegetative propagation produces a clonal population.',
          'isCorrect': true,
        },
        {
          'text': 'Vegetative propagation helps in eliminating the virus.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_16 = topicRef6.collection('questions').doc('16');
    await questionRef6_16.set({
      'questionId': '16',
      'order': 16,
      'statements': [
        {
          'text': 'Bagasse can be used as biomass fuel for the generation of energy.',
          'isCorrect': true,
        },
        {
          'text': 'Molasses can be used as one of the feedstocks for the production of synthetic chemical fertilizers.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_17 = topicRef6.collection('questions').doc('17');
    await questionRef6_17.set({
      'questionId': '17',
      'order': 17,
      'statements': [
        {
          'text': 'Aflatoxins, which are not generally destroyed by the normal cooking process, are produced by moulds.',
          'isCorrect': true,
        },
        {
          'text': 'Aflatoxins, which are not generally destroyed by the normal cooking process, are produced by bacteria.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_18 = topicRef6.collection('questions').doc('18');
    await questionRef6_18.set({
      'questionId': '18',
      'order': 18,
      'statements': [
        {
          'text': 'Calcium, Iron and Sodium are all required by the human body for the contraction of muscles.',
          'isCorrect': true,
        },
        {
          'text': 'Sodium is not required by the human body for the contraction of muscles.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_19 = topicRef6.collection('questions').doc('19');
    await questionRef6_19.set({
      'questionId': '19',
      'order': 19,
      'statements': [
        {
          'text': 'Sea cow and sea lion are mammals.',
          'isCorrect': true,
        },
        {
          'text': 'Sea horse is a mammal.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_20 = topicRef6.collection('questions').doc('20');
    await questionRef6_20.set({
      'questionId': '20',
      'order': 20,
      'statements': [
        {
          'text': 'Many transplanted seedlings do not grow because most of the root hairs are lost during transplantation.',
          'isCorrect': true,
        },
        {
          'text': 'Many transplanted seedlings do not grow because most of the root hairs grip the new soil too hard.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_21 = topicRef6.collection('questions').doc('21');
    await questionRef6_21.set({
      'questionId': '21',
      'order': 21,
      'statements': [
        {
          'text': 'Viruses lack enzymes necessary for the generation of energy.',
          'isCorrect': true,
        },
        {
          'text': 'Viruses can be cultured in any synthetic medium.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_22 = topicRef6.collection('questions').doc('22');
    await questionRef6_22.set({
      'questionId': '22',
      'order': 22,
      'statements': [
        {
          'text': 'With reference to the evolution of living organisms, the correct sequence is Salamander, Python, Kangaroo.',
          'isCorrect': true,
        },
        {
          'text': 'With reference to the evolution of living organisms, the correct sequence is Octopus, Dolphin, Shark.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_23 = topicRef6.collection('questions').doc('23');
    await questionRef6_23.set({
      'questionId': '23',
      'order': 23,
      'statements': [
        {
          'text': 'Antioxidants help a person maintain health and promote longevity by neutralizing the free radicals produced in the body during metabolism.',
          'isCorrect': true,
        },
        {
          'text': 'Antioxidants help a person maintain health and promote longevity by activating the enzymes necessary for vitamin synthesis in the body and helping prevent vitamin deficiency.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_24 = topicRef6.collection('questions').doc('24');
    await questionRef6_24.set({
      'questionId': '24',
      'order': 24,
      'statements': [
        {
          'text': 'A food product advertised as not containing trans-fats signifies that the product is not made out of hydrogenated oils.',
          'isCorrect': true,
        },
        {
          'text': 'A food product advertised as not containing trans-fats signifies that the product is not made out of animal fats/oils.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_25 = topicRef6.collection('questions').doc('25');
    await questionRef6_25.set({
      'questionId': '25',
      'order': 25,
      'statements': [
        {
          'text': 'When the bark of a tree is removed in a circular fashion all around near its base, it gradually dries up and dies because the roots are starved of energy.',
          'isCorrect': true,
        },
        {
          'text': 'When the bark of a tree is removed in a circular fashion all around near its base, it gradually dries up and dies because water from the soil cannot rise to the aerial parts.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_26 = topicRef6.collection('questions').doc('26');
    await questionRef6_26.set({
      'questionId': '26',
      'order': 26,
      'statements': [
        {
          'text': 'The breakdown of proteins into amino acids in the bodies of living organisms is a digestive process.',
          'isCorrect': true,
        },
        {
          'text': 'The breakdown of glucose into CO2 and H2O in the bodies of living organisms is a digestive process.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_27 = topicRef6.collection('questions').doc('27');
    await questionRef6_27.set({
      'questionId': '27',
      'order': 27,
      'statements': [
        {
          'text': 'From the point of view of evolution of living organisms, the correct sequence of evolution is Shark, Tortoise, Otter.',
          'isCorrect': true,
        },
        {
          'text': 'From the point of view of evolution of living organisms, the correct sequence of evolution is Otter, Tortoise, Shark.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_28 = topicRef6.collection('questions').doc('28');
    await questionRef6_28.set({
      'questionId': '28',
      'order': 28,
      'statements': [
        {
          'text': 'The Panda belongs to the same family as the Bear.',
          'isCorrect': true,
        },
        {
          'text': 'The Panda belongs to the same family as the Dog.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_29 = topicRef6.collection('questions').doc('29');
    await questionRef6_29.set({
      'questionId': '29',
      'order': 29,
      'statements': [
        {
          'text': 'In making the saffron spice, the stigma of the plant is used.',
          'isCorrect': true,
        },
        {
          'text': 'In making the saffron spice, the petal of the plant is used.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_30 = topicRef6.collection('questions').doc('30');
    await questionRef6_30.set({
      'questionId': '30',
      'order': 30,
      'statements': [
        {
          'text': 'The sweet orange plant is propagated by the grafting technique.',
          'isCorrect': true,
        },
        {
          'text': 'The jasmine plant is not propagated by the layering technique.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_31 = topicRef6.collection('questions').doc('31');
    await questionRef6_31.set({
      'questionId': '31',
      'order': 31,
      'statements': [
        {
          'text': 'In the given scenario, the son suffers from colour blindness while the daughter does not suffer from it.',
          'isCorrect': true,
        },
        {
          'text': 'In the given scenario, the daughter suffers from colour blindness while the son does not suffer from it.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_32 = topicRef6.collection('questions').doc('32');
    await questionRef6_32.set({
      'questionId': '32',
      'order': 32,
      'statements': [
        {
          'text': 'Probiotic food contains live bacteria which are considered beneficial to humans.',
          'isCorrect': true,
        },
        {
          'text': 'Probiotic food does not help in maintaining gut flora.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_33 = topicRef6.collection('questions').doc('33');
    await questionRef6_33.set({
      'questionId': '33',
      'order': 33,
      'statements': [
        {
          'text': 'In the human body, the liver has an important role in fat digestion.',
          'isCorrect': true,
        },
        {
          'text': 'The liver produces two important fat-digesting enzymes.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_34 = topicRef6.collection('questions').doc('34');
    await questionRef6_34.set({
      'questionId': '34',
      'order': 34,
      'statements': [
        {
          'text': 'In decreasing order of length, the three structural parts of the small intestine in the human body are Ileum, Jejunum, Duodenum.',
          'isCorrect': true,
        },
        {
          'text': 'In decreasing order of length, the three structural parts of the small intestine in the human body are Jejunum, Duodenum, Ileum.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_35 = topicRef6.collection('questions').doc('35');
    await questionRef6_35.set({
      'questionId': '35',
      'order': 35,
      'statements': [
        {
          'text': 'The parathyroid hormone regulates blood calcium and phosphate in the human body.',
          'isCorrect': true,
        },
        {
          'text': 'Thyroxine regulates blood calcium and phosphate in the human body.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_36 = topicRef6.collection('questions').doc('36');
    await questionRef6_36.set({
      'questionId': '36',
      'order': 36,
      'statements': [
        {
          'text': 'In the pitcher plant, the leaf becomes modified into a pitcher.',
          'isCorrect': true,
        },
        {
          'text': 'In the pitcher plant, the stem becomes modified into a pitcher.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_37 = topicRef6.collection('questions').doc('37');
    await questionRef6_37.set({
      'questionId': '37',
      'order': 37,
      'statements': [
        {
          'text': 'Most insects respire by a tracheal system.',
          'isCorrect': true,
        },
        {
          'text': 'Most insects respire by lungs.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_38 = topicRef6.collection('questions').doc('38');
    await questionRef6_38.set({
      'questionId': '38',
      'order': 38,
      'statements': [
        {
          'text': 'In human beings, normally, a sperm fertilizes the ovum in the fallopian tube.',
          'isCorrect': true,
        },
        {
          'text': 'In human beings, normally, a sperm fertilizes the ovum in the cervix.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_39 = topicRef6.collection('questions').doc('39');
    await questionRef6_39.set({
      'questionId': '39',
      'order': 39,
      'statements': [
        {
          'text': 'The medulla oblongata is the regulating centre for swallowing and vomiting in the human brain.',
          'isCorrect': true,
        },
        {
          'text': 'The cerebellum is the regulating centre for swallowing and vomiting in the human brain.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_40 = topicRef6.collection('questions').doc('40');
    await questionRef6_40.set({
      'questionId': '40',
      'order': 40,
      'statements': [
        {
          'text': 'The production of urea is a function of the liver.',
          'isCorrect': true,
        },
        {
          'text': 'The production of lipase is a function of the liver.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_41 = topicRef6.collection('questions').doc('41');
    await questionRef6_41.set({
      'questionId': '41',
      'order': 41,
      'statements': [
        {
          'text': 'Trypsin, Amylase, and Lipase are digestive enzymes in the human system.',
          'isCorrect': true,
        },
        {
          'text': 'Gastrin is a digestive enzyme in the human system.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_42 = topicRef6.collection('questions').doc('42');
    await questionRef6_42.set({
      'questionId': '42',
      'order': 42,
      'statements': [
        {
          'text': 'Blue and red light are strongly absorbed by plants.',
          'isCorrect': true,
        },
        {
          'text': 'Violet and orange light are strongly absorbed by plants.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_43 = topicRef6.collection('questions').doc('43');
    await questionRef6_43.set({
      'questionId': '43',
      'order': 43,
      'statements': [
        {
          'text': 'In the human body, the appendix is attached to the large intestine.',
          'isCorrect': true,
        },
        {
          'text': 'In the human body, the appendix is attached to the small intestine.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_44 = topicRef6.collection('questions').doc('44');
    await questionRef6_44.set({
      'questionId': '44',
      'order': 44,
      'statements': [
        {
          'text': 'Caffeine, a constituent of tea and coffee, is a diuretic.',
          'isCorrect': true,
        },
        {
          'text': 'Citric acid is a good substitute for ascorbic acid in our nutrition.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_45 = topicRef6.collection('questions').doc('45');
    await questionRef6_45.set({
      'questionId': '45',
      'order': 45,
      'statements': [
        {
          'text': 'The hepatic portal vein delivers nutrient-rich blood from the stomach and small intestine to the liver.',
          'isCorrect': true,
        },
        {
          'text': 'The hepatic vein delivers nutrient-rich blood from the stomach and small intestine to the liver.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_46 = topicRef6.collection('questions').doc('46');
    await questionRef6_46.set({
      'questionId': '46',
      'order': 46,
      'statements': [
        {
          'text': 'The pancreatic duct releases its contents into the duodenum.',
          'isCorrect': true,
        },
        {
          'text': 'The common bile duct releases its contents into the stomach.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_47 = topicRef6.collection('questions').doc('47');
    await questionRef6_47.set({
      'questionId': '47',
      'order': 47,
      'statements': [
        {
          'text': 'Ragi, skimmed milk, and egg are good sources of nutritional calcium.',
          'isCorrect': true,
        },
        {
          'text': 'Rice is a good source of nutritional calcium.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_48 = topicRef6.collection('questions').doc('48');
    await questionRef6_48.set({
      'questionId': '48',
      'order': 48,
      'statements': [
        {
          'text': 'Protein-digesting enzymes from the pancreas are released into the small intestine.',
          'isCorrect': true,
        },
        {
          'text': 'All the proteins in our food are digested in the small intestine only.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_49 = topicRef6.collection('questions').doc('49');
    await questionRef6_49.set({
      'questionId': '49',
      'order': 49,
      'statements': [
        {
          'text': 'Amoeba reproduces by fission.',
          'isCorrect': true,
        },
        {
          'text': 'Not all unicellular organisms reproduce by asexual methods.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_50 = topicRef6.collection('questions').doc('50');
    await questionRef6_50.set({
      'questionId': '50',
      'order': 50,
      'statements': [
        {
          'text': 'A person with diabetes insipidus feels thirsty.',
          'isCorrect': true,
        },
        {
          'text': 'A person with diabetes insipidus suffers from excess secretion of vasopressin.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_51 = topicRef6.collection('questions').doc('51');
    await questionRef6_51.set({
      'questionId': '51',
      'order': 51,
      'statements': [
        {
          'text': 'Non-function of the lachrymal gland is an important symptom of deficiency of Vitamin A.',
          'isCorrect': true,
        },
        {
          'text': 'Vitamin C deficiency can lead to pain in the muscles.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_52 = topicRef6.collection('questions').doc('52');
    await questionRef6_52.set({
      'questionId': '52',
      'order': 52,
      'statements': [
        {
          'text': 'The hormone insulin is a peptide.',
          'isCorrect': true,
        },
        {
          'text': 'The hormone insulin is a steroid.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_53 = topicRef6.collection('questions').doc('53');
    await questionRef6_53.set({
      'questionId': '53',
      'order': 53,
      'statements': [
        {
          'text': 'Lymphocyte cells are formed in the long bone of the human body.',
          'isCorrect': true,
        },
        {
          'text': 'Lymphocyte cells are formed in the liver of the human body.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_54 = topicRef6.collection('questions').doc('54');
    await questionRef6_54.set({
      'questionId': '54',
      'order': 54,
      'statements': [
        {
          'text': 'Fatty acids should be a part of the balanced human diet.',
          'isCorrect': true,
        },
        {
          'text': 'The cells of the human body cannot synthesize any fatty acids.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_55 = topicRef6.collection('questions').doc('55');
    await questionRef6_55.set({
      'questionId': '55',
      'order': 55,
      'statements': [
        {
          'text': 'Cholera is a disease caused by bacteria.',
          'isCorrect': true,
        },
        {
          'text': '\'Athlete\'s foot\' is a disease caused by a virus.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_56 = topicRef6.collection('questions').doc('56');
    await questionRef6_56.set({
      'questionId': '56',
      'order': 56,
      'statements': [
        {
          'text': 'The octopus is a mollusc.',
          'isCorrect': true,
        },
        {
          'text': 'The octopus is an arthropod.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_57 = topicRef6.collection('questions').doc('57');
    await questionRef6_57.set({
      'questionId': '57',
      'order': 57,
      'statements': [
        {
          'text': 'After the waste is removed in the kidney, the cleaner blood is not sent back through the renal artery.',
          'isCorrect': true,
        },
        {
          'text': 'After the waste is removed in the kidney, the cleaner blood is sent back through the renal artery.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_58 = topicRef6.collection('questions').doc('58');
    await questionRef6_58.set({
      'questionId': '58',
      'order': 58,
      'statements': [
        {
          'text': 'Milk contains none of the B-vitamins.',
          'isCorrect': true,
        },
        {
          'text': 'Vitamin B1 (thiamine) deficiency can lead to heart failure.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_59 = topicRef6.collection('questions').doc('59');
    await questionRef6_59.set({
      'questionId': '59',
      'order': 59,
      'statements': [
        {
          'text': 'Swollen lymph nodes, sweating at night, loss of memory, and loss of weight are all symptoms of AIDS.',
          'isCorrect': true,
        },
        {
          'text': 'Loss of memory is not a symptom of AIDS.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_60 = topicRef6.collection('questions').doc('60');
    await questionRef6_60.set({
      'questionId': '60',
      'order': 60,
      'statements': [
        {
          'text': 'Enterogastrone is produced in the small intestine in response to the presence of fatty acids.',
          'isCorrect': true,
        },
        {
          'text': 'Secretin is not produced from the duodenum in response to the presence of HCl.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_61 = topicRef6.collection('questions').doc('61');
    await questionRef6_61.set({
      'questionId': '61',
      'order': 61,
      'statements': [
        {
          'text': 'Among living organisms, mutation is the most responsible factor for bringing about the origin of a new species.',
          'isCorrect': true,
        },
        {
          'text': 'Among living organisms, isolation is the most responsible factor for bringing about the origin of a new species.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_62 = topicRef6.collection('questions').doc('62');
    await questionRef6_62.set({
      'questionId': '62',
      'order': 62,
      'statements': [
        {
          'text': 'Ticks and mites are actually arachnids.',
          'isCorrect': true,
        },
        {
          'text': 'Ticks and mites are actually insects.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_63 = topicRef6.collection('questions').doc('63');
    await questionRef6_63.set({
      'questionId': '63',
      'order': 63,
      'statements': [
        {
          'text': 'The blood has more platelets than white blood cells (WBC).',
          'isCorrect': true,
        },
        {
          'text': 'Blood cells constitute about 70 per cent of the total volume of the blood.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_64 = topicRef6.collection('questions').doc('64');
    await questionRef6_64.set({
      'questionId': '64',
      'order': 64,
      'statements': [
        {
          'text': 'Bougainvillea, Carnations, Cocoa, and Grapes are all propagated by stem cuttings.',
          'isCorrect': true,
        },
        {
          'text': 'Grapes are not propagated by stem cuttings.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_65 = topicRef6.collection('questions').doc('65');
    await questionRef6_65.set({
      'questionId': '65',
      'order': 65,
      'statements': [
        {
          'text': 'In the context of organic evolution, the loss of limbs of snakes is explained by the phenomenon of use and disuse of organs.',
          'isCorrect': true,
        },
        {
          'text': 'In the context of organic evolution, the loss of limbs of snakes is explained by the phenomenon of natural selection.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_66 = topicRef6.collection('questions').doc('66');
    await questionRef6_66.set({
      'questionId': '66',
      'order': 66,
      'statements': [
        {
          'text': 'When one gene controls two or more different characters simultaneously, the phenomenon is called pleiotropy.',
          'isCorrect': true,
        },
        {
          'text': 'When one gene controls two or more different characters simultaneously, the phenomenon is called polyploidy.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_67 = topicRef6.collection('questions').doc('67');
    await questionRef6_67.set({
      'questionId': '67',
      'order': 67,
      'statements': [
        {
          'text': 'The production of somatropin goes up when a person exercises.',
          'isCorrect': true,
        },
        {
          'text': 'Men\'s testes produce progesterone.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_68 = topicRef6.collection('questions').doc('68');
    await questionRef6_68.set({
      'questionId': '68',
      'order': 68,
      'statements': [
        {
          'text': 'Among wolf, walrus, seal and deer, the wolf is monogamous.',
          'isCorrect': true,
        },
        {
          'text': 'Among wolf, walrus, seal and deer, the deer is monogamous.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_69 = topicRef6.collection('questions').doc('69');
    await questionRef6_69.set({
      'questionId': '69',
      'order': 69,
      'statements': [
        {
          'text': 'In a bisexual flower, if the androecium and gynaecium mature at different times, the phenomenon is known as dichogamy.',
          'isCorrect': true,
        },
        {
          'text': 'In a bisexual flower, if the androecium and gynaecium mature at different times, the phenomenon is known as herkogamy.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_70 = topicRef6.collection('questions').doc('70');
    await questionRef6_70.set({
      'questionId': '70',
      'order': 70,
      'statements': [
        {
          'text': 'All echinoderms are viviparous.',
          'isCorrect': true,
        },
        {
          'text': 'Round worm has no circulatory system.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_71 = topicRef6.collection('questions').doc('71');
    await questionRef6_71.set({
      'questionId': '71',
      'order': 71,
      'statements': [
        {
          'text': 'Viroids consist of a single-stranded RNA molecule.',
          'isCorrect': true,
        },
        {
          'text': 'Prions are the smallest free-living cells.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_72 = topicRef6.collection('questions').doc('72');
    await questionRef6_72.set({
      'questionId': '72',
      'order': 72,
      'statements': [
        {
          'text': 'Drinking of whisky increases the frequency of urination.',
          'isCorrect': true,
        },
        {
          'text': 'Alcohol intake speeds up the secretion of vasopressin in the body.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_73 = topicRef6.collection('questions').doc('73');
    await questionRef6_73.set({
      'questionId': '73',
      'order': 73,
      'statements': [
        {
          'text': 'Essential amino acids cannot be synthesised in the human body.',
          'isCorrect': true,
        },
        {
          'text': 'Human diet should compulsorily contain glycine, serine and tyrosine.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_74 = topicRef6.collection('questions').doc('74');
    await questionRef6_74.set({
      'questionId': '74',
      'order': 74,
      'statements': [
        {
          'text': 'The endoplasmic reticulum and ribosome play the most significant role in protein synthesis among cell organelles.',
          'isCorrect': true,
        },
        {
          'text': 'Lysosome and centrosome play the most significant role in protein synthesis among cell organelles.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_75 = topicRef6.collection('questions').doc('75');
    await questionRef6_75.set({
      'questionId': '75',
      'order': 75,
      'statements': [
        {
          'text': 'Scientists can cut apart and paste together DNA molecules at will, regardless of the source of the molecules.',
          'isCorrect': true,
        },
        {
          'text': 'DNA fragments cannot be manipulated using restriction endonucleases and DNA ligases.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_76 = topicRef6.collection('questions').doc('76');
    await questionRef6_76.set({
      'questionId': '76',
      'order': 76,
      'statements': [
        {
          'text': 'The cellular and molecular control of programmed cell death is known as apoptosis.',
          'isCorrect': true,
        },
        {
          'text': 'The cellular and molecular control of programmed cell death is known as necrosis.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_77 = topicRef6.collection('questions').doc('77');
    await questionRef6_77.set({
      'questionId': '77',
      'order': 77,
      'statements': [
        {
          'text': 'Among cell organelles other than the nucleus, the mitochondrion contains DNA.',
          'isCorrect': true,
        },
        {
          'text': 'Among cell organelles other than the nucleus, the centriole contains DNA.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_78 = topicRef6.collection('questions').doc('78');
    await questionRef6_78.set({
      'questionId': '78',
      'order': 78,
      'statements': [
        {
          'text': 'Epiphytes are plants which depend on other plants for mechanical support.',
          'isCorrect': true,
        },
        {
          'text': 'Epiphytes are plants which depend on other plants for food.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_79 = topicRef6.collection('questions').doc('79');
    await questionRef6_79.set({
      'questionId': '79',
      'order': 79,
      'statements': [
        {
          'text': 'An antigen is a substance which stimulates the formation of antibody.',
          'isCorrect': true,
        },
        {
          'text': 'An antigen is a substance which destroys harmful bacteria.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_80 = topicRef6.collection('questions').doc('80');
    await questionRef6_80.set({
      'questionId': '80',
      'order': 80,
      'statements': [
        {
          'text': 'The complementarity of the two strands of DNA makes it uniquely suited to store and transmit genetic information from generation to generation.',
          'isCorrect': true,
        },
        {
          'text': 'The number of base-pairs per turn of DNA makes it uniquely suited to store and transmit genetic information from generation to generation.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_81 = topicRef6.collection('questions').doc('81');
    await questionRef6_81.set({
      'questionId': '81',
      'order': 81,
      'statements': [
        {
          'text': 'The knee-cap is called the patella.',
          'isCorrect': true,
        },
        {
          'text': 'The knee-cap is called the scapula.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_82 = topicRef6.collection('questions').doc('82');
    await questionRef6_82.set({
      'questionId': '82',
      'order': 82,
      'statements': [
        {
          'text': 'Filaria is caused by a nematode.',
          'isCorrect': true,
        },
        {
          'text': 'Guinea-worm is an annelid.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_83 = topicRef6.collection('questions').doc('83');
    await questionRef6_83.set({
      'questionId': '83',
      'order': 83,
      'statements': [
        {
          'text': 'The discovery of transduction and conjugation in bacteria is attributed to Lederberg.',
          'isCorrect': true,
        },
        {
          'text': 'The discovery of transduction and conjugation in bacteria is attributed to Morgan.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_84 = topicRef6.collection('questions').doc('84');
    await questionRef6_84.set({
      'questionId': '84',
      'order': 84,
      'statements': [
        {
          'text': 'In eye donation, the cornea is the part transplanted from the donor.',
          'isCorrect': true,
        },
        {
          'text': 'In eye donation, the lens is the part transplanted from the donor.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_85 = topicRef6.collection('questions').doc('85');
    await questionRef6_85.set({
      'questionId': '85',
      'order': 85,
      'statements': [
        {
          'text': 'For a man whose blood group is not known and who needs immediate blood transfusion, O, Rh+ blood readily available in the hospital would be safe for transfusion.',
          'isCorrect': true,
        },
        {
          'text': 'For a man whose blood group is not known and who needs immediate blood transfusion, AB, Rh+ blood readily available in the hospital would be safe for transfusion.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_86 = topicRef6.collection('questions').doc('86');
    await questionRef6_86.set({
      'questionId': '86',
      'order': 86,
      'statements': [
        {
          'text': '\'Metastasis\' is the process by which cancer cells spread through the blood or lymphatic system to other sites or organs.',
          'isCorrect': true,
        },
        {
          'text': '\'Metastasis\' is the process by which cells divide rapidly under the influence of drugs.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_87 = topicRef6.collection('questions').doc('87');
    await questionRef6_87.set({
      'questionId': '87',
      'order': 87,
      'statements': [
        {
          'text': 'Ptyalin digests starch.',
          'isCorrect': true,
        },
        {
          'text': 'Ptyalin hydrolyses fats.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_88 = topicRef6.collection('questions').doc('88');
    await questionRef6_88.set({
      'questionId': '88',
      'order': 88,
      'statements': [
        {
          'text': 'Blue-green algae can serve as a biofertiliser for rice crop.',
          'isCorrect': true,
        },
        {
          'text': 'Rhizobium sp. can serve as a biofertiliser for rice crop.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_89 = topicRef6.collection('questions').doc('89');
    await questionRef6_89.set({
      'questionId': '89',
      'order': 89,
      'statements': [
        {
          'text': 'The silkworm yields the fibre of commerce at the pupa stage of its life-cycle.',
          'isCorrect': true,
        },
        {
          'text': 'The silkworm yields the fibre of commerce at the larva stage of its life-cycle.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_90 = topicRef6.collection('questions').doc('90');
    await questionRef6_90.set({
      'questionId': '90',
      'order': 90,
      'statements': [
        {
          'text': 'Diabetes is classified as a hormonal disorder.',
          'isCorrect': true,
        },
        {
          'text': 'Diabetes is classified as a genetic disease.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_91 = topicRef6.collection('questions').doc('91');
    await questionRef6_91.set({
      'questionId': '91',
      'order': 91,
      'statements': [
        {
          'text': 'The blood glucose level is commonly expressed as milligram per decilitre.',
          'isCorrect': true,
        },
        {
          'text': 'The blood glucose level is commonly expressed as parts per million.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_92 = topicRef6.collection('questions').doc('92');
    await questionRef6_92.set({
      'questionId': '92',
      'order': 92,
      'statements': [
        {
          'text': 'A phytotron is a facility to grow plants under controlled conditions.',
          'isCorrect': true,
        },
        {
          'text': 'A phytotron is a facility to grow plants under disease-free conditions.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_93 = topicRef6.collection('questions').doc('93');
    await questionRef6_93.set({
      'questionId': '93',
      'order': 93,
      'statements': [
        {
          'text': 'The pancreas secretes insulin.',
          'isCorrect': true,
        },
        {
          'text': 'The pancreas secretes cortisone.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_94 = topicRef6.collection('questions').doc('94');
    await questionRef6_94.set({
      'questionId': '94',
      'order': 94,
      'statements': [
        {
          'text': 'Insect-resistant cotton plants have been genetically engineered by inserting a gene from a bacterium.',
          'isCorrect': true,
        },
        {
          'text': 'Insect-resistant cotton plants have been genetically engineered by inserting a gene from a virus.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_95 = topicRef6.collection('questions').doc('95');
    await questionRef6_95.set({
      'questionId': '95',
      'order': 95,
      'statements': [
        {
          'text': 'Hybridoma technology is a biotechnological approach for the commercial production of monoclonal antibodies.',
          'isCorrect': true,
        },
        {
          'text': 'Hybridoma technology is a biotechnological approach for the commercial production of interferon.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_96 = topicRef6.collection('questions').doc('96');
    await questionRef6_96.set({
      'questionId': '96',
      'order': 96,
      'statements': [
        {
          'text': 'The sensation of fatigue in the muscles after prolonged strenuous physical work is caused by the accumulation of lactic acid.',
          'isCorrect': true,
        },
        {
          'text': 'The sensation of fatigue in the muscles after prolonged strenuous physical work is caused by the depletion of glucose.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_97 = topicRef6.collection('questions').doc('97');
    await questionRef6_97.set({
      'questionId': '97',
      'order': 97,
      'statements': [
        {
          'text': 'Women have two \'X\' chromosomes.',
          'isCorrect': true,
        },
        {
          'text': 'In human beings, the females play a major role in determining the sex of the offspring.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_98 = topicRef6.collection('questions').doc('98');
    await questionRef6_98.set({
      'questionId': '98',
      'order': 98,
      'statements': [
        {
          'text': '\'DNA Fingerprinting\' has become a powerful tool to establish paternity and the identity of criminals in rape and assault cases.',
          'isCorrect': true,
        },
        {
          'text': 'Trace evidences such as hairs, saliva and dried semen are not adequate for DNA analysis.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_99 = topicRef6.collection('questions').doc('99');
    await questionRef6_99.set({
      'questionId': '99',
      'order': 99,
      'statements': [
        {
          'text': 'In eye donation, the cornea of the donor\'s eye is utilised.',
          'isCorrect': true,
        },
        {
          'text': 'In eye donation, the retina of the donor\'s eye is utilised.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_100 = topicRef6.collection('questions').doc('100');
    await questionRef6_100.set({
      'questionId': '100',
      'order': 100,
      'statements': [
        {
          'text': 'Insulin is associated with glucose.',
          'isCorrect': true,
        },
        {
          'text': 'Insulin is associated with attracting partners through the sense of smell.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_101 = topicRef6.collection('questions').doc('101');
    await questionRef6_101.set({
      'questionId': '101',
      'order': 101,
      'statements': [
        {
          'text': 'The Neem tree has acquired industrial importance as a source of biofertilizer, biopesticide, and anti-fertility compound.',
          'isCorrect': true,
        },
        {
          'text': 'The Neem tree has acquired industrial importance as a source of anti-cancer drug, biopesticide, and biofertilizer.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_102 = topicRef6.collection('questions').doc('102');
    await questionRef6_102.set({
      'questionId': '102',
      'order': 102,
      'statements': [
        {
          'text': 'Pyrethrin is used for mosquito control.',
          'isCorrect': true,
        },
        {
          'text': 'Pyrethrin is used for heart trouble.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_103 = topicRef6.collection('questions').doc('103');
    await questionRef6_103.set({
      'questionId': '103',
      'order': 103,
      'statements': [
        {
          'text': 'When ants bite, they inject formic acid.',
          'isCorrect': true,
        },
        {
          'text': 'When ants bite, they inject methanol.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_104 = topicRef6.collection('questions').doc('104');
    await questionRef6_104.set({
      'questionId': '104',
      'order': 104,
      'statements': [
        {
          'text': 'Mycorrhiza is a useful functional association between fungi and the roots of higher plants.',
          'isCorrect': true,
        },
        {
          'text': 'Lichen is a useful functional association between fungi and the roots of higher plants.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_105 = topicRef6.collection('questions').doc('105');
    await questionRef6_105.set({
      'questionId': '105',
      'order': 105,
      'statements': [
        {
          'text': 'Consumption of fish is considered healthy compared to the flesh of other animals because fish contains polyunsaturated fatty acids.',
          'isCorrect': true,
        },
        {
          'text': 'Consumption of fish is considered healthy compared to the flesh of other animals because fish contains saturated fatty acids.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_106 = topicRef6.collection('questions').doc('106');
    await questionRef6_106.set({
      'questionId': '106',
      'order': 106,
      'statements': [
        {
          'text': 'Haemophilia is a genetic disorder which leads to non-clotting of blood.',
          'isCorrect': true,
        },
        {
          'text': 'Haemophilia is a genetic disorder which leads to a decrease in haemoglobin level.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_107 = topicRef6.collection('questions').doc('107');
    await questionRef6_107.set({
      'questionId': '107',
      'order': 107,
      'statements': [
        {
          'text': 'Bacteria, micro-algae and fungi are the types of microorganisms most widely used in industries.',
          'isCorrect': true,
        },
        {
          'text': 'Bacteria alone are the type of microorganism most widely used in industries.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_108 = topicRef6.collection('questions').doc('108');
    await questionRef6_108.set({
      'questionId': '108',
      'order': 108,
      'statements': [
        {
          'text': 'Wood develops from the stem.',
          'isCorrect': true,
        },
        {
          'text': 'Wood develops from the ovule.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_109 = topicRef6.collection('questions').doc('109');
    await questionRef6_109.set({
      'questionId': '109',
      'order': 109,
      'statements': [
        {
          'text': 'The theory of mutation is attributed to De Vries.',
          'isCorrect': true,
        },
        {
          'text': 'The theory of mutation is attributed to Darwin.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_110 = topicRef6.collection('questions').doc('110');
    await questionRef6_110.set({
      'questionId': '110',
      'order': 110,
      'statements': [
        {
          'text': 'Both starch and cellulose are made up of glucose molecules.',
          'isCorrect': true,
        },
        {
          'text': 'Both starch and cellulose give colour with iodine.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_111 = topicRef6.collection('questions').doc('111');
    await questionRef6_111.set({
      'questionId': '111',
      'order': 111,
      'statements': [
        {
          'text': 'Ergotism is caused by the consumption of contaminated grains.',
          'isCorrect': true,
        },
        {
          'text': 'Ergotism is caused by the consumption of contaminated water.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_112 = topicRef6.collection('questions').doc('112');
    await questionRef6_112.set({
      'questionId': '112',
      'order': 112,
      'statements': [
        {
          'text': 'The complete conversion of glucose in the presence of oxygen into carbon dioxide and water, with release of energy, is called aerobic respiration.',
          'isCorrect': true,
        },
        {
          'text': 'The complete conversion of glucose in the presence of oxygen into carbon dioxide and water, with release of energy, is called anaerobic respiration.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_113 = topicRef6.collection('questions').doc('113');
    await questionRef6_113.set({
      'questionId': '113',
      'order': 113,
      'statements': [
        {
          'text': 'Among thyroid, gonads, adrenals and parathyroid, the parathyroid gland can function independent of the pituitary gland.',
          'isCorrect': true,
        },
        {
          'text': 'Among thyroid, gonads, adrenals and parathyroid, the thyroid gland can function independent of the pituitary gland.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_114 = topicRef6.collection('questions').doc('114');
    await questionRef6_114.set({
      'questionId': '114',
      'order': 114,
      'statements': [
        {
          'text': 'The correct sequence of oxygen transportation in the human body is Lungs, Blood, Tissue.',
          'isCorrect': true,
        },
        {
          'text': 'The correct sequence of oxygen transportation in the human body is Blood, Lungs, Tissue.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_115 = topicRef6.collection('questions').doc('115');
    await questionRef6_115.set({
      'questionId': '115',
      'order': 115,
      'statements': [
        {
          'text': 'Corpus luteum is a mass of cells found in the ovary.',
          'isCorrect': true,
        },
        {
          'text': 'Corpus luteum is a mass of cells found in the brain.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_116 = topicRef6.collection('questions').doc('116');
    await questionRef6_116.set({
      'questionId': '116',
      'order': 116,
      'statements': [
        {
          'text': 'Among grasshopper, toad, snake and cattle, the snake is likely to show the highest concentration of DDT once it has been introduced into the ecosystem.',
          'isCorrect': true,
        },
        {
          'text': 'Among grasshopper, toad, snake and cattle, the grasshopper is likely to show the highest concentration of DDT once it has been introduced into the ecosystem.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_117 = topicRef6.collection('questions').doc('117');
    await questionRef6_117.set({
      'questionId': '117',
      'order': 117,
      'statements': [
        {
          'text': 'Alpha-keratin is a protein present in wool.',
          'isCorrect': true,
        },
        {
          'text': 'Alpha-keratin is a protein present in blood.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_118 = topicRef6.collection('questions').doc('118');
    await questionRef6_118.set({
      'questionId': '118',
      'order': 118,
      'statements': [
        {
          'text': 'Among maize, sorghum, onion and soyabean, onion is cultivated by transplanting seedlings.',
          'isCorrect': true,
        },
        {
          'text': 'Among maize, sorghum, onion and soyabean, maize is cultivated by transplanting seedlings.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_119 = topicRef6.collection('questions').doc('119');
    await questionRef6_119.set({
      'questionId': '119',
      'order': 119,
      'statements': [
        {
          'text': 'The average fat content of buffalo milk is about 0.072.',
          'isCorrect': true,
        },
        {
          'text': 'The average fat content of buffalo milk is about 0.1.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_120 = topicRef6.collection('questions').doc('120');
    await questionRef6_120.set({
      'questionId': '120',
      'order': 120,
      'statements': [
        {
          'text': 'The major component of honey is fructose.',
          'isCorrect': true,
        },
        {
          'text': 'The major component of honey is glucose.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_121 = topicRef6.collection('questions').doc('121');
    await questionRef6_121.set({
      'questionId': '121',
      'order': 121,
      'statements': [
        {
          'text': 'Arteries supplying blood to the heart are called coronary arteries.',
          'isCorrect': true,
        },
        {
          'text': 'Arteries supplying blood to the heart are called pulmonary arteries.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_122 = topicRef6.collection('questions').doc('122');
    await questionRef6_122.set({
      'questionId': '122',
      'order': 122,
      'statements': [
        {
          'text': 'The recommended daily intake of proteins for a moderately active woman is 46 g.',
          'isCorrect': true,
        },
        {
          'text': 'The recommended daily intake of proteins for a moderately active woman is 30 g.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_123 = topicRef6.collection('questions').doc('123');
    await questionRef6_123.set({
      'questionId': '123',
      'order': 123,
      'statements': [
        {
          'text': 'Among albino mouse, yeast, human being and Plasmodium vivax, the entire genome sequencing completed in 1996 was of yeast.',
          'isCorrect': true,
        },
        {
          'text': 'Among albino mouse, yeast, human being and Plasmodium vivax, the entire genome sequencing completed in 1996 was of the human being.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_124 = topicRef6.collection('questions').doc('124');
    await questionRef6_124.set({
      'questionId': '124',
      'order': 124,
      'statements': [
        {
          'text': 'An antigen is a substance which triggers the immune system.',
          'isCorrect': true,
        },
        {
          'text': 'An antigen is a substance which lowers body temperature.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_125 = topicRef6.collection('questions').doc('125');
    await questionRef6_125.set({
      'questionId': '125',
      'order': 125,
      'statements': [
        {
          'text': 'Among carrot, sweet potato, coconut and potato, the potato is a modified stem.',
          'isCorrect': true,
        },
        {
          'text': 'Among carrot, sweet potato, coconut and potato, the sweet potato is a modified stem.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_126 = topicRef6.collection('questions').doc('126');
    await questionRef6_126.set({
      'questionId': '126',
      'order': 126,
      'statements': [
        {
          'text': 'Fat present below the skin surface in our body acts as a barrier against loss of heat from the body.',
          'isCorrect': true,
        },
        {
          'text': 'Fat present below the skin surface in our body acts as a barrier against loss of essential body fluids.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_127 = topicRef6.collection('questions').doc('127');
    await questionRef6_127.set({
      'questionId': '127',
      'order': 127,
      'statements': [
        {
          'text': 'Researchers using carbon-14 isotope and X-ray technicians are more likely to run the risk of a permanent change in their cell\'s DNA.',
          'isCorrect': true,
        },
        {
          'text': 'Coal miners are more likely to run the risk of a permanent change in their cell\'s DNA.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_128 = topicRef6.collection('questions').doc('128');
    await questionRef6_128.set({
      'questionId': '128',
      'order': 128,
      'statements': [
        {
          'text': 'Boron, Zinc and Copper are essential micronutrients for plants.',
          'isCorrect': true,
        },
        {
          'text': 'Sodium is an essential micronutrient for plants.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_129 = topicRef6.collection('questions').doc('129');
    await questionRef6_129.set({
      'questionId': '129',
      'order': 129,
      'statements': [
        {
          'text': 'Among organ transplant, bypass surgery, test-tube baby and plastic surgery, plastic surgery was the first to take place.',
          'isCorrect': true,
        },
        {
          'text': 'Among organ transplant, bypass surgery, test-tube baby and plastic surgery, organ transplant was the first to take place.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_130 = topicRef6.collection('questions').doc('130');
    await questionRef6_130.set({
      'questionId': '130',
      'order': 130,
      'statements': [
        {
          'text': 'Xerophthalmia is the nutritional deficiency condition that needs to be given top priority for remedial action in India.',
          'isCorrect': true,
        },
        {
          'text': 'Scurvy is the nutritional deficiency condition that needs to be given top priority for remedial action in India.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_131 = topicRef6.collection('questions').doc('131');
    await questionRef6_131.set({
      'questionId': '131',
      'order': 131,
      'statements': [
        {
          'text': 'Among the elements required by living organisms in major quantities are Potassium, Sodium, Magnesium and Calcium.',
          'isCorrect': true,
        },
        {
          'text': 'Among the elements required by living organisms in major quantities are Potassium, Manganese, Molybdenum and Calcium.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_132 = topicRef6.collection('questions').doc('132');
    await questionRef6_132.set({
      'questionId': '132',
      'order': 132,
      'statements': [
        {
          'text': 'Keratin is an example of a protein.',
          'isCorrect': true,
        },
        {
          'text': 'Keratin is an example of a hormone.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_133 = topicRef6.collection('questions').doc('133');
    await questionRef6_133.set({
      'questionId': '133',
      'order': 133,
      'statements': [
        {
          'text': 'Physico-chemical characteristics of water in water sources undergo changes due to effluents.',
          'isCorrect': true,
        },
        {
          'text': 'Physico-chemical characteristics of water in water sources undergo changes due to aquatic macrophytes.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_134 = topicRef6.collection('questions').doc('134');
    await questionRef6_134.set({
      'questionId': '134',
      'order': 134,
      'statements': [
        {
          'text': 'Among fungi, plants, insects and bacteria, insects have the largest number of species found and identified so far.',
          'isCorrect': true,
        },
        {
          'text': 'Among fungi, plants, insects and bacteria, plants have the largest number of species found and identified so far.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_135 = topicRef6.collection('questions').doc('135');
    await questionRef6_135.set({
      'questionId': '135',
      'order': 135,
      'statements': [
        {
          'text': 'It is possible to produce seedless tomato fruits by spraying hormones on flowers.',
          'isCorrect': true,
        },
        {
          'text': 'It is possible to produce seedless tomato fruits by applying trace elements in tomato fields.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_136 = topicRef6.collection('questions').doc('136');
    await questionRef6_136.set({
      'questionId': '136',
      'order': 136,
      'statements': [
        {
          'text': 'Overnutrition, undernutrition, and imbalanced nutrition can all lead to \'malnutrition\'.',
          'isCorrect': true,
        },
        {
          'text': 'Overnutrition does not lead to \'malnutrition\'.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_137 = topicRef6.collection('questions').doc('137');
    await questionRef6_137.set({
      'questionId': '137',
      'order': 137,
      'statements': [
        {
          'text': 'Besides proteins and carbohydrates, calcium and potassium are elements of nutritional value found in milk.',
          'isCorrect': true,
        },
        {
          'text': 'Besides proteins and carbohydrates, calcium, potassium and iron are elements of nutritional value found in milk.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_138 = topicRef6.collection('questions').doc('138');
    await questionRef6_138.set({
      'questionId': '138',
      'order': 138,
      'statements': [
        {
          'text': 'ATP formation takes place in the mitochondria.',
          'isCorrect': true,
        },
        {
          'text': 'ATP formation takes place in the ribosomes.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_139 = topicRef6.collection('questions').doc('139');
    await questionRef6_139.set({
      'questionId': '139',
      'order': 139,
      'statements': [
        {
          'text': 'Most desert plants bloom during night time because the desert insects are active during night time.',
          'isCorrect': true,
        },
        {
          'text': 'Most desert plants bloom during night time because the desert insects eat away flowers during day time.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_140 = topicRef6.collection('questions').doc('140');
    await questionRef6_140.set({
      'questionId': '140',
      'order': 140,
      'statements': [
        {
          'text': 'Carbon, Hydrogen, Oxygen and Nitrogen are present in all proteins.',
          'isCorrect': true,
        },
        {
          'text': 'Nitrogen is not present in all proteins.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_141 = topicRef6.collection('questions').doc('141');
    await questionRef6_141.set({
      'questionId': '141',
      'order': 141,
      'statements': [
        {
          'text': 'Among thyroxine, testosterone, insulin and adrenaline, thyroxine contains iodine.',
          'isCorrect': true,
        },
        {
          'text': 'Among thyroxine, testosterone, insulin and adrenaline, insulin contains iodine.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_142 = topicRef6.collection('questions').doc('142');
    await questionRef6_142.set({
      'questionId': '142',
      'order': 142,
      'statements': [
        {
          'text': 'The scientist known for touting the properties of Vitamin C as a cure for the common cold and a preventive agent against cancer, while providing a unifying molecular view of the world by weaving physics, chemistry and biology, was Linus Carl Pauling.',
          'isCorrect': true,
        },
        {
          'text': 'The scientist known for touting the properties of Vitamin C as a cure for the common cold and a preventive agent against cancer was G.N. Lewis.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_143 = topicRef6.collection('questions').doc('143');
    await questionRef6_143.set({
      'questionId': '143',
      'order': 143,
      'statements': [
        {
          'text': 'A person with \'AB\' blood group is sometimes called a universal recipient because of the lack of antibodies in his blood.',
          'isCorrect': true,
        },
        {
          'text': 'A person with \'AB\' blood group is sometimes called a universal recipient because of the lack of antigen in his blood.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef6_144 = topicRef6.collection('questions').doc('144');
    await questionRef6_144.set({
      'questionId': '144',
      'order': 144,
      'statements': [
        {
          'text': 'Among amnion, allantois, chorion and yolk sac, the amnion is the membrane that protects the developing embryo from desiccation.',
          'isCorrect': true,
        },
        {
          'text': 'Among amnion, allantois, chorion and yolk sac, the allantois is the membrane that protects the developing embryo from desiccation.',
          'isCorrect': false,
        },
      ],
    });

    print('Science & Technology (continued) seeding completed.');
  }
  
  static Future<void> seedScienceTechnology2() async {


        final _firestore = FirebaseFirestore.instance;

    final subjectRef = _firestore.collection('subjects').doc('science_and_technology');

    await subjectRef.set({
      'name': 'Science and Technology',
      'order': 6,
      'hasSections': false,
    });

    // ----------------------------------------------------------
    // Electronics and IT
    // ----------------------------------------------------------

    final topicRef3 = subjectRef.collection('topics').doc('electronics_and_it');

    await topicRef3.set({
      'name': 'Electronics and IT',
      'order': 3,
    });

    final questionRef3_1 = topicRef3.collection('questions').doc('1');

    await questionRef3_1.set({
      'questionId': '1',
      'order': 1,
      'statements': [
        {
          'text': "Cobalt, Lithium, and Nickel usually make up electric vehicle battery cathodes.",
          'isCorrect': true,
        },
        {
          'text': "Graphite usually makes up electric vehicle battery cathodes.",
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
          'text': "Some rare earth elements are used in the manufacture of flat television screens and computer monitors because some rare earth elements have phosphorescent properties.",
          'isCorrect': true,
        },
        {
          'text': "Some rare earth elements are used in the manufacture of flat television screens and computer monitors, but this has nothing to do with any phosphorescent properties of rare earth elements.",
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
          'text': "It is expected that the Majorana 1 chip will enable quantum computing, and deep learning is a subset of machine learning.",
          'isCorrect': true,
        },
        {
          'text': "The Majorana 1 chip has been introduced by Amazon Web Services (AWS).",
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
          'text': "Indian Railways' 'Kavach' Automatic Train Protection system consists of RFID tags fitted on track in the station section.",
          'isCorrect': true,
        },
        {
          'text': "Indian Railways have prepared a National Rail Plan to create a future-ready railway system by 2028, and 'Kavach' is an Automatic Train Protection system developed in collaboration with Germany.",
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
          'text': "Radars can be used for monitoring precipitation and for tracking the migration of animals.",
          'isCorrect': true,
        },
        {
          'text': "Radars can be used for identification of narcotics on passengers at airports or in aircraft.",
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
          'text': "'Metaverse' is the term most appropriately used to denote an interoperable network of 3D virtual worlds that can be accessed simultaneously by millions of users, who can exert property rights over virtual items.",
          'isCorrect': true,
        },
        {
          'text': "'Big data analytics' is the term most appropriately used to denote an interoperable network of 3D virtual worlds that can be accessed simultaneously by millions of users, who can exert property rights over virtual items.",
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
          'text': "The function of an accelerometer is required in detecting a car crash/collision that triggers airbag deployment, detecting the accidental free fall of a laptop that turns off its hard drive, and detecting the tilt of a smartphone that rotates its display between portrait and landscape mode.",
          'isCorrect': true,
        },
        {
          'text': "The function of an accelerometer is required in only one of these: car crash detection, laptop free-fall detection, or smartphone tilt detection.",
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
          'text': "Non-Fungible Tokens (NFTs) enable the digital representation of physical assets, and they are unique cryptographic tokens that exist on a blockchain.",
          'isCorrect': true,
        },
        {
          'text': "Non-Fungible Tokens (NFTs) can be traded or exchanged at equivalency and therefore can be used as a medium of commercial transactions.",
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
          'text': "Aarogya Setu, CoWIN, DigiLocker, and DIKSHA are all built on top of open-source digital platforms.",
          'isCorrect': true,
        },
        {
          'text': "Only Aarogya Setu and CoWIN are built on top of open-source digital platforms.",
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
          'text': "Web 3.0 technology enables people to control their own data, there can be blockchain-based social networks in the Web 3.0 world, and Web 3.0 is operated by users collectively rather than a corporation.",
          'isCorrect': true,
        },
        {
          'text': "Web 3.0 is operated by a single corporation rather than by users collectively.",
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
          'text': "SaaS buyers can customise the user interface and change data fields, SaaS users can access their data through mobile devices, and Outlook, Hotmail and Yahoo! Mail are forms of SaaS.",
          'isCorrect': true,
        },
        {
          'text': "SaaS buyers cannot customise the user interface or change data fields.",
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
          'text': "Closed-circuit Television, Radio Frequency Identification, and Wireless Local Area Network are all considered Short-Range devices/technologies.",
          'isCorrect': true,
        },
        {
          'text': "Only Radio Frequency Identification and Wireless Local Area Network are considered Short-Range devices/technologies, and not Closed-circuit Television.",
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
          'text': "At the present level of technology, drones can be successfully used for spraying pesticides on a crop field, inspecting the craters of active volcanoes, and collecting breath samples from spouting whales for DNA analysis.",
          'isCorrect': true,
        },
        {
          'text': "At the present level of technology, drones can be successfully used only for spraying pesticides on a crop field, and not for inspecting volcanoes or collecting whale breath samples.",
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
          'text': "With the present state of development, Artificial Intelligence can effectively bring down electricity consumption in industrial units, assist in disease diagnosis, and perform text-to-speech conversion.",
          'isCorrect': true,
        },
        {
          'text': "With the present state of development, Artificial Intelligence can effectively create meaningful short stories and songs, and enable wireless transmission of electrical energy.",
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
          'text': "Visible Light Communication (VLC) uses electromagnetic spectrum wavelengths of 375 to 780 nm, can transmit large amounts of data faster than Bluetooth, and has no electromagnetic interference.",
          'isCorrect': true,
        },
        {
          'text': "Visible Light Communication (VLC) is known as long-range optical wireless communication.",
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
          'text': "Blockchain is a public ledger that everyone can inspect, but which no single user controls, and applications that depend on the basic features of blockchain can be developed without anybody's permission.",
          'isCorrect': true,
        },
        {
          'text': "The structure and design of blockchain is such that all the data in it are about cryptocurrency only.",
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
          'text': "In India, cyber insurance for individuals generally covers the cost of restoration of the computer system in case of malware disrupting access to one's computer, the cost of hiring a specialised consultant to minimize loss in case of cyber extortion, and the cost of defence in a court of law if a third party files a suit.",
          'isCorrect': true,
        },
        {
          'text': "In India, cyber insurance for individuals generally covers the cost of a new computer if some miscreant wilfully damages it.",
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
          'text': "LTE is not commonly marketed as 3G, and VoLTE is not simply voice-only technology while LTE is data-only — these commonly stated descriptions do not correctly capture the difference between LTE and VoLTE.",
          'isCorrect': true,
        },
        {
          'text': "LTE is commonly marketed as 3G, and VoLTE is commonly marketed as advanced 3G.",
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
          'text': "Augmented Reality (AR) allows individuals to remain present in the real world and improves the experience using the camera of a smartphone or PC, while Virtual Reality (VR) closes off the real world and provides a complete immersion experience.",
          'isCorrect': true,
        },
        {
          'text': "In Augmented Reality (AR), a simulated environment is created and the physical world is completely shut out, while in Virtual Reality (VR), images generated from a computer are projected onto real-life objects or surroundings.",
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
          'text': "A digital signature is an electronic method of signing an electronic document that ensures the original content is unchanged.",
          'isCorrect': true,
        },
        {
          'text': "A digital signature is an electronic record that identifies the certifying authority issuing it, and it is used to serve as proof of identity of an individual to access information or a server on the Internet.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef3_21 = topicRef3.collection('questions').doc('21');

    await questionRef3_21.set({
      'questionId': '21',
      'order': 21,
      'statements': [
        {
          'text': "Wearable devices can accomplish location identification of a person, sleep monitoring of a person, and assisting a hearing-impaired person.",
          'isCorrect': true,
        },
        {
          'text': "Wearable devices can accomplish only the assisting of a hearing-impaired person, and not location identification or sleep monitoring.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef3_22 = topicRef3.collection('questions').doc('22');

    await questionRef3_22.set({
      'questionId': '22',
      'order': 22,
      'statements': [
        {
          'text': "The terms 'WannaCry, Petya and EternalBlue' are related to cyber-attacks.",
          'isCorrect': true,
        },
        {
          'text': "The terms 'WannaCry, Petya and EternalBlue' are related to cryptocurrency.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef3_23 = topicRef3.collection('questions').doc('23');

    await questionRef3_23.set({
      'questionId': '23',
      'order': 23,
      'statements': [
        {
          'text': "Blockchain Technology is correctly matched with Digital / Cryptocurrency.",
          'isCorrect': true,
        },
        {
          'text': "The Belle II experiment is correctly matched with Artificial Intelligence, and CRISPR-Cas9 is correctly matched with Particle Physics.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef3_24 = topicRef3.collection('questions').doc('24');

    await questionRef3_24.set({
      'questionId': '24',
      'order': 24,
      'statements': [
        {
          'text': "The identity platform 'Aadhaar' providing open Application Programming Interfaces (APIs) implies that it can be integrated into an electronic device, and that online authentication using iris is possible.",
          'isCorrect': true,
        },
        {
          'text': "The identity platform 'Aadhaar' providing open Application Programming Interfaces (APIs) does not imply that it can be integrated into an electronic device or that online authentication using iris is possible.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef3_25 = topicRef3.collection('questions').doc('25');

    await questionRef3_25.set({
      'questionId': '25',
      'order': 25,
      'statements': [
        {
          'text': "Connecting many villages to the Internet and bringing Wi-Fi to many schools, public places and major tourist centres is an aim of the 'Digital India' Plan of the Government of India.",
          'isCorrect': true,
        },
        {
          'text': "Formation of India's own internet companies like China did is an aim of the 'Digital India' Plan of the Government of India.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef3_26 = topicRef3.collection('questions').doc('26');

    await questionRef3_26.set({
      'questionId': '26',
      'order': 26,
      'statements': [
        {
          'text': "The scenario described, involving a smartphone alarm, smart geyser, smart mirror, smart refrigerator and a connected car, best applies to the term 'Internet of Things' in the context of emerging communication technologies.",
          'isCorrect': true,
        },
        {
          'text': "The scenario described, involving a smartphone alarm, smart geyser, smart mirror, smart refrigerator and a connected car, best applies to the term 'Border Gateway Protocol' in the context of emerging communication technologies.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef3_27 = topicRef3.collection('questions').doc('27');

    await questionRef3_27.set({
      'questionId': '27',
      'order': 27,
      'statements': [
        {
          'text': "3D Printing has applications in the preparation of confectionery items, manufacture of bionic ears, the automotive industry, reconstructive surgeries, and data processing technologies.",
          'isCorrect': true,
        },
        {
          'text': "3D Printing has applications only in the automotive industry and reconstructive surgeries, and not in confectionery preparation, bionic ear manufacture, or data processing technologies.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef3_28 = topicRef3.collection('questions').doc('28');

    await questionRef3_28.set({
      'questionId': '28',
      'order': 28,
      'statements': [
        {
          'text': "In India, it is legally mandatory for service providers, data centres, and body corporates to report on cyber security incidents.",
          'isCorrect': true,
        },
        {
          'text': "In India, it is legally mandatory only for body corporates to report on cyber security incidents.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef3_29 = topicRef3.collection('questions').doc('29');

    await questionRef3_29.set({
      'questionId': '29',
      'order': 29,
      'statements': [
        {
          'text': "'Li-Fi' uses light as the medium for high-speed data transmission, and it is a wireless technology that is several times faster than 'Wi-Fi'.",
          'isCorrect': true,
        },
        {
          'text': "'Li-Fi' does not use light as a medium for data transmission, and it is slower than 'Wi-Fi'.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef3_30 = topicRef3.collection('questions').doc('30');

    await questionRef3_30.set({
      'questionId': '30',
      'order': 30,
      'statements': [
        {
          'text': "'Near Field Communication (NFC) Technology' is a contactless communication technology that uses electromagnetic radio fields, and it can use encryption when sending sensitive information.",
          'isCorrect': true,
        },
        {
          'text': "'Near Field Communication (NFC) Technology' is designed for use by devices which can be at a distance of even a metre from each other.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef3_31 = topicRef3.collection('questions').doc('31');

    await questionRef3_31.set({
      'questionId': '31',
      'order': 31,
      'statements': [
        {
          'text': "In addition to fingerprint scanning, iris scanning, retinal scanning, and voice recognition can be used in the biometric identification of a person.",
          'isCorrect': true,
        },
        {
          'text': "In addition to fingerprint scanning, only iris scanning can be used in the biometric identification of a person.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef3_32 = topicRef3.collection('questions').doc('32');

    await questionRef3_32.set({
      'questionId': '32',
      'order': 32,
      'statements': [
        {
          'text': "Bluetooth uses the 2.4 GHz radio frequency band, whereas Wi-Fi can use the 2.4 GHz or 5 GHz frequency band.",
          'isCorrect': true,
        },
        {
          'text': "Bluetooth is used for wireless local area networks (WLAN) only, whereas Wi-Fi is used for wireless wide area networks (WWAN) only.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef3_33 = topicRef3.collection('questions').doc('33');

    await questionRef3_33.set({
      'questionId': '33',
      'order': 33,
      'statements': [
        {
          'text': "A 'virtual private network' is a computer network across a public internet that provides users access to their organization's network while maintaining the security of the information transmitted.",
          'isCorrect': true,
        },
        {
          'text': "A 'virtual private network' is a private computer network of an organization where remote users can transmit encrypted information through the server of the organization.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef3_34 = topicRef3.collection('questions').doc('34');

    await questionRef3_34.set({
      'questionId': '34',
      'order': 34,
      'statements': [
        {
          'text': "DSL does not belong to the GSM family of wireless technologies.",
          'isCorrect': true,
        },
        {
          'text': "EDGE does not belong to the GSM family of wireless technologies.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef3_35 = topicRef3.collection('questions').doc('35');

    await questionRef3_35.set({
      'questionId': '35',
      'order': 35,
      'statements': [
        {
          'text': "Bluetooth devices, cordless phones, microwave ovens, and Wi-Fi devices can all operate between the 2.4 and 2.5 GHz range of radio frequency band.",
          'isCorrect': true,
        },
        {
          'text': "Only Bluetooth devices and Wi-Fi devices can operate between the 2.4 and 2.5 GHz range of radio frequency band.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef3_36 = topicRef3.collection('questions').doc('36');

    await questionRef3_36.set({
      'questionId': '36',
      'order': 36,
      'statements': [
        {
          'text': "WiMAX is related to communication technology.",
          'isCorrect': true,
        },
        {
          'text': "WiMAX is related to missile technology.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef3_37 = topicRef3.collection('questions').doc('37');

    await questionRef3_37.set({
      'questionId': '37',
      'order': 37,
      'statements': [
        {
          'text': "Tim Berners-Lee is considered the inventor of the World Wide Web (WWW).",
          'isCorrect': true,
        },
        {
          'text': "Bill Gates is considered the inventor of the World Wide Web (WWW).",
          'isCorrect': false,
        },
      ],
    });

    final questionRef3_38 = topicRef3.collection('questions').doc('38');

    await questionRef3_38.set({
      'questionId': '38',
      'order': 38,
      'statements': [
        {
          'text': "The term 'Dolby B' or 'Dolby C' printed on tape recorders and other sound systems refers to a noise reduction circuit.",
          'isCorrect': true,
        },
        {
          'text': "The term 'Dolby B' or 'Dolby C' printed on tape recorders and other sound systems refers to a frequency modulated system.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef3_39 = topicRef3.collection('questions').doc('39');

    await questionRef3_39.set({
      'questionId': '39',
      'order': 39,
      'statements': [
        {
          'text': "A Smart Card is a plastic card with an embedded microchip, and digital technology is primarily used with new physical communication mediums such as satellite and fibre optic transmission.",
          'isCorrect': true,
        },
        {
          'text': "A digital library is a collection of documents in an organised electronic form available on the Internet only.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef3_40 = topicRef3.collection('questions').doc('40');

    await questionRef3_40.set({
      'questionId': '40',
      'order': 40,
      'statements': [
        {
          'text': "A byte is made up of eight binary digits.",
          'isCorrect': true,
        },
        {
          'text': "A byte is made up of eight decimal digits.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef3_41 = topicRef3.collection('questions').doc('41');

    await questionRef3_41.set({
      'questionId': '41',
      'order': 41,
      'statements': [
        {
          'text': "As of December 1996, the world's fastest computer was able to perform 10^12 operations per second.",
          'isCorrect': true,
        },
        {
          'text': "As of December 1996, the world's fastest computer was able to perform 10^9 operations per second.",
          'isCorrect': false,
        },
      ],
    });

    // ----------------------------------------------------------
    // Astrophysics and Space Technology
    // ----------------------------------------------------------

    final topicRef4 = subjectRef.collection('topics').doc('astrophysics_and_space_technology');

    await topicRef4.set({
      'name': 'Astrophysics and Space Technology',
      'order': 4,
    });

    final questionRef4_1 = topicRef4.collection('questions').doc('1');

    await questionRef4_1.set({
      'questionId': '1',
      'order': 1,
      'statements': [
        {
          'text': "GAGAN is designed to provide additional accuracy and integrity, and enables more uniform and high-quality air traffic management; however, its benefits are not limited to aviation alone but extend to other modes of transportation as well.",
          'isCorrect': true,
        },
        {
          'text': "GAGAN provides benefits only in aviation and offers no advantages to other modes of transportation.",
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
          'text': "Not all types of Unmanned Aerial Vehicles (UAVs) are capable of vertical landing, automated hovering, or rely solely on battery power; these capabilities vary widely by UAV design and type.",
          'isCorrect': true,
        },
        {
          'text': "All types of UAVs are capable of vertical landing, automated hovering, and use battery power exclusively as their source of power supply.",
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
          'text': "Axiom-4, SpaDeX, and Gaganyaan are all space missions that encourage and support microgravity research.",
          'isCorrect': true,
        },
        {
          'text': "Only Gaganyaan, among Axiom-4, SpaDeX, and Gaganyaan, supports microgravity research.",
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
          'text': "Giant stars have a greater rate of nuclear reactions compared to dwarf stars, and as a result, giant stars actually live much shorter lives than dwarf stars, not longer.",
          'isCorrect': true,
        },
        {
          'text': "Giant stars live much longer than dwarf stars because they have a greater rate of nuclear reactions.",
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
          'text': "Pulsars are correctly described as neutron stars formed when massive stars run out of fuel and collapse; Cepheids are actually variable stars that brighten and dim periodically, and Nebulae are giant clouds of dust and gas.",
          'isCorrect': true,
        },
        {
          'text': "Cepheids are giant clouds of dust and gas in space, while Nebulae are stars which brighten and dim periodically.",
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
          'text': "Japan has its own satellite navigation system, the Quasi-Zenith Satellite System.",
          'isCorrect': true,
        },
        {
          'text': "Israel has its own satellite navigation system.",
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
          'text': "A major solar storm reaching Earth could cause GPS failures, power grid damage, intense auroras, disturbed satellite orbits, and interrupted shortwave radio communication for polar aircraft, but it would not cause tsunamis or widespread forest fires.",
          'isCorrect': true,
        },
        {
          'text': "A major solar storm reaching Earth could cause tsunamis at equatorial regions and forest fires over much of the planet.",
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
          'text': "A Fractional Orbital Bombardment System involves a missile being placed into a stable orbit around the Earth and then deorbiting over a target on the Earth.",
          'isCorrect': true,
        },
        {
          'text': "A Fractional Orbital Bombardment System involves a hypersonic missile launched into space to intercept and explode an approaching asteroid.",
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
          'text': "Astronomical distances are measured in light-years because the speed of light is always constant.",
          'isCorrect': true,
        },
        {
          'text': "Astronomical distances are measured in light-years because the distances among stellar bodies do not change.",
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
          'text': "The experiment employing a trio of spacecraft flying in an equilateral triangle formation with sides one million kilometres long, using lasers between the craft, refers to the Evolved LISA (eLISA) project.",
          'isCorrect': true,
        },
        {
          'text': "The experiment employing a trio of spacecraft flying in a triangular formation with lasers between them refers to the Voyager-2 mission.",
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
          'text': "The observation of the merger of giant black holes billions of light-years away was significant because it confirmed the detection of gravitational waves.",
          'isCorrect': true,
        },
        {
          'text': "The observation of the merger of giant black holes billions of light-years away was significant because it confirmed the detection of Higgs boson particles.",
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
          'text': "Satellite images and remote sensing data are used to estimate chlorophyll content in vegetation, greenhouse gas emissions from rice paddies, and land surface temperatures of specific locations.",
          'isCorrect': true,
        },
        {
          'text': "Satellite images and remote sensing data can be used to estimate chlorophyll content in vegetation, but not greenhouse gas emissions from rice paddies or land surface temperatures.",
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
          'text': "GPS technology can be used in mobile phone operations, banking operations, and controlling power grids, since precise timing signals from GPS are used across all these areas.",
          'isCorrect': true,
        },
        {
          'text': "GPS technology is used only in mobile phone operations and has no application in banking operations or controlling power grids.",
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
          'text': "The Earth's magnetic field has reversed every few hundred thousand years, and when living organisms first originated, they modified the Earth's early atmosphere; however, the early Earth's atmosphere had essentially no free oxygen, not 54%.",
          'isCorrect': true,
        },
        {
          'text': "When the Earth was created more than 4000 million years ago, its atmosphere contained 54% oxygen and no carbon dioxide.",
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
          'text': "IRNSS (Indian Regional Navigation Satellite System) has three satellites in geostationary orbit and four satellites in geosynchronous orbits.",
          'isCorrect': true,
        },
        {
          'text': "IRNSS's coverage extends about 5500 sq km beyond India's border, and India was set to have full global satellite navigation coverage by the middle of 2019.",
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
          'text': "Predictions often discussed in media as arising from Einstein's General Theory of Relativity include that light is affected by gravity, that the universe is constantly expanding, and that matter warps the surrounding space-time.",
          'isCorrect': true,
        },
        {
          'text': "Einstein's General Theory of Relativity predicts only that light is affected by gravity, and has nothing to do with the expansion of the universe or the warping of space-time by matter.",
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
          'text': "PSLVs are used to launch satellites for Earth resources monitoring, while GSLVs are designed mainly to launch communication satellites.",
          'isCorrect': true,
        },
        {
          'text': "Satellites launched by PSLVs appear to remain permanently fixed in the same position in the sky, as viewed from a location on Earth.",
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
          'text': "The terms 'Event Horizon', 'Singularity', 'String Theory', and 'Standard Model' are used in the context of observing and understanding the Universe.",
          'isCorrect': true,
        },
        {
          'text': "The terms 'Event Horizon', 'Singularity', 'String Theory', and 'Standard Model' are used in the context of the origin and evolution of living organisms on Earth.",
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
          'text': "The purpose of the 'evolved Laser Interferometer Space Antenna' (eLISA) project is to detect gravitational waves.",
          'isCorrect': true,
        },
        {
          'text': "The purpose of the 'evolved Laser Interferometer Space Antenna' (eLISA) project is to detect neutrinos.",
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
          'text': "'Greased Lightning-10' (GL-10) is an electric plane that was tested by NASA.",
          'isCorrect': true,
        },
        {
          'text': "'Greased Lightning-10' (GL-10) is a reusable rocket designed by ISRO.",
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
          'text': "Contrary to the idea that India is the only country besides the USA and Russia with such a capability, other agencies have also launched similar astronomical observatories into space.",
          'isCorrect': true,
        },
        {
          'text': "Other than the USA and Russia, India is the only country to have launched a similar astronomical observatory, like Astrosat, into space.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_22 = topicRef4.collection('questions').doc('22');

    await questionRef4_22.set({
      'questionId': '22',
      'order': 22,
      'statements': [
        {
          'text': "The Mangalyaan mission, also called the Mars Orbiter Mission, made India the only country to succeed in placing a spacecraft in orbit around Mars on its very first attempt.",
          'isCorrect': true,
        },
        {
          'text': "The Mangalyaan mission made India the second country to have a spacecraft orbit Mars, after the USA.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_23 = topicRef4.collection('questions').doc('23');

    await questionRef4_23.set({
      'questionId': '23',
      'order': 23,
      'statements': [
        {
          'text': "The term 'Goldilocks Zone' refers to the search for Earth-like, potentially habitable planets in outer space.",
          'isCorrect': true,
        },
        {
          'text': "The term 'Goldilocks Zone' refers to the limits of the habitable zone above the surface of the Earth itself.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_24 = topicRef4.collection('questions').doc('24');

    await questionRef4_24.set({
      'questionId': '24',
      'order': 24,
      'statements': [
        {
          'text': "Indian Remote Sensing (IRS) satellites are used for assessing crop productivity, locating groundwater resources, and mineral exploration, not for telecommunications or traffic studies.",
          'isCorrect': true,
        },
        {
          'text': "Indian Remote Sensing (IRS) satellites are primarily used for telecommunications and traffic studies.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_25 = topicRef4.collection('questions').doc('25');

    await questionRef4_25.set({
      'questionId': '25',
      'order': 25,
      'statements': [
        {
          'text': "Messenger was a spacecraft for mapping and investigating Mercury, and Voyager 1 and 2 were spacecraft for exploring the outer solar system; Cassini-Huygens, however, orbited Saturn, not Venus.",
          'isCorrect': true,
        },
        {
          'text': "Cassini-Huygens was a spacecraft that orbited Venus and transmitted data back to Earth.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_26 = topicRef4.collection('questions').doc('26');

    await questionRef4_26.set({
      'questionId': '26',
      'order': 26,
      'statements': [
        {
          'text': "Detection of cosmic microwaves in space and observation of the redshift phenomenon are cited by scientists as evidence for the continued expansion of the universe.",
          'isCorrect': true,
        },
        {
          'text': "The movement of asteroids and the occurrence of supernova explosions in space are cited by scientists as the main evidence for the continued expansion of the universe.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_27 = topicRef4.collection('questions').doc('27');

    await questionRef4_27.set({
      'questionId': '27',
      'order': 27,
      'statements': [
        {
          'text': "Electrically charged particles from space are prevented from reaching the Earth's surface because the Earth's magnetic field diverts them towards its poles.",
          'isCorrect': true,
        },
        {
          'text': "Electrically charged particles from space are prevented from reaching the Earth's surface because the ozone layer reflects them back into outer space.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_28 = topicRef4.collection('questions').doc('28');

    await questionRef4_28.set({
      'questionId': '28',
      'order': 28,
      'statements': [
        {
          'text': "A satellite is in geostationary orbit when its orbit is geosynchronous, circular, and lies in the plane of the Earth's equator.",
          'isCorrect': true,
        },
        {
          'text': "A satellite is in geostationary orbit primarily because of its listed altitude alone, regardless of whether the orbit is geosynchronous, circular, or equatorial.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_29 = topicRef4.collection('questions').doc('29');

    await questionRef4_29.set({
      'questionId': '29',
      'order': 29,
      'statements': [
        {
          'text': "An artificial satellite orbiting the Earth does not fall down because the Earth's gravitational attraction provides the necessary centripetal acceleration for its circular motion.",
          'isCorrect': true,
        },
        {
          'text': "An artificial satellite orbiting the Earth does not fall down because the Earth's gravitational attraction is neutralized by the Moon's attraction.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_30 = topicRef4.collection('questions').doc('30');

    await questionRef4_30.set({
      'questionId': '30',
      'order': 30,
      'statements': [
        {
          'text': "Asteroids are small rocky planetoids while comets are formed of frozen gases held together by rocky and metallic material, and comets show a perceptible glowing tail while asteroids do not.",
          'isCorrect': true,
        },
        {
          'text': "Comets are found mostly between the orbits of Venus and Mercury, close to the Sun.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_31 = topicRef4.collection('questions').doc('31');

    await questionRef4_31.set({
      'questionId': '31',
      'order': 31,
      'statements': [
        {
          'text': "'Bhuvan' is a geoportal developed by ISRO offering 3D imaging capabilities of India.",
          'isCorrect': true,
        },
        {
          'text': "'Bhuvan' is the name given to the Moon Impact Probe for Chandrayaan-II.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_32 = topicRef4.collection('questions').doc('32');

    await questionRef4_32.set({
      'questionId': '32',
      'order': 32,
      'statements': [
        {
          'text': "India's Oceansat-2 satellite helps in estimating water vapour content in the atmosphere, predicting the onset of monsoons, and monitoring the pollution of coastal waters.",
          'isCorrect': true,
        },
        {
          'text': "India's Oceansat-2 satellite is used only for predicting the onset of monsoons and has no role in estimating atmospheric water vapour or monitoring coastal water pollution.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_33 = topicRef4.collection('questions').doc('33');

    await questionRef4_33.set({
      'questionId': '33',
      'order': 33,
      'statements': [
        {
          'text': "S. Chandrasekhar proved that stars with mass less than 1.44 times the mass of the Sun end up as White Dwarfs when they die.",
          'isCorrect': true,
        },
        {
          'text': "Stephen Hawking proved that stars with mass less than 1.44 times the mass of the Sun end up as White Dwarfs when they die.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_34 = topicRef4.collection('questions').doc('34');

    await questionRef4_34.set({
      'questionId': '34',
      'order': 34,
      'statements': [
        {
          'text': "Cape Canaveral, the site from which space shuttles are launched, is located on the coast of Florida.",
          'isCorrect': true,
        },
        {
          'text': "Cape Canaveral, the site from which space shuttles are launched, is located on the coast of Virginia.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_35 = topicRef4.collection('questions').doc('35');

    await questionRef4_35.set({
      'questionId': '35',
      'order': 35,
      'statements': [
        {
          'text': "Among the given options, Saturn has the largest number of natural satellites (moons).",
          'isCorrect': true,
        },
        {
          'text': "Among the given options, Jupiter has the largest number of natural satellites (moons).",
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_36 = topicRef4.collection('questions').doc('36');

    await questionRef4_36.set({
      'questionId': '36',
      'order': 36,
      'statements': [
        {
          'text': "China landed a Moon Impact Probe on the Moon before India did.",
          'isCorrect': true,
        },
        {
          'text': "Japan landed a Moon Impact Probe on the Moon before India did.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_37 = topicRef4.collection('questions').doc('37');

    await questionRef4_37.set({
      'questionId': '37',
      'order': 37,
      'statements': [
        {
          'text': "The test-stand ISRO used for its 2007 cryogenic engine rocket test is located at Mahendragiri.",
          'isCorrect': true,
        },
        {
          'text': "The test-stand ISRO used for its 2007 cryogenic engine rocket test is located at Thiruvananthapuram.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_38 = topicRef4.collection('questions').doc('38');

    await questionRef4_38.set({
      'questionId': '38',
      'order': 38,
      'statements': [
        {
          'text': "A jet engine uses the surrounding air for its oxygen supply and is therefore unsuitable for motion in space, whereas a rocket carries its own supply of oxygen along with its fuel.",
          'isCorrect': true,
        },
        {
          'text': "Both a jet engine and a rocket rely solely on the surrounding air for their oxygen supply, making both unsuitable for motion in space.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_39 = topicRef4.collection('questions').doc('39');

    await questionRef4_39.set({
      'questionId': '39',
      'order': 39,
      'statements': [
        {
          'text': "The purpose of NASA's Themis Mission is to study the colourful displays of high-latitude skies, i.e., auroras.",
          'isCorrect': true,
        },
        {
          'text': "The purpose of NASA's Themis Mission is to study the possibility of life on Mars.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_40 = topicRef4.collection('questions').doc('40');

    await questionRef4_40.set({
      'questionId': '40',
      'order': 40,
      'statements': [
        {
          'text': "Cassini is a spacecraft, whereas Apophis is an asteroid, Spitzer is a space telescope, and TechSar is a reconnaissance satellite.",
          'isCorrect': true,
        },
        {
          'text': "Apophis is the correct name of a spacecraft among these options.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_41 = topicRef4.collection('questions').doc('41');

    await questionRef4_41.set({
      'questionId': '41',
      'order': 41,
      'statements': [
        {
          'text': "Selene-1, the lunar orbiter mission, belongs to Japan.",
          'isCorrect': true,
        },
        {
          'text': "Selene-1, the lunar orbiter mission, belongs to the European Union.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_42 = topicRef4.collection('questions').doc('42');

    await questionRef4_42.set({
      'questionId': '42',
      'order': 42,
      'statements': [
        {
          'text': "The Galileo Project is a multi-satellite navigation project being developed by the European Union.",
          'isCorrect': true,
        },
        {
          'text': "The Galileo Project is an inter-country missile shield programme developed by the United States of America.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_43 = topicRef4.collection('questions').doc('43');

    await questionRef4_43.set({
      'questionId': '43',
      'order': 43,
      'statements': [
        {
          'text': "Among these pairs, 'Falcon - Under-sea cable system' is not correctly matched, while Cosmic Background Explorer (COBE) is correctly a satellite programme and Discovery and Atlantis are correctly identified as Space Shuttles.",
          'isCorrect': true,
        },
        {
          'text': "'Falcon - Under-sea cable system' is a correctly matched pair among these options.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_44 = topicRef4.collection('questions').doc('44');

    await questionRef4_44.set({
      'questionId': '44',
      'order': 44,
      'statements': [
        {
          'text': "NASA's Deep Impact space mission was employed to take detailed pictures of Comet Tempel 1's nucleus.",
          'isCorrect': true,
        },
        {
          'text': "NASA's Deep Impact space mission was employed to take detailed pictures of Halley's Comet's nucleus.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_45 = topicRef4.collection('questions').doc('45');

    await questionRef4_45.set({
      'questionId': '45',
      'order': 45,
      'statements': [
        {
          'text': "In the year 2006, India successfully tested a full-fledged cryogenic stage in rocketry.",
          'isCorrect': true,
        },
        {
          'text': "After the USA, Russia, and China, India is the only other country to have acquired the capability for using a cryogenic stage in rocketry.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_46 = topicRef4.collection('questions').doc('46');

    await questionRef4_46.set({
      'questionId': '46',
      'order': 46,
      'statements': [
        {
          'text': "The average distance between the Sun and the Earth is approximately 150 x 10^6 km.",
          'isCorrect': true,
        },
        {
          'text': "The average distance between the Sun and the Earth is approximately 70 x 10^5 km.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_47 = topicRef4.collection('questions').doc('47');

    await questionRef4_47.set({
      'questionId': '47',
      'order': 47,
      'statements': [
        {
          'text': "Mars actually takes more time than the Earth to complete one orbit around the Sun, since it lies farther from the Sun, though it is true that Mars's diameter is less than that of the Earth.",
          'isCorrect': true,
        },
        {
          'text': "Mars takes less time than the Earth to complete one orbit around the Sun, because the diameter of Mars is smaller than that of the Earth.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_48 = topicRef4.collection('questions').doc('48');

    await questionRef4_48.set({
      'questionId': '48',
      'order': 48,
      'statements': [
        {
          'text': "Among these pairs, 'Cloning a human embryo for the first time - Germany' is not correctly matched; the other listed scientific achievement-country pairs are correctly matched.",
          'isCorrect': true,
        },
        {
          'text': "'Cloning a human embryo for the first time - Germany' is correctly matched among these achievement-country pairs.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_49 = topicRef4.collection('questions').doc('49');

    await questionRef4_49.set({
      'questionId': '49',
      'order': 49,
      'statements': [
        {
          'text': "The European commercial launch service provider Arianespace was associated with the launch of INSAT-4A, and Tata Sky uses INSAT-4A for DTH television broadcasting.",
          'isCorrect': true,
        },
        {
          'text': "INSAT-4A was launched in December 2005 from New Mexico.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_50 = topicRef4.collection('questions').doc('50');

    await questionRef4_50.set({
      'questionId': '50',
      'order': 50,
      'statements': [
        {
          'text': "FM transmission of music is of very good quality because atmospheric or man-made noises, which are generally frequency variations, can do little harm to it.",
          'isCorrect': true,
        },
        {
          'text': "A geostationary satellite is at an approximate height of 10,000 km above the Earth's surface.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_51 = topicRef4.collection('questions').doc('51');

    await questionRef4_51.set({
      'questionId': '51',
      'order': 51,
      'statements': [
        {
          'text': "India's communication satellite INSAT-3E was launched in 2003 from French Guyana.",
          'isCorrect': true,
        },
        {
          'text': "India's communication satellite INSAT-3E was launched in 2003 from Mauritius.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_52 = topicRef4.collection('questions').doc('52');

    await questionRef4_52.set({
      'questionId': '52',
      'order': 52,
      'statements': [
        {
          'text': "India launched its first full-fledged meteorological satellite (METSAT) in September 2002, and the PSLV-C4 space vehicle carried a payload of more than 1000 kg into a geosynchronous orbit for the first time.",
          'isCorrect': true,
        },
        {
          'text': "India's first full-fledged meteorological satellite (METSAT) was launched using the PSLV-C4 in 2005, carrying a payload of less than 500 kg.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_53 = topicRef4.collection('questions').doc('53');

    await questionRef4_53.set({
      'questionId': '53',
      'order': 53,
      'statements': [
        {
          'text': "Among Earth, Jupiter, Mars, and Venus, Jupiter takes the maximum time to complete one revolution around the Sun.",
          'isCorrect': true,
        },
        {
          'text': "Among Earth, Jupiter, Mars, and Venus, Mars takes the maximum time to complete one revolution around the Sun.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_54 = topicRef4.collection('questions').doc('54');

    await questionRef4_54.set({
      'questionId': '54',
      'order': 54,
      'statements': [
        {
          'text': "In 2001, NASA launched a spacecraft to Mars named Mars Odyssey.",
          'isCorrect': true,
        },
        {
          'text': "In 2001, NASA launched a spacecraft to Mars named Mars Global Surveyor.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_55 = topicRef4.collection('questions').doc('55');

    await questionRef4_55.set({
      'questionId': '55',
      'order': 55,
      'statements': [
        {
          'text': "The Earth is the densest of all the planets in our solar system.",
          'isCorrect': true,
        },
        {
          'text': "The Sun contains 75 percent of the mass of the entire solar system.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_56 = topicRef4.collection('questions').doc('56');

    await questionRef4_56.set({
      'questionId': '56',
      'order': 56,
      'statements': [
        {
          'text': "If the Moon rises exactly at 6:48 p.m. on the first day of a 30-day lunar cycle, it will rise at approximately 9:12 p.m. on the fourth day.",
          'isCorrect': true,
        },
        {
          'text': "If the Moon rises exactly at 6:48 p.m. on the first day of a 30-day lunar cycle, it will rise at approximately 8:24 p.m. on the fourth day.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_57 = topicRef4.collection('questions').doc('57');

    await questionRef4_57.set({
      'questionId': '57',
      'order': 57,
      'statements': [
        {
          'text': "All the INSAT-series satellites were launched abroad, PSLVs were used to launch IRS-series satellites, and the GSAT satellite launched in 2001 carried payloads to demonstrate digital broadcasts and internet services.",
          'isCorrect': true,
        },
        {
          'text': "As of that time, India had already used an indigenously built cryogenic engine to power the third stage of the GSLV.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_58 = topicRef4.collection('questions').doc('58');

    await questionRef4_58.set({
      'questionId': '58',
      'order': 58,
      'statements': [
        {
          'text': "Artificial satellites are typically launched from the Earth in the eastward direction because the Earth's west-to-east rotation gives the satellite an extra boost in orbital velocity, though this is not accurately described as providing 'escape velocity.'",
          'isCorrect': true,
        },
        {
          'text': "Artificial satellites are launched eastward because the Earth's rotation from west to east allows the satellite to attain escape velocity.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_59 = topicRef4.collection('questions').doc('59');

    await questionRef4_59.set({
      'questionId': '59',
      'order': 59,
      'statements': [
        {
          'text': "K. Kasturirangan was the Chairman of ISRO when INSAT-3B was launched.",
          'isCorrect': true,
        },
        {
          'text': "Abdul Kalam was the Chairman of ISRO when INSAT-3B was launched.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_60 = topicRef4.collection('questions').doc('60');

    await questionRef4_60.set({
      'questionId': '60',
      'order': 60,
      'statements': [
        {
          'text': "The 'Chandra' X-ray telescope is named in honour of the scientist Subrahmanyan Chandrasekhar.",
          'isCorrect': true,
        },
        {
          'text': "The 'Chandra' X-ray telescope is named in honour of the scientist Chandrasekhara Venkata Raman.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_61 = topicRef4.collection('questions').doc('61');

    await questionRef4_61.set({
      'questionId': '61',
      'order': 61,
      'statements': [
        {
          'text': "A 'black hole' does not allow any radiation to escape because of its extremely high density.",
          'isCorrect': true,
        },
        {
          'text': "A 'black hole' does not allow any radiation to escape because of its very large size.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_62 = topicRef4.collection('questions').doc('62');

    await questionRef4_62.set({
      'questionId': '62',
      'order': 62,
      'statements': [
        {
          'text': "Asteroids are rocky debris of varying sizes orbiting the Sun, and while most are small, some have a diameter as large as 1000 km; their orbits lie mostly between Mars and Jupiter, not between Jupiter and Saturn.",
          'isCorrect': true,
        },
        {
          'text': "The orbit of most asteroids lies between the orbits of Jupiter and Saturn.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_63 = topicRef4.collection('questions').doc('63');

    await questionRef4_63.set({
      'questionId': '63',
      'order': 63,
      'statements': [
        {
          'text': "In this classic planetary list, Pluto was the farthest planet from the Sun, Jupiter the largest planet, Venus the second planet from the Sun, and Mercury the planet nearest to the Sun.",
          'isCorrect': true,
        },
        {
          'text': "In this list, Venus was considered the farthest planet from the Sun, and Jupiter the planet nearest to the Sun.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_64 = topicRef4.collection('questions').doc('64');

    await questionRef4_64.set({
      'questionId': '64',
      'order': 64,
      'statements': [
        {
          'text': "One Astronomical Unit is defined as the average distance between the Earth and the Sun.",
          'isCorrect': true,
        },
        {
          'text': "One Astronomical Unit is defined as the average distance between Jupiter and the Sun.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_65 = topicRef4.collection('questions').doc('65');

    await questionRef4_65.set({
      'questionId': '65',
      'order': 65,
      'statements': [
        {
          'text': "The tail of a comet points away from the Sun because the radiation (solar wind) emitted by the Sun exerts a radial pressure on the comet, pushing its tail away from the Sun.",
          'isCorrect': true,
        },
        {
          'text': "The tail of a comet points away from the Sun because, as the comet rotates around the Sun, its lighter mass is pushed away purely due to centrifugal force.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_66 = topicRef4.collection('questions').doc('66');

    await questionRef4_66.set({
      'questionId': '66',
      'order': 66,
      'statements': [
        {
          'text': "The group of small pieces of rock revolving around the Sun between the orbits of Mars and Jupiter are called Asteroids.",
          'isCorrect': true,
        },
        {
          'text': "The group of small pieces of rock revolving around the Sun between the orbits of Mars and Jupiter are called Meteors.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_67 = topicRef4.collection('questions').doc('67');

    await questionRef4_67.set({
      'questionId': '67',
      'order': 67,
      'statements': [
        {
          'text': "The Sun is the star nearest to the Earth.",
          'isCorrect': true,
        },
        {
          'text': "Alpha Centauri is the star nearest to the Earth.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_68 = topicRef4.collection('questions').doc('68');

    await questionRef4_68.set({
      'questionId': '68',
      'order': 68,
      'statements': [
        {
          'text': "The occurrence of ice caps and frozen water is considered the most relevant condition for the possibility of life on Mars, among the given options.",
          'isCorrect': true,
        },
        {
          'text': "The occurrence of ozone is considered the most relevant condition for the possibility of life on Mars, among the given options.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_69 = topicRef4.collection('questions').doc('69');

    await questionRef4_69.set({
      'questionId': '69',
      'order': 69,
      'statements': [
        {
          'text': "IRS-P3 was the satellite scheduled to be launched from India in 1996.",
          'isCorrect': true,
        },
        {
          'text': "IRS-P2 was the satellite scheduled to be launched from India in 1996.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_70 = topicRef4.collection('questions').doc('70');

    await questionRef4_70.set({
      'questionId': '70',
      'order': 70,
      'statements': [
        {
          'text': "A meteor is a piece of matter that has entered the Earth's atmosphere from outer space.",
          'isCorrect': true,
        },
        {
          'text': "A meteor is a comet without a tail.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_71 = topicRef4.collection('questions').doc('71');

    await questionRef4_71.set({
      'questionId': '71',
      'order': 71,
      'statements': [
        {
          'text': "In 1994, India demonstrated its capability to launch geo-stationary satellites.",
          'isCorrect': true,
        },
        {
          'text': "In 1994, India demonstrated its capability to design advanced intercontinental ballistic missile warning systems.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_72 = topicRef4.collection('questions').doc('72');

    await questionRef4_72.set({
      'questionId': '72',
      'order': 72,
      'statements': [
        {
          'text': "Comet Shoemaker-Levy 9 collided with the planet Jupiter.",
          'isCorrect': true,
        },
        {
          'text': "Comet Shoemaker-Levy 9 collided with the planet Saturn.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef4_73 = topicRef4.collection('questions').doc('73');

    await questionRef4_73.set({
      'questionId': '73',
      'order': 73,
      'statements': [
        {
          'text': "Cryogenic engines find their primary application in rocket technology.",
          'isCorrect': true,
        },
        {
          'text': "Cryogenic engines find their primary application in frost-free refrigerators.",
          'isCorrect': false,
        },
      ],
    });

    // ----------------------------------------------------------
    // Diseases
    // ----------------------------------------------------------

    final topicRef5 = subjectRef.collection('topics').doc('diseases');

    await topicRef5.set({
      'name': 'Diseases',
      'order': 5,
    });

    final questionRef5_1 = topicRef5.collection('questions').doc('1');

    await questionRef5_1.set({
      'questionId': '1',
      'order': 1,
      'statements': [
        {
          'text': "The 'Wolbachia method' is used with reference to controlling viral diseases spread by mosquitoes.",
          'isCorrect': true,
        },
        {
          'text': "The 'Wolbachia method' is used with reference to producing biodegradable plastics.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef5_2 = topicRef5.collection('questions').doc('2');

    await questionRef5_2.set({
      'questionId': '2',
      'order': 2,
      'statements': [
        {
          'text': "Mitochondrial replacement therapy can prevent mitochondrial diseases from passing from parent to child, either before or after in vitro fertilisation of the egg, and a child inherits mitochondrial diseases entirely from the mother, not the father.",
          'isCorrect': true,
        },
        {
          'text': "A child can inherit mitochondrial diseases from either parent, and mitochondrial replacement therapy has no role in preventing their transmission.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef5_3 = topicRef5.collection('questions').doc('3');

    await questionRef5_3.set({
      'questionId': '3',
      'order': 3,
      'statements': [
        {
          'text': "In tropical regions, the Zika virus is transmitted by the same mosquito that transmits dengue, and sexual transmission of the Zika virus is also possible.",
          'isCorrect': true,
        },
        {
          'text': "The Zika virus is transmitted by a different mosquito species than the one that transmits dengue, and it cannot be sexually transmitted.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef5_4 = topicRef5.collection('questions').doc('4');

    await questionRef5_4.set({
      'questionId': '4',
      'order': 4,
      'statements': [
        {
          'text': "The H1N1 virus is associated in the news with Swine Flu.",
          'isCorrect': true,
        },
        {
          'text': "The H1N1 virus is associated in the news with Bird Flu.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef5_5 = topicRef5.collection('questions').doc('5');

    await questionRef5_5.set({
      'questionId': '5',
      'order': 5,
      'statements': [
        {
          'text': "Vitamin C deficiency causes Scurvy and Vitamin D deficiency causes Rickets; however, night blindness is caused by Vitamin A deficiency, not Vitamin E deficiency.",
          'isCorrect': true,
        },
        {
          'text': "Vitamin E deficiency causes night blindness.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef5_6 = topicRef5.collection('questions').doc('6');

    await questionRef5_6.set({
      'questionId': '6',
      'order': 6,
      'statements': [
        {
          'text': "Among Diphtheria, Chickenpox, and Smallpox, only Smallpox has been eradicated in India.",
          'isCorrect': true,
        },
        {
          'text': "Diphtheria and Chickenpox have both been eradicated in India, but Smallpox has not.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef5_7 = topicRef5.collection('questions').doc('7');

    await questionRef5_7.set({
      'questionId': '7',
      'order': 7,
      'statements': [
        {
          'text': "Hepatitis B and HIV-AIDS can be transmitted from one person to another through tattooing, but Chikungunya, being mosquito-borne, cannot.",
          'isCorrect': true,
        },
        {
          'text': "Chikungunya can be transmitted from one person to another through tattooing.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef5_8 = topicRef5.collection('questions').doc('8');

    await questionRef5_8.set({
      'questionId': '8',
      'order': 8,
      'statements': [
        {
          'text': "Hepatitis B is several times more infectious than HIV/AIDS, and Hepatitis B can cause liver cancer.",
          'isCorrect': true,
        },
        {
          'text': "Hepatitis B is far less infectious than HIV/AIDS and does not cause liver cancer.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef5_9 = topicRef5.collection('questions').doc('9');

    await questionRef5_9.set({
      'questionId': '9',
      'order': 9,
      'statements': [
        {
          'text': "Antibiotics have no role in the primary treatment of Swine Flu, since it is a viral infection.",
          'isCorrect': true,
        },
        {
          'text': "Every individual in the population is equally susceptible to Swine Flu, and culling all swine in an epidemic area is necessary to prevent its future spread.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef5_10 = topicRef5.collection('questions').doc('10');

    await questionRef5_10.set({
      'questionId': '10',
      'order': 10,
      'statements': [
        {
          'text': "Regarding HIV transmission, it is not correct that transmission from female to male is twice as likely as from male to female; male-to-female transmission is generally considered more likely.",
          'isCorrect': true,
        },
        {
          'text': "The chances of HIV transmission from female to male are twice as likely as from male to female.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef5_11 = topicRef5.collection('questions').doc('11');

    await questionRef5_11.set({
      'questionId': '11',
      'order': 11,
      'statements': [
        {
          'text': "It is difficult to develop an effective malaria vaccine partly because malaria is caused by several different species of the Plasmodium parasite.",
          'isCorrect': true,
        },
        {
          'text': "It is difficult to develop an effective malaria vaccine because vaccines can only be developed against bacteria, and Plasmodium is not a bacterium.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef5_12 = topicRef5.collection('questions').doc('12');

    await questionRef5_12.set({
      'questionId': '12',
      'order': 12,
      'statements': [
        {
          'text': "Skin rash and bleeding from the nose and gums are symptoms of Dengue, which is a viral disease (not protozoan), and retro-orbital pain is also a recognised symptom of Dengue.",
          'isCorrect': true,
        },
        {
          'text': "Dengue is a protozoan disease, and retro-orbital pain is not a symptom of Dengue.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef5_13 = topicRef5.collection('questions').doc('13');

    await questionRef5_13.set({
      'questionId': '13',
      'order': 13,
      'statements': [
        {
          'text': "Foot and Mouth disease, Anthrax, and Black Quarter are infectious diseases of milching animals, while Cowpox is not classified among them in this set.",
          'isCorrect': true,
        },
        {
          'text': "Only Anthrax, Black Quarter, and Cowpox are infectious diseases of milching animals, while Foot and Mouth disease is not.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef5_14 = topicRef5.collection('questions').doc('14');

    await questionRef5_14.set({
      'questionId': '14',
      'order': 14,
      'statements': [
        {
          'text': "'Athlete's Foot' is a disease caused by a fungus.",
          'isCorrect': true,
        },
        {
          'text': "'Athlete's Foot' is a disease caused by bacteria.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef5_15 = topicRef5.collection('questions').doc('15');

    await questionRef5_15.set({
      'questionId': '15',
      'order': 15,
      'statements': [
        {
          'text': "Royal haemophilia is a sex-linked genetic disease.",
          'isCorrect': true,
        },
        {
          'text': "Hypertension is a sex-linked genetic disease.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef5_16 = topicRef5.collection('questions').doc('16');

    await questionRef5_16.set({
      'questionId': '16',
      'order': 16,
      'statements': [
        {
          'text': "Lathyrism is caused by excessive consumption of Kesari dal.",
          'isCorrect': true,
        },
        {
          'text': "Lathyrism is caused by excessive consumption of polished rice.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef5_17 = topicRef5.collection('questions').doc('17');

    await questionRef5_17.set({
      'questionId': '17',
      'order': 17,
      'statements': [
        {
          'text': "Malaria is caused by a protozoan, poliomyelitis by a virus, tuberculosis by bacteria, and ringworm by a fungus.",
          'isCorrect': true,
        },
        {
          'text': "Malaria is caused by a virus, poliomyelitis by a protozoan, tuberculosis by a fungus, and ringworm by bacteria.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef5_18 = topicRef5.collection('questions').doc('18');

    await questionRef5_18.set({
      'questionId': '18',
      'order': 18,
      'statements': [
        {
          'text': "Malaria affects blood cells, Filaria affects the lymph nodes, Encephalitis affects the brain, and Leukaemia affects the bone marrow.",
          'isCorrect': true,
        },
        {
          'text': "Malaria affects the brain, Filaria affects muscle, Encephalitis affects blood cells, and Leukaemia affects the lymph nodes.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef5_19 = topicRef5.collection('questions').doc('19');

    await questionRef5_19.set({
      'questionId': '19',
      'order': 19,
      'statements': [
        {
          'text': "Diabetes mellitus is associated with a higher sugar level in the blood and a lower insulin level in the blood.",
          'isCorrect': true,
        },
        {
          'text': "Diabetes mellitus is associated with a lower sugar level in the blood and a higher insulin level in the blood.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef5_20 = topicRef5.collection('questions').doc('20');

    await questionRef5_20.set({
      'questionId': '20',
      'order': 20,
      'statements': [
        {
          'text': "AIDS is transmitted by sexual intercourse, blood transfusion, and across the placenta from mother to child, but not by mosquitoes or other blood-sucking insects.",
          'isCorrect': true,
        },
        {
          'text': "AIDS can be transmitted by mosquitoes and other blood-sucking insects.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef5_21 = topicRef5.collection('questions').doc('21');

    await questionRef5_21.set({
      'questionId': '21',
      'order': 21,
      'statements': [
        {
          'text': "People drinking water from a shallow hand pump are likely to suffer from cholera, typhoid, and jaundice due to water contamination, but not typically fluorosis from that specific source.",
          'isCorrect': true,
        },
        {
          'text': "People drinking water from a shallow hand pump are particularly likely to suffer from fluorosis due to water contamination.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef5_22 = topicRef5.collection('questions').doc('22');

    await questionRef5_22.set({
      'questionId': '22',
      'order': 22,
      'statements': [
        {
          'text': "None of these classic disease-category sets are correctly matched: Diphtheria, Pneumonia and Leprosy are infectious (not hereditary); AIDS is viral, not bacterial; sickle cell anaemia is not sex-linked like colour blindness and haemophilia; and Plague is bacterial, not viral.",
          'isCorrect': true,
        },
        {
          'text': "Colour blindness, Haemophilia, and Sickle cell anaemia are all correctly classified as sex-linked diseases.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef5_23 = topicRef5.collection('questions').doc('23');

    await questionRef5_23.set({
      'questionId': '23',
      'order': 23,
      'statements': [
        {
          'text': "Rifampicin is an antimicrobial drug suitable for the treatment of both tuberculosis and leprosy.",
          'isCorrect': true,
        },
        {
          'text': "Isoniazid is an antimicrobial drug suitable for the treatment of both tuberculosis and leprosy.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef5_24 = topicRef5.collection('questions').doc('24');

    await questionRef5_24.set({
      'questionId': '24',
      'order': 24,
      'statements': [
        {
          'text': "The disease described as beginning from a single cell and growing into a disease that claims millions of lives, with new discoveries promising better therapies, refers to Cancer.",
          'isCorrect': true,
        },
        {
          'text': "The disease described as beginning from a single cell and growing into a disease that claims millions of lives refers to AIDS.",
          'isCorrect': false,
        },
      ],
    });

    final questionRef5_25 = topicRef5.collection('questions').doc('25');

    await questionRef5_25.set({
      'questionId': '25',
      'order': 25,
      'statements': [
        {
          'text': "Unlike Hepatitis C, Hepatitis B does have a vaccine available.",
          'isCorrect': true,
        },
        {
          'text': "Hepatitis B, unlike Hepatitis C, does not have a vaccine.",
          'isCorrect': false,
        },
      ],
    });

    print('Science and Technology (continued) seeding completed.');
  }
  static Future<void> seed() async {
    final firestore = FirebaseFirestore.instance;

    final subjectRef = firestore.collection('subjects').doc('science_and_technology');
    await subjectRef.set({
      'name': 'Science and Technology',
      'order': 6,
      'hasSections': false,
    });

    final topicRef1 = subjectRef.collection('topics').doc('biotechnology');
    await topicRef1.set({
      'name': 'Biotechnology',
      'order': 1,
    });

    final questionRef1_1 = topicRef1.collection('questions').doc('1');
    await questionRef1_1.set({
      'questionId': '1',
      'order': 1,
      'statements': [
        {
          'text': 'Monoclonal antibodies are man-made proteins that stimulate immunological function by binding to specific antigens, and they are used in treating viral infections such as Nipah virus.',
          'isCorrect': true,
        },
        {
          'text': 'Monoclonal antibodies are naturally occurring proteins that cannot be used to treat viral infections like Nipah virus.',
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
          'text': 'In India, the law prohibits the import of Genetically Modified food without the approval of the competent authority.',
          'isCorrect': true,
        },
        {
          'text': 'India does not import apples from the United States of America.',
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
          'text': 'Hydrogels are used in controlled drug delivery in patients.',
          'isCorrect': true,
        },
        {
          'text': 'Hydrogels are used in mobile air-conditioning systems and the preparation of industrial lubricants.',
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
          'text': '\'Aerial metagenomics\' best refers to collecting DNA samples from air in a habitat at one go.',
          'isCorrect': true,
        },
        {
          'text': '\'Aerial metagenomics\' best refers to sending drones to inaccessible areas to collect plant and animal samples from land surfaces and water bodies.',
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
          'text': 'Microsatellite DNA is used for studying the evolutionary relationships among various species of fauna.',
          'isCorrect': true,
        },
        {
          'text': 'Microsatellite DNA is used for stimulating stem cells to transform into diverse functional tissues.',
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
          'text': 'DNA Barcoding can be a tool to distinguish among species that look alike, and to identify undesirable animal or plant materials in processed foods.',
          'isCorrect': true,
        },
        {
          'text': 'DNA Barcoding can be a tool to assess the age of a plant or animal.',
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
          'text': 'The Sputnik V vaccine is manufactured using a vector-based platform, and COVAXIN is an inactivated pathogen-based vaccine.',
          'isCorrect': true,
        },
        {
          'text': 'The Serum Institute of India produced the COVID-19 vaccine Covishield using an mRNA platform.',
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
          'text': 'Biofilms can form on medical implants within human tissues, on food and food processing surfaces, and can exhibit antibiotic resistance.',
          'isCorrect': true,
        },
        {
          'text': 'Biofilms cannot exhibit antibiotic resistance and do not form on medical implants.',
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
          'text': 'Bollgard I and Bollgard II technologies are mentioned in the context of developing genetically modified crop plants.',
          'isCorrect': true,
        },
        {
          'text': 'Bollgard I and Bollgard II technologies are mentioned in the context of clonal propagation of crop plants.',
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
          'text': 'Genetic engineering is applied in the development of Recombinant Vector Vaccines, and bacteria and viruses are used as vectors in them.',
          'isCorrect': true,
        },
        {
          'text': 'Neither genetic engineering nor the use of bacteria and viruses as vectors is involved in the development of Recombinant Vector Vaccines.',
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
          'text': 'Carbon nanotubes can be used as carriers of drugs and antigens in the human body, used in biochemical sensors, and are biodegradable.',
          'isCorrect': true,
        },
        {
          'text': 'Carbon nanotubes can be made into artificial blood capillaries for an injured part of the human body.',
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
          'text': 'Genetic changes can be introduced in the cells that produce eggs or sperms of a prospective parent, a person\'s genome can be edited before birth at the early embryonic stage, and human induced pluripotent stem cells can be injected into the embryo of a pig.',
          'isCorrect': true,
        },
        {
          'text': 'None of introducing genetic changes in egg or sperm-producing cells, editing a genome before birth, or injecting human induced pluripotent stem cells into a pig embryo is currently possible.',
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
          'text': 'Pneumococcal Conjugate Vaccines are effective against pneumonia as well as meningitis and sepsis, and their use can reduce dependence on antibiotics that are not effective against drug-resistant bacteria.',
          'isCorrect': true,
        },
        {
          'text': 'Pneumococcal Conjugate Vaccines have no side effects and cause no allergic reactions.',
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
          'text': '\'Pronuclear Transfer\' is used for the prevention of mitochondrial diseases in offspring.',
          'isCorrect': true,
        },
        {
          'text': '\'Pronuclear Transfer\' is used for the fertilization of an egg in vitro by donor sperm.',
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
          'text': 'Functional chromosomes cannot simply be created by joining segments of DNA taken from cells of different species — this is the incorrect statement among the given options.',
          'isCorrect': true,
        },
        {
          'text': 'Functional chromosomes can be created by joining segments of DNA taken from cells of different species.',
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
          'text': 'RNA interference (RNAi) technology is used in developing gene silencing therapies, in developing therapies for the treatment of cancer, and to produce crop plants resistant to viral pathogens.',
          'isCorrect': true,
        },
        {
          'text': 'RNA interference (RNAi) technology can be used to develop hormone replacement therapies.',
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
          'text': 'Cas9 protein is a molecular scissors used in targeted gene editing.',
          'isCorrect': true,
        },
        {
          'text': 'Cas9 protein is a biosensor used in the accurate detection of pathogens in patients.',
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
          'text': 'GM Mustard has genes that allow the plant cross-pollination and hybridization.',
          'isCorrect': true,
        },
        {
          'text': 'GM Mustard has the genes of a soil bacterium that give the plant pest-resistance to a wide variety of pests, and it has been jointly developed by IARI and Punjab Agricultural University.',
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
          'text': 'Genome sequencing can be used to identify genetic markers for disease resistance and drought tolerance in crop plants, helps reduce the time required to develop new crop varieties, and can be used to decipher host-pathogen relationships in crops.',
          'isCorrect': true,
        },
        {
          'text': 'Genome sequencing cannot be used to identify genetic markers for disease resistance in crop plants.',
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
          'text': 'The application of Somatic Cell Nuclear Transfer Technology is the reproductive cloning of animals.',
          'isCorrect': true,
        },
        {
          'text': 'The application of Somatic Cell Nuclear Transfer Technology is the production of biolarvicides.',
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
          'text': 'The term \'transcriptome\' refers to the full range of mRNA molecules expressed by an organism.',
          'isCorrect': true,
        },
        {
          'text': 'The term \'transcriptome\' refers to a range of enzymes used in genome editing.',
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
          'text': 'The Genetic Engineering Appraisal Committee is constituted under the Environment (Protection) Act, 1986.',
          'isCorrect': true,
        },
        {
          'text': 'The Genetic Engineering Appraisal Committee is constituted under the Food Safety and Standards Act, 2006.',
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
          'text': 'Targeted drug delivery is made possible by nanotechnology, and nanotechnology can largely contribute to gene therapy.',
          'isCorrect': true,
        },
        {
          'text': 'Neither targeted drug delivery nor gene therapy is made possible by nanotechnology.',
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
          'text': 'Cytoplasmic male sterility and gene silencing are techniques used to create transgenic crops.',
          'isCorrect': true,
        },
        {
          'text': 'Budding and grafting in fruit plants is a technique used to create transgenic crops.',
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
          'text': 'Recombinant DNA technology allows genes to be transferred across different species of plants, from animals to plants, and from microorganisms to higher organisms.',
          'isCorrect': true,
        },
        {
          'text': 'Recombinant DNA technology allows genes to be transferred only across different species of plants.',
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
          'text': 'Mycorrhizal biotechnology enables plants to resist drought and increase absorptive area, tolerate extremes of pH, and resist disease infestation.',
          'isCorrect': true,
        },
        {
          'text': 'Mycorrhizal biotechnology only enables plants to resist drought and increase absorptive area.',
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
          'text': 'People\'s resistance to the introduction of Bt brinjal in India stems from apprehension that its consumption may have adverse health impacts, and concern that its introduction may adversely affect biodiversity.',
          'isCorrect': true,
        },
        {
          'text': 'People\'s resistance to the introduction of Bt brinjal in India stems from the fact that it was created using a gene from a soil fungus, and that its seeds are terminator seeds requiring farmers to buy new seeds every season.',
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
          'text': 'Stem cells can be used for screening new drugs and for medical therapies.',
          'isCorrect': true,
        },
        {
          'text': 'Stem cells can be derived from mammals only.',
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
          'text': 'Genetically engineered plants have been created to withstand drought, increase the nutritive value of the produce, and increase their shelf life.',
          'isCorrect': true,
        },
        {
          'text': 'Genetically engineered plants have been created to enable them to grow and photosynthesize in spaceships and space stations.',
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
          'text': 'The objective of developing the genetically engineered Bt-brinjal was to make it pest-resistant.',
          'isCorrect': true,
        },
        {
          'text': 'The objective of developing the genetically engineered Bt-brinjal was to improve its taste and nutritive qualities.',
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
          'text': 'Knowing the arrangement of genes on a chromosome makes it possible to know the pedigree of livestock and to develop disease-resistant animal breeds.',
          'isCorrect': true,
        },
        {
          'text': 'Knowing the arrangement of genes on a chromosome makes it possible to understand the causes of all human diseases.',
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
          'text': 'Golden rice grains contain pro-vitamin A, which upon ingestion is converted to vitamin A in the human body.',
          'isCorrect': true,
        },
        {
          'text': 'Golden rice grains have been fortified with genes to provide three times higher grain yield per acre than other high-yielding varieties.',
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
          'text': 'Nobel Prize winning scientist James D. Watson is known for his work in genetics.',
          'isCorrect': true,
        },
        {
          'text': 'Nobel Prize winning scientist James D. Watson is known for his work in meteorology.',
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
          'text': 'Computed tomography, used for visualization of the internal structure of the human body, employs X-rays.',
          'isCorrect': true,
        },
        {
          'text': 'Computed tomography, used for visualization of the internal structure of the human body, employs sound waves.',
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
          'text': 'The ELISA test is not employed as the first and most basic test for detecting cancer, and it is not true that almost 50% of human beings have Rh- blood.',
          'isCorrect': true,
        },
        {
          'text': 'The ELISA test is employed as the first and most basic test for an individual to detect cancer.',
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
          'text': 'Adam Osborne produced the first portable computer, and Ian Wilmut created the first cloned sheep.',
          'isCorrect': true,
        },
        {
          'text': 'Neither Adam Osborne producing the first portable computer nor Ian Wilmut creating the first cloned sheep is correct.',
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
          'text': 'Among the given pairs, \'Reinhold Messner: Computer Technology\' is not correctly matched.',
          'isCorrect': true,
        },
        {
          'text': 'Reinhold Messner is correctly matched with Computer Technology.',
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
          'text': 'Stem cells can regenerate themselves in vitro virtually forever, and Indian research centres have also created a few cell lines that can be developed into many types of tissues.',
          'isCorrect': true,
        },
        {
          'text': 'The only source of human stem cells is embryos at the blastocyst stage, and stem cells cannot be derived without destroying blastocysts.',
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
          'text': 'Arber and Smith are credited with discovering endonuclease, Feldman with developing transgenic plants using Agrobacterium T-DNA, Mullis with discovering reverse transcriptase, and Temin and Baltimore with discovering the polymerase chain reaction.',
          'isCorrect': true,
        },
        {
          'text': 'Arber and Smith are credited with developing transgenic plants using Agrobacterium T-DNA, and Feldman is credited with discovering endonuclease.',
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
          'text': 'Canola oil seed mustard varieties are characterized by oil rich in unsaturated fatty acids.',
          'isCorrect': true,
        },
        {
          'text': 'Canola oil seed mustard varieties are characterized by seeds with very high oil content.',
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
          'text': 'Barium is administered before a stomach X-ray because it is a good absorber of X-rays, helping the stomach appear clearly in contrast with other regions in the image.',
          'isCorrect': true,
        },
        {
          'text': 'Barium is administered before a stomach X-ray because it allows X-rays to pass through the stomach on account of its transparency to X-rays.',
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
          'text': 'Endoscopy is based on the phenomenon of total internal reflection.',
          'isCorrect': true,
        },
        {
          'text': 'Endoscopy is based on the phenomenon of interference.',
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
          'text': 'Insect-resistant transgenic cotton has been produced by inserting the Bt gene, because the Bt gene is derived from a bacterium.',
          'isCorrect': true,
        },
        {
          'text': 'The Bt gene used in transgenic cotton is not derived from a bacterium.',
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
          'text': 'Dolly was the first cloned mammal, but Dolly was not produced by in vitro fertilization.',
          'isCorrect': true,
        },
        {
          'text': 'Dolly was the first cloned mammal and was produced by in vitro fertilization.',
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
          'text': 'DNA finger-printing can be used to establish the paternity of a child.',
          'isCorrect': true,
        },
        {
          'text': 'Protein analysis can be used to establish the paternity of a child.',
          'isCorrect': false,
        },
      ],
    });

    final topicRef2 = subjectRef.collection('topics').doc('chemistry');
    await topicRef2.set({
      'name': 'Chemistry',
      'order': 2,
    });

    final questionRef2_1 = topicRef2.collection('questions').doc('1');
    await questionRef2_1.set({
      'questionId': '1',
      'order': 1,
      'statements': [
        {
          'text': 'Carbon fibres are used in the manufacture of components used in automobiles and aircrafts.',
          'isCorrect': true,
        },
        {
          'text': 'Carbon fibres, once used, cannot be recycled.',
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
          'text': 'Polyethylene terephthalate fibres can be blended with wool and cotton fibres to reinforce their properties, and bottles made of it can be recycled into other products.',
          'isCorrect': true,
        },
        {
          'text': 'Containers made of polyethylene terephthalate can be used to store any alcoholic beverage, and articles made of it can be easily disposed of by incineration without causing greenhouse gas emissions.',
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
          'text': 'Bisphenol A (BPA) is a structural or key component in the manufacture of Polycarbonate plastics.',
          'isCorrect': true,
        },
        {
          'text': 'Bisphenol A (BPA) is a structural or key component in the manufacture of Low-density polyethylene.',
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
          'text': 'Water can dissolve more substances than any other liquid because it is dipolar in nature.',
          'isCorrect': true,
        },
        {
          'text': 'Water can dissolve more substances than any other liquid because it is a good conductor of heat.',
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
          'text': 'The terms \'pyrolysis\' and \'plasma gasification\' are mentioned in the context of waste-to-energy technologies.',
          'isCorrect': true,
        },
        {
          'text': 'The terms \'pyrolysis\' and \'plasma gasification\' are mentioned in the context of extraction of rare earth elements.',
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
          'text': 'Lipstick may contain lead, soft drinks may contain brominated vegetable oils, and Chinese fast food may contain monosodium glutamate.',
          'isCorrect': true,
        },
        {
          'text': 'Only lipstick, and not soft drinks or Chinese fast food, is associated with an unwanted or controversial chemical among the given pairs.',
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
          'text': 'If pure hydrogen is used as fuel, a fuel cell emits heat and water as by-products.',
          'isCorrect': true,
        },
        {
          'text': 'Fuel cells can be used for powering buildings but not for small devices like laptop computers, and they produce electricity in the form of Alternating Current.',
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
          'text': 'Souring of milk is an example of a chemical change.',
          'isCorrect': true,
        },
        {
          'text': 'Crystallization of sodium chloride and melting of ice are examples of chemical change.',
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
          'text': 'Fruits stored in a cold chamber exhibit long storage life because the rate of respiration is decreased.',
          'isCorrect': true,
        },
        {
          'text': 'Fruits stored in a cold chamber exhibit long storage life because exposure to sunlight is prevented.',
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
          'text': 'UV radiation in water purification systems inactivates or kills harmful microorganisms in water.',
          'isCorrect': true,
        },
        {
          'text': 'UV radiation in water purification systems removes all undesirable odours from water, and quickens the sedimentation of solid particles.',
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
          'text': 'Aspartame is several times sweeter than table sugar, so food items made with small quantities of aspartame yield fewer calories on oxidation.',
          'isCorrect': true,
        },
        {
          'text': 'Aspartame is as sweet as table sugar, but unlike table sugar, it is not readily oxidized in the human body due to lack of requisite enzymes.',
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
          'text': 'Excessive carbon monoxide decreases oxygen supply in the body because inhaled CO has a much higher affinity for haemoglobin compared to oxygen.',
          'isCorrect': true,
        },
        {
          'text': 'Excessive carbon monoxide decreases oxygen supply in the body because, when inhaled, CO is converted into CO2.',
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
          'text': 'Oxides of Nitrogen and Oxides of Sulphur are emissions from coal combustion at thermal power plants.',
          'isCorrect': true,
        },
        {
          'text': 'Oxides of Hydrogen are emissions from coal combustion at thermal power plants.',
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
          'text': 'Hydrogen fuel cell vehicles produce water (H2O) as exhaust.',
          'isCorrect': true,
        },
        {
          'text': 'Hydrogen fuel cell vehicles produce methane (CH4) as exhaust.',
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
          'text': 'The disinfecting action of chlorine in water purification is mainly due to the formation of hypochlorous acid when chlorine is added to water.',
          'isCorrect': true,
        },
        {
          'text': 'The disinfecting action of chlorine in water purification is mainly due to the formation of hydrochloric acid when chlorine is added to water.',
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
          'text': 'Nitroglycerine is used as an explosive.',
          'isCorrect': true,
        },
        {
          'text': 'Graphite is used as an explosive.',
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
          'text': 'In a dry cell (battery), Ammonium chloride and Zinc chloride are used as electrolytes.',
          'isCorrect': true,
        },
        {
          'text': 'In a dry cell (battery), Sodium chloride and Calcium chloride are used as electrolytes.',
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
          'text': 'Lithium and osmium constitute the lightest metal and the heaviest metal, respectively.',
          'isCorrect': true,
        },
        {
          'text': 'Lithium and mercury constitute the lightest metal and the heaviest metal, respectively.',
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
          'text': 'A mixture of methane and air is the cause of most explosions in mines.',
          'isCorrect': true,
        },
        {
          'text': 'A mixture of hydrogen and oxygen is the cause of most explosions in mines.',
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
          'text': 'Xenon is also called Stranger Gas.',
          'isCorrect': true,
        },
        {
          'text': 'Argon is also called Stranger Gas.',
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
          'text': 'Rubies and Sapphires are chemically known as Aluminum oxide.',
          'isCorrect': true,
        },
        {
          'text': 'Rubies and Sapphires are chemically known as Silicon dioxide.',
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
          'text': 'Zinc oxide is called philosopher\'s wool.',
          'isCorrect': true,
        },
        {
          'text': 'Zinc bromide is called philosopher\'s wool.',
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
          'text': 'Among Horn Silver, German silver, Ruby silver and Lunar caustic, German silver does not contain silver.',
          'isCorrect': true,
        },
        {
          'text': 'Among Horn Silver, German silver, Ruby silver and Lunar caustic, Horn Silver does not contain silver.',
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
          'text': 'Crookes glass can cut off ultraviolet rays.',
          'isCorrect': true,
        },
        {
          'text': 'Soda glass can cut off ultraviolet rays.',
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
          'text': 'Among Sulphur, Selenium, Bromine and Phosphorus, Selenium is not a poor conductor of electricity.',
          'isCorrect': true,
        },
        {
          'text': 'Among Sulphur, Selenium, Bromine and Phosphorus, Sulphur is not a poor conductor of electricity.',
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
          'text': 'RDX is also known as Cyclonite.',
          'isCorrect': true,
        },
        {
          'text': 'RDX is also known as Cyanohydrin.',
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
          'text': 'Benzene, Carbon tetrachloride, and Trichloroethylene are used as dry-cleaning chemicals.',
          'isCorrect': true,
        },
        {
          'text': 'Sodium Carbonate, along with Benzene, Carbon tetrachloride and Trichloroethylene, is used as a dry-cleaning chemical.',
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
          'text': 'Cellulose is used in making shatter-proof glass, because polysaccharides are not soluble in water.',
          'isCorrect': true,
        },
        {
          'text': 'Cellulose is not used in making shatter-proof glass.',
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
          'text': 'Lead and tin are the materials generally employed as solder in soldering operations.',
          'isCorrect': true,
        },
        {
          'text': 'Iron and tin are the materials generally employed as solder in soldering operations.',
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
          'text': 'During osmosis, the solvent travels from the dilute solution to the concentrated solution, and in reverse osmosis, external pressure is applied to the concentrated solution, not the dilute one.',
          'isCorrect': true,
        },
        {
          'text': 'During osmosis, the solvent travels from the concentrated solution to the dilute solution.',
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
          'text': 'Methane can be used directly for burning in homes and factories where it can be supplied through pipelines, but methane is not the main constituent of Liquefied Petroleum Gas.',
          'isCorrect': true,
        },
        {
          'text': 'The main constituent of Liquefied Petroleum Gas is methane.',
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
          'text': 'Liquefied Natural Gas (LNG) is liquefied under extremely cold temperatures and high pressure to facilitate storage or transportation, and Natural Gas Liquids (NGL) are separated from LPG and include ethane, propane, butane and natural gasoline.',
          'isCorrect': true,
        },
        {
          'text': 'The first LNG terminal in India was built in Hassan.',
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
          'text': 'In decreasing order of density, the correct sequence is Gold, Mercury, Steel.',
          'isCorrect': true,
        },
        {
          'text': 'In decreasing order of density, the correct sequence is Steel, Mercury, Gold.',
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
          'text': 'Baking soda is used in fire extinguishers, and bleaching powder is manufactured in a Hasenclever plant.',
          'isCorrect': true,
        },
        {
          'text': 'Anhydrous sodium carbonate is commonly known as baking soda.',
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
          'text': 'Baking soda is used in fire extinguishers, quicklime is used in the manufacture of glass, and gypsum is used in the manufacture of Plaster of Paris.',
          'isCorrect': true,
        },
        {
          'text': 'Only baking soda\'s use in fire extinguishers is correct among the given statements about quicklime and gypsum.',
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
          'text': 'CNG\'s major constituents are Methane and Ethane, Coal gas\'s are Hydrogen, Methane and Carbon monoxide, LPG\'s are Butane and Propane, and Water gas\'s are Carbon monoxide and Hydrogen.',
          'isCorrect': true,
        },
        {
          'text': 'CNG\'s major constituents are Butane and Propane, and LPG\'s major constituents are Methane and Ethane.',
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
          'text': 'Salts of Strontium and barium provide colours to fireworks.',
          'isCorrect': true,
        },
        {
          'text': 'Salts of Zinc and sulphur provide colours to fireworks.',
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
          'text': 'Molasses is a by-product of the sugar production process, and bagasse obtained in sugar mills is used as fuel in boilers to generate steam for sugar factories.',
          'isCorrect': true,
        },
        {
          'text': 'Sugar can only be produced from sugarcane as the raw material.',
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
          'text': 'Sodium sulphate and sodium silicate are not added to washing powder to keep it dry or maintain its alkalinity — neither of the given reasons is correct.',
          'isCorrect': true,
        },
        {
          'text': 'Sodium sulphate and sodium silicate are added to washing powder to keep it dry and to maintain the alkalinity of the powder.',
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
          'text': 'In a group of the periodic table, the atomic radius generally increases from top to bottom, but electron affinity does not always increase from top to bottom in a group.',
          'isCorrect': true,
        },
        {
          'text': 'In the periodic table, electron affinity is always found to increase from top to bottom in a group.',
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
          'text': 'Unsaturated fats are more reactive compared with saturated fats, but unsaturated fats do not have only single bonds in their structure.',
          'isCorrect': true,
        },
        {
          'text': 'Unsaturated fats are more reactive compared with saturated fats because they have only single bonds in their structure.',
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
          'text': 'Ionic compounds are generally soluble in water rather than alcohol, and ionic compounds in the solid state are poor conductors of electricity, not good conductors.',
          'isCorrect': true,
        },
        {
          'text': 'Ionic compounds are insoluble in alcohol, and ionic compounds in the solid state are good conductors of electricity.',
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
          'text': 'Barium and Strontium are found free in nature.',
          'isCorrect': true,
        },
        {
          'text': 'Gypsum is added to the cement to slow down its rate of setting.',
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
          'text': 'Addition of solutes to a solution causes an increase in its water potential.',
          'isCorrect': true,
        },
        {
          'text': 'The boiling point of an aqueous solution is higher than that of pure water.',
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
          'text': 'The oxidation number of Ca in CaO2 is 2, of Al in NaAlH4 is 3, of Mn in MnO2 is 4, and of S in H2S2O7 is 6.',
          'isCorrect': true,
        },
        {
          'text': 'The oxidation number of Mn in MnO2 is 2, and the oxidation number of Ca in CaO2 is 4.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_46 = topicRef2.collection('questions').doc('46');
    await questionRef2_46.set({
      'questionId': '46',
      'order': 46,
      'statements': [
        {
          'text': 'Synthetic detergents can lather well in hard water because they form soluble calcium and magnesium salts with hard water.',
          'isCorrect': true,
        },
        {
          'text': 'Synthetic detergents cannot lather well in hard water.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_47 = topicRef2.collection('questions').doc('47');
    await questionRef2_47.set({
      'questionId': '47',
      'order': 47,
      'statements': [
        {
          'text': 'A piece of copper appears hotter than a piece of glass heated to the same temperature when touched, and the density of copper is more than that of glass, though the latter is not the full explanation for the former.',
          'isCorrect': true,
        },
        {
          'text': 'A piece of copper does not appear hotter than a piece of glass when both are heated to the same temperature and touched.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_48 = topicRef2.collection('questions').doc('48');
    await questionRef2_48.set({
      'questionId': '48',
      'order': 48,
      'statements': [
        {
          'text': 'When water is heated from 0°C to 10°C, its volume first decreases and then increases.',
          'isCorrect': true,
        },
        {
          'text': 'When water is heated from 0°C to 10°C, its volume simply increases.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_49 = topicRef2.collection('questions').doc('49');
    await questionRef2_49.set({
      'questionId': '49',
      'order': 49,
      'statements': [
        {
          'text': 'A chemical reaction becomes faster at higher temperatures because, at higher temperatures, molecular motion becomes more rapid.',
          'isCorrect': true,
        },
        {
          'text': 'A chemical reaction does not become faster at higher temperatures.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_50 = topicRef2.collection('questions').doc('50');
    await questionRef2_50.set({
      'questionId': '50',
      'order': 50,
      'statements': [
        {
          'text': 'Among Astatine, Francium, Tritium and Zirconium, Zirconium is not radioactive.',
          'isCorrect': true,
        },
        {
          'text': 'Among Astatine, Francium, Tritium and Zirconium, Tritium is not radioactive.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_51 = topicRef2.collection('questions').doc('51');
    await questionRef2_51.set({
      'questionId': '51',
      'order': 51,
      'statements': [
        {
          'text': 'The correct increasing order of molecular weights of the hydrocarbons is methane, ethane, propane, and butane.',
          'isCorrect': true,
        },
        {
          'text': 'The correct increasing order of molecular weights of the hydrocarbons is butane, propane, ethane, and methane.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_52 = topicRef2.collection('questions').doc('52');
    await questionRef2_52.set({
      'questionId': '52',
      'order': 52,
      'statements': [
        {
          'text': 'The order of filling up of orbitals in an atom is governed by the Aufbau principle.',
          'isCorrect': true,
        },
        {
          'text': 'The order of filling up of orbitals in an atom is governed by Heisenberg\'s uncertainty principle.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_53 = topicRef2.collection('questions').doc('53');
    await questionRef2_53.set({
      'questionId': '53',
      'order': 53,
      'statements': [
        {
          'text': 'An aqueous solution of copper sulphate is acidic in nature because the salt undergoes hydrolysis.',
          'isCorrect': true,
        },
        {
          'text': 'An aqueous solution of copper sulphate is acidic in nature because the salt undergoes electrolysis.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_54 = topicRef2.collection('questions').doc('54');
    await questionRef2_54.set({
      'questionId': '54',
      'order': 54,
      'statements': [
        {
          'text': 'In a group of elements, electron affinity decreases as the atomic weight increases.',
          'isCorrect': true,
        },
        {
          'text': 'Ionisation potential gradually decreases along a period, and in a given period, electronegativity decreases as the atomic number increases.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_55 = topicRef2.collection('questions').doc('55');
    await questionRef2_55.set({
      'questionId': '55',
      'order': 55,
      'statements': [
        {
          'text': 'Quartzite is metamorphosed from sandstone.',
          'isCorrect': true,
        },
        {
          'text': 'Quartzite is metamorphosed from limestone.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_56 = topicRef2.collection('questions').doc('56');
    await questionRef2_56.set({
      'questionId': '56',
      'order': 56,
      'statements': [
        {
          'text': 'Most explosions in mines occur due to the mixing of methane with air.',
          'isCorrect': true,
        },
        {
          'text': 'Most explosions in mines occur due to the mixing of hydrogen with oxygen.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_57 = topicRef2.collection('questions').doc('57');
    await questionRef2_57.set({
      'questionId': '57',
      'order': 57,
      'statements': [
        {
          'text': 'German Silver contains Nickel, Solder contains Tin, Bleaching Powder contains Chlorine, and Hypo contains Sodium.',
          'isCorrect': true,
        },
        {
          'text': 'German Silver contains Tin, and Solder contains Nickel.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_58 = topicRef2.collection('questions').doc('58');
    await questionRef2_58.set({
      'questionId': '58',
      'order': 58,
      'statements': [
        {
          'text': 'Nichrome is a material that is very hard and very ductile.',
          'isCorrect': true,
        },
        {
          'text': 'Carborundum is a material that is very hard and very ductile.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_59 = topicRef2.collection('questions').doc('59');
    await questionRef2_59.set({
      'questionId': '59',
      'order': 59,
      'statements': [
        {
          'text': 'Soft drinks such as colas contain significant quantities of caffeine.',
          'isCorrect': true,
        },
        {
          'text': 'Soft drinks such as colas contain significant quantities of nicotine.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_60 = topicRef2.collection('questions').doc('60');
    await questionRef2_60.set({
      'questionId': '60',
      'order': 60,
      'statements': [
        {
          'text': 'Anodizing aluminium surfaces means the deposition of a layer of aluminium oxide.',
          'isCorrect': true,
        },
        {
          'text': 'Anodizing aluminium surfaces means the deposition of a layer of chromium oxide.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_61 = topicRef2.collection('questions').doc('61');
    await questionRef2_61.set({
      'questionId': '61',
      'order': 61,
      'statements': [
        {
          'text': 'Silica gel pouches are found in medicine bottles because silica gel absorbs moisture.',
          'isCorrect': true,
        },
        {
          'text': 'Silica gel pouches are found in medicine bottles because silica gel kills bacteria.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_62 = topicRef2.collection('questions').doc('62');
    await questionRef2_62.set({
      'questionId': '62',
      'order': 62,
      'statements': [
        {
          'text': 'Cracking is associated with the Petroleum industry, Smelting with the Copper industry, Hydrogenation with the Edible fats industry, and Vulcanization with the Rubber industry.',
          'isCorrect': true,
        },
        {
          'text': 'Cracking is associated with the Copper industry, and Smelting is associated with the Petroleum industry.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_63 = topicRef2.collection('questions').doc('63');
    await questionRef2_63.set({
      'questionId': '63',
      'order': 63,
      'statements': [
        {
          'text': 'Large cold storage plants use ammonia as refrigerant while domestic refrigerators use chlorofluorocarbons, because ammonia can be liquified at ambient temperatures at low pressures.',
          'isCorrect': true,
        },
        {
          'text': 'Large cold storage plants do not use ammonia as a refrigerant.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_64 = topicRef2.collection('questions').doc('64');
    await questionRef2_64.set({
      'questionId': '64',
      'order': 64,
      'statements': [
        {
          'text': 'Stones formed in the human kidney consist mostly of Calcium oxalate.',
          'isCorrect': true,
        },
        {
          'text': 'Stones formed in the human kidney consist mostly of Sodium acetate.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_65 = topicRef2.collection('questions').doc('65');
    await questionRef2_65.set({
      'questionId': '65',
      'order': 65,
      'statements': [
        {
          'text': 'Hard water is not suitable for drinking, washing clothes with soap, use in boilers, and irrigating crops.',
          'isCorrect': true,
        },
        {
          'text': 'Hard water is unsuitable only for drinking and washing clothes with soap, not for use in boilers or irrigating crops.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_66 = topicRef2.collection('questions').doc('66');
    await questionRef2_66.set({
      'questionId': '66',
      'order': 66,
      'statements': [
        {
          'text': 'An ordinary light bulb has a rather short life because it cannot be evacuated completely, and the wires supporting the filament melt at high temperatures.',
          'isCorrect': true,
        },
        {
          'text': 'An ordinary light bulb has a rather short life because the filament wire is not uniform.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_67 = topicRef2.collection('questions').doc('67');
    await questionRef2_67.set({
      'questionId': '67',
      'order': 67,
      'statements': [
        {
          'text': 'Diamond consists of Carbon, Marble consists of Calcium, Sand consists of Silicon, and Ruby consists of Aluminium.',
          'isCorrect': true,
        },
        {
          'text': 'Diamond consists of Silicon, and Sand consists of Carbon.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_68 = topicRef2.collection('questions').doc('68');
    await questionRef2_68.set({
      'questionId': '68',
      'order': 68,
      'statements': [
        {
          'text': 'Cobalt-60 is commonly used in radiation therapy because it emits Gamma rays.',
          'isCorrect': true,
        },
        {
          'text': 'Cobalt-60 is commonly used in radiation therapy because it emits Alpha rays.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_69 = topicRef2.collection('questions').doc('69');
    await questionRef2_69.set({
      'questionId': '69',
      'order': 69,
      'statements': [
        {
          'text': 'Glass can be etched or scratched by Diamond and Hydrofluoric acid.',
          'isCorrect': true,
        },
        {
          'text': 'Glass can be etched or scratched by Aquaregia and concentrated sulphuric acid.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_70 = topicRef2.collection('questions').doc('70');
    await questionRef2_70.set({
      'questionId': '70',
      'order': 70,
      'statements': [
        {
          'text': 'To dilute sulphuric acid, acid is added to water and not water to acid, because the specific heat of water is quite large.',
          'isCorrect': true,
        },
        {
          'text': 'To dilute sulphuric acid, water is added to acid rather than acid to water.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_71 = topicRef2.collection('questions').doc('71');
    await questionRef2_71.set({
      'questionId': '71',
      'order': 71,
      'statements': [
        {
          'text': 'Potassium bromide is used in photography, Potassium nitrate in gunpowder, Potassium sulphate as a fertiliser, and Mono-potassium tartarate in bakery.',
          'isCorrect': true,
        },
        {
          'text': 'Potassium bromide is used as a fertiliser, and Potassium nitrate is used in photography.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_72 = topicRef2.collection('questions').doc('72');
    await questionRef2_72.set({
      'questionId': '72',
      'order': 72,
      'statements': [
        {
          'text': 'Coke\'s function in a blast furnace is to act as a reducing agent and to function as fuel, supplying heat.',
          'isCorrect': true,
        },
        {
          'text': 'Coke\'s function in a blast furnace is to remove silica associated with the iron ore and to act as an oxidizing agent.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_73 = topicRef2.collection('questions').doc('73');
    await questionRef2_73.set({
      'questionId': '73',
      'order': 73,
      'statements': [
        {
          'text': 'Among Zinc, Copper, Magnesium and Iron, Iron does not form amalgams.',
          'isCorrect': true,
        },
        {
          'text': 'Among Zinc, Copper, Magnesium and Iron, Zinc does not form amalgams.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_74 = topicRef2.collection('questions').doc('74');
    await questionRef2_74.set({
      'questionId': '74',
      'order': 74,
      'statements': [
        {
          'text': 'Acetylene is used in the welding industry and is a raw material for preparing plastics.',
          'isCorrect': true,
        },
        {
          'text': 'Acetylene is easily obtained by mixing silicon carbide and water.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_75 = topicRef2.collection('questions').doc('75');
    await questionRef2_75.set({
      'questionId': '75',
      'order': 75,
      'statements': [
        {
          'text': 'The major chemical compound found in human kidney stones is Calcium oxalate.',
          'isCorrect': true,
        },
        {
          'text': 'The major chemical compound found in human kidney stones is Uric acid.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_76 = topicRef2.collection('questions').doc('76');
    await questionRef2_76.set({
      'questionId': '76',
      'order': 76,
      'statements': [
        {
          'text': 'Blue vitriol is Copper sulphate, Epsom salt is Magnesium sulphate, Baking soda is Sodium bicarbonate, and Caustic soda is Sodium hydroxide.',
          'isCorrect': true,
        },
        {
          'text': 'Blue vitriol is Magnesium sulphate, and Epsom salt is Copper sulphate.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_77 = topicRef2.collection('questions').doc('77');
    await questionRef2_77.set({
      'questionId': '77',
      'order': 77,
      'statements': [
        {
          'text': 'Formic acid is a stronger acid than acetic acid, and formic acid is an organic acid, though the latter does not fully explain the former.',
          'isCorrect': true,
        },
        {
          'text': 'Formic acid is not a stronger acid than acetic acid.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_78 = topicRef2.collection('questions').doc('78');
    await questionRef2_78.set({
      'questionId': '78',
      'order': 78,
      'statements': [
        {
          'text': 'The temperature of a metal wire rises when an electric current is passed through it, and collision of metal atoms with each other releases heat energy, though the latter is not the full explanation for the former.',
          'isCorrect': true,
        },
        {
          'text': 'The temperature of a metal wire does not rise when an electric current is passed through it.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_79 = topicRef2.collection('questions').doc('79');
    await questionRef2_79.set({
      'questionId': '79',
      'order': 79,
      'statements': [
        {
          'text': 'Phenyl is used as a household germicide because phenyl is a phenol derivative and phenol is an effective germicide.',
          'isCorrect': true,
        },
        {
          'text': 'Phenyl is not used as a household germicide.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_80 = topicRef2.collection('questions').doc('80');
    await questionRef2_80.set({
      'questionId': '80',
      'order': 80,
      'statements': [
        {
          'text': 'Sodium metal is stored under kerosene, but this is not because metallic sodium melts when exposed to air.',
          'isCorrect': true,
        },
        {
          'text': 'Sodium metal is stored under kerosene because metallic sodium melts when exposed to air.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_81 = topicRef2.collection('questions').doc('81');
    await questionRef2_81.set({
      'questionId': '81',
      'order': 81,
      'statements': [
        {
          'text': 'The characteristic odour of garlic is due to a sulphur compound.',
          'isCorrect': true,
        },
        {
          'text': 'The characteristic odour of garlic is due to a chloro compound.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_82 = topicRef2.collection('questions').doc('82');
    await questionRef2_82.set({
      'questionId': '82',
      'order': 82,
      'statements': [
        {
          'text': 'Eugenol is the active component of oil of clove.',
          'isCorrect': true,
        },
        {
          'text': 'Menthol is the active component of oil of clove.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_83 = topicRef2.collection('questions').doc('83');
    await questionRef2_83.set({
      'questionId': '83',
      'order': 83,
      'statements': [
        {
          'text': 'Fluorine is the most reactive among the halogens.',
          'isCorrect': true,
        },
        {
          'text': 'Chlorine is the most reactive among the halogens.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_84 = topicRef2.collection('questions').doc('84');
    await questionRef2_84.set({
      'questionId': '84',
      'order': 84,
      'statements': [
        {
          'text': 'Among Hydrogen, Charcoal, Natural Gas and Gasoline, Hydrogen has the highest fuel value.',
          'isCorrect': true,
        },
        {
          'text': 'Among Hydrogen, Charcoal, Natural Gas and Gasoline, Gasoline has the highest fuel value.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_85 = topicRef2.collection('questions').doc('85');
    await questionRef2_85.set({
      'questionId': '85',
      'order': 85,
      'statements': [
        {
          'text': 'Ethylene glycol is used as an anti-freeze for automobile engines.',
          'isCorrect': true,
        },
        {
          'text': 'Ethanol is used as an anti-freeze for automobile engines.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_86 = topicRef2.collection('questions').doc('86');
    await questionRef2_86.set({
      'questionId': '86',
      'order': 86,
      'statements': [
        {
          'text': 'The offending substance in liquor tragedies leading to blindness is Methyl alcohol.',
          'isCorrect': true,
        },
        {
          'text': 'The offending substance in liquor tragedies leading to blindness is Ethyl alcohol.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_87 = topicRef2.collection('questions').doc('87');
    await questionRef2_87.set({
      'questionId': '87',
      'order': 87,
      'statements': [
        {
          'text': 'Chromium is alloyed with iron to produce steel that can resist high temperatures and has high hardness and abrasion resistance.',
          'isCorrect': true,
        },
        {
          'text': 'Aluminium is alloyed with iron to produce steel that can resist high temperatures and has high hardness and abrasion resistance.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_88 = topicRef2.collection('questions').doc('88');
    await questionRef2_88.set({
      'questionId': '88',
      'order': 88,
      'statements': [
        {
          'text': 'NPK is a mixed fertilizer.',
          'isCorrect': true,
        },
        {
          'text': 'Urea is a mixed fertilizer.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_89 = topicRef2.collection('questions').doc('89');
    await questionRef2_89.set({
      'questionId': '89',
      'order': 89,
      'statements': [
        {
          'text': 'Polyamides are widely used for making bullet-proof material.',
          'isCorrect': true,
        },
        {
          'text': 'Polyvinyl chloride is widely used for making bullet-proof material.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_90 = topicRef2.collection('questions').doc('90');
    await questionRef2_90.set({
      'questionId': '90',
      'order': 90,
      'statements': [
        {
          'text': 'Sodium thiosulphate is used as a \'fixer\' in photography.',
          'isCorrect': true,
        },
        {
          'text': 'Sodium sulphate is used as a \'fixer\' in photography.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_91 = topicRef2.collection('questions').doc('91');
    await questionRef2_91.set({
      'questionId': '91',
      'order': 91,
      'statements': [
        {
          'text': 'Nickel and cadmium serve as electrodes in chargeable batteries commonly used in devices such as torchlights and electric shavers.',
          'isCorrect': true,
        },
        {
          'text': 'Zinc and carbon serve as electrodes in chargeable batteries commonly used in devices such as torchlights and electric shavers.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_92 = topicRef2.collection('questions').doc('92');
    await questionRef2_92.set({
      'questionId': '92',
      'order': 92,
      'statements': [
        {
          'text': '\'Yellow cake\', an item of smuggling across borders, is Uranium oxide.',
          'isCorrect': true,
        },
        {
          'text': '\'Yellow cake\', an item of smuggling across borders, is unrefined gold.',
          'isCorrect': false,
        },
      ],
    });

    final questionRef2_93 = topicRef2.collection('questions').doc('93');
    await questionRef2_93.set({
      'questionId': '93',
      'order': 93,
      'statements': [
        {
          'text': 'The offensive substance referred to as Agent Orange is dioxin used as a defoliant.',
          'isCorrect': true,
        },
        {
          'text': 'The offensive substance referred to as Agent Orange is DDT used as an insecticide.',
          'isCorrect': false,
        },
      ],
    });

    print('Science and Technology seeding completed.');
  }
}