class AddVideoScoresToUsers < ActiveRecord::Migration
  def change
    add_column :users, :video1_score, :integer
    add_column :users, :video1_ans_score, :integer
    add_column :users, :video2_score, :integer
    add_column :users, :video3_score, :integer
  end
end
