class Board < ActiveRecord::Base
  belongs_to :game
  has_many :spaces
  after_create(:start_up)

  private

  def start_up
    x = 0
    while x<3 do
      y=0
      while y<3 do
        space = Space.create({:x_coordinate => x, :y_coordinate => y, :board_id => self.id, :mark_by => 'NONE'})
        y += 1
      end
      x += 1
    end
  end

end
