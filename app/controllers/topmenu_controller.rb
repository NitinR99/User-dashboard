class TopmenuController < SessionsController

def home
  render :home
end

def messages
  render :messages
end

def friends
  render :friends
end


end