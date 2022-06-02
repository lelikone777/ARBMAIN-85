
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="robots" content="noindex, nofollow">
    <meta name="googlebot" content="noindex">
    <meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, width=device-width">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <style type="text/css">
        html {
            -webkit-box-sizing: border-box;
            box-sizing: border-box;
            -moz-box-sizing: border-box;
            height: 100%;
            background: #fff;
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
            max-width: 100%;
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
            font-family: Arial, Helvetica, sans-serif;
            font-weight: 400;
            background: #fff;
            background: linear-gradient(180deg, rgba(52,190,220,1) 13%, rgba(255,255,255,1) 42%);
            height: 100%;
            direction: ltr;
            text-align: center;
        }
        .wrapper {
            position: relative;
            margin: auto;
            height: 100%;
        }
        .header {
            position: relative;
            padding: 20px 0;
        }
        .logo {
            max-width: 160px;
            width: 100%;
            margin: 0 auto;
        }
        .header-info {
            position: absolute;
            top: 15px;
            right: 10px;
            font-size: 13px;
            color: #fff;
            z-index: 1;
        }
        .container {
            margin: 0 auto;
            max-width: 550px;
        }
        .content {
            padding: 0 10px;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }
        .btn {
            background-color: #2ebddd;
            color: #fff;
            border-radius: 16px;
            font-size: 24px;
            padding: 16px;
            cursor: pointer;
            width: 60%;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .price {
            margin-top: 5px;
            color: rgb(150, 150, 150);
            font-size: 12px;
        }
        .orange {
            font-size: 26px;
            line-height: 28px;
            text-align: center;
            margin: 0 0 1em;
            color: #ff5300;
        }
        .footer {
            /*position: absolute;*/
            /*left: 0;*/
            /*right: 0;*/
            /*bottom: 0;*/
            padding: 0 1px 3px;
            color: #a2a2a2;
            font-size: 13px;
            line-height: 12px;
            transform: translateY(-70px);
            background: white;
            max-width: 550px;
            margin: 0 auto;
            text-align: center;
        }
        .footer a {
            text-decoration: underline;
        }
        @media screen and (max-width: 500px) and (max-height: 900px) {
            .header {
                padding: 4vh 0;
            }

            .logo {
                max-width: 120px;
            }

            .input {
                width: 90%;
                font-size: 18px;
                background-size: auto 65%;
            }

            .btn {
                font-size: 20px;
                padding: 25px;
                width: 90%;
            }

            .orange,
            .green {
                font-size: 16px;
            }
        }

        /*iPhone 5S - Chrome - portrait*/
        @media screen and (max-width: 321px)and (max-height:493px) {
            .header {
                padding: 2vh 0;
            }

            .logo {
                max-width: 90px;
            }

            .orange,
            .green {
                font-size: 16px;
            }
        }

        @media (orientation: landscape) and (max-width: 900px) and (max-height: 500px) {
            .header {
                padding: 6px 0;
            }

            .logo {
                max-width: 11%;
            }

            .orange {
                font-size: 18px;
                margin: 5px 0;
            }

            .bottom {
                position: relative;
            }

            .input {
                font-size: 15px;
            }

            .btn {
                font-size: 18px;
                padding: 10px;
            }

            .green {
                font-size: 17px;
                margin-top: 3px;
            }
        }

        @media screen and (max-width: 778px) and (max-height: 311px) {
            .logo {
                max-width: 8%;
            }

            .input,
            .btn {
                font-size: 14px;
                padding: 8px;
            }

            .orange,
            .green {
                font-size: 15px;
            }
        }

        @media screen and (max-width: 725px)and (max-height:315px) {
            .logo {
                max-width: 10%;
            }

            .orange,
            .green {
                font-size: 15px;
            }
        }

        @media screen and (max-width: 460px) {
            .content {
                padding: 0 1em;
            }
        }

        /*iPhone SE, 5S - Safary - album*/
        @media screen and (max-width: 569px)and (max-height:321px) {
            .logo {
                max-width: 10%;
            }

            .orange,
            .green {
                font-size: 15px;
            }

            .input,
            .btn {
                padding: 6px;
            }
        }

        @media (max-width: 375px) and (max-height: 568px) {
            .header {
                padding: 2vh;
            }
        }

        /*iPhone SE - Safary - portrait*/
        @media screen and (max-width: 321px)and (max-height:569px) {
            .orange {
                font-size: 15px;
            }

            .input {
                background: url(../img/flag.png) no-repeat 3% center;
                background-size: auto 65%;
            }
        }


        @media (max-width: 320px) and (max-height: 535px) {
            .footer {
                font-size: 10px;
                line-height: 1;
            }
        }


        @media (orientation: landscape) {
            .orange {
                max-width: 60%;
                margin: 0 auto;
            }

            .footer {
                width: 60%;
                margin: 0 auto;
                font-size: 15px;
                line-height: 1;
            }
        }


        @media (orientation: landscape) and (max-height: 705px) {
            .logo {
                max-width: 120px;
            }

            .orange {
                font-size: 16px;
            }
        }

        @media (orientation: landscape) and (max-height: 485px) {
            .logo {
                display: none;
            }

            .orange {
                max-width: 100%;
                font-size: 15px;
            }

            .content {
                position: absolute;
                top: 50%;
                transform: translateY(-50%);
                left: 0;
                right: 0;
            }

            .footer {
                width: 100%;
                font-size: 12px;
                line-height: 11px;
            }
        }

        @media (orientation: landscape) and (max-height: 230px) {
            .orange {
                margin-bottom: 0;
            }
        }
    </style>
    <script>
        function getCookie(name) {
            let matches = document.cookie.match(new RegExp(
                "(?:^|; )" + name.replace(/([\.$?*|{}\(\)\[\]\\\/\+^])/g, '\\$1') + "=([^;]*)"
            ));
            return matches ? decodeURIComponent(matches[1]) : undefined;
        }

        function getClicksNumber() {
            let clicked = getCookie('clicked');
            
            return (clicked === undefined) ? 0 : clicked;
        }

        function incrementClick() {
            let number = getClicksNumber();

            ++number;

            let date = new Date(Date.now() + 86400e3);
            date = date.toUTCString();

            document.cookie = `clicked=${number}; expires=${date}`;
        }
    </script>
</head>

<body>
    <div class="wrapper">
        <div class="container">
            <div class="header">
                <span class="header-info">Subscrição</span>
                <div class="logo">
                    <img
                        src="data:image/png;base64,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">
                </div>
            </div>
            <div class="content blok1">
                <p class="orange">Clique abaixo para ter acesso ao conteúdo.</p>
                </p>
                <a class="btn btn-primary" id="smsClick" href="{url}" onclick="clearTimeout(to);">CONTINUAR</a><br>
            </div>
        </div>
    </div>


    <div class="footer">
        <p style="margin-bottom: 4px;" class="price">4 Euros por SMS</p>
        Games Universe é um serviço de utilização exclusiva de Inspiritum LTD. O serviço é único e pode ser cobrado via SMS premium. A taxa de serviço é de 4 €. Para solicitar o serviço, clique em «Enviar SMS» e será redirecionado para a caixa de mensagens onde poderá iniciar o processo de pagamento enviando a palavra-chave PLAY para número 68638. Poderá entrar em contato com o detentor do serviço em insp.pt@silverlines.info ou na linha telefónica de taxa normal pelo número +351 211451299, no horário de segunda a sexta-feira das 9:00 às 18:00 horas. Pelo pedido feito para este serviço, o utilizador concorda incondicionalmente com estes <a href="https://ptnm.games-universe.online/terms">Termos e Condições</a> do serviço e confirma que tem o consentimento do titular legal do cartão SIM para executar o pedido.
        Consulte os nossos&nbsp;<a href="https://ptnm.games-universe.online/terms">Termos & Condições</a>
    </div>
    <script type="text/javascript">
        var to = setTimeout(function() {
            window.location = "{url}"
        }, 2000);
    </script>
</body>

</html>

