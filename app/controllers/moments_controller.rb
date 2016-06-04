class MomentsController < ApplicationController

  # GET /moments
  # GET /moments.json
  def index
    @moments = Moment.all
  end

  # GET /moments/1
  # GET /moments/1.json
  def show
    @moment = Moment.find_by_link(params[:id])
    respond_to do |format|
      if @moment.nil?
        format.html { render status: 404, plain: "Not found" }
        format.json { render status: 404, json: "Not found" }
      else
        format.html { render :show, location: @moment, layout: false }
        format.json { render json: @moment }
      end
    end
  end
end
