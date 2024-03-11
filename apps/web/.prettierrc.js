import prettierConfig from "prettier-config";

module.exports = {
    ...prettierConfig,

    jsxSingleQuote: false,
    jsxBracketSameLine: false,

    plugins: [
        ...prettierConfig.plugins,
        "prettier-plugin-tailwindcss",
    ],
};
