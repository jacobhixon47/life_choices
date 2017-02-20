class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.column :option_one, :string
      t.column :option_two, :string
      t.column :chose_one, :integer
      t.column :chose_two, :integer

      t.timestamps
    end
  end
end
