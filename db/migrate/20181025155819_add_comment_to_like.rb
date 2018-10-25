class AddCommentToLike < ActiveRecord::Migration[5.2]
  def change
    add_reference :likes, :content, polymorphic: true, index: true
    remove_column :likes, :gossip_id
  end
end
