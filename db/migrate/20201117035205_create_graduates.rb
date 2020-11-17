class CreateGraduates < ActiveRecord::Migration[5.2]
  def change
    create_table :graduates do |t|
      t.string :first_name
      t.string :last_name
      t.string :city
      t.string :state
      t.string :title
      t.string :company
      t.string :software

      t.timestamps
    end
  end
end
