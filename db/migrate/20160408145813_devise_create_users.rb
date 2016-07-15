class DeviseCreateUsers < ActiveRecord::Migration
  def change
    create_table(:users) do |t|
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip

      #Confirmable
      t.string   :confirmation_token
      t.datetime :confirmed_at
      t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at

      t.string :name
      t.integer :age
      t.string :gender
      t.string :cellphone
      t.string :city
      t.string :ocupation
      t.text :no_contract_activities
      t.string :felixibility_importance
      t.string :need_income
      t.string :current_income
      t.text :achievement
      t.integer :achievement_acomplishment
      t.text :achievement_company
      t.text :achievement_boss
      t.text :achievement_phone
      t.text :hobby
      t.integer :hobby_time
      t.boolean :hobby_validate
      t.string :special_experience
      t.integer :work_hours
      t.integer :work_days
      t.text :personal_achievement
      t.text :story
      t.string :pc_type
      t.string :pc_use
      t.string :internet_speed
      t.string :can_talk
      t.string :workplace
      t.string :comfort
      t.integer :role
      t.integer :form_score
      t.string :video1
      t.string :video2
      t.string :video3
      t.string :video_ans1
      t.string :video_ans2
      t.string :video_ans3
      t.string :active
      t.integer :fase
      t.boolean :video_done
      t.string :approved
      t.boolean :rejected
      t.string :time_count
      t.timestamps null: false
    end

    add_index :users, :email,                unique: true
    add_index :users, :reset_password_token, unique: true
    # add_index :users, :confirmation_token,   unique: true
    # add_index :users, :unlock_token,         unique: true
  end
end
