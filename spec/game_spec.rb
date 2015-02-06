require'spec_helper'

describe(Game) do
  describe'#start_up' do
    it'Checks to see if game creates two players on start up.' do
      new_game = Game.create({})
      expect(Player.all.length).to(eq(2))
    end

    it'Checks to see if the game has created a board.' do
      new_game = Game.create({})
      expect(Board.all.length).to(eq(1))
    end
    
  end
end
