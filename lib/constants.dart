import 'package:flutter/material.dart';

const kSpacingUnit = 10;
const kBlackColor = Color(0xFF393939);
const kLightBlackColor = Color(0xFF8F8F8F);
const kIconColor = Color(0xFFF48A37);
const kProgressIndicator = Color(0xFFBE7066);

final kTitleTextStyle = TextStyle(
  fontSize: kSpacingUnit * 1.7,
  fontWeight: FontWeight.w600,
);

const kHeadingTextStyle = TextStyle(
  fontSize: 22,
  fontWeight: FontWeight.w600,
);

const kTitleTextstyle = TextStyle(
  fontSize: 18,
  color: kTitleTextColor,
  fontWeight: FontWeight.bold,
);

final kActiveShadowColor = Color(0xFF4056C6).withOpacity(.15);
const kTitleTextColor = Color(0xFF303030);
List<String> names = [
  "Stoichiometric Relationships",
  "Atomic Structure",
  "Periodicity",
  "Chemical Bonding",
  "Energetics",
  "Chemical Kinetics",
  "Equilibrium",
  "Acids and Bases",
  "Redox Processes",
  "Organic Chemistry",
  "Data Processing"
];
List<String> tags = [
  "Life is about change",
  "Winning is what matters",
  "Winning is what matters",
  "Winning is what matters",
  "Winning is what matters",
  "Winning is what matters",
  "Winning is what matters",
  "Winning is what matters",
  "Winning is what matters",
  "Winning is what matters",
  "Winning is what matters",
  "Winning is what matters"
];
List<String> appbartitles = [
  'Chapter 1: Stoichometric Relations',
  'Chapter 2: Atomic Structure',
  'Chapter 3: Periodicity',
  'Chapter 4: Chemical Bonding',
  'Chapter 5: Energetics',
  'Chapter 6: Chemical Kinetics',
  'Chapter 7: Equilibrium',
  'Chapter 8: Acids and Bases',
  'Chapter 9: Redox Reactions',
  'Chapter 10: Organic Chemistry',
  'Chapter 11: Data Processing'
];
List<String> documentNames = [
  'assets/Chapter1IBChem.pdf',
  'assets/Chapter2IBChem.pdf',
  'assets/Chapter3IBChem.pdf',
  'assets/Chapter4IBChem.pdf',
  'assets/Chapter5IBChem.pdf',
  'assets/Chapter6IBChem.pdf',
  'assets/Chapter7IBChem.pdf',
  'assets/Chapter8IBChem.pdf',
  'assets/Chapter9IBChem.pdf',
  'assets/Chapter10IBChem.pdf',
  'assets/Chapter11IBChem.pdf',
  'assets/Chapter2IBChem.pdf'
];

List<String> timages = [
  "images/jumpBoostLogo.png",
  "images/switchLogo.png",
  "images/biologyLogo.jpg",
  "images/physicsLogo.jpg",
];

List<String> ttitle = [
  "Jump Boost",
  "Switch",
  "IB Biology",
  "IB Physics",
];

List<String> tLinks = [
  'https://play.google.com/store/apps/details?id=com.samiraliyev.jumpboost',
  'https://play.google.com/store/apps/details?id=com.samiraliyev.switchhh',
  'https://play.google.com/store/apps/details?id=samiraliyev.ibbiology',
  'https://play.google.com/store/apps/details?id=samiraliyev.ibphysics',
];

final kShadowColor = Color(0xFFD3D3D3).withOpacity(.84);
var images = [
  "images/book5d.png",
  "images/book6d.png",
  "images/book1d.png",
  "images/book2d.png",
  "images/book8d.png",
  "images/book5d.png",
  "images/book6d.png",
  "images/book1d.png",
  "images/book2d.png",
  "images/book8d.png",
  "images/book5d.png",
];

var title = [
  "Stoichometric Relationships",
  "Atomic Structure",
  "Periodicity",
  "Chemical Bonding",
  "Energetics",
  "Chemical Kinetics",
  "Equilibrium",
  "Acids and Bases",
  "Redox Processes",
  "Organic Chemistry",
  "Data Processnig"
];
var undertitle = [
  "Chapter 1",
  "Chapter 2",
  "Chapter 3",
  "Chapter 4",
  "Chapter 5",
  "Chapter 6",
  "Chapter 7",
  "Chapter 8",
  "Chapter 9",
  "Chapter 10",
  "Chapter 11",
];
var price = ["126", "148", "179", "111", "111", "", "", "", "", "", ""];

