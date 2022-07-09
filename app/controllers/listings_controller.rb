class ListingsController < ApplicationController
  before_action :set_listing, only: [ :show, :edit, :update, :destroy ]
  before_action :authenticate_user!, except: [:index]
  # GET /listings or /listings.json
  def index
    @listings = Listing.all
    # search function not working
    if params[:query].present?
      # sql_query = "title ILIKE :query OR color ILIKE :query OR care_type ILIKE :query"
      # @listings = Plant.where(sql_query, query: "%#{params[:query]}%")
      @listings = Listing.search_by_name_category_price(params[:query])
      if @listings.empty?
        redirect_back(fallback_location: root_path)
        flash[:alert] = "Not Found..."
      end
    else
      @listings = Listing.all
    end   
  end

  # GET /listings/1 or /listings/1.json
  def show
  end

  # GET /listings/new
  def new
    @listing = Listing.new
  end

  # GET /listings/1/edit
  def edit
  end

  # POST /listings or /listings.json
  def create
    @listing = Listing.new(listing_params)
    @listing.user = current_user
   
    respond_to do |format|
      if @listing.save
        format.html { redirect_to listing_url(@listing), notice: "Listing was successfully created." }
        format.json { render :show, status: :created, location: @listing }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @listing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /listings/1 or /listings/1.json
  def update
    respond_to do |format|
      if @listing.update(listing_params)
        format.html { redirect_to listing_url(@listing), notice: "Listing was successfully updated." }
        format.json { render :show, status: :ok, location: @listing }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @listing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /listings/1 or /listings/1.json
  def destroy
    @listing.destroy

    respond_to do |format|
      format.html { redirect_to listings_url, notice: "Listing was successfully destroyed." }
      format.json { head :no_content }
    end
  end
  # simply database search
  def search
    if params[:search].blank?
      redirect_to listings_path and return
    else 
      # downcase to make sure letter is no sensitive
      @parameter = params[:search].downcase
      @results = Listing.all.where("lower(name) LIKE :search", search: "%#{@parameter}%")
    end
  end

   def add_to_watchlist
    id = params[:id].to_i
    session[:watchlist] << id unless session[:watchlist].include?(id)
    redirect_to listings_path
  end

  def remove_from_watchlist
    id = params[:id].to_i
    session[:watchlist].delete(id)
    redirect_to listings_path
  end




  private
    # Use callbacks to share common setup or constraints between actions.
    def set_listing
      @listing = Listing.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def listing_params
      params.require(:listing).permit(:name, :price, :photo, :description, :category, :search)
    end
end
