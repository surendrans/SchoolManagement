class EmpTypesController < ApplicationController
  def index
    @emp_types = EmpType.all
  end

  def show
    @emp_type = EmpType.find(params[:id])
  end

  def new
    @emp_type = EmpType.new
  end

  def create
    @emp_type = EmpType.new(params[:emp_type])
    if @emp_type.save
      redirect_to @emp_type, :notice => "Successfully created emp type."
    else
      render :action => 'new'
    end
  end

  def edit
    @emp_type = EmpType.find(params[:id])
  end

  def update
    @emp_type = EmpType.find(params[:id])
    if @emp_type.update_attributes(params[:emp_type])
      redirect_to @emp_type, :notice  => "Successfully updated emp type."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @emp_type = EmpType.find(params[:id])
    @emp_type.destroy
    redirect_to emp_types_url, :notice => "Successfully destroyed emp type."
  end
end
