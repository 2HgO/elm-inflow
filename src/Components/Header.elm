module Components.Header exposing (view)

import Svg.Styled exposing (svg, use)
import Svg.Styled.Attributes as SVGAttributes
import Html.Styled exposing (..)
import Html.Styled.Attributes exposing (..)

import Styles.Header as HeaderStyles
import Styles.Home as HomeStyles

logo : String
logo = "../../public/logo-alt.svg"
icons : String
icons = "../../public/icons.svg"

view : Html msg
view =
  header [ css [ HeaderStyles.header ], css [ HomeStyles.wrapperX ] ]
    [ div [ css [ HeaderStyles.headerWrapper ], css [ HomeStyles.wrapperMXWidth ] ] 
        [ a [ class "logo-holder", href "" ]
            [ img [ src logo, alt "Inflow logo" ] [] ]
        , div [ class "social-media" ]
            [ ul [ class "social-media-list" ]
                [ li []
                    [ a [ href "https://twitter.com/InflowFinance", target "_blank", rel "noopener noreferrer" ]
                        [ svg [ SVGAttributes.class "" ] [ use [ SVGAttributes.xlinkHref (icons ++ "#twitter") ] [] ] ]
                    ]
                , li []
                    [ a [ href "https://www.instagram.com/inflow.finance", target "_blank", rel "noopener noreferrer" ]
                        [ svg [ SVGAttributes.class "" ] [ use [ SVGAttributes.xlinkHref (icons ++ "#ig") ] [] ] ]
                    ]
                ]
            , a [ href "https://app.inflow.finance", class "web-link", target "_blank", rel "noopener noreferrer" ]
                [ text "Use the Web app" ]
            ]
        ]
    ]
