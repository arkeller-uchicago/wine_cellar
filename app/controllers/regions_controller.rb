class RegionsController < ApplicationController
  def index
    @regions = Region.page(params[:page]).per(10)

    render("region_templates/index.html.erb")
  end

  def show
    @wine = Wine.new
    @region = Region.find(params.fetch("id_to_display"))

    render("region_templates/show.html.erb")
  end

  def new_form
    @region = Region.new

    render("region_templates/new_form.html.erb")
  end

  def create_row
    @region = Region.new

    @region.name = params.fetch("name")

    if @region.valid?
      @region.save

      redirect_back(:fallback_location => "/regions", :notice => "Region created successfully.")
    else
      render("region_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @region = Region.find(params.fetch("prefill_with_id"))

    render("region_templates/edit_form.html.erb")
  end

  def update_row
    @region = Region.find(params.fetch("id_to_modify"))

    @region.name = params.fetch("name")

    if @region.valid?
      @region.save

      redirect_to("/regions/#{@region.id}", :notice => "Region updated successfully.")
    else
      render("region_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @region = Region.find(params.fetch("id_to_remove"))

    @region.destroy

    redirect_to("/regions", :notice => "Region deleted successfully.")
  end
end
