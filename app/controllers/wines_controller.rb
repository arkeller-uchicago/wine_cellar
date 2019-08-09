class WinesController < ApplicationController
  def index
    @q = Wine.ransack(params[:q])
    @wines = @q.result(:distinct => true).includes(:cellars, :ratings, :bottle_size, :type, :coutry, :region).page(params[:page]).per(10)

    render("wine_templates/index.html.erb")
  end

  def show
    @rating = Rating.new
    @cellar = Cellar.new
    @wine = Wine.find(params.fetch("id_to_display"))

    render("wine_templates/show.html.erb")
  end

  def new_form
    @wine = Wine.new

    render("wine_templates/new_form.html.erb")
  end

  def create_row
    @wine = Wine.new

    @wine.name = params.fetch("name")
    @wine.bottle_size_id = params.fetch("bottle_size_id")
    @wine.type_id = params.fetch("type_id")
    @wine.coutry_id = params.fetch("coutry_id")
    @wine.region_id = params.fetch("region_id")
    @wine.producer_id = params.fetch("producer_id")
    @wine.picture = params.fetch("picture") if params.key?("picture")

    if @wine.valid?
      @wine.save

      redirect_back(:fallback_location => "/wines", :notice => "Wine created successfully.")
    else
      render("wine_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_type
    @wine = Wine.new

    @wine.name = params.fetch("name")
    @wine.bottle_size_id = params.fetch("bottle_size_id")
    @wine.type_id = params.fetch("type_id")
    @wine.coutry_id = params.fetch("coutry_id")
    @wine.region_id = params.fetch("region_id")
    @wine.producer_id = params.fetch("producer_id")
    @wine.picture = params.fetch("picture") if params.key?("picture")

    if @wine.valid?
      @wine.save

      redirect_to("/types/#{@wine.bottle_size_id}", notice: "Wine created successfully.")
    else
      render("wine_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_country
    @wine = Wine.new

    @wine.name = params.fetch("name")
    @wine.bottle_size_id = params.fetch("bottle_size_id")
    @wine.type_id = params.fetch("type_id")
    @wine.coutry_id = params.fetch("coutry_id")
    @wine.region_id = params.fetch("region_id")
    @wine.producer_id = params.fetch("producer_id")
    @wine.picture = params.fetch("picture") if params.key?("picture")

    if @wine.valid?
      @wine.save

      redirect_to("/countries/#{@wine.type_id}", notice: "Wine created successfully.")
    else
      render("wine_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_region
    @wine = Wine.new

    @wine.name = params.fetch("name")
    @wine.bottle_size_id = params.fetch("bottle_size_id")
    @wine.type_id = params.fetch("type_id")
    @wine.coutry_id = params.fetch("coutry_id")
    @wine.region_id = params.fetch("region_id")
    @wine.producer_id = params.fetch("producer_id")
    @wine.picture = params.fetch("picture") if params.key?("picture")

    if @wine.valid?
      @wine.save

      redirect_to("/regions/#{@wine.coutry_id}", notice: "Wine created successfully.")
    else
      render("wine_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_producer
    @wine = Wine.new

    @wine.name = params.fetch("name")
    @wine.bottle_size_id = params.fetch("bottle_size_id")
    @wine.type_id = params.fetch("type_id")
    @wine.coutry_id = params.fetch("coutry_id")
    @wine.region_id = params.fetch("region_id")
    @wine.producer_id = params.fetch("producer_id")
    @wine.picture = params.fetch("picture") if params.key?("picture")

    if @wine.valid?
      @wine.save

      redirect_to("/producers/#{@wine.region_id}", notice: "Wine created successfully.")
    else
      render("wine_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @wine = Wine.find(params.fetch("prefill_with_id"))

    render("wine_templates/edit_form.html.erb")
  end

  def update_row
    @wine = Wine.find(params.fetch("id_to_modify"))

    @wine.name = params.fetch("name")
    @wine.bottle_size_id = params.fetch("bottle_size_id")
    @wine.type_id = params.fetch("type_id")
    @wine.coutry_id = params.fetch("coutry_id")
    @wine.region_id = params.fetch("region_id")
    @wine.producer_id = params.fetch("producer_id")
    @wine.picture = params.fetch("picture") if params.key?("picture")

    if @wine.valid?
      @wine.save

      redirect_to("/wines/#{@wine.id}", :notice => "Wine updated successfully.")
    else
      render("wine_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row_from_bottle_size
    @wine = Wine.find(params.fetch("id_to_remove"))

    @wine.destroy

    redirect_to("/types/#{@wine.bottle_size_id}", notice: "Wine deleted successfully.")
  end

  def destroy_row_from_type
    @wine = Wine.find(params.fetch("id_to_remove"))

    @wine.destroy

    redirect_to("/countries/#{@wine.type_id}", notice: "Wine deleted successfully.")
  end

  def destroy_row_from_coutry
    @wine = Wine.find(params.fetch("id_to_remove"))

    @wine.destroy

    redirect_to("/regions/#{@wine.coutry_id}", notice: "Wine deleted successfully.")
  end

  def destroy_row_from_region
    @wine = Wine.find(params.fetch("id_to_remove"))

    @wine.destroy

    redirect_to("/producers/#{@wine.region_id}", notice: "Wine deleted successfully.")
  end

  def destroy_row
    @wine = Wine.find(params.fetch("id_to_remove"))

    @wine.destroy

    redirect_to("/wines", :notice => "Wine deleted successfully.")
  end
end
