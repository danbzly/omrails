class Pin < ActiveRecord::Base
  attr_accessible :description, :image, :image_remote_url


  validates :description, presence: true 
  validates :user_id, presence: true
  validates_attachment :image, presence: true,
  								content_type: {content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif', 'image/pdf'] },
  								size: {less_than: 100.megabytes}
    

  belongs_to :user
  has_attached_file :image, styles: { medium: "320x240>"}


  def image_remote_url=(url_value)
    self.image = URI.parse(url_value) unless url_value.blank?
    super  
  end




  #require 'open-uri'

  #attr_accessible :image_url
  
  #attr_accessor :image_url
  
  #attr_accessible :image_remote_url
  
  
  #before_validation :download_remote_image, :if => :image_url_provided?

  #validates_presence_of :image_remote_url, :if => :image_url_provided?, :message => 'is invalid or inaccessible'
    
#private
  
  #def image_url_provided?
  #end
  
  #def download_remote_image
   # self.image = do_download_remote_image
   # self.image_remote_url = image_url
 # end
  
 # def do_download_remote_image
  #  io = open(URI.parse(image_url))
  #  def io.original_filename; base_uri.path.split('/').last; end
  #  io.original_filename.blank? ? nil : io
  #rescue # catch url errors with validations instead of exceptions (Errno::ENOENT, OpenURI::HTTPError, etc...)
 # end
end
