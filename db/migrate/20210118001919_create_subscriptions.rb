class CreateSubscriptions < ActiveRecord::Migration[6.0]
  def change
    create_table :subscriptions do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.string :stripe_id
      t.string :stripe_plan
      t.string :status
      t.datetime :trails_ends_at
      t.datetime :ends_at
      t.integer :quantity

      t.timestamps
    end
  end
end
