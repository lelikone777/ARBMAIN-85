<!--<?php-->
<!--require_once __DIR__ . '/../../_helpers/vendor/autoload.php';-->

<!--use Service_landing\Helpers\Http;-->
<!--use Service_landing\Helpers\Url;-->
<!--use Service_landing\Helpers\SMS;-->
<!--use Service_landing\Helpers\Log;-->

<!--const LOG_FOLDER = __DIR__ . '/logs';-->

<!--const SHORT = 1252;-->


<!--$error = '';-->

<!--$sms_body = '#';-->
<!--$wb_id = $_GET['ext_id'] ?? '';-->
<!--$text = $_GET['text'] ?? '';-->

<!--if (!$wb_id || !$text) {-->
<!--    $data = Http::pumaInit('host=roe.games-universe.online&country=ro&operator=nth_wifi', LOG_FOLDER);-->

<!--    if (isset($data['url'], $data['wb_subscription_id'])) {-->
<!--        $params = Url::getParametersFromUrl($data['url']);-->

<!--        Http::redirect(Url::currentUri(), [-->
<!--            'ext_id' => $data['wb_subscription_id'],-->
<!--            'text' => $params['text'],-->
<!--        ]);-->

<!--    } else {-->
<!--        $error = $data['reason'] ?? 'Init error occurred';-->
<!--    }-->
<!--}-->

<!--$sms_body = SMS::createSMSLink(SHORT, $text);-->


<!--if ($error) {-->
<!--    Log::errorLog(LOG_FOLDER, "wb_id=$wb_id, text=$text, error_message=$error");-->
<!--}-->

