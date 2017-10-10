class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # https://www.cookieshq.co.uk/posts/easy-seo-metatags-with-rails-4#a-word-about-turbolinks
  before_action :prepare_meta_tags, if: "request.get?"

  def prepare_meta_tags(options={})
    site_name   = "4dCity.Com"
    title       = [controller_name, action_name].join(" ")
    description = "4dCity Social Content"
    image       = options[:image] || "http://www.4dcity.com/assets/4dcity.png" 
    current_url = request.url

    # Let's prepare a nice set of defaults
    defaults = {
      site:        site_name,
      title:       title,
      image:       image,
      description: description,
      keywords:    %w[web software development mobile app],
      twitter: {
        site_name: site_name,
        site: '@4dcity.com',
        card: 'summary',
        description: description,
        image: image
      },
      og: {
        url: current_url,
        site_name: site_name,
        title: title,
        image: image,
        description: description,
        type: 'website'
      }
    }

    options.reverse_merge!(defaults)

    set_meta_tags options
  end
end
