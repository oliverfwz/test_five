class CreateSchoolUsers < ActiveRecord::Migration
  def change
    create_table :school_users do |t|
    	t.references :school, index: true
    	t.references :user, index: true
    end
  end
end
