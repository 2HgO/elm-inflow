module Styles.Header exposing (..)

import Css exposing (..)
import Css.Global exposing (typeSelector, class, descendants, each)
import Css.Media exposing (withMediaQuery)

import Styles.Constants exposing (tablet, purple, bfont)

header : Style
header =
  batch
    [ paddingTop (rem 2)
    , paddingBottom (rem 2)
    , withMediaQuery [ tablet ]
        [ paddingTop (rem 4.5)
        , paddingBottom (rem 4.5)
        ]
    ]

headerWrapper : Style
headerWrapper =
  batch
    [ displayFlex
    , justifyContent spaceBetween
    , alignItems center
    , descendants 
        [ class "logo-holder"
            [ height (px 25)
            , withMediaQuery [ tablet ]
                [ height auto ]
            ]
        , class "social-media"
            [ displayFlex
            , alignItems center
            ]
        , each [ class "social-media-list", class "action-list" ]
            [ displayFlex
            , alignItems center
            ]
        , class "social-media-list"
            [ displayFlex
            , withMediaQuery [ tablet ]
                [ marginLeft (rem 1.7) ]
            , descendants
                [ typeSelector "a" 
                    [ padding2 (rem 1) (rem 0.5)
                    , withMediaQuery [ tablet ]
                        [ padding (rem 1) ]
                    ]
                , typeSelector "svg"
                    [ width (px 24)
                    , height (px 24)
                    ]
                ]
            ]
        , class "mobile-link"
            [ displayFlex
            , alignItems center
            , padding2 (rem 1) (rem 1)
            , property "background" (.value purple)
            , color (hex "#fff")
            , borderRadius (px 16)
            , withMediaQuery [ tablet ]
                [ padding2 (rem 1.2) (rem 2) ]
            , descendants
                [ typeSelector "svg"
                    [ width (px 20)
                    , height (px 20)
                    , withMediaQuery [ tablet ]
                        [ width (px 30)
                        , height (px 30)
                        ]
                    , firstOfType
                        [ marginRight (rem 0.5)
                        , withMediaQuery [ tablet ] [ marginRight (rem 1) ]
                        ]
                    ]
                , typeSelector "span"
                    [ display none
                    , withMediaQuery [ tablet ]
                        [ display block ]
                    ]
                ]
            ]
        , class "web-link"
            [ display none
            , padding2 (rem 1.3) (rem 1)
            , marginLeft (rem 1)
            , color purple
            , borderRadius (px 16)
            , border3 (px 2) solid (hex "#8D45CD")
            , withMediaQuery [ tablet ]
                [ display block
                , marginLeft (rem 2)
                , padding2 (rem 2) (rem 2.4)
                ]
            ]
        , each [ typeSelector "a", typeSelector "button" ]
            [ display block
            , color purple
            , bfont
            , fontSize (rem 1.8)
            , fontWeight (int 400)
            ]
        ]
    ]
