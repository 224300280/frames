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

require 'spec_helper'

describe Asset do
  pending "add some examples to (or delete) #{__FILE__}"
end
