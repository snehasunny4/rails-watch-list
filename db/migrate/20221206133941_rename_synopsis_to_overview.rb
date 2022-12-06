class RenameSynopsisToOverview < ActiveRecord::Migration[7.0]
  def change
    rename_column :movies, :synopsis, :overview
  end
end
