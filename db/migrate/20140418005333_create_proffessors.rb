class CreateProffessors < ActiveRecord::Migration
  def change
  		create_table :professors do |t|
  		t.string	:name
  		t.string	:subject_id
  	end
  end
end
