class CreateBooksTags < ActiveRecord::Migration[5.1]
  def change
    create_table :books_tags do |t|
      t.belongs_to :book
      t.belongs_to :tag
    end
  end
end
