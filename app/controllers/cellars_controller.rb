class CellarsController < ApplicationController
  before_action :current_user_must_be_cellar_user, :only => [:edit_form, :update_row, :destroy_row]

  def current_user_must_be_cellar_user
    cellar = Cellar.find(params["id_to_display"] || params["prefill_with_id"] || params["id_to_modify"] || params["id_to_remove"])

    unless current_user == cellar.user
      redirect_to :back, :alert => "You are not authorized for that."
    end
  end

  def index
    @cellars = Cellar.page(params[:page]).per(10)

    render("cellar_templates/index.html.erb")
  end

  def show
    @cellar = Cellar.find(params.fetch("id_to_display"))

    render("cellar_templates/show.html.erb")
  end

  def new_form
    @cellar = Cellar.new

    render("cellar_templates/new_form.html.erb")
  end

  def create_row
    @cellar = Cellar.new

    @cellar.user_id = params.fetch("user_id")
    @cellar.wine_id = params.fetch("wine_id")
    @cellar.transactions_id = params.fetch("transactions_id")
    @cellar.amount = params.fetch("amount")
    @cellar.vitage_id = params.fetch("vitage_id")
    @cellar.remark = params.fetch("remark")
    @cellar.size_id = params.fetch("size_id")
    @cellar.trans_date = params.fetch("trans_date")

    if @cellar.valid?
      @cellar.save

      redirect_back(:fallback_location => "/cellars", :notice => "Cellar created successfully.")
    else
      render("cellar_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_wine
    @cellar = Cellar.new

    @cellar.user_id = params.fetch("user_id")
    @cellar.wine_id = params.fetch("wine_id")
    @cellar.transactions_id = params.fetch("transactions_id")
    @cellar.amount = params.fetch("amount")
    @cellar.vitage_id = params.fetch("vitage_id")
    @cellar.remark = params.fetch("remark")
    @cellar.size_id = params.fetch("size_id")
    @cellar.trans_date = params.fetch("trans_date")

    if @cellar.valid?
      @cellar.save

      redirect_to("/wines/#{@cellar.wine_id}", notice: "Cellar created successfully.")
    else
      render("cellar_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_vintage
    @cellar = Cellar.new

    @cellar.user_id = params.fetch("user_id")
    @cellar.wine_id = params.fetch("wine_id")
    @cellar.transactions_id = params.fetch("transactions_id")
    @cellar.amount = params.fetch("amount")
    @cellar.vitage_id = params.fetch("vitage_id")
    @cellar.remark = params.fetch("remark")
    @cellar.size_id = params.fetch("size_id")
    @cellar.trans_date = params.fetch("trans_date")

    if @cellar.valid?
      @cellar.save

      redirect_to("/vintages/#{@cellar.vitage_id}", notice: "Cellar created successfully.")
    else
      render("cellar_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_bottle_size
    @cellar = Cellar.new

    @cellar.user_id = params.fetch("user_id")
    @cellar.wine_id = params.fetch("wine_id")
    @cellar.transactions_id = params.fetch("transactions_id")
    @cellar.amount = params.fetch("amount")
    @cellar.vitage_id = params.fetch("vitage_id")
    @cellar.remark = params.fetch("remark")
    @cellar.size_id = params.fetch("size_id")
    @cellar.trans_date = params.fetch("trans_date")

    if @cellar.valid?
      @cellar.save

      redirect_to("/bottle_sizes/#{@cellar.size_id}", notice: "Cellar created successfully.")
    else
      render("cellar_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_transaction
    @cellar = Cellar.new

    @cellar.user_id = params.fetch("user_id")
    @cellar.wine_id = params.fetch("wine_id")
    @cellar.transactions_id = params.fetch("transactions_id")
    @cellar.amount = params.fetch("amount")
    @cellar.vitage_id = params.fetch("vitage_id")
    @cellar.remark = params.fetch("remark")
    @cellar.size_id = params.fetch("size_id")
    @cellar.trans_date = params.fetch("trans_date")

    if @cellar.valid?
      @cellar.save

      redirect_to("/transactions/#{@cellar.transactions_id}", notice: "Cellar created successfully.")
    else
      render("cellar_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @cellar = Cellar.find(params.fetch("prefill_with_id"))

    render("cellar_templates/edit_form.html.erb")
  end

  def update_row
    @cellar = Cellar.find(params.fetch("id_to_modify"))

    
    @cellar.wine_id = params.fetch("wine_id")
    @cellar.transactions_id = params.fetch("transactions_id")
    @cellar.amount = params.fetch("amount")
    @cellar.vitage_id = params.fetch("vitage_id")
    @cellar.remark = params.fetch("remark")
    @cellar.size_id = params.fetch("size_id")
    @cellar.trans_date = params.fetch("trans_date")

    if @cellar.valid?
      @cellar.save

      redirect_to("/cellars/#{@cellar.id}", :notice => "Cellar updated successfully.")
    else
      render("cellar_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row_from_user
    @cellar = Cellar.find(params.fetch("id_to_remove"))

    @cellar.destroy

    redirect_to("/users/#{@cellar.user_id}", notice: "Cellar deleted successfully.")
  end

  def destroy_row_from_wine
    @cellar = Cellar.find(params.fetch("id_to_remove"))

    @cellar.destroy

    redirect_to("/wines/#{@cellar.wine_id}", notice: "Cellar deleted successfully.")
  end

  def destroy_row_from_vitage
    @cellar = Cellar.find(params.fetch("id_to_remove"))

    @cellar.destroy

    redirect_to("/vintages/#{@cellar.vitage_id}", notice: "Cellar deleted successfully.")
  end

  def destroy_row_from_size
    @cellar = Cellar.find(params.fetch("id_to_remove"))

    @cellar.destroy

    redirect_to("/bottle_sizes/#{@cellar.size_id}", notice: "Cellar deleted successfully.")
  end

  def destroy_row_from_transactions
    @cellar = Cellar.find(params.fetch("id_to_remove"))

    @cellar.destroy

    redirect_to("/transactions/#{@cellar.transactions_id}", notice: "Cellar deleted successfully.")
  end

  def destroy_row
    @cellar = Cellar.find(params.fetch("id_to_remove"))

    @cellar.destroy

    redirect_to("/cellars", :notice => "Cellar deleted successfully.")
  end
end
