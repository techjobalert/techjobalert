class AlertSubscriptionsController < ApplicationController
  # GET /alert_subscriptions
  # GET /alert_subscriptions.json
  def index
    @alert_subscriptions = AlertSubscription.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @alert_subscriptions }
    end
  end

  # GET /alert_subscriptions/1
  # GET /alert_subscriptions/1.json
  def show
    @alert_subscription = AlertSubscription.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @alert_subscription }
    end
  end

  # GET /alert_subscriptions/new
  # GET /alert_subscriptions/new.json
  def new
    @alert_subscription = AlertSubscription.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @alert_subscription }
    end
  end

  # GET /alert_subscriptions/1/edit
  def edit
    @alert_subscription = AlertSubscription.find(params[:id])
  end

  # POST /alert_subscriptions
  # POST /alert_subscriptions.json
  def create
    @alert_subscription = AlertSubscription.new(alert_subscription_params)

    respond_to do |format|
      if @alert_subscription.save
        format.html { redirect_to @alert_subscription, notice: 'Alert subscription was successfully created.' }
        format.json { render json: @alert_subscription, status: :created, location: @alert_subscription }
      else
        format.html { render action: "new" }
        format.json { render json: @alert_subscription.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alert_subscriptions/1
  # PATCH/PUT /alert_subscriptions/1.json
  def update
    @alert_subscription = AlertSubscription.find(params[:id])

    respond_to do |format|
      if @alert_subscription.update_attributes(alert_subscription_params)
        format.html { redirect_to @alert_subscription, notice: 'Alert subscription was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @alert_subscription.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alert_subscriptions/1
  # DELETE /alert_subscriptions/1.json
  def destroy
    @alert_subscription = AlertSubscription.find(params[:id])
    @alert_subscription.destroy

    respond_to do |format|
      format.html { redirect_to alert_subscriptions_url }
      format.json { head :no_content }
    end
  end

  private

    # Use this method to whitelist the permissible parameters. Example:
    # params.require(:person).permit(:name, :age)
    # Also, you can specialize this method with per-user checking of permissible attributes.
    def alert_subscription_params
      params.require(:alert_subscription).permit(:alert_keyword, :frequency, :user)
    end
end
