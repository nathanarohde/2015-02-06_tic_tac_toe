require'spec_helper'

describe(Board) do
  describe'#start_up' do
    it'Checks to see if board creates 9 spaces on start up.' do
      new_board = Board.create({})
      expect(Space.all.length).to(eq(9))
    end
  end
end
