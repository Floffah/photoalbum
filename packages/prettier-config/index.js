module.exports = {
    trailingComma: "all",
    tabWidth: 4,
    semi: true,
    singleQuote: false,
    arrowParens: "always",
    endOfLine: "lf",
    embeddedLanguageFormatting: "auto",

    importOrder: [
        "reflect-metadata",
        "<THIRD_PARTY_MODULES>",
        "^@crossant/(.*)$",
        "@/(.*)$",
    ],
    importOrderSeparation: true,
    importOrderSortSpecifiers: true,
    importOrderGroupNamespaceSpecifiers: true,

    plugins: [
        "@trivago/prettier-plugin-sort-imports",
    ],
}