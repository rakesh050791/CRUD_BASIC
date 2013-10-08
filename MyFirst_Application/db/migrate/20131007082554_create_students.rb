class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :title
      t.string :first_name
      t.string :last_name
      t.string :age
      t.string :stream
      t.text :Address
      t.text :description

      t.timestamps
    end
  end
end
