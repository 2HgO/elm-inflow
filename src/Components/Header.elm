module Components.Header exposing (view)

import Html.Styled exposing (Html, header, div, text, img, a, ul, li, span)
import Html.Styled.Attributes exposing (css, class, alt, src, style, target, rel, href)
import Svg.Styled exposing (svg, use)
import Svg.Styled.Attributes exposing (xlinkHref)

import Styles.Header as HeaderStyles exposing (headerWrapper)
import Styles.Home exposing (wrapperX, wrapperMXWidth)

logo : String
logo = "../../public/logo-alt.svg"
icons : String
icons = "../../public/icons.svg"

view : Html msg
view =
  header [ css [ HeaderStyles.header ], css [ wrapperX ] ]
    [ div [ css [ headerWrapper ], css [ wrapperMXWidth ] ] 
        [ a [ class "logo-holder", href "" ]
            [ span [] [ img [ src logo, alt "Inflow logo", style "max-height" "100%", style "max-width" "100%" ] [] ] ]
        , div [ class "social-media" ]
            [ ul [ class "social-media-list" ]
                [ li []
                    [ a [ href "https://twitter.com/InflowFinance", target "_blank", rel "noopener noreferrer" ]
                        [ svg [ ] [ use [ xlinkHref (icons ++ "#twitter") ] [] ] ]
                    ]
                , li []
                    [ a [ href "https://www.instagram.com/inflow.finance", target "_blank", rel "noopener noreferrer" ]
                        [ svg [ ] [ use [ xlinkHref (icons ++ "#ig") ] [] ] ]
                    ]
                ]
            , a [ href "https://app.inflow.finance", class "web-link", target "_blank", rel "noopener noreferrer" ]
                [ text "Use the Web app" ]
            ]
        ]
    ]
