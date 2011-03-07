require 'test_helper'

class GamesTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Games.new.valid?
  end
end
