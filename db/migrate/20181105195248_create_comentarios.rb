class CreateComentarios < ActiveRecord::Migration[5.2]
  def change
    create_table :comentarios do |t|
      t.date :data
      t.text :conteudo
      t.references :publicacao, foreign_key: true

      t.timestamps
    end
  end
end
