module Firaq
  class Meh

    def initialize

    end

    def capture
      script = File.join(%W(#{ Firaq.root} lib firaq script #{ __method__ }.coffee))

      expected = 'https://www.google.co.id/'
      expected = 'https://www.google.co.jp/'
      reality = 'https://www.google.co.jp/'
      expected_file = expected.unpack('H*')[0].to_i(16).to_s 36
      reality_file = reality.unpack('H*')[0].to_i(16).to_s 36
      selector = '#piktowrapper-embed' && ''

      Phantomjs.run(script, expected, expected_file, selector)
      Phantomjs.run(script, reality, reality_file, selector)

      diff = `compare -metric RMSE 4r72ym3i0ln1xqa85eb4wn0ubktklsymygxukhb.png 4r72ym3i0ln1xqa85eb4wn0ubktklsymygxw1f3.png null: 2>&1`
      diff = diff.split('(').first.strip.to_f
      diff > 0.0
    end

  end
end
