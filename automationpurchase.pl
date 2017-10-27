automobile_purchase:-
    intro,
    reset_choice,
    find_Car(Car),
    describe(Car).
intro:-
    write('What car do you want to purchase?'),nl,
    write('To get your most suitable car, input your choice using a number(followed by a fullstop) with the features you like'),nl.

find_Car(Car):-
	car(Car), !.

% Store user answers to be able to track his progress
:- dynamic(progress/2).

% Clear stored user progress
% reset_choice must always return true; because retract can return
% either true or false, we fail the first and succeed with the second.
reset_choice :-
	retract(progress(_, _)),
	fail.
reset_choice.


car(mercedes):-
	use(personal),
	price_personal(from_fifteen_million),
        engine_from_fifteen(eight_cylinder),
        capacity_eight_cylinder(four_seater),
	fuel_consumption_four_seater(high).
car(mazda):-
	use(personal),
        price_personal(from_fifteen_million),
        engine_from_fifteen(eight_cylinder),
        capacity_eight_cylinder(four_seater),
        fuel_consumption_four_seater(moderate).

car(jaguar_audi):-
	use(personal),
        price_personal(from_fifteen_million),
        engine_from_fifteen(four_cylinder),
        capacity_four_cylinder(six_seater).
car(bmw):-
        use(personal),
        price_personal(from_fifteen_million),
        engine_from_fifteen(four_cylinder),
        capacity_four_cylinder(four_seater).

car(bentley):-
        use(personal),
        price_personal(below_fifteen_million),
        engine_below_fifteen(six_cylinder).
car(honda):-
        use(personal),
        price_personal(below_fifteen_million),
        engine_below_fifteen(four_cylinder),
        capacity_below_fifteen(four_seater),
        fuel_consumption_below_fifteen(moderate),
        interior_moderate(flexible).

car(scion_nissan):-
	use(personal),
        price_personal(below_fifteen_million),
        engine_below_fifteen(four_cylinder),
        capacity_below_fifteen(four_seater),
        fuel_consumption_below_fifteen(moderate),
        interior_moderate(not_flexible).
car(ford):-
        use(personal),
        price_personal(below_fifteen_million),
        engine_below_fifteen(three_cylinder).
car(morgan):-
        use(fun),
        price_fun(from_fifteen_million),
        engine_fun(eight_cylinder),
        interior_fun(not_convertible),
        fuel_consumption_fun(moderate).

car(porsche):-
	use(fun),
        price_fun(from_fifteen_million),
        engine_fun(six_cylinder).
car(ferrari_mc):-
	use(fun),
        price_fun(from_fifteen_million),
        engine_fun(eight_cylinder),
        interior_fun(convertible).
car(subaru):-
	use(fun),
        price_fun(from_fifteen_million),
        engine_fun(eight_cylinder),
        interior_fun(not_covertible),
        fuel_consumption_fun(high).
car(toyota_hiace):-
        use(commercial),
        price_commercial(from_twenty_million),
        capacity_commercial(fourteen_seater).
car(toyota_sienna):-
        use(commercial),
        price_commercial(from_twenty_million),
        capacity_commercial(seven_seater).
question(use) :-
%personal
	write('Why do you want to buy car?'), nl.
question(price_personal):-
	write('what is your budget?'), nl.
question(engine_from_fifteen):-
	write('engine capacity?'), nl.
question(capacity_eight_cylinder):-
        write('car capacity?'),nl.
question(fuel_consumption_four_seater):-
        write('how much fuel should it consume?'),nl.
question(capacity_four_cylinder):-
        write('car capacity?'),nl.
question(engine_below_fifteen):-
	write('engine capacity?'), nl.
question(capacity_below_fifteen):-
	write('car capacity?'), nl.
question(fuel_consumption_below_fifteen):-
	write('how much fuel should it consume?'), nl.
question(interior_moderate):-
	write('how much fuel should it consume?'), nl.
%fun
question(price_fun):-
	write('what is your budget?'),nl.
question(engine_fun):-
	write('engine capacity?'), nl.
question(interior_fun):-
	write('how is the design?'), nl.
question(fuel_consumption_fun):-
	write('how much fuel should it consume?'), nl.
%commercial
question(price_commercial):-
	write('what is your budget?'),nl.
question(capacity_commercial):-
	write('car capacity?'),nl.

answer(personal) :-
	write('for personal use'),nl.
answer(from_fifteen_million) :-
	write('cars from fifteen million shillings'),nl.
answer(eight_cylinder) :-
	write('eight cylinder engine'),nl.
answer(four_cylinder) :-
	write('four cylinder engine'),nl.
