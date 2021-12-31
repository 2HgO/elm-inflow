module Components.Footer exposing (view)

import Svg.Styled exposing (svg, use)
import Svg.Styled.Attributes as SVGAttributes
import Html.Styled exposing (..)
import Html.Styled.Attributes exposing (..)

import Styles.Footer as FooterStyles
import Styles.Home as HomeStyles

logo : String
logo = "../../public/logo-alt.svg"
icons : String
icons = "../../public/icons.svg"

view : Html msg
view =
  footer [ css [ HomeStyles.wrapperX ] ]
    [ div [ css [ FooterStyles.footerWrapper ], css [ HomeStyles.wrapperMXWidth ] ]
        [ a [ class "logo-holder", href "" ]
            [ img [ src logo, alt "Inflow logo" ] [] ]
        , ul [ css [ FooterStyles.externalLinks ] ]
            [ li []
                [ a [ href "" ] [ text "Get in Touch" ]]
            , li []
                [ a [ href "https://help.inflow.finance/en", target "_blank", rel "noopener noreferrer" ] [ text "Help" ] ]
            , li []
                [ ul [ css [ FooterStyles.socialMediaListFooter ] ]
                    [ li []
                        [ a [ href "https://twitter.com/InflowFinance", target "_blank", rel "noopener noreferrer" ]
                            [ svg [ SVGAttributes.class "" ] [ use [ SVGAttributes.xlinkHref (icons ++ "#twitter") ] [] ] ]
                        ]
                    , li []
                        [ a [ href "https://www.instagram.com/inflow.finance", target "_blank", rel "noopener noreferrer" ]
                            [ svg [ SVGAttributes.class "" ] [ use [ SVGAttributes.xlinkHref (icons ++ "#ig") ] [] ] ]
                        ]
                    ]
                ]
            ]
        ]
    ]
