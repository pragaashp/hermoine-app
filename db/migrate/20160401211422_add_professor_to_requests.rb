class AddProfessorToRequests < ActiveRecord::Migration
  def change
    add_column :requests, :professor, :string
  end
end
