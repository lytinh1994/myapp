module Feed
  class Data < Grape::API

    version 'v1', using: :path
    # format :json
    prefix :api

    content_type :xml, 'application/xml'
    content_type :rss, 'application/xml+rss'
    content_type :json, 'application/json'
    content_type :binary, 'application/octet-stream'
    content_type :txt, 'text/plain'

    resource :products do 
      get do
        # p request.headers
        pxml = []
        Product.all.each do |p|
          pxml << {
            "id": p.sku,
            "title": p.title,
            "description": p.description,
            "availability": p.availability,
            "condition": p.condition,
            'price': "#{p.price} VND",
            'link': Rails.application.routes.url_helpers.product_url(p),
            'image_link': Rails.application.routes.url_helpers.rails_blob_url(Product.first.image, disposition: "attachment"),
            'brand': p.brand,
          }
        end
        pxml


      end
    end



  end
end