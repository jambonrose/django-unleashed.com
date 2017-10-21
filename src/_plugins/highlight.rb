# Based on MIT-licensed code from @pathawks
# https://github.com/pathawks/pathawks.com/blob/master/_plugins/highlight.rb
# Frozen-String-Literal: true
# Encoding: UTF-8

module Jekyll
  module Tags
    class HighlightBlock < Liquid::Block
      def add_code_tag(code)
        lang = @lang.to_s.gsub("+", "-").freeze
        "<pre><code class='highlight language-#{lang}' data-lang='#{lang}'>#{code.chomp}</code></pre>"
      end
    end
  end
end
