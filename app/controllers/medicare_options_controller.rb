class MedicareOptionsController < ApplicationController
  before_action :set_medicare_resources, only: %i[ show edit update destroy ]

  # GET /medicare_options or /medicare_options.json
  def index

  end

end
