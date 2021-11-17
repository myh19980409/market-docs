/**
 * @type {import("vitepress").UserConfig}
 */
module.exports = {
  lang: "zh-CN",
  base: "/market-docs/",
  themeConfig: {
    nav: [
      { text: "配置指南", link: "/guide" },
      { text: "API文档", link: "/api" },
    ]
  }
}
