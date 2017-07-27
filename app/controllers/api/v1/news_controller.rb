class Api::V1::NewsController < ApplicationController
  before_action :ensure_signed_in

  def index
    render json: news_filter.get
  end

  private

  def news_filter
    @news_filter ||= NewsFilter.new(params[:type], params[:sub_type])
  end
end
