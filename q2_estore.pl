% Enter the names of your group members below.
% If you only have 2 group members, leave the last space blank
%
%%%%%
%%%%% NAME: 
%%%%% NAME:
%%%%% NAME:
%
% Add the required rules in the corresponding sections. 
% If you put the rules in the wrong sections, you will lose marks.
%
% You may add additional comments as you choose but DO NOT MODIFY the comment lines below
%

%%%%% SECTION: cost
% Put your atomic statements for the cost in this section

cost(laptop,800).
cost(monitor,8000).
cost(keyboard,80).

%%%%% SECTION: numPurchased
% Put your atomic statements for the numPurchased predicate in this section

numPurchased(laptop,100).
numPurchased(monitor,500).
numPurchased(keyboard,700).

%%%%% SECTION: shippingCost
% Put your atomic statements for the shippingCost predicate in this section

%clarified in the discusison board-should be shippingCost(Product,Cost)
shippingCost(laptop,30).
shippingCost(monitor,40).
shippingCost(keyboard,15).

%%%% SECTION: taxRate
% Put your atomic statements for the taxRate predicate in this section

taxRate(0.13).

%%%%% SECTION: freeRegularShippingMin
% Put your atomic statements for the freeRegularShippingMin predicate in this section

freeRegularShippingMin(90).

%%%%% SECTION: freeExpressShippingMin
% Put your atomic statements for the freeExpressShippingMin predicate in this section

 freeExpressShippingMin(150).

%%%%% SECTION: subtotal
% Put your rules for the subtotal predicate in this section
subTotal(Sub) :-  cost(laptop,lapCost),numPurchased(laptop,lapCount),lapTotal is lapCost * lapCount,
cost(monitor,monCost), numPurchased(monitor,monCount), monTotal is monCost * monCount.



%%%%% SECTION: calculateBaseShipping
% Put your rules for the calculateBaseShipping predicate in this section


%%%%% SECTION: calculateShipping
% Put your rules for the calculateShipping predicate in this section


%%%%% SECTION: totalCost
% Put your rules for the totalCost predicate in this section


