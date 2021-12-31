module Styles.Global exposing (..)

import Css exposing (..)
import Css.Global exposing (Snippet, typeSelector, each)
import Css.Media exposing (withMediaQuery)

globalUlStyle : Snippet
globalUlStyle =
  typeSelector "ul"
    [ listStyle none
    , padding zero
    ]

globalWildcardStyle : Snippet
globalWildcardStyle =
  typeSelector "*"
    [ margin zero, padding zero, boxSizing borderBox ]

globalWildCardAndPseudoStyle : Snippet
globalWildCardAndPseudoStyle =
  each [ typeSelector "*", typeSelector ":before", typeSelector ":after" ]
    [ boxSizing borderBox
    , margin zero
    , padding zero
    , property "-webkit-font-smoothing" "antialiased"
    , property "-moz-osx-font-smoothing" "grayscale"
    , boxSizing borderBox
    , property "scroll-behavior" "smooth"
    ]

globalH2Style : Snippet
globalH2Style =
  typeSelector "h2"
    [ fontFamilies [ qt "Right Grotesk", .value sansSerif ]
    , fontWeight (int 400)
    ]

globalPStyle : Snippet
globalPStyle =
  typeSelector "p"
    [ fontSize (rem 1.6)
    , lineHeight (num 1.75)
    , letterSpacing (px -0.04)
    , withMediaQuery [ "only screen and (min-width: 768px)" ]
        [ fontSize (rem 2)
        , lineHeight (num 1.62)
        ]
    , withMediaQuery [ "only screen and (min-width: 1024px)" ]
        [ fontSize (rem 2.4) ]
    ]

globalHtmlStyle : Snippet
globalHtmlStyle =
  typeSelector "html"
    [ fontSize (px 10) ]

globalBodyStyle : Snippet
globalBodyStyle =
  typeSelector "body"
    [ fontFamilies [ "MaisonNeue", .value sansSerif ]
    , fontSize (rem 2.4)
    , color (hex "#000")
    , property "-webkit-font-smoothing" "antialiased"
    , property "-moz-osx-font-smoothing" "grayscale"
    ]

globalButtonAndAStyle : Snippet
globalButtonAndAStyle =
  each [ typeSelector "button", typeSelector "a" ]
    [ fontFamilies [ qt "Right Grotesk", .value sansSerif ]
    , fontWeight (int 500)
    , property "background" "transparent"
    , property "border" "none"
    , outline none
    , cursor pointer
    , textDecoration none
    ]
grotesk : Snippet
grotesk =
  typeSelector "@font-face"
    [ property "font-family" "\"Right Grotesk\""
    , property "src" "url(\"/public/font-heading/PPRightGrotesk-WideMedium.otf\") format(\"woff\")"
    , fontStyle normal
    , fontWeight (int 400)
    , property "font-display" "fallback"
    ]

maisonNeue : Snippet
maisonNeue =
  typeSelector "@font-face"
    [ property "font-family" "MaisonNeue"
    , property "src" "url(\"/public/font-body/MaisonNeue-Medium.woff\") format(\"woff\")"
    , fontStyle normal
    , fontWeight (int 400)
    , property "font-display" "fallback"
    ]
