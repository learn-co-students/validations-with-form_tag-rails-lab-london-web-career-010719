class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

  def index
    @authors = Author.all
  end

  def new
    @author = Author.new
  end

#   def create
#     @author = Author.create(author_params)
#     if (@author.save)
#     redirect_to author_path(@author)
#   else
#     render :new
#   end
# end


  def create
    @author = Author.new
    @author.name = params[:author][:name]
    @author.email = params[:author][:email]
    @author.phone_number = params[:author][:phone_number]
    @author.save
    redirect_to authors_path(@author)



  def edit
    @author = Author.find(params[:id])
  end

  def update
    @author = Author.find(params[:id])
    @author.update(name: params[:author][:name], email: params[:author][:email], phone_number: params[:author][:phone_number])
    redirect_to authors_path(@author)
  end




  private

  def author_params
    params.permit(:name, :email, :phone_number)
  end
end
