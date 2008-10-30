$:.unshift(File.dirname(__FILE__) + '/../..')
$:.unshift(File.dirname(__FILE__) + '/../../lib')

require 'rubygems'
require 'test/unit'
require 'active_record'
require 'action_controller'
require 'action_controller/test_process'
require 'init'

def assert_html expected, actual
    expected = clean_html(expected)
    actual = clean_html(actual)
    assert_equal expected, actual
end  
  
def clean_html(html_string)
  return html_string.strip.gsub(/[\n\r]/, '').gsub(/>\s+</, '><')
end
  
