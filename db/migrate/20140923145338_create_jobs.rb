class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :title
      t.integer :category
      t.string :headquarters
      t.text :description
      t.text :how_to_apply
      t.string :company_name
      t.string :company_email
      t.string :company_url
      t.string :company_logo_url

      t.timestamps
    end
  end
end
