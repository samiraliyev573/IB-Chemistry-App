import 'package:IB_Chemsitry_App/drawerPages/testyourselfdoneScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:core';
import 'question.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:IB_Chemsitry_App/drawerPages/testyourself.dart';

class QuizBrain {
  int bankChapter;

  QuizBrain(int bankChapter) {
    this.bankChapter = bankChapter;
    for (var i = 0; i < chap4questions.length; i++) {
      var questionn = new Question(
          chap4questions[i],
          chap4options[i][0],
          chap4options[i][1],
          chap4options[i][2],
          chap4options[i][3],
          chap4ans[i]);
      _questionBank[4].add(questionn);
    }

    for (var i = 0; i < chap5questions.length; i++) {
      var questionn = new Question(
          chap5questions[i],
          chap5options[i][0],
          chap5options[i][1],
          chap5options[i][2],
          chap5options[i][3],
          chap5ans[i]);
      _questionBank[5].add(questionn);
    }

    for (var i = 0; i < chap6questions.length; i++) {
      var questionn = new Question(
          chap6questions[i],
          chap6options[i][0],
          chap6options[i][1],
          chap6options[i][2],
          chap6options[i][3],
          chap6answ[i]);
      _questionBank[6].add(questionn);
    }

    for (var i = 0; i < chap7questions.length; i++) {
      var questionn = new Question(
          chap7questions[i],
          chap7options[i][0],
          chap7options[i][1],
          chap7options[i][2],
          chap7options[i][3],
          chap7answ[i]);
      _questionBank[7].add(questionn);
    }

    for (var i = 0; i < chap8questions.length; i++) {
      var questionn = new Question(
          chap8questions[i],
          chap8options[i][0],
          chap8options[i][1],
          chap8options[i][2],
          chap8options[i][3],
          chap8answ[i]);
      _questionBank[8].add(questionn);
    }

    for (var i = 0; i < chap9questions.length; i++) {
      var questionn = new Question(
          chap9questions[i],
          chap9options[i][0],
          chap9options[i][1],
          chap9options[i][2],
          chap9options[i][3],
          chap9answ[i]);
      _questionBank[9].add(questionn);
    }

    for (var i = 0; i < chap10questions.length; i++) {
      var questionn = new Question(
          chap10questions[i],
          chap10options[i][0],
          chap10options[i][1],
          chap10options[i][2],
          chap10options[i][3],
          chap10answ[i]);
      _questionBank[10].add(questionn);
    }

    for (var i = 0; i < chap11questions.length; i++) {
      var questionn = new Question(
          chap11questions[i],
          chap11options[i][0],
          chap11options[i][1],
          chap11options[i][2],
          chap11options[i][3],
          chap11answ[i]);
      _questionBank[11].add(questionn);
    }

    _questionBank[4].add(Question('Quiz is done', 'Press me', 'Press me',
        'Press me', 'Press me', 'Press me'));
    _questionBank[5].add(Question('Quiz is done', 'Press me', 'Press me',
        'Press me', 'Press me', 'Press me'));
    _questionBank[6].add(Question('Quiz is done', 'Press me', 'Press me',
        'Press me', 'Press me', 'Press me'));
    _questionBank[7].add(Question('Quiz is done', 'Press me', 'Press me',
        'Press me', 'Press me', 'Press me'));
    _questionBank[8].add(Question('Quiz is done', 'Press me', 'Press me',
        'Press me', 'Press me', 'Press me'));
    _questionBank[9].add(Question('Quiz is done', 'Press me', 'Press me',
        'Press me', 'Press me', 'Press me'));
    _questionBank[10].add(Question('Quiz is done', 'Press me', 'Press me',
        'Press me', 'Press me', 'Press me'));
    _questionBank[11].add(Question('Quiz is done', 'Press me', 'Press me',
        'Press me', 'Press me', 'Press me'));
  }

  int _questionNumber = 0;
  List<String> chap4questions = [
    "What is the formula for the compound formed by calcium and nitrogen?",
    "Element X is in group 2, and element Y in group 7, of the periodic table. Which ions will be present in the compound formed when X and Y react together?",
    "Based on electronegativity values, which bond is the most polar?",
    "Which substance is most soluble in water (in mol/dm^3) at 298 K?",
    "According to VSEPR theory, repulsion between electron pairs in a valence shell decreases in the order",
    "Which molecule is linear?",
    "Why is the boiling point of PH3 lower than that of NH3?",
    "Which molecule is non-polar?",
    "What happens when sodium and oxygen combine together?",
    "Which statement is correct about two elements whose atoms form a covalent bond with each other?",
    "Which substance has the lowest electrical conductivity?",
    "When the following bond types are listed in decreasing order of strength (strongest first), what is the correct order?",
    "Which statement is true for most ionic compounds?",
    "What is the valence shell electron pair repulsion (VSEPR) theory used to predict?",
    "Which fluoride is the most ionic?",
    "Which substance is most similar in shape to NH3?",
    "Which molecule has the smallest bond angle?",
    "In which substance is hydrogen bonding present?",
    "What intermolecular forces are present in gaseous hydrogen?"
  ];
  List<List<String>> chap4options = [
    ["CaN", "Ca2N", "Ca2N3", "Ca3N2"],
    ["X+ and Y-", "X2+ and Y-", "X+ and Y2-", "X2- and Y+"],
    ["BC", "CO", "NO", "OF"],
    ["CH3CH3", "CH3OCH3", "CH3CH2OH", "CH3CH2CH2CH2OH"],
    [
      "lone pair-lone pair > lone pair-bond pair > bond pair-bond pair",
      "bond pair-bond pair > lone pair-bond pair > lone pair-lone pair",
      "lone pair-lone pair > bond pair-bond pair > bond pair-lone pair",
      "bond pair-bond pair > lone pair-lone pair > lone pair-bond pair"
    ],
    ["SO2", "CO2", "H2S", "Cl2O"],
    [
      "PH3 is non-polar whereas NH3 is polar",
      "PH3 is not hydrogen bonded whereas NH3 is hydrogen bonded",
      "Van der Waals forces are weaker in PH3 than in NH3",
      "The molar mass of PH3 is greater than that of NH3"
    ],
    ["H2CO", "SO3", "NF3", "CHCl3"],
    [
      "Each sodium atom gains one electron",
      "Each sodium atom loses one electron",
      "Each oxygen atom gains one electron",
      "Each oxygen atom loses one electron"
    ],
    [
      "The elements are metals",
      "The elements are non-metals",
      "The elements have very low electronegativity values",
      "The elements have very different electronegativity values"
    ],
    ["Cu(s)", "Hg(l)", "H2(g)", "LiOH(aq)"],
    [
      "covalent > hydrogen > van der Waals",
      "covalent > van der Waals > hydrogen",
      "hydrogen > covalent > van der Waals",
      "van der Waals > hydrogen > covalent"
    ],
    [
      "They contain elements of similar electronegativity",
      "They conduct electricity in the solid state",
      "They are coloured",
      "They have high melting and boiling points"
    ],
    [
      "The energy levels in an atom",
      "The shapes of molecules and ions",
      "The electronegativities of elements",
      "The type of bonding in compounds"
    ],
    ["NaF", "CsF", "MgF2", "BaF2"],
    ["GaI3", "BF3", "FeCl3", "PBr3"],
    ["CO2", "NH3", "CH4", "C2H4"],
    ["CH4", "CH2F2", "CH3CHO", "CH3OH"],
    [
      "Hydrogen bonds",
      "Covalent bonds",
      "Dipole-dipole attractions",
      "Van der Waals forces"
    ]
  ];
  List<String> chap4ans = [
    "Ca3N2",
    "X 2+ and Y-",
    "CO",
    "CH3CH2OH",
    "lone pair-lone pair > lone pair-bond pair > bond pair-bond pair",
    "CO2",
    "PH3 is not hydrogen bonded whereas NH3 is hydrogen bonded",
    "SO3",
    "Each sodium atom loses one electron",
    "The elements are non-metals",
    "H2(g)",
    "covalent > hydrogen > van der Waals",
    "They have high melting and boiling points",
    "The shapes of molecules and ions",
    "CsF",
    "PBr3",
    "NH3",
    "CH3OH",
    "Van der Waals forces"
  ];

