class CreateFlairs < ActiveRecord::Migration[6.0]
  def change
    create_table :flairs do |t|
      t.string :team
      t.date :found
      t.text :reason
      t.string :source

      t.timestamps
    end
  end
end
