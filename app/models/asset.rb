# == Schema Information
#
# Table name: assets
#
#  id                 :integer         not null, primary key
#  asset_file_name    :string(255)
#  asset_content_type :string(255)
#  asset_file_size    :integer
#  asset_updated_at   :datetime
#  user_id            :integer
#  created_at         :datetime
#  updated_at         :datetime
#

class Asset < ActiveRecord::Base
  
  belongs_to :user
  has_attached_file :asset, :styles => {
                        :thumb => '100x100#',
                        :small => '240x240>',
                        :medium => '400x400>',
                        :large => '600x600>'
                    }
  validates_attachment_presence :asset
  
                            
  default_scope :order => 'assets.created_at DESC'
  
end
