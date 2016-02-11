class GroupComponentsController < ApplicationController
  before_action :set_group_component, only: [:show, :edit, :update, :destroy]

  # GET /group_components
  # GET /group_components.json
  def index
    @group_components = GroupComponent.all
  end

  # GET /group_components/1
  # GET /group_components/1.json
  def show
  end

  # GET /group_components/new
  def new
    @group_component = GroupComponent.new
  end

  # GET /group_components/1/edit
  def edit
  end

  # POST /group_components
  # POST /group_components.json
  def create
    @group_component = GroupComponent.new(:user_id => current_user.id,
                                          :name => group_component_params[:name],
                                          :description => group_component_params[:description],
                                          :enable => group_component_params[:enable])

    respond_to do |format|
      if @group_component.save
        format.html { redirect_to @group_component, notice: 'Group component was successfully created.' }
        format.json { render :show, status: :created, location: @group_component }
      else
        format.html { render :new }
        format.json { render json: @group_component.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /group_components/1
  # PATCH/PUT /group_components/1.json
  def update
    respond_to do |format|
      if @group_component.update(group_component_params)
        format.html { redirect_to @group_component, notice: 'Group component was successfully updated.' }
        format.json { render :show, status: :ok, location: @group_component }
      else
        format.html { render :edit }
        format.json { render json: @group_component.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /group_components/1
  # DELETE /group_components/1.json
  def destroy
    @group_component.destroy
    respond_to do |format|
      format.html { redirect_to group_components_url, notice: 'Group component was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group_component
      @group_component = GroupComponent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def group_component_params
      params.require(:group_component).permit(:name, :description, :enable)
    end
end
