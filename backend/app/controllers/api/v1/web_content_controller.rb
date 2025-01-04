class Api::V1::WebContentController < ApplicationController
  def index
  end
end
class Api::V1::WebContentController < ApplicationController
  def index
    render json: { message: "Hello User form World" }
  end
end
