class StaticPagesController < ApplicationController
  def pricing
    @pricing = Stripe::Price.list(
      lookup_keys: %i[good_year good_month],
      expand: ['data.product']).data.sort_by(&:unit_amount)
  end
end
