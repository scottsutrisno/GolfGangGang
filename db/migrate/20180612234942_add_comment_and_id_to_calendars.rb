class AddCommentAndIdToCalendars < ActiveRecord::Migration[5.2]
  def change
    add_column :calendars, :comment, :string
    add_column :calendars, :group_id, :integer
  end
end
