module Components.Insight exposing (view)

import Html.Styled exposing (..)
import Html.Styled.Attributes exposing (..)

import Styles.Home as HomeStyles
import Styles.Loader as LoaderStyles

bank : String
bank = "../../public/insight.png"

smbank : String
smbank = "../../public/insight1.png"

insightimg2 : String
insightimg2 = "../../public/insight2.png"

phonecase : String
phonecase = "../../public/insight-main-1.png"

phonecase2 : String
phonecase2 = "../../public/insight-main-2.png"

view : Html msg
view =
  section [ css [ HomeStyles.wrapperX ], css [ HomeStyles.wrapperYT ] ]
    [ div [ css [ HomeStyles.wrapperMXWidth ], css [ HomeStyles.insight ] ]
        [ h2 [ css [ LoaderStyles.sectionTitle ] ] [ text "Insights" ]
        , div [ css [ HomeStyles.featureWrapper ] ]
            [ div [ class "title-content" ]
                [ h3 [ css [ LoaderStyles.subTitle ] ] [ text "Your week and month in money" ]
                , p [] [ text """
                                Get detailed reports on how much you've spent and where you've
							                  spent it the previous week and month
                              """
                        ]
                , div [ class "title-image-wrapper" ] [ img [ src bank, alt "Illustration" ] [] ]
                ]
            , div [ class "main-content" ]
                [ ul [ class "lists" ]
                    [ li []
                        [ div [ class "img-holder" ] [ img [ src smbank, alt "Illustrator" ] [] ]
                        , h3 [ css [ LoaderStyles.subTitle ] ] [ text "Personalised notifications" ]
                        , p [] [ text """
                                        Stay on top of your spending with notifications from Inflow to
                                        put you back on track when you exceed your budget or do pass
                                        yourself.
                                      """
                              ]
                        , div [ class "image-wrapper", class "image-wrapper-1" ] [ img [ src phonecase, alt "Illustration" ] [] ]
                        ]
                    , li []
                        [ div [ class "img-holder" ] [ img [ src insightimg2, alt "Illustration" ] [] ]
                        , h3 [ css [ LoaderStyles.subTitle ] ] [ text "Inflows & Outflows" ]
                        , p [] [ text """
                                        Get a closer look by seeing how much you earned and how much
									                      you spent at the end of each week or each month.
                                      """
                              ]
                        , div [ class "image-wrapper", class "image-wrapper-2" ] [ img [ src phonecase2, alt "Illustration" ] [] ]
                        ]
                    ]
                ]
            ]
        ]
    ]
