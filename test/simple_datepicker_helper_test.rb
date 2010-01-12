require 'test/unit'
require 'rubygems'

require File.dirname(__FILE__) + '/../../../../config/environment'

class SimpleDatepickerHelperTest < Test::Unit::TestCase

  include ActionView::Helpers::TagHelper
  include ActionView::Helpers::AssetTagHelper
  include ActionView::Helpers::JavaScriptHelper
  include SimpleDatepickerHelper::Helpers::ViewHelpers

  def test_simple_datepicker_includes
    stylesheets = stylesheet_link_tag('simple_datepicker', 'simple_datepicker_runner')
    javascripts = javascript_include_tag('simple_datepicker')
    assert_equal(stylesheets + javascripts, simple_datepicker_includes)
  end

end