Map<String, String> kDefintions = {
  'Avogadro’s constant': 'The number of particles in 12g of 12C. 6.022 x 10^23',
  'Atomic mass': 'The mass of a single atom',
  'Chemical reaction':
      'A reaction in which bonds in the reactants are broken and bonds in the products are formed resulting in an energy change between the reacting system and its surroundings.',
  'Compound': 'Two or more types of atoms chemically bonded together.',
  'Concentration':
      'a measure of the amount of dissolved substance contained per unit of volume',
  'Element': 'A substance that contains only one type of atom.',
  'Excess':
      'The reactant which there is more of than needed to react with all of the limiting reagent.',
  'Formula empirical':
      'The formula obtained by experiment, showing the simplest whole number ratio of atoms of each element in a particle of the substance.',
  'Formula mass': 'The mass of one formula unit of that substance',
  'Formula structural':
      'Shows the arrangement of atoms and bonds within a molecule.',
  'Ion':
      'An atom or molecules where the total number of protons is not equal to the total number of electrons.',
  'Limiting reagent':
      'The reactant which will determine the theoretical maximum amount of product formed.',
  'Molar mass': 'The mass of a mole of a substance.',
  'Mole':
      'The amount of substance that contains a number of specified species equal to Avogadro’s constant.',
  'Molecular mass': 'the mass of one molecule of that substance',
  'Solute': 'A substance that is dissolved into another ( the solvent)',
  'Solvent': 'a substance that dissolves another ( the solute)',
  'Yield percentage':
      'The experimental yield as a percentage of the maximum theoretical yield.',
  'Yield': 'The amount of product',
  'Atomic emission spectra':
      'The characteristic line spectrum that occurs as a result of energy being supplied to individual elements. When energy is supplied to an atom, e- are excited from their ground state to a higher energy level. The e- dropping from higher energy levels to lower emit energy, which can be observed in a spectrum. As e- can only exist in fixed energy levels, the energy in the emissions are characteristic for each type of atom. Lines converge toward high energy end of spectrum as the energy levels themselves are convergent.',
  'Atomic number': 'Number of protons in the nucleus.',
  'Aufbau principle':
      'The principle that states that lowest energy levels are filled first. The starting order is 1s2s2p3s3p4s3d…',
  'Hund’s rule': 'Orbitals within the same sub-shell are filled singly first.',
  'Ionization energy first':
      'The energy required to remove one mole of electrons from one mole of gaseous atoms in the ground state to produce one mole of gaseous ions. Increases across a period (due to increasing nuclear attraction), except for slight drops (due to the commencement of pairing of e- into orbitals  greater electron repulsion). Decreases down a group (due to increased number of energy levels  increased electron shielding).',
  'Isotope':
      'The same elements have different number of neutrons, similar chemical properties but different physical properties',
  'Line spectrum':
      'A part of the continuous spectrum of visible light that can be seen during the emission or absorption of certain wavelengths by electron transitions.',
  'Mass number': 'Total number of nucleons.',
  'Orbital':
      'A region of space around the nucleus of an atom that is occupied by a maximum of two e- at any given time. The types of orbitals are s (spherical), p (dumbbell-shaped), d and f.',
  'Pauli’s exclusion principle':
      'two electrons occupying a single orbital must have opposite spins.',
  'Relative abundances':
      'The percentage of natural occurrence of an isotope of an element.',
  'Relative atomic mass':
      'The weighted mean of all the naturally occurring isotopes of the element relative to 12C. No units.',
  'Spin':
      'A quantum property of electrons that can be imagined as the electron spinning on an axis.',
  'Sub-level':
      'the set of orbitals with the same energy within a main energy level. An s sub-level contains one s orbital; a p sub-level contains 3 p orbitals; a d sub-level contains five d orbitals; f contains 7 f orbitals.',
  'Valence electrons': 'The e- in the highest main energy level.',
  'Alkali metals':
      'Group 1 elements. Strength of metallic bond gets weaker as atoms get larger.',
  'Anion':
      'A – charged ion. Decrease in size across a period as they are isoelectronic but have an increased nuclear charge. Contain more e- than their parent atom, so they are larger in size.',
  'Atomic radius':
      'Half the distance between the nuclei of two bonded atoms of the same element. Decreases across period as nuclear charge increases. Increases down a group because of greater number of energy levels.',
  'Catalyst':
      'A substance that increases the rate of reaction while being recoverable in the end stage of the reaction, unchanged. Examples of catalytic transition metals: Fe is used in Haber process; V2O5 in Contact process; Ni in hydrogenation reactions; MnO2 with hydrogen peroxide.',
  'Cation':
      'A + charged ion. Decrease in size across a period. Contain less e- than their parent atom, so they are smaller in size.',
  'Chloride':
      'Chlorides of Na and Mg have an ionic structure, while all the remaining chlorides of period 3 elements have simple covalent structures. Still, Al2Cl6 can act as a poor conductor. NaCl dissolves in water to give a neutral solution, MgCl2 gives slightly acidic solution, while all other chlorides react vigorously with water to produce acidic solutions of HCl together with fumes of hydrogen chloride.',
  'Colored complex':
      'A complex is a compound in which molecules or ions form dative bonds to a metal atom or ion. Colors are due to e- transitions between different d orbitals.',
  'Co-ordination number':
      'Number of lone pairs bonded to the metal ion. Cl- often gives 4 coordinate bonds, CN- gives 6, H2O gives 6 and NH3 gives 4 or 6.',
  'D-d transition':
      'The excitation of an e- from the lower of two energy level groups to the upper. As the ligand approaches the metal, the five d orbitals split. The difference in energy between the two levels corresponds to the wavelength of visible light, as incoming light causes energy of a particular wavelength to be absorbed by e- that are excited from the lower level to the higher. The amount that the d orbitals are split will determine the exact color.',
  'Degenerate':
      'Of equal energy. In a free ion, the five d orbitals are degenerate.',
  'Electronegativity':
      'Relative measure of the attraction that an atom has for a shared pair of e- when it is covalently bonded to another atom. Inversely proportional to size of atom. F, fluorine, is the most electronegative element.',
  'Group': 'Elements with the same number of valence e-.',
  'Halide ions':
      'Ions of the halogens. Their presence can be detected by the addition of silver nitrate. AgCl is white, AgBr is cream-colored, and AgI is yellow. Silver halides react with light to form silver metal.',
  'Isoelectronic': 'Containing the same number of e-.',
  'Ligand':
      'A species which contains a non-bonding pair of electrons, able to form coordinate/dative covalent bonds',
  'Melting point':
      'Depends on both the structure of element and type of attractive forces holding the atoms together. Increases across the period while following elements which exhibit metallic bonding (due to increased strength following increased number of valence e-.) Highest m.p. of period lies with macromolecular covalent structure (with very strong bonds). Sharp decrease in m.p. with elements that exhibit simple molecular structures with only van der Waals’ forces between them. Lowest m.p. with noble gases, which are monatomic. Down Group 1, m.p. decreases as atoms get larger and strength of metallic bond get weaker. Down Group 7, van der Waals’ forces increase as molar mass increases  m.p. increases.',
  'Metalloid':
      'An element that possesses some of the properties of a metal and some of a non-metal. While metal oxides tend to be basic and non-metal oxides tend to be acidic, metalloid oxides such as aluminium oxide can be amphoteric.',
  'Oxide':
      'Metal oxides are ionic (explains conductivity, m.p. and b.p.) and react with water to form alkaline solutions. SiO2 is covalent macromolecular, and the remaining oxides are simple covalent. Oxides of period 3 elements are solid from Na2O to P4O10 and P4O6, while SO3 and Cl2O7 are liquid and SO2 and Cl2O are gases at 25C. Al2O3 and SiO2 do not react with water, but Al2O3 can act amphoterically depending on whether it is reacted with a base or an acid. Remaining oxides are acidic.',
  'Period': 'Elements with the same outer shell of valence e-.',
  'Periodicity':
      'The repeating pattern of physical and chemical properties as shown by the different periods.',
  'Structure- giant covalent':
      'Very hard but brittle. Very high m.p. and b.p. Do not conduct in any state. Insoluble.',
  'Structure- giant ionic':
      'Hard but brittle. High m.p. and b.p. Conduct when molten or aqueous, but not as solids.',
  'Structure- giant metallic':
      'Malleable, not brittle. M.p. and b.p. dependent on no. of valence e-. Good conductivity.',
  'Structure- molecular covalent':
      'Usually soft and malleable unless hydrogen bonded. Low m.p. and b.p. Do not conduct in any state. Often soluble in non-aqueous solvents, unless they can hydrogen bond to water.',
  'Transition element':
      'An element that possesses an incomplete d sub-level in one or more of its oxidation states. Often very efficient catalysts as they can exist in a variety of oxidation states (all except Ti have oxidation state of +2).',
  'Allotrope':
      'Occur when an element can exist in different crystalline forms, such as in carbon, which can exist as graphite, buckminsterfullerene (bucky ball) and diamond. Diamond is exceptionally hard because there is no plane of weakness in the molecule made up of sp3 hybridized carbon atoms. In graphite, the carbon atoms are sp2 hybridized. Remaining e- after the three σ bonds, are delocalized, resulting in the fact that graphite is an excellent lubricant and a good conductor of electricity.',
  'Bond length and strength':
      'Depends on strength of attraction that two nuclei have for the shared e-. Generally, the stronger the bond, the shorter its length.',
  'Bond polarity':
      'A polarity caused by a difference in electronegativity between the elements. The greater the difference, the greater the polarity.',
  'Bond π':
      'Pi bond. A radial bond formed by the sideways overlap of p orbitals with e- densities concentrated above and below a line drawn through the two nuclei. Double bonds have one π bond, while triple bonds have two which are perpendicular to each other.',
  'Bond σ':
      'Sigma bond. An axial bond formed by the head on/head-to-head overlap of atomic orbitals from two different atoms along the line drawn through the two nuclei, with e- densities concentrated along the line. Single, double and triple bonds have one σ bond.',
  'Covalent bond':
      'Bonding by the sharing of e-. The e- are shared and attracted by both nuclei resulting in a directional bond between the two atoms.',
  'Dative bond':
      'A bond in which both e- come from one of the atoms. Also known as coordinate bond.',
  'Ionic bond':
      'A bond by which e- are transferred from one atom to another to form ions with complete outer shells. In an ionic compound the + and – ions are attracted to each other by the electrostatic force between them, and build up into a strong lattice. Have relatively high m.p. Ionic bonds occur between elements with a great difference (>1.8) in electronegativity.',
  'Conductivity':
      'The extent to which a substance can conduct electricity. Must possess e- or ions that are free to move.',
  'Delocalization': 'The sharing of a single e- pair by more than two atoms.',
  'Forces- dipole-dipole':
      'Permanent electrostatic forces of attraction between polar molecules. Stronger than van der Waals’.',
  'Forces- Hydrogen bonding':
      'Occurs when hydrogen is bonded directly to a highly electronegative element (N, F, or O). Stronger than dipole:dipole forces.',
  'Forces- van der Waal’s':
      'Temporary dipole forces due to momentary unevenness in spread of e-. Weakest of intermolecular forces. Increase with increasing molar mass.',
  'Lewis structure':
      'Diagram showing arrangement of e- in a molecule. Usually only shows valence shells.',
  'Metallic bonding':
      'The valence e- in metals become detached from the individual atoms so that the metals consist of a closely packed lattice of + ions in a ‘sea’ of delocalized e-. Forces of attraction are between ions and e- and not between the ions themselves, which means that metals are malleable and ductile.',
  'Molecular polarity': 'Depends on both the bond polarity and the symmetry.',
  'Resonance hybrid':
      'Structures that arise from the possibility to draw a multiple bond in different positions equivalently. Can be better explained by delocalization.',
  'Solubility':
      'The extent to which one substance dissolves in another. ‘Like tends to dissolve like.',
  'VSEPR theory':
      'Valence Shell Electron Pair Repulsion theory. States that pairs of e- arrange themselves around the central atom so that they are as far apart from each other as possible. Greater repulsion between lone pair of e- than bonded pairs.',
  'Gas': 'Widely spaced particles that completely fill the container.',
  'Ideal gas': 'A gas for which the relationship pV = nRT holds true.',
  'Liquid': 'Has fixed volume and takes up shape of container.',
  'Maxwell-Boltzmann distribution':
      'Graph showing the distribution of kinetic energies among molecules.',
  'Molar volume':
      'At 273 K and 1 atm, one mole of any gas will occupy 22.4 dm3.',
  'Solid':
      'Has fixed shape and fixed volume. Particles held together by intermolecular forces in a fixed position.',
  'Bond enthalpy':
      'The average enthalpy change of breaking a bond between gaseous atoms into its constituent gaseous atoms.',
  'Born-Haber cycle':
      'Energy cycles for the formation of ionic compounds. If there is little agreement between the theoretical and experimental values, this could indicate a degree of covalent character. ΔHf = ΔHat(1) + ΔHat(2) + ΔHIE(1) + ΔHEa(2) – ΔHLatt',
  'Calorimetry':
      'A device for measuring enthalpy changes for reactions. In a simple calorimeter all the heat evolved in an exothermic reaction is used to raise the temperature of a known mass of water.',
  'Electron affinity':
      'Enthalpy change when an e- is added to an isolated atom in the gaseous state.',
  'Endothermic':
      'A reaction in which energy is absorbed. ΔH is +. Reactants more stable than products.',
  'Enthalpy':
      'The internal energy stored in the reactants. Only changes in enthalpy can be measured.',
  'Entropy':
      'A measure of the disorder of a system. The absolute entropy can be found in terms of the probability of a state existing. Things causing entropy to increase: 1) increase of number of moles of gaseous molecules; 2) change of state from solid to liquid or liquid to gas',
  'Exothermic':
      'A reaction in which energy is evolved. ΔH is –. Products more stable than reactants.',
  'Gibb’s free energy':
      'Must be – for reaction to be spontaneous. ΔG = ΔH – TΔS',
  'Heat': 'A measure of the total energy in a given amount of substance.',
  'Hess’s law':
      'Enthalpy change for a reaction depends only on difference between enthalpy of products and enthalpy of reactants  independent of pathway.',
  'Lattice enthalpy':
      'The endothermic process of converting one mole of a crystalline solid into its gaseous ions, or the reverse exothermic process. The lattice enthalpy increases with decreasing size of the ions and increasing charge.',
  'Spontaneous': 'A reaction that has a natural tendency to occur.',
  'Standard conditions': '298 K and 1 atm.',
  'Temperature': 'A measure of the average kinetic energy.',
  'Standard enthalpy of vaporisation':
      'The energy required to vaporise one mole of a liquid.',
  'Enthalpy of atomisation':
      'The energy required to produce one mole of gaseous atoms from an element in its standard state.',
  'Bond dissociation enthalpy':
      'The energy change when one mole of a specific bond is broken or created under standard conditions.',
  'Standard bond enthalpy':
      'The average energy change when one mole of covalent bonds is broken or created under standard conditions.',
  'Enthalpy of Combustion':
      'The energy released when one mole of a compound is burned in excess oxygen completely.',
  'Standard enthalpy of formation':
      'The energy change when one mole of a compound is formed from its constituent elements in their standard states under standard conditions.',
  'Standard enthalpy of solution':
      'The energy change when one mole of a substance is dissolved in an infinite amount of water under standard conditions.',
  'Standard dehydration enthalpy':
      'The energy change when a particle is taken from infinite separation in the gaseous state to its position in an aqueous lattice.',
  'Ionisation energy':
      'The energy required to remove one mole of electrons from one mole of gaseous atoms in the ground state to produce one mole of gaseous ions.',
  'Lattice Enthalpy':
      'The energy change when one mole of an ionic substance is broken into its constituent ions at infinite separation.',
  'Enthalpy of Hydration':
      'the energy change when 1 mole of gaseous ions are dissolved in water to create a solution of infinite dilution',
  'Enthalpy of Solution':
      'the energy change when 1 mole of a solid crystalline/ionic substance dissolves in water to give a solution of infinite dilution',
  'Activated complex':
      'Created during a bimolecular process. Not a chemical substance which can be isolated, but consists of reacting particles in which bonds are in the process of being broken and formed. Can break down to form either the products or back to the original reactants.',
  'Activation energy':
      'The minimum amount of energy required for a reaction to occur between two particles. The other requirement is that the particles have to have an appropriate geometry of collision.',
  'Arrhenius equation':
      'An equation showing the relationship between the temperature and the rate constant. K=Ae(-Ea/RT)',
  'Bimolecular process':
      'A reaction which occurs when two species collide and interact.',
  'Catalyst(Kinetics)':
      'Provide an alternative pathway for a reaction such that the activation energy required to reach the activation complex is lowered. Can be divided into two types: homogenous catalysts are in the same phase as the reactants, while heterogeneous ones are in a different phase. Heterogeneous catalysts tend to work by bring the reactant particles into close alignment by adsorbing them onto the catalytic surface.',
  'Concentration effect of':
      'Increasing concentration results in an increased frequency of collisions. Where the curve evens out depends on the total amount of the limiting reagent involved. If the concentration of the limiting reagent is doubled without compensation in volume for the increase in amount, then curve will stabilize at a different level.',
  'Half-life':
      'The time taken for the concentration of the reactant to fall to half of its initial value.',
  'Molecularity':
      'Number of species taking part in any specified step in the reaction.',
  'Order of reaction':
      'The rate is always proportional to the concentration of a reactant raised to a power, where the power is the order of the reaction with respect to that reactant.',
  'Rate constant':
      'The constant of proportionality in the rate expression. Unit is: (mol dm-3)1 – overall order s-1.',
  'Rate expression':
      'An equation that shows the relationship between the concentrations of the reactants and the rate of the reaction. Every species in the rate expression must occur in the rate determining step or in an equilibrium occurring before it.',
  'Rate of reaction':
      'The rate of increase of concentration/mass of one of the products or the rate of decrease of concentration/mass of one of the reactants.',
  'Rate-determining step':
      'The slowest step of a reaction. This determines the rate of the entire reaction.',
  'Surface area effect of':
      'Increasing surface area results in an increased frequency of collisions.',
  'Temperature effect of':
      'Increasing the temperature increases the frequency of collisions of the molecules, but more importantly, increases the proportion of molecules with kinetic energy greater than or equal to the activation energy.',
  'Unimolecular process':
      'A process in which a single species breaks down into two or more products.',
  'Closed system':
      'A system in which neither matter nor energy can be lost or gained. An equilibrium can never occur in a system that is not closed.',
  'Contact process':
      'The synthesis of sulphuric acid, where V2O5 is used as a catalyst.',
  'Equilibrium constant':
      'For a reaction aA + bB  cC + dD, where the small letters are coefficients and capital letters are the reactants, the equilibrium constant is [C]c[D]d/[A]a[B]b. Variable units.',
  'Equilibrium dynamic':
      'An equilibrium in which the rates of the forward and reverse reactions are the same.',
  'Haber process': 'The synthesis of ammonia, where Fe is used as a catalyst.',
  'Optimum temperature':
      'For exothermic reactions such as the Haber process, the optimum temperature is the best compromise between yield and rate.',
  'Homogeneous reaction':
      'A reaction in which all the species involved are in the same phase.',
  'Le Chatelier’s principle':
      'If an equilibrium is subjected to a stress, the equilibrium will shift to minimize the effect of the stress.',
  'Phase equilibrium':
      'When the rate of vaporization is equal to the rate of condensation.',
  'Vapor pressure':
      'The partial pressure of a vapor. Boiling occurs when a liquid’s vapor pressure equals the external pressure. The stronger the intermolecular forces the lower the vapor pressure at a particular temperature.',
  'Amphoteric':
      'Can have the properties of both a base and an acid, depending on whether it is reacting with a base or an acid.',
  'Brønsted-Lowry':
      'An acid is defined as a proton donator, while a base is a proton acceptor.',
  'Buffer':
      'A solution that resists changes in pH when small amounts of acid or alkali are added to it. ',
  'Charge density': 'Charge over size.',
  'Concentrated': 'High number of moles of solute per dm3 of solution.',
  'Conductivity(Acids and Bases)':
      'The more a solution is dissociated into its ions, the greater its conductivity.',
  'Conjugate':
      'The species remaining after an acid has lost a proton (conjugate base) or a base has gained one (conjugate acid). pKa + pKb = pKw',
  'Diprotic':
      'Where one mole of sulphuric acid produces two moles of hydrogen ions, e.g. H2SO4.',
  'End point': 'The point at which the indicator changes color most rapidly.',
  'Equimolar': 'Containing equal concentrations.',
  'Equivalence point':
      'Where the acid and base are in equimolar quantities. Exactly enough to react with each other.',
  'Indicator':
      'A weak acid or base in which the dissociated form is a different color to the undissociated form. The end point occurs when the pH is approximately equal to the pKin value, assuming that the color changes when [In-]  [HIn]. Ideally, the end point corresponds to the equivalence point in a titration.',
  'Lewis theory':
      'An acid is defined as an e- acceptor (e.g. BF3) and a base is an e- donator (e.g. NH3) by dative bond.',
  'Monoprotic':
      'Where one mole of the acid produces one mole of hydrogen ions, e.g. HCl.',
  'pH': 'Power of hydrogen. – log [H+]',
  'Salt hydrolysis': 'The process by which a salt is broken down by water.',
  'Strong':
      'An acid or a base that dissociates completely into its ions. Ka >> 1. Some strong acids: hydrochloric, sulphuric, nitric (weaker than other two). Strong bases: hydroxides of alkali metals.',
  'Titration':
      'Technique for quantitative measure of concentration of a solution. Consider when 90% of the required base has been added to a 1M strong acid that is to be neutralized. Only 10% of the acid remains, meaning 0.01M, giving a pH of 2. When 99% has been added, the pH is 3, etc.',
  'Water, ionic product of':
      'The equilibrium constant for the dissociation of water into its ions, where [H2O] is taken to be constant. Value of Kw increases as temperature is increased, as the dissociation is an endothermic process. pKw',
  'Weak':
      'An acid or base that only slightly dissociates into its ions. Ka << 1. Some weak acids: ethanoic, carbonic. ',
  'Anode':
      'Where oxidation takes place. In electrolysis, it is the + electrode and anions are attracted here.',
  'Cathode':
      'Where reduction takes place. In electrolysis, it is the – electrode and cations are attracted here.',
  'Electrolysis':
      'Passage of electric current through an electrolyte. Amount of discharge is affected by: 1) current; 2) charge on ion, 3) duration of electrolysis.',
  'Electrolyte':
      'A substance which does not conduct electricity when solid, but does when molten or in aqueous solution and is chemically decomposed in the process.',
  'Electrolytic cell':
      'Used to make non-spontaneous redox reactions occur by providing energy in the form of electricity from an eternal source.',
  'Electroplating':
      'A process of coating one metal with a thin layer of another metal, by electrolysis.',
  'Half cell': 'A metal in contact with an aqueous solution of its own ions.',
  'Oxidation number':
      'Ox. no. of: a) elements: 0; b) ion: its charge; c) oxygen: -2 (except in peroxides, -1); d) hydrogen: +1 (except metal hydrides, -1); e) fluorine: -1.',
  'Oxidation':
      'The loss of e-, the gain of oxygen, the loss of hydrogen or the increase in oxidation number.',
  'Oxidizing agent':
      'A substance that readily oxidizes other substances. Oxidizing agents are thus reduced. The higher the oxidation number, the better an oxidizing agent it is, generally.',
  'Reactivity':
      'A measure of the readiness of a substance to gain or lose e.. The stronger the reducing agent or oxidizing agent, the more reactive it is.',
  'Redox reaction':
      'A reaction in which there is a transfer of e-, i.e. reduction and oxidation occurring simultaneously.',
  'Reducing agent':
      'A substance that readily reduces other substances. Reducing agents are thus oxidized.',
  'Reduction':
      'The gain of e-, the loss of oxygen, the gain of hydrogen or the decrease in oxidation number.',
  'Salt bridge':
      'Allows the free movement of ions in a voltaic cell. Paper dipped in a saturated solution of KNO3 is an example of a salt bridge.',
  'Shorthand notation':
      'For a voltaic cell. Example: Cu(s)/Cu2+(aq) || H+(aq) / H2(g)',
  'Standard electrode potential':
      'Measuring a potential cannot be done as this interferes with the system being investigated. However, the electrode potential of one half cell can be compared against another half-cell, by convention, the hydrogen half-cell, which is arbitrarily given a value of 0 V.',
  'Standard electromotive force':
      'Difference between the two standard electrode potentials of the two half cells. Ecell',
  'Standard hydrogen electrode':
      'Arbitrarily assigned a potential of zero. Electrode consists of an inert metal such as platinum dipped into a 1 M solution of HCl, where hydrogen gas at 1 atm flows in. Platinum black, a very finely divided platinum, catalyzes the electrode equilibrium.',
  'Voltaic cell':
      'Two different half-cells connected together to enable to e- transferred during the redox reaction to produce energy in the form of electricity. The e- are produced at the half-cell that is most easily oxidized.',
  'Acidity':
      'Carboxylic acids are weak acids as the – charge on acid anion can be delocalized over three atoms and does not readily attract H+ ions. Amines are weak bases. Can be considered as substituted compounds of NH3.',
  'Alcohol primary':
      'With two hydrogen atoms on the neighboring carbon atom (next to the hydroxyl group). Can be oxidized to aldehydes (by loss of hydrogens) and then to carboxylic acids (by gain of oxygen). Ethanol can be oxidized to ethanal by the orange Cr2O72- ion, which itself becomes reduced to the green Cr3+ ion.',
  'Alcohol secondary':
      'With one hydrogen atoms on the neighboring carbon atom. Can be oxidized to ketones (by loss of hydrogens).',
  'Alcohol tertiary':
      'With no hydrogen atoms attached to the neighboring carbon atom. Cannot be oxidized further.',
  'Benzene':
      'Hexagonal shape with delocalized  bonds. Undergo substitution rather than addition reactions.',
  'Boiling and melting point':
      'Depend on intermolecular forces. The greater the intermol. forces, the higher the m.p. and b.p.',
  'Bromination':
      'Yellow/orange bromine is decolorized when added to an alkene due to addition reaction. Used to test for alkenes.',
  'Carbocation':
      'A cation in which the carbon carries most of the + charge. Can be formed during SN1 substitution.',
  'Carbon':
      'Group 4 element which always forms 4 covalent bonds, as it has 4 e- in its valence shell.',
  'Chiral center':
      'An asymmetric carbon atom, i.e. has four different functional groups attached to it.',
  'Cis-isomer':
      'The geometric isomer in which the similar groups are on the same side of the double bond. Commonly polar.',
  'Condensation reaction':
      'Reaction in which two molecules join together with the loss of a small molecule, typically water.',
  'Dehydration':
      'Loss of water. Alcohols can be dehydrated when they are refluxed with condensed sulphuric acid. As sulphuric acid is an oxidizing agent  able to react with the product, phosphoric acid is frequently used instead.',
  'Enantiomer': 'See ISOMERS, OPTICAL.',
  'Environment hydrogen':
      'The immediate neighborhood (neighboring and next carbon) of a hydrogen atom.',
  'Esterification':
      'Process by which an alcohol and a carboxylic acid are converted into an ester and water, often with acid catalysis.',
  'Fission heterolytic':
      'Bond breaking in which the more electronegative of the two atoms joined by the bond takes both of the e-.',
  'Fission homolytic':
      'Bond breaking in which each atom takes one of the e- in the bond, creating free radicals.',
  'Fragmentation pattern':
      'Excess energy from impact of e- forming ion in mass spectrometer will often cause molecule to fragment. The mass of the fragments can indicate details about structure of original molecule.',
  'Free radical':
      'A species containing at least one unpaired e-, as a result of homolytic fission. Very reactive.',
  'Functional group - alcohol': '-OH. IUPAC: -anol.',
  'Functional group - aldehyde': '-CHO. IUPAC: -anal.',
  'Functional group - alkane': 'No functional group. IUPAC: -ane.',
  'Functional group - alkene': 'C=C. IUPAC: -ene.',
  'Functional group - amide': '-CONH2. IUPAC: -anamide.',
  'Functional group - amine': '-NH2. IUPAC: amino- or –ylamine.',
  'Functional group - carboxylic acid': '-COOH. IUPAC: -anoic acid.',
  'Functional group - ester':
      '-COO-. IUPAC: alkyl acid-oate, e.g. methyl propanoate. Derived from carboxylic acid and alcohol. Often used as flavoring as they have characteristic smell.',
  'Functional group - ether': '-O-.',
  'Functional group - halogenoalkane':
      '-X (i.e. –Cl, -Br, -I). IUPAC: halogeno-.',
  'Functional group - ketone': '-CO-. IUPAC: -anone.',
  'Halogenoalkane primary':
      'Halogenoalkanes that have one alkyl group attached to the carbon atom bonded to the halogen. Undergo SN2 mechanism in nucleophilic substitution.',
  'Halogenoalkane tertiary':
      'Halogenoalkanes that have three alkyl groups attached to the carbon atom bonded to the halogen. Undergo SN1 mechanism in nucleophilic substitution.',
  'Homologous series':
      'A group of compounds that can be described by a general formula. Have similar chemical properties, but gradually changing physical properties. When all other factors remain constant, increased molar mass means increased intermolecular forces. Often, long carbon chains can negate the effect of a polar end  molecule is non-polar.',
  'Hydration':
      'Addition of water. Ethanol can be formed from addition of water to ethene.',
  'Hydrocarbon': 'Compounds containing only carbon and hydrogen.',
  'Hydrogenation':
      'Addition of hydrogen. Can be used to reduce number of double bonds in polyunsaturated vegetable oils present in margarine, causing it to become a solid at room temperature.',
  'Hydrolysis': 'Process by which a molecule is broken down by water.',
  'Isomer': 'Different compounds that have the same molecular formula.',
  'Isomers - functional group':
      'Where the isomers contain different functional groups.',
  'Isomers - hydrocarbon chain':
      'Where there is a difference in the structure of the hydrocarbon chain.',
  'Isomers - optical':
      'Where a molecule shows optical activity in its mirror images. Occurs when there is one or more chiral centers.',
  'Isomers - positional':
      'Where the position of the functional group is different.',
  'Isomers - stereo-':
      'Where the molecules have a different spatial arrangement of atoms and hence different 3D shapes. Subdivided into geometric and optical isomers (enantiomers).',
  'Isomers - structural':
      'Where the atoms have a different structural formula altogether. Subdivided into positional, hydrocarbon chain and functional group isomers.',
  'Knocking':
      'Pre-ignition, a result of a great number of free radicals. The greater the octane rating, the less likely it is that knocking occurs. Knocking can also be reduced by antiknock agents, such as lead. Unfortunately, lead is poisonous when released into atmosphere.',
  'Mechanism SN1':
      'A unimolecular process by which a halogenoalkane undergoes nucleophilic substitution. A two-step mechanism: a rate-determining step in which the bond between the carbocation and the halogen are broken, followed by a step in which the nucleophile is attracted to the carbocation. Faster than SN2, as the formation of the intermediate carbocation is faster than the SN2 route which involves a transition state with relatively high activation energy.',
  'Mechanism SN2':
      'A bimolecular process by which a halogenoalkane undergoes nucleophilic substitution. Mechanism involves formation of a transition state which involves both of the reactants.',
  'Monomer': 'Components of a polymer.',
  'Nucleophile':
      'According to Siw, “nuclear loving.” The species that donates the e- pair in an organic chemical reaction. A nucleophile is also a Lewis base. Typical nucleophiles are CN-, OH- and NH3.',
  'Nucleophilic substitution':
      'Substitution that occurs with a halogenoalkane reacting with a nucleophile. Rate depends on nature of halogen atom (the less reactive the atom  the weaker the bond with the C  it reacts more readily); nature of halogenoalkane (tertiary > secondary > primary). Octane number: Measure of the combustion efficiency of petrol engine fuel Heptane is assigned an arbitrary value of 0, while isooctane is assigned an octane number of 100.',
  'Optically active':
      'Can rotate the plane of polarization in opposite directions. Enantiomers are optically active.',
  'Organic chemistry': 'The chemistry of carbon compounds.',
  'Peptide bond':
      '-C=ONH-. Bond formed as the result of condensation reaction between carboxyl group from one aa and the amino group from the other.',
  'Peptide di-': 'Two aa’s joined together.',
  'Peptide oligo-': 'Several aa’s joined together.',
  'Peptide poly-': 'More than 20 aa’s joined together.',
  'Peptide tri-': 'Three aa’s joined together.',
  'Peptide':
      'Molecule formed by aa’s joined together by peptide bonds (by condensation reaction in which water is lost).',
  'Polarimeter':
      'An instrument for measuring the degree of rotation of the plane of polarization.',
  'Polymer': 'Gigantic molecule made up of monomers.',
  'Polymerization addition': 'Forming a polymer by addition of monomers.',
  'Polymerization condensation':
      'Forming a polymer by substitution reaction between monomers, each having two functional groups.',
  'Potassium dichromate': 'K2Cr2O7. A strong oxidizing agent.',
  'Addition Reaction':
      'A reaction in which the reactant is added across a C=C bond, converting it to a C-C bond. Addition reactions with water requires an H2SO4 catalyst. Addition reactions with hydrogen use Ni as catalyst.',
  'Substitution Reaction':
      'A reaction in which one group is substituted for another. Substitution reactions with halogenoalkanes are nucleophilic substitutions. Benzene does not undergo substitution reactions readily as its  bonds are delocalized.',
  'Reflux':
      'A condenser which causes any vapor produced to condense and returns to the flask and continues to react. If the carboxylic acid is desired from the oxidation of a primary alcohol, this must be done under reflux. On the other hand, if the aldehyde is desired, this can be distilled from the reaction mixture as soon as it is formed.',
  'Saturated': 'Containing only single bonds. Alkanes are saturated.',
  'Spectrometry mass': 'Separating ions according to mass.',
  'Spectroscopy IR':
      'Analyzing the bonds present within a molecule by sending infrared light through it, causing the bonds to absorb radiation of characteristic frequencies.',
  'Spectroscopy NMR':
      'Analysis of hydrogen environments to deduce the structure of a molecule. Measured in ppm relative to TMS.',
  'Trans-isomer':
      'The geometric isomer in which the similar groups are on different sides of the double bond. Commonly non-polar.',
  'Unsaturated':
      'Containing double bonds. Alkenes are unsaturated. Can be tested for by bromination.',
};
