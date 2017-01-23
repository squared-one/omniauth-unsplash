require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Unsplash < OmniAuth::Strategies::OAuth2
      option :name, 'unsplash'

      option :client_options, {
        site: 'https://api.unsplash.com',
        authorize_url: 'https://unsplash.com/oauth/authorize',
        token_url: 'https://unsplash.com/oauth/token'
      }

      option :authorize_options, [ :scope ]

      uid { raw_info['uid'] }

      info do
        {
          first_name: raw_info['first_name'],
          last_name: raw_info['last_name'],
          username: raw_info['username'],
          email: raw_info['email'],
          bio: raw_info['bio'],
          portfolio_url: raw_info['portfolio_url'],
          profile_image: raw_info['profile_image'],
        }
      end

      extra do
        { raw_info: raw_info  }
      end

      def callback_url
        options[:callback_url] ||
          (full_host + script_name + callback_path)
      end

      def authorize_params
        super.tap do |params|
          %w[ scope ].each do |v|
            if request.params[v]
              params[v.to_sym] = request.params[v]
            end
          end

          params[:scope] ||= 'public'
        end
      end

      def raw_info
        JSON.parse(access_token.get('/me').body)
      end
    end
  end
end
