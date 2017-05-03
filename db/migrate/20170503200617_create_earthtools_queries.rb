class CreateEarthtoolsQueries < ActiveRecord::Migration[5.0]
  def change
    create_table :earthtools_queries do |t|
      t.string :session_id, null: false
      t.decimal :lat, precision: 10, scale: 6, null: false
      t.decimal :lon, precision: 10, scale: 6, null: false
      t.text :response, null: false
      t.timestamps
    end
  end
end
