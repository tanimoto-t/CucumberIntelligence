const path = `${__dirname}/template/`;

module.exports = {
    entry: `${path}client.js`,
    output: {
        path: `${path}`,
        filename: 'bundle.js'
    },
    module: {
        rules: [
            {
                test: /\.css?$/,
                loader: 'style-loader!css-loader'
            },
            {
                test: /\.woff($|\?)|\.woff2($|\?)|\.ttf($|\?)|\.eot($|\?)|\.svg($|\?)/,
                loader: 'url-loader'
            },
            {
                test: /\.js$/,
                enforce: 'pre',
                exclude: /node_modules/,
                loader: 'eslint-loader',
                options: {
                    fix: false,
                    failOnError: true,
                },
            },
        ]
    },
    resolve: {
        extensions: ['.js', '.css'],
        alias: {
            jquery: 'jquery/src/jquery',
        }
    },
};
