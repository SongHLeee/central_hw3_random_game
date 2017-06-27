class HomeController < ApplicationController
  def index
    animals = ["사자", "기린","토끼","침팬지","티라노 사우르스","개", "나비","박쥐","코뿔소","코끼리", "닭","낙타","쥐","타조","낙지","고래","가오리"]
    @pickAction = animals.sample(1)
    @pickVoice = animals.sample(1)
    
    if @pickVoice != @pickAction
      @pickVoice = animals.sample(1)
    else
      return @pickVoice
    end
    
  end
end
