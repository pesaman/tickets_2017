class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def hello
    def hello
    render html: "hello, world!"
    end
  end
  
  def help
  end

  def about
  end
end
