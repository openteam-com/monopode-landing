class MetaDescription < ActiveRecord::Base
  has_attached_file :og_image, :storage => :elvfs, :elvfs_url => Settings['storage.url']
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
#  action_text           :string(255)
#  action_discount       :string(255)
#
