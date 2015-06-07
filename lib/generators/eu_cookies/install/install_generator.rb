module EuCookies
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../templates", __FILE__)

      def add_javascripts
        append_file 'app/assets/javascripts/application.js', "//= require eu_cookies\n"
      end

      def add_stylesheets
        inject_into_file 'app/assets/stylesheets/application.css', "*= require eu_cookies\n", before: /\*\//, verbose: true
      end

      def create_stylesheet
        template 'eu_cookies.scss', 'app/assets/stylesheets/eu_cookies.scss'
      end
    end
  end
end
