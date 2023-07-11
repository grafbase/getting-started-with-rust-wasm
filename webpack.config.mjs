import path from 'path';
import HtmlWebpackPlugin from 'html-webpack-plugin';
import WasmPackPlugin from '@wasm-tool/wasm-pack-plugin';
import { fileURLToPath } from 'url';

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

export default {
  entry: './src/bundler.js',
  output: {
    path: path.resolve(__dirname, 'dist'),
    filename: 'index.js',
  },
  plugins: [
    new HtmlWebpackPlugin({
      templateContent: "<div id='greeter'></div>",
      inject: 'body',
    }),
    new WasmPackPlugin({
      crateDirectory: path.resolve(__dirname, '.'),
    }),
  ],
  experiments: { asyncWebAssembly: true },
  mode: 'production',
};
