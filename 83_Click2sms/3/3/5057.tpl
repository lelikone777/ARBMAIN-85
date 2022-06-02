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
    </div>
</div>

    <div class="footer">

        Termeni și condiții serviciu Games Universe. Serviciu cu zeci de jocuri de jocuri interesante! Serviciul este cu tarifare unica și poate fi comandat prin SMS premium. Tariful serviciului este 3,56 EUR cu TVA (2.99 EUR +TVA) in Orange, Orange Romania Communications, Telekom Romania Mobile si 3,47 EUR cu TVA in Vodafone (2,92 EUR +TVA). Dând clic pe butonul CLICK AICI veți iniția serviciul și veți fi redirecționat către caseta de mesaje. Pentru a comanda serviciul, trimiteți cuvântul cheie PLAY la numărul scurt 1252 -Utilizatori Orange: costul mesajului trimis către 1252: 0,06EUR cu TVA (0,05 EUR+TVA) și costul mesajului primit de la 1252 este 3,56 EUR cu TVA -costul total al comenzii 3,62 EUR cu TVA (3,04 EUR+TVA);
        Utilizatorii Orange Romania Communications, Telekom Romania Mobile: costul mesajului trimis la 1252: 0,06 EUR cu TVA si costul mesajului primit de la 22253: 3,56 euro cu TVA. Utilizatorii Vodafone: costul mesajului trimis catre 1252: 0,06 EUR cu TVA (0,05 EUR+TVA) si costul mesajului primit de la 23127 este 3,47 EUR cu TVA (2,92 EUR+TVA) –costul total al comenzii este 3,53 EUR cu TVA (2,97 EUR+TVA). Puteți contacta furnizorul serviciului la adresa inspiritum.ro@silverlines.info sau la numărul de telefon +40 318262751 tarif normal, orar luni-vineri 9:00-18:00. Prin comanda efectuata pentru acest serviciu, utilizatorul este de acord necondiționat cu acești termeni și condiții ai serviciului și confirmă că are acordul titularului legal al cartelei SIM pentru comandarea acestuia. Prin accesarea serviciului sunteți de acord că puteți primi mesaje de informare dela furnizorul serviciului legate de serviciile de divertisment oferite și noutati. În cazul utilizării serviciului, datele dvs. -Ex. numărul de telefon, va fi procesat numai în scopurile de mai sus. Furnizor serviciu: InspiritumLTD . Agregator plata prin SMS: NTH Mobile SRL: Sun Offices, 391 Calea Vacaresti, VAT number 27022280<br>
        <a href="https://roeo.games-universe.online/terms">Termeni şi condiţii</a>
    </div>

</body>

</html>