  List<String> chap5questions = [
    "What energy changes occur when chemical bonds are formed and broken?",
    "The temperature of a 2.0 g sample of aluminium increases from 25°C to 30°C. How many joules of heat energy were added? ",
    "For which of the following is the sign of the enthalpy change different from the other three?",
    "Separate solutions of HCl(aq) and H2SO4(aq) of the same concentration and same volume were completely neutralized by NaOH(aq). X kJ and Y kJ of heat were evolved respectively. Which statement is correct?",
    "The mass m (in g) of a substance of specific heat capacity c (in 1J/1K) increases by t°C. What is the heat change in J?",
    "The average bond enthalpy for the CH bond is 412 kJ /mol. Which process has an enthalpy change closest to this value?",
    "A simple calorimeter was used to determine the enthalpy of combustion of ethanol. The experimental value obtained was 920 kJ/ mol. Which of the following best explains the difference between the two values?",
    "Which statement about bond enthalpies is correct?",
    "Which statement is correct for an endothermic reaction?",
    "Which statement is correct for an endothermic reaction?",
    "How much energy, in joules, is required to increase the temperature of 2.0 g of aluminium from 25 to 30°C? (Specific heat of Al = 0.90 J /1K)",
    "Which combination is correct for a chemical reaction that absorbs heat from the surroundings?",
  ];
  List<List<String>> chap5options = [
    [
      "Energy is absorbed when bonds are formed and when they are broken",
      "Energy is released when bonds are formed and when they are broken",
      "Energy is absorbed when bonds are formed and released when they are broken",
      "Energy is released when bonds are formed and absorbed when they are broken"
    ],
    ["0.36", "2.3", "9.0", "11"],
    [
      "CaCO3(s) -> CaO(s) + CO2(g)",
      "Na(g) -> Na+(g) + e-",
      "CO2(s) -> CO2(g)",
      "2Cl(g) -> Cl2(g)"
    ],
    ["X = Y", "X = 2Y", "Y = 2X", "Y = 3X"],
    ["mct", "mc(t + 273)", "mct/1000", "mc(t+273)/1000"],
    [
      "CH4(g) -> C(s) + 2H2(g)",
      "CH4(g) -> C(g) + 2H2(g)",
      "CH4(g) -> C(s) + 4H(g)",
      "CH4(g) -> CH3(g) + H(g)"
    ],
    [
      "incomplete combustion of the fuel",
      "heat loss to the surroundings",
      "poor ventilation in the laboratory",
      "inaccurate temperature measurements"
    ],
    [
      "Bond enthalpies have positive values for strong bonds and negative values for weak bonds",
      "Bond enthalpy values are greater for ionic bonds than for covalent bonds",
      "Bond breaking is endothermic and bond making is exothermic",
      "The carbon-carbon bond enthalpy values are the same in ethane and ethene"
    ],
    [
      "The products are more stable than the reactants and (delta)H is positive",
      "The products are less stable than the reactants and (delta)H is negative",
      "The products are less stable than the reactants and (delta)H is negative",
      "The reactants are less stable than the products and (delta)H is negative."
    ],
    [
      "Bonds in the products are stronger than the bonds in the reactants",
      "Bonds in the reactants are stronger than the bonds in the products",
      "The enthalpy of the products is less than that of the reactants",
      "The reaction is spontaneous at low temperatures but becomes non-spontaneous at high temperatures"
    ],
    ["0.36", "4.5", "9.0", "54"],
    [
      "Type of reaction Exothermic, H is positive",
      "Type of reaction Exothermic H is Negative",
      "Type of reaction Endothermic, H is positive",
      "Type of reaction is Endothermic H is negative"
    ]
  ];
  List<String> chap5ans = [
    "Energy is released when bonds are formed and absorbed when they are broken",
    "9.0",
    "2Cl(g) -> Cl2(g)",
    "Y = 2X",
    "mct",
    "CH4(g) -> CH3(g) + H(g)",
    "heat loss to the surroundings",
    "Bond breaking is endothermic and bond making is exothermic",
    "The products are less stable than the reactants and (delta)H is negative",
    "Bonds in the reactants are stronger than the bonds in the products",
    "9.0",
    "Type of reaction Endothermic, H is positive",
  ];

