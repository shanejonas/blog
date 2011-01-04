class Post < ActiveRecord::Base
validates_presence_of :title
has_many :comments

  def self.search(string)
    where("title like ?", string)
  end

end
