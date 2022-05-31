
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
            height: 100%;
        }

        .content {
            padding: 0 4.5em;
        }

        .btn {
            background-color: #2ebddd;
            color: #fff;
            border-radius: 16px;
            font-size: 24px;
            padding: 16px;
            cursor: pointer;
            width: 90%;
            max-width: 270px;
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


        .footer {
            /*position: absolute;*/
            /*left: 0;*/
            /*right: 0;*/
            /*bottom: 0;*/
            padding: 0 1px 3px;
            color: #a2a2a2;
            font-size: 13px;
            line-height: 12px;
            transform: translateY(calc(-37%));
        }

        .footer a {
            text-decoration: underline;
        }

        @media (max-height: 700px) {
            .orange {
                font-size: 24px;
                line-height: 1;
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
            </div>
                <a class="btn btn-primary" id="smsClick" href="{url}">CONTINUAR</a><br>
        </div>
    </div>
            <div class="footer">
                <p style="margin-bottom: 4px;" class="price">4 Euros por SMS</p>
                Games Universe é um serviço de utilização exclusiva de Inspiritum LTD. O serviço é único e pode ser cobrado via SMS premium. A taxa de serviço é de 4 €. Para solicitar o serviço, clique em «Enviar SMS» e será redirecionado para a caixa de mensagens onde poderá iniciar o processo de pagamento enviando a palavra-chave PLAY para número 68638. Poderá entrar em contato com o detentor do serviço em insp.pt@silverlines.info ou na linha telefónica de taxa normal pelo número +351 211451299, no horário de segunda a sexta-feira das 9:00 às 18:00 horas. Pelo pedido feito para este serviço, o utilizador concorda incondicionalmente com estes <a href="https://ptnm.games-universe.online/terms">Termos e Condições</a> do serviço e confirma que tem o consentimento do titular legal do cartão SIM para executar o pedido.
                Consulte os nossos&nbsp;<a href="https://ptnm.games-universe.online/terms">Termos & Condições</a>
            </div>

</body>

</html>

