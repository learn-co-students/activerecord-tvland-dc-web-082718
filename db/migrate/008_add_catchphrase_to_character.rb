class AddCatchPhraseToCharacter< ActiveRecord::Migration[4.2]
  def change
    add column :character, :catchphrase, :text
  end
end
