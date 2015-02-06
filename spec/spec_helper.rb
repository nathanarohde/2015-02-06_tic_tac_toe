ENV['RACK_ENV'] = 'test'

require('bundler/setup')
Bundler.require(:default, :test)

Dir[File.dirname(__FILE__) + '/../lib/*.rb'].each {|file| require file}

RSpec.configure do |config|
  config.after(:each) do
    Board.all.each do |board|
      board.destroy
    end
    Game.all.each do |game|
      game.destroy
    end
    Player.all.each do |player|
      player.destroy
    end
    Space.all.each do |space|
      space.destroy
    end
  end
end
