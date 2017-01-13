# Maintains a Friend object capable of saying hello
class Friend
  def greeting(who= nil)
    if who
      return "Hello, #{who}!"
    end
    "Hello!"
  end
end