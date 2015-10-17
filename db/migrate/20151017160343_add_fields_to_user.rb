class AddFieldsToUser < ActiveRecord::Migration
    def change
        change_table :users do |t|
            t.column "admin", :boolean, default: false
            t.rename "password", "hashed_password"
        end
    end
end
