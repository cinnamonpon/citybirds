class ChangeColumnName < ActiveRecord::Migration
  def change
  	rename_column :posts, :type, :mtype
  end
end