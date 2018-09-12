require 'openssl'

class NodesController < ApplicationController
  before_action :set_node, only: [:show, :edit, :update, :destroy]

  # GET /nodes
  # GET /nodes.json
  def index
    @nodes = Node.all
  end

  # GET /nodes/1
  # GET /nodes/1.json
  def show
    data_first = @node.data.gsub('NHhLdDMw', '')
    data_second = data_first.gsub('QS9MMkwwK1RFZjMyOFJNRXRkZ2VJY1o3aGtwaC9Wb0wv', '')
    @data = eval(data_second)
  end

  # GET /nodes/new
  def new
    @node = Node.new
  end

  # GET /nodes/1/edit
  def edit
  end

  # POST /nodes
  # POST /nodes.json
  def create
    data_hash = {
      owner_id: node_params['owner_id'],
      owner_name: node_params['owner_name'],
      value: node_params['value']
    }


    data = data_hash.to_s
    @node = Node.new(data: data.gsub!(/\s+/, ''))

    respond_to do |format|
      if @node.save
        format.html { redirect_to @node, notice: 'Node was successfully created.' }
        format.json { render :show, status: :created, location: @node }
      else
        format.html { render :new }
        format.json { render json: @node.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nodes/1
  # PATCH/PUT /nodes/1.json
  def update
    data_hash = {
      owner_id: node_params['owner_id'],
      owner_name: node_params['owner_name'],
      value: node_params['value']
    }


    data =  data_hash.to_s
    respond_to do |format|
      if @node.update(data: data)
        format.html { redirect_to @node, notice: 'Node was successfully updated.' }
        format.json { render :show, status: :ok, location: @node }
      else
        format.html { render :edit }
        format.json { render json: @node.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nodes/1
  # DELETE /nodes/1.json
  def destroy
    @node.destroy
    respond_to do |format|
      format.html { redirect_to nodes_url, notice: 'Node was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_node
      @node = Node.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def node_params
      params.require(:node).permit(:owner_id, :owner_name, :value)
    end
end
