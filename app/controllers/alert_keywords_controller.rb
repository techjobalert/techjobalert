class AlertKeywordsController < ApplicationController
  # GET /alert_keywords
  # GET /alert_keywords.json
  def index
    @alert_keywords = AlertKeyword.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @alert_keywords }
    end
  end

  # GET /alert_keywords/1
  # GET /alert_keywords/1.json
  def show
    @alert_keyword = AlertKeyword.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @alert_keyword }
    end
  end

  # GET /alert_keywords/new
  # GET /alert_keywords/new.json
  def new
    @alert_keyword = AlertKeyword.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @alert_keyword }
    end
  end

  # GET /alert_keywords/1/edit
  def edit
    @alert_keyword = AlertKeyword.find(params[:id])
  end

  # POST /alert_keywords
  # POST /alert_keywords.json
  def create
    @alert_keyword = AlertKeyword.new(alert_keyword_params)

    respond_to do |format|
      if @alert_keyword.save
        format.html { redirect_to @alert_keyword, notice: 'Alert keyword was successfully created.' }
        format.json { render json: @alert_keyword, status: :created, location: @alert_keyword }
      else
        format.html { render action: "new" }
        format.json { render json: @alert_keyword.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alert_keywords/1
  # PATCH/PUT /alert_keywords/1.json
  def update
    @alert_keyword = AlertKeyword.find(params[:id])

    respond_to do |format|
      if @alert_keyword.update_attributes(alert_keyword_params)
        format.html { redirect_to @alert_keyword, notice: 'Alert keyword was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @alert_keyword.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alert_keywords/1
  # DELETE /alert_keywords/1.json
  def destroy
    @alert_keyword = AlertKeyword.find(params[:id])
    @alert_keyword.destroy

    respond_to do |format|
      format.html { redirect_to alert_keywords_url }
      format.json { head :no_content }
    end
  end

  private

    # Use this method to whitelist the permissible parameters. Example:
    # params.require(:person).permit(:name, :age)
    # Also, you can specialize this method with per-user checking of permissible attributes.
    def alert_keyword_params
      params.require(:alert_keyword).permit(:value)
    end
end
