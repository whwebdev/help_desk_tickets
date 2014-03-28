class CreateSchema < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest

      t.timestamps
    end
    create_table :staff_members do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.boolean :is_admin

      t.timestamps
    end
    create_table :tickets do |t|
      t.belongs_to :customer
      t.belongs_to :staff_member
      t.string :subject
      t.string :category
      t.text :message

      t.timestamps
    end
    create_table :messages do |t|
      t.belongs_to :ticket
      t.text :message_text

      t.timestamps
    end
  end
end
