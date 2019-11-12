referee(m_oliver).
referee(m_dean).
referee(k_friend).
referee(g_scott).
referee(j_moss).
referee(c_pawson).
referee(c_kavanagh).
referee(a_marriner).
referee(m_atkinson).
referee(a_taylor).
referee(l_mason).
referee(s_attwell).
referee(d_coote).
referee(o_langford).
referee(p_tierney).
referee(a_madley).
referee(p_bankes).
referee(s_hooper).

team(norwich).
team(man_city).
team(sheffield_united).
team(southampton).
team(everton).
team(brighton).
team(aston_villa).
team(wolves).
team(arsenal).
team(chelsea).
team(burnley).
team(bournemouth).
team(west_ham).
team(watford).
team(newcastle).
team(liverpool).
team(tottenham).
team(crystal_palace).
team(leicester).
team(man_united).

%match(Home, Away, H_goals, S_goals, Result, Referee, H_fouls, A_fouls, H_yellows, A_yellows, H_reds, A_reds).
match(liverpool, norwich, 4, 1, home, m_oliver, 9, 9, 0, 2, 0, 0).
match(west_ham, man_city, 0, 5, away, m_dean, 6, 13, 2, 2, 0, 0).
match(bournemouth, sheffield_united, 1, 1, draw, k_friend, 10, 19, 2, 1, 0, 0).
match(burnley, southampton, 3, 0, home, g_scott, 6, 12, 0, 0, 0, 0).
match(crystal_palace, everton, 0, 0, draw, j_moss, 16, 14, 2, 1, 0, 1).
match(watford, brighton, 0, 3, away, c_pawson, 15, 11, 0, 1, 0, 0).
match(tottenham, aston_villa, 3, 1, home, c_kavanagh, 13, 9, 1, 0, 0, 0).
match(leicester, wolves, 0, 0, draw, a_marriner, 3, 13, 0, 2, 0, 0).
match(newcastle, arsenal, 0, 1, away, m_atkinson, 12, 7, 1, 3, 0, 0).
match(man_united, chelsea, 4, 0, home, a_taylor, 15, 13, 3, 4, 0, 0).
match(arsenal, burnley, 2, 1, home, m_dean, 13, 11, 2, 1, 0, 0).
match(aston_villa, bournemouth, 1, 2, away, m_atkinson, 10, 13, 0, 2, 0, 0).
match(brighton, west_ham, 1, 1, draw, a_taylor, 11, 10, 0, 2, 0, 0).
match(everton, watford, 1, 0, home, l_mason, 11, 11, 2, 3, 0, 0).
match(norwich, newcastle, 3, 1, home, s_attwell, 9, 11, 1, 3, 0, 0).
match(southampton, liverpool, 1, 2, away, a_marriner, 10, 6, 2, 1, 0, 0).
match(man_city, tottenham, 2, 2, draw, m_oliver, 14, 4, 1, 0, 0, 0).
match(sheffield_united, crystal_palace, 1, 0, home, d_coote, 16, 11, 3, 1, 0, 0).
match(chelsea, leicester, 1, 1, draw, o_langford, 9, 14, 1, 0, 0, 0).
match(wolves, man_united, 1, 1, draw, j_moss, 17, 8, 2, 2, 0, 0).
match(aston_villa, everton, 2, 0, home, m_oliver, 10, 18, 2, 3, 0, 0).
match(norwich, chelsea, 2, 3, away, m_atkinson, 9, 9, 1, 1, 0, 0).
match(brighton, southampton, 0, 2, away, k_friend, 9, 10, 1, 3, 1, 0).
match(man_united, crystal_palace, 1, 2, away, p_tierney, 8, 18, 2, 4, 0, 0).
match(sheffield_united, leicester, 1, 2, away, a_madley, 11, 6, 1, 0, 0, 0).
match(watford, west_ham, 1, 3, away, c_kavanagh, 12, 11, 1, 1, 0, 0).
match(liverpool, arsenal, 3, 1, home, a_taylor, 8, 5, 1, 1, 0, 0).
match(bournemouth, man_city, 1, 3, away, a_marriner, 7, 13, 1, 3, 0, 0).
match(tottenham, newcastle, 0, 1, away, m_dean, 10, 5, 2, 2, 0, 0).
match(wolves, burnley, 1, 1, draw, c_pawson, 9, 11, 0, 2, 0, 0).
match(southampton, man_united, 1, 1, draw, m_dean, 17, 7, 1, 2, 1, 0).
match(chelsea, sheffield_united, 2, 2, draw, s_attwell, 6, 11, 0, 1, 0, 0).
match(crystal_palace, aston_villa, 1, 0, home, k_friend, 15, 16, 2, 4, 0, 1).
match(leicester, bournemouth, 3, 1, home, p_bankes, 9, 11, 1, 3, 0, 0).
match(man_city, brighton, 4, 0, home, j_moss, 10, 6, 1, 1, 0, 0).
match(newcastle, watford, 1, 1, draw, g_scott, 5, 11, 2, 3, 0, 0).
match(west_ham, norwich, 2, 0, home, p_tierney, 16, 10, 2, 1, 0, 0).
match(burnley, liverpool, 0, 3, away, c_kavanagh, 10, 16, 0, 0, 0, 0).
match(everton, wolves, 3, 2, home, a_taylor, 12, 12, 1, 4, 0, 1).
match(arsenal, tottenham, 2, 2, draw, m_atkinson, 13, 19, 3, 5, 0, 0).
match(liverpool, newcastle, 3, 1, home, a_marriner, 5, 4, 0, 0, 0, 0).
match(brighton, burnley, 1, 1, draw, m_oliver, 13, 7, 0, 2, 0, 0).
match(man_united, leicester, 1, 0, home, m_atkinson, 14, 14, 1, 2, 0, 0).
match(sheffield_united, southampton, 0, 1, away, l_mason, 10, 7, 1, 1, 1, 0).
match(tottenham, crystal_palace, 4, 0, home, c_pawson, 19, 11, 4, 2, 0, 0).
match(wolves, chelsea, 2, 5, away, g_scott, 8, 11, 1, 2, 0, 0).
match(norwich, man_city, 3, 2, home, k_friend, 8, 7, 3, 1, 0, 0).
match(bournemouth, everton, 3, 1, home, p_tierney, 5, 14, 0, 4, 0, 0).
match(watford, arsenal, 2, 2, draw, a_taylor, 14, 4, 3, 3, 0, 0).
match(aston_villa, west_ham, 0, 0, draw, m_dean, 13, 12, 2, 1, 0, 1).
match(southampton, bournemouth, 1, 3, away, c_kavanagh, 8, 9, 1, 3, 0, 0).
match(leicester, tottenham, 2, 1, home, p_tierney, 16, 13, 1, 2, 0, 0).
match(burnley, norwich, 2, 0, home, d_coote, 11, 10, 0, 1, 0, 0).
match(everton, sheffield_united, 0, 2, away, s_hooper, 9, 9, 1, 3, 0, 0).
match(man_city, watford, 8, 0, home, m_dean, 5, 9, 2, 2, 0, 0).
match(newcastle, brighton, 0, 0, draw, m_atkinson, 12, 8, 2, 1, 0, 0).
match(crystal_palace, wolves, 1, 1, draw, s_attwell, 7, 10, 2, 1, 0, 1).
match(west_ham, man_united, 2, 0, home, a_taylor, 8, 9, 2, 2, 0, 0).
match(arsenal, aston_villa, 3, 2, home, j_moss, 13, 15, 5, 1, 1, 0).
match(chelsea, liverpool, 1, 2, away, m_oliver, 8, 13, 3, 3, 0, 0).
match(sheffield_united, liverpool, 0, 1, away, a_taylor, 8, 4, 1, 1, 0, 0).
match(aston_villa, burnley, 2, 2, draw, l_mason, 10, 16, 1, 4, 0, 0).
match(bournemouth, west_ham, 2, 2, draw, s_attwell, 7, 8, 3, 1, 0, 0).
match(chelsea, brighton, 2, 0, home, c_kavanagh, 5, 13, 2, 3, 0, 0).
match(crystal_palace, norwich, 2, 0, home, j_moss, 14, 10, 3, 1, 0, 0).
match(tottenham, southampton, 2, 1, home, g_scott, 5, 16, 0, 2, 1, 0).
match(wolves, watford, 2, 0, home, p_tierney, 5, 6, 0, 1, 0, 0).
match(everton, man_city, 1, 3, away, m_oliver, 4, 8, 2, 2, 0, 0).
match(leicester, newcastle, 5, 0, home, c_pawson, 12, 9, 1, 1, 0, 1).
match(man_united, arsenal, 1, 1, draw, k_friend, 18, 13, 4, 2, 0, 0).
match(brighton, tottenham, 3, 0, home, j_moss, 11, 7, 2, 1, 0, 0).
match(burnley, everton, 1, 0, home, g_scott, 5, 12, 2, 1, 0, 1).
match(liverpool, leicester, 2, 1, home, c_kavanagh, 9, 17, 1, 4, 0, 0).
match(norwich, aston_villa, 1, 5, away, a_madley, 14, 17, 1, 3, 0, 0).
match(watford, sheffield_united, 0, 0, draw, a_marriner, 7, 6, 0, 2, 0, 0).
match(west_ham, crystal_palace, 1, 2, away, m_oliver, 11, 7, 3, 2, 0, 0).
match(arsenal, bournemouth, 1, 0, home, m_atkinson, 12, 6, 1, 2, 0, 0).
match(man_city, wolves, 0, 2, away, c_pawson, 11, 14, 5, 2, 0, 0).
match(southampton, chelsea, 1, 4, away, p_tierney, 8, 15, 0, 1, 0, 0).
match(newcastle, man_united, 1, 0, home, m_dean, 12, 10, 3, 3, 0, 0).
match(everton, west_ham, 2, 0, home, p_tierney, 15, 15, 2, 2, 0, 0).
match(aston_villa, brighton, 2, 1, home, d_coote, 9, 17, 1, 2, 0, 1).
match(bournemouth, norwich, 0, 0, draw, l_mason, 8, 11, 1, 3, 0, 0).
match(chelsea, newcastle, 1, 0, home, a_marriner, 9, 12, 2, 1, 0, 0).
match(leicester, burnley, 2, 1, home, j_moss, 4, 10, 0, 3, 0, 0).
match(tottenham, watford, 1, 1, draw, c_kavanagh, 5, 9, 4, 3, 0, 0).
match(wolves, southampton, 1, 1, draw, p_bankes, 10, 17, 3, 2, 0, 0).
match(crystal_palace, man_city, 0, 2, away, a_taylor, 8, 10, 1, 1, 0, 0).
match(man_united, liverpool, 1, 1, draw, m_atkinson, 6, 14, 0, 1, 0, 0).
match(sheffield_united, arsenal, 1, 0, home, m_dean, 10, 12, 4, 4, 0, 0).

