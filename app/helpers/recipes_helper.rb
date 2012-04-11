module RecipesHelper
  #return the root address of the link
  def site_location( recipe )
    /(?:http:\/\/)?(?:www\.)?([^\/]+)/.match(recipe.link)[1]
  end
end
