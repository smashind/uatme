class AddReferencesToItems < ActiveRecord::Migration[5.0]
  def change
    add_reference :items, :section, index: true
    add_foreign_key :items, :sections
  end
end
