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
    "amphp/cache" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "amphp-cache-2b6b5dbb70e54cc914df9952ba7c012bc4cbcd28";
        src = fetchurl {
          url = "https://api.github.com/repos/amphp/cache/zipball/2b6b5dbb70e54cc914df9952ba7c012bc4cbcd28";
          sha256 = "0ph57sarmqihnnqlsffjf6ajihgk2sq9zq4vyrfbz3jshqikwm71";
        };
      };
    };
    "amphp/dns" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "amphp-dns-852292532294d7972c729a96b49756d781f7c59d";
        src = fetchurl {
          url = "https://api.github.com/repos/amphp/dns/zipball/852292532294d7972c729a96b49756d781f7c59d";
          sha256 = "1l2k427x51an2y7531vcw0gbs3gxvm5ni8b82ahnxq71h36js5bk";
        };
      };
    };
    "amphp/parser" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "amphp-parser-ff1de4144726c5dad5fab97f66692ebe8de3e151";
        src = fetchurl {
          url = "https://api.github.com/repos/amphp/parser/zipball/ff1de4144726c5dad5fab97f66692ebe8de3e151";
          sha256 = "0wlx4l97ydsv0v56fh8lkxx9vhpbdmpf6bgmsxgk05s7sq1g4lgy";
        };
      };
    };
    "amphp/process" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "amphp-process-76e9495fd6818b43a20167cb11d8a67f7744ee0f";
        src = fetchurl {
          url = "https://api.github.com/repos/amphp/process/zipball/76e9495fd6818b43a20167cb11d8a67f7744ee0f";
          sha256 = "1v40r55d29gvmgzx5ljdsb1g6wfdvjjlsjwzs7zhh8i6sl2r57p8";
        };
      };
    };
    "amphp/serialization" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "amphp-serialization-693e77b2fb0b266c3c7d622317f881de44ae94a1";
        src = fetchurl {
          url = "https://api.github.com/repos/amphp/serialization/zipball/693e77b2fb0b266c3c7d622317f881de44ae94a1";
          sha256 = "14mx5540f1z672fkszdc5qcdz370i3q7w0kdl87aimzj87r3awkx";
        };
      };
    };
    "amphp/socket" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "amphp-socket-a8af9f5d0a66c5fe9567da45a51509e592788fe6";
        src = fetchurl {
          url = "https://api.github.com/repos/amphp/socket/zipball/a8af9f5d0a66c5fe9567da45a51509e592788fe6";
          sha256 = "0aapwq1jz2dvc638cpfp12n4fgwmlcrlrqbkrm6prxdbzh2yaiwv";
        };
      };
    };
    "amphp/sync" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "amphp-sync-85ab06764f4f36d63b1356b466df6111cf4b89cf";
        src = fetchurl {
          url = "https://api.github.com/repos/amphp/sync/zipball/85ab06764f4f36d63b1356b466df6111cf4b89cf";
          sha256 = "1ffl60c6pj1bg74fipyj16irhlj6356bc5nnkdmv7qrli212f800";
        };
      };
    };
    "amphp/windows-registry" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "amphp-windows-registry-0f56438b9197e224325e88f305346f0221df1f71";
        src = fetchurl {
          url = "https://api.github.com/repos/amphp/windows-registry/zipball/0f56438b9197e224325e88f305346f0221df1f71";
          sha256 = "1vv8xik6swpy12c5nzgfwrnjm92ay7v8vlwjw3wq0vjlrrkjw0jq";
        };
      };
    };
    "brick/math" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "brick-math-459f2781e1a08d52ee56b0b1444086e038561e3f";
        src = fetchurl {
          url = "https://api.github.com/repos/brick/math/zipball/459f2781e1a08d52ee56b0b1444086e038561e3f";
          sha256 = "00qgiy3ywrhn0lhzjagizi47np2xj9g4gqm7p2g0iv8cciwkf4bp";
        };
      };
    };
    "composer/ca-bundle" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "composer-ca-bundle-74780ccf8c19d6acb8d65c5f39cd72110e132bbd";
        src = fetchurl {
          url = "https://api.github.com/repos/composer/ca-bundle/zipball/74780ccf8c19d6acb8d65c5f39cd72110e132bbd";
          sha256 = "0s7w5mag61xs29f2zzwikhc1y3sy03kyvqm73f8d5y1160fl1wpi";
        };
      };
    };
    "composer/composer" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "composer-composer-3e196135eacf9e519a6b00986bc6fe6aff977997";
        src = fetchurl {
          url = "https://api.github.com/repos/composer/composer/zipball/3e196135eacf9e519a6b00986bc6fe6aff977997";
          sha256 = "1xxhhcg9hazpd6whkpfpsnjf2yiig89fgfzyr2ssvfw89bzd6dnl";
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
    "composer/semver" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "composer-semver-647490bbcaf7fc4891c58f47b825eb99d19c377a";
        src = fetchurl {
          url = "https://api.github.com/repos/composer/semver/zipball/647490bbcaf7fc4891c58f47b825eb99d19c377a";
          sha256 = "16dx37b0b3qnla05h8l49hyg6khibd52i42lwqfyd91iysdpgz5r";
        };
      };
    };
    "composer/spdx-licenses" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "composer-spdx-licenses-c848241796da2abf65837d51dce1fae55a960149";
        src = fetchurl {
          url = "https://api.github.com/repos/composer/spdx-licenses/zipball/c848241796da2abf65837d51dce1fae55a960149";
          sha256 = "1g833l7pf6q7fswxi8xxsfgbm2alfpfbmk7l5crf04w72hp10nwk";
        };
      };
    };
    "composer/xdebug-handler" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "composer-xdebug-handler-f27e06cd9675801df441b3656569b328e04aa37c";
        src = fetchurl {
          url = "https://api.github.com/repos/composer/xdebug-handler/zipball/f27e06cd9675801df441b3656569b328e04aa37c";
          sha256 = "0db49yf7zcf4q57ba48n10cyrdjf7s598321m69dkb4dph0yc5qh";
        };
      };
    };
    "dantleech/argument-resolver" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "dantleech-argument-resolver-e34fabf7d6e53e5194f745ad069c4a87cc4b34cc";
        src = fetchurl {
          url = "https://gitlab.com/api/v4/projects/dantleech%2Fargument-resolver/repository/archive.zip?sha=e34fabf7d6e53e5194f745ad069c4a87cc4b34cc";
          sha256 = "023hap8ikywq34j95xpb405hpi1fj9yp5za9a8ky9il87kdhsvnb";
        };
      };
    };
    "dantleech/invoke" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "dantleech-invoke-9b002d746d2c1b86cfa63a47bb5909cee58ef50c";
        src = fetchurl {
          url = "https://api.github.com/repos/dantleech/invoke/zipball/9b002d746d2c1b86cfa63a47bb5909cee58ef50c";
          sha256 = "165vlqj5rf33gwvgc7674qxc12kqbpi7dqbzcdr87d4v6vi99w9n";
        };
      };
    };
    "dantleech/object-renderer" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "dantleech-object-renderer-942ad54a22e5ffb9ac3421d7bb06fa76bc45ad30";
        src = fetchurl {
          url = "https://api.github.com/repos/dantleech/object-renderer/zipball/942ad54a22e5ffb9ac3421d7bb06fa76bc45ad30";
          sha256 = "1m3dgyq1bs8xgffawdl3yij9zq9bcv6xay18p9zi9zq9wxawpzwj";
        };
      };
    };
    "daverandom/libdns" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "daverandom-libdns-42c2d700d1178c9f9e78664793463f7f1aea248c";
        src = fetchurl {
          url = "https://api.github.com/repos/DaveRandom/LibDNS/zipball/42c2d700d1178c9f9e78664793463f7f1aea248c";
          sha256 = "0ny05ayzkfw28v0l3jghlafglxzzqfrn1lvil5lpzw1yh9wbg96b";
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
    "jetbrains/phpstorm-stubs" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "jetbrains-phpstorm-stubs-6b568c153cea002dc6fad96285c3063d07cab18d";
        src = fetchurl {
          url = "https://api.github.com/repos/JetBrains/phpstorm-stubs/zipball/6b568c153cea002dc6fad96285c3063d07cab18d";
          sha256 = "0q3r5v4ggsxm9zdggaw4kmw2w58zxdq0c4w2ngvjmjby4gnf7fxl";
        };
      };
    };
    "justinrainbow/json-schema" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "justinrainbow-json-schema-ad87d5a5ca981228e0e205c2bc7dfb8e24559b60";
        src = fetchurl {
          url = "https://api.github.com/repos/justinrainbow/json-schema/zipball/ad87d5a5ca981228e0e205c2bc7dfb8e24559b60";
          sha256 = "12jrid38fyjcbhldxa26dm889mfr05kbr10mixdg77k47giin84q";
        };
      };
    };
    "kelunik/certificate" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "kelunik-certificate-56542e62d51533d04d0a9713261fea546bff80f6";
        src = fetchurl {
          url = "https://api.github.com/repos/kelunik/certificate/zipball/56542e62d51533d04d0a9713261fea546bff80f6";
          sha256 = "049izah872vw9rd5zydfy7hfpn2lwpn0jqpjw7xwzmabyv74d6kf";
        };
      };
    };
    "league/uri-parser" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "league-uri-parser-671548427e4c932352d9b9279fdfa345bf63fa00";
        src = fetchurl {
          url = "https://api.github.com/repos/thephpleague/uri-parser/zipball/671548427e4c932352d9b9279fdfa345bf63fa00";
          sha256 = "1vqvk7npgipdd0ldmpj78pk63wwqlnwjcn61w695jv9sdfyw0c8n";
        };
      };
    };
    "microsoft/tolerant-php-parser" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "microsoft-tolerant-php-parser-3eccfd273323aaf69513e2f1c888393f5947804b";
        src = fetchurl {
          url = "https://api.github.com/repos/microsoft/tolerant-php-parser/zipball/3eccfd273323aaf69513e2f1c888393f5947804b";
          sha256 = "1aqh8dzmd5qbhiq5h36r069f98bb8rzlfx28ccy8fn9mvq7zk59z";
        };
      };
    };
    "monolog/monolog" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "monolog-monolog-904713c5929655dc9b97288b69cfeedad610c9a1";
        src = fetchurl {
          url = "https://api.github.com/repos/Seldaek/monolog/zipball/904713c5929655dc9b97288b69cfeedad610c9a1";
          sha256 = "17fjd5dk45b6dbfx15vxqk6mnm3fsn2kd8nsjfjd2zk3zfihq4jj";
        };
      };
    };
    "phpactor/amp-fswatch" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpactor-amp-fswatch-e40b7dc1b96c5fdb5c6598a9abe9ca846039cdf1";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/amp-fswatch/zipball/e40b7dc1b96c5fdb5c6598a9abe9ca846039cdf1";
          sha256 = "0x31612vgc2528jrcj54zn125ad5sl3m4m2rnamv4b8mp0drf577";
        };
      };
    };
    "phpactor/class-mover" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpactor-class-mover-67d078564fc12fee293d09e43e6f629ab6470e2f";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/class-mover/zipball/67d078564fc12fee293d09e43e6f629ab6470e2f";
          sha256 = "0hlgkp8nwykqbq8gmdszk371vg5w3m2wkbi54yn8ms1qgkhcxafd";
        };
      };
    };
    "phpactor/class-to-file" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpactor-class-to-file-d65e4fd5da375657c8e0f1d8321bceaadeeccbf2";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/class-to-file/zipball/d65e4fd5da375657c8e0f1d8321bceaadeeccbf2";
          sha256 = "073id4xvcmrw7jvkpycp1wjx3w42g7gc8aqz1rfmxxah8dr8nm2n";
        };
      };
    };
    "phpactor/class-to-file-extension" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpactor-class-to-file-extension-9d6f6ae97f2642d79c1a8ab863d7512b347d856b";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/class-to-file-extension/zipball/9d6f6ae97f2642d79c1a8ab863d7512b347d856b";
          sha256 = "06nigacwlx893812fyyf3kjg9q5mpcyk5rjgjn9xdn2f5y1l1zzp";
        };
      };
    };
    "phpactor/code-builder" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpactor-code-builder-d3707df0e066b1c8a3134228eefb69fdc5dfbccd";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/code-builder/zipball/d3707df0e066b1c8a3134228eefb69fdc5dfbccd";
          sha256 = "0g940b476j20nvnchkrs09yv9sq811jmmn89qj8m3x7s1ia13bcs";
        };
      };
    };
    "phpactor/code-transform" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpactor-code-transform-5d8795f079a29049202df9c7a51bc70c79b9a2ab";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/code-transform/zipball/5d8795f079a29049202df9c7a51bc70c79b9a2ab";
          sha256 = "0lkxxspngyq3b7rmvgc4ama1w51c5n0xhqgbqfmhwlanqd0pmzdp";
        };
      };
    };
    "phpactor/code-transform-extension" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpactor-code-transform-extension-aff7ebc4127882adbf1ead01a86adb5ce167baff";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/code-transform-extension/zipball/aff7ebc4127882adbf1ead01a86adb5ce167baff";
          sha256 = "063jx6rm26ampa7ls0blzmaazb1zbi8fqvw54gd9jg9cgrxqnd3v";
        };
      };
    };
    "phpactor/completion" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpactor-completion-67bfe97fb9b282e1a4d072979905345a08c64982";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/completion/zipball/67bfe97fb9b282e1a4d072979905345a08c64982";
          sha256 = "0klm8v15hgzrydkd5if5xf98ms4i8sqxf7qjnck7dvx9ysyg5brm";
        };
      };
    };
    "phpactor/completion-extension" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpactor-completion-extension-1867de2160db1291f94e18697ec1491bdf450a33";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/completion-extension/zipball/1867de2160db1291f94e18697ec1491bdf450a33";
          sha256 = "0jz4fgrk3zvw5n7c7sz1jpicy8bm3xf49spz1pmgpkq3av5mgwrc";
        };
      };
    };
    "phpactor/completion-rpc-extension" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpactor-completion-rpc-extension-5f57f968949554559b75f6bc652a23159959916c";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/completion-rpc-extension/zipball/5f57f968949554559b75f6bc652a23159959916c";
          sha256 = "1qdk4ffcr5xwz8f383fjs6idwwg73914irvllgbjdjpv7g16mkl7";
        };
      };
    };
    "phpactor/completion-worse-extension" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpactor-completion-worse-extension-bb85d55a4cda49e9fe0064844e6708a95febd89a";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/completion-worse-extension/zipball/bb85d55a4cda49e9fe0064844e6708a95febd89a";
          sha256 = "0mrajf3hlxp2imms4rhlfwawjbqk54knaix5z8aj4pin8gkqpvfw";
        };
      };
    };
    "phpactor/composer-autoloader-extension" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpactor-composer-autoloader-extension-442bfb7667d4c75e64487d6c4228d24eed0f6e66";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/composer-autoloader-extension/zipball/442bfb7667d4c75e64487d6c4228d24eed0f6e66";
          sha256 = "1z5w45w4bgk4asvq7qdmn0fa4pxfdph8wq5l54jhbb1rk3f8j1hd";
        };
      };
    };
    "phpactor/config-loader" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpactor-config-loader-297608563ccdc14874d090c5a9af7d6c579b1a36";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/config-loader/zipball/297608563ccdc14874d090c5a9af7d6c579b1a36";
          sha256 = "1dszx28jwd0a228xm0gkg5f9gb6grd9izsnrdl8xynqfwjjymmwr";
        };
      };
    };
    "phpactor/console-extension" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpactor-console-extension-f4d2161287e71751539fb5647ab5d20c0f2b8675";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/console-extension/zipball/f4d2161287e71751539fb5647ab5d20c0f2b8675";
          sha256 = "14pp8blz0w6a23vmb5xb5k63kw8b3r5ck6349dgz6glq7q4b58y2";
        };
      };
    };
    "phpactor/container" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpactor-container-14e98f4b381a7dd89d5509edb76deacb71d4deae";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/container/zipball/14e98f4b381a7dd89d5509edb76deacb71d4deae";
          sha256 = "1mszfziilaqkpm76nb7fd4bh0vnlch715i0n1xv9nbhz7jrshaxf";
        };
      };
    };
    "phpactor/docblock" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpactor-docblock-a5567feab7b36938d6a1018a60efc5a7c4fd696c";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/docblock/zipball/a5567feab7b36938d6a1018a60efc5a7c4fd696c";
          sha256 = "0vwan3v4sk17g7iwgqd596hnmf9g47d8kcdy0559a29s8swy43v3";
        };
      };
    };
    "phpactor/extension-manager-extension" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpactor-extension-manager-extension-399a722367ce771e2f6f070a378e53eac83efe99";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/extension-manager-extension/zipball/399a722367ce771e2f6f070a378e53eac83efe99";
          sha256 = "0ycrxhsl7h3zmy155m5mnijzizq96sdag7133ny3v3wxcax6bpxg";
        };
      };
    };
    "phpactor/file-path-resolver" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpactor-file-path-resolver-d274de198741a7b91bd657fe68173b6d8c5aa3f3";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/file-path-resolver/zipball/d274de198741a7b91bd657fe68173b6d8c5aa3f3";
          sha256 = "1fip85nlyx2lza2g6vx3lz9f6cmxqnw24a4cmxf6gxar8l3xi1j7";
        };
      };
    };
    "phpactor/file-path-resolver-extension" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpactor-file-path-resolver-extension-730b46357f4f61209e2ae17bd45cfaf0a7a4c75b";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/file-path-resolver-extension/zipball/730b46357f4f61209e2ae17bd45cfaf0a7a4c75b";
          sha256 = "167f5r46xs61lyabcp3s68gmdadswksyik0ikjkp0hkpx65qa2ql";
        };
      };
    };
    "phpactor/indexer-extension" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpactor-indexer-extension-e4d6d34cd902f332f4b0d791dbe7f527cacf57bd";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/indexer-extension/zipball/e4d6d34cd902f332f4b0d791dbe7f527cacf57bd";
          sha256 = "1ly05dhldjzv8f5xf4pccqpdiaj7rky5c2y6gaq1k3ms9a6yqrva";
        };
      };
    };
    "phpactor/language-server" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpactor-language-server-8fcc50909cfcfc92f5e12b5f40b8bac81c6223c9";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/language-server/zipball/8fcc50909cfcfc92f5e12b5f40b8bac81c6223c9";
          sha256 = "159khngqyhprwcj1ljshbzfx503qhrk84fjpankswz9aqpq0ankz";
        };
      };
    };
    "phpactor/language-server-extension" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpactor-language-server-extension-399f1a1ed41d8201facb3b8effda2c34acd96212";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/language-server-extension/zipball/399f1a1ed41d8201facb3b8effda2c34acd96212";
          sha256 = "17a5qxmr6myn1yp5iv3iwwpgix9jv31pkzivldbb9azhi4chzpfh";
        };
      };
    };
    "phpactor/language-server-phpactor-extensions" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpactor-language-server-phpactor-extensions-f6437bee6ec13ec66ead223c49aabfe8cdd41f53";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/language-server-phpactor-extensions/zipball/f6437bee6ec13ec66ead223c49aabfe8cdd41f53";
          sha256 = "14g7gl1shj150fz0vkhm7jk1akbhx4dd8sibwpxfrrzw0vzzbvvl";
        };
      };
    };
    "phpactor/language-server-protocol" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpactor-language-server-protocol-306dd561711833f2a05a63b8332dc717d7ea5001";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/language-server-protocol/zipball/306dd561711833f2a05a63b8332dc717d7ea5001";
          sha256 = "0kxzsnn3509rhvkfcqpv9h4m1xfyrswyy6xnikbwbzj3zk006cc2";
        };
      };
    };
    "phpactor/logging-extension" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpactor-logging-extension-1799922042200683782f563d5cec3fbf1a85c8c7";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/logging-extension/zipball/1799922042200683782f563d5cec3fbf1a85c8c7";
          sha256 = "0ijyk481iqyzcqjd6nq25s7hcylnxwwn9b789pz9mdgzs9swpb2b";
        };
      };
    };
    "phpactor/map-resolver" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpactor-map-resolver-c15205f54bbb802a3c70eaa46d61be1d06ba8185";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/map-resolver/zipball/c15205f54bbb802a3c70eaa46d61be1d06ba8185";
          sha256 = "0wascgsb3nd2dg2hxy56cgrnl3s97pr5vxiv8nhsj90jmy8v98z2";
        };
      };
    };
    "phpactor/name-specification" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpactor-name-specification-ebb0a9a0589a7992b97075441bfc7def4e01889d";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/name/zipball/ebb0a9a0589a7992b97075441bfc7def4e01889d";
          sha256 = "0s4bzxz94jfyipwwi66i3lzdgnc3djmw0yss3shrczp3q19iyczp";
        };
      };
    };
    "phpactor/path-finder" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpactor-path-finder-307ae3bfd74778df3ff3aad8897c3237c217ba3a";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/path-finder/zipball/307ae3bfd74778df3ff3aad8897c3237c217ba3a";
          sha256 = "0rhhwp0c34c73nirgn5bk841p3qz3c1lrzgkhnmm6snyssh46dcj";
        };
      };
    };
    "phpactor/phly-event-dispatcher" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpactor-phly-event-dispatcher-5519ac1a5df8a1db72df82e11367b23443f2a0fe";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/phly-event-dispatcher/zipball/5519ac1a5df8a1db72df82e11367b23443f2a0fe";
          sha256 = "1y8j5c1plmwbfyjja95fl721jf8r7lbivqa6m8hmi2s9hql3bx4n";
        };
      };
    };
    "phpactor/php-extension" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpactor-php-extension-3a9739072bf9723c31b11da0dbf17aef7bc639e0";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/php-extension/zipball/3a9739072bf9723c31b11da0dbf17aef7bc639e0";
          sha256 = "0wc4p6v1dzsxc8layk0knfbz4f506di03jal9qld7aijhigh4i0p";
        };
      };
    };
    "phpactor/phpactor" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpactor-phpactor-670359cfc9534580156203fda7dfd3c72e130a45";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/phpactor/zipball/670359cfc9534580156203fda7dfd3c72e130a45";
          sha256 = "12wg3p8361652l74vxi5wa0fv3iriaj8dl8dgs0119zvh6qx6g1m";
        };
      };
    };
    "phpactor/reference-finder" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpactor-reference-finder-754f5b12ce42c3e98cf7b331222b7b0f8158c85f";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/reference-finder/zipball/754f5b12ce42c3e98cf7b331222b7b0f8158c85f";
          sha256 = "1fb80jdwkgzipzlq256fy2d6d42wkzzxvr7799zx1y9n92mrvwmd";
        };
      };
    };
    "phpactor/reference-finder-extension" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpactor-reference-finder-extension-f7126d074152351a5cfde3587a76892b372b017e";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/reference-finder-extension/zipball/f7126d074152351a5cfde3587a76892b372b017e";
          sha256 = "0f5apg9hmifyfmk6hqspdljhr7kwm9xkc4fnwpm7xc374y2zh64x";
        };
      };
    };
    "phpactor/reference-finder-rpc-extension" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpactor-reference-finder-rpc-extension-181875da5c998b7a5144c2a46d8b4d6b8f8af454";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/reference-finder-rpc-extension/zipball/181875da5c998b7a5144c2a46d8b4d6b8f8af454";
          sha256 = "0mjxx769znn47kkmxgx67bzf4z8846s415sy6j7xi0zc431s02xl";
        };
      };
    };
    "phpactor/rpc-extension" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpactor-rpc-extension-cfcde33c3f2821812d620283bb8116e88688309e";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/rpc-extension/zipball/cfcde33c3f2821812d620283bb8116e88688309e";
          sha256 = "0dvw52p2ba2a9mbll93jahcffqki4y7bz66y4l949ia7xgf44lkc";
        };
      };
    };
    "phpactor/source-code-filesystem" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpactor-source-code-filesystem-4a5c527c624f590e579020aea5a11acf9fcdf760";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/source-code-filesystem/zipball/4a5c527c624f590e579020aea5a11acf9fcdf760";
          sha256 = "180fx69jk5cyzqi5jkl9jwa01la6kv6w8l27zr5srjxaabv0v47j";
        };
      };
    };
    "phpactor/source-code-filesystem-extension" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpactor-source-code-filesystem-extension-bdfa6a5acc0eae2dc7bf4a10ac2226d060d35c5d";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/source-code-filesystem-extension/zipball/bdfa6a5acc0eae2dc7bf4a10ac2226d060d35c5d";
          sha256 = "15la6sppsa0v5xr1vlq10yi6gq6cl0cqvk7gxyg7xl8kg83c0775";
        };
      };
    };
    "phpactor/text-document" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpactor-text-document-962070cbf33a63e87e30ba6c7617f1aa80fa2be4";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/text-document/zipball/962070cbf33a63e87e30ba6c7617f1aa80fa2be4";
          sha256 = "1aib9km1nam9nmmxlcspalkgraxrxwd637ywv4rw69sps8rqdnqi";
        };
      };
    };
    "phpactor/worse-reference-finder-extension" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpactor-worse-reference-finder-extension-3b8b676634848e45c69bdcc8d4bed3ec851a01fc";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/worse-reference-finder-extension/zipball/3b8b676634848e45c69bdcc8d4bed3ec851a01fc";
          sha256 = "18qk1hkx8zd9zx7bplxsfsnjxpmjn3rfbf9flkrlp4di7fiwjknc";
        };
      };
    };
    "phpactor/worse-reference-finders" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpactor-worse-reference-finders-2bef52b079818d921526c041fcb7ed70efad65d7";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/worse-reference-finder/zipball/2bef52b079818d921526c041fcb7ed70efad65d7";
          sha256 = "0irgm3jxivpxbnam7sv4h3gxnhzs25xifs8l8biar0a2dgi8n94r";
        };
      };
    };
    "phpactor/worse-reflection" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpactor-worse-reflection-ec966ef99b8c089380615351523146fd20856f9a";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/worse-reflection/zipball/ec966ef99b8c089380615351523146fd20856f9a";
          sha256 = "1g7a91rfk66ql9sgp4chr7d69sx3sivw1w5nhmwqvmp6yjslxhgj";
        };
      };
    };
    "phpactor/worse-reflection-extension" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpactor-worse-reflection-extension-7e626bb0ebcbb38bb52d3ffa71d59724feff83a4";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/worse-reflection-extension/zipball/7e626bb0ebcbb38bb52d3ffa71d59724feff83a4";
          sha256 = "1pdnksz4a60sffgfcvjd29z4np4msvgq1lmncnc1j0p24svvvfai";
        };
      };
    };
    "psr/container" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "psr-container-513e0666f7216c7459170d56df27dfcefe1689ea";
        src = fetchurl {
          url = "https://api.github.com/repos/php-fig/container/zipball/513e0666f7216c7459170d56df27dfcefe1689ea";
          sha256 = "00yvj3b5ls2l1d0sk38g065raw837rw65dx1sicggjnkr85vmfzz";
        };
      };
    };
    "psr/event-dispatcher" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "psr-event-dispatcher-dbefd12671e8a14ec7f180cab83036ed26714bb0";
        src = fetchurl {
          url = "https://api.github.com/repos/php-fig/event-dispatcher/zipball/dbefd12671e8a14ec7f180cab83036ed26714bb0";
          sha256 = "05nicsd9lwl467bsv4sn44fjnnvqvzj1xqw2mmz9bac9zm66fsjd";
        };
      };
    };
    "psr/log" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "psr-log-d49695b909c3b7628b6289db5479a1c204601f11";
        src = fetchurl {
          url = "https://api.github.com/repos/php-fig/log/zipball/d49695b909c3b7628b6289db5479a1c204601f11";
          sha256 = "0sb0mq30dvmzdgsnqvw3xh4fb4bqjncx72kf8n622f94dd48amln";
        };
      };
    };
    "ramsey/collection" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "ramsey-collection-a4b48764bfbb8f3a6a4d1aeb1a35bb5e9ecac4a5";
        src = fetchurl {
          url = "https://api.github.com/repos/ramsey/collection/zipball/a4b48764bfbb8f3a6a4d1aeb1a35bb5e9ecac4a5";
          sha256 = "0y5s9rbs023sw94yzvxr8fn9rr7xw03f08zmc9n9jl49zlr5s52p";
        };
      };
    };
    "ramsey/uuid" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "ramsey-uuid-433b2014e3979047db08a17a205f410ba3869cf2";
        src = fetchurl {
          url = "https://api.github.com/repos/ramsey/uuid/zipball/433b2014e3979047db08a17a205f410ba3869cf2";
          sha256 = "1yvdbbgblnzzv1zjzwggpayfb8n2kpbwki9dnxc42g4wrxissb8j";
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
    "seld/jsonlint" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "seld-jsonlint-4211420d25eba80712bff236a98960ef68b866b7";
        src = fetchurl {
          url = "https://api.github.com/repos/Seldaek/jsonlint/zipball/4211420d25eba80712bff236a98960ef68b866b7";
          sha256 = "1sgfwxipspih3xhzivpdykcfnbk9ydhzpi8vc8q0jxsd4q8kf38c";
        };
      };
    };
    "seld/phar-utils" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "seld-phar-utils-ea2f4014f163c1be4c601b9b7bd6af81ba8d701c";
        src = fetchurl {
          url = "https://api.github.com/repos/Seldaek/phar-utils/zipball/ea2f4014f163c1be4c601b9b7bd6af81ba8d701c";
          sha256 = "0gsni1p06ahp1pwpp2bm5b21cpv9k6cfrhlwlrpszpg03cmsbng2";
        };
      };
    };
    "symfony/console" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-console-dccb8d251a9017d5994c988b034d3e18aaabf740";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/console/zipball/dccb8d251a9017d5994c988b034d3e18aaabf740";
          sha256 = "1a8v01zk4sdd7sxga8d6i8b7s0gnsb0sksrdjivm5zjlhfldl490";
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
        name = "symfony-filesystem-648bfaca6a494f3e22378123bcee2894045dc9d8";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/filesystem/zipball/648bfaca6a494f3e22378123bcee2894045dc9d8";
          sha256 = "1ii11bjnnyhh7dpay0yga74n00kh97k7p38llmmzv0123bjik9hm";
        };
      };
    };
    "symfony/finder" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-finder-6071aebf810ad13fe8200c224f36103abb37cf1f";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/finder/zipball/6071aebf810ad13fe8200c224f36103abb37cf1f";
          sha256 = "1g2bccmib4lnrr77z3pwm7qjh8hbgr6yj8l93dg2qfzi5mw9p7s2";
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
    "symfony/polyfill-php72" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-php72-869329b1e9894268a8a61dabb69153029b7a8c97";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/polyfill-php72/zipball/869329b1e9894268a8a61dabb69153029b7a8c97";
          sha256 = "1h0lbh8d41sa4fymmw03yzws3v3z0lz4lv1kgcld7r53i2m3wfwp";
        };
      };
    };
    "symfony/polyfill-php73" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-php73-9e8ecb5f92152187c4799efd3c96b78ccab18ff9";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/polyfill-php73/zipball/9e8ecb5f92152187c4799efd3c96b78ccab18ff9";
          sha256 = "1p0jr92x323pl4frjbhmziyk5g1zig1g30i1v1p0wfli2sq8h5mb";
        };
      };
    };
    "symfony/polyfill-php80" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-php80-7a6ff3f1959bb01aefccb463a0f2cd3d3d2fd936";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/polyfill-php80/zipball/7a6ff3f1959bb01aefccb463a0f2cd3d3d2fd936";
          sha256 = "16yydk7rsknlasrpn47n4b4js8svvp4rxzw99dkav52wr3cqmcwd";
        };
      };
    };
    "symfony/process" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-process-c5ba874c9b636dbccf761e22ce750e88ec3f55e1";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/process/zipball/c5ba874c9b636dbccf761e22ce750e88ec3f55e1";
          sha256 = "165z34pmx7372b0pimnq2i1krr2xn0h6169jwnxnp3mnjqrqd64d";
        };
      };
    };
    "symfony/service-contracts" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-service-contracts-4b426aac47d6427cc1a1d0f7e2ac724627f5966c";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/service-contracts/zipball/4b426aac47d6427cc1a1d0f7e2ac724627f5966c";
          sha256 = "0lh0vxy0h4wsjmnlf42s950bicsvkzz6brqikfnfb5kmvi0xhcm6";
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
    "symfony/yaml" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-yaml-71c05db20cb9b54d381a28255f17580e2b7e36a5";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/yaml/zipball/71c05db20cb9b54d381a28255f17580e2b7e36a5";
          sha256 = "12rq16vp8jcfam59c8kkn38hzrdrylnbkk60cycbr760i403wp76";
        };
      };
    };
    "thecodingmachine/safe" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "thecodingmachine-safe-9f277171e296a3c8629c04ac93ec95ff0f208ccb";
        src = fetchurl {
          url = "https://api.github.com/repos/thecodingmachine/safe/zipball/9f277171e296a3c8629c04ac93ec95ff0f208ccb";
          sha256 = "0qslks98ywlmiyyskvh6mrphd6d45qln6jyaviz5lrfck2lwy0xm";
        };
      };
    };
    "twig/twig" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "twig-twig-3e059001d6d597dd50ea7c74dd2464b4adea48d3";
        src = fetchurl {
          url = "https://api.github.com/repos/twigphp/Twig/zipball/3e059001d6d597dd50ea7c74dd2464b4adea48d3";
          sha256 = "0qhg2amdgg6sfcr7b6wga2vhplfjfxywvdlwvs1xnr99qsx9qj61";
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
    "webmozart/glob" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "webmozart-glob-3c17f7dec3d9d0e87b575026011f2e75a56ed655";
        src = fetchurl {
          url = "https://api.github.com/repos/webmozarts/glob/zipball/3c17f7dec3d9d0e87b575026011f2e75a56ed655";
          sha256 = "1rdngm6yfxapxxp5fcsmspsj3jpww18h1q6cl3qd1pi0ma8dyc6f";
        };
      };
    };
    "webmozart/path-util" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "webmozart-path-util-d939f7edc24c9a1bb9c0dee5cb05d8e859490725";
        src = fetchurl {
          url = "https://api.github.com/repos/webmozart/path-util/zipball/d939f7edc24c9a1bb9c0dee5cb05d8e859490725";
          sha256 = "0zv2di0fh3aiwij0nl6595p8qvm9zh0k8jd3ngqhmqnis35kr01l";
        };
      };
    };
  };
  devPackages = {};
in
composerEnv.buildPackage {
  inherit packages devPackages noDev;
  name = "phpactor-phpactor";
  src = composerEnv.filterSrc ./.;
  executable = true;
  symlinkDependencies = false;
  meta = {};
}
