class WelcomeController < ApplicationController
  def index
    @welcome_message = "Welcome to this intro website"
    render :index
  end

  def special_message
    @special_message = "Welcome to this intro website, #{params[:name]}"
    render :special_message
  end

  def lorium
    user_input = "#{params[:lorium_type]}"
    if user_input == "standard"
      @lorium = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse rutrum fermentum ligula ut commodo. Mauris volutpat elit ac tempor suscipit. Suspendisse consectetur ipsum vitae suscipit vehicula. Morbi eu tellus ultricies mi aliquet dapibus ut rhoncus nisi. Donec eu tellus dapibus ligula placerat feugiat. In hac habitasse platea dictumst. Cras sagittis diam eu consectetur cursus. Nunc eleifend et tellus a finibus. Donec ultrices odio non nisl dictum suscipit. Duis dapibus convallis erat, id lobortis risus volutpat eget. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Morbi rutrum gravida mi a efficitur. Nam efficitur justo nibh, a varius augue suscipit vitae. Donec a luctus diam. Praesent ornare eros quis turpis mollis, quis dictum turpis vulputate. Etiam metus dui, auctor ut arcu a, tempor suscipit urna."
    elsif user_input == "arrested"
      @lorium = "I need a fake passport, preferably to France… I like the way they think. Michael, look, this has got to stop. I mean, flattered? Yes. Interested? Not tonight. You're Killing Me, Buster. I'll have a vodka rocks. (Mom, it's breakfast time.) And a piece of toast. Say something that will terrify me. Lindsay: F*** me. Tobias: No, that didn't do it. They're not gonna strip, right? I told them not to, but I can't guarantee their instincts won't kick in."
    else
      @lorium = "You can only choose \"standard\" or \"arrested\""
    end
  end
end
