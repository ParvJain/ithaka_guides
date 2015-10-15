class CreatePlaceActivities < ActiveRecord::Migration
    def change
        create_join_table :places, :activities, table_name: :place_activities do |t|
            t.index :place_id
            t.index :activity_id

            t.timestamps null: false
        end
    end
end
