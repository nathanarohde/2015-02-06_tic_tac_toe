require 'spec_helper'

describe(Space) do
  it {should belong_to :board}
  it {should have_and_belong_to_many :players}
end

  describe ('test x_coordinate') do
    it('tests to see if an x_coordinate is properly generated') do
      space = Space.create({:x_coordinate => 1, :y_coordinate => 2, :board_id => 20, :mark_by => 'NONE'})
      expect(space.x_coordinate).to(eq(1))
    end
    it('tests to see if an x_coordinate is properly generated') do
      space = Space.create({:x_coordinate => 1, :y_coordinate => 2, :board_id => 20, :mark_by => 'NONE'})
      expect(space.y_coordinate).to(eq(2))
    end
  end
