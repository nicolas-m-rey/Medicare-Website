class QuoteController < ApplicationController
  before_action :set_quote, only: %i[ show edit update destroy ]

  # GET /quote or /quote.json
  def index

  end

end
