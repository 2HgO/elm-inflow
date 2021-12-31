module Components.Footer exposing (view)

import Html.Styled exposing (Html, div, text, img, a, span, ul, footer, li)
import Html.Styled.Attributes exposing (css, class, target, rel, href, alt, src, style)
import Svg.Styled exposing (svg, use)
import Svg.Styled.Attributes exposing (xlinkHref)

import Styles.Footer exposing (footerWrapper, externalLinks, socialMediaListFooter)
import Styles.Home exposing (wrapperMXWidth, wrapperX)

logo : String
logo = "../../public/logo-alt.svg"
icons : String
icons = "../../public/icons.svg"

view : Html msg
view =
  footer [ css [ wrapperX ] ]
    [ div [ css [ footerWrapper ], css [ wrapperMXWidth ] ]
        [ a [ class "logo-holder", href "" ]
            [ span [] [ img [ src logo, alt "Inflow logo", style "max-height" "100%", style "max-width" "100%" ] [] ] ]
        , ul [ css [ externalLinks ] ]
            [ li []
                [ a [ href "" ] [ text "Get in Touch" ]]
            , li []
                [ a [ href "https://help.inflow.finance/en", target "_blank", rel "noopener noreferrer" ] [ text "Help" ] ]
            , li []
                [ ul [ css [ socialMediaListFooter ] ]
                    [ li []
                        [ a [ href "https://twitter.com/InflowFinance", target "_blank", rel "noopener noreferrer" ]
                            [ svg [ ] [ use [ xlinkHref (icons ++ "#twitter") ] [] ] ]
                        ]
                    , li []
                        [ a [ href "https://www.instagram.com/inflow.finance", target "_blank", rel "noopener noreferrer" ]
                            [ svg [ ] [ use [ xlinkHref (icons ++ "#ig") ] [] ] ]
                        ]
                    ]
                ]
            ]
        ]
    ]
