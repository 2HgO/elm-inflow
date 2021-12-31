module Styles.Constants exposing (..)

import Css exposing (Px, px, Rem, rem, Style, fontFamilies, qt, sansSerif, Color, hex, rgba)

basefont : Px
basefont =
  px 10
font_36 : Rem
font_36 =
  rem 3.6
font_64 : Rem
font_64 =
  rem 6.4
font_48 : Rem
font_48 =
  rem 4.8
font_24 : Rem
font_24 =
  rem 2.4

hfont : Style
hfont = 
  fontFamilies
    [ qt "Right Grotesk"
    , qt "Neue Montreal"
    , .value sansSerif
    ]

bfont : Style
bfont =
  fontFamilies
    [ "MaisonNeue"
    , .value sansSerif
    ]

purple : Color
purple =
  hex "#8d45cd"
black : Color
black =
  hex "#000"
white : Color
white =
  hex "#fff"
grey : Color
grey =
  rgba 255 255 255 0.6

mobile : String
mobile =
  "only screen and (min-width: 425px)"
lmobile : String
lmobile =
  "only screen and (min-width: 500px)"
tablet : String
tablet =
  "only screen and (min-width: 768px)"
slaptop : String
slaptop =
  "only screen and (min-width: 992px)"
laptop : String
laptop =
  "only screen and (min-width: 1024px)"
llaptop : String
llaptop =
  "only screen and (min-width: 1280px)"
desktop : String
desktop =
  "only screen and (min-width: 1440px)"
