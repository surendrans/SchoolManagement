class SubCastsController < ApplicationController
  def index
    @sub_casts = SubCast.all
  end

  def show
    @sub_cast = SubCast.find(params[:id])
  end

  def new
    @sub_cast = SubCast.new
  end

  def create
    @sub_cast = SubCast.new(params[:sub_cast])
    if @sub_cast.save
      redirect_to @sub_cast, :notice => "Successfully created sub cast."
    else
      render :action => 'new'
    end
  end

  def edit
    @sub_cast = SubCast.find(params[:id])
  end

  def update
    @sub_cast = SubCast.find(params[:id])
    if @sub_cast.update_attributes(params[:sub_cast])
      redirect_to @sub_cast, :notice  => "Successfully updated sub cast."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @sub_cast = SubCast.find(params[:id])
    @sub_cast.destroy
    redirect_to sub_casts_url, :notice => "Successfully destroyed sub cast."
  end
end
