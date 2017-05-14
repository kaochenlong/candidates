class CreateVoteLogs < ActiveRecord::Migration[5.1]
  def change
    create_table :vote_logs do |t|
      t.string :ip_address
      t.references :candidate, foreign_key: true

      t.timestamps
    end
  end
end