  List<String> chap6questions = [
    "Which is the best definition of the rate of reaction?",
    "What is the function of iron in the haber process?",
    "Doubling which one of the following will double the rate of a first order reaction?",
    "Which statement is correct with regard to the catalysed and uncatalysed pathways for a given reaction?",
    "In general, the rate of a reaction can be increased by all of the following except",
    "Which change of condition will decrease the rate of the reaction between excess zinc granules and dilute hydrochloric acid?",
    "Which statement is correct for a collision between reactant particles leading to a reaction?",
    "Based on the definition for rate of reaction, which units are used for a rate?",
    "Under which conditions will the reaction between 1.0g of calcium carbonate and excess hydrochloric acid be the fastest? Assume that all reactions are carries out at the same temperature",
    "Which one of them will increase the rate of reaction?"
  ];
  List<List<String>> chap6options = [
    [
      "Time it takes to use up all the reactants",
      "The rate at which all the reactants are used up",
      "The time it takes for",
      "The time it takes for one of the reactants to be used up",
      "The increase in concentration of a product per unit time"
    ],
    [
      "It shifts equilibrium towards products",
      "It decreases the rate of reaction",
      "It provides an alternative reasction pathway with a lower activation energy",
      "It reduces the enthalpy change of the reaction"
    ],
    [
      "Concentration of the reactants",
      "Size of solid particles",
      "Volume of the solution in which the reaction is carried out",
      "Activation energy"
    ],
    [
      "The enthalpy change of the catalysed reaction is less than the enthalpy change for the uncatalysed reaction.",
      "The enthalpy change of the catalysed reaction is greater than the enthalpy change for the uncatalysed reaction.",
      "The enthalpy change of the catalysed reaction is equal to the enthalpy change for the uncatalysed reaction.",
      "The activation energy of the catalysed reaction is greater than the activation energy for the uncatalysed reaction."
    ],
    [
      "increasing the temperature",
      "increasing the activation energy",
      "increasing the concentration of reactants",
      "increasing the surface area of the reactants"
    ],
    [
      "increasing the amount of zinc",
      "increasing the concentration of the acid",
      "pulverize the zinc granules into powder",
      "decreasing the temperature"
    ],
    [
      "Colliding particles must have different energy",
      "All reactant particles must have the same energy",
      "Colliding particles must have a kinetic energy higher than the activation energy",
      "Colliding particles must have the same velocity."
    ],
    ["mol/dm^3 ", "mol/time", "dm/time", "mol /dm^3 "],
    [
      "One large piece of Calcium Carbonate and 2 mol/dm-3 hydrochloric acid",
      "One large piece of Calcium Carbonate and 1 mol/dm-3 hydrochloric acid",
      "Powered Calcium Carbonate and 2 mol/dm-3 hydrochloric acid",
      "Powered Calcium Carbonate and 1 mol/dm-3 hydrochloric acid"
    ],
    [
      "Increasing temperature and adding catalyst",
      "Increasing temperature and increasing the concentration of reactants",
      "Adding catalys and Increasing the concentration of reactants",
      "Increasing the temperature, Adding a catalys and Increasing the concentrtion of reactants"
    ]
  ];
  List<String> chap6answ = [
    "The increase in concentration of a product per unit time",
    "It provides an alternative reasction pathway with a lower activation energy",
    "Concentration of the reactants",
    "The enthalpy change of the catalysed reaction is equal to the enthalpy change for the uncatalysed reaction.",
    "increasing the activation energy",
    "decreasing the temperature",
    "Colliding particles must have a kinetic energy higher than the activation energy",
    "mol /dm^3 ",
    "Powered Calcium Carbonate and 2 mol/dm-3 hydrochloric acid",
    "Increasing the temperature, Adding a catalys and Increasing the concentrtion of reactants"
  ];

  List<String> chap7questions = [
    "Which statement concerning a chemical reaction at equilibrium is not correct?",
    "Which statement is always true for a chemical reaction that has reached equilibrium?",
    "Iron(III) ions react with thiocyanate ions as follows.Fe3+(aq) + CNS-(aq) =  Fe(CNS)2+(aq) What are the units of the equilibrium constant, Kc, for the reaction?",
    "Consider the following equilibrium reaction in a closed container at 350°C.SO2(g) + Cl2(g) = SO2Cl2(g) = ­85 kJ. Which statement is correct?",
    "Consider the following equilibrium reaction in a closed container at 350°CSO2(g) + Cl2(g) = SO2Cl2(g) = 85 kJ. Which statement is correct?",
    "Sulfur dioxide and oxygen react to form sulfur trioxide according to the equilibrium. 2SO2(g) + O2(g)   2SO3(g). How is the amount of SO2 and the value of the equilibrium constant for the reaction affected by an increase in pressure?",
    "The equation for the Haber process is: N2(g) + 3H2(g)   2NH3(g) = ­92.2 kJ .Which conditions will favour the production of the greatest amount of ammonia at equilibrium?",
    "Which statement is true about chemical reactions at equilibrium?",
    "Chemical equilibrium is referred as dinamic because...",
    "For reaction which goes completion, the equilibrium constant  Kc is...",
    "Ethanol is manufactured from ethene using the reaction below: C2H4(g)+H2O(g) = C2H5OH(g)   H is -46Kj. Which conditions will favour the highest yield of ethanol?"
  ];
  List<List<String>> chap7options = [
    [
      "The concentrations of reactants and products remain constant",
      "Equilibrium can be approached from both directions",
      "The rate of the forward reaction equals the rate of the reverse reaction",
      "All reaction stops"
    ],
    [
      "The yield of product(s) is greater than 50%",
      "The rate of the forward reaction is greater than the rate of the reverse reaction",
      "The amounts of reactants and products do not change",
      "Both forward and reverse reactions have stopped"
    ],
    ["mol dm-3", "mol2 dm-6", "mol-1 dm3", "mol-2 dm6"],
    [
      "Decreasing the temperature will increase the amount of SO2Cl2(g).",
      "Increasing the volume of the container will increase the amount of SO2Cl2(g).",
      "Increasing the temperature will increase the amount of SO2Cl2(g).",
      "Adding a catalyst will increase the amount of SO2Cl2(g)"
    ],
    [
      "Decreasing the temperature will increase the amount of SO2Cl2(g).",
      "Increasing the volume of the container will increase the amount of SO2Cl2(g).",
      "Increasing the temperature will increase the amount of SO2Cl2(g).",
      "Adding a catalyst will increase the amount of SO2Cl2(g)"
    ],
    [
      "The amount of SO3 and the value of the equilibrium constant both increase",
      "The amount of SO3 and the value of the equilibrium constant both decrease",
      "The amount of SO3 increases but the value of the equilibrium constant decreases",
      "The amount of SO3 increases but the value of the equilibrium constant does not change"
    ],
    [
      "High temperature and high pressure",
      "High temperature and low pressure",
      "Low temperature and high pressure",
      "Low temperature and low pressure"
    ],
    [
      "The forward and backward reactions are at equal rate",
      "The forward and backward reactions are stopped",
      "Concentrations of the reactions and products are equal",
      "The backward reaction is endothermic"
    ],
    [
      "Equilibrium constant changes",
      "Reactants and products keep reacting",
      "Rates of forward and backward reactions chage",
      "Concentrations of the  reactants and products continue to change"
    ],
    [">>1", "<<1", "=1", "=0"],
    [
      "High Pressure and Low temperature",
      "High temperture and high pressure",
      "Low pressure and low temperature",
      "Low pressure and high Temperature"
    ]
  ];
  List<String> chap7answ = [
    "All reaction stops",
    "The amounts of reactants and products do not change",
    "mol-1 dm3",
    "Decreasing the temperature will increase the amount of SO2Cl2(g).",
    "Decreasing the temperature will increase the amount of SO2Cl2(g).",
    "The amount of SO3 increases but the value of the equilibrium constant does not change",
    "Low temperature and high pressure",
    "The forward and backward reactions are at equal rate",
    "Reactants and products keep reacting",
    ">>1",
    "High Pressure and Low temperature"
  ];

