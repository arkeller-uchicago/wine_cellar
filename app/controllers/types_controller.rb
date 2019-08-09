class TypesController < ApplicationController
  def index
    @types = Type.all

    render("type_templates/index.html.erb")
  end

  def show
    @wine = Wine.new
    @type = Type.find(params.fetch("id_to_display"))

    render("type_templates/show.html.erb")
  end

  def new_form
    @type = Type.new

    render("type_templates/new_form.html.erb")
  end

  def create_row
    @type = Type.new

    @type.name = params.fetch("name")

    if @type.valid?
      @type.save

      redirect_back(:fallback_location => "/types", :notice => "Type created successfully.")
    else
      render("type_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @type = Type.find(params.fetch("prefill_with_id"))

    render("type_templates/edit_form.html.erb")
  end

  def update_row
    @type = Type.find(params.fetch("id_to_modify"))

    @type.name = params.fetch("name")

    if @type.valid?
      @type.save

      redirect_to("/types/#{@type.id}", :notice => "Type updated successfully.")
    else
      render("type_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @type = Type.find(params.fetch("id_to_remove"))

    @type.destroy

    redirect_to("/types", :notice => "Type deleted successfully.")
  end
end
