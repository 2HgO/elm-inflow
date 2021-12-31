module Styles.Footer exposing (..)

import Css exposing (..)
import Css.Global exposing (typeSelector, class, descendants)
import Css.Media exposing (withMediaQuery)

import Styles.Constants exposing (tablet, mobile, purple, bfont)

footerWrapper : Style
footerWrapper =
  Css.batch
    [ paddingTop (rem 4)
    , paddingBottom (rem 5)
    , withMediaQuery [ mobile ]
        [ displayFlex, alignItems center ]
    , descendants
        [ class "logo-holder"
            [ height (px 25)
            , withMediaQuery [ mobile ] [ marginRight (rem 2) ]
            , withMediaQuery [ tablet ] [ height (px 32), marginRight (rem 6.4) ]
            ]
        ]
    ]

externalLinks : Style
externalLinks =
  Css.batch
    [ displayFlex
    , alignItems center
    , descendants
        [ typeSelector "a"
            [ bfont
            , color purple
            , fontSize (rem 1.2)
            , withMediaQuery [ tablet ] [ fontSize (rem 1.8) ]
            ]
        , typeSelector "li"
            [ marginRight (rem 2)
            , withMediaQuery [ tablet ] [ marginRight (rem 6.4) ]
            ]
        ]
    ]

socialMediaListFooter : Style
socialMediaListFooter =
  Css.batch
    [ displayFlex
    , alignItems center
    , descendants
        [ typeSelector "li" [ marginRight (rem 1) ]
        , typeSelector "a"
            [ display block
            , padding2 (rem 1) (rem 0.5)
            , withMediaQuery [ tablet ] [ padding (rem 1) ]
            ]
        , typeSelector "svg" [ width (px 24), height (px 24) ]
        ]
    ]
