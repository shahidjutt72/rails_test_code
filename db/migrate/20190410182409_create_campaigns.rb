class CreateCampaigns < ActiveRecord::Migration[5.2]
  def change
    create_table :campaigns do |t|
      t.string :job_id
      t.integer :status
      t.string :reference
      t.text :description

      t.timestamps
    end
  end
end
