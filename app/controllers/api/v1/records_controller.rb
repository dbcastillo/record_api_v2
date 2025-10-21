module Api
  module V1
    class RecordsController < ApplicationController
      before_action :set_record, only: [:show, :update, :destroy]

      def index
        render json: Record.all
      end

      def show
        render json: @record
      end

      def create
        record = Record.new(record_params)
        if record.save
          render json: record, status: :created
        else
          render json: { errors: record.errors.full_messages }, status: :unprocessable_entity
        end
      end

      def update
        if @record.update(record_params)
          render json: @record
        else
          render json: { errors: @record.errors.full_messages }, status: :unprocessable_entity
        end
      end

      def destroy
        @record.destroy
        head :no_content
      end

      private

      def set_record
        @record = Record.find(params[:id])
      end

      def record_params
        params.require(:record).permit(:album, :artist, :year, :price, :cover)
      end
    end
  end
end
