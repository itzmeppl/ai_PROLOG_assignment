% Enter the names of your group members below.
% If you only have 2 group members, leave the last space blank
%
%%%%%
%%%%% NAME: Riddhima Garg
%%%%% NAME: Wendy Xie
%%%%% NAME: Claudia Chan
%
% Add the required rules in the corresponding sections. 
% If you put the rules in the wrong sections, you will lose marks.
%
% You may add additional comments as you choose but DO NOT MODIFY the comment lines below
%

%%%%% SECTION: cost
% Put your atomic statements for the cost in this section

cost(laptop,100).
cost(monitor,1000).
cost(keyboard,10).

%%%%% SECTION: numPurchased
% Put your atomic statements for the numPurchased predicate in this section

numPurchased(laptop,5).
numPurchased(monitor,10).
numPurchased(keyboard,15).

%%%%% SECTION: shippingCost
% Put your atomic statements for the shippingCost predicate in this section

%clarified in the discusison board-should be shippingCost(Product,Cost)
shippingCost(laptop,50).
shippingCost(monitor,100).
shippingCost(keyboard,10).

%%%% SECTION: taxRate
% Put your atomic statements for the taxRate predicate in this section

taxRate(0.13).

%%%%% SECTION: freeRegularShippingMin
% Put your atomic statements for the freeRegularShippingMin predicate in this section

freeRegularShippingMin(90).

%%%%% SECTION: freeExpressShippingMin
% Put your atomic statements for the freeExpressShippingMin predicate in this section

 freeExpressShippingMin(120).

%%%%% SECTION: subtotal
% Put your rules for the subtotal predicate in this section
subtotal(Sub) :-  cost(laptop,Lapcost),numPurchased(laptop,Lapcount),Laptotal is Lapcost * Lapcount,
cost(monitor,Moncost), numPurchased(monitor,Moncount), Montotal is Moncost * Moncount,
cost(keyboard,Keybrcost), numPurchased(keyboard,Keybrcount), Keybrtotal is Keybrcost * Keybrcount,
Sub is Laptotal + Montotal +  Keybrtotal.



%%%%% SECTION: calculateBaseShipping
% Put your rules for the calculateBaseShipping predicate in this section

calculateBaseShipping(ShippingCost) :- shippingCost(laptop,Lapship),numPurchased(laptop,Lapcount),Lapshiptotal is Lapship * Lapcount,
shippingCost(monitor,Monship), numPurchased(monitor,Moncount), Monshiptotal is Moncount * Monship,
shippingCost(keyboard,Keybrship), numPurchased(keyboard,Keybrcount), Keybrshiptotal is Keybrship * Keybrcount,
ShippingCost is Lapshiptotal + Monshiptotal +  Keybrshiptotal.  

%%%%% SECTION: calculateShipping
% Put your rules for the calculateShipping predicate in this section
calculateShipping(ShippingType,ShippingCost) :- ShippingType = express, subtotal(Sub),calculateBaseShipping(Baseship), SubwithShip is Sub + Baseship, freeExpressShippingMin(Freeexpress), SubwithShip >= Freeexpress, ShippingCost is 0.
calculateShipping(ShippingType,ShippingCost) :- ShippingType = express, subtotal(Sub),calculateBaseShipping(Baseship), SubwithShip is Sub + Baseship, freeExpressShippingMin(Freeexpress), SubwithShip < Freeexpress, ShippingCost is Baseship.
calculateShipping(ShippingType,ShippingCost) :- ShippingType = regular, subtotal(Sub),calculateBaseShipping(Baseship), SubwithShip is Sub + Baseship, freeRegularShippingMin(Freereg), SubwithShip >= Freereg, ShippingCost is 0.
calculateShipping(ShippingType,ShippingCost) :- ShippingType = regular, subtotal(Sub),calculateBaseShipping(Baseship), SubwithShip is Sub + Baseship, freeRegularShippingMin(Freereg), SubwithShip < Freereg, ShippingCost is Baseship.



%%%%% SECTION: totalCost
% Put your rules for the totalCost predicate in this section

totalCost(ShippingType,Cost) :- subtotal(Sub), calculateShipping(ShippingType,ShippingCost), SubwithShip is Sub + ShippingCost,taxRate(Taxpercent),Taxcal is Taxpercent+ 1, Cost is SubwithShip * Taxcal.

