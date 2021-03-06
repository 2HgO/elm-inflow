module Main exposing (..)

import Browser
import Css.Global exposing (global)
import Html.Styled exposing (Html, toUnstyled, div, main_)

import Components.Budget as Budget
import Components.Foot as Foot
import Components.Footer as Footer
import Components.Header as Header
import Components.Hero as Hero
import Components.Insight as Insight
import Components.Track as Track
import Styles.Global as Global

main : Program () Msg Msg
main =
  Browser.sandbox { init = init, update = update, view = view >> toUnstyled }

type Msg =
  Nothing

init : Msg
init = Nothing

update : Msg -> Msg -> Msg
update msg _ =
  case msg of
    _ -> Nothing

view : Msg -> Html Msg
view _ =
  div [] 
  [ global
      [ Global.grotesk
      , Global.maisonNeue
      , Global.globalWildcardStyle
      , Global.globalWildCardAndPseudoStyle
      , Global.globalHtmlStyle
      , Global.globalBodyStyle
      , Global.globalButtonAndAStyle
      , Global.globalH2Style
      , Global.globalPStyle
      , Global.globalUlStyle
      ]
  , Header.view
  , main_ []
      [ Hero.view
      , Track.view
      , Budget.view
      , Insight.view
      , Foot.view
      ]
  , Footer.view
  ]