  List<String> chap8questions = [
    "An aqueous solution of which of the following reacts with magnesium metal?",
    "Which substance can be dissolved in water to give a 0.1 mol dm-3 solution with a high pH and a high electrical conductivity?",
    "The pH of a solution is 2. If its pH is increased to 6, how many times greater is the [H+] of the original solution?",
    "The pH of solution X is 1 and that of Y is 2. Which statement is correct about the hydrogen ion concentrations in the two solutions?",
    "Lime was added to a sample of soil and the pH changed from 4 to 6. What was the corresponding change in the hydrogen ion concentration?",
    "Which change in [H+] causes the biggest increase in pH? ",
    "Which is not a strong acid?",
    "Lime is added to a lake to neutralize the effects of acid rain. The pH value of the lake water rises from 4 to 7. What is the change in concentration of H+ ions in the lake water?",
    "Which is a Bronsted-Lowry acid-base pair?",
    "The pH of a solution changes from pH = 1 to pH = 3. What happens to the [H+] during this pH change?",
    "What is the conjugate base of the HSO4-(aq) ion?",
    "Which species can act as a Lewis acid?",
    "Which substance, when dissolved in water, to give a 0.1 mol dm-3 solution, has the highest pH?",
    "Solutions of hydrochloric acid (HCl(aq)) and ethanoic acid (CH3COOH(aq)) of the same concentration reacted completely with 5.0 g of calcium carbonate in separate containers. Which statement is correct?"
  ];
  List<List<String>> chap8options = [
    [
      "Ammonia",
      "Hydrogen chloride",
      "Potassium hydroxide",
      "Sodium hydrogencarbonate"
    ],
    ["HCl", "NaCl", "NH3", "NaOH"],
    ["3", "4", "1000", "10000"],
    [
      "[H+] in X is half that in Y",
      "[H+] in X is twice that in Y",
      "[H+] in X is one tenth of that in Y",
      "[H+] in X is ten times that in Y"
    ],
    [
      "increased by a factor of 2",
      "increased by a factor of 100",
      "decreased by a factor of 2",
      "decreased by a factor of 100"
    ],
    [
      "A change in [H+(aq)] from 1*10-3 to 1*10-2 mol dm-3 ",
      "A change in [H+(aq)] from 1*10-3 to 1*10-4 mol dm-3",
      "A change in [H+(aq)] from 1*10-4 to 1*10-2 mol dm-3",
      "A change in [H+(aq)] from 1*10-4 to 1*10-6 mol dm-3"
    ],
    ["Nitric acid", "Sulfuric acid", "Carbonic acid", "Hydrochloric acid"],
    [
      "An increase by a factor of 3",
      "An increase by a factor of 1000",
      "A decrease by a factor of 3",
      "A decrease by a factor of 1000"
    ],
    ["H2O and O2-", "CH3COOH and CH3COO-", "NH4+ and NH2-", "H2SO4 and SO42-"],
    [
      "It increases by a factor of 100",
      "It decreases by a factor of 100",
      "It increases by a factor of 1000",
      "It decreases by a factor of 1000"
    ],
    ["H2SO4(aq)", "SO42-(aq)", "H2O(l)", "H3O+(aq)"],
    ["BF3", "OH-", "H2O", "NH3"],
    ["HCl", "NaCl", "NH3", "NaOH"],
    [
      "CH3COOH(aq) reacted slower because it has a lower pH than HCl(aq)",
      "A smaller volume of CO2(g) was produced with CH3COOH(aq) than with HCl(aq)",
      "A greater volume of CO2(g) was produced with CH3COOH(aq) than with HCl(aq)",
      "The same volume of CO2(g) was produced with both CH3COOH(aq) and HCl(aq)"
    ]
  ];
  List<String> chap8answ = [
    "Hydrogen chloride",
    "NaOH",
    "10000",
    "[H+] in X is ten times that in Y",
    "decreased by a factor of 100",
    "A change in [H+(aq)] from 1*10-4 to 1*10-6 mol dm-3",
    "Carbonic acid",
    "A decrease by a factor of 1000",
    "CH3COOH and CH3COO-",
    "It decreases by a factor of 100",
    "SO42-(aq)",
    "BF3",
    "NaOH",
    "The same volume of CO2(g) was produced with both CH3COOH(aq) and HCl(aq)"
  ];

