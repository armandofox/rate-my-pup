#Iter 2-2 Added table for attachment (By Gung Hiu Ho, Licong Wang)
class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :attachments do |t|
      t.attachment :document
    end
  end
end