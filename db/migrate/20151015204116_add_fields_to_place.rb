class AddFieldsToPlace < ActiveRecord::Migration
    def change
        change_table :places do |t|
            t.column "parent_id", :integer, null: true
            t.column "distance", :integer, null: true
            t.column "source_id", :integer, null: true
        end
    end
end
