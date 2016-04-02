class RenameClassColumn < ActiveRecord::Migration
  def change
    rename_column :requests, :class, :request_class
  end
end
