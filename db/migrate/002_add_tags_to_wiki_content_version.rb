class AddTagsToWikiContentVersion < ActiveRecord::Migration[4.2]
  def self.up
    add_column :wiki_content_versions, :tags, :text, array: true, default: []
  end

  def self.down
    remove_column :wiki_content_versions, :tags
  end
end
