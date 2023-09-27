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

%%%%% SECTION: articleAuthor
% Put your atomic statements for the articleAuthor predicate in this section

articleAuthor(communist_manifesto,john_locke).
articleAuthor(communist_manifesto,karl_marx).
articleAuthor(communist_manifesto,cormac_mccarthy).
articleAuthor(very_hungry_catipillar,eric_carle).
articleAuthor(jane_eyre,charlotte_bronte).
articleAuthor(villette,charlotte_bronte).
articleAuthor(villette, eric_carle).
articleAuthor(the_road,cormac_mccarthy).
articleAuthor(matilda,george_orwell).
articleAuthor(matilda,roald_dahl).
articleAuthor(the_bfg,roald_dahl).
articleAuthor(two_treatises_of_government,john_locke).
articleAuthor(ninety_five_theses,martin_luther).
articleAuthor(ninety_five_theses,karl_marx).
articleAuthor(the_social_contract,jean_jacques_rousseau).
articleAuthor(discourse_on_inequality,jean_jacques_rousseau).
articleAuthor(holes,louis_sachar).
articleAuthor(holes,cormac_mccarthy).
articleAuthor(the_birchbark_house,louise_erdrich).
articleAuthor(animal_farm,george_orwell).
articleAuthor(animal_farm,charlotte_bronte).

%%%%% SECTION: articleTopic
% Put your atomic statements for the articleTopic predicate in this section

articleTopic(communist_manifesto,philosophy).
articleTopic(very_hungry_catipillar,fiction).
articleTopic(jane_eyre,fiction).
articleTopic(villette,fiction).
articleTopic(the_road,post_acopalyptic).
articleTopic(matilda,fiction).
articleTopic(the_bfg,fiction).
articleTopic(two_treatises_of_government,politics).
articleTopic(ninety_five_theses,theology).
articleTopic(the_social_contract,politics).
articleTopic(discourse_on_inequality,politics).
articleTopic(holes,ai).
articleTopic(the_birchbark_house,fiction).
articleTopic(animal_farm,ai).



%%%%% SECTION: collabDist
% Put your rules for collabDist in this section

%these account for the base cases where A1 and A2 is itself or has a direct connection
collabDist(A1, A2, MaxDist) :- articleAuthor(X, A1), articleAuthor(X, A2), MaxDist >= 0, A1=A2.
collabDist(A1, A2, MaxDist) :- articleAuthor(X, A1), articleAuthor(X, A2), not A1= A2, MaxDist >= 1.
collabDist(A1, A2, MaxDist) :- UpdatedMaxDist is  MaxDist - 1, UpdatedMaxDist >= 0, collabDist(A1, A3,  UpdatedMaxDist),collabDist(A3, A2, UpdatedMaxDist). 




%%%% SECTION: collabDistWithAI
% Put your rules for collabDistWithAI in this section


