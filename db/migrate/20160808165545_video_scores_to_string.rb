class VideoScoresToString < ActiveRecord::Migration
  def change
  	
  	change_column :users, :video1_score, :string
    change_column :users, :video1_ans_score, :string
    change_column :users, :video2_score, :string
    change_column :users, :video3_score, :string

  end
end
