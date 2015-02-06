describe(Player) do
  it {should have_and_belong_to_many :spaces}
  it {should belong_to :game}
end
