require_dependency "stripe/application_controller"

module Stripe
  class PaymentsController < ApplicationController
    before_action :set_payment, only: [:pay,:show, :edit, :update, :destroy]

    # GET /payments
    def index
      @payments = Payment.all
    end

    # GET /payments/1
    def show
    end

		def pay
			@payment.pay!
			redirect_to @payment.callback
		end

    # GET /payments/new
    def new
      @payment = Payment.new
			@payment.context = params[:context]
			@payment.amount = params[:amount]
			@payment.callback = params[:callback]
			@payment.save
			redirect_to @payment
    end

    # GET /payments/1/edit
    def edit
    end

    # POST /payments
    def create
      @payment = Payment.new(payment_params)

      if @payment.save
        redirect_to @payment, notice: 'Payment was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /payments/1
    def update
      if @payment.update(payment_params)
        redirect_to @payment, notice: 'Payment was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /payments/1
    def destroy
      @payment.destroy
      redirect_to payments_url, notice: 'Payment was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_payment
        @payment = Payment.find(params[:id])
      end

      # Only allow a list of trusted parameters through.
      def payment_params
        params.require(:payment).permit(:context, :amount)
      end
  end
end
