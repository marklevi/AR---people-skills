class Skill < ActiveRecord::Base
  validates :name, uniqueness: true

  has_many :proficiencies
  has_many :users, through: :proficiencies 


  def user_with_proficiency(level)
    # p User.all
    # p Skill.all 
    # p Proficiency.all
    user = User.find(Proficiency.find_by_proficiency_rating(level).user_id)
    # return user
  end

  
end
