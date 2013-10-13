class FoldersController < ApplicationController
  def index
    @folders = Folder.all
  end

  def show
    @folder = Folder.find(params[:id])
  end

  def new
    @folder = Folder.new
  end

  def create
    @folder = Folder.new(params[:folder])
    if @folder.save
      flash[:notice] = "Successfully created folder."
      redirect_to @folder
    else
      render :action => 'new'
    end
  end

  def edit
    @folder = Folder.find(params[:id])
  end

  def update
    @folder = Folder.find(params[:id])
    if @folder.update_attributes(params[:folder])
      flash[:notice] = "Successfully updated folder."
      redirect_to folder_url
    else
      render :action => 'edit'
    end
  end

  def destroy
    @folder = Folder.find(params[:id])
    @folder.destroy
    flash[:notice] = "Successfully destroyed Folder."
    redirect_to folders_url
  end
end
