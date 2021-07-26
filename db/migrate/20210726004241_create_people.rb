class CreatePeople < ActiveRecord::Migration[6.1]
  def change
    create_table :people do |t|
      t.string :f_name
      t.string :m_name
      t.string :l_name
      t.string :prefix
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.integer :zipcode
      t.string :education
      t.string :estimated_income

      t.timestamps
    end
  end
end
