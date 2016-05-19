class CreateSections < ActiveRecord::Migration[5.0]
  def change
    create_table :sections do |t|
      t.text :heading
      t.references :doc, foreign_key: true

      t.timestamps
    end
  end
end
