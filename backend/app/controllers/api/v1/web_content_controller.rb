class Api::V1::WebContentController < ApplicationController
  def index
    render json: { message: "Hello from Rails backend!" }
  end
end
