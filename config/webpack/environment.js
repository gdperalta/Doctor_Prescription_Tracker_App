const { environment } = require('@rails/webpacker');

// Added for bootstrap
const webpack = require('webpack');

environment.plugins.append(
	'Provide',
	new webpack.ProvidePlugin({
		$: 'jquery',
		jQuery: 'jquery',
		Popper: ['popper.js', 'default'],
	})
);
// end of addition

module.exports = environment;
