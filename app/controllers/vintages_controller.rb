class VintagesController < ApplicationController
  def index
    @vintages = Vintage.page(params[:page]).per(10)

    render("vintage_templates/index.html.erb")
  end

  def show
    @rating = Rating.new
    @cellar = Cellar.new
    @vintage = Vintage.find(params.fetch("id_to_display"))

    render("vintage_templates/show.html.erb")
  end

  def new_form
    @vintage = Vintage.new

    render("vintage_templates/new_form.html.erb")
  end

  def create_row
    @vintage = Vintage.new

    @vintage.year = params.fetch("year")

    if @vintage.valid?
      @vintage.save

      redirect_back(:fallback_location => "/vintages", :notice => "Vintage created successfully.")
    else
      render("vintage_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @vintage = Vintage.find(params.fetch("prefill_with_id"))

    render("vintage_templates/edit_form.html.erb")
  end

  def update_row
    @vintage = Vintage.find(params.fetch("id_to_modify"))

    @vintage.year = params.fetch("year")

    if @vintage.valid?
      @vintage.save

      redirect_to("/vintages/#{@vintage.id}", :notice => "Vintage updated successfully.")
    else
      render("vintage_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @vintage = Vintage.find(params.fetch("id_to_remove"))

    @vintage.destroy

    redirect_to("/vintages", :notice => "Vintage deleted successfully.")
  end
end
