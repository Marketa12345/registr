class Subject < ActiveRecord::Base

#attr_accessible :image, :remote_image_url
mount_uploader :image, ImageUploader

 def user_params
      params.require(:subject).permit(:image, :remote_image_url)
    end
end
