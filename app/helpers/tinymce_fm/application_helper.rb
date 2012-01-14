module TinymceFm
  module ApplicationHelper
    def tinymce_javascript_tag( controller = nil, theme = nil )
      opts = {:manager => "#{controller.to_s if controller.present?}", :theme => theme}
      # scripts = javascript_include_tag('tinymce_fm/application.js') + javascript_include_tag(tinymce_fm_engine.tinymce_combine_js_path(opts))
        # "<script type='text/javascript' src='#{tinymce_fm_engine.tinymce_combine_js_path(opts)}'></script>"
      scripts = [ javascript_include_tag('tinymce_fm/application.js'), 
                  javascript_include_tag(tinymce_fm_engine.tinymce_combine_js_path(opts)),
                  stylesheet_link_tag('tinymce_fm/application.css')
                ].join("\n")
      raw scripts
    end

    def tinymce_tag name, content = '', options = {}
      append_class_name(options, 'tinymce_managed')
      text_area_tag(name, content, options)
    end

    def append_class_name options, class_name
      key = options.has_key?('class') ? 'class' : :class
      unless options[key].to_s =~ /(^|\s+)#{class_name}(\s+|$)/
        options[key] = "#{options[key]} #{class_name}".strip
      end
      options
    end
  end
end
