module TinymceFm
  class FilemanagerController < ApplicationController
    def tinymce_managed_js
      @manager_theme = params[:theme].present? ? params[:theme] : "advanced"
      @manager_lang = "en"
      supported_languages = ["cs", "de", "en", "es", "fr", "it", "ja", "pl", "pt", "ru", "sk", "uk", "zh"]
      @manager_controller = params[:manager]
      if supported_languages.include?(I18n.default_locale.to_s)
        @manager_lang = I18n.default_locale.to_s
      end
      response.headers["Content-Type"] = "text/javascript; charset=utf-8"
      render :layout => false
    end

    def tinymce_managed_css
      
    end
    
  end
end