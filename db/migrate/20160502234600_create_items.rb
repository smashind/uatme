class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.text :content
      t.belongs_to :doc, foreign_key: true, index: true

      t.timestamps
    end
  end
end