referee_yellows_mean(Ref, Y) :- findall(HY, match(_, _, _, _, _, Ref, _, _, HY, _, _, _), HYs),
    			      sumlist(HYs, HYs_sum),
			      length(HYs, Length),
			      findall(AY, match(_, _, _, _, _, Ref, _, _, _, AY, _, _), AYs),
    			      sumlist(AYs, AYs_sum),
			      mean(HYs_sum + AYs_sum, Length, Y).

referee_reds_mean(Ref, R) :- findall(HR, match(_, _, _, _, _, Ref, _, _, _, _, HR, _), HRs),
    			      sumlist(HRs, HRs_sum),
			      length(HRs, Length),
			      findall(AR, match(_, _, _, _, _, Ref, _, _, _, _, _, AR), ARs),
    			      sumlist(ARs, ARs_sum),
			      mean(HRs_sum + ARs_sum, Length, R).

home_goals_mean(T, G) :- findall(HG, match(T, _, HG, _, _, _, _, _, _, _, _, _), HGs),
    			 list_mean(HGs, G).

away_goals_mean(T, G) :- findall(AG, match(_, T, _, AG, _, _, _, _, _, _, _, _), AGs),
			 list_mean(AGs, G).    			      

mean(S, A, R) :- R is S/A.

list_mean(List, Mean) :- sumlist(List, List_sum),
			 length(List, Length),
			 mean(List_sum, Length, Mean).
