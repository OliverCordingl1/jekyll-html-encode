module Jekyll
    module HTMLEncode
        module HTMLEncodeFilter
            def encode_html(input)
                input.to_s.chars.inject(String.new) do |result, char|
                    char.bytes.inject(result) do |result, byte|
                        result << '&#%d;' % byte
                    end
                end
            end
        end
    end
end

Liquid::Template.register_filter(Jekyll::HTMLEncode::HTMLEncodeFilter)