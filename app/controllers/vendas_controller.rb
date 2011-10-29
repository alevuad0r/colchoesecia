class VendasController < ApplicationController
  # GET /vendas
  # GET /vendas.json
  def index
    @vendas = Venda.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @vendas }
    end
  end

  # GET /vendas/1
  # GET /vendas/1.json
  def show
    @venda = Venda.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @venda }
    end
  end

  # GET /vendas/new
  # GET /vendas/new.json
  def new
    @venda = Venda.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @venda }
    end
  end

  # GET /vendas/1/edit
  def edit
    @venda = Venda.find(params[:id])
  end

  # POST /vendas
  # POST /vendas.json
  def create
    @venda = Venda.new(params[:venda])

    respond_to do |format|
      if @venda.save
        format.html { redirect_to @venda, notice: 'Venda was successfully created.' }
        format.json { render json: @venda, status: :created, location: @venda }
      else
        format.html { render action: "new" }
        format.json { render json: @venda.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /vendas/1
  # PUT /vendas/1.json
  def update
    @venda = Venda.find(params[:id])

    respond_to do |format|
      if @venda.update_attributes(params[:venda])
        format.html { redirect_to @venda, notice: 'Venda was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @venda.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vendas/1
  # DELETE /vendas/1.json
  def destroy
    @venda = Venda.find(params[:id])
    @venda.destroy

    respond_to do |format|
      format.html { redirect_to vendas_url }
      format.json { head :ok }
    end
  end
end
