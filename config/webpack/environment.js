const { environment } = require('@rails/webpacker')
const webpack = require("webpack")


// "jquery" and "popper.js" are dependencies of Bootstrap
environment.plugins.append("Provide", new webpack.ProvidePlugin({
  $: 'jquery',
  jQuery: 'jquery',
  Popper: ['popper.js', 'default']
}))

module.exports = environment