answer(three_cylinder) :-
	write('three cylinder engine'),nl.

answer(four_seater) :-
	write('four seater car'),nl.
answer(high) :-
	write('high fuel consumption'),nl.
answer(moderate) :-
	write('moderate fuel consumption'),nl.
answer(six_seater) :-
	write('six seater car'),nl.
answer(below_fifteen_million) :-
	write('cars below fifteen million shillings'),nl.
answer(flexible) :-
	write('flexible interior'),nl.
answer(not_flexible) :-
	write('interior is not flexible'),nl.

answer(fun) :-
	write('for fun'),nl.
answer(six_cylinder) :-
	write('six cylinder engine'),nl.
answer(convertible) :-
	write('convertible vehicle'),nl.
answer(not_convertible) :-
	write('vehicle not convertible'),nl.

answer(commercial):-
	write('for commercial use'),nl.
answer(from_twenty_million):-
	write('car price from twenty million shillings '),nl.
answer(fourteen_seater):-
	write('fourteen seater car'),nl.
answer(seven_seater):-
	write('seven seater car'),nl.

% Car descriptions for the knowledge base
describe(mercedes):-
	write('MERCEDES'),nl,
	write(' The Mercedes is a stylish, quick and comfortable executive saloon with room for four passengers and their luggage.It is a sleek, low-slung four-door luxury coupe that\'s designed to blend desirability with practicality.'),nl.
describe(mazda):-
	write('MAZDA'),nl,
	write('Mazda lives up to its racy looks,a precision-tuned suspension and driver-focused cabin make it the ideal choice for those who enjoy driving.'),nl.
describe(jaguar_audi) :-
	write('JAGUAR AUDI'),nl,
	write('The Jaguar Audi has a lot on its shoulders,a weight it bears remarkably well.The interior is appropriately swanky for the audi\'s place at the top of the Jaguar lineup, with quality materials and luxe styling.'),nl.
describe(bmw):-
	write('BMW'),nl,
	write('The BMW is available with a turbocharged 2.0-litre petrol engine and a range of 2.0-litre diesels, plus buyers can choose between front and four-wheel drive.').
describe(bentley):-
	write('BENTLEY'),nl,
	write('The new Bentley Continental GT Convertible offers the same enhancements as its coupe stable-mate, coupled with the sheer exhilaration of open-top driving.').

describe(honda) :-
	write('HONDA '), nl,
	write('A flexible interior, an efficient powertrain, and agreeable pricing make the Fit an easy recommendation. Its firm ride makes it fun to drive, while light steering makes it great for in-town driving.'),nl.
describe(scion_nissan):-
	write('SCION NISSAN'),nl,
	write('The Scion nissan is a two-door, four-seat hatchback. It is available in one trim and comes with a 1.3-liter four-cylinder engine, a continuously variable transmission (CVT) and front-wheel drive.'),nl.
describe(chevy_ford):-
	write('CHEVY FORD'),nl,
	write('The weight-loss program and high-tech wizardry under the hood pay off with an impressive 17 mpg overall fuel economy from the 2.7-liter turbo V6—edging out the 5.3-liter V8 Chevrolet Silverado by one hay-hauling mpg. '),nl.
describe(morgan):-
	write('MORGAN'),nl,
	write(' The 3 Wheeler\'s layout is much like the original Twenties Morgans, with a tubular steel spaceframe using independent front suspension, with a large-capacity V-twin engine across the body.'),nl.
describe(porsche):-
	write('PORSCHE'),nl,
	write('A seven-speed manual transmission is standard; all-wheel drive and a seven-speed dual-clutch automatic are options.In coupe, convertible, and Targa form, the Porsche is as luxurious as it is sure-footed, making even novices feel like racing legends.'),nl.
describe(ferrari_mc):-
	write('FERRARI MC'),nl,
	write('As instruments of pure speed, few cars can touch the Ferrari Mc.'),nl.
describe(audi_subaru):-
	write('AUDI SUBARU'),nl,
	write('While the Allroad may not be a hard-core off-roader, as competent all-weather transportation, Audi Subaru hits the mark.'),nl.
describe(toyota_hiace):-
	write('TOYOTA HIACE'),nl,
        write('Toyota hiace is a fourteen seater,light commercial vehicle.It uses a four-cylinder engine.'),nl.
describe(toyota_sienna):-
	write('TOYOTA SIENNA'),nl,
        write('Toyota sienna has a spacious interior and ample cargo room that makes it a great choice for business.'),nl.

% Assigns an answer to questions from the knowledge base
use(Answer) :-
	progress(use, Answer).
