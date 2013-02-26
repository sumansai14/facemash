class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :content
      t.integer :sender
      t.integer :reciever

      t.timestamps
    end
  end
end
