let upstream =
      https://github.com/purescript/package-sets/releases/download/psc-0.14.0-20210409/packages.dhall sha256:e81c2f2ce790c0e0d79869d22f7a37d16caeb5bd81cfda71d46c58f6199fd33f

let additions =
      { node-readline-aff =
        { dependencies =
          [ "prelude"
          , "console"
          , "psci-support"
          , "node-readline"
          , "aff"
          , "node-streams"
          , "options"
          , "exceptions"
          , "either"
          ]
        , repo = "https://github.com/ChrisPenner/purescript-node-readline-aff"
        , version = "master"
        }
      , options =
        { dependencies =
          [ "assert"
          , "console"
          , "contravariant"
          , "effect"
          , "foreign"
          , "foreign-object"
          , "maybe"
          , "psci-support"
          , "tuples"
          ]
        , repo = "https://github.com/purescript-contrib/purescript-options"
        , version = "main"
        }
      }

in  upstream // additions