  List<String> chap9questions = [
    "The oxidation number of chromium is the same in all of the following compounds except..",
    "Magnesium is more reactive metal than copper. Which is the Strongest oxidising agend?",
    "What happens to the Cr3+ ion when it is converted to CrO4 (2-)?",
    "What occurs during the electrolysis of a molten salt?",
    "Which statement is correct about an oxidizing agent in a chemical reaction?",
    "In which change does nitrogen undergo oxidation?",
    "Which statement is correct for the electrolysis of a molten salt?",
    "A voltaic cell is made from magnesium and iron half-cells. Magnesium is a more reactive metal than iron. Which statement is correct when the cell produces electricity?",
    "What happens when molten sodium chloride is electrolysed in an electrolytic cell?",
    "Which statement is correct?",
    "What happens at the positive electrode in a voltaic cell and in an electrolytic cell?",
    "Which equation represents a redox reaction?",
    "Which statement about the following reaction is correct? 2Br-(aq) + Cl2(aq) -> Br2(aq) + 2Cl-(aq)",
  ];
  List<List<String>> chap9options = [
    ["Cr(OH)3", "Cr2(SO4)3", "Cr2O3", "CrO3"],
    ["Mg", "Mg2+", "Cu", "Cu2+"],
    [
      "Its oxidation number decreases and it undergoes reduction",
      "Its oxidation number decreases and it undergoes oxidation",
      "Its oxidation number increases and it undergoes reduction",
      "Its oxidation number increases and it undergoes oxidation"
    ],
    [
      "Electricity is produced by a spontaneous redox reaction",
      "Electricity is used to cause a non-spontaneous redox reaction to occur",
      "Electrons flow through the molten salt",
      "Electrons are removed from both ions of the molten salt"
    ],
    [
      "It reacts with oxygen",
      "It reacts with H+ ions",
      "It loses electrons",
      "It undergoes reduction"
    ],
    ["NO2 -> N2O4", "NO3- -> NO2", "N2O5-> NO3-", "NH3 -> N2"],
    [
      "Positive ions move toward the positive electrode",
      "A gas is produced at the negative electrode",
      "Only electrons move in the electrolyte",
      "Both positive and negative ions move toward electrodes"
    ],
    [
      "Electrons are lost from magnesium atoms",
      "The concentration of Fe2+ ions increases",
      "Electrons flow from the iron half-cell to the magnesium half-cell",
      "Negative ions flow through the salt bridge from the magnesium half-cell to the iron half-cell"
    ],
    [
      "Chlorine is produced at the positive electrode",
      "Sodium ions lose electrons at the negative electrode",
      "Electrons flow through the liquid from the negative electrode to the positive electrode",
      "Oxidation occurs at the negative electrode and reduction at the positive electrode"
    ],
    [
      "Oxidation involves loss of electrons and a decrease in oxidation state",
      "Oxidation involves gain of electrons and an increase in oxidation state",
      "Reduction involves loss of electrons and an increase in oxidation state",
      "Reduction involves gain of electrons and a decrease in oxidation state"
    ],
    [
      "Voltaic cell: Reduction Electrolytic cell: Oxidation",
      "Voltaic cell: Oxidation Electrolytic cell:Reduction",
      "Voltaic cell:Oxidation  Electrolytic cell:Oxidation",
      "Voltaic cell:Reduction  Electrolytic cell:Reduction"
    ],
    [
      "KOH(aq) + HCl(aq) -> KCl(aq) + H2O(l)",
      "Mg(s) + 2HCl(aq) -> MgCl2(aq) + H2(g)",
      "CuO(s) + 2HCl(aq) -> CuCl2(aq) + H2O(l)",
      "ZnCO3(s) + 2HCl(aq) -> ZnCl2(aq) + CO2(g) + H2O(l)"
    ],
    [
      "Br-(aq) is reduced and gains electrons",
      "Cl2(aq) is reduced and loses electrons",
      "Br-(aq) is oxidized and loses electrons",
      "Cl2(aq) is oxidized and gains electrons"
    ]
  ];
  List<String> chap9answ = [
    "CrO3",
    "Cu2+",
    "Its oxidation number increases and it undergoes oxidation",
    "Electricity is used to cause a non-spontaneous redox reaction to occur",
    "It undergoes reduction",
    "NH3 -> N2",
    "Both positive and negative ions move toward electrodes",
    "Electrons are lost from magnesium atoms",
    "Chlorine is produced at the positive electrode",
    "Reduction involves gain of electrons and a decrease in oxidation state",
    "Voltaic cell: Oxidation Electrolytic cell:Reduction",
    "Mg(s) + 2HCl(aq) -> MgCl2(aq) + H2(g)",
    "Br-(aq) is oxidized and loses electrons",
  ];

