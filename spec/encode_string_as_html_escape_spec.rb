require 'spec_helper'

describe(Jekyll::HTMLEncode::HTMLEncodeFilter) do
  let(:output) do
    render_liquid(content, {'testString' => testString})
  end

  context "simple testStringing" do
    let(:testString) { "Hello" }
    let(:content)  { "{{ '#{testString}' | encode_html }}" }

    it "produces the correct escaped html" do
      expect(output).to eq("&#72;&#101;&#108;&#108;&#111;")
    end
  end

  context "simple testStringing with spaces" do
    let(:testString) { "Hello World" }
    let(:content)  { "{{ '#{testString}' | encode_html }}" }

    it "produces the correct escaped html" do
      expect(output).to eq("&#72;&#101;&#108;&#108;&#111;&#32;&#87;&#111;&#114;&#108;&#100;")
    end
  end

  context "simple testStringing with spaces and punctuation" do
    let(:testString) { "The Quick Brown Fox Jumps Over The Lazy Dog!" }
    let(:content)  { "{{ '#{testString}' | encode_html }}" }

    it "produces the correct escaped html" do
      expect(output).to eq("&#84;&#104;&#101;&#32;&#81;&#117;&#105;&#99;&#107;&#32;&#66;&#114;&#111;&#119;&#110;&#32;&#70;&#111;&#120;&#32;&#74;&#117;&#109;&#112;&#115;&#32;&#79;&#118;&#101;&#114;&#32;&#84;&#104;&#101;&#32;&#76;&#97;&#122;&#121;&#32;&#68;&#111;&#103;&#33;")
    end
  end

  context "simple email address" do
    let(:testString) { "example@example.com" }
    let(:content)  { "{{ '#{testString}' | encode_html }}" }

    it "produces the correct escaped html" do
      expect(output).to eq("&#101;&#120;&#97;&#109;&#112;&#108;&#101;&#64;&#101;&#120;&#97;&#109;&#112;&#108;&#101;&#46;&#99;&#111;&#109;")
    end
  end

  context "email address with plus and dash" do
    let(:testString) { "example-person+spam@example.com" }
    let(:content)  { "{{ '#{testString}' | encode_html }}" }

    it "produces the correct escaped html" do
      expect(output).to eq("&#101;&#120;&#97;&#109;&#112;&#108;&#101;&#45;&#112;&#101;&#114;&#115;&#111;&#110;&#43;&#115;&#112;&#97;&#109;&#64;&#101;&#120;&#97;&#109;&#112;&#108;&#101;&#46;&#99;&#111;&#109;")
    end
  end
end