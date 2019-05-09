class RenameColumnFrameNoToFrameNumber < ActiveRecord::Migration[5.2]
  def change
  	rename_column :frames, :frame_no, :frame_number
  end
end
