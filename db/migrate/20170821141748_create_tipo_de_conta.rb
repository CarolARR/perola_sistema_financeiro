class CreateTipoDeConta < ActiveRecord::Migration[5.1]
  def change
    create_table :tipo_de_conta do |t|
      t.string :tipoDeConta

      t.timestamps
    end
  end
end
