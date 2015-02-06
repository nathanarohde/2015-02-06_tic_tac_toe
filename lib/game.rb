class Game < ActiveRecord::Base
  has_many :players
  has_one :board
  after_create(:start_up)

  private

  def start_up
    player1 = Player.create({:mark => 'X', :game_id => self.id})
    player2 = Player.create({:mark => 'O', :game_id => self.id})

    board = Board.create({:game_id => self.id})
  end

end
