class CreateAlertKeywords < ActiveRecord::Migration
  def change
    create_table :alert_keywords do |t|
      t.string :value

      t.timestamps
    end
  end
end
