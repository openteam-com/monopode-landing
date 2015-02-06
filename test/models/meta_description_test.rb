require 'test_helper'

class MetaDescriptionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

# == Schema Information
#
# Table name: meta_descriptions
#
#  id                    :integer          not null, primary key
#  title                 :string(255)
#  h1                    :string(255)
#  keywords              :text
#  description           :text
#  og_title              :string(255)
#  og_description        :text
#  introduction          :text
#  og_image_file_name    :string(255)
#  og_image_content_type :string(255)
#  og_image_file_size    :string(255)
#  og_image_url          :string(255)
#  created_at            :datetime
#  updated_at            :datetime
#  action_date_day       :integer
#  action_discount       :integer
#
