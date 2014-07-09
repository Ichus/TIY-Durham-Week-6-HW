class CreatePasswordResets < ActiveRecord::Migration
  def change
    create_table :password_resets do |t|
      t.string :token
      t.datetime :expires_at
      t.references :user, index: true

      t.timestamps
    end
  end
end
