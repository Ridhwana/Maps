class LinksController < ApplicationController

  def new
    @link = Link.new(:folder_id => params[:folder_id])
    puts "NEW link"
  end

  def create
    @link = Link.new(params[:link])
    if @link.save
      flash[:notice] = "Successfully created file."
      redirect_to @link.folder
    else
      render :action => 'new'
    end
  end

  def edit
    @link = Link.find(params[:id])
  end

  def update
    @link = Link.find(params[:id])
    if @link.update_attributes(params[:link])
      flash[:notice] = "Successfully updated file."
      redirect_to @link.folder
    else
      render :action => 'edit'
    end
  end

  def destroy
    @link = Link.find(params[:id])
    @link.destroy
    flash[:notice] = "Successfully destroyed file."
    redirect_to @link.folder
  end

end
