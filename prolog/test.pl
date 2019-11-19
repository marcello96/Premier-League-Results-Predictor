xhome(man_united).
xaway(newcastle).

referee_yellows_mean(Ref, Y) :- findall(HY, match(_, _, _, _, _, Ref, _, _, _, _, _, _, _, _, HY, _, _, _), HYs),
    			      sumlist(HYs, HYs_sum),
			      length(HYs, Length),
			      findall(AY, match(_, _, _, _, _, Ref, _, _, _, _, _, _, _, _, _, AY, _, _), AYs),
    			      sumlist(AYs, AYs_sum),
			      mean(HYs_sum + AYs_sum, Length, Y).

referee_reds_mean(Ref, R) :- findall(HR, match(_, _, _, _, _, Ref, _, _, _, _, _, _, _, _, _, _, HR, _), HRs),
    			      sumlist(HRs, HRs_sum),
			      length(HRs, Length),
			      findall(AR, match(_, _, _, _, _, Ref, _, _, _, _, _, _, _, _, _, _, _, AR), ARs),
    			      sumlist(ARs, ARs_sum),
			      mean(HRs_sum + ARs_sum, Length, R).

home_goals(T, HGs) :- findall(HG, match(T, _, HG, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _), HGs).
away_goals(T, AGs) :- findall(AG, match(_, T, _, AG, _, _, _, _, _, _, _, _, _, _, _, _, _, _), AGs).

home_goals_last_5(T, Gs) :- home_goals(T, HGs),
			    take(5, HGs, Gs). 

away_goals_last_5(T, Gs) :- away_goals(T, AGs),
			    take(5, AGs, Gs).

home_goals_mean(T, G) :- home_goals(T, HGs),
    			 list_mean(HGs, G).

away_goals_mean(T, G) :- away_goals(T, AGs),
			 list_mean(AGs, G).    		      		      

mean(S, A, R) :- R is S/A.

list_mean(List, Mean) :- sumlist(List, List_sum),
			 length(List, Length),
			 mean(List_sum, Length, Mean).

match_point(home, H, _) :- H is H + 3.
match_point(draw, H, A) :- H is H + 1, A is A +1.
match_point(away, _, A) :- A is A + 3.

take(_, [], []).
take(N, L, Res) :- xtake(N, L, Res).
xtake(0, _, _).
xtake(C, [H|T], Res) :- take(C-1, T, [H|Res]).
