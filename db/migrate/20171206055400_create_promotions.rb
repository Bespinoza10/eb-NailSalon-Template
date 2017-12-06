class CreatePromotions < ActiveRecord::Migration
  def change
    create_table :promotions do |t|
      t.string :title
      t.textarea :description
      t.boolean :modal_yes_no
      t.boolean :topbar_yes_no

      t.timestamps null: false
    end
  end
end
