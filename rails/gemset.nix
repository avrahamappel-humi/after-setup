{
  activesupport = {
    dependencies = ["concurrent-ruby" "i18n" "minitest" "tzinfo"];
    source = null;
    targets = [];
  };
  ast = {
    source = null;
    targets = [];
  };
  backport = {
    source = null;
    targets = [];
  };
  benchmark = {
    source = null;
    targets = [];
  };
  concurrent-ruby = {
    source = null;
    targets = [];
  };
  diff-lcs = {
    source = null;
    targets = [];
  };
  e2mmap = {
    source = null;
    targets = [];
  };
  i18n = {
    dependencies = ["concurrent-ruby"];
    source = null;
    targets = [];
  };
  jaro_winkler = {
    source = null;
    targets = [];
  };
  json = {
    source = null;
    targets = [];
  };
  kramdown = {
    dependencies = ["rexml"];
    source = null;
    targets = [];
  };
  kramdown-parser-gfm = {
    dependencies = ["kramdown"];
    source = null;
    targets = [];
  };
  minitest = {
    source = null;
    targets = [];
  };
  nokogiri = {
    dependencies = ["racc"];
    source = null;
    targets = [];
  };
  parallel = {
    source = null;
    targets = [];
  };
  parser = {
    dependencies = ["ast"];
    source = null;
    targets = [];
  };
  racc = {
    source = null;
    targets = [];
  };
  rainbow = {
    source = null;
    targets = [];
  };
  regexp_parser = {
    source = null;
    targets = [];
  };
  reverse_markdown = {
    dependencies = ["nokogiri"];
    source = null;
    targets = [];
  };
  rexml = {
    source = null;
    targets = [];
  };
  rubocop = {
    dependencies = ["json" "parallel" "parser" "rainbow" "regexp_parser" "rexml" "rubocop-ast" "ruby-progressbar" "unicode-display_width"];
    source = null;
    targets = [];
  };
  rubocop-ast = {
    dependencies = ["parser"];
    source = null;
    targets = [];
  };
  ruby-progressbar = {
    source = null;
    targets = [];
  };
  solargraph = {
    dependencies = ["backport" "benchmark" "diff-lcs" "e2mmap" "jaro_winkler" "kramdown" "kramdown-parser-gfm" "parser" "reverse_markdown" "rubocop" "thor" "tilt" "yard"];
    source = null;
    targets = [];
  };
  solargraph-rails = {
    dependencies = ["activesupport" "solargraph"];
    source = null;
    targets = [];
  };
  thor = {
    source = null;
    targets = [];
  };
  tilt = {
    source = null;
    targets = [];
  };
  tzinfo = {
    dependencies = ["concurrent-ruby"];
    source = null;
    targets = [];
  };
  unicode-display_width = {
    source = null;
    targets = [];
  };
  webrick = {
    source = null;
    targets = [];
  };
  yard = {
    dependencies = ["webrick"];
    source = null;
    targets = [];
  };
} // import ./gemset.project.nix
