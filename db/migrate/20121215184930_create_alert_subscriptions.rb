class CreateAlertSubscriptions < ActiveRecord::Migration
  def change
    create_table :alert_subscriptions do |t|
      t.belongs_to :alert_keyword
      t.string :frequency
      t.belongs_to :user

      t.timestamps
    end
    add_index :alert_subscriptions, :alert_keyword_id
    add_index :alert_subscriptions, :user_id
  end
end
