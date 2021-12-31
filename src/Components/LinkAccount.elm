module Components.LinkAccount exposing (view)

import Html.Styled exposing (..)
import Html.Styled.Attributes exposing (..)
import Svg.Styled exposing (svg, use)
import Svg.Styled.Attributes as SVGAttributes

import Styles.Home as HomeStyles

icons : String
icons = "../../public/icons.svg"

view : Html msg
view =
  section [ ]
    [ div [ css [ HomeStyles.wrapperMXWidth ] ]
        [ h2 [] [ text "How much did you spend on bank charges?" ]
        , p [] [ text "To know exactly how much your bank is charging you, we'll need you to link your account." ]
        , p [] [ text "On linking, we'll comb through your transactions with our machine learning jazz and show you a estimate of all charges we find." ]
        , button [] [ text "Link my bank account 🏦" ]
        ]
    , button [] [ svg [ SVGAttributes.class "" ] [ use [ SVGAttributes.xlinkHref (icons ++ "#subtract") ] [] ] ]
    ]