  List<String> chap10questions = [
    "What product results from the reaction of CH2==CH2 with Br2?",
    "What is the final product formed when CH3CH2OH is refluxed with acidified potassium dichromate(VI)?",
    "Which statement about neighbouring members of all homologous series is correct?",
    "What is the IUPAC name for CH3CH2CH(CH3)2?",
    "Which compound has the lowest boiling point?",
    "Which compound is a member of the same homologous series as 1-chloropropane?",
    "Which formula is a correct representation of pentane?",
    "How many structural isomers are possible with the molecular formula C6 H14?",
    "Which compound is a member of the aldehyde homologous series?",
    "Which type of compound can be made in one step from a secondary alcohol?",
    "Which reaction type is typical for halogenoalkanes?",
    "substance is not readily oxidized by acidified potassium dichromate(VI) solution?",
    "What is/are the product(s) of the reaction between ethene and hydrogen bromide?",
    "What is the reaction type when (CH3)3CBr reacts with aqueous sodium hydroxide to form (CH3)3COH and NaBr?",
    "Which species is a free radical?",
    "Which species reacts most readily with propane?",
    "Which statement about successive members of all homologous series is correct?",
    "Which compound forms when hydrogen bromide is added to but-2-ene?"
  ];
  List<List<String>> chap10options = [
    ["CHBrCHBr", "CH2CHBr", "CH3CH2Br", "CH2BrCH2Br"],
    ["CH3CHO", "CH2==CH2", "CH3COOH", "HCOOCH3"],
    [
      "They have the same empirical formula",
      "They differ by a CH2 group",
      "They possess different functional groups",
      "They differ in their degree of unsaturation"
    ],
    [
      "1,1-dimethylpropane",
      "2-methylbutane",
      "isopentane",
      "ethyldimethylmethane"
    ],
    ["CH3CH2CH(CH3)CH3", "(CH3)4C", "CH3CH2CH2CH2CH3", "CH3CH2OCH2CH3"],
    [
      "1-chloropropene",
      "1-chlorobutane",
      "1-bromopropane",
      "1,1-dichloropropane"
    ],
    ["CH3CH2CHCH2CH3", "(CH3CH2)2CH3", "CH3(CH2)3CH3", "CH3(CH3)3CH3"],
    ["4", "5", "6", "7"],
    ["CH3COCH3", "CH3CH2CH2OH", "CH3CH2COOH", "CH3CH2CHO"],
    ["an aldehyde", "an alkane", "a carboxylic acid", "a ketone"],
    [
      "nucleophilic substitution",
      "electrophilic substitution",
      "electrophilic addition",
      "nucleophilic addition"
    ],
    ["propan-1-ol", "propan-2-ol", "propanal", "propanone"],
    ["CH3CH2Br", "CH3CH2Br and H2", "CH2BrCH2Br", "CH3BrCH2 Br and H2"],
    ["Addition", "Elimination", "SN1", "SN2"],
    ["•CH3", "+CH3", "-CH3", ":CH3"],
    ["Br2", "Br•", "Br-", "Br+"],
    [
      "They have the same empirical formula",
      "They differ by a CH2 group",
      "They have the same physical properties",
      "They differ in their degree of unsaturation"
    ],
    ["2-bromobutane", "2,3-dibromobutane", "1-bromobutane", "1,2-dibromobutane"]
  ];
  List<String> chap10answ = [
    "CH2BrCH2Br",
    "CH3COOH",
    "They differ by a CH2 group",
    "2-methylbutane",
    "(CH3)4C",
    "1-chlorobutane",
    "CH3(CH2)3CH3",
    "5",
    "CH3CH2CHO",
    "a ketone",
    "nucleophilic substitution",
    "propanone",
    "CH3CH2Br",
    "SN1",
    "•CH3",
    "Br•",
    "They differ by a CH2 group",
    "2-bromobutane"
  ];

  List<String> chap11questions = ["Coming Soon"];
  List<List<String>> chap11options = [
    ["Coming Soon", "Coming Soon", "Coming Soon", "Coming Soon"]
  ];
  List<String> chap11answ = ["Coming Soon"];

  /* renamed from: n */
  //private String[][] f8254n =

