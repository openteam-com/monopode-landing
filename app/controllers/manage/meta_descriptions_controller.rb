class Manage::MetaDescriptionsController < Manage::ApplicationController
  def show
    @meta_description = MetaDescription.find(params[:id])
  end

  def edit
    @meta_description = MetaDescription.find(params[:id])
  end

  def update
    @meta_description = MetaDescription.find(params[:id])
    @meta_description.update_attributes(meta_params)
    render :show
  end

  private
  def meta_params
    params.require(:meta_description).permit(:title, :h1, :keywords, :description, :og_title, :og_description, :introduction, :og_image)
  end
end
