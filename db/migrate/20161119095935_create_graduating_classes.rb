class CreateGraduatingClasses < ActiveRecord::Migration[5.0]
  def change
    create_table :graduating_classes do |t|
      t.string :class, null: false

      t.timestamps
    end
  end
end