  Map<int, List<Question>> _questionBank = {
    1: [
      Question(
          'Which compound has the empirical formula with the greatest mass?',
          'C2H6',
          'C4H10',
          'C5H10',
          'C6H6',
          'C4H10'),
      Question(
          'What amount of oxygen, O2, (in moles) contains 1.8×1022 molecules?',
          '0.0030',
          '0.030',
          '0.30',
          '3.0',
          '0.030'),
      Question(
          'What will happen to the volume of a fixed mass of gas when its pressure and temperature (in Kelvin) are both doubled?',
          'It will not change.',
          'It will increase',
          'It will decrease',
          'The change cannot be predicted.',
          'It will not change.'),
      Question(
          'What amount (in moles) is present in 2.0 g of sodium hydroxide, NaOH?',
          '0.050',
          '0.10',
          '20',
          '80',
          '0.050'),
      Question(
          'A hydrocarbon contains 90% by mass of carbon. What is its empirical formula?',
          'CH2',
          'C3H4',
          'C7H10',
          'C9H10',
          'C3H4'),
      Question(
          'Which change in conditions would increase the volume of a fixed mass of gas?',
          'Pres: Doubled, Temp: Doubled',
          'Pres: Halved, Temp: Halved',
          'Pres: Doubled, Temp: Halved',
          'Pres: Halved, Temp: Doubled',
          'Pres: Halved, Temp: Doubled'),
      Question(
          'How many hydrogen atoms are contained in one mole of ethanol, C2H5OH?',
          '5',
          '6',
          '1.0×10^23',
          '3.6×10^24',
          '3.6×10^24'),
      Question(
          'The percentage by mass of the elements in a compound is C = 72%,    H = 12%,    O = 16%. What is the mole ratio of C:H in the empirical formula of this compound?',
          '1 : 1',
          '1 : 2',
          '1 : 6',
          '6 : 1',
          '1 : 2'),
      Question(
          "What will happen to the volume of a fixed mass of gas when its pressure and temperature (in Kelvin) are both doubled?",
          "It will not change",
          "It will increase",
          "It will decrease",
          "The change cannot be predicted",
          "It will not change"),
      Question(
          "What amount of NaCl (in moles) is required to prepare 250 cm3 of a 0.200 mol/dm^3 solution?",
          "50",
          "1.25",
          "0.8",
          "0.05",
          "0.05"),
      Question(
          "Which of the following quantities has units?",
          "Relative atomic mass",
          "Relative molecular mass",
          "Molar mass",
          "Mass number",
          "Molar mass"),
      Question(
          "Under what conditions would one mole of methane gas, CH4, occupy the smallest volume?",
          "273 K and 1.01*10^5 Pa",
          "273 K and 2.02*10^5 Pa",
          "546 K and 1.01*10^5 Pa",
          "546 K and 2.02*10^5 Pa",
          "273 K and 2.02*10^5 Pa"),
      Question(
          "Which sample has the least number of atoms?",
          "1 mol of H2SO4",
          "1 mol of CH3COOH",
          "2 mol of H2O2",
          "2 mol of NH3",
          "1 mol of H2SO4"),
      Question(
          "Which of the following contains the greatest number of molecules?",
          "1 g of CH3Cl",
          "1 g of CH2Cl2",
          "1 g of CHCl3",
          "1 g of CCl4",
          "1 g of CH3Cl"),
      Question(
          "The temperature in Kelvin of 2.0 dm^3 of an ideal gas is doubled and its pressure is increased by a factor of four. What is the final volume of the gas?",
          "1.0 dm^3",
          "2.0 dm^3",
          "3.0 dm^3",
          "4.0 dm^3",
          "1.0 dm^3"),
      Question(
          "For which set of conditions does a fixed mass of an ideal gas have the greatest volume?",
          "Low Pressure Low Temperature",
          "Low Temperature High Pressure",
          "High Temperature Low Pressure",
          "High Temperature Low Pressure",
          "High Temperature Low Pressure"),
      Question(
          "What amount of oxygen, O2, (in moles) contains 1.8*10^22 molecules?",
          "0.0030",
          "0.030",
          "0.30",
          "3.0",
          "0.030"),
      Question(
          "Avogadro's constant has the same value as the number of",
          "molecules in 1 mol of solid iodine",
          "atoms in 1 mol of chlorine gas",
          "ions in 1 mol of solid potassium bromide",
          "protons in 1 mol of helium gas",
          "molecules in 1 mol of solid iodine"),
      Question(
          "A cylinder of gas is at a pressure of 40 kPa. The volume and temperature (in K) are both doubled. What is the pressure of the gas after these changes?",
          "10 kPa",
          "20 kPa",
          "40 kPa",
          "80 kPa",
          "40 kPa"),
      Question(
          "The temperature in Kelvin of 1.0 dm^3 of an ideal gas is doubled and its pressure is tripled. What is the final volume of the gas in dm^3?",
          "1/3",
          "2/3",
          "3/2",
          "1/6",
          "2/3"),
      Question(
          "Which expression gives the amount (in mol) of a substance, if the mass is given in grams?",
          "mass/molar mass",
          "molar mass/mass",
          "1/molar mass",
          "mass*molar mass",
          "mass/molar mass"),
      Question(
          "Methane, CH4, burns in oxygen gas to form carbon dioxide and water. How many moles of carbon dioxide will be formed from 8.0 g of methane?",
          "0.25",
          "0.50",
          "1.0",
          "2.0",
          "0.50"),
      Question(
          "What is the total number of ions present in the formula, Al2(SO4)3?",
          "2",
          "3",
          "5",
          "6",
          "5"),
      Question(
          "Which solution contains 0.1 mol of sodium hydroxide?",
          "1 cm^3 of 0.1 mol/dm^3 NaOH",
          "10 cm^3 of 0.1 mol/dm^3 NaOH",
          "100 cm^3 of 1.0 mol/dm^3 NaOH",
          "1000 cm^3 of 1.0 mol/dm^3 NaOH",
          "100 cm^3 of 1.0 mol/dm^3 NaOH"),
      Question('Quiz is done', 'Press me', 'Press me', 'Press me', 'Press me',
          'Press me')
    ],
    2: [
      Question("Which species has 54 electrons and 52 protons?", "Te 2-",
          "Xe 2+", "Xe 2-", "Te 2+", "Te 2-"),
      Question(
          "Energy levels for an electron in a hydrogen atom are:",
          "evenly spaced",
          "farther apart near the nucleus",
          "closer together near the nucleus",
          "arranged randomly",
          "farther apart near the nucleus"),
      Question(
          "How do bond length and bond strength change as the number of bonds between two atoms increases?",
          "Bond Length Increase, Bond Strength decrease",
          "Bond Length Increase, Bond Strength decrease",
          "Bond length Decrease, Bond Strength Increase",
          "Bond Length Deacrease, Bond Strength Decrease",
          "Bond Length Increase, Bond Strength decrease"),
      Question(
          "Which statement is correct for the emission spectrum of the hydrogen atom?",
          "The lines converge at lower energies",
          "The lines are produced when electrons move from lower to higher energy levels",
          "The lines in the visible region involve electron transitions into the energy level closest to the nucleus",
          "The line corresponding to the greatest emission of energy is in the ultraviolet region",
          "The line corresponding to the greatest emission of energy is in the ultraviolet region"),
      Question(
          "Which is the correct description of polarity in F2 and HF molecules?",
          "Both molecules contain a polar bond",
          "Neither molecule contains a polar bond",
          "Both molecules are polar",
          "Only one of the molecules is polar",
          "Only one of the molecules is polar"),
      Question(
          "Which types of bonding are present in CH3CHO in the liquid state?",
          "Single and Double Covalent Bonding",
          "Sinle Covalent and Hydrogen binding",
          "Double Covalent and Hydrogen Bonding",
          "Single, Double Covalend and Hydrogen Bonding",
          "Single and Double Covalent Bonding"),
      Question(
          "How many valence electrons are present in an atom of an element with atomic number 16?",
          "2",
          "4",
          "6",
          "8",
          "6"),
      Question(
          "How many electrons are there in one  Mg+2 ion(Mg atomic number=12)?",
          "10",
          "12",
          "14",
          "22",
          "10"),
      Question(
          "The electron arrangement of sodium is 2.8.1. How many occupied main electron energy levels are there in an atom of sodium?",
          "1",
          "3",
          "10",
          "11",
          "3"),
      Question(
          "Which statement is correct about a line emission spectrum?",
          "Electrons absorb energy as they move from low to high energy levels",
          "Electrons absorb energy as they move from high to low energy levels",
          "Electrons release energy as they move from low to high energy levels",
          "Electrons release energy as they move from high to low energy levels",
          "Electrons release energy as they move from high to low energy levels"),
      Question("What is the electron arrangement of silicon?", "2.4", "2.8",
          "2.8.4", "2.8.8", "2.8.4"),
      Question(
          "Which statement is correct about the isotopes of an element?",
          "They have the same mass number",
          "They have the same electron arrangement",
          "They have more protons than neutrons",
          "They have the same numbers of protons and neutrons",
          "They have the same electron arrangement"),
      Question("What is the electron arrangement of an Al3+ ion?", "2.8", "2.3",
          "2.8.3", "2.8.8", "2.8"),
      Question(
          "What will happen to the volume of a fixed mass of gas if the pressure and the Kelvin temperature are both doubled?",
          "It will remain the same",
          "It will be double its initial volume",
          "It will be one-half its initial volume",
          "It will be four times its initial volume",
          "It will remain the same"),
      Question(
          "What is the correct sequence for the processes occurring in a mass spectrometer?",
          "vaporization, ionization, acceleration, deflection",
          "vaporization, acceleration, ionization, deflection",
          "ionization, vaporization, acceleration, deflection",
          "ionization, vaporization, deflection, acceleration",
          "vaporization, ionization, acceleration, deflection"),
      Question(
          "What is the difference between two neutral atoms represented by the symbols  Po(84prot) and  At(85prot)?(Po and At have same atomic mass)",
          "The number of neutrons only",
          "The number of protons and electrons only",
          "The number of protons and neutrons only",
          "The number of protons, neutrons and electrons",
          "The number of protons, neutrons and electrons"),
      Question(
          "How many valence electrons are present in an atom of an element with atomic number 16?",
          "2",
          "4",
          "6",
          "9",
          "6"),
      Question(
          "The electron arrangement of sodium is 2.8.1. How many occupied main electron energy levels are there in an atom of sodium?",
          "1",
          "3",
          "10",
          "11",
          "3"),
      Question('Quiz is done', 'Press me', 'Press me', 'Press me', 'Press me',
          'Press me')
    ],
    3: [
      Question(
          "For which element are the group number and the period number the same?",
          "Li",
          "Be",
          "B",
          "Mg",
          "Be"),
      Question(
          "What increases in equal steps of one from left to right in the periodic table for the elements lithium to neon?",
          "the number of occupied electron energy levels",
          "the number of neutrons in the most common isotope",
          "the number of electrons in the atom",
          "the atomic mass",
          "the number of electrons in the atom"),
      Question("Which pair would react together most vigorously?", "Li and Cl2",
          "Li and Br2", "K and Cl2", "K and Br2", "K and Cl2"),
      Question(
          "Which property decreases down group 7 in the periodic table?",
          "Atomic Radius",
          "Electronegativity",
          "Ionic Radius",
          "Melting Point",
          "Electronegativity"),
      Question(
          "Which element is a transition metal?", "Cl", "Fl", "Ge", "Si", "Ge"),
      Question(
          "Which statement is correct for the halogen group?",
          "Halide ions are all reducing agents, with iodide ions being the weakest",
          "Halogens are all oxidizing agents, with chlorine being the strongest",
          "Chloride ions can be oxidized to chlorine by bromine",
          "Iodide ions can be oxidized to iodine by chlorine",
          "Iodide ions can be oxidized to iodine by chlorine"),
      Question(
          "When Na, K, and Mg are arranged in increasing order of atomic radius (smallest first), which order is correct?",
          "Na, K, Mg",
          "Na, Mg, K",
          "K, Mg, Na",
          "Mg, Na, K",
          "Mg, Na, K"),
      Question("Which pair of elements reacts most readily?", "Li + Br2",
          "Li + Cl2", "K + Br2", "K + Cl2", "K + Cl2"),
      Question(
          "Which property increases down group 1?",
          "First Ionization Energy",
          "Melting Point",
          "Reactivity",
          "Electronegativity",
          "Reactivity"),
      Question(
          "Which pair of elements has the greatest difference in electronegativity?",
          "Na and F",
          "Na and Cl",
          "Na and Br",
          "Na and I",
          "Na and F"),
      Question(
          "Which ion has the largest radius?", "Na+", "K+", "F-", "Br-", "Br-"),
      Question(
          "Which Statement is correct for all elements in the same period?",
          "They have same number of electrons",
          "They have same chemical reactivity",
          "They have the same number of occupied energy levels",
          "They have same number of protons",
          "They have the same number of occupied energy levels"),
      Question(
          "An element has 20 electrons. In which group of periodic table does it occur?",
          "1",
          "2",
          "3",
          "4",
          "2"),
      Question(
          "Which element has the largest radius?", "K", "K+", "Na", "Na+", "K"),
      Question(
          "Which properties of alkali metals decrease down the group 1?",
          "First Ionization Energy and reactivity",
          "Melting Point and Atomic Radius",
          "Reactivity and Electronegativity",
          "First Ionization Energy and Melting Point",
          "First Ionization Energy and Melting Point"),
      Question(
          "Which is the electron configuration of the ion Fe2+?",
          "1s2 2s2 2p6 3s2 3p6 3d6 ",
          "1s2 2s2 2p6 3s2 3p6 3d6 4s2",
          "1s2 2s2 2p6 3s2 3p6 3d4 4s2",
          "1s2 2s2 2p6 3s2 3p6 3d5 4s1",
          "1s2 2s2 2p6 3s2 3p6 3d6 "),
      Question("Which element is in the f-block of the periodic table?", "Be",
          "Ce", "Ge", "Re", "Ce"),
      Question("An element has 7 electrons and 9 protons, what is its charge?",
          "-1", "+2", "+1", "-2", "-2"),
      Question('Quiz is done', 'Press me', 'Press me', 'Press me', 'Press me',
          'Press me')
    ],
    4: [],
    5: [],
    6: [],
    7: [],
    8: [],
    9: [],
    10: [],
    11: [],
  };

