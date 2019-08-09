class ProducersController < ApplicationController
  def index
    @producers = Producer.all

    render("producer_templates/index.html.erb")
  end

  def show
    @producer = Producer.find(params.fetch("id_to_display"))

    render("producer_templates/show.html.erb")
  end

  def new_form
    @producer = Producer.new

    render("producer_templates/new_form.html.erb")
  end

  def create_row
    @producer = Producer.new

    @producer.name = params.fetch("name")

    if @producer.valid?
      @producer.save

      redirect_back(:fallback_location => "/producers", :notice => "Producer created successfully.")
    else
      render("producer_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @producer = Producer.find(params.fetch("prefill_with_id"))

    render("producer_templates/edit_form.html.erb")
  end

  def update_row
    @producer = Producer.find(params.fetch("id_to_modify"))

    @producer.name = params.fetch("name")

    if @producer.valid?
      @producer.save

      redirect_to("/producers/#{@producer.id}", :notice => "Producer updated successfully.")
    else
      render("producer_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @producer = Producer.find(params.fetch("id_to_remove"))

    @producer.destroy

    redirect_to("/producers", :notice => "Producer deleted successfully.")
  end
end
