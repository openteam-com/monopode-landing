class MetaDescription < ActiveRecord::Base
  has_attached_file :og_image, :storage => :elvfs, :elvfs_url => Settings['storage.url']
end
