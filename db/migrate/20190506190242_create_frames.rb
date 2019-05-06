class CreateFrames < ActiveRecord::Migration[5.2]
  def change
    create_table :frames do |t|
      t.integer :frame_no
      t.integer :ball_one_pins, default: 0
      t.integer :ball_two_pins, default: 0
      t.integer :ball_three_pins, default: 0
      t.integer :score, default: 0
      t.references :player, foreign_key: true

      t.timestamps
    end
  end
end
