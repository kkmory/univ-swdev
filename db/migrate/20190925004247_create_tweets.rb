class CreateTweets < ActiveRecord::Migration[5.2]
  def change
    create_table :tweets do |t|
      t.string :message, null: false
      t.datetime :tdate, null: false, default: Time.current

      t.timestamps
    end
  end
end
