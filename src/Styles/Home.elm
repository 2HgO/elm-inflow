module Styles.Home exposing (..)

import Css exposing (..)
import Css.Global exposing (descendants, class, h2, p, typeSelector)
import Css.Media exposing (withMediaQuery)

import Styles.Constants exposing (..)

wrapperMXWidth : Style
wrapperMXWidth =
  batch
    [ maxWidth (px 1440)
    , margin2 zero auto
    ]

wrapperX : Style
wrapperX =
  batch
    [ paddingLeft (rem 2)
    , paddingRight (rem 2)
    , withMediaQuery [ desktop ]
        [ paddingLeft (rem 13.5)
        , paddingRight (rem 13.5)
        ]
    , withMediaQuery [ llaptop ]
        [ paddingLeft (rem 10)
        , paddingRight (rem 10)
        ]
    , withMediaQuery [ laptop ]
        [ paddingLeft (rem 7.5)
        , paddingRight (rem 7.5)
        ]
    , withMediaQuery [ tablet ]
        [ paddingLeft (rem 5)
        , paddingRight (rem 5)
        ]
    ]

wrapperYT : Style
wrapperYT =
  batch
    [ paddingTop (rem 5)
    , withMediaQuery [ llaptop ]
        [ paddingTop (rem 20) ]
    , withMediaQuery [ laptop ]
        [ paddingTop (rem 15) ]
    , withMediaQuery [ tablet ]
        [ paddingTop (rem 10) ]
    ]

hero : Style
hero =
  batch
    [ position relative ]

heroWrapper : Style
heroWrapper =
  batch
    [ color (hex "#000")
    , paddingTop (rem 3.5)
    , withMediaQuery [ llaptop ]
        [ property "padding" "6.5rem 0" ]
    , withMediaQuery [ tablet ]
        [ displayFlex
        , justifyContent spaceBetween
        , padding2 (rem 4.5) zero
        ]
    , descendants
        [ class "text-content"
            [ position relative
            , withMediaQuery [ tablet ]
                [ paddingTop (rem 4) ]
            , withMediaQuery [ laptop ]
                [ paddingTop (rem 8) ]
            ]
        , h2
            [ property "background" (.value ((linearGradient2 (deg 90) (stop2 (hex "#621BA2") <| pct 0) (stop2 (hex "#C079FF") <| pct 102.18))[]))
            , backgroundClip ({ contentBox | value = "text" })
            , property "text-fill-color" "transparent"
            , property "-webkit-text-fill-color" "transparent"
            , property "-webkit-background-clip" "text"
            , fontSize (rem 4)
            , lineHeight (num 1.2)
            , letterSpacing (px -1)
            , marginBottom (rem 1.8)
            , maxWidth (px 630)
            , withMediaQuery [ desktop ]
                [ fontSize (rem 9.6) ]
            , withMediaQuery [ laptop ]
                [ fontSize (rem 6.5)
                , letterSpacing (px -5)
                ]
            , withMediaQuery [ tablet ]
                [ fontSize (rem 6)
                , lineHeight (num 1)
                , letterSpacing (px -3)
                , maxWidth (px 681)
                ]
            , withMediaQuery [ mobile ]
                [ fontSize (rem 6) ]
            ]
        , p
            [ lineHeight (num 1.67)
            , letterSpacing (px -0.4)
            , marginBottom (rem 1.4)
            , maxWidth (px 402)
            , withMediaQuery [ tablet ]
                [ marginBottom (rem 1.6)
                , maxWidth (px 568)
                ]
            ]
        , class "image-wrapper"
            [ position relative
            , maxWidth (px 245)
            , height (px 336)
            , margin2 zero auto
            , marginTop (rem 8.4)
            , withMediaQuery [ laptop ]
                [ maxWidth (px 448)
                , height (px 609)
                ]
            , withMediaQuery [ tablet ]
                [ display block
                , maxWidth (px 350)
                , height (px 409)
                , margin zero
                ]
            , before
                [ property "content" "\"\""
                , position absolute
                , width (pct 100)
                , height (pct 50)
                , property "background" "#FFCD3F"
                , property "background" "-moz-radial-gradient(center, #FFCD3F 100%, #FFEAB1 93%, #FFF1CA 100%)"
                , property "background" "-webkit-radial-gradient(center, #FFCD3F 100%, #FFEAB1 93%, #FFF1CA 100%)"
                , property "background" "radial-gradient(ellipse at center, #FFCD3F 100%, #FFEAB1 93%, #FFF1CA 100%)"
                , property "filter" "blur(80px)"
                , bottom zero
                , left zero
                , withMediaQuery [ laptop ]
                    [ width (px 436)
                    , height (px 436)
                    , property "filter" "blur(150px)"
                    ]
                ]
            ]
        ]
    ]

track1 : Style
track1 =
  batch
    [ marginBottom (rem 3) ]

