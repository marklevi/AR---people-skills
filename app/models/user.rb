class User < ActiveRecord::Base
  has_many :proficiencies 
  has_many :skills, through: :proficiencies

  def proficiency_for(skill)
    zeee = User.first.proficiencies[0]
    zeee.proficiency_rating = 10 
    zeee.save

    val = Proficiency.find_by_user_id_and_skill_id(self.id,skill.id).proficiency_rating
    # p val
    
  end

  def set_proficiency_for(skill, level)

    talent = Proficiency.find_by_user_id_and_skill_id(self.id,skill.id)
    talent.proficiency_rating = level
    talent.save
    # p talent
  end


end


# assert(jesse.proficiency_for(beard_growing) == 0, " Jesse cannot grow a beard :(")
# assert(zee.proficiency_for(beard_growing) == 10, " Zee cannot grow a beard :(")
