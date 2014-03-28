class CreateSchema < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.string :access_level

      t.timestamps
    end

    create_table :tickets do |t|
      t.integer :client_id
      t.integer :staff_member_id
      t.string :subject
      t.string :category

      t.timestamps
    end

    create_table :messages do |t|
      t.belongs_to :ticket
      t.belongs_to :staff
      t.text :message_text

      t.timestamps
    end
  end
end
