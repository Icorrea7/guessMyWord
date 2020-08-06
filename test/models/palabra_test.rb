# == Schema Information
#
# Table name: palabras
#
#  id         :integer          not null, primary key
#  clase      :string
#  word       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  partida_id :integer
#
# Indexes
#
#  index_palabras_on_partida_id  (partida_id)
#
require 'test_helper'

class PalabraTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
