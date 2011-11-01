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
                        :small => '240x161>',
                        :medium => '640x428>',
                        :large => '920x685>'
                    }
  validates_attachment_presence :asset
  
                            
  default_scope :order => 'assets.created_at DESC'
  
  # Return assets from the users being followed by the given user.
  scope :from_users_followed_by, lambda { |user| followed_by(user) }
  

  
  private

      # Return an SQL condition for users followed by the given user.
      # We include the user's own id as well.
      def self.followed_by(user)
            following_ids = %(SELECT followed_id FROM relationships
                              WHERE follower_id = :user_id)
            where("user_id IN (#{following_ids})",
                  { :user_id => user })
          end
  
end
