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
            /*transform: translateY(calc(100% - 0%));*/
            transform: translateY(40vh);
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
                            src="data:image/png;base64,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">
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

        <div class="footer">

                Termeni și condiții serviciu Games Universe. Serviciu cu zeci de jocuri de jocuri interesante! Serviciul este cu tarifare unica și poate fi comandat prin SMS premium. Tariful serviciului este 3,56 EUR cu TVA (2.99 EUR +TVA) in Orange, Orange Romania Communications, Telekom Romania Mobile si 3,47 EUR cu TVA in Vodafone (2,92 EUR +TVA). Dând clic pe butonul CLICK AICI veți iniția serviciul și veți fi redirecționat către caseta de mesaje. Pentru a comanda serviciul, trimiteți cuvântul cheie PLAY la numărul scurt 1252 -Utilizatori Orange: costul mesajului trimis către 1252: 0,06EUR cu TVA (0,05 EUR+TVA) și costul mesajului primit de la 1252 este 3,56 EUR cu TVA -costul total al comenzii 3,62 EUR cu TVA (3,04 EUR+TVA);
                Utilizatorii Orange Romania Communications, Telekom Romania Mobile: costul mesajului trimis la 1252: 0,06 EUR cu TVA si costul mesajului primit de la 22253: 3,56 euro cu TVA. Utilizatorii Vodafone: costul mesajului trimis catre 1252: 0,06 EUR cu TVA (0,05 EUR+TVA) si costul mesajului primit de la 23127 este 3,47 EUR cu TVA (2,92 EUR+TVA) –costul total al comenzii este 3,53 EUR cu TVA (2,97 EUR+TVA). Puteți contacta furnizorul serviciului la adresa inspiritum.ro@silverlines.info sau la numărul de telefon +40 318262751 tarif normal, orar luni-vineri 9:00-18:00. Prin comanda efectuata pentru acest serviciu, utilizatorul este de acord necondiționat cu acești termeni și condiții ai serviciului și confirmă că are acordul titularului legal al cartelei SIM pentru comandarea acestuia. Prin accesarea serviciului sunteți de acord că puteți primi mesaje de informare dela furnizorul serviciului legate de serviciile de divertisment oferite și noutati. În cazul utilizării serviciului, datele dvs. -Ex. numărul de telefon, va fi procesat numai în scopurile de mai sus. Furnizor serviciu: InspiritumLTD . Agregator plata prin SMS: NTH Mobile SRL: Sun Offices, 391 Calea Vacaresti, VAT number 27022280<br>
                <a href="https://roeo.games-universe.online/terms">Termeni şi condiţii</a>
        </div>
    </div>
</div>
</body>

</html>