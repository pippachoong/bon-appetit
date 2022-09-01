class PagesController < ApplicationController
  def home
    @categories = Category.all
    quotes = [
      {
        quote: "If you really want to make a friend, go to someone's house and eat with him… The people who give you their food give you their heart.",
        author: "Cesar Chavez"
      },
      {
        quote: "A recipe has no soul. You, as the cook, must bring soul to the recipe.",
        author: "Thomas Keller"
      },
      {
        quote: "Food is symbolic of love when words are inadequate.",
        author: "Alan D. Wolfelt"
      },
      {
        quote: "Life is uncertain. Eat dessert first.",
        author: "Ernestine Ulmer"
      }
    ]
    @quote = quotes.sample
  end


end # class Pages controller
