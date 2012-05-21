class AddPropertiesToMachines < ActiveRecord::Migration
  def up
    execute "CREATE INDEX machines_properties ON machines USING GIN( properties )"
  end

  def down
  	execute "DROP INDEX machines_properties"
  end
end
