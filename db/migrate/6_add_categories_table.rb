class AddCategoriesTable < ActiveRecord::Migration
	def up
		create_table :refinery_calendar_categories do |t|
			t.string :title
			t.text :description
			t.integer :position

			t.timestamps
		end

		add_column :refinery_calendar_events, :category_id, :integer

	end

	def down

		drop_table :refinery_calendar_categories
		remove_column :refinery_calendar_events, :category_id

	end
end