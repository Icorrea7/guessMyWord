# == Schema Information
#
# Table name: partidas
#
#  id            :integer          not null, primary key
#  code          :integer
#  game_time     :decimal(, )
#  player_number :integer
#  words_number  :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
class Partida < ApplicationRecord
    
  has_many :palabras
  accepts_nested_attributes_for :palabras
  before_create :generate_token

    protected
  
    def generate_token
      self.code = loop do
        code = SecureRandom.random_number(10000)
        break code unless Partida.exists?(code: code)
      end
    end
end
