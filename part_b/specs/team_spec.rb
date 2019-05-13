require('minitest/autorun')
require('minitest/rg')
require_relative('../team')

class Testteam < Minitest::Test

  def setup
      @team = Team.new("Scotland", ["Neil","Paul"], "Alex", 0)
    end

def test_name
# team_detail = Team.new("Scotland", ["Neil","Paul"], "Alex", 0)
assert_equal("Scotland",@team.name)
end

def test_players
# team_detail = Team.new("Scotland", ["Neil","Paul"], "Alex", 0)
assert_equal(["Neil","Paul"],@team.players)
end

def test_coach
#team_detail = Team.new("Scotland", ["Neil","Paul"], "Alex", 0)
assert_equal("Alex",@team.coach)
end

def test_set_coach
#  team_detail = Team.new("Scotland", ["Neil","Paul"], "Alex", 0)
  @team.coach = "Bob"
  assert_equal('Bob',@team.coach)
end

def test_add_player
#  team_detail = Team.new("Scotland", ["Neil","Paul"], "Alex", 0)
  @team.add_player("Steve")
  assert_equal(["Neil","Paul","Steve"],@team.players)
end

def test_check_player
#    team_detail = Team.new("Scotland", ["Neil","Paul"], "Alex", 0)
    @team.check_player("Ian")
    assert_equal(false, @team.check_player("Ian"))
end

def test_points_for_win
#    team_detail = Team.new("Scotland", ["Neil","Paul"], "Alex", 0)
    @team.points_for_win("W")
    assert_equal(3,@team.points)
end

end
