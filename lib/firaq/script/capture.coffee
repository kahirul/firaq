page = require('webpage').create()
page.viewportSize = { width: 1280 }
page.settings.userAgent = 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.99 Safari/537.3'
url = phantom.args[0]
filename = phantom.args[1]
selector = phantom.args[2]

if !!selector
  clipRect = document.querySelector(selector).getBoundingClientRect()
  page.clipRect =
    top: clipRect.top
    left: clipRect.left
    width: clipRect.width
    height: clipRect.height

page.open url, ->
  page.render "#{filename}.png", { format: 'png', quality: 100 }
  phantom.exit()