budget : Style
budget =
  batch
    [ descendants
        [ class "title-content"
            [ property "background" "#DDF2FF" ]
        , class "title-image-wrapper"
            [ width (pct 90) ]
        , h2
            [ marginBottom (rem 2)
            , maxWidth (px 316)
            , property "background" (.value ((linearGradient2 (deg 90) (stop2 (hex "#621BA2") <| pct 0) (stop2 (hex "#C079FF") <| pct 102.18))[]))
            , backgroundClip ({ contentBox | value = "text" })
            , property "text-fill-color" "transparent"
            , property "-webkit-text-fill-color" "transparent"
            , property "-webkit-background-clip" "text"
            ]
        , class "image-wrapper"
            [ property "background" "#FFF0CA"
            , borderRadius (px 24)
            ]
        ]
    ]

track : Style
track =
  batch
    [ descendants
        [ class "title-content"
            [ property "background" "#E5FBF2"
            , descendants [ typeSelector "p" [ maxWidth (pct 100) ] ]
            ]
        , h2
            [ marginBottom (rem 2)
            , maxWidth (px 240)
            , property "background" (.value ((linearGradient2 (deg 90) (stop2 (hex "#CE8C0C") <| pct 0) (stop2 (hex "#FFC454") <| pct 100))[]))
            , backgroundClip ({ contentBox | value = "text" })
            , property "text-fill-color" "transparent"
            , property "-webkit-text-fill-color" "transparent"
            , property "-webkit-background-clip" "text"
            ]
        , class "image-wrapper"
            [ property "background" "#F1E1FF"
            , borderRadius (px 24)
            , marginTop (rem 6.4)
            ]
        , class "track1"
            [ descendants [ class "image-wrapper" [ property "background" "#FEEFEF" ] ] ]
        ]
    ]

downloadLink : Style
downloadLink =
  batch
    [ displayFlex
    , marginTop (rem 1)
    , withMediaQuery [ tablet ] [ marginTop (rem 3) ]
    , descendants
        [ typeSelector "a"
            [ display block
            , marginRight (rem 1)
            , withMediaQuery [ tablet ] [ marginRight (rem 2) ]
            , hover []
            ]
        , typeSelector "svg"
            [ width (px 130)
            , height (px 60)
            , withMediaQuery [ laptop ] [ width (px 188), height (px 61) ]
            , withMediaQuery [ tablet ] [ width (px 153), height (px 64) ]
            ]
        ]
    ]

insight : Style
insight =
  batch
    [ descendants
        [ class "title-content" [ property "background" "#F1E1FF", descendants [ typeSelector "p" [ marginBottom zero ] ] ]
        , class "title-image-wrapper" []
        , h2
            [ marginBottom (rem 2)
            , maxWidth (px 340)
            , property "background" (.value ((linearGradient2 (deg 90) (stop2 (hex "#0E94E7") <| pct 0) (stop2 (hex "#95D6FF") <| pct 100))[]))
            , backgroundClip ({ contentBox | value = "text" })
            , property "text-fill-color" "transparent"
            , property "-webkit-text-fill-color" "transparent"
            , property "-webkit-background-clip" "text"
            ]
        , class "image-wrapper-1"
            [ withMediaQuery [ tablet ] [ marginTop (rem 7) ]
            , property "background" "#FEEFEF"
            , borderRadius (px 24)
            ]
        , class "image-wrapper-2"
            [ withMediaQuery [ tablet ] [ marginTop (rem 7) ]
            , property "background" "#E5FBF2"
            , borderRadius (px 24)
            ]
        ]
    ]

inflow : Style
inflow =
  batch
    [ position relative
    , marginTop (rem 4)
    , withMediaQuery [ laptop ] [ marginTop (rem 7), marginBottom (rem 13) ]
    , withMediaQuery [ tablet ] [ marginTop (rem 5), marginBottom (rem 10) ]
    , descendants
        [ class "deco-wrapper" [ property "background" "#F1E1FF", borderRadius (px 24) ]
        , class "inflow-wrapper"
            [ position relative
            , padding (rem 3)
            , withMediaQuery [ desktop ] [ padding (rem 10) ]
            , withMediaQuery [ laptop ] [ padding2 (rem 10) (rem 7) ]
            , withMediaQuery [ tablet ]
                [ padding2 (rem 10) (rem 6)
                , displayFlex
                , flexWrap wrap
                , alignItems center
                , justifyContent spaceBetween
                ]
            ]
        , class "text-content"
            [ displayFlex
            , flexDirection column
            , alignItems center
            , justifyContent center
            , textAlign center
            , withMediaQuery [ laptop ] [ width (pct 80) ]
            , withMediaQuery [ tablet ]
                [ width (pct 50)
                , alignItems flexStart
                , justifyContent flexStart
                , textAlign left
                ]
            , descendants
                [ h2
                    [ fontSize (rem 3.8)
                    , lineHeight (num 1.12)
                    , letterSpacing (px -2)
                    , marginBottom (rem 1.6)
                    , property "background" (.value ((linearGradient2 (deg 90) (stop2 (hex "#621BA2") <| pct 0) (stop2 (hex "#C079FF") <| pct 102.18))[]))
                    , backgroundClip ({ contentBox | value = "text" })
                    , property "text-fill-color" "transparent"
                    , property "-webkit-text-fill-color" "transparent"
                    , property "-webkit-background-clip" "text"
                    , withMediaQuery [ llaptop ] [ fontSize (rem 6.4) ]
                    , withMediaQuery [ laptop ] [ fontSize (rem 5) ]
                    , withMediaQuery [ tablet ] [ maxWidth (px 587), fontSize (rem 4.2) ]
                    ]
                ]
            ]
        , class "image-wrapper"
            [ display none
            , withMediaQuery [ desktop ]
                [ top (px -100)
                ]
            , withMediaQuery [ llaptop ]
                [ top (pct -23)
                , right (rem 7.1)
                ]
            , withMediaQuery [ laptop ]
                [ top (pct -23)
                , right (rem -5.1)
                ]
            , withMediaQuery [ slaptop ]
                [ top (pct -35)
                , right (rem 7.1)
                ]
            , withMediaQuery [ tablet ]
                [ display block
                , position absolute
                , top (pct -9)
                , right (rem -3)
                , width (pct 50)
                , maxWidth (px 471)
                , height (pct 100)
                , zIndex (int 5)
                ]
            ]
        ]
    ]

