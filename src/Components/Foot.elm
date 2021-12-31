module Components.Foot exposing (view)

import Svg.Styled exposing (svg, use)
import Svg.Styled.Attributes as SVGAttributes
import Html.Styled exposing (..)
import Html.Styled.Attributes exposing (..)

import Styles.Home as HomeStyles

icons : String
icons = "../../public/icons.svg"

mobile : String
mobile = "../../public/mobile.png"

view : Html msg
view =
  section [ css [ HomeStyles.inflow ], css [ HomeStyles.wrapperX ], css [ HomeStyles.wrapperYT ] ]
    [ div [ class "deco-wrapper" ]
        [ div [ css [ HomeStyles.wrapperMXWidth ], class "inflow-wrapper" ]
            [ div [ class "text-content" ]
                [ h2 [] [ text "Manage money better with Inflow" ]
                , div [ css [ HomeStyles.downloadLink ] ]
                    [ a [ target "_blank", rel "noopener noreferer", href "itms-apps://itunes.apple.com/app/apple-store/id1562191352?mt=8" ]
                        [ svg [ SVGAttributes.class "" ] [ use [ SVGAttributes.xlinkHref (icons ++ "#ios") ] [] ] ]
                    , a [ target "_blank", rel "noopener noreferer", href "https://play.google.com/store/apps/details?id=com.inflow.android&hl=en" ]
                        [ svg [ SVGAttributes.class "" ] [ use [ SVGAttributes.xlinkHref (icons ++ "#android") ] [] ] ]
                    ]
                ]
            , div [ class "image-wrapper" ]
                [ img [ src mobile, alt "Illustration" ] [] ]
            ]
        ]
    ]
