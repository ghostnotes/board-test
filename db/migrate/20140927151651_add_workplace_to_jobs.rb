class AddWorkplaceToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :workplace, :string, after: :headquarters
  end
end
