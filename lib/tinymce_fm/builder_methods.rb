module TinymceFm::BuilderMethods

  def tinymce method, options = {}
    @template.append_class_name(options, 'tinymce_managed')
    self.text_area(method, options)
  end

end

ActionView::Helpers::FormBuilder.send(:include, TinymceFm::BuilderMethods)