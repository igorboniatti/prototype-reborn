class CreateArquivos < ActiveRecord::Migration[5.2]
  def change
    create_table :arquivos do |t|
      t.string :titulo
      t.attachment :arq

      t.timestamps
    end
  end
end
