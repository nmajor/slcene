class Event < ActiveRecord::Base
  include Populate
  mount_uploader :image, ImageUploader
end
