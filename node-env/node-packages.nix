# This file has been generated by node2nix 1.11.1. Do not edit!

{ nodeEnv, fetchurl, fetchgit, nix-gitignore, stdenv, lib, globalBuildInputs ? [ ] }:

let
  sources = {
    "@sindresorhus/is-4.6.0" = {
      name = "_at_sindresorhus_slash_is";
      packageName = "@sindresorhus/is";
      version = "4.6.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/@sindresorhus/is/-/is-4.6.0.tgz";
        sha512 = "t09vSN3MdfsyCHoFcTRCH/iUtG7OJ0CsjzB8cjAmKc/va/kIgeDI/TxsigdncE/4be734m0cvIYwNaV4i2XqAw==";
      };
    };
    "@szmarczak/http-timer-4.0.6" = {
      name = "_at_szmarczak_slash_http-timer";
      packageName = "@szmarczak/http-timer";
      version = "4.0.6";
      src = fetchurl {
        url = "https://registry.npmjs.org/@szmarczak/http-timer/-/http-timer-4.0.6.tgz";
        sha512 = "4BAffykYOgO+5nzBWYwE3W90sBgLJoUPRWWcL8wlyiM8IB8ipJz3UMJ9KXQd1RKQXpKp8Tutn80HZtWsu2u76w==";
      };
    };
    "@types/cacheable-request-6.0.3" = {
      name = "_at_types_slash_cacheable-request";
      packageName = "@types/cacheable-request";
      version = "6.0.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/@types/cacheable-request/-/cacheable-request-6.0.3.tgz";
        sha512 = "IQ3EbTzGxIigb1I3qPZc1rWJnH0BmSKv5QYTalEwweFvyBDLSAe24zP0le/hyi7ecGfZVlIVAg4BZqb8WBwKqw==";
      };
    };
    "@types/http-cache-semantics-4.0.4" = {
      name = "_at_types_slash_http-cache-semantics";
      packageName = "@types/http-cache-semantics";
      version = "4.0.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/@types/http-cache-semantics/-/http-cache-semantics-4.0.4.tgz";
        sha512 = "1m0bIFVc7eJWyve9S0RnuRgcQqF/Xd5QsUZAZeQFr1Q3/p9JWoQQEqmVy+DPTNpGXwhgIetAoYF8JSc33q29QA==";
      };
    };
    "@types/keyv-3.1.4" = {
      name = "_at_types_slash_keyv";
      packageName = "@types/keyv";
      version = "3.1.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/@types/keyv/-/keyv-3.1.4.tgz";
        sha512 = "BQ5aZNSCpj7D6K2ksrRCTmKRLEpnPvWDiLPfoGyhZ++8YtiK9d/3DBKPJgry359X/P1PfruyYwvnvwFjuEiEIg==";
      };
    };
    "@types/node-20.10.0" = {
      name = "_at_types_slash_node";
      packageName = "@types/node";
      version = "20.10.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/@types/node/-/node-20.10.0.tgz";
        sha512 = "D0WfRmU9TQ8I9PFx9Yc+EBHw+vSpIub4IDvQivcp26PtPrdMGAq5SDcpXEo/epqa/DXotVpekHiLNTg3iaKXBQ==";
      };
    };
    "@types/responselike-1.0.3" = {
      name = "_at_types_slash_responselike";
      packageName = "@types/responselike";
      version = "1.0.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/@types/responselike/-/responselike-1.0.3.tgz";
        sha512 = "H/+L+UkTV33uf49PH5pCAUBVPNj2nDBXTN+qS1dOwyyg24l3CcicicCA7ca+HMvJBZcFgl5r8e+RR6elsb4Lyw==";
      };
    };
    "axios-0.21.4" = {
      name = "axios";
      packageName = "axios";
      version = "0.21.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/axios/-/axios-0.21.4.tgz";
        sha512 = "ut5vewkiu8jjGBdqpM44XxjuCjq9LAKeHVmoVfHVzy8eHgxxq8SbAVQNovDA8mVi05kP0Ea/n/UzcSHcTJQfNg==";
      };
    };
    "cacheable-lookup-5.0.4" = {
      name = "cacheable-lookup";
      packageName = "cacheable-lookup";
      version = "5.0.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/cacheable-lookup/-/cacheable-lookup-5.0.4.tgz";
        sha512 = "2/kNscPhpcxrOigMZzbiWF7dz8ilhb/nIHU3EyZiXWXpeq/au8qJ8VhdftMkty3n7Gj6HIGalQG8oiBNB3AJgA==";
      };
    };
    "cacheable-request-7.0.4" = {
      name = "cacheable-request";
      packageName = "cacheable-request";
      version = "7.0.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/cacheable-request/-/cacheable-request-7.0.4.tgz";
        sha512 = "v+p6ongsrp0yTGbJXjgxPow2+DL93DASP4kXCDKb8/bwRtt9OEF3whggkkDkGNzgcWy2XaF4a8nZglC7uElscg==";
      };
    };
    "clone-response-1.0.3" = {
      name = "clone-response";
      packageName = "clone-response";
      version = "1.0.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/clone-response/-/clone-response-1.0.3.tgz";
        sha512 = "ROoL94jJH2dUVML2Y/5PEDNaSHgeOdSDicUyS7izcF63G6sTc/FTjLub4b8Il9S8S0beOfYt0TaA5qvFK+w0wA==";
      };
    };
    "decompress-response-6.0.0" = {
      name = "decompress-response";
      packageName = "decompress-response";
      version = "6.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/decompress-response/-/decompress-response-6.0.0.tgz";
        sha512 = "aW35yZM6Bb/4oJlZncMH2LCoZtJXTRxES17vE3hoRiowU2kWHaJKFkSBDnDR+cm9J+9QhXmREyIfv0pji9ejCQ==";
      };
    };
    "defer-to-connect-2.0.1" = {
      name = "defer-to-connect";
      packageName = "defer-to-connect";
      version = "2.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/defer-to-connect/-/defer-to-connect-2.0.1.tgz";
        sha512 = "4tvttepXG1VaYGrRibk5EwJd1t4udunSOVMdLSAL6mId1ix438oPwPZMALY41FCijukO1L0twNcGsdzS7dHgDg==";
      };
    };
    "end-of-stream-1.4.4" = {
      name = "end-of-stream";
      packageName = "end-of-stream";
      version = "1.4.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/end-of-stream/-/end-of-stream-1.4.4.tgz";
        sha512 = "+uw1inIHVPQoaVuHzRyXd21icM+cnt4CzD5rW+NC1wjOUSTOs+Te7FOv7AhN7vS9x/oIyhLP5PR1H+phQAHu5Q==";
      };
    };
    "follow-redirects-1.15.3" = {
      name = "follow-redirects";
      packageName = "follow-redirects";
      version = "1.15.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/follow-redirects/-/follow-redirects-1.15.3.tgz";
        sha512 = "1VzOtuEM8pC9SFU1E+8KfTjZyMztRsgEfwQl44z8A25uy13jSzTj6dyK2Df52iV0vgHCfBwLhDWevLn95w5v6Q==";
      };
    };
    "get-stream-5.2.0" = {
      name = "get-stream";
      packageName = "get-stream";
      version = "5.2.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/get-stream/-/get-stream-5.2.0.tgz";
        sha512 = "nBF+F1rAZVCu/p7rjzgA+Yb4lfYXrpl7a6VmJrU8wF9I1CKvP/QwPNZHnOlwbTkY6dvtFIzFMSyQXbLoTQPRpA==";
      };
    };
    "got-11.8.6" = {
      name = "got";
      packageName = "got";
      version = "11.8.6";
      src = fetchurl {
        url = "https://registry.npmjs.org/got/-/got-11.8.6.tgz";
        sha512 = "6tfZ91bOr7bOXnK7PRDCGBLa1H4U080YHNaAQ2KsMGlLEzRbk44nsZF2E1IeRc3vtJHPVbKCYgdFbaGO2ljd8g==";
      };
    };
    "http-cache-semantics-4.1.1" = {
      name = "http-cache-semantics";
      packageName = "http-cache-semantics";
      version = "4.1.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/http-cache-semantics/-/http-cache-semantics-4.1.1.tgz";
        sha512 = "er295DKPVsV82j5kw1Gjt+ADA/XYHsajl82cGNQG2eyoPkvgUhX+nDIyelzhIWbbsXP39EHcI6l5tYs2FYqYXQ==";
      };
    };
    "http2-wrapper-1.0.3" = {
      name = "http2-wrapper";
      packageName = "http2-wrapper";
      version = "1.0.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/http2-wrapper/-/http2-wrapper-1.0.3.tgz";
        sha512 = "V+23sDMr12Wnz7iTcDeJr3O6AIxlnvT/bmaAAAP/Xda35C90p9599p0F1eHR/N1KILWSoWVAiOMFjBBXaXSMxg==";
      };
    };
    "json-buffer-3.0.1" = {
      name = "json-buffer";
      packageName = "json-buffer";
      version = "3.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/json-buffer/-/json-buffer-3.0.1.tgz";
        sha512 = "4bV5BfR2mqfQTJm+V5tPPdf+ZpuhiIvTuAB5g8kcrXOZpTT/QwwVRWBywX1ozr6lEuPdbHxwaJlm9G6mI2sfSQ==";
      };
    };
    "keyv-4.5.4" = {
      name = "keyv";
      packageName = "keyv";
      version = "4.5.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/keyv/-/keyv-4.5.4.tgz";
        sha512 = "oxVHkHR/EJf2CNXnWxRLW6mg7JyCCUcG0DtEGmL2ctUo1PNTin1PUil+r/+4r5MpVgC/fn1kjsx7mjSujKqIpw==";
      };
    };
    "lowercase-keys-2.0.0" = {
      name = "lowercase-keys";
      packageName = "lowercase-keys";
      version = "2.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/lowercase-keys/-/lowercase-keys-2.0.0.tgz";
        sha512 = "tqNXrS78oMOE73NMxK4EMLQsQowWf8jKooH9g7xPavRT706R6bkQJ6DY2Te7QukaZsulxa30wQ7bk0pm4XiHmA==";
      };
    };
    "mimic-response-1.0.1" = {
      name = "mimic-response";
      packageName = "mimic-response";
      version = "1.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/mimic-response/-/mimic-response-1.0.1.tgz";
        sha512 = "j5EctnkH7amfV/q5Hgmoal1g2QHFJRraOtmx0JpIqkxhBhI/lJSl1nMpQ45hVarwNETOoWEimndZ4QK0RHxuxQ==";
      };
    };
    "mimic-response-3.1.0" = {
      name = "mimic-response";
      packageName = "mimic-response";
      version = "3.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/mimic-response/-/mimic-response-3.1.0.tgz";
        sha512 = "z0yWI+4FDrrweS8Zmt4Ej5HdJmky15+L2e6Wgn3+iK5fWzb6T3fhNFq2+MeTRb064c6Wr4N/wv0DzQTjNzHNGQ==";
      };
    };
    "normalize-url-6.1.0" = {
      name = "normalize-url";
      packageName = "normalize-url";
      version = "6.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/normalize-url/-/normalize-url-6.1.0.tgz";
        sha512 = "DlL+XwOy3NxAQ8xuC0okPgK46iuVNAK01YN7RueYBqqFeGsBjV9XmCAzAdgt+667bCl5kPh9EqKKDwnaPG1I7A==";
      };
    };
    "once-1.4.0" = {
      name = "once";
      packageName = "once";
      version = "1.4.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/once/-/once-1.4.0.tgz";
        sha512 = "lNaJgI+2Q5URQBkccEKHTQOPaXdUxnZZElQTZY0MFUAuaEqe1E+Nyvgdz/aIyNi6Z9MzO5dv1H8n58/GELp3+w==";
      };
    };
    "p-cancelable-2.1.1" = {
      name = "p-cancelable";
      packageName = "p-cancelable";
      version = "2.1.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/p-cancelable/-/p-cancelable-2.1.1.tgz";
        sha512 = "BZOr3nRQHOntUjTrH8+Lh54smKHoHyur8We1V8DSMVrl5A2malOOwuJRnKRDjSnkoeBh4at6BwEnb5I7Jl31wg==";
      };
    };
    "pump-3.0.0" = {
      name = "pump";
      packageName = "pump";
      version = "3.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/pump/-/pump-3.0.0.tgz";
        sha512 = "LwZy+p3SFs1Pytd/jYct4wpv49HiYCqd9Rlc5ZVdk0V+8Yzv6jR5Blk3TRmPL1ft69TxP0IMZGJ+WPFU2BFhww==";
      };
    };
    "quick-lru-5.1.1" = {
      name = "quick-lru";
      packageName = "quick-lru";
      version = "5.1.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/quick-lru/-/quick-lru-5.1.1.tgz";
        sha512 = "WuyALRjWPDGtt/wzJiadO5AXY+8hZ80hVpe6MyivgraREW751X3SbhRvG3eLKOYN+8VEvqLcf3wdnt44Z4S4SA==";
      };
    };
    "resolve-alpn-1.2.1" = {
      name = "resolve-alpn";
      packageName = "resolve-alpn";
      version = "1.2.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/resolve-alpn/-/resolve-alpn-1.2.1.tgz";
        sha512 = "0a1F4l73/ZFZOakJnQ3FvkJ2+gSTQWz/r2KE5OdDY0TxPm5h4GkqkWWfM47T7HsbnOtcJVEF4epCVy6u7Q3K+g==";
      };
    };
    "responselike-2.0.1" = {
      name = "responselike";
      packageName = "responselike";
      version = "2.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/responselike/-/responselike-2.0.1.tgz";
        sha512 = "4gl03wn3hj1HP3yzgdI7d3lCkF95F21Pz4BPGvKHinyQzALR5CapwC8yIi0Rh58DEMQ/SguC03wFj2k0M/mHhw==";
      };
    };
    "undici-types-5.26.5" = {
      name = "undici-types";
      packageName = "undici-types";
      version = "5.26.5";
      src = fetchurl {
        url = "https://registry.npmjs.org/undici-types/-/undici-types-5.26.5.tgz";
        sha512 = "JlCMO+ehdEIKqlFxk6IfVoAUVmgz7cU7zD/h9XZ0qzeosSHmUJVOzSQvvYSYWXkFXC+IfLKSIffhv0sVZup6pA==";
      };
    };
    "wrappy-1.0.2" = {
      name = "wrappy";
      packageName = "wrappy";
      version = "1.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/wrappy/-/wrappy-1.0.2.tgz";
        sha512 = "l4Sp/DRseor9wL6EvV2+TuQn63dMkPjZ/sp9XkghTEbV9KlPS1xUsZ3u7/IQO4wxtcFB4bgpQPRcR3QCvezPcQ==";
      };
    };
  };
  args = {
    name = "sosad_checkin";
    packageName = "sosad_checkin";
    version = "1.0.0";
    src = ./.;
    dependencies = [
      sources."@sindresorhus/is-4.6.0"
      sources."@szmarczak/http-timer-4.0.6"
      sources."@types/cacheable-request-6.0.3"
      sources."@types/http-cache-semantics-4.0.4"
      sources."@types/keyv-3.1.4"
      sources."@types/node-20.10.0"
      sources."@types/responselike-1.0.3"
      sources."axios-0.21.4"
      sources."cacheable-lookup-5.0.4"
      sources."cacheable-request-7.0.4"
      sources."clone-response-1.0.3"
      (sources."decompress-response-6.0.0" // {
        dependencies = [
          sources."mimic-response-3.1.0"
        ];
      })
      sources."defer-to-connect-2.0.1"
      sources."end-of-stream-1.4.4"
      sources."follow-redirects-1.15.3"
      sources."get-stream-5.2.0"
      sources."got-11.8.6"
      sources."http-cache-semantics-4.1.1"
      sources."http2-wrapper-1.0.3"
      sources."json-buffer-3.0.1"
      sources."keyv-4.5.4"
      sources."lowercase-keys-2.0.0"
      sources."mimic-response-1.0.1"
      sources."normalize-url-6.1.0"
      sources."once-1.4.0"
      sources."p-cancelable-2.1.1"
      sources."pump-3.0.0"
      sources."quick-lru-5.1.1"
      sources."resolve-alpn-1.2.1"
      sources."responselike-2.0.1"
      sources."undici-types-5.26.5"
      sources."wrappy-1.0.2"
    ];
    buildInputs = globalBuildInputs;
    meta = {
      description = "";
      license = "ISC";
    };
    production = true;
    bypassCache = true;
    reconstructLock = true;
  };
in
{
  args = args;
  sources = sources;
  tarball = nodeEnv.buildNodeSourceDist args;
  package = nodeEnv.buildNodePackage args;
  shell = nodeEnv.buildNodeShell args;
  nodeDependencies = nodeEnv.buildNodeDependencies (lib.overrideExisting args {
    src = stdenv.mkDerivation {
      name = args.name + "-package-json";
      src = nix-gitignore.gitignoreSourcePure [
        "*"
        "!package.json"
        "!package-lock.json"
      ]
        args.src;
      dontBuild = true;
      installPhase = "mkdir -p $out; cp -r ./* $out;";
    };
  });
}
