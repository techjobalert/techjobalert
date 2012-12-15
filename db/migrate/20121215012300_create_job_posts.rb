class CreateJobPosts < ActiveRecord::Migration
  def change
    create_table :job_posts do |t|
      t.string :title
      t.text :description
      t.string :location
      t.string :company
      t.string :instructions

      t.timestamps
    end
  end
end
