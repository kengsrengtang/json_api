class FooController < ApplicationController
  def show
    content = JSON.parse File.read(Rails.root.join('public/content.json'))
    render json: content[params[:id]], status: 200
  end
end
