class CreateLogs < ActiveRecord::Migration
  def change
  	execute "create extension hstore"
    create_table :logs do |t|
      t.string :session
      t.string :event
      t.date :time
      t.hstore :parameters

      t.timestamps
    end
  end
end
