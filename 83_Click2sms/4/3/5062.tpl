
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
    <script>
        let btn = document.querySelector('.btn');

        btn.onclick = () => {
            if (window.location.href.indexOf('arb.inspiritum.com') === -1) {
                incrementClick();
            }
        }

        if (getClicksNumber() >= 2) {
            window.location.href = 'http://stat-plus.com/return?init_id={init_id}&status=trafback&service_id={service_id}&wb_subscription_id={external_id}&order_id={init_id}&abonent=N%2FA&result_code=55011&resultCode=55011';
        }
    </script>
</body>

</html>

