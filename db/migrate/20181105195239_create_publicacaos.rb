class CreatePublicacaos < ActiveRecord::Migration[5.2]
  def change
    create_table :publicacaos do |t|
      t.string :titulo
      t.date :data
      t.text :conteudo

      t.timestamps
    end
  end
end
