class Image < ApplicationRecord
   has_attached_file :photo, styles: { small: "50x50>", thumb: "100x100>" }, default_url: "https://cloud.netlifyusercontent.com/assets/344dbf88-fdf9-42bb-adb4-46f01eedd629/68dd54ca-60cf-4ef7-898b-26d7cbe48ec7/10-dithering-opt.jpg"
   validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/
end
