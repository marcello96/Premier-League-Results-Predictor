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
home_goals_lost(T, HGLs) :- findall(HGL, match(T, _, _, HGL, _, _, _, _, _, _, _, _, _, _, _, _, _, _), HGLs).
away_goals_lost(T, AGLs) :- findall(AGL, match(_, T, AGL, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _), AGLs).

home_goals_lost_mean(T, G) :- home_goals_lost(T, HGs),
    			      list_mean(HGs, G).
away_goals_lost_mean(T, G) :- away_goals_lost(T, HGs),
    			      list_mean(HGs, G).

home_goals_last_5(T, Gs) :- home_goals(T, HGs),
			    take(5, HGs, Gs). 

away_goals_last_5(T, Gs) :- away_goals(T, AGs),
			    take(5, AGs, Gs).

home_goals_mean(T, G) :- home_goals(T, HGs),
    			 list_mean(HGs, G).

away_goals_mean(T, G) :- away_goals(T, AGs),
			 list_mean(AGs, G).

goals_difference(T, D) :- home_goals(T, HGs),
			  home_goals_lost(T, HGLs),
			  sumlist(HGs, HG_sum),
			  sumlist(HGLs, HGL_sum),
			  D is HG_sum - HGL_sum.

home_goals_league_mean(M) :- home_goals_mean(_, M).
away_goals_league_mean(M) :- away_goals_mean(_, M).
home_goals_lost_league_mean(M) :- home_goals_lost_mean(_, M).
away_goals_lost_league_mean(M) :- away_goals_lost_mean(_, M).

home_attack_strength(T, AS) :- home_goals_mean(T, HM),
			      home_goals_league_mean(LM),
			      AS is HM/LM.

away_attack_strength(T, AS) :- away_goals_mean(T, AM),
			      away_goals_league_mean(LM),
			      AS is AM/LM.

home_defense_strength(T, DS) :- home_goals_lost_mean(T, HM),
			      home_goals_lost_league_mean(LM),
			      DS is HM/LM.

away_defense_strength(T, DS) :- away_goals_lost_mean(T, AM),
			      away_goals_lost_league_mean(LM),
			      DS is AM/LM.

possible_home_team_goals(H, A, G) :- home_attack_strength(H, HTAS),
				     away_defense_strength(A, ATDS),
				     home_goals_league_mean(LM),
				     G is HTAS*ATDS*LM.

possible_away_team_goals(H, A, G) :- away_attack_strength(A, ATAS),
				     home_defense_strength(H, HTDS),
				     away_goals_league_mean(LM),
				     G is ATAS*HTDS*LM.

predict_match_result(H, A, HG, AG) :- team(H),
				      team(A),
				      possible_home_team_goals(H, A, XHG),
				      possible_away_team_goals(H, A, XAG),
				      HG is round(XHG),
				      AG is round(XAG).

%secondary predicates
mean(S, A, R) :- R is S/A.

list_mean(List, Mean) :- sumlist(List, List_sum),
			 length(List, Length),
			 mean(List_sum, Length, Mean).

take(_, [], []).
take(N, L, Res) :- xtake(N, L, Res).
xtake(0, _, _).
xtake(C, [H|T], Res) :- take(C-1, T, [H|Res]).

