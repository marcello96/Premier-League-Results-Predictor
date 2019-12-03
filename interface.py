import PySimpleGUI as sg
from pyswip import Prolog

swipl = Prolog()
swipl.consult("prolog/stats.pl")
swipl.consult("prolog/prediction.pl")

TEAMS = [ans["T"] for ans in swipl.query("team(T)")]
REFEREES = [ans["R"] for ans in swipl.query("referee(R)")]

HOME_TEAM_COMBO_KEY = 'Home_combo'
AWAY_TEAM_COMBO_KEY = 'Away_combo'
CANCEL_BUTTON_KEY = 'cancel'
PREDICT_BUTTON_KEY = 'predict'


def predict_result(home, away):
    return next(swipl.query(f"predict_match_result({home}, {away}, {HOME_TEAM_COMBO_KEY}, {AWAY_TEAM_COMBO_KEY})"))


def handle_combo_event(event, values, window):
    if values[HOME_TEAM_COMBO_KEY] == values[AWAY_TEAM_COMBO_KEY]:
        if event == HOME_TEAM_COMBO_KEY:
            window.FindElement(AWAY_TEAM_COMBO_KEY).update(value=get_first_different_than(TEAMS, values[HOME_TEAM_COMBO_KEY]))
        else:
            window.FindElement(HOME_TEAM_COMBO_KEY).Update(value=get_first_different_than(TEAMS, values[AWAY_TEAM_COMBO_KEY]))


def get_first_different_than(team_list, elem):
    for team in team_list:
        if team != elem:
            return team


def prepare_results(values):
    predictions = predict_result(values[HOME_TEAM_COMBO_KEY], values[AWAY_TEAM_COMBO_KEY])
    return f"{values[HOME_TEAM_COMBO_KEY]} {predictions[HOME_TEAM_COMBO_KEY]}:{predictions[AWAY_TEAM_COMBO_KEY]} {values[AWAY_TEAM_COMBO_KEY]}"


def main():
    layout = [[sg.Text('Home team: '),
               sg.Combo(TEAMS, default_value=TEAMS[0], key=HOME_TEAM_COMBO_KEY, enable_events=True, readonly=True)],
              [sg.Text('Away team: '),
               sg.Combo(TEAMS, default_value=TEAMS[1], key=AWAY_TEAM_COMBO_KEY, enable_events=True, readonly=True)],
              [sg.Button('Predict', key=PREDICT_BUTTON_KEY), sg.Button('Cancel', key=CANCEL_BUTTON_KEY)]]

    window = sg.Window('Premier League Results Predictor', layout)

    while True:
        event, values = window.read()
        if event in (None, PREDICT_BUTTON_KEY):  # if user closes window or clicks cancel
            sg.popup(prepare_results(values), title='Predicted match result', keep_on_top=True)
        elif event == CANCEL_BUTTON_KEY:
            break
        elif event in (HOME_TEAM_COMBO_KEY, AWAY_TEAM_COMBO_KEY):
            handle_combo_event(event, values, window)

    window.close()


if __name__ == "__main__":
    main()
