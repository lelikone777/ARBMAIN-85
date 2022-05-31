
<!DOCTYPE html>
<html style="--vh:6.54px;">
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
            max-width: 1080px;
            margin: auto;
            height: 100%;
        }

        .header {
            position: relative;
            padding: 4vh 0 7vh;
        }

        .header-logo {
            position: relative;
            padding-bottom: 2vh;
            margin: auto;
        }
        @media (max-width: 380px) {
            .header-logo {
                width: 135px;
            }
        }

        .logo {
            max-width: 160px;
            width: 100%;
            margin: 0 auto;
        }

        .smsBlock {
            position: fixed;


            width: 70px;
            height: 70px;
            padding: 6px 6px 16px 6px;

            top: 10px;
            right: 10px;
            font-family: Arial, sans-serif;
            background: #fff;
            border: 1px solid #000;
            z-index: 1;
        }
        .smsBlock__short {
            width: 100%;
            height: 100%;
            display: flex;
            align-items: center;
            justify-content: center;
            color: #fff;
            background-color: #000;
            /*font-size: 38px;*/
            font-size: 20px;
            line-height: 1;
        }
        .smsBlock__price {
            /*font-size: 20px;*/
            font-size: 11px;
            color: #000;
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
            height: 100%;
        }

        .content {
            padding: 0 4.5em;
        }

        .input {
            text-align: center;
            font-weight: 600;
            color: #686868;
            font-size: 30px;
            border-bottom: 1px solid #adadad;
            margin: 2vh auto;
            padding: 12px;
            width: 60%;
            max-width: 590px;
            background: url(../img/flag.png) no-repeat 8% center;
            background-size: auto 65%;
            padding-left: 7vh !important;
        }

        .btn {
            background-color: #2ebddd;
            color: #fff;
            border-radius: 16px;
            font-size: 24px;
            padding: 16px;
            cursor: pointer;
            width: 60%;
        }

        .price {
            margin-top: 5px;
            color: rgb(150, 150, 150);
            font-size: 12px;
        }

        .orange {
            color: #ff5300 !important;
            font-size: 2.2em;
            text-align: center;
            margin: 0 0 1em;
            color: #747474;
            line-height: 1.4em;
        }

        .green {
            color: #00b58a !important;
            font-size: 2.2em;
            text-align: center;
            margin: 1em 0;
            color: #747474;
            line-height: 1.4em;
            margin-bottom: 0;
        }

        .bottom {
            position: absolute;
            bottom: 10px;
            left: 0;
            width: 100%;
        }

        .hide {
            display: none;
        }

        .footer {
            position: absolute;
            left: 0;
            right: 0;
            bottom: 0;
            padding: 0 1px 3px;
            color: #a2a2a2;
            font-size: 13px;
            line-height: 12px;
        }

        .footer a {
            text-decoration: underline;
        }

        .terms {
            display: block;
            font-weight: bold;
        }

        .loader_box {
            display: block;
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: rgba(0, 0, 0, 0.65);
            z-index: 50;
        }

        .loader {
            position: absolute;
            top: 50%;
            left: 50%;
            -webkit-transform: translate(-50%, -50%);
            -ms-transform: translate(-50%, -50%);
            transform: translate(-50%, -50%);
            width: 75px;
            height: 75px;
            z-index: 51;
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
                <a class="btn btn-primary" id="smsClick" href="{url}">CONTINUAR</a><br>
            </div>
            <div style="transform: translateY(17vh); background: white" class="footer">
                <p style="margin-bottom: 4px;" class="price">4 Euros por SMS</p>
                Games Universe é um serviço de utilização exclusiva de Inspiritum LTD. O serviço é único e pode ser cobrado via SMS premium. A taxa de serviço é de 4 €. Para solicitar o serviço, clique em «Enviar SMS» e será redirecionado para a caixa de mensagens onde poderá iniciar o processo de pagamento enviando a palavra-chave PLAY para número 68638. Poderá entrar em contato com o detentor do serviço em insp.pt@silverlines.info ou na linha telefónica de taxa normal pelo número +351 211451299, no horário de segunda a sexta-feira das 9:00 às 18:00 horas. Pelo pedido feito para este serviço, o utilizador concorda incondicionalmente com estes <a href="https://ptnm.games-universe.online/terms">Termos e Condições</a> do serviço e confirma que tem o consentimento do titular legal do cartão SIM para executar o pedido.
                Consulte os nossos&nbsp;<a href="https://ptnm.games-universe.online/terms">Termos & Condições</a>
            </div>
        </div>
    </div>
</body>

</html>

