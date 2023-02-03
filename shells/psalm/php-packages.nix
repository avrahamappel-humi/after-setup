{composerEnv, fetchurl, fetchgit ? null, fetchhg ? null, fetchsvn ? null, noDev ? false}:

let
  packages = {
    "amphp/amp" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "amphp-amp-9d5100cebffa729aaffecd3ad25dc5aeea4f13bb";
        src = fetchurl {
          url = "https://api.github.com/repos/amphp/amp/zipball/9d5100cebffa729aaffecd3ad25dc5aeea4f13bb";
          sha256 = "0pwk9xx2wr5h0lyihccinvzlkk17hc4gjc0w5jsinxsnazfqhmn1";
        };
      };
    };
    "amphp/byte-stream" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "amphp-byte-stream-acbd8002b3536485c997c4e019206b3f10ca15bd";
        src = fetchurl {
          url = "https://api.github.com/repos/amphp/byte-stream/zipball/acbd8002b3536485c997c4e019206b3f10ca15bd";
          sha256 = "14jqc5igivq54bwj0gr9rpbnw1rapi11ddhmvbkx1251a1bbyzr2";
        };
      };
    };
    "composer/package-versions-deprecated" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "composer-package-versions-deprecated-b4f54f74ef3453349c24a845d22392cd31e65f1d";
        src = fetchurl {
          url = "https://api.github.com/repos/composer/package-versions-deprecated/zipball/b4f54f74ef3453349c24a845d22392cd31e65f1d";
          sha256 = "1hrjxvk8i14pw9gi7j3qc0gljjy74hwdkv8zwsrg5brgyzhqfwam";
        };
      };
    };
    "composer/pcre" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "composer-pcre-4bff79ddd77851fe3cdd11616ed3f92841ba5bd2";
        src = fetchurl {
          url = "https://api.github.com/repos/composer/pcre/zipball/4bff79ddd77851fe3cdd11616ed3f92841ba5bd2";
          sha256 = "05cvb25kawk3wjq9pvkx15rsjf9gjvhksmbq3xxhrmvqsl42mzrs";
        };
      };
    };
    "composer/semver" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "composer-semver-3953f23262f2bff1919fc82183ad9acb13ff62c9";
        src = fetchurl {
          url = "https://api.github.com/repos/composer/semver/zipball/3953f23262f2bff1919fc82183ad9acb13ff62c9";
          sha256 = "0sp54hzb2gq777rd0w5ciq00g0l85irc2m6s2zx7675g24wfbbms";
        };
      };
    };
    "composer/xdebug-handler" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "composer-xdebug-handler-ced299686f41dce890debac69273b47ffe98a40c";
        src = fetchurl {
          url = "https://api.github.com/repos/composer/xdebug-handler/zipball/ced299686f41dce890debac69273b47ffe98a40c";
          sha256 = "1hnhrp26mk3zjsp6cl351b12bcbbbdglc677vjz9n8l7qj466b0h";
        };
      };
    };
    "dnoegel/php-xdg-base-dir" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "dnoegel-php-xdg-base-dir-8f8a6e48c5ecb0f991c2fdcf5f154a47d85f9ffd";
        src = fetchurl {
          url = "https://api.github.com/repos/dnoegel/php-xdg-base-dir/zipball/8f8a6e48c5ecb0f991c2fdcf5f154a47d85f9ffd";
          sha256 = "02n4b4wkwncbqiz8mw2rq35flkkhn7h6c0bfhjhs32iay1y710fq";
        };
      };
    };
    "felixfbecker/advanced-json-rpc" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "felixfbecker-advanced-json-rpc-b5f37dbff9a8ad360ca341f3240dc1c168b45447";
        src = fetchurl {
          url = "https://api.github.com/repos/felixfbecker/php-advanced-json-rpc/zipball/b5f37dbff9a8ad360ca341f3240dc1c168b45447";
          sha256 = "1414k12bznhi6zbb41sm7m2wjnpabvi1xybh0v6rxf8khj15rccq";
        };
      };
    };
    "felixfbecker/language-server-protocol" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "felixfbecker-language-server-protocol-6e82196ffd7c62f7794d778ca52b69feec9f2842";
        src = fetchurl {
          url = "https://api.github.com/repos/felixfbecker/php-language-server-protocol/zipball/6e82196ffd7c62f7794d778ca52b69feec9f2842";
          sha256 = "0gildnl5ciiq3sv23l2j6zrcf3glab56vvr4sxlwsd6pqzz2yl37";
        };
      };
    };
    "fidry/cpu-core-counter" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "fidry-cpu-core-counter-79261cc280aded96d098e1b0e0ba0c4881b432c2";
        src = fetchurl {
          url = "https://api.github.com/repos/theofidry/cpu-core-counter/zipball/79261cc280aded96d098e1b0e0ba0c4881b432c2";
          sha256 = "0dz4g5p99scd94dby7b7pgz22r5kx0cnvm94m2pp552h0lc47y40";
        };
      };
    };
    "netresearch/jsonmapper" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "netresearch-jsonmapper-cfa81ea1d35294d64adb9c68aa4cb9e92400e53f";
        src = fetchurl {
          url = "https://api.github.com/repos/cweiske/jsonmapper/zipball/cfa81ea1d35294d64adb9c68aa4cb9e92400e53f";
          sha256 = "1hlyqa6n7lksqaqhr6dwssz0sj5l5j7gnd97dcxw59sm85blhb0z";
        };
      };
    };
    "nikic/php-parser" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "nikic-php-parser-570e980a201d8ed0236b0a62ddf2c9cbb2034039";
        src = fetchurl {
          url = "https://api.github.com/repos/nikic/PHP-Parser/zipball/570e980a201d8ed0236b0a62ddf2c9cbb2034039";
          sha256 = "1q3hnpjya4rsxfh72ccs2vj3gz8h0sn12290w8wvkz9pvi0qmmmr";
        };
      };
    };
    "phpdocumentor/reflection-common" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpdocumentor-reflection-common-1d01c49d4ed62f25aa84a747ad35d5a16924662b";
        src = fetchurl {
          url = "https://api.github.com/repos/phpDocumentor/ReflectionCommon/zipball/1d01c49d4ed62f25aa84a747ad35d5a16924662b";
          sha256 = "1wx720a17i24471jf8z499dnkijzb4b8xra11kvw9g9hhzfadz1r";
        };
      };
    };
    "phpdocumentor/reflection-docblock" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpdocumentor-reflection-docblock-622548b623e81ca6d78b721c5e029f4ce664f170";
        src = fetchurl {
          url = "https://api.github.com/repos/phpDocumentor/ReflectionDocBlock/zipball/622548b623e81ca6d78b721c5e029f4ce664f170";
          sha256 = "1vs0fhpqk8s9bc0sqyfhpbs63q14lfjg1f0c1dw4jz97145j6r1n";
        };
      };
    };
    "phpdocumentor/type-resolver" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpdocumentor-type-resolver-48f445a408c131e38cab1c235aa6d2bb7a0bb20d";
        src = fetchurl {
          url = "https://api.github.com/repos/phpDocumentor/TypeResolver/zipball/48f445a408c131e38cab1c235aa6d2bb7a0bb20d";
          sha256 = "1yg19nxaz9i5nkvv8qrb88lz4vkirpk299316gmlmaq1pikhvand";
        };
      };
    };
    "psr/container" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "psr-container-c71ecc56dfe541dbd90c5360474fbc405f8d5963";
        src = fetchurl {
          url = "https://api.github.com/repos/php-fig/container/zipball/c71ecc56dfe541dbd90c5360474fbc405f8d5963";
          sha256 = "1mvan38yb65hwk68hl0p7jymwzr4zfnaxmwjbw7nj3rsknvga49i";
        };
      };
    };
    "psr/log" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "psr-log-fe5ea303b0887d5caefd3d431c3e61ad47037001";
        src = fetchurl {
          url = "https://api.github.com/repos/php-fig/log/zipball/fe5ea303b0887d5caefd3d431c3e61ad47037001";
          sha256 = "0a0rwg38vdkmal3nwsgx58z06qkfl85w2yvhbgwg45anr0b3bhmv";
        };
      };
    };
    "sebastian/diff" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-diff-3461e3fccc7cfdfc2720be910d3bd73c69be590d";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/diff/zipball/3461e3fccc7cfdfc2720be910d3bd73c69be590d";
          sha256 = "0967nl6cdnr0v0z83w4xy59agn60kfv8gb41aw3fpy1n2wpp62dj";
        };
      };
    };
    "spatie/array-to-xml" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "spatie-array-to-xml-5cbec9c6ab17e320c58a259f0cebe88bde4a7c46";
        src = fetchurl {
          url = "https://api.github.com/repos/spatie/array-to-xml/zipball/5cbec9c6ab17e320c58a259f0cebe88bde4a7c46";
          sha256 = "030159229mq33swp287qs9zv4n8rszmmvrb3z62wd5mdvyb5mzd6";
        };
      };
    };
    "symfony/console" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-console-3e294254f2191762c1d137aed4b94e966965e985";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/console/zipball/3e294254f2191762c1d137aed4b94e966965e985";
          sha256 = "0l8hvdsv36j46yfwqipphxf03kzaps97n34f4lj928nvm5qwxi1s";
        };
      };
    };
    "symfony/deprecation-contracts" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-deprecation-contracts-1ee04c65529dea5d8744774d474e7cbd2f1206d3";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/deprecation-contracts/zipball/1ee04c65529dea5d8744774d474e7cbd2f1206d3";
          sha256 = "0clwxx1aaf54ajk5byr95gzdvxpfy4s9alkarwykjcga81b5grn7";
        };
      };
    };
    "symfony/filesystem" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-filesystem-e59e8a4006afd7f5654786a83b4fcb8da98f4593";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/filesystem/zipball/e59e8a4006afd7f5654786a83b4fcb8da98f4593";
          sha256 = "0jixvlp879j0jsg4i2grpja66lb36dhvbf8an46jija0ypy9bip4";
        };
      };
    };
    "symfony/polyfill-ctype" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-ctype-5bbc823adecdae860bb64756d639ecfec17b050a";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/polyfill-ctype/zipball/5bbc823adecdae860bb64756d639ecfec17b050a";
          sha256 = "0vyv70z1yi2is727d1mkb961w5r1pb1v3wy1pvdp30h8ffy15wk6";
        };
      };
    };
    "symfony/polyfill-intl-grapheme" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-intl-grapheme-511a08c03c1960e08a883f4cffcacd219b758354";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/polyfill-intl-grapheme/zipball/511a08c03c1960e08a883f4cffcacd219b758354";
          sha256 = "0ifsgsyxf0z0nkynqvr5259dm5dsmbgdpvyi5zfvy8935mi0ki0i";
        };
      };
    };
    "symfony/polyfill-intl-normalizer" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-intl-normalizer-19bd1e4fcd5b91116f14d8533c57831ed00571b6";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/polyfill-intl-normalizer/zipball/19bd1e4fcd5b91116f14d8533c57831ed00571b6";
          sha256 = "1d80jph5ykiw6ydv8fwd43s0aglh24qc1yrzds2f3aqanpbk1gr2";
        };
      };
    };
    "symfony/polyfill-mbstring" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-mbstring-8ad114f6b39e2c98a8b0e3bd907732c207c2b534";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/polyfill-mbstring/zipball/8ad114f6b39e2c98a8b0e3bd907732c207c2b534";
          sha256 = "1ym84qp609i50lv4vkd4yz99y19kaxd5kmpdnh66mxx1a4a104mi";
        };
      };
    };
    "symfony/service-contracts" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-service-contracts-aac98028c69df04ee77eb69b96b86ee51fbf4b75";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/service-contracts/zipball/aac98028c69df04ee77eb69b96b86ee51fbf4b75";
          sha256 = "15ydq3fya7j4m5wrd7zbkphw38c5wn631asp9zaxqra7vl2f3wxx";
        };
      };
    };
    "symfony/string" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-string-b2dac0fa27b1ac0f9c0c0b23b43977f12308d0b0";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/string/zipball/b2dac0fa27b1ac0f9c0c0b23b43977f12308d0b0";
          sha256 = "1d6k0a3kibl3hnwxr7kzlk7nadf50wi6jv8bm7wg0ip32dx0l2zn";
        };
      };
    };
    "vimeo/psalm" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "vimeo-psalm-e784128902dfe01d489c4123d69918a9f3c1eac5";
        src = fetchurl {
          url = "https://api.github.com/repos/vimeo/psalm/zipball/e784128902dfe01d489c4123d69918a9f3c1eac5";
          sha256 = "0a77ay5mq7h08pk10x4ixs45xagy63vl491jicim9k6iv9pclxn4";
        };
      };
    };
    "webmozart/assert" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "webmozart-assert-11cb2199493b2f8a3b53e7f19068fc6aac760991";
        src = fetchurl {
          url = "https://api.github.com/repos/webmozarts/assert/zipball/11cb2199493b2f8a3b53e7f19068fc6aac760991";
          sha256 = "18qiza1ynwxpi6731jx1w5qsgw98prld1lgvfk54z92b1nc7psix";
        };
      };
    };
  };
  devPackages = {};
in
composerEnv.buildPackage {
  inherit packages devPackages noDev;
  name = "vimeo-psalm";
  src = composerEnv.filterSrc ./.;
  executable = true;
  symlinkDependencies = false;
  meta = {};
}