use(Answer) :-
	\+ progress(use, _),
	ask(use, Answer, [personal,fun,commercial]).

price_personal(Answer) :-
	progress(price_personal, Answer).
price_personal(Answer):-
	\+ progress(price_personal, _),
	ask(price_personal,Answer,[from_fifteen_million,below_fifteen_million]).

engine_from_fifteen(Answer):-
	progress(engine_from_fifteen,Answer).
engine_from_fifteen(Answer):-
	\+ progress(engine_from_fifteen, _),
	ask(engine_from_fifteen,Answer,[eight_cylinder,four_cylinder]).

capacity_eight_cylinder(Answer):-
	progress(capacity_eight_cylinder,Answer).
capacity_eight_cylinder(Answer):-
	\+ progress(capacity_eight_cylinder, _),
	ask(capacity_eight_cylinder,Answer,[four_seater]).

fuel_consumption_four_seater(Answer):-
	progress(fuel_consumption_four_seater,Answer).
fuel_consumption_four_seater(Answer):-
	\+ progress(fuel_consumption_four_seater, _),
	ask(fuel_consumption_four_seater,Answer,[high,moderate]).

capacity_four_cylinder(Answer):-
	progress(capacity_four_cylinder,Answer).
capacity_four_cylinder(Answer):-
	\+ progress(capacity_four_cylinder, _),
	ask(capacity_four_cylinder,Answer,[four_seater,six_seater]).
engine_below_fifteen(Answer):-
	progress(engine_below_fifteen,Answer).
engine_below_fifteen(Answer):-
	\+ progress(engine_below_fifteen, _),
	ask(engine_below_fifteen,Answer,[three_cylinder,four_cylinder,six_cylinder]).
capacity_below_fifteen(Answer):-
	progress(capacity_below_fifteen,Answer).
capacity_below_fifteen(Answer):-
	\+ progress(capacity_below_fifteen, _),
	ask(capacity_below_fifteen,Answer,[four_seater]).
fuel_consumption_below_fifteen(Answer):-
	progress(fuel_consumption_below_fifteen,Answer).
fuel_consumption_below_fifteen(Answer):-
	\+ progress(fuel_consumption_below_fifteen, _),
	ask(fuel_consumption_below_fifteen,Answer,[moderate]).
interior_moderate(Answer):-
	progress(interior_moderate,Answer).
interior_moderate(Answer):-
	\+ progress(interior_moderate, _),
	ask(interior_moderate,Answer,[not_flexible,flexible]).
price_fun(Answer) :-
	progress(price_fun, Answer).
price_fun(Answer):-
	\+ progress(price_fun, _),
	ask(price_fun,Answer,[from_fifteen_million]).
engine_fun(Answer) :-
	progress(engine_fun, Answer).
engine_fun(Answer):-
	\+ progress(engine_fun, _),
	ask(engine_fun,Answer,[six_cylinder,eight_cylinder]).
interior_fun(Answer) :-
	progress(interior_fun, Answer).
interior_fun(Answer):-
	\+ progress(interior_fun, _),
	ask(interior_fun,Answer,[convertible,not_convertible]).
fuel_consumption_fun(Answer) :-
	progress(fuel_consumption_fun, Answer).
fuel_consumption_fun(Answer):-
	\+ progress(fuel_consumption_fun, _),
	ask(fuel_consumption_fun,Answer,[moderate,high]).
price_commercial(Answer) :-
	progress(price_commercial, Answer).
price_commercial(Answer):-
	\+ progress(price_commercial, _),
	ask(price_commercial,Answer,[from_twenty_million]).
capacity_commercial(Answer) :-
	progress(capacity_commercial, Answer).
capacity_commercial(Answer):-
	\+ progress(capacity_commercial, _),
	ask(capacity_commercial,Answer,[fourteen_seater,seven_seater]).


% Outputs a nicely formatted list of answers
% [First|Rest] is the Choices list, Index is the index of First in Choices
answers([], _).
answers([First|Rest], Index) :-
  write(Index), write(' '), answer(First), nl,
  NextIndex is Index + 1,
  answers(Rest, NextIndex).

% Parses an Index and returns a Response representing the "Indexth" element in
% Choices (the [First|Rest] list)
parse(0, [First|_], First).
parse(Index, [First|Rest], Response) :-
  Index > 0,
  NextIndex is Index - 1,
  parse(NextIndex, Rest, Response).


% Asks the Question to the user and saves the Answer
ask(Question, Answer, Choices) :-
  question(Question),
  answers(Choices, 0),
  read(Index),
  parse(Index, Choices, Response),
  asserta(progress(Question, Response)),
  Response = Answer.












