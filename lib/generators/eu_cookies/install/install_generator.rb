module EuCookies
  module Generators
    class InstallGenerator < Rails::Generators::Base
      def add_javascripts
        append_file 'app/assets/javascripts/application.js', "//= require eu_cookies\n"
      end

      def add_stylesheets
        inject_into_file 'app/assets/stylesheets/application.css', "*= require eu_cookies\n", before: /\*\//, verbose: true
      end
    end
  end
end
