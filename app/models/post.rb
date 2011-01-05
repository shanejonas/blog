class Post < ActiveRecord::Base
validates_presence_of :title


  def self.search(string)
    where("title like ? or body like ?",  "%#{string.downcase}%",  "%#{string.downcase}%")
  end

end
