class CreateTables < ActiveRecord::Migration
  def change
    create_table(:boards) do |t|
      t.belongs_to :game

      t.timestamps
    end

    create_table(:games) do |t|
      t.timestamps
    end

    create_table(:players) do |t|
      t.belongs_to :game

      t.column(:mark, :string)
    end

    create_table(:spaces) do |t|
      t.belongs_to :board

      t.column(:x_coordinate, :integer)
      t.column(:y_coordinate, :integer)
      t.column(:mark_by, :string)
    end

    create_table(:players_spaces) do |t|
      t.belongs_to :player
      t.belongs_to :space
    end

  end
end
