module Styles.Loader exposing (..)

import Css exposing (..)
import Css.Animations exposing (keyframes)
import Css.Global exposing (descendants, class, typeSelector)
import Css.Media exposing (withMediaQuery)

import Styles.Constants exposing (tablet, mobile, laptop, desktop, hfont, purple)

sectionTitle : Style
sectionTitle =
  batch
    [ fontSize (rem 4)
    , lineHeight (int 1)
    , letterSpacing zero
    , withMediaQuery [ desktop ]
        [ fontSize (rem 9.6) ]
    , withMediaQuery [ laptop ]
        [ fontSize (rem 9) ]
    , withMediaQuery [ tablet ]
        [ fontSize (rem 6.4)
        , lineHeight (int 1)
        , letterSpacing (px -5)
        ]
    , withMediaQuery [ mobile ]
        [ fontSize (rem 6) ]
    ]

subTitle : Style
subTitle =
  batch
    [ hfont
    , fontWeight (int 400)
    , fontSize (rem 2.8)
    , lineHeight (num 1.04)
    , marginBottom (rem 1.5)
    , withMediaQuery [ laptop ]
        [ fontSize (rem 4.8) ]
    , withMediaQuery [ tablet ]
        [ fontSize (rem 3.4)
        , marginBottom (rem 2.4)
        ]
    ]

loaderWrapper : Style
loaderWrapper =
  batch
    [ position fixed
    , top zero
    , left zero
    , bottom zero
    , right zero
    , property "background" "#FFF"
    , displayFlex
    , flexDirection column
    , alignItems center
    , justifyContent center
    , zIndex (int 7)
    ]

svgWrapper : Style
svgWrapper =
  batch
    [ position relative
    , displayFlex
    , flexDirection column
    , alignItems center
    , justifyContent center
    , width (px 120)
    , height (px 120)
    , borderRadius (pct 50)
    , property "background" ( .value purple )
    , descendants
        [ typeSelector "svg"
            [ width (px 32), height (px 32) ]
        ]
    , after
        [ property "content" "\"  \""
        , position absolute
        , top (px -10)
        , left (px -10)
        , width (px 140)
        , height (px 140)
        , borderRadius (pct 50)
        , border3 (px 1) solid purple
        , borderColor4 purple transparent transparent transparent
        , animationName ldsKeyFrame
        , animationDuration (sec 1.2)
        , animationIterationCount infinite
        , property "animation-timing-function" "linear"
        ]
    ]

textWrapper : Style
textWrapper =
  batch
    [ marginTop (rem 4)
    , textAlign center
    , height (px 30)
    , overflow hidden
    , descendants
        [ class "inner-div"
            [ animationName slideTextKeyFrame
            , animationDuration (sec 10)
            , animationIterationCount infinite
            , property "animation-timing-function" "linear" ]
        , typeSelector "p"
            [ fontSize (rem 2.4)
            , lineHeight (num 1.25)
            ]
        ]
    ]

ldsKeyFrame : Css.Animations.Keyframes {  }
ldsKeyFrame =
  keyframes
    [ (0, [ Css.Animations.property "transform" "rotate(0deg)" ])
    , (100, [ Css.Animations.property "transform" "rotate(360deg)" ])
    ]

slideTextKeyFrame : Css.Animations.Keyframes {  }
slideTextKeyFrame =
  keyframes
    [ (0, [ Css.Animations.property "transform" "translateY(0)" ])
    , (13, [ Css.Animations.property "transform" "translateY(0)" ])
    , (14, [ Css.Animations.property "transform" "translateY(-30px)" ])
    , (28, [ Css.Animations.property "transform" "translateY(-30px)" ])
    , (28, [ Css.Animations.property "transform" "translateY(-60px)" ])
    , (42, [ Css.Animations.property "transform" "translateY(-60px)" ])
    , (42, [ Css.Animations.property "transform" "translateY(-90px)" ])
    , (56, [ Css.Animations.property "transform" "translateY(-90px)" ])
    , (57, [ Css.Animations.property "transform" "translateY(-120px)" ])
    , (70, [ Css.Animations.property "transform" "translateY(-120px)" ])
    , (71, [ Css.Animations.property "transform" "translateY(-90px)" ])
    , (84, [ Css.Animations.property "transform" "translateY(-90px)" ])
    , (85, [ Css.Animations.property "transform" "translateY(-60px)" ])
    , (99, [ Css.Animations.property "transform" "translateY(-60px)" ])
    , (100, [ Css.Animations.property "transform" "translateY(-30px)" ])
    ]
