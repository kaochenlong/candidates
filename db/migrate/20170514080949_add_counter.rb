class AddCounter < ActiveRecord::Migration[5.1]
  def change
    add_column :candidates, :vote_logs_count, :integer, default: 0
  end
end
