class StandardsController < ApplicationController
  def index
    @standards = Standard.all
  end

  def show
    @standard = Standard.find(params[:id])
  end

  def new
    @standard = Standard.new
  end

  def create
    @standard = Standard.new(params[:standard])
    if @standard.save
      redirect_to @standard, :notice => "Successfully created standard."
    else
      render :action => 'new'
    end
  end

  def edit
    @standard = Standard.find(params[:id])
  end

  def update
    @standard = Standard.find(params[:id])
    if @standard.update_attributes(params[:standard])
      redirect_to @standard, :notice  => "Successfully updated standard."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @standard = Standard.find(params[:id])
    @standard.destroy
    redirect_to standards_url, :notice => "Successfully destroyed standard."
  end
end
