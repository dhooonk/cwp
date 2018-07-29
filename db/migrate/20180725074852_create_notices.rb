class CreateNotices < ActiveRecord::Migration[5.1]
  def change
    create_table :notices do |t|
      t.string :title
      t.string :content
      t.string :user_name
      t.belongs_to :user
      t.timestamps
    end
  end
end
