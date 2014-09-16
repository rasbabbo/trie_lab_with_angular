class CreateTrieWords < ActiveRecord::Migration
  def change
    create_table :trie_words do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
