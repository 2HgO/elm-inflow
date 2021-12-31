module Components.Track exposing (view)

import Css exposing (..)
import Html.Styled exposing (..)
import Html.Styled.Attributes exposing (..)

import Styles.Home as HomeStyles
import Styles.Loader exposing (sectionTitle, subTitle)

bank : String
bank = "../../public/bank-ill-bg.svg"

pot : String
pot = "../../public/track1.png"

track1 : String
track1 = "../../public/track-main1.png"

sub : String
sub = "../../public/track2.png"

track2 : String
track2 = "../../public/track-main2.png"

view : Html msg
view =
  section [ css [ HomeStyles.wrapperX ], css [ HomeStyles.wrapperYT ] ]
    [ div [ css [ HomeStyles.wrapperMXWidth ], css [ HomeStyles.track ] ]
        [ h2 [ css [ sectionTitle ] ] [ text "Track" ]
        , div [ css [ HomeStyles.featureWrapper ] ]
            [ div [ class "title-content" ]
                [ h3 [ css [ subTitle ] ] [ text "All your accounts in one place" ]
                , p [] [ text """
                                Link your bank accounts on Inflow, to see all your expenses in one
							                  place. From GT Bank to Kuda Bank to Piggyvest, we've got you.
                              """
                        ]
                , div [ class "title-image-wrapper" ] [ img [ src bank, alt "Illustration" ] [] ]
                ]
            , div [ class "main-content" ]
                [ ul [ class "lists" ]
                    [ li [ css [ HomeStyles.track1 ] ]
                        [ div [ class "img-holder" ] [ span [] [ img [ src pot, alt "Illustration", height (pct 100), width (pct 100) ] [] ] ]
                        , h3 [ css [ subTitle ] ] [ text "How you've been spending money" ]
                        , p [] [ text """
                                        See every credit and debit transaction on ALL your accounts as
                                        they happen. Get a complete view of your spending with a
                                        spending categories.
                                      """
                                ]
                        , div [ class "image-wrapper" ] [ img [ src track1, alt "Illustration" ] [] ]
                        ]
                    , li [ css [ HomeStyles.track1 ] ]
                        [ div [ class "img-holder" ] [ span [] [ img [ src sub, alt "Illustration", height (pct 100), width (pct 100) ] [] ] ]
                        , h3 [ css [ subTitle ] ] [ text "Your monthly subscriptions" ]
                        , p [] [ text """
                                        Add your scheduled payments on Inflow to get reminders on when
                                        to renew or cancel your subscription services like Netflix or
                                        Spotify
                                      """
                                ]
                        , div [ class "image-wrapper" ] [ img [ src track2, alt "Illustration" ] [] ]
                        ]
                    ]
                ]
            ]
        ]
    ]