  void nextQuestion(BuildContext context, int chapterNumber) {
    if (_questionNumber < _questionBank[bankChapter].length - 1) {
      _questionNumber++;
    } else {
      Alert(
        context: context,
        type: AlertType.success,
        title: "Well done",
        desc: "You completed the quiz.",
        buttons: [
          DialogButton(
            child: Text(
              "Answers",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            onPressed: () =>
                Navigator.push(context, MaterialPageRoute(builder: (context) {
              return TestYourselfDoneScreen(chapterNumber);
            })),
            color: Color.fromRGBO(0, 179, 134, 1.0),
          ),
          DialogButton(
            child: Text(
              "Home",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            onPressed: () => Navigator.pushNamed(context, '/home'),
            gradient: LinearGradient(colors: [
              Color.fromRGBO(116, 116, 191, 1.0),
              Color.fromRGBO(52, 138, 199, 1.0)
            ]),
          )
        ],
      ).show();
    }
  }

  int getQuestionBankLength() {
    return _questionBank[bankChapter].length;
  }

  int getQuestionNumber() {
    return _questionNumber;
  }

  String getQuestionText() {
    return _questionBank[bankChapter][_questionNumber].questionText;
  }

  String getChoice1() {
    return _questionBank[bankChapter][_questionNumber].choice1;
  }

  String getChoice2() {
    return _questionBank[bankChapter][_questionNumber].choice2;
  }

  String getChoice3() {
    return _questionBank[bankChapter][_questionNumber].choice3;
  }

  String getChoice4() {
    return _questionBank[bankChapter][_questionNumber].choice4;
  }

  String getQuestionAnswer() {
    return _questionBank[bankChapter][_questionNumber].answer;
  }
}
