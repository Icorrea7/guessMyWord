json.extract! partida, :id, :code, :player_number, :words_number, :game_time, :created_at, :updated_at
json.url partida_url(partida, format: :json)
