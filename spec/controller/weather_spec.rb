# frozen_string_literal: true

require "rails_helper"

RSpec.describe WeatherController, type: :controller do
  describe "today" do
    example "Todayがレスポンスを返す" do
      get :today
      expect(response).to be_successful
    end
  end

  describe "tomorrow" do
    example "Tomorrowがレスポンスを返す" do
      get :tomorrow
      expect(response).to be_successful
    end
  end

  describe "update" do
    example "updateが正常にリダイレクトする" do
      patch :update, params: {
        locate: { id: "1850147" }
      }
      expect(response).to be_redirect
    end
  end
end
