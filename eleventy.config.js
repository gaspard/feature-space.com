const markdownIt = require("markdown-it");
const markdownItKatex = require("@iktakahiro/markdown-it-katex");
const Image = require("@11ty/eleventy-img");
const path = require("path");

const { DateTime } = require("luxon");
const root = "src";

async function makeImage(pathWithRoot, alt, widths, sizes) {
  try {
    const dirpath = path.dirname(pathWithRoot.slice(root.length + 1));
    let metadata = await Image(pathWithRoot, {
      widths,
      formats: ["webp"],
      urlPath: path.join("/", dirpath, "img"),
      outputDir: path.join(root, dirpath, "img"),
      filenameFormat: function (id, src, width, format, options) {
        const extension = path.extname(src);
        const name = path.basename(src, extension);

        return `${name}-${width}w.${format}`;
      },
    });

    let imageAttributes = {
      alt,
      sizes,
      loading: "lazy",
      decoding: "async",
    };

    // You bet we throw an error on a missing alt (alt="" works okay)
    return Image.generateHTML(metadata, imageAttributes);
  } catch (e) {
    console.log(e);
    return `<span style='color:red'>${e.message}</span>`;
  }
}

module.exports = function (eleventyConfig) {
  // We store generates tailwind.gen.css in src to force reload on change.
  eleventyConfig.addPassthroughCopy(`${root}/css`);
  // We store generated images in src to force reload on change.
  eleventyConfig.addPassthroughCopy(`${root}/article/**/*.webp`);
  eleventyConfig.addPassthroughCopy(`${root}/bibliography/**/*.webp`);

  eleventyConfig.addFilter(
    "latex",
    (content) =>
      // inlineLatex(codeLatex(content))
      content
  );

  eleventyConfig.addFilter("readableDate", (dateObj) => {
    return DateTime.fromJSDate(dateObj, {
      zone: "Europe/Zurich",
    })
      .setLocale("en")
      .toLocaleString(DateTime.DATE_FULL);
  });
  const katexOptions = {
    macros: {
      "\\T": "\\bullet",
      "\\F": "\\cdot",
      "\\iff": "\\leftrightarrow",
    },
  };

  eleventyConfig.amendLibrary(
    "md",
    (md) => md.use(markdownItKatex, katexOptions),
    {
      throwOnError: false,
      errorColor: " #cc0000",
    }
  );

  const md = new markdownIt({
    html: true,
  });
  md.use(markdownItKatex, katexOptions);

  eleventyConfig.addFilter("markdown", (content) => {
    try {
      return md.render(content);
    } catch (e) {
      console.log(e);
      return `<span style='color:red'>${e.message}</span>`;
    }
  });

  eleventyConfig.addShortcode("cover", async function (entry) {
    if (!entry.data.cover) return "";
    const widths = [100];
    const sizes = "100px";
    const alt = entry.data.cover_alt || entry.data.title;
    const fullpath = path.join(entry.page.inputPath, "..", entry.data.cover);
    return makeImage(fullpath, alt, widths, sizes);
  });

  eleventyConfig.addShortcode("image", async function (src, alt) {
    const widths = [480, 800];
    const sizes = "(max-width: 600px) 480px, 800px";
    const fullpath = path.join(this.page.inputPath, "..", src);
    return makeImage(fullpath, alt, widths, sizes);
  });

  // eleventyConfig.setServerOptions({
  //   port: 3000,
  // });

  return {
    // markdownTemplateEngine: false,
    dir: {
      data: "data",
      input: "src",
    },
  };
};
