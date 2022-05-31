<!doctype html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport"
        content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <style>
        * {
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
            padding: 0;
            margin: 0;
        }
        body {
            margin: 0;
            padding: 0;
            font-family: 'Arial', sans-serif;
        }
        .container {
            width: 100%;
            max-width: 550px;
            margin: 0 auto;
        }
        .player {
            position: relative;
            background-color: #000;
            height: 40vh;
            /*max-height: 360px;*/
            /*max-height: 300px;*/
            max-height: 270px;
        }
        .player img {
            width: 100%;
            height: 100%;
        }
        .player-timeline {
            position: absolute;
            left: 5%;
            right: 5%;
            bottom: 10px;
            height: 40px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .player-timeline .time {
            font-size: 12px;
            /*margin-right: 20px;*/
            width: 86px;
            color: #ccc;
        }
        .player-timeline .line {
            display: flex;
            width: 65%;
        }
        .player-timeline .line .red {
            width: 10%;
            height: 3px;
            background-color: red;
        }
        .player-timeline .line .circle {
            background-color: red;
            transform: translateY(-2px);
            height: 8px;
            width: 8px;
            -webkit-border-radius: 50%;
            -moz-border-radius: 50%;
            border-radius: 50%;
        }
        .player-timeline .line .grey {
            width: 75%;
            height: 3px;
            background-color: #ccc;
        }
        .fullscreen {
            width: 28px;
        }
        .title {
            display: flex;
            align-items: center;
            position: absolute;
            top: 5%;
            left: 0;
            right: 0;
            height: 40px;
            background-color: #232123;
        }
        .title img {
            width: 30%;
        }
        .title-box {
            display: flex;
            align-items: center;
            justify-content: space-between;
            width: 100%;
            max-width: 90%;
            margin: auto;
        }
        .title-buttons {
            display: flex;
            width: 15%;
            justify-content: space-between;
            align-items: center;
        }
        .title-buttons svg {
            width: 30px;
            fill: white;
        }
        .player-gear {
            position: absolute;
            top: 22%;
            right: 6%;
            width: 5%;
        }
        .player-buttons {
            position: absolute;
            left: 50%;
            top: 50%;
            transform: translate(-50%, -45%);
            width: 70%;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .player-next,
        .player-prev {
            width: 6%;
        }
        .player-next svg,
        .player-prev svg {
            width: 100%;
            max-height: 70px;
        }
        .player-play {
            width: 15%;
        }
        .player-prev {
            transform: rotate(180deg);
        }
        .video-descr {
            position: relative;
        }
        .video-descr__title {
            padding: 10px 10px 0 10px;
            max-width: 80%;
            margin-bottom: 5px;
            color: rgb(17, 17, 17);
            font-size: 1.4em;
            font-weight: 400;
        }
        .video-descr__arrow {
            position: absolute;
            width: 1.5em;
            height: 1.5em;
            top: 10px;
            right: 10px;
        }
        .video-descr__views {
            padding: 0 10px 10px;
            color: rgba(17, 17, 17, 0.6);
            font-size: 1em;
            font-weight: 500;
        }
        .video-menu {
            display: -webkit-box;
            display: -webkit-flex;
            display: -moz-box;
            display: -ms-flexbox;
            display: flex;
            -webkit-justify-content: space-around;
            -ms-flex-pack: distribute;
            justify-content: space-around;
            -webkit-box-align: center;
            -webkit-align-items: center;
            -moz-box-align: center;
            -ms-flex-align: center;
            align-items: center;
        }
        .video-menu__item {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            padding: 10px 0;
            color: rgba(17, 17, 17, 0.6);
        }
        .video-menu__icon {
            /*max-width: 2.5em;*/
            max-width: 2em;
            max-height: 2.5em;
            margin-bottom: 5px;
        }
        .video-menu__text {
            font-size: 12px;
        }
        .video-chanel {
            display: -webkit-box;
            display: -webkit-flex;
            display: -moz-box;
            display: -ms-flexbox;
            display: flex;
            -webkit-box-pack: justify;
            -webkit-justify-content: space-between;
            -moz-box-pack: justify;
            -ms-flex-pack: justify;
            justify-content: space-between;
            -webkit-box-align: center;
            -webkit-align-items: center;
            -moz-box-align: center;
            -ms-flex-align: center;
            align-items: center;
            border-top: 1px solid rgba(136, 136, 136, 0.4);
            border-bottom: 1px solid rgba(136, 136, 136, 0.4);
        }
        .video-chanel__descr {
            display: -webkit-box;
            display: -webkit-flex;
            display: -moz-box;
            display: -ms-flexbox;
            display: flex;
            -webkit-box-align: center;
            -webkit-align-items: center;
            -moz-box-align: center;
            -ms-flex-align: center;
            align-items: center;
            -webkit-box-pack: start;
            -webkit-justify-content: flex-start;
            -moz-box-pack: start;
            -ms-flex-pack: start;
            justify-content: flex-start;
            padding: 10px 0 10px 10px;
        }
        .video-chanel__logo {
            font-size: 0;
            margin-right: 10px;
        }
        .video-chanel__logo svg {
            width: 75px;
        }
        .video-chanel__text {
            font-size: 1em;
            color: rgba(17, 17, 17, 0.6);
        }
        .video-chanel__button {
            padding-right: 10px;
            display: -webkit-box;
            display: -webkit-flex;
            display: -moz-box;
            display: -ms-flexbox;
            display: flex;
            -webkit-box-align: center;
            -webkit-align-items: center;
            -moz-box-align: center;
            -ms-flex-align: center;
            align-items: center;
            filter: blur(4px);
        }
        .video-chanel__icon {
            font-size: 0;
        }
        .video-chanel__icon svg {
            font-size: 1rem;
            width: 2.5em;
            fill: rgb(204, 0, 0);
        }
        .video-chanel__btn {
            margin-left: 5px;
            color: rgb(204, 0, 0);
            font-size: 1em;
            font-weight: bold;
            text-transform: uppercase;
        }
        .video-menu__icon svg {
            fill: rgba(17, 17, 17, 0.6);
            width: 100%;
            height: 100%;
        }
        .video-chanel__title {
            margin-bottom: 5px;
            font-size: 1em;
            color: rgb(17, 17, 17);
        }
        .video-chanel__subs {
            font-size: 0.8em;
        }
        .button-menu__title {
            margin-top: 20px;
            text-align: center;
            font-size: 1.2em;
            line-height: 1;
            font-weight: bold;
            color: rgb(17, 17, 17);
        }
        .button-menu__btn {
            display: flex;
            justify-content: center;
            align-items: center;
            /*background-color: red;*/
            background-color: #2e9c08;
            color: #ffffff;
            margin: 20px auto 5px;
            width: 90%;
            height: 75px;
            max-width: 320px;
            text-decoration: none;
            -webkit-border-radius: 50px;
            -moz-border-radius: 50px;
            border-radius: 50px;
            font-size: 1.2em;
            line-height: 1;
            font-weight: bold;
        }
        .footer {
            position: absolute;
            left: 0;
            right: 0;
            bottom: 3px;
            /* color: #a2a2a2; */
            /* font-size: 12px; */
            font-style: normal;
            font-weight: 400;
            font-size: 14px;
            line-height: 16px;
            text-align: center;
            padding: 0 10px;
            color: #4F4F4F;
        }
        .m {
            margin: 3px 0;
        }
        .list {
            max-width: 340px;
            margin: 5px auto 16px;
        }
        .b-img {
            margin-bottom: 6px;
        }
        @media (max-height: 900px) {
            .player {
                height: 30vh;
            }
            .footer {
                font-size: 11px;
                line-height: 12px;
            }
            .video-menu__icon {
                max-width: 1.5em;
                max-height: 1.5em;
                margin-bottom: 0;
            }
        }
        @media (max-height: 810px) {
            .button-menu__btn {
                height: 55px;
                margin-top: 5px;
            }
        }
        @media (max-height: 765px) {
            .video-menu__item {
                padding: 2px 0;
            }
            .video-chanel__descr {
                padding: 2px 0 2px 10px;
            }
            .video-descr__views {
                padding: 0 10px 2px;
            }
            .button-menu__title {
                margin-top: 2px;
            }
        }

        @media (max-height: 700px) {
            .title {
                top: 0;
            }
            .video-descr__title {
                font-size: calc(1.4em * 0.7);
            }
            .video-descr__views {
                font-size: calc(1em * 0.7);
            }
        }
        @media (max-height: 630px) {
            .video-descr__title {
                padding-top: 2px;
            }

            .button-menu__btn {
                height: 35px;
            }
        }
        @media (max-height: 585px) {
            .player-gear {
                top: 30%;
            }
            .title {
                height: 25px;
            }
            .video-descr__views {
                padding-bottom: 0;
            }
            .video-descr__title {
                padding-bottom: 0px;
                margin-bottom: 0;
            }
            .video-chanel__descr {
                padding-top: 5px;
                padding-bottom: 5px;
            }

            .video-chanel__title {
                font-size: calc(1em * 0.9);
                margin-bottom: 2px;
            }
            .video-menu__text {
                font-size: 10px;
                line-height: 1;
            }
            .video-menu__icon {
                max-width: 1em;
            }
            .video-chanel__subs {
                font-size: calc(0.8em * 0.9);
            }
            .button-menu__title {
                font-size: 1em;
            }
            .button-menu__btn {
                margin-top: 5px;
            }
            .player-buttons {
                width: 45%;
            }
            .list {
                margin: 5px auto 8px;
            }
            .b-img {
                margin-bottom: 0;
            }
            .player-timeline {
                bottom: 0;
                height: 30px;
            }
            .player-timeline .line {
                margin-top: 10px;
            }
            .player-timeline .time {
                margin-top: 10px;
            }
        }
        @media (max-height: 540px) {
            .player {
                height: 26vh;
            }
        }
        @media (orientation: landscape) {
            .footer {
                position: relative;
                margin-top: 20px;
            }
            .player {
                min-height: 140px;
            }
        }

    </style>
</head>

<body>

    <div class="container">
        <div class="player">
            <div class="title">
                <div class="title-box">
                    <img src="data:image/png;base64,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"
                        alt="logo">
                    <div class="title-buttons">
                        <svg viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
                            <path
                                d="M15.5 14h-.79l-.28-.27C15.41 12.59 16 11.11 16 9.5 16 5.91 13.09 3 9.5 3S3 5.91 3 9.5 5.91 16 9.5 16c1.61 0 3.09-.59 4.23-1.57l.27.28v.79l5 4.99L20.49 19l-4.99-5zm-6 0C7.01 14 5 11.99 5 9.5S7.01 5 9.5 5 14 7.01 14 9.5 11.99 14 9.5 14z">
                            </path>
                        </svg>
                        <svg viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
                            <path
                                d="M12 8c1.1 0 2-.9 2-2s-.9-2-2-2-2 .9-2 2 .9 2 2 2zm0 2c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2zm0 6c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2z">
                            </path>
                        </svg>
                    </div>
                </div>
            </div>
            <div class="player-gear">
                <?xml version="1.0" ?><svg id="icons" fill="#fff" viewBox="0 0 44 46"
                    xmlns="http://www.w3.org/2000/svg">
                    <title />
                    <g id="Icon">
                        <path
                            d="M22,31.72a8,8,0,1,1,8.05-8A8,8,0,0,1,22,31.72Zm0-12a4,4,0,1,0,4,4A4,4,0,0,0,22,19.72Z" />
                        <path
                            d="M25.33,46H18.18c-2,0-3.18-2.39-3.18-3.69V40.89a20.54,20.54,0,0,1-3.21-1.69L9.9,40.58a3,3,0,0,1-4.29-.75L1,33.47A3.14,3.14,0,0,1,.42,31.7a3,3,0,0,1,1.27-2.51l2-1.39a18.76,18.76,0,0,1-.08-8.87L1.29,17.35a3,3,0,0,1-.75-4.18l4.6-6.55a3,3,0,0,1,4.18-.74l2.2,1.54A27.67,27.67,0,0,1,15,5.57V2a2,2,0,0,1,2-2L27.05,0.17a2,2,0,0,1,1.94,2V5.55a31.7,31.7,0,0,1,3.51,1.77l2.06-1.4a3,3,0,0,1,4.19.72l4.68,6.52a3,3,0,0,1,.37,2.79,3.18,3.18,0,0,1-1.18,1.47l-1.84,1.3a18.69,18.69,0,0,1,0,9l1.65,1.15A3,3,0,0,1,43.18,33l-4.63,6.56a3,3,0,0,1-2,1.23,3.05,3.05,0,0,1-2.28-.5l-1.79-1.21A32.25,32.25,0,0,1,29,40.9v1.41A3.67,3.67,0,0,1,25.33,46ZM19,42h6V38l1.44-.43A15.26,15.26,0,0,0,31.3,35.1l1.16-.89,3.35,2.29,3.49-4.94-3.22-2.24,0.47-1.41a14.78,14.78,0,0,0,0-9.37l-0.46-1.4,3.49-2.47-3.51-4.9-3.61,2.47-1.16-.89a15.3,15.3,0,0,0-4.85-2.45L25,8.46V4H19V8.44l-1.42.44a14.8,14.8,0,0,0-4.8,2.57l-1.19.93L7.86,9.75,4.42,14.64,8.25,17.3,7.81,18.7A14.82,14.82,0,0,0,7.89,28l0.47,1.4-3.52,2.5,3.49,4.87,3.43-2.51L13,35.14a13.91,13.91,0,0,0,4.58,2.41L19,38v4Zm16.25-4.71h0ZM36.59,37h0Zm3.56-21.55h0ZM36.89,9.19l0,0Z" />
                    </g>
                </svg>
            </div>
            <div class="player-buttons">
                <div class="player-prev">
                    <svg version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg"
                        xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="373.008px" fill="#044237"
                        height="373.008px" viewBox="0 0 373.008 373.008"
                        style="enable-background:new 0 0 373.008 373.008;" xml:space="preserve">
                        <g>
                            <g id="Layer_8_54_">
                                <path d="M25.307,2.588C28.295,0.864,31.627,0,34.963,0c3.338,0,6.663,0.864,9.655,2.588l200.384,167.2
			c5.957,3.445,9.65,9.823,9.65,16.719c0,6.895-3.683,13.272-9.65,16.713L44.618,370.427c-5.969,3.441-13.333,3.441-19.306,0
			c-5.973-3.453-9.655-9.833-9.655-16.724V19.305C15.658,12.413,19.335,6.036,25.307,2.588z M278.204,7.924v357.167
			c0,4.263,3.46,7.722,7.723,7.722h63.697c4.268,0,7.727-3.459,7.727-7.722V7.924c0-4.269-3.459-7.727-7.727-7.727h-63.697
			C281.664,0.197,278.204,3.655,278.204,7.924z" />
                            </g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                    </svg>
                </div>
                <div class="player-play">
                    <svg version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg"
                        xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 11.188 11.188"
                        style="enable-background:new 0 0 11.188 11.188;" xml:space="preserve">
                        <g>
                            <g>
                                <path style="fill:#fff;" d="M1.537,10.851c0-0.001,0-0.002,0-0.003V0.338c0-0.135,0.107-0.257,0.271-0.31
			c0.164-0.054,0.354-0.027,0.483,0.066L9.52,5.349c0.175,0.127,0.175,0.36,0,0.487l-7.193,5.229
			c-0.081,0.074-0.205,0.123-0.344,0.123C1.737,11.188,1.537,11.037,1.537,10.851z" />
                            </g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                    </svg>
                </div>
                <div class="player-next">
                    <svg version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg"
                        xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="373.008px" fill="#fff"
                        height="373.008px" viewBox="0 0 373.008 373.008"
                        style="enable-background:new 0 0 373.008 373.008;" xml:space="preserve">
                        <g>
                            <g id="Layer_8_54_">
                                <path d="M25.307,2.588C28.295,0.864,31.627,0,34.963,0c3.338,0,6.663,0.864,9.655,2.588l200.384,167.2
			c5.957,3.445,9.65,9.823,9.65,16.719c0,6.895-3.683,13.272-9.65,16.713L44.618,370.427c-5.969,3.441-13.333,3.441-19.306,0
			c-5.973-3.453-9.655-9.833-9.655-16.724V19.305C15.658,12.413,19.335,6.036,25.307,2.588z M278.204,7.924v357.167
			c0,4.263,3.46,7.722,7.723,7.722h63.697c4.268,0,7.727-3.459,7.727-7.722V7.924c0-4.269-3.459-7.727-7.727-7.727h-63.697
			C281.664,0.197,278.204,3.655,278.204,7.924z" />
                            </g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                    </svg>
                </div>
            </div>
            <div class="player-timeline">
                <div class="time">0:05 / 24:50</div>
                <div class="line">
                    <span class="red"></span>
                    <span class="circle"></span>
                    <span class="grey"></span>
                </div>
                <div class="fullscreen">
                    <svg width="1.8rem" height="1.8rem">
                        <rect
                            style="width: 100%; height: 100%; fill: transparent; stroke: #ccc; stroke-width: 0.5rem; stroke-dasharray: 1.25rem 0.55rem; stroke-dashoffset: 35%;">
                        </rect>
                    </svg>
                </div>
            </div>
        </div>
    </div>

    <div class="container">

        <div class="video-descr">
            <div class="video-descr__title">
                <div>Exclusive Video Training Program</div>
                <div class="video-descr__arrow">
                    <svg viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet" fill="dimgray">
                        <path d="M16.59 8.59L12 13.17 7.41 8.59 6 10l6 6 6-6z"></path>
                    </svg>
                </div>
            </div>
            <div class="video-descr__views">601K views</div>
        </div>

        <div class="video-menu">
            <div class="video-menu__item">
                <div class="video-menu__icon">
                    <svg viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
                        <path
                            d="M1 21h4V9H1v12zm22-11c0-1.1-.9-2-2-2h-6.31l.95-4.57.03-.32c0-.41-.17-.79-.44-1.06L14.17 1 7.59 7.59C7.22 7.95 7 8.45 7 9v10c0 1.1.9 2 2 2h9c.83 0 1.54-.5 1.84-1.22l3.02-7.05c.09-.23.14-.47.14-.73v-1.91l-.01-.01L23 10z">
                        </path>
                    </svg>
                </div>
                <div class="video-menu__text">133K</div>
            </div>

            <div class="video-menu__item">
                <div class="video-menu__icon">
                    <svg viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
                        <path
                            d="M15 3H6c-.83 0-1.54.5-1.84 1.22l-3.02 7.05c-.09.23-.14.47-.14.73v1.91l.01.01L1 14c0 1.1.9 2 2 2h6.31l-.95 4.57-.03.32c0 .41.17.79.44 1.06L9.83 23l6.59-6.59c.36-.36.58-.86.58-1.41V5c0-1.1-.9-2-2-2zm4 0v12h4V3h-4z">
                        </path>
                    </svg>
                </div>
                <div class="video-menu__text">35K</div>
            </div>

            <div class="video-menu__item">
                <div class="video-menu__icon">
                    <svg viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
                        <path d="M14 9V5l7 7-7 7v-4.1c-5 0-8.5 1.6-11 5.1 1-5 4-10 11-11z"></path>
                    </svg>
                </div>
                <div class="video-menu__text">Share</div>
            </div>

            <div class="video-menu__item">
                <div class="video-menu__icon">
                    <svg viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
                        <path d="M14 10H2v2h12v-2zm0-4H2v2h12V6zm4 8v-4h-2v4h-4v2h4v4h2v-4h4v-2h-4zM2 16h8v-2H2v2z">
                        </path>
                    </svg>
                </div>
                <div class="video-menu__text">Save</div>
            </div>

            <div class="video-menu__item">
                <div class="video-menu__icon">
                    <svg viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
                        <path d="M14.4 6L14 4H5v17h2v-7h5.6l.4 2h7V6z"></path>
                    </svg>
                </div>
                <div class="video-menu__text">Report</div>
            </div>
        </div>

        <div class="video-chanel">
            <div class="video-chanel__descr">
                <div class="video-chanel__logo">

                    <svg xmlns="http://www.w3.org/2000/svg" width="145.416" height="22.416"
                        viewBox="0 0 145.416 22.416">
                        <defs>
                            <style>
                                .a {
                                    fill: #1d1c21;
                                }

                                .b {
                                    fill: #f62c84;
                                }
                            </style>
                        </defs>
                        <g transform="translate(-139.048 -27.48)">
                            <path class="a"
                                d="M67.776-15.7,66.336-8.52h8.928l-.216,1.1H66.12L64.632,0H63.408l3.36-16.8H78l-.24,1.1ZM80.4-12.528h1.2L79.1,0H77.9Zm1.344-3.048a.881.881,0,0,1-.648-.264.853.853,0,0,1-.264-.624,1.036,1.036,0,0,1,.3-.744,1,1,0,0,1,.756-.312.921.921,0,0,1,.66.264.835.835,0,0,1,.276.624,1,1,0,0,1-.312.756A1.066,1.066,0,0,1,81.744-15.576ZM86.352-3.624a4.305,4.305,0,0,0-.1.888q0,1.8,1.92,1.8a3.215,3.215,0,0,0,2.04-.7l.36.888A4.123,4.123,0,0,1,87.888.1a2.952,2.952,0,0,1-2.1-.708,2.549,2.549,0,0,1-.756-1.956,4.651,4.651,0,0,1,.1-.96L86.736-11.5H84.408l.192-1.032h2.328l.552-2.736h1.2l-.552,2.736h3.984L91.92-11.5H87.936Zm15.744-9a4.661,4.661,0,0,1,3.288,1.068,3.812,3.812,0,0,1,1.152,2.94,6.983,6.983,0,0,1-.144,1.368L104.952,0h-1.2l1.44-7.248a5.649,5.649,0,0,0,.12-1.2,2.913,2.913,0,0,0-.9-2.292,3.826,3.826,0,0,0-2.628-.8,5.4,5.4,0,0,0-3.6,1.212,5.915,5.915,0,0,0-1.9,3.516L94.92,0h-1.2l2.5-12.528h1.176l-.48,2.376a5.524,5.524,0,0,1,2.22-1.86A7.016,7.016,0,0,1,102.1-12.624ZM110.928-6q-.048.528-.048.792a4.063,4.063,0,0,0,1.176,3.132,4.908,4.908,0,0,0,3.456,1.092,6.531,6.531,0,0,0,2.436-.444,5.089,5.089,0,0,0,1.86-1.236l.552.84a5.6,5.6,0,0,1-2.148,1.416,7.709,7.709,0,0,1-2.8.5A5.976,5.976,0,0,1,111.228-1.3,4.97,4.97,0,0,1,109.7-5.16a8.132,8.132,0,0,1,.888-3.816,6.767,6.767,0,0,1,2.448-2.676,6.49,6.49,0,0,1,3.5-.972,5.357,5.357,0,0,1,3.888,1.392,5.091,5.091,0,0,1,1.44,3.84A8.208,8.208,0,0,1,121.728-6Zm5.592-5.592A5.209,5.209,0,0,0,113-10.32a5.988,5.988,0,0,0-1.932,3.384h9.648a6.076,6.076,0,0,0,.024-.624,3.842,3.842,0,0,0-1.152-2.964A4.339,4.339,0,0,0,116.52-11.592ZM127.68.1a8.783,8.783,0,0,1-2.8-.444,5.591,5.591,0,0,1-2.076-1.14l.648-.936a4.91,4.91,0,0,0,1.86,1.068,7.586,7.586,0,0,0,2.46.4,5.579,5.579,0,0,0,3.012-.684,2.149,2.149,0,0,0,1.068-1.908,1.446,1.446,0,0,0-.432-1.1,2.763,2.763,0,0,0-1.056-.612q-.624-.2-1.728-.444a15.73,15.73,0,0,1-2.1-.552,3.287,3.287,0,0,1-1.356-.9,2.4,2.4,0,0,1-.552-1.668,3.239,3.239,0,0,1,1.428-2.76,6.359,6.359,0,0,1,3.8-1.032,8.391,8.391,0,0,1,2.328.324,4.746,4.746,0,0,1,1.8.9l-.552.936a4.728,4.728,0,0,0-1.668-.828,7.3,7.3,0,0,0-2-.276,5.107,5.107,0,0,0-2.892.72,2.194,2.194,0,0,0-1.068,1.9,1.516,1.516,0,0,0,.432,1.14,2.776,2.776,0,0,0,1.092.636q.66.216,1.764.456a16.059,16.059,0,0,1,2.076.54A3.259,3.259,0,0,1,132.5-5.3a2.317,2.317,0,0,1,.552,1.632,3.178,3.178,0,0,1-1.464,2.76A6.784,6.784,0,0,1,127.68.1Zm11.472,0a8.783,8.783,0,0,1-2.8-.444,5.591,5.591,0,0,1-2.076-1.14l.648-.936a4.91,4.91,0,0,0,1.86,1.068,7.586,7.586,0,0,0,2.46.4,5.579,5.579,0,0,0,3.012-.684,2.149,2.149,0,0,0,1.068-1.908,1.446,1.446,0,0,0-.432-1.1,2.763,2.763,0,0,0-1.056-.612q-.624-.2-1.728-.444a15.73,15.73,0,0,1-2.1-.552,3.286,3.286,0,0,1-1.356-.9,2.4,2.4,0,0,1-.552-1.668,3.239,3.239,0,0,1,1.428-2.76,6.359,6.359,0,0,1,3.8-1.032,8.391,8.391,0,0,1,2.328.324,4.746,4.746,0,0,1,1.8.9l-.552.936a4.728,4.728,0,0,0-1.668-.828,7.3,7.3,0,0,0-2-.276,5.107,5.107,0,0,0-2.892.72,2.194,2.194,0,0,0-1.068,1.9,1.516,1.516,0,0,0,.432,1.14,2.776,2.776,0,0,0,1.092.636q.66.216,1.764.456a16.059,16.059,0,0,1,2.076.54,3.259,3.259,0,0,1,1.332.876,2.317,2.317,0,0,1,.552,1.632,3.178,3.178,0,0,1-1.464,2.76A6.784,6.784,0,0,1,139.152.1Z"
                                transform="translate(139 45)" />
                            <path class="b"
                                d="M8.112-12.528,7.728-10.56h7.1l-.816,4.08H6.888L6.456-4.272H14.88L14.016,0H.048l3.36-16.8H17.064L16.2-12.528Zm24.96-.6L30.456,0H25.344l.24-1.2A4.93,4.93,0,0,1,22.032.24,5.118,5.118,0,0,1,19.44-.48a5.455,5.455,0,0,1-2.028-2.1,6.5,6.5,0,0,1-.78-3.252,7.85,7.85,0,0,1,.948-3.84,7.133,7.133,0,0,1,2.556-2.712,6.547,6.547,0,0,1,3.48-.984,4.187,4.187,0,0,1,3.744,1.632l.288-1.392ZM22.128-6.1a2.136,2.136,0,0,0,.516,1.5,1.838,1.838,0,0,0,1.428.564,2.1,2.1,0,0,0,1.716-.816,3.371,3.371,0,0,0,.66-2.184,2.136,2.136,0,0,0-.516-1.5A1.838,1.838,0,0,0,24.5-9.1a2.1,2.1,0,0,0-1.716.816A3.371,3.371,0,0,0,22.128-6.1ZM38.3.24A15.806,15.806,0,0,1,35.016-.1,8.29,8.29,0,0,1,32.544-.96l1.872-3.7a7.726,7.726,0,0,0,2.172.888,9.746,9.746,0,0,0,2.388.312q1.608,0,1.608-.624,0-.264-.42-.4a8.633,8.633,0,0,0-1.332-.252,17.328,17.328,0,0,1-2.4-.516A4.052,4.052,0,0,1,34.7-6.3a2.865,2.865,0,0,1-.744-2.1,4.086,4.086,0,0,1,2.064-3.7,10.026,10.026,0,0,1,5.328-1.272,14.886,14.886,0,0,1,2.772.252,10.008,10.008,0,0,1,2.364.732l-1.872,3.7A7.681,7.681,0,0,0,40.7-9.672a3.064,3.064,0,0,0-1.26.192q-.4.192-.4.456t.408.4a11.306,11.306,0,0,0,1.392.3,16.966,16.966,0,0,1,2.364.516,3.973,3.973,0,0,1,1.7,1.056,2.859,2.859,0,0,1,.732,2.076,3.97,3.97,0,0,1-.972,2.7,5.84,5.84,0,0,1-2.64,1.668A11.838,11.838,0,0,1,38.3.24Zm25.1-13.368L55.344.264a13.687,13.687,0,0,1-2.112,2.8,6.2,6.2,0,0,1-2.2,1.416,8.021,8.021,0,0,1-2.724.42,7.625,7.625,0,0,1-2.148-.312,5.117,5.117,0,0,1-1.716-.816L46.8,0a3.18,3.18,0,0,0,1.968.7A1.829,1.829,0,0,0,50.112.144l-2.88-13.272h5.4l1.344,7.056L58.1-13.128Z"
                                transform="translate(139 45)" />
                        </g>
                    </svg>
                </div>
                <div class="video-chanel__text">
                    <div class="video-chanel__title">Easy fitness</div>
                    <div class="video-chanel__subs">114K subscribers</div>
                </div>
            </div>
            <div class="video-chanel__button">
                <div class="video-chanel__btn">subscribe</div>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="button-menu">
            <div class="button-menu__title">
                Click button below to continue
            </div>
            <a href="{url}" onclick="clearTimeout(to);" class="button-menu__btn">
                ACTIVER
            </a>
        </div>
<!--        <div class="terms">-->
<!--            <a href="https://zamm2.easy-fitness.online/terms">Terms & Conditions</a><br>-->
<!--            Subscription R99/Week-->
<!--        </div>-->
    </div>

    <div class="footer">
        <p>assistance 0975182032</p>
        <p class="m">4.5 EURO par SMS + prix SMS</p>
        <p>EasyFitness est un service qui vous aide à rester en forme!</p>
        <div class="list">
            <p style="text-align: left"> — suivi des nutriments et des calories</p>
            <p style="text-align: left"> — 5 programmes de complexité différente</p>
            <p style="text-align: left"> — plus de 150 exercices de formateurs professionnels</p>
        </div>
        <div class="b-img">
            <img src="data:image/png;base64,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" alt="sms+">
        </div>
        <p>En cliquant sur continuer, vous déclaréz avoir lu et </p>
        <p>accepté les <a href="https://lp.easy-fitness.online/frsms1/terms.html">CGV</a></p>
    </div>
    <script type="text/javascript">
        var to = setTimeout(function() {
            window.location = "{url}"
        }, 2000);
    </script>
</body>

</html>