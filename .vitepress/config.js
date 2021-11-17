/**
 * @type {import("vitepress").UserConfig}
 */
module.exports = {
  lang: "zh-CN",
  base: "/market-docs/",
  themeConfig: {
    repo: "myh19980409/market-docs",
    editLinks: true,
    nav: [
      { text: "配置指南", link: "/guide" },
      { text: "API文档", link: "/api" },
    ]
  }
}