<!--?>-->
<!DOCTYPE html>
<html >

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="robots" content="noindex, nofollow">
    <meta name="googlebot" content="noindex">
    <meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, width=device-width">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
    <style type="text/css">
        html {
            -webkit-box-sizing: border-box;
            box-sizing: border-box;
            -moz-box-sizing: border-box;
            height: 100%
        }

        *,
        :before,
        :after {
            -webkit-box-sizing: inherit;
            box-sizing: inherit;
            -moz-box-sizing: inherit
        }

        * {
            max-height: 1000000px;
            outline: none
        }

        input {
            border: none;
            outline: none;
        }

        h1,
        h2,
        h3,
        h4,
        h5,
        h6,
        p {
            font-size: inherit;
            font-weight: 400;
            margin: 0
        }

        img {
            vertical-align: top;
            /*max-width: 100%;*/
            max-width: 80%;
            height: auto;
            border-style: none
        }

        a {
            display: inline-block;
            text-decoration: none;
            outline: none;
            color: inherit
        }

        body {
            -ms-text-size-adjust: none;
            -moz-text-size-adjust: 100%;
            -webkit-text-size-adjust: 100%;
            margin: 0;
            /*font-family: Arial, Helvetica, sans-serif;*/
            font-family: 'Roboto', sans-serif;
            font-weight: 400;
            /*background: #fff;*/
            height: 100%;
            direction: ltr;
            text-align: center;

            /*box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);*/
            /*overflow: hidden;*/
        }

        .wrapper {
            max-width: 1080px;
            margin: auto;
            height: 100%;
        }

        .header {
            background-position: 0 100%;
            background-size: cover;
            background-repeat: no-repeat;
            /*padding: 7vh 0;*/
            padding: 40px 0 27px;
        }

        .title {
            /*margin-top: 12px;*/
            padding-top: 20px;
            padding-bottom: 20px;
        }

        .logo {
            max-width: 189px;
            /*max-width: 160px;*/
            width: 100%;
            margin: 0 auto;
        }

        .container {
            height: 100%;
        }
        .main {
            background: linear-gradient(180deg, #37BEDC 0%, #FFFFFF 28.76%);
            /*position: relative;*/
            /*left: 0;*/
            /*top: 0;*/
            max-width: 550px;
            margin: 0 auto;
        }
        .btn {
            background-color: #2ebddd;
            color: #fff;
            border-radius: 16px;
            padding: 16px;
            cursor: pointer;
            width: 351px;
            height: 82px;
            font-size: 36px;
            line-height: 42px;
            margin: 10px auto 0;
            display: flex;
            align-items: center;
            justify-content: center;
            text-transform: uppercase;
        }

        .price {
            max-width: 410px;
            width: 90%;
            margin: 5px auto 0;
            font-size: 12px;
            color: #4F4F4F;
        }

        .orange {
            margin: 20px auto;
            padding: 0 10px;
            max-width: 1080px;
            font-weight: 400;
            font-size: 22px;
            line-height: 1.4em;
            text-align: center;
            color: #FF7900;
        }

        .footer {
            /*max-width: 1080px;*/
            /*margin: auto;*/

            max-width: 550px;
            margin: 0 auto;
            /*position: absolute;*/
            /*left: 0;*/
            /*right: 0;*/
            /*bottom: 0;*/
            /*transform: translateY(calc(100% - 33%));*/
            /*transform: translateY(calc(-37%));*/
            transform: translateY(-45px);
            font-family: 'Roboto', sans-serif;
            font-style: normal;
            font-weight: 400;
            font-size: 11px;
            line-height: 11px;
            text-align: center;
            padding: 0 10px;
            color: #4F4F4F;
        }

        .footer a {
            text-decoration: underline;
        }

        @media (max-height: 550px) {
            .btn {
                height: 60px;
            }
        }

        @media (max-width: 380px) {
            .btn {
                max-width: 90%;
            }

        }

        @media (max-width: 320px)
        and (max-height: 650px) {
            .btn {
                max-width: 90%;
            }
        }
        @media (max-width: 540px) and (max-height: 700px) and (orientation: portrait) {
        }
        @media (max-width: 540px) and (max-height: 630px) and (orientation: portrait) {
            .logo img  {
                max-width: 50%;
            }
        }

        @media (max-width: 540px) and (max-height: 560px) and (orientation: portrait) {
            .header {
                padding-bottom: 12px;
            }
        }
        @media (max-width: 540px) and (max-height: 525px) and (orientation: portrait) {
        }
        @media (max-width: 540px) and (max-height: 470px) and (orientation: portrait) {
            .logo img  {
                max-width: 40%;
            }
        }

        @media (max-width: 440px) and (min-height: 840px) and (orientation: portrait) {
        }

        @media (max-width: 440px) and (max-height: 750px) and (orientation: portrait) {
            .header {
                padding-bottom: 10px;
            }
            .logo img {
                max-width: 65%;
            }
        }

        @media (max-width: 440px) and (max-height: 700px) and (orientation: portrait) {
            .logo img  {
                max-width: 50%;
            }
            .btn {
                height: 55px;
                font-size: 28px;
                line-height: 1;
            }
        }

        @media (max-width: 440px) and (max-height: 640px) and (orientation: portrait) {
            .header {
                padding-bottom: 12px;
            }
        }
        @media (max-width: 440px) and (max-height: 620px) and (orientation: portrait) {
            .header {
                padding-bottom: 8px;
            }
        }
        @media (max-width: 440px) and (max-height: 570px) and (orientation: portrait) {
            .btn {
                height: 55px;
                font-size: 28px;
                line-height: 1;
            }
            .logo img {
                max-width: 45%;
            }
        }

        @media (max-width: 440px) and (max-height: 530px) and (orientation: portrait) {
            .logo img {
                max-width: 33%;
            }
            .btn {
                height: 45px;
                font-size: 24px;
            }

        }
        @media (max-width: 340px) and (max-height: 650px) and (orientation: portrait) {
            .logo img {
                max-width: 33%;
            }
        }
        @media (max-width: 340px) and (max-height: 550px) and (orientation: portrait) {
            .logo img {
                max-width: 33%;
            }
            .btn {
                height: 45px;
                font-size: 22px;
            }
        }

        @media (max-width: 340px) and (max-height: 520px) and (orientation: portrait) {
            .logo img {
                max-width: 25%;
            }
        }

        @media (max-width: 340px) and (max-height: 487px) and (orientation: portrait) {
            .btn {
                height: 60px;
                font-size: 28px;
            }
        }

        @media (max-width: 340px) and (max-height: 470px) and (orientation: portrait) {
            .btn {
                height: 35px;
                font-size: 19px;
            }
        }

        @media (max-width: 340px) and (max-height: 445px) and (orientation: portrait) {
            .logo {
                display: none;
            }
        }


        @media (orientation: portrait) and (min-width: 375px) and (min-height: 812px) {
        }

        @media (orientation: portrait) and (min-width: 600px) and (min-height: 1000px) {
            .logo img {
                max-width: 100%;
            }
        }

        @media (orientation: landscape) and (max-height: 600px) {
            .logo {
                max-width: 30vh;
            }
        }

        @media (orientation: landscape) and (max-height: 600px) {
        }


        @media (orientation: landscape) and (max-height: 460px) {
            .header {
                padding-bottom: 10px;
            }

            .main {
                max-width: none;
            }
        }

        @media (orientation: landscape) and (max-height: 400px) {
            .btn {
                height: 50px;
                font-size: 28px;
                line-height: 1;
            }

            .footer {
                position: relative;
                margin-top: 50px;
                transform: none;
            }

        }



    </style>
</head>

<body>
<div class="wrapper">
    <div class="container">

        <div class="main">

            <div class="header">

                <div class="logo">
                    <img
                            src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAGwAAACVCAYAAAC9+x8cAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAABguSURBVHgB7V1rbBzXdb6zLy4pkiIpUoxsRVw9WttsLbi20FdQmKqdpgqqADIiqQjqVkWDoikKy2mBFnBT2ErTNigK2CrQumgR1E7TFgmT2HBcBLElUQWa9IerSrEsRk7kiIpliTQVPfjY987kfHfvGd0dLcnd2VnuDHc+YDjD2Xneb865555z77mGCChSL53u6+3rO2xZ1phBi9xpiDP0/9Gzj+x4QaxRGCKAuPeb30slEokJ2kwtcchUPp/ffX7PfVNijSEiAogVyAIkoQ9MnO4TawyBI+z+4xcOieXJYqRMs/dJbJCaDKQmqYbAEWZYxuHaj5Z1G7+jIQJaBegInko0xAN1HPww/YkbhhHbv3+/TVyQJS6QdVid6BoeHk688cYbcdqO0kL8BVfQ2oGwdTMzM11zc3OJVCoVE+V3DixjMbHGQdZiN5n4sevXr0e13QURUKx5wqi+6hJlVSiIOJNWWEpqbYmAYc2rxEKh0EGrDpK05MLCQqKvr4/VYiDffc1LmCi/o0nSFU8mk/FSqYT/IXElEUC0g9GBd4zG4/FYNpuNkYpk6Qpku6wdCAMMUo2SIEUYkxXWYX5DLFbW+iRhICiCRvPg4CB2gazAvf+aJ6xYLGIFCcPaokazde3aNf45lDC/gSTMwsL/Ly4uSgkbHR0NZOO5HaxEQ0kZQ0oYLYGTLqBtVCL/v27dOhFkrHkJg9EB0sjokF5fUokiyGgHs94232FwdHV1BTom1i7tMLioZOQ5nU4Hsu5itEMdZnFbjNxTIpSwAECzEmU7TAQYbePpYCijw3jooYdEENE2dRhAIRZDqcTASlnbOH+FwzN/6tQpEUS0S8MZEmXB6CArUSjnbyDRDhJmafWYJA6uqbAO8ymIrApfYmjWBwgdHR2CG85UhwWSuLZwTbFKzOVy9k5SiaG33o+Ap4MWKU0w64WyFkMr0d+w4K0nK5GlyhBhJxz/QqlESQ7Fw5g0SwSwAd0OEWe7LQajQyGwno52IMwmB0aHMjzC4UZ+BdphDgdwoH2Ja17CHB1wAo+2kjDUYeTpEEFGW/gSVSccu96C8zeovsS2UImQMtq0lMFhwWOv9f4NFNpCJdLKUl21pZSF4ZUAAJ4OqsOkdQjpCrtq+xTwJfI2EwYJm5ycDJ2/fgfVYYYWDwvDKwGA7OZmmmZgG89t4UvUIPvW0xL2mvI57lB/Y2NjYR3mY8h4mBbANObn50Mr0a+Aa4qHzKpdVhhx9jE0BzBL1dr31iPHbjLZJzN8nt+zdUoEDFCJkUgE7imL2mHGyMhI0/t13PvNiymss9mbN6f2/dxN4QFWJGz0te8/EI3Fni0nQjblvp3H35miT/TlaGTuyJnd3jxIs4AB6c4QixrjLJoBTh4tTPNJKi/5gScSveL+Ez88WcjlfrfRPMTLqsSdExd/JxaNnrazVmvPRbrlSdPsPY2EycLHQI8pvZtbMzuSoix6e3tPE1nP0L8V+YZRhmT0XESZigYQWe7mdOMXxPKQyZD9Tpq4nadDNGsEZg2ZvsugMoXWEi6xJGHxjvi/itqgMliX9bXfoAalS5IQwGxGFoGayVJAFSNcusaqEkaF32dYxpioHSly90zs/Nb5rZblLwOM6y8YHVCJXuf7rZcsAOrx3hePDTzzzDN1JylbSsLc5HtPiVj8xE9/7Y1tfkyCDJXIfetVPKzhZ3RDFsPMloaIME4F2DBhbpHq7Ntw4v6XT/mNNIMlDCpRWYgNqYJGyALyVy8laZXcvHmzTB6tSduyqErYmd2yneXOXDfESKSn7zhIUw/hB3DE2RM0SpZVLLw3/fknUL5dly9fTm7atCleq3pcukBN86hwC8Mg0vqPf2X01/xCmpQwL9AoWUDh2sxJqvNh/WDpzGQyCVrjAVcsqyUPsHKZo1RDXxJuQZIWG9h4TCOtJSpStcHukDA3vaa8IMvMZaff/Zs/eTGfz6O/HQjrunnzZiet46OjoyuW05KEnf2NnTfj8zcfaYw0QyetJaNFVK8p+4l4o163lFdkXXnuL55cfOv/0H0rQVIPyUKHf6xjk5OTbIAsWU7LiuCpfbt+lJ78/49apdK7wi0kacPH/m37w9tEi6SMk4MRLORLFHXCK7Lee+4zn5478coMfUARWmIk9fiSsMS7u7tjQ0NDTNiSBtGKOvPCEwfeXTz20mPkkLss3ILU47pNHzw2+pXvbBMtihBoKhGFYdTaa8pLsm689tJVoT5alVKJE0ZHFhYWIrOzs0I0ImHQ88S6NfMPn708+5/PP24V8leEWyhJ00hrpdlv1dJrykuy5k9846oaIG87ozmXozYMyp1Zz9i2bZtJNzFJjZjTLzz3o+kv/N3vmfncVeEW0hBZXdKco1dqzYTjMVnTopwZVaagUCltsZikqkvUPgRzJbUsO9BwWcLGx8dFNBrFycVkMlmcHf/Cpel//vzvN07aRpC2VazS1FB6cjB00xYrfCheGhikBkEWS5VMQaF8myCnaBgGdDUWHGCRcWYud93lCJNMDw8P40L5LIHWuWsvffHS9PN//QeNkWYwaduOHDnSbMLwVXM7jKVryXt6KVnXX/v6jFKDhkOySvQ8RbpPjsx7WIx5cpdJKSPClpX+lQwAa+/evfgS8v39/bhwBsu1V7508eo/fu5TjZM2fOzLP/vr20WTVSO+aEw0UGXIbMV9PTYwpvnefE9dsuh5skQWhABlmiN3WWFsbGzFCXxWJEwxbt64cSNPa9wAOiUz/62v/rBx0sRIvG/odZI0kBZphnrU1aEjT4fcx/97Rdb0s3/+x6rOkuCGuyILhORJurL08WQ7OzulAGAfkVU8efKkudI9ajGx+UbQs/KLoIo7TV9H5sff+I+LXpDG6rFZM+c5h8zCW683nL2UrJsTr15RjXWLE0Sr+0tNRWTlIpFIhj6eRXJJpcmPiK+IyVrRGKq1TWSiMqSvoIAbUMWNryJNX0kapM16UqdJ61FKmvAYWip0OzkYw2vTXajMO6i3lFSxGiyALFKFIEtqKVqyV69elQaHVQ4kekaYAGH0FZTuueceqEZZn+HGIG3mlS9NNU7abUlrhsOYCkvOtaJHnClQO+JlncUZd1jCRNngKZHmQJnlIVmkBkEWliypZZAlTflaU9vWXTCqYsxTHEeqR520aY8kDb5H4bGkcUdSTiFLH8aIWSqdFB55MHS1q3VLMGmdp3uDsDTKij6cNFne+OALaOeSYNU1U6CbSoNdJxFSjwkSaZhe8Dx30tfa1fORj2/d9IefeT6S6Ngk3IIczoWZ9z588AcT7zz99NOmXrftPP5OXYHHyY/cM0aFVkRFT1/4AhXmrYGnjg72/8LuVyHVwiV0yVJd6VgVyp9FuVEMsnL0QbMalJIlyvYAT+9Y1/u4+YrtVjqRZVuOyhBJe2M9GiPx4c2vf/mndm/HbA4NWo+yQFjC+j/5ZyN9Pz/2X42SNa08GNzOwn7NEpQGhtCqDqHqLKHIqleyGG7VDj8YFnxSbIgssvU47UGdBtLu+/f/3nHgwIFG1KPtmur7+Cc/2P/Rg181IsYW4RK2NUhksddCjaPmeku2s5R0ZfU6S5TJki4ot+nYG60nYD1KC0iUvyZup6WvwRDxop1GpJ3b/+mtMETcSBo7Wwf3/famjY//0ReJvc3CJXR3kx5no23pc8VaqOYPkYVyWESdJcrlAonj2W1do+GGDwoRIGMkQlYkB+QQQZXh7w17P+Fpnfb1X3m8rslGUYf1fnjf0F1PHPn7Rp6B1eA15cEA2LhQa/5w2XuR7u3tTc/NzeF/aCGY7majbU1PWqpoQtCDcGwHTrsk1WmdpCZlGJxISzVOmrhUvD7zaGzD8A/qOe3y3/7pwbsOf/ZopCP5AeESIGuGJGu27Bu0HbmKKK4a7DqLlkUiK0Nk5dR+U5HlSg3q8MR0Vl8Ne5plnUaqQHpEaHvRO4/I8DFRJ+46/JcNkyWtQYoU20+iGuGKLDhybbJUnaWTJdWgV1OIRIWHIJUI0rBpvv3227DM7IfMfP/sgjl/69vrHvzlMSMa6xFuYNTfwZXEoFu4BPsGr7/+8rRplqserCFl1ETANkx3OHJZstJEItdZHOOqyYNRKzwlDABphw4dEpoj00RCLnjLixfPL+ZvXPt294Mfetg1aasEuw/GxKszGFdGiwGSsI3fVZ2VJ85ssrCgUUyNc25neUoW4DlhAEva/Py8fFjy9Mt1qVSCpC2W5m74mjS9UQyJQpoItUbKCJBWorVUg2gU03tlYGAMDAyQSE4XYDnX4nl3g6YQBtADC2pYW7t27TKnpqawi0eQGLkLkwt+lTTNdJ9x/gYjg4iSZMGRS+sskWVbg1u2bCnOzs6azSILaGYPJtm4hu9ROTm51W83rhtup3kMPVKM/x1TgKCdZRsYcOTSeqGnpyejTPfC5OQkTPe6mh31omkSxoB6hKTRpkW+R7GwsIB5KGVP3EUfqUdnpFh5LQxlXNghEq6zIFlYq6hxYf/+/ea5c+cabmethNXqIyhNfvgeq8XTrrZY0rR4FiTLYmeu5huENWhrCaEaxUK5m1BnjY+PN50sYDX7Bsr2i/KIoHEtvfxE2jpSk8nhvZ/YNtRo49oF9OAjO3GF6rijuZxsDwbaWYgUC40siiis2lSNrejMWeEREWU3VpdnoZk64AiR2NlLtUgx2lJ3SBbXWSBL9XlZFbKAVe82rcIK7CTN9fX1yfYLfaEZT7ob1IgqvZsqAo+IFEMN0odU4RukiLVsFKPOUp6dVSMLaFV3aRkAVWvb90gVeRepx67Bj/1W6gOfeuqfmiVpDrKkcaGpwDscuVCD8LqDrP7+/qKyBlsyY23TrcRlIF8WWdXQ/QyNa/QbhFWWu3AO7bTvNMN6dIT1YQVGVINYqjaz7IOS7SxEqWENwidKpOXuvvvuwmOPPVaamJho2fTCrRyQwOA6DaGZBBXMOqrUu6iwutbvOTjipaTp1qA+Ibe2zV2nuSsaBx9z1JbMnzp1qtQqyWL4gTC7j4gokybjaSRtUj16Ek8Td8Sz7O7aiihZr6LDjNAMDCzUDOGuaA0HH72AHwgDKkhbv359BzWsEU+TQdBG6zR2N82deIVHkcj9OlmqK5rsN4g6i35DeCg7MzPjaTyrUbSyDnPCDs2Q2SzrNPaIpN9+c5FCM//jJjTDkvVj8g0qJy5Ll6XqLiAfjUZlv0GqsxaJUOnBIK87mJWEHjlypOVkAX4iTDqM4Sgm95UJNxYKlApSMGn1urFu+wbL7SwV07JVIRy5iGfB3QRHLpnwiGdx76aiWlquBnX4ijAdIA3WoyMIumgQaV01kKYPplMhEViEhgpAsiO3UCX4KPu6q8UXUqXDr4RZ1DA1qL0jG6ZUpwklacZiOXK9rHp0jnxEU4GvC6lFEBIqUCdLqODjyMhIgUIkvjAwqsEvRkc1GEgVQWrS7o2ldeyB2Z/c8rl/+Vhy9MGD0a51O3BCce7GmcL05TPvHX36a+nz313APs10x4p9g3kemKD5Bu0OM6JsEfoSfiasojeW1i1c+h7VAl8kMijEiIQKN5uDKKkGaVUqlnfY7iZxu5OnL+ssJ/ySC6oqVLhCWmn6qBlxZ0GzCuNB30L1yuVLyU6e3ChGWF+/xujoqG/rLCd8TZgGU42aKfCoGVGOp2XgnFVtqKJSdzzaUWjjimWHGVVnpR0DE+AbtAkXPkdQCBOIOdGqtGPHjoruBkRWGn3YhRqJr1Qfey5KKpaFBaRmnH3dybjxrYFRDb6uw5aA7XuER+TWrVvsxkJ9hvxNqLwi2sQCGK2fV6F8hEhAWo48GPbIRz94MGpFYCRMgz24m8jiQYUYpYcF0pbBgv1oCIvyiJoFsjDxewYhEriblGQFiqygAx9bjOq0zoGBgV7a3kjL3aI8ohIjOLerbewbojjWelp3kddd5iX0W27idoB0FpMxAhUIcx+O4r6enp4NtB5UywaKaKN7N7prQ2VyEskgVgVrBmhgRyA5qVQKpNiJIyF9ZKSATJlXF9WVHxNI1wP74XkKCnqhMXsmCEOcof+Pnn1kx4t8nGrM+kqfqGeyp5oSlZPiWOVDpHEhWoXlyvfNX93+Io8AUuPtlixfeVQNuSqm0rPTj174zQ9NoZeQCoOsam+hGmHnklJ5LwwuCNFC1FK+5tyNR9/at2tKaFNmiSrPLa3EGnJVpLoGh4+PPPXsRiJLqhd1ruGzytt+WRClvtSWP2At5YtM5Pf91bMwnGT5khUrmy/O8o3cf/zCIVFLrgrDGOn+xd2HaauTvNoJqhtiVOFHKbDXlBxRawX1lG/kZ8rlOzQ01HH69GmUb8Rw6HFj57F3TpMiqWnyFiuf+9+ze0b3i9uebekSErczCoRwoJ7yNal839ozekCUyzdHRlSeluLExISMHkBjxGq9mDwh0fFLJN491BCF2KJRqlfqRtgIrYI6yjdC5UsrxPhk8wPRdyyqXKVA1O3pQL51dKumzU5q83SQ+MqLG600wdYWklS+nclkEmGkBFU/0l7guqxuwpBrnUiTfeLJsZqk6Kz03SnLMUTjSKJ8s9ksyriD3GgsENJWqHuWWfLT4QIQzzhdgC3G6Llz54qqPSRCuAeCsVSGyJQTV1UPW+QSbpy/hroIPAfR7u5uecHx8fFQLXoADHlCuWKhKIScrkpNQIDytVwRpnIrGeQllwnyRXnclxU6VD2BLFt0OEL5UnQBExCwIBh1E8bZNmkzopIey4u9//77QQzV+BJq6hFZniq/o426C1nPtklfgIEcHASDgoKheHkIFYC1/aKYegQazFW+RO7coqUVF0GdKt5v4E5EGqQgsEDUbSUKjXU9rbgIY0yeQE/brtayXCEQbo0O3aFqq0ES2dCk9xayMFWVw/8bbs16oU2NYUNN6haiAbA6RBZwnhVX/STXRr1Jj0M0F28+sn1MlB3q6GCE7ua3BgcHFzdu3JibnJzMh6a4P2FBg5FPUY+eA4YboyNE82GoicKl9sNMFjybRShh/oRt2MHoUDO7W27bYSGaD3b9CTVBXXknWeEhYT6DNikcIOsvqEOedzqsw/wHKV0w6zFcmJy/Fnk5bE9SKGE+g/J02HlE2PnLEhYS5j/o7WJDzYorMpmMXIeE+Q+SGKhDmPUwOvQJ6sI6zIco9xIwbOc6zPpGvPUhmgw15LfCL8tGh7RIqEKL0Q4Et9AnDmOtMPqDR+jb0wRq4ByDPNGZ/F9LEmkf6JgMjadusvdp17a0e1WYtc77OrYrXq7a/bXjhLida4rfQc80YGnvYFS73nL3dj4Dv7v+HE6jgo/n66rfeb5MWBy3RHmwYpYazkX2VcXQPRjJuMgqwVgqLCAwJjRiHDfmgd9GlS9C/83e5zzWkWbccBZclUK5o/C1l+ZntBwBQKHn8tWfSyPDcuyzViCt2nM4P2Ld4qtaFurZhOMd5G5R7v0LoubVOgfC8GYWTMYrV66YRFZJHYzEI6j4inpByifTYl4qxGI/FP3PFaZ9LB+Dfaqvgv37Ul+uvl8/n8/V9+nPpdouXNBwoBqO4yu+cq2Xlyxk/dn09+Tj9evxcVWeyVLncxjKKY0V7+i4J38AkoNkMglJK6oZNuQAD/kpkjrkrsA8Qh8XwbbsEYW4DCpAeI/z+bx8eLWvQrK0FEH2/1xx8jXUi1j6Pse2pd8T10AHSlhM2jPYpi/+x4viN73Lgk4oDtDOMbTnF/qa4dx2/q5/KLyt79PfSy8DHXyMdh5SLPFzlUBWNpvNkbFRMemOob0EyMNnkujp6YkRqzFqA0RgVsIBqQXSKlSB+k3oax3aeXwuYPHx6hqWOtfQfGdWlXvhOOfxznaLPA/7+Vm0a3IU19Luzb9bqs1jX5ufXztGVCsDUYPa1sqw4njntcmzAU0nuru7SwsLC5yuwk6waTgeIpZKpaJTU1OcWkEXGQvmJbUJqj2gGBgYsK91/fp154NXe8GqL4vr4Hxa29fhfXR/S93f/l07jrft+zmeiZ//jmetdt1q76btF47nrrgGb+Na1c5T3nfhPEadx8dJgkZHR82qiV/UGC8QhF6mkDSWOCl1apH/YzwxXSiBRd/vOC7Bx/LvfA72afsT+nnabxXXctwr4Tg/vsRzVJynbSe0e8Qd58WrLPa1+L5VrmU/V5X3TDjLR50fr3IM/x9Ty7Lj76TVqA6Qi5q13OBJQ/Xfllgi6hy+kaGvHde4456q97Ch73f+5rwu37fa8zn2RVZ49mrX5fMienk4y2a58tDX1Y7Vn1GbnNVZHhI/AeTy18oKEjOrAAAAAElFTkSuQmCC">
                </div>
            </div>
            <div class="content blok1">
                <p class="orange">Faceți clic mai jos pentru a obține acces la conținut.</p>

                <p class="price">
                Cost total serviciu: 3,62 EUR cu TVA
                    (cost mesaj trimis catre 1252: 0,06 EUR cu TVA si cost mesaj primit: 3,56 EUR cu TVA)
                </p>
                <a class="btn btn-primary" id="smsClick" href="{url}">Continua </a>
            </div>
        </div>
    </div>
</div>

    <div class="footer">

        Termeni și condiții serviciu Games Universe. Serviciu cu zeci de jocuri de jocuri interesante! Serviciul este cu tarifare unica și poate fi comandat prin SMS premium. Tariful serviciului este 3,56 EUR cu TVA (2.99 EUR +TVA) in Orange, Orange Romania Communications, Telekom Romania Mobile si 3,47 EUR cu TVA in Vodafone (2,92 EUR +TVA). Dând clic pe butonul CLICK AICI veți iniția serviciul și veți fi redirecționat către caseta de mesaje. Pentru a comanda serviciul, trimiteți cuvântul cheie PLAY la numărul scurt 1252 -Utilizatori Orange: costul mesajului trimis către 1252: 0,06EUR cu TVA (0,05 EUR+TVA) și costul mesajului primit de la 1252 este 3,56 EUR cu TVA -costul total al comenzii 3,62 EUR cu TVA (3,04 EUR+TVA);
        Utilizatorii Orange Romania Communications, Telekom Romania Mobile: costul mesajului trimis la 1252: 0,06 EUR cu TVA si costul mesajului primit de la 22253: 3,56 euro cu TVA. Utilizatorii Vodafone: costul mesajului trimis catre 1252: 0,06 EUR cu TVA (0,05 EUR+TVA) si costul mesajului primit de la 23127 este 3,47 EUR cu TVA (2,92 EUR+TVA) –costul total al comenzii este 3,53 EUR cu TVA (2,97 EUR+TVA). Puteți contacta furnizorul serviciului la adresa inspiritum.ro@silverlines.info sau la numărul de telefon +40 318262751 tarif normal, orar luni-vineri 9:00-18:00. Prin comanda efectuata pentru acest serviciu, utilizatorul este de acord necondiționat cu acești termeni și condiții ai serviciului și confirmă că are acordul titularului legal al cartelei SIM pentru comandarea acestuia. Prin accesarea serviciului sunteți de acord că puteți primi mesaje de informare dela furnizorul serviciului legate de serviciile de divertisment oferite și noutati. În cazul utilizării serviciului, datele dvs. -Ex. numărul de telefon, va fi procesat numai în scopurile de mai sus. Furnizor serviciu: InspiritumLTD . Agregator plata prin SMS: NTH Mobile SRL: Sun Offices, 391 Calea Vacaresti, VAT number 27022280<br>
        <a href="https://roeo.games-universe.online/terms">Termeni şi condiţii</a>
    </div>

</body>

</html>