class CreateJoinTablePagePage < ActiveRecord::Migration
  def change
    create_join_table :pages, :pages do |t|
      # t.index [:page_id, :page_id]
      # t.index [:page_id, :page_id]
    end

  end
end
