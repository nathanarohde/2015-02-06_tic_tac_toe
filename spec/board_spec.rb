require'spec_helper'

describe(Board) do
  it {should have_many :spaces}
  it {should belong_to :game}
end

  describe'#start_up' do
    it'Checks to see if board creates 9 spaces on start up.' do
      new_board = Board.create({})
      expect(Space.all.length).to(eq(9))
    end

    it'Checks to see if all spaces have the mark_by value NONE on startup' do
      new_board = Board.create({})
      check_mark_by = []
      Space.all.each {|space| check_mark_by.push(space.mark_by)}
      expect(check_mark_by.all?{|mark_by| mark_by == 'NONE'}).to(eq(true))
    end

    it'Checks to see that none of the spaces have an x value greater than 2' do
      new_board = Board.create({})
      check_x_coordinate = []
      Space.all.each {|space| check_x_coordinate.push(space.x_coordinate)}
      expect(check_x_coordinate.any?{|x_coordinate| x_coordinate == 3}).to(eq(false))
    end

    it'Checks to see that none of the spaces have an y value great than 2' do
      new_board = Board.create({})
      check_y_coordinate = []
      Space.all.each {|space| check_y_coordinate.push(space.y_coordinate)}
      expect(check_y_coordinate.any?{|y_coordinate| y_coordinate == 3}).to(eq(false))
    end

  end