featureWrapper : Style
featureWrapper =
  batch
    [ withMediaQuery [ tablet ]
        [ displayFlex
        , flexWrap wrap
        , alignItems flexStart
        ]
    , descendants
        [ class "title-content"
            [ padding (rem 2)
            , borderRadius (px 24)
            , overflow hidden
            , withMediaQuery [ laptop ] [ padding (rem 4) ]
            , withMediaQuery [ tablet ]
                [ position sticky
                , top (rem 2)
                , padding (rem 3)
                , width (pct 50)
                , maxWidth (px 540)
                ]
            , descendants
                [ typeSelector "p"
                    [ maxWidth (px 432)
                    , lineHeight (num 1.5)
                    , marginBottom (rem 4)
                    ]
                , class "title-image-wrapper"
                    [ marginLeft (rem -2)
                    , marginBottom (rem -2)
                    , withMediaQuery [ laptop ] [ marginLeft (rem -4), marginBottom (rem -4.5) ]
                    , withMediaQuery [ tablet ] [ marginLeft (rem -3), marginBottom (rem -3.5) ]
                    , descendants [ typeSelector "span" [ important (height (pct 100)) ] ]
                    ]
                ]
            ]
        , class "main-content"
            [ marginTop (rem 2)
            , withMediaQuery [ llaptop ] [ property "width" "calc( 100% - 540px )" ] -- TODO: figure out why `width (calc ((pct 100) minus (px 540)))` doesn't work
            , withMediaQuery [ laptop ] [ padding2 zero (rem 3.2) ]
            , withMediaQuery [ tablet ] [ width (pct 50), padding2 zero (rem 3), marginTop zero ]
            , descendants
                [ class "lists"
                    [ withMediaQuery [ tablet ] [ flexDirection column ]
                    , withMediaQuery [ lmobile ] [ displayFlex ]
                    , descendants
                        [ typeSelector "li"
                            [ padding2 zero (rem 1)
                            , withMediaQuery [ tablet ] [ marginBottom (rem 7) ]
                            , descendants
                                [ class "img-holder"
                                    [ width (px 65)
                                    , height (px 50)
                                    , withMediaQuery [ tablet ] [ width (px 95), height (px 80) ]
                                    , descendants [ typeSelector "span" [ important (height (pct 100)) ] ]
                                    ]
                                , typeSelector "h3" [ marginTop (rem 2.4), maxWidth (px 423) ]
                                , typeSelector "p" [ lineHeight (num 1.4), maxWidth (px 432) ]
                                ]
                            ]
                        ]
                    ]
                , class "image-wrapper"
                    [ marginTop (rem 3)
                    , property "display" "grid"
                    , property "place-items" "center"
                    , padding2 (rem 3) zero
                    , descendants
                        [ typeSelector "img"
                            [ important (width (px 220))
                            , important (height (px 450))
                            , withMediaQuery [ llaptop ] [ important (height (px 750)), important (width (px 370)) ]
                            , withMediaQuery [ laptop ] [ important (height (px 500)) ]
                            , withMediaQuery [ tablet ] [ important (height (px 430)) ]
                            ]
                        ]
                    , withMediaQuery [ llaptop ] [ padding2 (rem 6.4) (rem 10) ]
                    , withMediaQuery [ laptop ] [ padding (rem 5) ]
                    , withMediaQuery [ tablet ] [ width (pct 100), padding (rem 3), boxSizing borderBox ]
                    ]
                ]
            ]
        ]
    ]

forground : Style
forground =
  batch
    [ after
      [ position absolute
      , property "content" (qt "")
      , property "background" "transparent"
      , property "pointer-events" "none"
      , top zero
      , left zero
      ]
    ]
