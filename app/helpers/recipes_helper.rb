module RecipesHelper
  #return the root address of the link
  def site_location( recipe )
    link = 'test.com'
    /(?:http:\/\/)?(?:www\.)?([^\/]+)/.match(recipe.link)[1]
  end
end
