module Components.Loader exposing (view)

import Html.Styled exposing (..)
import Html.Styled.Attributes exposing (..)
import Svg.Styled exposing (svg, use)
import Svg.Styled.Attributes as SVGAttributes

import Styles.Loader exposing (loaderWrapper, svgWrapper, textWrapper)

icons : String
icons = "../../public/icons.svg"

view : Html msg
view =
  div [ css [ loaderWrapper ] ]
    [ div [ css [ svgWrapper ] ]
        [ svg [ SVGAttributes.class "" ] [ use [ SVGAttributes.xlinkHref (icons ++ "#subtract-alt") ] [] ] ]
    , div [ css [ textWrapper ] ]
        [ div [ class "inner-div" ]
            [ p [] [ text "Crunching your data..." ]
            , p [] [ text "adding pizzazz..." ]
            , p [] [ text "cooking premium beans..." ]
            , p [] [ text "frying the dodo..." ]
            , p [] [ text "serving the breakfast..." ]
            ]
        ]
    ]
