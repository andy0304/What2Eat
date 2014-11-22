# require 'open-uri'
# require 'Nokogiri'
require 'fatsecret'
class FoodsController < ApplicationController
  # GET /foods
  # GET /foods.json
  def index

    @foods = Food.all
    # p @foods
    # if @foods == null then
    #   p 'sdfsdfa'
    # end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @foods }
    end
  end

  def search
    @ingredient = params[:recipe]['ingre']
    FatSecret.init('1bc2cc311bb24d56a24322272e790419', '42c47bc7053247e2a43adfb8db57e6fc')
    @results = FatSecret.recipe(84411)
    @description = @results['recipe']['directions']
    @categories = @results['recipe']["recipe_categories"]["recipe_category"] #this is an array of hash
    @str_cate = ''
    @categories.each do |name|
      @str_cate << name["recipe_category_name"]
      @str_cate << ' '
    end
    @recipe_name = @results['recipe']["recipe_name"]
    @recipe_id = @results['recipe']["recipe_id"]
    @recipe_calories = @results['recipe']["serving_sizes"]["serving"]["calories"]
    # @results = FatSecret.search_recipes(@ingredient, 50)
    # @detail = @results['recipes']['recipe']
  end

  # GET /foods/1
  # GET /foods/1.json
  def show
    @food = Food.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @food }
    end
  end

  # GET /foods/new
  # GET /foods/new.json
  def new
    @food = Food.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @food }
    end
  end

  # GET /foods/1/edit
  def edit
    @food = Food.find(params[:id])
  end

  # POST /foods
  # POST /foods.json
  def create
    @food = Food.new(params[:food])

    respond_to do |format|
      if @food.save
        format.html { redirect_to @food, notice: 'Food was successfully created.' }
        format.json { render json: @food, status: :created, location: @food }
      else
        format.html { render action: "new" }
        format.json { render json: @food.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /foods/1
  # PUT /foods/1.json
  def update
    @food = Food.find(params[:id])

    respond_to do |format|
      if @food.update_attributes(params[:food])
        format.html { redirect_to @food, notice: 'Food was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @food.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foods/1
  # DELETE /foods/1.json
  def destroy
    @food = Food.find(params[:id])
    @food.destroy

    respond_to do |format|
      format.html { redirect_to foods_url }
      format.json { head :no_content }
    end
  end
end
