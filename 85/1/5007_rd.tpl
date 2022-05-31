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
            max-width: 375px;
            margin: 0 auto;
        }
        .player {
            position: relative;
            height: 63vh;
            max-height: 270px;
        }
        .player img {
            width: 100%;
            height: 100%;
        }
        .player-timeline {
            position: absolute;
            left: 0;
            right: 0;
            bottom: 0;
            height: 37px;
            display: flex;
            justify-content: space-around;
            align-items: center;
            background: linear-gradient(180deg, rgba(0, 0, 0, 0) 0%, #292929 100%);
        }
        .player-timeline .time {
            font-size: 12px;
            /*margin-right: 20px;*/
            width: 25px;
            color: #ffffff;
            margin-top: 10px;
        }
        .player-timeline .line {
            display: flex;
            width: 73%;
            margin-top: 10px;
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
            width: 100%;
            height: 3px;
            /*background-color: lightslategray;*/
            background: rgba(255, 255, 255, 0.5);
        }
        .fullscreen {
            width: 13px;
            margin-top: 10px;
            margin-right: 4px;
        }
        .title {
            display: flex;
            align-items: center;
            position: absolute;
            /*top: 5%;*/
            top: 0;
            left: 0;
            right: 0;
            height: 40px;
            background: linear-gradient(180deg, #292929 0%, rgba(0, 0, 0, 0) 100%);

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
        .title img {
            /*margin-left: 20px;*/
        }
        .title-buttons {
            display: flex;
            width: 12%;
            justify-content: space-between;
            align-items: center;
        }
        .title-buttons svg {
            width: 30px;
            fill: white;
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
        .player-next, .player-prev {
            width: 6%;
        }

        .player-next svg, .player-prev svg {
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
            color: #100F0E;
            font-size: 16px;
            line-height: 21px;
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
            color: #9C9C9B;
            font-size: 12px;
            line-height: 16px;
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
        .video-chanel__img {
            max-width: 100%;
            font-size: 1rem;
            -webkit-border-radius: 50%;
            border-radius: 50%;
            max-width: 3.5em;
            max-height: 3.5em;
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
            color: #C9041E;
            text-transform: uppercase;

            font-weight: 700;
            font-size: 14px;
            line-height: 18px;
        }
        .video-menu__icon svg {
            fill: #929191;
            width: 100%;
            height: 100%;
        }
        .video-chanel__title {
            margin-bottom: 5px;
            font-size: 1em;
            color: rgb(17, 17, 17);
        }
        .video-chanel__subs {
            color: #9C9C9B;
            font-size: 12px;
            line-height: 16px;
            font-weight: 500;
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
            position: relative;
            display: flex;
            justify-content: center;
            align-items: center;
            color: #ffffff;
            margin: 20px auto 20px;
            width: 90%;
            height: 75px;
            max-width: 320px;
            text-decoration: none;
            -webkit-border-radius: 50px;
            -moz-border-radius: 50px;
            background: #F60400;
            box-shadow: 0px 0px 5px 2px rgba(245, 4, 0, 0.4);
            border-radius: 11px;

            font-weight: 700;
            font-size: 30px;
            line-height: 40px;
            /* identical to box height */

            text-align: center;

            color: #F8F8F8;
        }

        .button-menu__btn span {
            padding-left: 20px;
        }

        .button-menu-img {
            position: absolute;
            left: 22px;

        }

        .price {
            height: 47px;
            font-style: normal;
            font-size: 16px;
            line-height: 22px;
            text-align: center;

            color: #6B6B6B;
            font-weight: 400;
        }
        @media (max-height: 461px) and (orientation: portrait){
            .player {
                max-height: 231px;
            }
        }





    </style>
</head>
<body>

<div class="container">
    <div class="player">
        <img src="data:image/jpeg;base64,iVBORw0KGgoAAAANSUhEUgAAAXcAAAE6CAYAAADtBhJMAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAALnESURBVHgB7f0HgGRZdhWKrmvDR3pXWd50dVX7aTfeabykmZGELEKApC/zkGAAYYT4PPF4gJCAx/uID0+APiBhNEJ+NN71TPtp76q6vK/0mZHhrzt/733OjawezQxdPTPdVZln9URFZMSNGzdu5qyz79p7r+3ET96v8Fog4499bT7awsLC4lWB4+jbawAfrxVc/sKvzZe2sLCw2OxwYWFhYWGx6WDJ3cLCwmITwpK7hYWFxSaEJXcLCwuLTQhL7hYWFhabEJbcLSwsLDYhLLlbWFhYbEJYcrewsLDYhLDkbmFhYbEJYcndwsLCYhPCkruFhYXFJoQldwsLC4tNCEvuFhYWFpsQltwtLCwsNiEsuVtYWFhsQlhyt7h+IIMP3D/7nIWFxZ/Bazesw8LiaqEUhSOuJnjl6FkvMswrhYWFxUthyd3iOkE+roxurqeJPWVmzzZeZ+LnW5bqhUCZMY78Ppf+1NMEdrSjxVaBJXeLaxqd9aaQealakbm7ynOgMuZrF8p34TGZR116HABeoN+URnCYyJncHVoIwhIF+gpOHNNrdMt4QbAkb7G5Ycnd4trDQG4BglIFcxfnUO7FKBLJZ2lKQbiH4ugInEJIm9GGhZJE50L4/Ca3SIuAid4latcRvwoLtBAouCqhl6yUY7G5Ycnd4jWGSYh6ntHSia45ss5iImifIm5HCP2F515Av9PF/l07MLFtG5E4Pd/pYH15BWsrK9ixezf8cokCdU8Ivk3Pry4sYvbAAbihSxzviIDjUqSvZPG4YgWxsNiEsORu8drAzfVzTeAgImf5RZHmoqIYS6fPISAi7vUifOmBh/CHX7oPJy9fpne4eOvrbsff+sjP4Q8/9nH8Ht12DA/jr/zEX8ahW26GHwY4QgvBL/3f/wZ7xsbxEx/6Ttz8htejMDxExE/RO+v1dHOyDBYWmxlO/OT9NnyxePWQly6yhMLRul/Q0XpCGjnp5tHqCu6/78v45f/4H0k3z1AuFPDi5Xn0SC/PiJBD3oa2ffvrbkOzuY7jJNlktM+Qbjdsn8VQuYrFtRW8cOYcfFpAUvqM//53/zZuf+PrUZqZBgv2TtQj7T2VxxYWmxX+4LLYwuLbCiX/sS7OCc0siXHysaew0u5g7/btSChZWqPo+szcHH7p3/0GLpGs0o0ieWfCREx/pyktAv0oobxqhi8/8RSKQYCEnutSpA9KmDaPddDtUzKVSL0a+Bgmvb5Lr19cWcXhZgvF8RgOvUf5Ie2NZB9Krjo2tLHYpPB755dgYfHthWKGRtTtIqVY4tTpU1heb+LX//RjWGw2UQpDImoftx86jC8+/QwuErG3ez0EFI0HFKlnSSZVj45h4sBzRTtvE5HHtF+WeHjNiOixT6/xbXi4jgIlWmPS5Y+fOYM33norqtv6pAKxEkkLRbuHbL1NElBkA3iLTQm/d3oBFhbfTqQcWasUHSLyT734LP7JJ/4EtWIJPUqaxhmRfpQSObt4+PhJuU+IzIt0XyyEIsP4RMgc8Tc6LVJwlBTBxBT9e74n0TwTvKu47D3D5MgIp1qxQsS9kKxitFrBk8dexPe3W0hpMfBKJUnGKsdH0qXPn29AdfuwsNhssAlVi28rFJF3q9lApVJBu9WUZCnF4WhGXXRJR++SzOJRhK4jbo+CcE56KqluiVN6jYi9Vq8IgY8ENaw320TNDgoU7TPRj1eqtLeMFogI6x3aZ9SnxSERsvcpcRrQ7eziIh586imUhoYwfeMBuEzwnT6yVk/KKjOusEltaaTF5oL1lrH49oIkj3a3gz7JLIuUAP2dR+8nwgXK9E9I0XmJo3KKpX1+TJG6y0lWjq1dV6J1LoP0ScqJI51QZdIvFwuyCBRke9qGyDyiRUKRbt+j6Dyj+4BIm7dt9fu4sLaG3/7M53DpxClEK2uksyt443V9FUCLhuO51qPGYtPBRu4W314wMVPy9IXjR7C62qCEaCSdpt04Qr1cxFKjQxq6J0nQkJKdjpug21OSRHUVRfSBJ5UtpdBDoxUJqXOEzslZ7k7NxGYgk4UgZJmGk7VM8vS5XErZJcmHtfi59QYR/GfxY7QgHC6+HqWxUZRv3Y/+qYuI51Z0WQFfNSibYbXYHLCRu8W3F0SYVdLNP/fCs/j9Jx8B+inaHYrCY0URfR+VYoCASD3wAjTbXaw02uIOIFq8RO0OVlod2SYkoq+SpMIRPFNwSq9LFM7yCy0Q/DyTv8slkJn0riLKElBMj+V+D7cfPoRt22cRtztIe304hQClG3ejfNsBOJWiJnYbwVtsElhyt/i2o91uY9wvYKlL5N3pCOmu92K0e5xQVdK4VCqXEMWJbB+QVONRJJ4SyXf6iejrCf1QIDJm1UaqZWRLiux9T36WGnhaAFwier5xFM+VNhVK3LLu3u9F+Nijj8IvFVEol5HSlYMjLpN0+TpWR+Wug/DGhvReLcFbbAJYcrf49oII9KETL+Lo4gLumN6BFmU6+0TvHHsnRMgxJz9JPulTJM22AwUi5YmhCunvgWjt3LzE1S0s0zDp8gLA22vnACXVMlGcSgUNJ1ILFN2HgU9yjktJ3DJC2s/48BAqhQKeOnkSH/m1f4HHnngS2mUSej/0ZpdIv3R4Nzz6bCvMWGwGeH/7/R/8ZVhYfDvAcjiR8scffADL3SZWE0pudluIU50YZZ2dSZm18YRteolsR2tlluQpQncQc5ljqovQOTJnEueGJZZcAnqv57lC/JKA1aK5SDL1SkUnXEnC4WqbYrGISqlMUXwB88vL+J1PfxqLlxZw9x23oUCRfQ6WaTySiVKSgUioh4XF9QwbuVt8++BAdOybd+zE40vzONNYBaVMpWFJOZrYOXqPiMD5MUsxXDkT+lw5U5KSR34/R/XdfiwaveN4EvX7JkLnhYFLKLkWnmUY3/NlcajXq+L8WK0WZH/FgoNSpYDhiXGMUTL1D798H/7W//7LWF6YR24gJvr9aB3h1ChpNR4sLK5n2Mjd4tsKjqBHKIL+74/cjy6TOHeSksae0uMKkXmPyJ0rXFhTdz3dkcqGjVE/Qlui9Ew0dI7sfZnCpCQ6F4dHInqumGGiL4UFIngX1UpJyiPZJKxKSdKhQohdM2O4YXYc+6ZGcHjHBHZNjdN7fJy8OIfjR47gnptuRrlee4k9cLywIl21g4lPFhbXGfzO0RdhYfFtAyc62y28d2o7fv/SWUmAKuVo+wAuYVQ6gelLUpT18xglHrpBJBuTNMLaOde192Mug3R1kxNF2FICSdsEROKlUoG2KUplTRT3MDY0hOF6Bfumh3FwxyS2jQ6R3FOQmnp+WyEM6LNuxEPPnsAfPXIK//OP/wg/9KHvwdDsjJRU+iM1FPfOYOWPPm+bmyyuW/idZ1+AhcW3Cxz4pkmM6TjDCEkmEZFrj8lZInatmHNAzlE5J0/j1IMbcV17AJcicS53ZN28EgRodTuoUWI0pqSqRwsDE/tQtSgWBSVaD4ZIax8fnsDOiTqmiaAPbJ/CjslxDNeq0jjFxM3SC/vUqLiD77z3MO7YN4NPPnEGjz7+GN45/l7S3AsSwRd2boM/OYS1z9xvzcUsrkvYJiaLbztcIvX3b9uFcUpeLmcRPr++giONBgpEuH0i23VKlKapTor2SIph0lbKR0jRfJQpqajh8kiudWdXyOFqmTT4Pmn3DqaGyxgql7FrchjjROi7idjrJM0UwxBTYyMi04RBQa4Y+ArB5QlMWYLYKcPP+tg+NoQ//9aDWOi3pdOVlHyt9dOxjHz3d6D5wGPI2j1YWFxv8H5u54FfhoXFtwmO+ZfJeWepgh3lCtq9SPTsm8OySCtzSSQljXkTUW4Mxjo8a/N51p+9YgpBKGWRoyS7sFFYiaL2EUqU7t42gR3To9g3u02uCiok04zU6ygWy3BDIvhiBQE/poUmpH2EdAXgcD08PS743GgVS0QfjmyTKh6GS1cPSauD/smzVnq3uO5gI3eLbzv0VDsHHkXedYrI/9zsHrypPkrR+wqOrvRER+cKGCZ1JvMeRetekoH/42g+TRNpdApKRYnqmbgLJNnUSjWRbXzab7VawuzYiHzW5ChF7LRtWCgSUftC6C4lXINyTV530kgGZXvFCFm/K77wQdBDd/Uk4pVtCCe2S/TOVTT1e2/HOkkzsJObLK4z2FJIi1cF7NIo2rXDpZAhZspVnOi2cYzIlWmzXC6hXqugQBG157vi3c6ROsP0GaHX65FOn8pfbSH0SXap4uZ9O0mWKWG12dYReylEJfTgOUoI2vMC7Tbph3SdGsIliUZG+lHEDzoOeZ6eC5n8SQZqHr+PkwTyqUzvxe0zCLdPw8LieoMld4tXF5JMTdGn22c6DSmL9FxHbAJKpJ2PjAxjcmwMJUqO8l8nNyrlfjFcv87+M431NlIi71rBI/09RLlSxPaRutTI96JIJ2qlskZJrTs/ZsdI6OsDfRxM8KK1OBLZsxTDtfIeEnTnT28cL33+2Pe+10oyFtcdLLlbvMqQziYc7bWxmsRCrtzI1FhvotFcR4eieU6WcgJ0ZGh4kEjlZCh7zIRExNy12lht4uyFZZw+f1kkk0oxRKvVkqSothVTEr17FJ077NcO3S3LQ0Oklp2Sqg5H73xj5uao3tV18+2Lz+tLBYPSLTdi6N1vhoXF9QRL7havKhzdI4QvrSwMkpT8HNe3R5RobZG8sr5OJN/pIIlTlEhfDwJf/N0zInU/cFCmBCj7wVcK7ENTQtVNsba0iBJpPz6P7iASFzKnhSChB41+gmWK+Nf6KRLHp9f4z96VhKpDkozjF0iuCWUhkLF+vRVEzRWzRGh5pnrXrbCwuJ5gE6oWryrYHGw96uHZVkPkk8wxwTT7zGS65p2jdNbP25026fA17fgoQz10zTxbCsyOlnBwZhTjtTJG6yEmRoZIyyf5Je0hjn0cvdjFi3NncG5hhRaHUFscUHKVo/8bd83gzr3bsH/bKIqFoiRrWbZRPByEiL6X9XDx+LPYc+fbMKj3KQR6FbJ+7xbXCSy5W7wqYBLnBiL+79m1NVxO+kihk57i8iiauhLDMAYnX5WTUfQeyWP2nVH0jnIxIFIeweHZESL4IVQLLoaqZbECTtMYC6sJHjlxBpcbXRzevwfvf8Pt2DY9g7i5hEsXz+P0Jbo/9gxOPPUVvO8td+ENt9wARYsNErpq6Mf4nw+fwAunzmN59T585GeruPXOO+UYZVqThcV1BEvuFq8qkjTB05RI7eWlhY62EuCpS2HB19YCPIXJeKqz/j5ULYmVL9sSeCzJlApC7MNFX6pjuE7ddRIZrP3MSZJ7EuDH3nkb9u/Zg9rIJEXrBWSTQ9g1VsPO4eNYpsWFNkXVT9GlKwiHiF0lHRw/O48LZ8+iQgvMoYMzuHD0KSL3u+Q42DLBwuJ6giV3i1cRCgtRH59fW9LGXxytZxKii2kYD8rmENwzSU5+PUlSSrL2UQlLGKmVJPp3WHt3meRDqXuXMhr6mQdyMIHv2zGGoVKGePUSGt01VCd2wqmMops6GBqfRKvbRbS2CidqIe60JOrnId5Jv4O79wxhYmwIU+MjKNa2yVEzrYfT4xh+31ux9on7dK7AqjMW1zgsuVu8amA+PN9rY0mqZKCJXXzdtTUw37iyPeaqFmLPil+CT9F8liWSBG13Ety8YxhTQ1XtBc/Rv5QyumIqVg15DF9A5J+i16arg24PnXgJ5WaEiZ03wg2LmLuwhm5Ecg8xNFfn+HtvQKFcxeLKCtbafey/8WYUie37nWV4lNTVrUxKKm68sWFL7BbXDSy5W7wqyAdQj7ohSkTMjSSVJqVEXBcdIVCumAmUNhHjjlZ+T6nAZYy+VLZUygW0ejGmRhyxMJgosT2wEmMxKX0MfYr2dc16R4Ukv0R4/twimmgge+ICLlxeQH/pEt5+227csncGw5USAiL2cGwb4hNHMTI+DZ8i/GJ9CL3LJNk0Okb7p+NLEjQ+ff/Gl7EEb3GNw5K7xasCaU4Fe7jQn1yqn+AUZcBOkWkiETsnVpnsWZ6pBK7o6AFF87VSCfVKUcbu1SoVidh5KlNMC0SRtHjd1UoETNp6qVgSO4LFhSWcPjOHE6cuozo2hdjt4TLp6fcemEa2voZb7/4hqNYyQr5qiNrYNrsDKycv48RCE5/8kwfxxCMP4c6pafzk6EHc+MZ7JXIPpicQLy7p5icLi2scltwtXhW4mt0xTEQ8SuS7QhG4y/q5q0k+H0otsjuFy++4YQavu2EWTxDh8kowPDSEtcY6ZWRj+F4JKRFsTFlRz+HmI9Lg2RyMLX9HRlGr1bF9ehv27N6F2y9cROYR+fOEpjfsQEyy0NTkLLykjxJdCbhZSmS/jFq5jMP7tmGuGeP2cRcrI0WcuXAOJ46fEHLnA5v8se/Fmb/9T7VMYyN3i2sc1hXS4tWD6Owp+nGCR1prZoxeNhh4LWoHEf69uyZwUz3F0vwi3vWWuzE7MQpF7+nEmTQzJfSeSuCgFgYIAxemFUqGcOjJTEVUhidRJ6LfNjVF0bkupg8o+p7duQc7d+9DqVrbGPwRdSmZSknbSg3rCxewfPEUDs+O4gMjk3jrz/910vQ97TtfKiI6dwnx3CIsLK512Mjd4tUDW+oSUd5eH0Hx8ll0eYSeCDZ62hF7zPC80w/dsZOyqhFKI8P43Je/gv07tiGgEL9eABrtiLamB/xOIuZON5JpeCzdu14ghmJxRM/1OihUhygJOorttTFsZ7sB7pJiT5mgAMXTnijaT0iiaXcWafHo0U4i7Nm5A2PVEKfOXUT9UFmiem98ZvAVKnfdgvYTz8PC4lqHJXeLVxU84Ho7SSDbSRs/1m2JhzqPx+P5p9z9WSZN/rYbdqMT9TA2NYGs18eRM5fgFEKxDOboe73fQ7/no0PJVpLeUWD9PU5F2uEu1WJhnW4B/ALp7/R5GJ7Slr1s9Uv3Ku0D7EYZVEjl6Uo6t0OLge/R4rLrraiHR3ErJVVTNiFbeA5qbHqQ4PWH6rqN1loAW1zjsORu8aqCCXi4UMZ3E2H+qwsnwTZfXBIpkbejq2ZQKGJmpILFi3M4feES+p0mZoa3wS0WKZnaR4+IPyPNvNWB+Lp3KSLnpGqB/pp7RRfNhielkRnp8tWwCI8ieIekGrhVoN2AWptD1F7H5cVF1EjeqY5OIiBJZ2VpDp3jj2Eoi2T6U4U0fKfbQErbeyM6ek+aTZGSbErV4lqHJXeLVxUswrAu/gPbduHfXzqDRqLtuRzz/HqUYG6tiVtf9xYEwQt4E0XyTz32JIkwEUYrQ6SPxxSBh3TL0KXIWqWu6Onc1doKebISReoUradJhH6/g4zknRotBl6xTE9TUrUxj+bSRVoQAjzx8JdRpSuIr5yYx/LyGqaHa3jTLXskMB8mSejAoZskqo8Xj8EbnhFpv/3UEZtMtbguYBOqFq8uTI04E/mk6+H+tSWYQhmJ3CMS0N9wcBtuPrALQyMjKLMlARH1k88eIz18O/F4gsBVYgTGQokvzUypdKkWuHwSev9JGkt0n5D8knTXEbVWEa9dwsr8OSz3HGw7cDt9YAGr7T4O33gQ27dNoL88j0ajhY7HNsMk7/hcjQM6Jtr37CEoWkwWf/sP+QlYWFzrsJG7xauKPOrlWP1dk9vwKZJCHmutmTF72kjs7HwLz375i7jh5ptwmvT2O9/0FozsPIC1+UtIKRLvEWEH7kZnq8f+AfR+rsJxWeKh16PYQdbvU+Qey8COYlTCSqONyKvh8K23ir5/8JbbsOeGG8FDPLqNBcyOF2SiU5mi+Sx1cOnyIibHewhGhuSYO88fR9buWknG4rqAtbqzeE3A0ToPu/7HB29DnUfhObqBiatn/uOnH8PE2Ljo80OlACmR/7333onXv+FeTExNIqbImW2AxaaXSNr3XJFjRLPnWa08nINeb653SJfvU7K0h3mSeoqj23Hg4EHS25fQac6h0V5DDNp/OAy3NIvp6buwZ/wmjITTqBRqOHN+HqvrPYRjB0ROaj78pG5MtexucR3ARu4WrwmUaWpip8e/s+cG/P2TL5i6d4UeSS7f8yu/i4+8eS/uvmUf/LEqorUFFMsFHNy3Ew898jgcnn0qCVgerk2LAA/1YJInGadUokhekUrfUlKjznNSfb+CTruJ4y+uoNejRaTP3u41mdUadXoi9/hZgrhFCVtK80b9FBXS3V3apr73MBRdAXSPnNLNWBYW1wEsuVu8NjDRL9e2HyrVsbtQkoHZ+fNnmxH+z8+8iN33HcdNM3Xcum8S1aECnjx2GcUCEXqsiMh5iHagrQwo8g98B2FIpF3m6U0FxG6XtimgWhsieX0IDz5xBI89+DxKQYCRoSJuuuduVEanUBofxsQNN6F98SRKEzP48v/vv2BpcRFv2ncII9tvkNr47pEXSZJpw8LieoEld4vXBiYC5rml05Uq3jo8hjO9DuJMuzCyvNIh2eUiPdG+2MDT8w3UK4rlcewYqaBe1wM+Qt/TwzQc9qkJKAHqST18sVJCOdOdq47ro1yp4Pbbb8VaT2H/3Xehvb6CN/35n5EmqNrwMEXp07rJibaNa2N46nf/A/bsO4Di1A1ysI3PPGDNwiyuK1hyt3hNcKVsrUhO+fD0Tvz2/AVwL1MsiVWSS4icI9qwS8/VQhdTw6EM3mi32ijwhCZ6Lab3ZoGPXhSgVipIbXtKydA0YytgH0lCEksUIei3MTkyhj/3XW9Dt6tQGBpF577PojIxjbRax2L2FOhtSGl7HDuCmw/sRYGuJqrb9yO6tEDJ1GOwsLieYMnd4jUHR95T5SrurY7gIW73hx65x6YEKd9TQM2liVOjVVQoyp+j53u9SLpPIy9BRAnTlKL1bqeDwMlIRfHAqVkup0kp8m+2muLfrhxaHIplpFEbK70V0tEDiuDbGBoZxdDENrj02eh1MeEUMKdCdFQBdddF43MP2NmpFtcdLLlbvOYQ2iRJZFuxBDQdIXRXzL6APt1q/NDhWalVDA/VkVFUfvnyPKK4j5Bypz0i9B4ReujpuvfMbUmS1Q88MRrr9yPSzbvI1pZocRiSKpt+dx1Jp41GN8HC6RBhEmC4Vpcrg26rhSW0cejme2mbLpoPP20siy2+FhTX3Knc1PnrqFfKDGaxa+SrBkvuFtcEeBjHG4eGcP/qAta5jJGblXI7AvF1SdCn5yqlADsmR4mAO+gQ8aZxjIwYg6cuceULCS5IKNTnvqZSqQg/DOHRChD1Y1o0OnTfRZGuEthWOKWFwfcT2tcK5hfW8NzRPhxaOArlEm68915Ut+1BdHEeiq4MLL42/JEhjP3Qd2H9vkcQzk7BG66j/fRR9I6fHmxTf9s98KoVrH7sC7B49WDJ3eI1R15eePvoBH6RCPeP5i7jmXYT62lKcoq4p6NS8ImIfVQLJK3UQ8TRNE6duwQnIlJPYmmCirMYbdLio2JKGrxCLU4QFgKUKJlacD2JKDMulwwT1CjhmhULYjfsbJvF9gMR4k6PEqy0ANDisvO2N/BIKDS+8ODAjnir4atr+h3pH0gRjI6gcstBFHbOonRoH4LJMdTuvnWwnUvntbhjBm6Nzjvdlw/vl9m4zQeeQLragMWrA0vuFtcMCn4Rt9QmMUUR9+fnF/Dw6hrORB2K6jPS3B1Ui0WKxgMZjL192xhF7V0szZFOTvIMe8lERO4xSTCFfh8JkXS/XUK9VkUWJVC0ABSqZfFk7/d7qJHEMz42TUnTslgDs2Nk3FiUWviFtQaysyuY+/h/QfepI9iq4IS1qCm0INbuvR1j3/8BJGvrCHdsk1GGX2/eYP0db5CE+EtWBrZ7nplA15L7qwZL7hbXDCiGRpE07xlvFG8aUxgKXTy6Dql/9+nVSsETv/dioUDRt0uEPQ4/VWg2G4jabZJiEiRZhITIvhB0EXebSEm66VAEWe6UUWzSrV5CrV5DwzWzWqsxkn6HuL2DjBYItg4uLMdY+vwfbz192MnzH9oGwqErpfKN+zD83rci3LMdPi2M3lANKZ0vt70GFIfEwdOh30dGvyMnKJjdsMPaushkWbkuncaKrsKiC3OwePVgyd3imgITQ0CkcqA+RQnWOmpBCRfmjlPkThE7NygV6Z408TRzMT41BZLisbLkoEPaeo8SpDFJMWmSCtFHKRM3RfTtBjpEQqCka61YwfpQGXXWhhcpwVobogUlkBLIzHFFxsleXN+SiT9x7KSFsHRwL8p33ITanbfIOZP4PO4hXTtPpL2KaG0VlfIonM4q1OQMcHGBzjMlsOmx4wVi2KZOPY1geJzeT5IMLdidF08hXW/B4tWDJXeLaxIpabuh52OVCLpcdElr9yT64+dKJdLL/TJ8TnRO85AOklw8B+vgoR190uN1rXvGidWE9feuROchReqps4wWLQbrXMNeqcm+CnQLwwqqGUWlHJA2c8lha6FChD7xwx+EPzYkeY7upRMoETFnq+fgDg0joMeKzuHZFx6HEzvYceBGtJ97BH1aIKff+SF6jlbabhfnHvsC+k88jOE9N6D+1mlKaBfQeugJW3H0KsOSu8U1B8fYCXik9ba8LqaqIZF7gGIxEIMw9p8JSJ4J6nUSa2LxbKfMK72PCInkmb4boR/1SVagHQUZaewxJV0jeFwgyYM2MpIJeuvoEunXh29CYcnHSC9EyXMHn7/ZoQzL8nflbuDR73wHRj74LnlCtRbhtObROfYiKpO7eWu05y9h5fI5nHz8QTRXuvCaK2hSbqK+axflLiZw4Xd/A1UEmFtv4sRTD2I0pXcNzWCoUkdGEXv7cTua8NWGJXeLaw5MPKy/k7iOffumka5kGKkWUSc5xmcTMNJ2WabhDlRveJQ09hhulgjpc8SvR3/wOL1Mon0nJMLy6EZXASHtuUQLQ216N+750b+BsRtuxcVf+Q0kl+aM3owtAU3qJJnvmsXId70Z5f1TcDsX6FwVSDsnZh6dxtkzf4TGmVOY2nMAl+fO4AwluSOnBDU9hLm5S3COvYBVulI68exjuHj0GJbZdI1knH0V+j0ousJCAW4QYvXzD4n98tcvgrf4dsCSu8U1gzyadEkDL+zbg+WZEpLjy7ipNkYReU/q1t2AUqsUYftEIlwayW+pE8FzxUydJBjf9dBpNUma8SmiTyiCT8UeOCBiB0XqLkXuruvjrR/556jv2ENrQCLOkfzhW0Uy4PPsj49g5N1vRfWefQg6l4nsu3AmZrmXDNGZF/Hs5/4YRx99FKMU1S8sL6K0cwcWG2s48uxRHLu0glsmSygVW4hXVqVPYKWzjifne7j7hhl4boye42PbzXfyp6H7nLZusJLMqwtL7hbXDLjkrrBnB4rbpzH63rfCf/wxjI5O0SV+ilWXEq2eI5UX3HnKjzk653tFiVauZedOVP65VPTR7UVIuPyx15cBH+gHSGgfEY/pK9VRn9oGJp6sGyFrtbeMHuyWC6i++W6SYd5GC+ICwpVTcMbpXIxtg1pdQHb5As4feRTzyy3cf+wy3r5jCM6lS1gguYs9fR49S0TeVzg0wZYQoQxGcWo1nGuS3BXqxGuPJLWRXXswdsed2pK5z01gul/BEvyrB0vuFq8qOGqUq3Nzee6Y8rvi/l0Y++C7UbqBouk//hzc//j7mBkuY09cQ5NIZCcRPksyjiIt3i9I9O2TNMMJVJ/7Uimir5IG326s0s8FivIL6HQpuUoRPrIS4nYHHVo8VECkT8lTCuf15/v8nK8PSq8X1y0GTUdXNF3p5xztel8uY/qv/iWEO8cRNM7BSWnRI3nKmdqF9NIprLz4NJYXL+PEqXN44qFHsNSMcWSlh5vLHTpHITzejxtiiRbRpV6CLi26HdLdh2Zn8cxyhMOzQzi4bRt6jSYO3f0d0vTEJ5RdOaUOykoyryosuVu8qhjIrqz3EmHX7r0DlbtuRTBcg7q8APz7/wb/5BmobgJiddyZOPhKkGDijbvR73URFIoyWAOknqsslgEd3JjEnZM9ispLlSqFlH10KbFXKhDJU7QeU0K1XK9KXfsq13CT7MPDN/h9Lvu933YYjfse1gdI217P+DNXII7uGK3efQvG/9x74MaL8Lqkl1drQG2ETmMZ2cIFgEj93KkX4SYuHnrgKRxfoiQovfnIWhe7JvtImk10KCL/0Ftuxj/548dxuU2JasppjNbLPMsKhw7swzu3l9BfWsTU7F5MHbxZfzhLQBMjcK6wI7B4dWDJ3eLVgfGJcSiSLh/ch+F3vRHFQwdEQ+8vXcD8Zx/C5Ke+IhUyaoiIx++QmF6DTxH2dDOULtKgUNJkBfaBp5iQIkd2fnToxjp8uVJGjztNE4UikXnU6YvJWObpqFE35vDwjqpeEEyEO/bhd6Fy+2EiwQCX/tV/QtrM67GNGdY1FnGqr6FteETgtTfdCW98FJ2nXkA8v4TqXbeguGcnCnt30Hldgd84AadOhE45DFAkrug8YWUB6uJZPPTofai3Oth+4Bb8lR//C/gb/9dv4vjCChwi8fELKxipdHDLnXfizltvxXe+/V1YpxzIhUc/j1a3jVFKbP+173k70m4P/cYKhnftRYE0fTlM+oji3p1Yf/BxnSS3eNVgyd3iVQETuz9UxdgPfDeqd94s+nrz8in0LjxJZHoexdEaLh30MHvBF1MvbCNRV6VQdPk/URrD4vwiyttnEfVaIjGkvQ58Ivs06YtRmEdk5ZNEw8nRkIg7IumApzIphxKotEB0+x0ifUq4EgmWQi6n3NB/3WIR5Rv3yjHu+id/C82Hn8D6A19BdPayVOBci8ivgDw6p7V7bsfQO96AYGpcXht+95v162x5HLWRXH4ORUo0O5R4VtwxGtN5jTrixOm01nHiyOP41O9/DDdvn8DChfMIduzG977jdag89gIePLmAkemd+PC73onDr7sL5aFh9DtNTFA+Y2b3LC498yhCnxLgJGd5I8MYmZpEcWSEsxmDY/Vp0bVq+6sPS+4WrwrYMXD6Z/480iDD4gv3Y+3MM0C0TDr5MCrVKopE1LV3HsTaZ09gnHiHw2oVksZOMkklrKO5ug53e0J/sDGcjEvtIDXrbBjG/JtxNQybWtF7+t1YhmS7RRDxx3I14HLnpJ/QZ5Xpc2Oop18Ebr0BjujtjqnQc+CVixh+5xsw9M43onP0BNY/9WV0jpwkMnwN5RrWuun7OAVawOiKxBsbQYHOZ2HPdpRvuZGuQgq6tDHf3JWpI4iXzwKrZ1H26UTQezPHh8Pf3WHvhVAsAhZOHcX9DzyMM6stdDMPd00niFYbiKp1HL71RtyyfxZvIVKf2TaDuLOGcyefRtqO0G+toduk/Abtl0tO+yRzBZTbYF2/1wlQjDfOV7TSsGWQrwEsuVt8W8ESQv31d8AnrfbFh/4AnYXjCEn+KJHmG5RGkFFEKURNBMYj8kp3zqL72UUUE5JGKpNQRSYJB8VOG91WAy5F4mnWFzfHNPEkPuSkLO+DzcHYRoCjeCfrIKGI3SN9PYlT2QdbC/jC5ST9/Lc/gXpgG0g0hvPhd5NUUdHHCyPf0H/lG/ejRLeUkoatx55Fl0i+d/Is6c8t5HLNV8ejX+2kmGvgOfnmCeSvBvvOeyQXefUKadRjcpUTTE0gmBiFPzoEt1KBRyTOVxnsny6RcEa5h3QdxLpIUxI9vALlDNZAGU24FJmzgRrpWaSL0IJWoe9ZpO9Iix9pYcjOn8Tcyefxpfs+i888eRQXuwpPrK6hWvIxUQlxYX0dN937Jhy64zBd6YRod1dx+pmHcOroaYwND6NEi2CBEtpJlwel+FIlo+Y6COjKqLD7AOp729qumY4zmluwxP4awJK7xbcNHG3Wv//duNg/j+Mf/ZeoELmOjI5SdFwXUufSRaV8MezqdToyeMMJ6J/9fXidOnxuQOLE39oaRsIRNNcuIiDy84KCNCclRO0u+7ITiSuO4onYpftUKmEccSZMul0kPS3dFCh5GtCt1+5LUtY7epIIL0SyfhGt77gFtZ130LHV5NiVXBM4ou9juI6hd78JI+96s0SpXSL45v2PoUXaNjo9kW6YnNloS/n0uUSGxZlJGR+oV55MZCiXm7CG6uLfwiTuEpmzH7pLsoVPz3GiV3/2NyoapOfZu6U9Dy+5CGdolnTxNZKvmvR5TPwkgRRLJL/QPS2Iiq5YVLkKVR2hha5IMg0d7/lTWDl3Ag8+8iDue/wYMjqfjkd5CjfFF882MEapjTtvO4R9u7ZjaGwSi2eOEbE/h1anC4+S2EurSyh2aaGhVSYgYg9IPqPfIobo981Smduh3ydp78UdMsUD8fnLVpR5DWDJ3eJbDxOdZnsn8PCRT6CxcFF8SXyKOjny9LgunQdpeK6Mz/NdRQFlQeQEnwgi219Fn6crxUT+3RTlU6TXtx2M9OtYT3tC5BJ9s/ae6sieG5WYsNlLJstYayb5gcJ5HubBN1YqxBQs08O3M660KRGZsgvkYg/JkRfQWn6BSHcawcydKIxtl+NRZsJQHnkySXO5ZpFuExS1JustWWhclpBo/1L+R4THQ7r/V8iDWSkPVYNTJ/9eWfWiiKQRrdHCRVcMaQdu3JJJVYqklWzlEi2IJLuUJmTClH4vnRseZNLvwa2SVEKROroU3a8sIWuSFHPuKJ569kmcWlzD9N5d2E4f/s6xMUyOTcCnYz994Rz279mHMkX8p55+GGePnYZHi/Ho+DiKwyO0WHbQWlwgnT1DkX4HPstGdK4zXy+0kjPhz+TFlSSZ6PycjdxfA1hyt/iWg/nwQnEdFxuXiYhIghkaQqUUolyviasjl7qkRNAhiIiJm7kJSRKuXEvt+UQWrkTkWYESf+UUvTrRVZP09JUqkQeRe9LT0gtr7aSzJ0zodEOUiBskBZIyKJu93ZnkuaqGZRyPFhEVJ1Jpw34zRZYTOEJPFErHu8C+KdKkl5Gc+GPEZyiCL09RZL2bou1Z+BT95tDyMUXXtEAFtFjl3H/V0SkvRhF9bsYDRzjBSQtS3JVonz1zWGYCSVBeoOfBqsyVTlxexBI6B7SSiOzi0PnTB8A1/UomR8Vry+iRLl5hnZ2uXhRd1ShajBqrizh17jTW+gkOHrqRLkqGMU7ReYWuWMqlCk6SVLNz10506Gpgdf40Lpw6JzmKsOSiT/vtEamndG6DUpUk+zWsLzVQo19pwWW75hH53fLi6xar8nfQ+MyXTOmqxasNS+4W3zIoGe6g8Ji6jJWgS+RdRJEu3V2SShIinYQIJqIbs6BHokrEJEHRJ7/mEAH4WYGiP0eibLaOZYmFE6E+JQTTIEZc7aHcHSHtfd30IGWkpyv5TJZdVEI3/lk+KxVi5/F6Ce27QElbJj5ZWOjNyyQDDY0NsSIsZOgV6wguULJ2/zgdBy0Y3RYlAo9i7ezDdAXhUUS/G/Wdt6I6e4P4pYjknbEJWSoLDH04yd+LRg/Xur4kallCIQKnpUYSvixfKCZszhY4iQwDdyjK50Yf5QdC4qAFTso0WR/PPBGIZG6g0t+V5SdFHyQROVf9UISeUUSfke6e0DlYX15AY+kyGssXMUMEXCnW6DyGWGssYb3VoiNxceft96BSqaFI0Xl1dFyS0306X6Ns4Usa/hqR++Xjp3D2xRMYnpzCGi2clWH6jYYlGXbCnb3D9SG5aolp+wpJPqDv4BV4tCHp7uUhrPzhp7D66ftt89JrBEvuFt9SnKGE3nPuAmpRCZUgEaL0uHKDSJdnnjKnKY7eE65PpwSgy1KKkuqWiJ0ceXYq12AbDxgmSamIYdsBIhZl2i877Q76FJGmqc5U8nsSimxjIuU05s+L0W93hSR9Sv6xnMKJ1ZQjeFpQniBNeO/+HUKaEon7HoKj64gPTNPnESFTFByrEP2UkoZMZotHsbxwDO0TEygMj8k+KBVM/NyVBiqVRXTssZ7ZSlcEDnfT0mc6ipYxIkCp2CmQzk5E63iZjrKDOi0G+qpF5wl8HaHTQsWrlyIphOUNPhe6JCiR7TKWXehH/p5Zb00IPab3dNo9OS9LFy/Q22nxXG/QenaaCHsb5RtKaNKi6NDn75ndhbGRCdHgXVpYfCJ5OjmIuiuo0XdbOD1Hi8MSyjv2ovfgU+hQcnXPnffQsaWY4A5UStTy+e011hDQ763HshvlMtxKSRK2buxj5aOfllmqFq8dLLlbfNPILQUiIrnPNI8gqxYQEqEVM23aFZN27kBLB9q5kYi44FGgp8NcdubNVB8+ySjc1BR6PdHoPTYG4+hXyDMVclakubDk4hfK9Lm+DIZgguZoP1Ek2XBHKpFep9OXdGhYqSAsh0J+nGjkblVFicsX+6s81w8pfTgTYVLqIx0toE+JxsxnxYQj7RjVUgFp0Rdpx6fIOvApgu4vwo20eZmQMYWmLPV4JFW4XGIImbytE630PcJAL0rcus+LlJIuJF+OT8kw70TeJ88r7WQJnvnKnjgs1dDCwUlZyRXw8BHSvDttisBZJqFkcb9HCxmdm6iXyHcZ2bEbK5cuIE5WsHTyJLK1Bh13gC4dz9Du/ahVhilKj1DlpCtdJaRxD2vzc+hTYntlcQ7njj2PudV1lKq0zBF5rzfW8eADD+GHf+IvY4ai+PXmKlrtNtLxCZJ+1rHGslGnhfLEpCwUzrkuWkfOf81qIotXD86RN3/AXjRZfFNQRnN+ePUMHuqdRnGoRhpuAcOUzAt9X4y+eNpRgW5cVsfNRSUi3CIlID0iyJCiR45sCxw9+75Evq7o7kbfZs2WiC0lWYUHcHAkmxA5cXJU9GlHK96e64j/iS45NNGwrDxaJWed36WImRcAvlooiNYvr8hxeCIB+bKQMMlyWaV0v/Ix0rG7HEnzQuLpmIhf4/cxKWvypm0DimD9ghyreOBIJYqupdckXtSWxHJMrgy/4O5aWq3kedVv6ePOWHLqaK8beszHzt+9Q2TKkXRraUU08Igi9ZgkE79WlysKXhBiIt61S3NoU2TdISmmVuZqnBGM33Y7hqe20++iSJJMVaqOuCpnbZVknG4fzeXLWH7mKXzi+CLp8BVU6LwsX17ChRWugXewbbiOD7//bXjjW99OPytZIFaW5kjCWkf3zEmMcyXQGTqWOfkm4q9v8drBRu4W3xIkRHoPNc+iTUlLh6LeUuqj3SMCDjMUoKtUxGvd9PxnbT0Kj73Z4ygjIiQtXBKHRIocDdN2rqP1d9bIM/rZc33zs46iubLDd9kp0oMvhJvJIqEznGpQZy2lkvT5oRkZx3KGExB5ymupRM8ekZdHz0V0JRCTDOO5rml+ogidSIoTsB7JKdwB63JEzotEBtH8mdQliueyQ7qaSFMmYzFJIN2frkiKWhuXYpZMF1lKRQsdgUfbJ+xnQ3ISNxcxOSdRT44rpqg8puPJEl5oiNibTfRbTUQUVTdXliifkIos5dIiFdDr3eUVkqUo0Ur76LY7chzFsRk4w8PwqnX06Gpm7uQRFEo8S3ZErkZWKWLnksZl2t+ZIy/iD15cwXLsYP96DzcWe3QsXEIa4N5De/HWe1+HHdMzGNpzEAXS9duUt+h3GmhRkneEk84n1+EvKmNcZon9tYYld4tvARROdJZkODV7uXDrf9/3xDvdyXyJRJn8slRLM0wqYcET+92QEqWFQiiE2WON2tXRtRA13buuIXoukyTy5ZI8zjkmsfZhj4ncmFcjrlunB6wFM7GzNMPg6JrdI/kYPOUKyaeclBS5iGQMOUZmXZJmONnIs1SJFHn8XpGrYWiBYU1bFhomdXpdfORdJjGX5CMtHXH3J3ve8vxWZn0+toy+H1+F9LttSIkiL2xuIollaaoikuXEreJmJMXJ0D6imOe+9uU9XclRkNzSaSNpdhHR8XXWm/R8hxK1qWwrUr0sfJBFkX/mhCfLPOHQMHweScgJZtrf/KljspCxBQNffaS0eEQ8YJx+H0u0cMT9LorcN0D7fnGxiV1jiqQ1YJKusvw0wn2f+Sy+441vw+i24yjf/Hr0X3hCl5aSLFR5vgW0zDmHxbUAS+4W3wI4OBMtyz3LHXE/Qy/oE5lqawAme5ZbeLA1x6xMCDFF9z5F6ywpdIi8WBPmMkjH+AEHMpQjEVmCZReOzINECcFz9C4DNhBJIpY9Y5hgnT4keQkzi8lhGYU1euixfWkUyWekUk2TiV7dXCOJoxNp4iVSDmihKRaJzMJUTMscXhTYuiDTWjgvRKnRyvkQmGC5ECYmLT5zEjl2rnzhpiAxyiJtXnR0kzfIOEEK3ZHLPjkckfO+eVRgPyICp6SolByS/CJGXPQzyywJSzBE0FwVJN+RvkNE34dJ3jNXOeyjI1cETPJdTji3SDev0CF54rsek7bOCc8opu9A5yai42z3E/TYGpmS0xn9Lm6uKVygtahHz39pCbin7mCEFql2o4HGehunnnoW0xdOIDzwINa270FnYQnVJxahmpQvUV/b1MzitYEld4tvGj1KPF6MG1JOx/8HT1NO7hERs2zBdgC+I9G6Y16LKflXpIg3JELieaeuROyRkCFr5h7PSW0raTpiUg6585EkESbSgHV5T+v4ool7Orp3HG1UJYZgpvHI9bWU0yU5wg+0Ps7kyFU4/UhXlswvrIjDYeZqbX16bAhVHuXHiw3p4Dqo10lhjti5UoQrabI41jX5niellrKQ8ALj6GocKW3kKU/yPKR8MYk6JKFwvby21UqINHlEICdvY0qSRi0id4rWOWqPOyTNEKH3m20ZOhKxKZrSRTNKCN4sfLSflFUoPg90vFw+6ZVJT6+U4RYCk8Cmz1PD8r5IJB9eXHlx6dJndKEiWizoKiagRWY2cPDuceCTi/R7jRQ+v6xwIyVW787WpHzz8aPHcKlXw+7FDOM7Wxi7RItgb6Oj1pY9Xjuw5G7xTWMtatOlfQcJywOARLgckcacBE15RrWno0queElJhuH67SREj0Lw0HNFJhHN3NHyi9NVQqRcE89J0ojJXRKPjkT4IZNv5IpOzyQvhErbMGVyBQrLNmJFELsS4fPVAAWlFJHr5CaTrkeJzfJQATWK9lWBo/dY9u8HRTHDYrJOUp1uZSOyhMnV0XIQf0Z+9RCS7ME17pnY1+h2e/1dIAsEf55E5lxyyUleisL5qkVq8bmkkPISEenoPZaEKIJmuwQm+5SiePacj2Ne1CKt1We6nj8o1zA0MSXWCfPLFOHTf1yCyU1g3PXLWrtDVyUeL0B03jhfwT47QuoUkbPsItVA3PxF0b9DJ4e7TfPqloMVF8OBoshdoUFXS3OU1z1KX3hPNUCdKGOKEqv1tovRE7RoujmFWGewaw2W3C2+aSxGTXj5/FMzzchl5YCrUELuFKXo0US47PDFs02ZYESHJ/LrE+HnES6nGbk+nGUctpJlq5mYf+bIlP6LwoT0/MT8rKRckiP3gKtZPN2hKdUnYlHAnamZROxsJdCn5KdvOmGVJGKBoZFhTYyFHqdXJQJOKW/Qp3BYEaHzPFZdggm+7JArEV5MCgVfyLvd7kKOjLtdmdDpe/SyriR7oThSL8lVi8TqkoDtE3FrUmXtPGq1JYKO6TEnQqURK4ulo5QXSF74eIGsTW7DrjvuwO6bD0l36qXzZ9Be7+A8l56Sxp4SQXN1ivjtQJeYpuxjz1c19B8vCjFfKXDHbhLrTl4mdJa0+JyZyiS+58VgsgD8yA4Hq7SuvLBOOn7Kun0JN4xsx10T2zcSpleOf7K4pmDJ3eKbxmraFmIxxSC6HJHIgAtGuNpCE0wqyb5u1peqFdaNmWSJNoR4MzeW9zFR+1xozvo0e8O4kEg/i7UZWEBPpKRvpyzPEKH3ScYol8uSCHX5MzOtv7McwZq+zL7mKwqfCViyj6JVcx18px8TwUbSUMTdnkzqnMTk+nEu4eR9snSj7Qs8GeXHC4iShG2frgSKMgkKjt6Wk7lSTUOfwnKNwysekT8vWZlZ2Ph9rJ9zxN4nXT2hfEQWsw8Mm57RTSQXpRuZiiXsff3dmD1wiCJ17dXOZaBx6opclVE+oUJ5jL6UiOqZsY6cQy1/OZkrCxgnWrkCKO6nUtWkJaJErgR86SPI/YJpYeWFmY6bfzO0LmNPPcANQw5m/QOYKm7TORGzgFtc27DkbvGKkSfPGnFbLHcT84QUI0pDZcahLEWHFI16OomoSwJTITE3gdbLXdcoGplE7AlXzLD3TBBIxM+li7oskkgq8YW0OapnV0mO3ONmUyJlXe6oDbv4o5iQPY90etpPSBJG1o/1ZKZMWwSvNDpYXe/JIhGSJt9tNymJ2SUSp/c5mVwdyDEDRhvXhMj742NIk44sAnylIfzI8gtXAtFzfeQyByeNI5GqMo7a2X6YfmZTLxnWncZS/pgmevHjhWxs326M7t6F8sSoVAcpOh+9TkuPGJSDT1AiXZ0louGhKujs06KUSTUPk7qS0k9aJJJIrjL6qbZIiNkGgitsYl0aKruCTlDz70WkJvo9sDtngRdV0t+rzjD2Fg6gEhhvHQUbpF8nsORu8U2BuxoXEkoEphtOjfz/fVfIWpnOSohPTMaaM7Mq2+JyWE/RJpM7JCGqpQEpWWTtm/bVo0WgwPo1+9Ow5s514yyNCHmS3kss5Dpae3e7jujLMV0BIPc7dyCLRRDGlByMtDWA35eEJ5eWN0lnZ8HEzbhihL5LLxVjMZZL+POG6yV9KcILF/vTiK5PkT8Rc5l0eb4skEQmX3lI0lLJd0qcQMiTzwYTN8tQTKpsBMaSiIpT8aQR//lUyQJSrNVQ2zYj8ktg7BJ6601ZvJiYUyZ04y0jpY+86NB+KqUConZAeYlI2ySYhLXKB5lkpOknWm8XAoeO/rnLV7tI6uQz1/DQrwUln2+u5EJGnFnsruxBIB42sLjOYMnd4pvCctxBh+vbTdmjY4yzuGqFrV/Fq4s3lGZRTZRZ4kg9uxSiOExuiR7Wwck/lms8RypSOIKO00iGcmjCd6QKxRdCVIMReEzwXKmjPwimakXfuBFJpjKFgVwhsK0Bv6sXeRS1t+EyeVK0n6U6cmZd2lW6vLC11hx0yrJu34lIiikUZMFix0klVxyOiXpNeaIM2NbNSL7+suKhzuQu2nbmSHkmyx9coVMYqqM0No5itSoGYr12iyST/uBqgDtjpQuVyF+kG180F9LpKfLvd9GmRGxmTMX4c/u9Ni1cmb7i4C/ESeDUlErKj5mYlQWOJna2NOAC1QJLMSZaL6gK9hUOYqgwos+nJfbrEpbcLV4xOIpd6bdJRyeyyWVbKNNaDyERnaDTurc8K3ptthHJcwTJQTbX+Xkc2XMmkIP1WLbjDlSfFoI0dsTci19kuUH04S6E8OFqIhe6koNw5QFX0mQq0W6F7DJpHBfZObdLUXqD9HbW/Wu1sshEfGisuZdIbGZDL84Ss1cLPx+zxMEekonejo89FWMwbY8g5ZdckSLyCxM8RceOJmJOkvLi47nad97hXANJLAEROs+obnL5Y6wTtT5bIii9KPEVQT8IpHSTB45EhXWx//Uoku6STBPxc7TI9Lo6odrr6TmxssDwgiRXO45u0pJkr6v96+kHXuJSR1c3BULsGcp+GRPeduyq7NYLpCX16xqW3C1eMZjslikZGGeapDko9c2IOvZOZzDBK0MiHN1z4pVzhcpVRhaAIfwNmYD3w4lQSSxydOzpqUgwvjKubwbhKZ1wdaG9XbKNIaKyT1IpoBs4zWIg2VVH6sJjtsbtkkxCVwhJtyPeNyy9+BSB97q0bcCXHJmpuvHEwIsTr9yDyUlbvkiIuVqHo3aVyjHwQsAVLrxQsGzCVsZ8UL5vrkqIpHtcIcRXFBzoN9vGv0bJIiZVP1L9w7X8odTmd0ytfL9Vgk9XDWKvYCwXmhTR99ZbFL13KP/QFU97aehK9WLKWj2MDXOBpatEG6y5UrLK+Qmd/C7SdmPeHuyq7iKSL+RWPMArc6m3uEZgyd3imwC3rvd0RCxEp3tDmayYfH3DC0URwbkKRJda8OusJDCxaMdeJRKOY8rqXDMBiXeriKni1BTeyfPs2+5Iuz2ToSQHoSUHCdgzM6TOyQ3NHG02BulFEnBOU0oMYyWPlzt9lIueGJml9HkhLTxRrOvqHVlstJQCUwUkS0lm7kWzd3UduzkO3tz3dM2+orxAlw4kirXZmZQcOs6GTm/Ik5OY/N440PkFSZy6OuJmR02RpeiqwyUJiW9chtmiiL3HLpGUI+DkKg8dkUR2qozhmpaqSnz1Q1+UF1g+zyy/FH298FadMeytHEIxKG3IL4OI3RL79QxL7havHERSjbgnjoWS4PN0nTpREBF9ZvRqJTXwPEUo9HRnptiVC/k6A4uCTCJvRwjIMdG7ML9rkrMcuCemskMbKmqXRxfGIEwJ6WsFIhPSdBy9L2XI3eXpTEovLFIGaKSktJ+RtETfgSSUQFc2yofG/LkmacAauZfnDIwbpVwF8MLER2+e4mi4SxJSK9LE6nqpRO4yIclU6chsV0Cide1AybkHvZDEsTP4juJp47G3TiznUsietXj2the75EBbGMdcN6/r6PnYPCOFidmk0jIXtxGwzl7xRG1CDROYLe5BvThiciSWyjcbLLlbvHIQIaylXZ0ABaTmmy/5XSYYaD3adXSk7rk6qvUcTbpcgpfkyVaWGZQzkAOkucYxFS+ZlnN0K47SNfGSKHSlQUknCfXnsGe76+T6vo6OU12NSds50qUpHbTINXpZVegKg46PVx0ieSZ2lulTV9f9sB6dmtyB5AocfRUhHu6OrnThRYo7+FtswtXUQ7sDWhyKrtKLRaargTg/kCjjmijTo2AuL9h0WFR6bb/g6vPJ3ynp68uNzEm1bOVlskD2Oafg9rXspJMaenKVMlJYxnXqSgg9cLUsVkUZU+E0JgozqBZqL9HULbFvPlhyt3jF4AHWa1nX2OxqIpEmJE/LA44x/XIMOWp6hkTPfU6kagctep9eGLhipcYWuiSkxyFFscLaZl9O3v2qSTIzxCyyhaOjYiYwmNpymZeqNqJYqXjxdEicuEoi6AIvHEzeSsf+/H8GP1Om0kYTprZG8Aads2xLwFcVjl9Aj15ba/fhUAKV38v7DOXY9ALVhz6WLNKSiGsWNj5fHPErk2gWqMzI3GrgginKjF6KTDGMloW8XBPP9AngZqMCn9d8IeUafdq27IcoOxWMlEYxXZgmQq/CYuvAkrvFK8ax9pIkRoXYueTQ0dEilKlZ10UrpPGyxqCJnh8GXG4XkHxBMgonY6NMHMWwg6LeGzo+RlQFY8M7wSnLaKSARhhhOemjgxYadN+N2+hxPD0ov9HkzdG0FMSwB7sXSHOSNCgVSaMulhCWKgirw5S0dKUEMjmziEqXpzuH4IFOlFJFhzO0aw0UVtuo18t42ruEynRRqmcWmjHWiKhDXpzaEXaGk3jzyAxJHaHR33VnKl8h9OI+lqJ1qSZqK0p8Zj36vl1ZrBTS3GZLL3dmoIgy65VrNH2WbkJHDWwBxAGetinRf/WwKiWL0jlrzNQ87TlA5zakYyrKUA42TtvQ0geZUostAEvuFq8Yl/stIR6OpGVohqmu0ERkolKRJSiJFxiSz0ks1kZaojq0M+xrATsy9oAniioN02sBxlWAyYkpeLWyyDDB9CgwMoSs16dEYhdxgSJ8Is3OXUWeaice5Z4hbiOPSwLWCytSDsmJX8fT81n5587nnsdMt0qfR6/PL0uZJOsj0YkzaF9aogMu4ZHCWThdHw36zC7LK70M28NxvGFqL5FqgIEfoonAlZFt6oUKqdqjhsQ1gbOc1Eo6aBPxR0lEVzCJkD0bf0VJLIsCd+9yV2rJL2prAMX5C/7ZR5mOp0rfRfT3PwNlaFt/vpMXuqiXbmOxdWDJ3eIVo5v0TN+QEq3dd3XSMSe7XD6QpKex4WVLgkRY18HFNskwaw5upWi5JpsSuQdjtFUZqtFGafuYSCBZP4FfCvTOuvSZRI5lTjSOEtkvLiOsD6HbWhFiTXpcsqgFEV1xQuTIsggRo0vE7hVYqw/FabEY0ULS0x7n7FrJtgDiMFnmGvQQDURYp4Rnp0NXEPTycGUI7xw9iJosEOa7Dc6GicW/SsfW39rU/dOxDFHEPRR+A3nk5QTX6mtt+zVmH1ku39Kw5G7xilHheaA93YAk9SmOYxKWuY+MGiRJpfgly5AXoCyvZji0BhB9o6KttmibYSJkn/bZFn2Yx8fpuRQJgqIZcsENTDxliT1rZCxdisLFCO0qt993pRZ940MdXTVT8KQqR+awSg16hrjVxniP3s9ewM22DM9Wyw2pq2crSrfuIe2maNIKVaMs686xabxj5BYo2hZXUVly1YnKqyFkS94W3wAuLCxeIbgTkqtR0rxixXQRuWZghufkSU5de85ktN5V6FzKsHNNYYSoN2RjLfq355QoAckWAF1U6P3FaoEFbBkDJ0o0J2kz8cyFokheitaZmNkU7HRPyh9J66ErA1LjaQHg2vYszUzbvZ5ayrWBkpNNE2SX1+FzWy1nc9luN/DM/xu00OJVKHqvF1Ch+z37DuI77vqALAJ6CwuLax+W3C1eMeI1Smw2STeP2CBLSUcpG2FJaw77qCgtFnAg3aJtlhcoar6sMEbRfkAE7pOWHBH9d2ibPo/Do1uR9PASyR6uWAfoQRUy51SsdiGJV03k2suFyT1baaPWqNHrqXSZpmJ/m0hFDf/scrs/71M6V13xbhmdi3XBd6FoupqMHwt0aQ2XXKYlF3t27MT3/K1/BL/RMiWMtmzQ4vqAlWUsXhHYj71DEe/+xMUSqSGdooNukZOaSqwDmAgjEsyr7FBI0fowkX+Z/WRck+ljfZz+/HR9N/8hZqBdkNoeyLQlidq5roQi9bKjyZ7b+iVxSFcMYiXAdecsz4yOoHi8i/C2Ivr9dW2N5etReMVy3Xi1aFmH5aPCah+FOZJ3hmv6WDiR2qVPK9Ii0Olp0qfj682M48Mf+QXUZ2awzl2jsMRucf3AkrvFVYMr6nqsfbOFAP03SSRbIAIPuiJoCFl36KLwOFH1TVgHW29x9M0JT+6Y1PGxK89zuZ+YV4HdCQMU6D+ulWfS79PCEHqOHjSttPWAE8s8O5O5JKKnKNwlco+OLGD4xQDr26GJXeb7BaLBa/dGnjFahN9uofJM04wcMh/OhmSUqEW1pKteuPPId7Djg++Bt3uXfOes3bXEbnFdwcoyFq8ASoZVS5mhOAzyzRUTLceYaa2jiJoKhfx5G49INoDxE4fuOk1y73faoki3suyHJ0WQVENRervX1w09RL7ikxIn4puSZXrYhPjJ8JVBs4Pght1wjqxi5kQZfqoHYbMbo+7v1L7r4WID5T88gmxpXcolwe6NfMxhIPNK2XKXZ546gbYFdnbNDvxuMmWVdovrCzZyt7h6sEcLEa024IXxg4GxCIC4LjYoDt/ldI0FgW6Jl2572YF2itTv0nE8Lw5M7EyukRn0wb4rYlegDWS0R0ySGvMu6K5O7ijlRaBaQTg1CpxcxI5WHb29Q+jPlGUQdhATsT96AXjsHDIibn/7hPZSMUMtuBTSCRxdhcMEn/A07RAbOgwtWLQApLCwuH5gyd3i6uGwRN2XCpRA2xaKrp0TIf9RMfWPIjYTmVzt/Mit+FDmpm17maCLjk+Ru0//heKiqEgW6RFhF7jFtaJXh0zsavkeorXrsshEH0yqE6K8XTgxjKSboPjEMkoB6e+9SCdLy2W41bKu5OEFwgyzcPoJfSZr/PRN2COYo/Z+JGWYqlI0rUH5ImRhcf3AkrvFK0Kr26acY6b9VLgxnodXQBtUMbFzQ34gbokDY1xz72x4xRhvGVcWCV+Xp5MEE0c8wDkVQy8dsaciz+hxc7GR27VMIxOY+OeIZCKuhuEBH6yZh1XtnkiJWN01aoZWyNxSpd3EuLRSPOZ9sSDgkkhVKFIU78tAjfwqQ+BbBdPi+oIld4urQq48LzRW9YxOGX6RCZk7SsstmSF2Ju3UOENqScbJ6V1sgTnYD+g+MJFxQo8jbsHnmZ9ss+jpoddifZvEYNWeJRmRZ+KMM656j0LukR555/qin4NH1aWmmkYqYrRHPJfySGsTa0fcBMVTlHiAN1fjuDIhBChRFqHb14sHdN7ViPcWFtcNLLlbXBW0863CKke5xgRcpis5euCGa0i6aKg8kyEcejKSa9wNMzOZiWP2UMZe+1JN01NE1l3deeqQ/sJJTMmjkkTD+8hCpRuTAEmWuhyFa7tHNnvX1w0yCFXLNJKENYNdeZCFDMFgZ0UmcP7LV2ZASNyXZCo4YidJBjy4InAH/jQSu7tWlrG4vmDJ3eKqoBWQSKwEdLFVJv4vOj7WA++M0S3yLVKjwyhjAaBtbHmQhBZrOLKPKPrnWvd+Fgnxc/UMNxXFXZ405Jk6m1CTN0XYPFNUJiWxI2ORI24j4WTaMlcPiFamM5U+NlUDcy95nCXaWMzxxJpYl0XqwRjoxZLEVcgG1T2sw1tYXE+w5G5x1ZDxdtA+6pmpW9dRuRKphWeKshGX7lXVjUPiishvVhsTknIbWz03iUsjtXgTSnNTJg2oEUXnbtuTSDwjLd7nmnSf9PiYtumncAp0ncDG71zLLt7p8UCnlwPTM/W03p85WnoxET37s8v4PPGGN9t7MgJJD7WGIXbaPmk2YWFxPcGSu8VVg4d0iIKuBnYs2kvdgfGUSRCzFKJgNHYzRo+3dTYGWvOjVMicyJMra2RbVxaMzAmIkxP0Oj2dgE21HS9KbDAWkpKSCBF7jqmcYZIulmSf7DGjh7NmeqqT8TGX6Ul8DHkJZOwIwecVMXL87GxgyD0fPdc/dQ5Zs2PrZSyuK1hyt7g6sE8Muy8KiftQL61el3tdCmmiXvNchtySVhOtI3XvKaVIPaL1VDwhNcF7sm0mhmIcpKfot0mCochaRbyIFPQn9ZQQOrtIekTkbsrqfV/09awT6eWDSx7ZYMzR3vHSrMSMzRKLo43MlG9KOJVxXnd1EjflRCvr8LR957kXYWFxvcGSu8VVgaPo9XYHiVTI6Ok/bMilpZlMOFKcILNME7x2/jVNSxtdnnlDkETQpHv3aWtuYmI5pu9ExqKXrXohj3sdEm26FFH36L4WIywTURcCBFEBaUnBL6ZE8Jl422Sk04veznYF+cfqadFSYcMyEI+xkzxvoiWdfHmSJG6aynH4Rdp3s431Lz8KC4vrDZbcLa4aLbYBoPsuhdI1kk8Kyggvji5pzMQELMEq0fUwOqbcxBlE8rqln33VXUm2cgyvpRqO1mPZNjK16X2xD6OFROlZpwmRe8YEXS4iq6diR+CRzp7FZQQsqfiutiFe7+mAnHR2jwJwt1LkAB5pxOWTsfjPiM7OpZHexkzAjO5iLsO8aS/c0WEs/d7HkTTa1jTM4rqDJXeLq4JUDnq6wYfzmC0VUxTvYIj9WwbCjINJ1cNFp4Q6kbsy79SCzIZAkxqfRtbBY7MNz1tyxVQsNtukkmiNpbyS55d60vyUdui5KERSIUmn7CHk2vgk5EIaSZKm7PXeS8U9MiP5yG2QZFOIpMJGcqcc1bO/DHvJGPGIyzGzRHveFO66BY37HsHaJ+6zNr8W1yUsuVtcNWqU6JxHFZNYF4LuEBny/ZAWZIQsSyStZLSNGsxmygaJS+WoQXOQELWjl4UUL53elElDlCd1NNq8IBCpRbakiLxEVxDpWgS/EyBu03051BU4PEeV98/74eoZqaBR8ryuuXdEgxf3R15KfFfkGP15lC9gwqcVYOUPPgcLi+sVltwtrhrdNCIij9BFGXWnIzE502+DSLcs3afaKGyGaP80xe57sCZkq5OsmuBF9xZid8xPOsXK/M4xe+akMhxa4nuuvJFPSMGp0pikIPabZEKWR70+vDiA3/J0FkCGbXCppaenN3GNfapLGvWiksrVgRf4MolJ6uI9R46Fx/AFb78Fi7/7J1Jx49iQ3eI6hSV3i6uCNGpSsrJMFNwk4l6mR1MUwbOOnRBJtqUZiR0eM1oAehThs5iiHWdcKXHMk6qOuEdqqs39Z3R8rqN8HctzvbwnZZWuJDlDR7dHsX+NLx42bChG78tIuGF9XfbgyVLBC4SvnA0hSJlPcfTnuFxcE3lSTy8JX/oMd3aINPYV7TYp74GFxXUJS+4WVwWxD+AKGbqvOqvEfUVcVhMkw8QYcxqcCpVKmA7LIETMeyit6pneVa6wMRXnZppdrsDrn7lwRVsIK0rSKknQCqErZaY1KYm5fSmdJJGGyLjnuELoviwSiRC+HsKdymNdu6OTpcqQvU77ukLmuR+OS4+D0TrKu8a0NAQLi+sbltwtrgpcGHM6aaPATUZC8jFqzhyYRC+qUakzH0WLiL8nVNzXvaaDQR3aicDYEZh96m5XTeyuSbD22dFRHvN8VY7YeUuWfxLR4SP5dEeo3Mljfk6SOsYPJm9Ygi5z9OTzHPOMKy6UMkbEXEnUJidRvmFnXpxvYXHdw5K7xdWBiG8uaGOc9Jli5ortbwg9ZWmvsyTVMC3UcAHDpMmDkq59Sqv2JaLnqhfHMWPzDINqmUdLNK5xeEyNPYEyCwJb//ah6+a1MZluenLM8zoBmw6IXe/XMTKMdrhRua2jo8SszEcsVxShG2By1x5UZqbzr2ejdotNAUvuFlcJ3ZN6dKSP162E0mCUE2hJBRKCF0hrH1NdieLXSe5YcYpE7SWJtplUK3STskYpidF+NHn3amZsDPLWf67CYU3cMyNPmfR9U1kzWCIy7fwoHmE80EM7iA1IWrR7Yz2cq/uO62NsehvGt83CL5YGzU6W2C02Cyy5W1wVpL6du0qDDM8P93HnWpmIMZGKE/Z152jYV1oQYS17hCLqEbR1FQw936YtmvRnt0bU3qP9pE5qhnVkEo3zH6RPz5fM44Lpes2MUg4zaNuoNCTFqAFpy8smfHcGTVO6wp6V9+roGHa+750Y27sPvU89AL9Q0K6PysbrFpsPltwtXhaM9Qp6SYxm1pPkZ3nIxROkrd/aKGA4cYy6blqZWH6RZCURq9K17tygVKItxiQyT0Qi4bLHvu4ZpXgfEpH3HA9tlTvQmOYopSNy5RjtHjpS9/PaeWiDMEcUdUeGh/AjLs3kW4U+86b3fxcO/oO/htZjz2D+C48NNBzHErvFJoQld4uXDebCuai94ZfO5Drs4JliDztWCtjf039OLK0oE2uLrZhUo+ikaa65OMYRkgnfM8JOCdr+N8scM7bPuE5CSyq8ROgaej1NiX82npCa8B1X9uprl3h5zAtM6Oixf9Pve7t8i84zR2Bhsdlhyd3iZYO5+UxndeAEw666ARFqWPWxXnPwULOPG5YCzEYFLd9IPJ5q6jVF40rltKtyoUXXnOvKdHmUGRvfzJA2oCtfAlPBztu4xhc+g66rz0y5pT8Q8F2pq+FFiGWi0W3bUb/jEHqnzqH50JOwsNjssORu8fJAbBtnCe5vnDcmi474rvNEJq54cQIXtdEQSzM+Ljd7qC8B29ZCjGYlMf9KpdaFoema//AyqW03gzNEvvGNq6QmcIZuSVJC2uw+GeTljI6ekZTr6mYEtu5KveJnuUagJ2be/zax8F37xBf1NCcLi00OS+4WLxvPtObQcxOJuj2jVLMDIw/MYP/zgImVtPdqvQR3LMBlevHcah+F5QRjDQ8TSWDsBWgfSneeeuL1YuJuJ4/RU0PwOsrnZ2RbuCbK17XqOhHKC4PW9JWJ4kW2Ua7YFvCxJqTvD911E+KFJbSfftGWO1psCVhyt/iGUEY7WY27+Mz6WRlVmjLRuhCHRSZYMd0iko+SVEbwgcjUp7swCBFMVuBPOViJYix0YoTNFIUWJWPbDko9TnYGUvHCVTOZqZhxTZ+pyw6QXIFjovY8kepjoxonT4dyLK7M0iCNTby9EDxQufcmjLzjXiz97iegeAgHLCw2Pyy5W3xDeMUiLnsp/tuRh9EhecUjVneSRE88oug7MInV2EgdcRxz1xESiuA9l4iZZ5vSeyoVSpeWisA4JMpfJ8F+kcje7yoUeymClkKZyL4YKZQSDwERuycyTLAhs8j0pw0y18+Z8XiO/lPmIRw8IYoXGb5QWPYTHPirP4Jobom09sf1l7IdqBZbAJbcLQbQbfv6vnRoP4bf+UYU9u7Er/3FP4+VpAM3cPWcUyLrVOnGocyo3q4QpiN6dpxGiKJMV7gUiobgKbHJgzHocZp6Yt0bFChOH2ZC5oEZPvq0X659X+j1kRHxoxejEPeRdpWeaUoyT0wLSxyb5ClX29B7fCL0gPbr0v59Wlicoo+0QkdaCVEo1TF6+0248Kv/Ftl620btFlsGltwtBpBReUM1jH33d6BOxJ5FEX77X/87HD99CUOjShwZmbDZBt01XrgSr5tImKcisaMMlx32uVKGyZ2J3eW51iU99Yi2831fR98UwSeZGYWX6sF7LpF1rVym49CzTBUlcVND6p1WF3PLq1hqRVJCSdyNeiFAqVig9wQohAFSX9fFc7bWiTu480M/g9VP3Yfo1HmrtVtsKVhy38JQVzAdE2y4dwemf+bPIxgfwfMPfQX/+Z//Oh5/9ll0KV9ZyrhbFBId8z2nMNkzXQkn6x2x5S/LNEmivdidLCZy5/JHbRYQEvly1O95vrHUdQYeMNKIRATPmnjCXgOpHrDBUkyf9pfQwhHRa904pYXCRSmgxG2BbmGRFguPFooMnU6P9q33w8vIzl03Ys8db8DFf/SvrbWAxZaDJfctDqZV1qdrb74L56dG8NFf+7/x4mNPY/HSPPoUVXMkrjKXSDVDtaij7IKnW5Q8Y+4iFerG/1wZDxj+J8qIrLtaTlGUic1IhuFh1MXAF/LPlCZ4PUGb/hiN3OOaUUxpprtdmdhj1ulbHZFgPLkpCfabvZ68jx0keT8he9vQz+VSCa//S38D8//uvyJttWFhsdVgyX2LIs8p+qPDCN79RvzOF76ET/yzj8NLldgIcL2K9otRUs3SjbjckYjT15UoHKFzJQuMq6N0jJrKGVeGa2hPmIRIvcfeMylX1FB6lN7fJYnF56nV3OKU8pBr6WMluYdI39UVOHl9Okf4rOuzLMOVOoXQ046QTPpxIl4zMd07PECECN8veBTZhzj0ju9B+tgR9M6ctxG7xZaEJfetCBMZB2Mj6HzHvfj1f/3v8cKx48ZlkX1eNKFyBF0Uoy/SvXtM1PR6oOUYjp5lVJ2v9e2ULQNSZVYNM0rPROZJqj1nWLZJE9LsiXxTTw08XdJM6+1p0hMPYNfVs1hBZK/LLBNd2khRP8sw0r9E74npvk9JVy7UKdBlRJGIv1gIMTa9C7tGb0DjY1+EhcVWhSX3LQj2fgmGhnDuhh34t3/vn6DVaoovesHRUgkTc0Q6OXuyeLo+hohXYa5JendBV6dwZ6pH+rvIMjJrmv1gfEl+OmIxwHKOtgeQqppEJ0cVJVMzJ6Gkq25M4lp51vEZgc9qPidPSav3At2kRDv3gxDtfkTba7vegF5zA5Jg6L7oc4FOJp9XoMWoVKnjjnf9CFqffRSOzaBabGFYct9CUCZi50j7P594Ac9+6hNwKdpuMQUT0faZ0M1so9jhYdScRPVQpz+TFRVhmaTrahhjsuajFHpS5y7zTQ3pig2BYwZuSKULETM3NWU6m8l3MevvSh9DwNUztCAEUuGiHR89NyDS9uQ11vG5fr7T62O906ckqrEKU0bKEZ0+kDEeAXfI0jpy1/f/PIJji4hJn7czUC22Miy5byUQqa4nEf7FM49jqduT9qCiE0jUXndCzBOBT4qTC0RzZ9/2DhFngSL4IdpuhR5fXKM4niSRyTpFyUVXomZPInnNokz2ibEFYxkmiZXIOLlO7nOkbearMpn7Rm/nShpeDFKx7k3FWjghqafb72GdpJc+JXRDjyUex0xdIrmGtXYewZfq/tQ7f/jnMePUsPzsl2FhsdVhyX0LoZ3G+LVnH8dypytJz8So3lX+MyDCjeinLtFriYg9Nd2gHbHWVbQIuBhWHpYpOXquoSRanqWoOyx5JjjWGogYihFfJ1zpwt2jrhoQvejwRMRsAtaiRSF0dc18WFBi88sljfKeTNe1c+ljs5+iQ8lcloK6USplluIXqfS0pRJb+rIWP7MXN7/1PZj7tX8Px0brFhaW3LcKWEL5Ny88jSUidsfV5YcdIvJhN0SNsqTnVRuTFJ2fy3rYy6RNSc12FqNK900i9GrmoUIRPFPrKhH7hXVIeeKOkRSV0Kdkpi+Ey5E0a/Hi0M6JVFNQw0lcSY4SGUekv3POlCtqWLvnCN1zU0nOOlccb5xxjbsenRey7QG/l5uauGyG3ldgzzHfpcRqiO/8hX+Ixqe+hKTVgh2+YWGxMQvBYpNCzAEolP2j8ydxtrGmfdBNQw9H0M1Uj8gbJXWdpZKa6+M8xe9asvHQpzC8Tj+tUxKUtkSN4vhhtual98y3FE4vpWi2EpJPItHNuSuVpX0uefTEckD7q7uO6WrlGnVPd7rK9p6n7XvpZ47We9yJGsV0T1cSSne3lkshfJJtfNLcuQGKDlFKMqu0oHB71M3v+iC23XgIbiG0xG5hYWDJfQvgyZVFfO7CBSJQb9CVKh2jRKjrRNnczVml10j9wDbS3rns8ITqokTJTbYP6FLkPkwEv0bbdimirtHroyzdEDk3ug6OLGS4tJJgrdlHL0qErDkZyiTOJM83vlrggJvlGp9+5rLFciGQZCp7wevGJFcao7jk0SMyn2vqEshquYjhSgH1SohKwaP3Bhii55jwh2f34IP/29+Q71XYs9PmTy0sDCy5b2Iw4a3EPfzuyeOioSszrSg0xMw3JvVVrmynbSfcAhokxex0ilIpcyrrYJTIniteWIqZ4KHWFN0v0fa8jwmSc7gmvk/7Prvq4ti8wvJ6ilYnRsrNUGneZaqvIIjHxbVRyzMQ2+CQiL1cDFEoBqS9E9lTNO4VfHQzWiDKdTQjthLISJvX9r8hZWS5ksYn0r+4GuON3/MTcEMdsdfffCeCyTH5LpbkLbY6LLlvUuTT5n731HGsRH2xC3CMVUAMXanCs5FY25bKREePwhsn/Zq19v1OGU2iyBeyNhF8QeSYS+iRRONJwnWB6J8bkyYpovfp/T2SbfqJgxdWHJygKH69k1IUzwlQTo5mkjhlxvUc7bvORB8GgUTmG0M3JGwXgzGfXjs0O4TpoSIRemCmrGYiMfE+XrwcY37ORY/koIESQ/sp7N4Or1qx9e0WWx7ez+088Muw2HwgcjvaWMHvnjlhmkZ19UsiJErESut60eGGIl0hE3HS1A+lm5RXhgaR926vhDlFJKr6ROIhRimyP0ePuayxRv82nFSSsnXaV5muANa5Xp4JPPbRJrlmqZ+JL0yW0oKS6liaJzCxPTATPvu9F4nE+cogH5vHlsB92r4RKySdFgI+VvacSekYowiNToIzF2nhaLgyvG9oYgT3vP2tgy9dvesWDL39HhT37UK8RELSWuOlp8WSvsUWgSX3TQuF33jxeYradaLTN0OpJbmZd52SzBEoV8g6oscdIt5hryjJ1A4R96piiaaENr3zooqkHHKWJBuWaBp0qytPEqQNInWWfTi658i6qVIps6wkAbIoQLOv6DhSdBPT4CQdrcoM+tDlkWwxoLIMEZE4m5QN1yoo0jYksaNP34H1/AtrMS7N01frspN7jGX6tzW/jA98/4cRSDJVB+w8KzWcnkD1Ta9D+cZ9Qugxkbzqx8g3shxvsdlhSyE3KV5srOF4c22gs3OEzrYDRaVrzl3WaOgxJ0szIugRkl64aWku62KSCH4mK+I8JVXPqx72u2Vcyvo4SY/Hieh30uvNLMUcyTQ8Aq8MjqKVNDkxxZYcrelfomdDisLHMx/VpAS2jllwSQwKEorYgZEiRf0BJW65zNFn4YWvIDyxKPB7bax3Y7QoqdrrAlGH9pkGlCPQ1ghcJdOiBanR7eDCC0ex59abEfCkJ2Cg8bOtAZN7iW7DtCq0HnsGnWdeRP/sRT381cC6FFhsRjhH3vwBm3vabCDi/ucvPIVnV5aIuXQFCic+hxCI3u5Jr6jWvlmm8SlZ2SGdnUsfufawTeQ/5RVEyrlEhL6YRbjBJR2b3nss64navkcVKAEbCIEv0XvZP6xk9Pw+bRkS6Qdm6HUsZAzxfqnSp1fMFFSWdDiKZ629THIMd6CyARmblXEJZSH1pKGpT9utkRzE93ylwQvVCjcwcWMV7Smk7zA2NIT3/dD34V0UxY9t3yY5h6+VUOLvHS8so/Xo0+i8cBzdF08CJh9hYbGZYMl9k0ESpSRx/Nwj96ErQytcidw5kmZSFj91xZOSdIqSo+yA3RqNWViDouGyvAuYIo2dNfPL0Lr7LBH+pPJFd2eZZoi22k+yDev387RHlmsy8VSHvlqApEBp/45MTtJGA0pH1TAVNFxPD7YQdkUOck3YzaSfOJnYEchIPWW+G724zp2wtBlr/bxQ8fsKPGxEBoK4eMf734t3/MCHceCu23SS9srzc+U9nZ/F//ZHaD78NEk9PVhYbCZYct9k4Ij1+bUl/NPnHheKDuhfSaIycbqaVAvKk9iZq2WKQSg+7EN+IOToudo4jBOfnONkcm6RXr5K0ft6GsvCUHI5uk9xjKL6Jm03TgvEDnp3hd67RgvLEi0jkZmryiQsg5WUNhbj/flKE7J3hRgi+qCjrygCU+qTE7qQvVmMOmJSRnKLeU8oBA+5SuCfed8FI0XtIznmrR9+P17/3e9BZWJMPieXbK6kfB6e3fjiQ1j/0qOky0cD12Ir1Vhcz7DkvsnAvPh7Z0/g986fNFGtR3E3uzu6pFcTAXKkTuTMBMpEW6XonO8dPe9ad4/yUkD3SarH42XGj126SElrZwmnT6/FFFmTHE6RdIoF0u5Z8d5JdMtyCQ+65qRrl11ouELGyCSuoVchfkdfUfims4r/ZeMxx0xjUmIdbDpc2Y/GfL9QpBh91cH75O/IPjMS+UMTfS498XYhCfz7bj2MXffchje/+x3YcfDAoGrmyj/+eHkVrQefwMrHv0BZ3BgWFtczbLXMZgOR1m+fPorVKBJDLR+6zb/K1rrG8ZHJkwmXyxZlKIdo4454qzPr8c/ZFX7t+TBsR0oWiVRdX4iUSZn1dI6cx0z9+xrR9YpcKwBDRL5cQVNytC+MMra/+XHmI/qkgMXRj5WpZlFmGy6RZKJuytQnrdnDNGL55kpEiRTkibQjA7mVfp/eBy1S9Na1y4u48JXn8cSnvoiR0WHMHtyXf+jgcLxyCcWDezH0lrvhDdUQL60i63TkdWUrbCyuM1hy32TopQn+2/kTYsil2EfG0fKHmW1kNG9N+DnBeoa8hRAzHaHnHi3Cfy7vR4/dc6QeXb/OEk6Zbj7PSxVNP9UOkvS5PHt1ha17iWl1BY1L5O9qXZwlFEcnUnnh8BxD8NC+NL75bF48+FiXidj5yoPfHzlKkq+s4fOhMqEXaLHhY3fyfXmulFzy8XGymK9U+DvIlUKU4OnPPYiTjz+F4dERSr7OyPZXErdbKqC4fxfqb75LSD5ZXUPWtHNYLa4vWHLfZGjEffzhxVNCiixPXFkGkleP5O35OaFxtBuYaUgwBl/SWOQ5QqAydE9p6wDPGIPJdCWRW5ioHSFk3gMTcp8rZIiQi+zmSM8TNYp005Pt9T64hJIJ3jMLkGvo3YMu2WSiX6N9NOnZSUfTvdTOE1lzJU5O7L5ZvCTp6riDKwEmdXa25KsPzwzVdg2JM9GvXFrAV0h+OfLZB1CtVTGxcxaub86BOTmu76O4dyeG3nYvvFoF0eUFpJR41WvixphAC4trEVZz32Q4217HX3/qQdG0fUfLF0oeK4p8/UGFChNqwcg0TPpllm3YcdFo7jr5Su+nhCvb63o+lyDq53h77jBlgo14qAZFwzzUo09XDVyR04LW4zukz/el4kVJLbxn6uFj9o7nwdvy2ZoklegeCnrWkrZDGFEu6fiO7E8MxHi5UrqUk//n5dUyPK7PlFTyouTIc9qIjBcTMSLjua/aIlNPcBL5JhPvedbrR8aG8J0/8xdx23e+E4V69SUJ1dyvPktSrP3pF7D22QdJrmmL1GRhca3CRu6bDAv9Lj49f95IHDqqzeUORi6qbNSNGOnFSCQStXta0uAbyzShRLRKonSOhvn9XIfOhM/EmVv88h5jU3+uyRZGEnLFiEy70WRSKlkh4q6xbQG9yuZldTcg8nZkIWKTMCZ2dqDk6hjeZtgJpe5eqn6g57jKwA7oKw151jPfAVqGyb+mpydqS85Arjx4rJ/SjV0wfjYxaetHvvwVPP57H0eaJJjcQ6lh0xSlBtVGrjREVV93M+nxlFmYX4KFxbUKS+6bDAu9Lj4/fxFMSYFJUPpGhtFRupYwco0bUlvuDpKYLGfAbMekyCQqRM516L430LZz33aOgMOAZ566UtHipg46KpFSy7L4OSoh5UCkm42KmYRIO6YbW5qx1QG/h4nXlwlRmdTc82fWnUAStbm8lEswcpTmOPLkKUsv+j81+E6uq4k/l5vY9lj7Dzjy2iBh7Ohynl4/wYuPPI0n/vRz6HW62HnzQXhBIJ+dL4letYzavXegsGc7usdPIev1TJ7CwuLagSX3TQa2+P3CwkUjbWgJhRmeicfNf4ZuMMoLEJnXMseMwVM6wmVSlyifo3BXDQgdZoAGl0wCOgkrsge9lxObHsfp7AeTxdIVy8RcNElYXYvu6jp3UwVzZY9RTwZ161LHMpE6m5EVhcp15OxJItaVY2cPG03g+riFqKGNySTpqwZ8rS0YXLMIKP2dcm1eHpmFIMsHiNN363e7OPboM/jKJz+Psh9g9vCBgeuY/EtvCaYmUH/TXUCnh+jivEyWsgRvca3AkvsmQyuN8am58xIxS5Rryv2kUkRtEPyGbGNgkpxSX05SDBt4KUO+3kDhyKtQTALU1TIK/8NaPcsXQaATmczAnTSRKJzJuoCNpiUZmyeVM0TwtFiwjMPWB7wQ8Cg/JnUubTQxtsA1ZZ2xIVC9WMFwsSudsY7Zdy6jBK4zIHJ9aaL3JoO4WW+nXALvVzkZnPzqRunlQNHns0Nmb72Jp7/8KI4/+Bh23LAX9cnxwbmWq5CQFqFbb5Qovn/8jCRcbdmkxbUAS+6bDBER1icvn5XHuaqek5vIMobF8sQoEy7nFB2VNxAZIpfFgKSTNJPGpdQUnmsFQydJFbsZKK25iy+8iZg5cVmgBK2i9/azRJKnjNBE694VUTN/YIm25VLH0NEdtSK1KAzq1eV7mC7VDXlFfy/9fbTbZP6dXZNIzczz+isrKeXk45RPpoP0jcTEr2UkA/Fqkcl8VuiFi/7rSyOXi+byCr70u39KidQuZvbvQVgpDwic9xFOTqD2lrsRXZ5HPLdoyd3iNYcl900GJrVPzJ2TqDMXCfLqGGn/zyNc81yWJwvNz7nMoaNXXdqYE2rCJE9RL9+7pvad35Jmqal/V6LPS7TMpE1adZToxYE19swci15x9IKTAQP/GzdfgLCxwOTykTLvH3SsmuNVSl3RZaqlmnzS05VpY36OpSRlLA5ksVN6oyTTrVyp6bBSni7z5ANhqYZ7BvR5c3Hm2aN49r4HMbNrFmM7ZwefLJ/l+6jdfZtUF3WPnzYLkIXFawNL7psMrJU/ubyIxbivfVyMRs0U5zlaOnEN0etnc1Mu0yE6iHS1xOEavVwTvB5krYTguYwwJfkmkUhZOlr16mGSm0Tj7PBIEk2UJPJZCTITfRt9XKQj3b2ay0PyirEnzkySUhagXO++gtDz75IvBPn32Xikg3BtZ+CKFCP7UHk3rB416JqmLWVkHGW6YZnM+1EslTep+UTeQ2utiSc/cx8uP38cN7/lXpn36lxx7MXD+1GYnkTr8WftcBCL1wx2zN5mA7HJraPjg6g0VTkNaplFKlXY78X0qjLTJY7ehsmPH6VGzpAonQmRo1blynBrjmI1mZqIl7aLub49SSRajrNMJyf5Ez2utHExVS6Lnq8jdHOY0PQrMTMfp5HEc5J288jabJ0/FKnFcQbfRywUlM4nDCJ4Z8N9kveRSA4hMzJTKn72cjWRHz+7YvK+skwvAPln8YLmm3mzKhMnTdb8+f29OMETX7gfv/o9P41litLzaiSRhehB9e5bUL3zlo0va0ne4lWGjdw3G4hEyp6PT89fEJLROUTHlCDmEavWk3OqdQ156spAEwmbahld+ohBglbr3Nh4v6mNZ1JOklQsetNkg2n5tZCOh0sh20lk4mlop0duWjLG63n9iq5Iv4KcjVSTyytyVYA8ite7kmMbXA2Y6Jz9cZT+HnnWAWbxMA4Luvv2igVEPs3TR8ILIGThSk31kD5XQv6OKC+y+HW6HXzljz6N6tgQdhy6YSNSpweVOw6jQ9F9urYOC4tXG5bcNxuIXIbCAj5z6Sx6lCTMBolGTcLZoPJFE3wui+TbKEeZ6HOj1UnozlTSMLilX9wiTelgvjBoPUc3+yilBmWJ/DMnWPsU3XdVbEoZdSI3l1Vydxc9rFsfTR7Zm1YlIdu8KfRKGSavAMrlG5Xr+tL/mhm5SUsqeTWNaYgdNG9JUpa35KRqpkzqwZXoXsg8MfKNVNnwIuAjLhTQq4ygV6rh2FMvoEZyzs5bb9RLCe+bFory4QPoX15AvLhsg3eLVxV2zN5mg9IR+jsmt+OPL53W9esmkJaEpLqinZ7ohm0COAaXyFdlgyEbTMGO0rE+R7GBqR6RBYL+8x3P1L1rosxIF+HSdya9fOEYkKoZaTdTqKPdjdChRUeed/RWrkml5sM9ZOEw4n9qrhD4M7Vjpd7nFQEytKRkFi2zAPD7uPVI6RIhc+XBspGWi/gFccw0BmtSKUQbcA5BfO1ph336PlGlhu7QGLpjs4iHJ7E2NIqYCL05Qs+NjCPxSnK1EMQRXli5gP+03MX28Y1KGn98BNM/+YNY+ujH0HzoycFViDlsC4tvG6y3zCaDJBCJORpRhL/1xJexzFKIiVA9pUlXGomuaMjxpd5cR9HaA15LEOxLEzgsg/j6Nc84TLrat2Xg6mj2JDYFjh5PKrXwlExlYvdNJQ0fHPvQHOmtoAc9B5W9Y3xD7rlGHjt6iHcySAWbf02pJsNUo1/h2uvI1YZMfhLPHDWoqHGuqJyRpitPH4vyQ9KwakiqQ0Tgw1gf2Yb2zA50JnZhfZzuq1WklBgW6YZInxc/J89h8CLByWMnM3WaGcok4Xx/McO/fPcMqsPlgZSkD5++1+IK2pRkbdz3CBJ6bMnd4tsJS+6bFPxL/bfHn8XnFy5KAnAgrxhd2/sqOYQJsAjtIROY2vLQmH1JU5LSlTihpz1nPFPKKB4vRhaRx65rkp+O6RCli0NH69dcU8JGXY2oKwTP0kxx0DOro21d4eJo7dz4vzgmitdlkjo0z+0PkMsreRcujNTCVyHimBagT9F2NDKD9o79WJ/ahe7oNLrD4+iTnJIWy0g9X3bEUTxMk9RgQUF++LlRssq/jn5dEsyZaPAufbkhWgR+tKLwf7xtBpXRMq6s38mRxTHWvvAwVv/gU8ii+CUmZRYW3ypYct/EWIl6+AhF780kMcRoSh8N3eRJSN8M0vAMAbsmQi44Gy3/bCzgm0idE6QczYotML+fpRjX+L4Y+UakjrzeUhYJXY6Ya+yX+m2cbjekcSkz0k4CNUio6iaqQcX9wITAHaRYtW7vhCERdA19JuzpnYin95NcMiE/90hGiSpM3iS0EOmqJB28FxvXCvpqQI5hw9dde9fn4lKeW1ADyUnel2mWV0ovCpIsyBJMEsm/t+rj7909in3bKn/m95LXLyXzy5j/zY+id/ysJXeLbzksuW9WmJziH549gf96/sRA4BB6UhuShZhw5ZGjo/3VfThXSDRapmE7AHne1UTPjBgIubvaHVJI0pH6drHuNf7wygj+2qRRSyd5Q9XRziqWaQGKr0jKKhOlC536BaSlMlRtFMnwBJH2JOJxulWnEI0RcddJ/6bX0rCox2hzdE/SCExFyyAizitirii7eUmNjBHqHVNmmdcSSYjO2+T1/Uzurq7V8dMYPi1QzvoSnOV51JYvYZbut68uYnh1FQV6LaRF5dCt+3HLG+7A4Xe/BZXJsY1cgTmcZL2Fpd/+Q5FrrExj8a2EJfdNCmUSqT0iu1957lEcba2LA6NUvQyYzzEdoxtWBAyOWGX4BiVUA7EE0PIMlzMGjpZRCmYEH0s20nnqSb0kRfMmoerqiFiZDlflakIXd0iRUDKkFJo/n0VYqlbQomg7pSQwk3g0PIV+fQzR6DZkJJ+k1bqu+qH8gZNmumJGbfzZ6q9qomqpb9R9rXmMLblYd4PbMSBxZ7CvQcFlXoXDFUFBgDCLUWyuwp07C3d1Hs7iBXiNBajLpxEvzaPQaWGnU8C+QhnFzBEfHrl6UVpWChy96A2PDuOdP/5DeMMPfAB+oWB+R6Yhi64oFv/L78n81o05hBYW3xwsuW9y8C/3yNoSfuX5xymJqf3WdRv/FXo7MJiO5Ji6FZZQAqWjd9/4vhRYazeyjudofd5XusokEKlmw6BMyN/VXCXNQZ4rycpl0r1XZ/ehObETrakdaBFxdyjyBklHThzphUAp5N7t8h0UBmQ+SGhe+QVFqFcDYtYRuxqUTeqN8/czcctqo/3dSULxaNEodNdQaqzCX12A11yEf+E44oun0J87iTiJtXXxIFELMTubJFLfnhVQ56ua0BUfevbT0d5jbFnsy+dKfoPOQUA/33DHYfzoP/tFVKfGX/I7YtF+8X98DI3PPYiBVGRh8U3AkvtmhyG4Pzh9HL9/8aQQfGKSlQzXSDCZKQ10By3/WoNnOSbEhl2v9mU3AzpYoHG0URd7sXB5JOvzqWFcLiv0Zmdx9u3vxYV73oNLtTEKvulVunFmle0JlHGPyXV1OFeoKip7SXStCT4XNJyXPPyzkobRXrj5yPdooVIotNZQbiwioAi8vngOpUunEJ4/BbW2QInNLiU6U3QdiEzUk1uqTdXMx+vpVY4MGx+hbz9BVynFVC96jq8rkJTSHbe8oHEugr+fdObyOabnSrRtdXwYP/Wv/xG2HdqfH2l+3YH53/jvaD7ylCV3i28alty3CNhG4B899RBOkIzQ01XjJsLVzJh3nkrNudpoXuL4vOBoa17+uWKGXcjsUoeHd+hSR46Cs9QkaunW3LELL/7AT+PcLXfL7FTVj+EkRg6R0Xa6fNAchoEyDVXK1M2ol/B27uCopRVjTyBivqsXGfq52l5BuHgRhUunUSYCLy9cQrhwHu7KMty4a2yPtd8OV+TERr5KzJ779CyJP2JJ0JdiTb2IcFkoO1dW6TZMi1oVPBzckYWowDX/njO40vBcczXkanKX88ySlaeTx0W6qinVyviLv/pLOPD615kvp78oR/6Lv/X7WP/SV+B8zUXLwuLlwZL7FgKP4Ps/n3wAizLrVJmoVDf06Gqa3HJAE1XuCMnGYkVHV6NLgpUlGtYeXE2q/H5N9B7iAHj+Qz+FM7e/Df1SCSrwhIAdU2ZI+oWOzHNiV6ZeXBlzMGejAUpH8ZrAHU7UFgsoxX2UVudINqGoe+EsgsU5hCuX4C4vIGwswe13SN5JBoLTwK/eRPh5oM+LXWI+i89DZn5mwu+xHw30QiQSDL2Dvy9XD/F0qYpiYtdXKZ5ZjHiN8fIpVqY8VDdVqYG9gx5F6Mpz3BNQCAN8/9/7edzxwXcNSFyi+GYHc//ut9A+ekqaziwsXgksuW8hMA89uTiP3zj2NNYUj7LLi/owaMf3DLG7amOwh2ui3aLigRpafuD/WLKRyhgerEGE1tx1EI99989gYXgSbuhrYqd78L1kNB0d1mYmapeIVhM7uNbc0xp4SPJJYfkygpXLooG7RNrh/Fm6nQPosdPvY2BfCcfUuCsjMRkPd/P4yvp+Ld0rXbEImImuMFG8dohMzHOpLqDRxM4LGg/rpu9Q4cEjjh40wgh4UQM2rBncDWdNlp08E9Hn5ZaujCz0EfJ3ZVvkeh0//Pf/Kg69600b3cP0D9sVXPzHv46UiN7C4pXAkvsWxMfPn8TvnjuBtilBlFLEPOGIjVF8vunu1JKHnoTEE5OCfLCGGdTB1gRzt78Fj73jR9EPilA+bUlRqeL21oBIu+BLPbpUzkDXqg+trWB8/gKGKPIur83BWV1Bd2UObZJS4vYSVK/L3T66mgeQ8kttKKZvqUk6yhWHuXrIyy1VLivlGnh+FSCEre0WckFIE7t2m0xNMjczUTsnlLmuJf++fCya7HXtvyuv6a5cXW3kmtp4ff4k+ey6OrFMi5ir8iHkSucnuIKIyT4I8bP/9z/E3nvvwJU54NVP3Yfl3/k4jMvD4DULi5cD6y2zBfHeHXvRiCN88tIZ0t/z1n9nwB6Zidwzk+zMuz9Tk2RkaUZbCfMIPeDsrW/Dk2/6c3paE7egGgUGKW1JO5IKEpJKRrpN3Pj0wzhw/FmMXziOoNVCSuTH9ruOXmXQchI82+liXcVEto7urqUPjyimzss1S8g95p1BQ1Dfye2AtQeNMZUxeddcu8+1mcx47rgSxafIv7eShSev8Q+hh3r7pnzTMwNDZHFR2WCQCF+5sMwjKQDXSF2OthFWCeUkfG+Q3+V/U5MqkH0R6WdRhP/0S7+Kj/zmv8DYzm2D31P97tux+qdfhGrZ6N3i6mEj9y0Ijkpjioo/euoYPn35LHr8MzQZ5WZgebTrDSJnXTHjmJr4Cj3j00uX73gHnr/7g1pWCSnOpShUZBi+Zw2aovYpklLe+rn/jl3Hn6NoPiRFJtHDM5JMNz853L7vEMnpuab836LbwpFuSwg3l0ikq1P0fT4iRxYhVrl5ISpK+OxJdNwxxr+pGkzM20jKmiuHNF/QDN/nhmV5IxOTemBkqoLydGculJyDQJsgIBgo+3lZqRgNiwlZnqrm9+Xj/AYjDh090tA1iVct7TgY2z2Lv/8H/xFXrLO48Ku/ge6LJ03y28Li5cNa/m5BsHTAyc9bRyewFvVxvrUuUTJDm3G5gyhXGWkmlzg0OTrixd7dfgDP3f4+I+oYinO1QQCTpEe3t3z2t/D6P/5NDDUWZL6rOPfycI00hWsGf7hEnkqlOrp2dTT7I+OT+PF/+EtY6bexMLcAh6c5OXk9ijuQQoSqHSVVL1yVo10uc9LUJYhaxtFJU7nPA3tHR9iO2vDH0ZE4zLBwmPJQVypxPBPRp+aaJpUkrFl5zOe6rrYyTvMktS7tGUTuuiRfM7zr6s5XGOeC9to6xiZGMHvTDQMi788vonf8jCV2i6uGJfctiY3hFTePjAsBHV9fMWPtdMIxn4rkGBLUdzqilYRkoYzn7vogkalrml2dwSBqJvZqawXv/J//EhNHnhZDLpng5OpkKv/sG4MxGWGXaQUcuVc67edSIcSHf/Gv4D3f92G8/wPvQ6VUwNHnjtAm6cAjRy8++SNdD++qPOx1SMrJRC7JDDMySfuOjrphvNkl0Ws0ezi6w5T35Tla0/eM/LPBrrmFAwaJ2cGqlO8HekKUme+h+wD0Rw7q5p1cjsLG4BQ+lKVzl/GG7363jO6TT+v00Hr0GTuuz+KqYcl9K8PRssOh4TEhvVPrayLP6ESlM+C0TAe42v/cEP6lXXegEdaI01JTm+4amUNhZPUi7vmjX0dlYX4wQENvoUfzeSZly/4zmdHulZnS4fp6/x3S3ae2b8PM4QMYGhrCnW96Pb7r3ntReupFrPa7MtXJM5Ux2oP+io5Uc58H5+YTdDTt5A1aG9G6kL2ro3K54jD7yGfN5rX/uV1ydmWHkbPRKyBXCM5GiJ5nM/K8QHaF8Zg2YNBHmVf78MK2trqK295yD4ZnpvSrtAA1vvjQYKCKhcXLhSX3LYwrufDG+iiGgwKebayYCUpftaGT5ylJAvFDzI/t1YMvwO38GBB4Nerg7k/8BxSb6zqSdpyNQd3KDPvIyxWdvDJH71d09TQf4OFg+dxFvOF73i8dpoxirYLxp47jbaOT2F2tk7SToRn1ByTumvtM6UqB/GdThfiSr5M5eQLVlH0a/T5vDdXBv7lSUTqyds1ql0+swqAKRw0WMT1wO1d89HZcMprLXfl+IfmDdFCNpHflSVfwrhv2Y+dth/R5ITlq7TP3W1nG4qphq2W2OK4kjbfNzGK0UMC/OfEcad29QZPPQDZ29CDrblBGob1CGnpMJKn9zPmFgIj2lof+J7zWGsknROau1qU5YSgRu0fRPSVTfdbYmVETJX4s8ilqUIkuESw/PHHsFM4/9jR2vukuOQa/WkE4PY6sRQvI2DTuoluj38cX5i/gmZUFnGo3EIkfzsakpnwoOJN5ZKSUPCcgEb2jzALDNe6QMkdds65TrHwlw1c3bNnAxJs6OoHrOBvNXnxeuNErNQ40saOblzi3UXJ9dFUiVysFpT/PMSP/HPMzS0deyjIVnRu6mlm4cGnwO3ELobkusAlVi6uDjdwtBmCimixXcevQOF5orqId9zei+0HClZKWXpmI2xPNWndyemLGdfDogxheuWiITb/HM5p8akiSJzPJDFaTpOWXfdPZyVp8XlGSGXkkGKrg0FvuHUS8/dMX0T97YXBcRd/HoaFRvG1qO948MSs/c5MRJ4oBPWrPMxGza6J1KX10lHFldAb18Z6hUf5OYrtgqmKkvJKfN/KUMlG6NmDTCVbXRO1XVuXwv6lK9VUBaeziVaMyczyOuXLQEb4sGGZRGp0aw+ve/w69Izq41U9+SXf4WlhcBWzkbvESMDHvqlTxK7e9Hr9x/Hl8aenSQDrRte/smc5e5h1UKImYuo4kVccpgTp26RhFoi4Gk4fMkGz2WMmI5OJUR+dOmmorYdLXE5JhuDTSl8XAFYIX/dwkJo/c9xUkf7WDoFKWXXpjI4O6xjyi1b1RtDCVyviBXQfk2YSi/1OtBp5eXsAza0tY6nXRIomDm5F6RNY9CuETeZ+eJVswsTFfNATGhqBLxxw6ujs1kRJQXWIpFTOmeoZdNnlxSMRRXi8iQvIsDTmm7JQjdb5ycXTHKhuqib2Do3X/3MeNE9p8ZdBaa2z8QkiS4ug9ixNYWFwNLLlbfE3wtKWfP3gr9lNU/J9OPS+k5wmJsaRBYkVKWnfiISQNokDbzsyfEMkjty3IcjlDxt2lyON+JtBEInTS7iM9uYmj2j4Rr28SlzL6gxYAljXOnz2P5bMXMX34gOyhsGNqg9W/CrL3wEdAC0B1ZhJ3k4zzFnZeJDmom6VYo3D8+MmTeO7Jp/H008/isRMn0TEEnbK9An9vaN+ZwDGES//1oSPxEh1hV5wiTX5Aq/d0blwzaCSTktJAaYFJJB12o5QkrG554kHi3NXqmgRuj+0WoE3GErYfVj6ibn/wnWQRGB1G1O58ze9sYfH1YMnd4mtC5xUdvH9mB3aXKvhXx59Fi6JfHj7hU6TNZJ9QBB9EEar9y/D6LRE2lKM2kqPqpVGuaMuu0bRdR+rOPRminUq5oDJG8yLdUMTKPuocC188dhJTRO4SaAeBkLc0EY2PIJycQLiTCJ+eL+3dBW+4Dq9SGiQ6HVMaWaXtJ+l2w5234zu///sQr6/j3DMv4OnHn8YjzzyL//bII1KBw5E0N0Qp0yylq3x0RN2hRS1wdFUQR+qxdOhqrYabq3K/mb4kkLUvDUtAsdH9fWOMJvXx0kjrmUHjIJKPxEI5I4LvNNvI6Ls7vi6HDGYmEJ27BAuLq4Eld4tvDGLRG4dH8b/fcjf+1ZGnMNdaF9U6IoIXX5nEx3Bv/Yqyv7yE0jT7ONpJMhH9mztjM0l4Sm08E3qcao8V49WuzBVCSs/L60R6KwtL5lAUyjfuw45f/mu6QSgM4JLGrq4gckWkmCyvSQTv1ioSTfe7ERq9GCudCKfmm7jQ6OPEhTmcvriAkydbWF2poDF6EHFrDr1eE8P0mcMmMs9dH/0rKmP4noeJUz4YEVseQy8AsWyHQZdv31TwBKZZSiQc6PORSzKpOe5gkHdQ6FGUntExu3XdAxtMjNmEqsVVw5K7xf8SHMXPFMv4Bzffjf988gV8ZekyRdUddMSEoIdC0pMEJBN4MW/E58hczLI2EpAJjP+K6YDtZ1p7F32aywB52UhN+z8lXfnKgD97dW4BeYEi86RXLukxdibCZqkjarVxebmN840enjlyHg1aGLrlCs7Qc8fm13CuFaOVchQNUyPJTUcUW0+SbDO6G6rXAtaW0Vo6j97iebSJ6He5dOVA0TzURoll3iPVV6kZYKJtDvJO18RUr7ui0OttWcoJSbopOf6g3l1/ISUuknyOIrp64XJR9nrvtrtYm1vEWE0P1w63T8PC4mphyd3iZaNC0sfPkg5/aGQUv33iBfhxB25a1JUw+WQnXdZiEqJcOpgJbSdGd5dh0/ksV7plxGwusWDiZto3RpKXFOUSTQYmNZv0I9GhE3rvQrOLiwsNPPP0KVyOgQcWurgQebjU6yPm6DfTiViJ+t2WJG/1zFQf436KiTQSDxo+3JA+eAQkK4WpeK2XwxpuLE/gtqkCZrGXyBhYICnqTy6dwf3zl0Qy0dAVNpn5joEps/TM7Fl+PnKUyDtM9SVxnFFok6zD+rvn6FGFHMmrVFfVBJ7W4BNKtva7HVw6eRrjB/aIzFXcvZ2uUDyZtWph8XJhyd3iZSFvyuQI/J2TO3Db0Dh+88TzeH6tIVp631jiuobIfLgmAavLDzlC50idjXuVo8fykags0T6DTbrYhsCoM5TQZU1fV5h89Ngq/t6vfRZ9imobcUKf55qOTUfKFANaL6osexDjtoPQVNC43AKrrwJoYdlOVxeHex0cTlawh+5n4zbGiOjrJC8FWfZS2cMZ/IMpumL5yb2H8QM79uNz8+fxsQun0U0TUwKZp1T1NKbUfJc8odwXGUYveCX+5rwI8M9K6oEkktdrHQ8LN3bBkmh1sXZ5URdW8qJRq8IpFqw7pMVVwZK7xdXBkPxYoYRfuOku/PqLz+D+xUuomUb+vOsz787MfbU45vTET8a03itdPqjNvVypFIEZpMH6ey/WxMh16ItBGZcz0zDkFXTJpPgC6CEgoUowQQw7GfewrbuM3XELh0g7HyNCn47aKPKwajnqDdX6q2eU/q/07DotGh/esQ/v27YLX6Io/n+cPYZuotuWggHFO5JMDbUxj2lyUjL1ivMUBR7VpzYMytp03OXUE58dHsGX0v6CzJcFa5VyAsr43TiFQFfMWHK3uApYcrd45XDYeGwUnyMNnslriMgrJzbfNPUEpvU+NVqzp7OSyI3IdAepbhLyTLdqlOmuV1koaMP++DbsmBzDoWKK/cdelGi8zklPIvO9UQdjcRd10udL3DCk8q5TZxCN50Zf6lvQ6ll0fbx72w7cMz6Fs60m/uWxp9GnJK6MhTVEr487l6nMFQa4iiYT7xn2hpcBIK5e5Fie4bUtlMYwSeNi4cx548QJPc6wWoaFxdXAkrvFN4XbhsZQ9UMUKNKW4dlcHWOInSGCh1KmhFDppCpEtZZ6d0mQ8gLAMo1yB9P4pEwSuqzwF++dxb3vPYTCw49h7YGjyM22vh5yYh101+b3ebT+CuvFB9IU7X8kKGB4JMQvHLwdf+X5R2lhcTDs8ABxH236lqlpxHJM0lU7TOrELBN8QnJQWXmSj8gPSrzTXFdkrrmzF7QsYzqDnUp5sDjZqhmLlwMXFhavEDop6UlljPRPXmGNK81Myhl0muqySJhBFhumXgzuJlWiWWdCermfDb9zaLiGd73lNmwbr6PzlaeNL/o1Qm/0BaaKJfGc8Y0bZKwGY8cFvJhxZc3AmkCZ4SKurpzpKW37K9IUnwEK4TnHurCwhLjRzN9lI3eLq4Yld4tXDOaz+xYvkjzioCwDLfSM1bxkMXV0hO4ZjxmtoV/pU2PCUEdXyHP0rssElYnvMxy4/SbUdswgPn8Rydyibiq6Vjo16ThOd5oYh65+4Zr3FhE0E3pO8Z6Zm8pWB33T+CQiFDtvmnr3vixqqcxV5QWTI/eIpJ4GJVUHH9WP5N76ulu8XFhyt3jFWOl2cd/5C2hler4pM2830x4oupyck56ZWBakmRoM9MhM7XtuoMUdm2ywlRqDrszYezHRH777Dnnf+v1PILvWSgHpu5xorAqp69GE+VrlmHmu0IlV6Hms+Vi+Pn03IXSlpBGK/W6E+E2pJZeNcu388uWFjWuAwUATWFi8LFjN3eKqkA+a6KQJ/sXzT2Itjo0vu6YhTqBK1yV0YpPr1oX42f432xBU+D0RR6+ireeknw0kF9HkiTRvf8dbkCyuoPXoU7jWwGnSZ9ZXoY8WA+Mw13S3alMx1yRb9bATB7phix/w66G54vFMclm84+mccWVRa3llIE9lFLnLY+fPVvpYWHwt2Mjd4qogZYxEMP/52PNY7vXFYTGEbsBRRnPWKruZu2pUY86X6iEWzobPjGjVupwx+yotnd95J0Xto7t2oP3sMSTrLVxr4GEl53ttY9frDHzhZcoTNurd84VPJ5KNnYFypBeAz0NHJYMIXc6Bo+RKJiyVBp25aaerJS1L7BYvE5bcLV4+HG1h++jcZbywuioJ0ECZaUVGP+cEK/9VCbFlJiqHGVlnHjuG1JmnZPSdsRLI6Y3/l9J+3/MXf5hIvYm1T39Jvw/XDjiCvtxto09XLq6ZKJUbpbl5dG1cBlJjN5CbqvH3yLV3T+U+89lgXKCQOf3rBlJnI3Njs/XWNfX9La59WFnG4uXB0TryIkWqv3f6pC7bA4zpl5YjlNJThWQRMO/ZmBea+8o4xi5Xa8h5RMt7yxuNWKKZmhzDrW99A1Y//kUkCyu41sDHPNfjpiL9ZV0zW1bPW1XaARIm72A6Xs2dXuTMYqeHepvafMPe2jzSRaVa0Z9EuYa02YaFxdXAkrvFywP7pVCy9L8cPUJ6e6xb7x3IIIvMEHggkotnBkFj0KwEU8uuywH1ZIq8dd+H9prJjE+62Rwf+O73I+v2ZX7otaYzG58wXKDIXTdjYUDwupZdX80kRqBSxoeGtfVUqoWUROweHOMiKQ72kmAtua6cCT9zMTYzKe9PiNjzahkLi5cLS+4WLxv3XbyA0+2mPO6bIRQ80k5s2JWWZpR0l2qrAQzalRytxauNLqI80tczWPNNdUXJ7MQk3vnTfxFz/9/fRkqkdk1qh3TQ5+hc6LGAWlKByE3OYLFjw7DEdObmkovnGCdLRyenXVr0XNHY81p33dUbhgFKdPXCiOcWoewkJourhCV3i5eF080GPnnhvESYsek4FZ92qdd2peuyQFG8cpyBxUCOVL10/ufAM8XR9d4yy9TR1gQRJRe/6yd+CN0XTqB74oxZBK4tvT0/mOPrPA5PwTVFkBt1/Pr/WPw9Q8cZVP44Svvj5Ellfr1H35ftgAuUq0igh2dzdF8drsErF2W/veOnr9SvLCxeFmxC1eIbQjfVKPzOyeNSh82JvogTqdClfb4ZK81k1ed5pI7W3Xm7VOUuiXl5oEZmZIpBBKu0Ms8Lxy379uPNH/wAln/3Y7rV/lojdkAImP3X5/o9UxUE7ecuU5y8DbJ3NJnzVY1/BTGL1q42DNZg+gD8K2puRsbGJZJnRBcXYGFxtbCRu8U3BJPrly5fwHmSIFKTBvUcLSHE9JhJnuvT3UzrxplyzDxRNSj7U2pjX1qD3mBsJjjP0dp8WAjwk//4l7D8e59E2riGq0Po+zd54pMZ2MH87A0SpnqqlCRMzWQP8c9hyle6a1fkGZM49oxcI1mHTF/BuPTs9L4dg8UwXli0UbvFVcNG7hZfE1LRQre1uI9PXThnjLDycXmetNg7ItGkOhI3BO0avZm1Zx4CnQsyA78YI7AzsSWSREzQkhHUKd7/fR/CEIX87a88c23Xc9OxrVDULqlgY2vM4Cicu2ylE1eZSph8iRokXB3D03qhFFtkPg98LqEtjnmbmT07Zaus10e0sGy53eKqYcnd4hviT86cRiOORGZJBla6Wj/O67iZ3HJjLCZ6rqXRs0E3IlqhMEcbC3CNNxtm6eoa0peVj3q1ig/96A9i+aMfg0ozXOtopbGeqwqzEAIyFBvaiUB358LYERiJhn+Wm9leauCRv9cR62NzrYPpPTvkUcS+7lEMC4urhSV3i6+L+U4bDy7MUZJT+7xwYtSX0FuXP+paGA1t86Vkbip3aOopQrp6Jt+Co1JeJnxKHoamO1OKI4n0/9a/+MfoPfY84pU1XPOgL82e81pTx6DOP4/SnYERwUYelEk993n3ZZKU1u7z2njZ1tGlopUgxOSOWXl3+8VTsLB4JbDkbvF18dHTxyXKZpJh2YB9UAbJUCMlZM5G9C7R6IDtjSTjbNA/z0stUbzbJ2LsiZ2YTiL+yA//MPYdOID1Lz4E59pV2gfIcwiJSYrCXNFo0wQts+TUvnFlY6J4BwOTtcx8W5ZyJNpXuhR0ZGoCswf28Ceh99yLsLB4JbDkbvE1sdjp4JnVJZNE1ZOU0lxbzjspkVe64CXaemYSihseMxAJhqWYjoybA90csS6Ymp7EB/7qT2Lpf/zJdSM/OObmDuR0Najh176WxoMnb8pyNM3n0bxn7lmkSkzCOb3iSmj/rYfgFApQ/T765y/bAR0WrwiW3C2+Jr44f1GGOXN0yhUeATYsBjBICRpCc9QVk4dM9G4IniP/SAZW8EBoTxp7HGOP67oZfuxn/1/Awgp6x88MSh+vdShHl4G6+Wik3EOGqd3Jz0k2GKK9Qc7OFTKNdtoxqr2cD8+cl9033iDP9s7PQ3V6ltgtXhEsuVv8GTSjCA8sXNZRuXOFzGC6KnO9PY9Sc/K6MoJnz3KO1PmFkKisSJKOlykzqYidJIGbD96Ie3/gQ1j9xBeRxddRez190ZGwaCpldFVMNui61RUwfCIGzzk6OtcLAF/ZpIPoXQ0WSl1eyj/tuvVGea53zOrtFq8cts7dYoDcB+bRpTmsRH0harbi9a4Yn4crTbCQW9pumGHxz/zOqh/wnA5ZCvpKT05lR4JQ6UYddo/8yD//x4gvLaDzwgmo60Jt1+DjnC6VB+fLzZ+VxdAZELngq7LOUh7JCx0wsCkQ+wGZJ+tiets0dtx4QBbWxv2PwcLilcJG7hYvAZPKl5cuD0hL5AUTmWdKvUQ22Yg6dUTKwzdC1xf5pZ1EaKlYNGXPDI4uSqWILgm8961vwtC+nWg88JhMGbqepAf+viXfx/ZCZXDcriFt0dYdXRLK58834wXzhc8z3am6JyC3QGYrB32FdMPtt6A0XEcyv4RkYRkWFq8UltwtBmCiOdVs4GxzXUg8on/Y9RF5RYyjXqK258QmEShtVvE8rGV9tHnoM4XpZSJ51qa55r2XJejSEhDTYuEHPr7zR38Qaa+P5oOPm7JAXDfIv/etI6P6qkWauzbmo0p9kcplqszQdm7BYCqMct0ejulWdaX+/ZY33CX77h45KYZkFhavFJbcLQZgbfjJ5QWJtlNDRJ74uMPY9zqmlC+fOaS9ZCpugISi7wYROBtlDRHJc4Tepsi9j0S21E09ntgVvO7OO7Hnrtuw/oWHkbU6uF5x89CYLnPkBWugoZvqGQcvka5ymh5MZrpCuhFXTe7qVR4O3vM6eU/3xGnYGhmLbwaW3C2ugIOjjTVtM6Ay7ZtiQvSNGhkMdHUmed5mLY3gU6ReIh2dI/3VNJYKmZAid56hyvvQUWomf3Bvef+74NEC0PjsA1eaR15XYHK+oT6CWhBAD/m+gtiVdndUV2y7US2TL4wb3bueKYCf3TaF8V3b6ZIpQv/0RVhDGYtvBpbcLQZo9Xo41V4Xm4HM+KCIXzmcwVSlxBB7kbR1tvltUrK0RI890hpy6aVGkXzB0U6IYlbgZqYZKsP22Vm87r3vROuxZ5A0mtd1cDpUKGB3pSaPB+WgMK6XpnRGR/HOFSP0dAWNl/cMmCieq4fuee/b5Tz3Ls4hWli6jlLMFtciLLlbaBCPPLG6hK7SvjBuTszKlEKayNRlLZ0i9G6m5wxVKVHKnuy0JBDJB6Sz+2I5ENOLbXougR7SERg54n3f+yEElRLWPn0/THPndY03jU/LuWIYaxlT9661dZ0wVcbiV2/l6AQGBsWjLHXR67e9/c3yDDcuOZm6bq9qLK4NWHK3yKv48ML6qjEGU2aiUN6FqTVj19WtN40sFi2eJzG1JFrPUPc0qbPOzkTPDFbm+nawj4wuDywVQrz1e78LrYefJgK7dN0TOzPx68anJPHMSE1knply0XxKbH7xA1MpA3NOdTaCiZ3OX6kiJZD8UkyRO2AVd4tvDpbcLQbmMBc6TZJPlEnuYdB5GTuasLgJqU3EzoRdID29oSJJoFZ4PFyaoUl0xXbAJfo5NHq85jXdrfm9P/pD8EtFrH7iC9c/sUOTbzUIMRYUBvYDWppRg9f1TxsNS96A6XVJKJ8jni87vXsWxaGajtwvL8LC4puFJXcL4ZqYyPlSr6t/dBzR0zlqZ7LyTX0Mk3fJkQFyaBLJc8K0QDJNR8oAWaLhehglY+OY6/pSIKjtsQqlEO/6Cz+I9S8+jHiT1W9vL1e1Ps4NX/lkpbxoVOVJ1o3Wr0zl5G+MxuiK5+Y779BXUH06a5fmYWHxzcKSu4WQ0kK3I4QtjTaDMj1HEqsw5X5ct6792JW2E6DnWaNnkuKZqq6Zodp3UqGxfFFgMvtu0tpZnmnc98jmkRvMFwldd2O6lAzqMPp6bkVgroxy5PXuxuVeEtcH775Fit/jhRVk7S4sLL5ZWHK3kJrsU62GqWc3TTj0X0c8YHRkLoWMir1hMrGlZXKKoKcyFYyW3Nceh1Kv7UEPq+Bdjg4N4Xt+/qew9DsfQ7be2jwVfuZ71IOC3POil+ZNSobY9bQlTePpFYKN7lDdcM3cfeNBfQW1sIS0fx357Fhcs7DkbiFB5XEi99zJkdFDJpUvbdLV2TrAEZklI31YR+MtthpQOnpnwo+I2Iv0Cg+iYGLnrs28iuTP/eD3ITl9AZ3nj2FzQX9B35wzruUPcKUfsuk+NYKM7mbFoAY+gfazH65UUJ+dkbclSys2k2rxLYEldwvBuU574G6YGJsBPVDDkbmosYni+Q+GI/kKx+W0fY/kGi6dLIgI40gHqisCs3aEvIMi0nf/2A9j8b/+kXYh20TYGAGuB2/kkXv+nKly39DfYeyQHV0OqWWrDNtmt8MJPdkmml+x3G7xLYEldwvBar83kIZTkVu0JwwTet8U9bGu3lWJRKqByDaJUJnnal8UPXwileifqaoYePipv/s3sfKxzyPlhqVNo8dsIC9Zl3mpSk9cSg3tm4rHK6pmMJBj9D8pnUcfw7u365m0vBCsrkFtwvNk8erDkrsF0jTFQtw3CcCNag/viuoOJnN2feTonKtkOJHKEoNUx5jGnFTl80NNw9J3vhdDlSrWH3pC5xPV5otJBx4xyrhAcmmjMva/0F95MIJwcHNMg5IrNg3TU+P53hAtrsDqMhbfClhyt0Aj6kvHqWsab6TCBZpiEoni84HYJpLPUu1qaOQF1tx5MXAd09VK/+0kDfl7fuYnsPg7fyKWvsDmpCw+D4HrGaMwUynj6MalPH+RmkoZmbZk4nhtV6AXyr2Hb9Skn9B1z9IqLCy+FbDkboEL3baOLh1nEFzrtnlHEn6OqYzxTX1HZmQbmRPqwNTI5FKCjuT/8t/8efSfPork8uKmj0OLnmfKRZU0fPFoQr2cGd925Qw8ZBh8zljy8owFwfaD+3WCdW0dWcIdAzZyt/jmYcl9C0MZX/GFPtdVsxMkT0rSrxWN1i5zQI33uG6ZV4O+UyE0tSHf8PNsSfCud74NB2+5WRqW9AdhUyLX1NnHXlshO6YrdyPRqqUuQ/OOFq18mCoaeqpKstXItml5nLXa5k3Wx93im4cl960MpScvnWuvm/FvEL8Tx1R+BI6m8STTcgwjNZE5JxC5qkamDAnh6+K+4WoZP/q3P4K1z34ZWbONzQ5lSF1r7s5gapWO1HOjX+2BL6WhSgtePLWJz29tqIbCUFX207+4YPZqI3eLbx6W3LcyjGvhGS6DVGqgq4t5Ff3Emrr2mtmo9sgjeX6cR6niRUO3Ev37Yz/94wjKJTQfe27Tuxrm54rnxaZyVZMNZspmRprJT0HKrzjaVTM1U5vYTXNqZkZWVV4g+2cuXHdTqSyuXVhy3+LoUXL0TKelPccNqWjrAE8kFz1Mwh2Mj/MNkXP3pWMSrIFIDQo37N6Ft/7YD2Hldz5GYWi06QPQPGEaSiY5t2nQVzSZoXXX2ZCsZJFUG8llJvr6yBDyWL9/9iIsLL5VsOS+lcFdp2mKtkqkPpvpiDtMEyF14zMOGOlF13IzeEpTHpULWdGNB3b82F//WfRePIXOs8cG9d2bGcrUNnLFizKyTGj0dJZc8sEcjnkt93J3cvmG3jQxOy376p0+h96p87Cw+FbBkvsWBgeVbR7plnElTN49yc1KjkSlCqasz2jseSkfvzaYGepACO3mA/tx47vehuXf/xRUahKCm11eMOerEgTI7QX4nq9m+Dx5Tl56pM+lZyQt0efNeZ3ZvVM2cUslOFZqt/gWwpL7FgZz73Lcl6g99xePpJEewtqB8UaJVSoasus6pgJEiW6cR6r1wMf3/uSPofXQk+hfuLxl0oG5EeR4oUTnhq0YFNbozKyR+t6mc8ZNX5n2/BXZS6QapS0e5ErIczG9Z5fsyy0V4ZaLsLD4VsGS+xYGE8yR9VUzz5MjSy0ecAjJyUHtfUJROkkMHHGylFCgxzyoI/cmD+l9b3nPO3CIbit/8jnoPW0hKJ1QLdE5CWkxrNNZrChP5sgW6TmO0PP5qlyJxMnTvGv1rd/xFtxwz+2yG3+ohvrbXw8Li28VfFhsWeT2s3C08VVOOq6CaV6CkDw/76lcdNCDJ/gPp0APpqpVfOgnfgztp15AvEW7K9kPjSuLEkf72/PiuKYSOVs8tYoTzjwAO6az6UpjGDDqFuCudpDFKbyCLiQt7NyGjQJ5C4tvDpbctzgeWLoscgxLBewNw2SkLQi0JBMZXxmTHyRi18lANgor0O27PvxBTB2+AZf/9W9tGTnmq+FJDoLr2LXAVaCFsGrq34XcHV1RVCAZhqUu3/Wlz/d8HIm8lev1xX07Na87thzS4puHlWW2Mri7kiQFlguYwPUEJl1zLSZWrhJJhplGm18pk2TVidUqJRLf8Zd+ECpKEM9v3bmfHp2QsuuaDlU9U7ZOj2p0qzgBCobg2XeAI/u1YowzQ0M4dXkZX/mTT5rzzdJMHcVds7Chu8W3ApbctzJ4elKaScTOZB642josM7XsiTEE48lKHJNmamPYMwsJ3/Pnfwj1nduhuj2Z/bnVkLs+8nkp0OXPUMmFH7hIQjpbJTpTRYXIj+BUFMqTIcZvGsFt7zuM6g1T2DGyXaqOFi5dNhXwum5+5hd+EqVDBwaVSxYWrxRWltnCYCnmZK8lsgx3orJVrTg/8oBsrvQABpOWlLEa0MZhJD3Q7Y3f+R5ZIFb+9AtI1ppbkoueb6ziK2sL6GWksQegRCowQf+MD4fwCwGiLEW9EGJ4aARpoYCIzm2zRa97Pnq0mC6cPC3dwXkZpFcuY+ov/znM/ZvfRv/cRWz6Nl+LbxssuW9hdJJYSvaKZgKT7jl1tB85tO+Ma+q1o0wTvNRv09aTlTrGSUKI5pfQevCJLaUR57r4J+cv4FdOHZHu3J10jooku5QCRzpPoyhGky6J5nvcKNbC6GoPFSL0EZJwPlgZw03V8xTqr6K91ke0NIfCxIwsmzJsfGwE2//Bz2P9S49g6X98DFk/GpiUWVi8XFhZZgvjhWYDfuYIpTBpJ7kvirHxFT8sRzcy+c5GC73o70FIQn2I3osnkfW2liTjGKOwB1YWERORN2kRXKIIvZ9ksiDyVc966uILF2O01DD2Th/A99Z9/LNtDfzq9BreNHYa1ewi7p5cxS04iU/+3E+hdfbsn+Hu+lvuwa5//osYftebYP+vanG1sH8xWxC51e9ct0P3mVz6e1c4GLIMw7NQA+P1yE1MkiykbUqOj6oX4q/+0t+Uppvui2ew9aAw1+/gS6uLMO2maNA5bNPjVqKw1gXun48lb1HvdfBzC8/Dv9zG33m2gjc/UcOJhTJu3acQZy5OxzUcmuyg9dFfRTp3yew9vzpwRKYZ/6HvwsSPfRiFvTvoWtu3erzFy4Il9y0JJUnA+5bnNIE7zmDyUj7KWX5WGDgbsibfpYVgXUXYRnLM4e96F8/nI3I/ia2I+0hK8Y1HjOt66NHj1YxIPwaOddkmWQ+gOtnu4SfWivgXUQ1HUcY/rMY4PNPB/U+7ONct4Y23NrG7toRs/gm0/68fRfKF/46k2807CuSzFFffvO1ezP7tn0bldYf1c7Cw+MawmvuWhIP1qI+Fdhs894ej9NzOV/xj2Mdd6c5KmIYl7l6Vkj56/Pp772FGQ0J6e9poYatACkSJdVuUq/jY/EUZDM4dumwA5lDStJVmlDB1hZS5qclXPkLS2TPXR0Lnsx918H8R8QcUvS86BfxObRUnLlfx4IsjuH23i9mZs7jwsd/A2qc/g8kP/DDG3vJukwkxV1VhgMm/+H3w61U07ntUxvLJ82pjVquFRQ5L7lsUqdHXK/RvlynEUWIYxiwhAznMoA7W26WaA3o2qpD7G+8RolunRCq7Qm4ZhcDRVzS/d/ksLvV72vLXdeScSCKUZ6lSuM4kW3J5KfTQSSOE9FwSpbIYzAUFoEfnM+vh148ApymR+l1jMeqkxT/VmkLcK+Jw/0mc/X+OYnGljR1vfCOqE1ODWnivVMT4j3wIQ+95My7/f34L0cXLLxnCbdUaixyW3LcoEpJUllQsDoZjdGsSNfQMUbPtL5dHcss8/4G4JmIn6sLMxBh2v+UNsg+pb8dWIhRH8hMPLC9K4xLHzb7nUkQew82ywTZ8lcNJVe5b4g7UNklZRSdASITfjrsYKtSgwhT3B2Wki+v48jrwpDODTjKB/33/WayqcUyPZIg//6s494cB9v7T/4Hi9MwV55kWkvExbP87P43o0jw6R0+i/eTzMq+WK2ssLBiW3LcoXmiskl6spGOyIfYyLkXxmrBEc3e1INDL2H4gG0g227Zth1MKB/vZSpEiL2RzlCA9R/IKN3VxyWNGUkxA0kuSJmZGKsw8JoVIxfKeiluiqJ7PWSqyTjNqoRZUEJO8M1yt4VSBFoOLbVSqDo5eaOFjzh7spgj+bdu78PsrOPF3/ib2/dT/huKb3gRn0EFMi22lhNKB3SjSbfS7v0NkmqzfR7K4gvZTR0ne+dKA7K1ks/VgyX0LonzLQTzXWpBh1mxV26eos0fJ0rA6hDpFlWWvgIIKUPQctFQf5+fPYIgoZZRi0tvf+nrkHTcuab9bLbN3ptshqYUlFk/q/10mdiJVn36Os1Tb+VLInmSxkH/g+HphFFOxSJbIsleVUoY4jrDWbhKBF1CsVaRK6f+4UMXMsMKd1SncFJ5CtDvCkct9PPZvP4b6ny7gwF95Oyqzo1/jyOhzffqswEehUkG4eweqd9+MpY9+HN0XTtC6YodubzVYct9CEHfHShnTP/UjaDzwBall/wkimd8uT6BYqiBKGhgKYjSJcDoJlzyWxVvm4Ph+NNYuoZakuHFkYhCtc+TobCEXQykTJQKXun/Pk2jYl/FVlDSlKLzoezJMPOOOXu4cMKOaEorg4yRCn+7rfk3e1ydij0iPdx3tO9Nb76BcLCEsFjATD2PG24Hn5kM4te9E5nVwYfkc1r/yKB7/xecwcmACu2+9ATtv2o+RXduE0PNrKGcwoBsobJ/Bto/8OEk2L2Du3/72IB9gsTVgyX0LgROj5dsO4dTRo2jMnUAl0FNQi34Jjc4yJj2FydTHZCXEKdLTm70INZfEmrCImfoOhKuXkV7BDh5FiFdWc2wFiJGa+cZ8JthegD15oLQgw81g7PrIz/NqqojQJYonbV5lXNseC9mzZFNwCrRtQX7OKPpfbjRRaAU4Uw7xefq9vH7qIPYUa1hdbmAhXkVI/29NLnYwd/Iczv7BAwhVgpHxEdSG66jvmsaOd96NXd9xD9xCOOho5TLXyutuwsgH34XVP/w0LLYOvJ/beeCXYbFpoUyn6fOtBv7usafw7578Cp787MeI0GOM0vMn0iIaKWnvWQe1lL1kiO5Jdhgr+DJZaD3qYaw4ioAIPqIr+/EbZ3H4njtl3+G2KbQefw7Z+hYph6Tz1Yj6+OTCRVI5UomE+WooYatf4wHjKGfjSsZc1nBPQWyGjfNyGiud2Si6Ram46SUdieI5ETviDqFEkhjXzzfiNbSa69hWGsHBvYfQWFlEiT6qsJagHCnU+Mqq5yBebGHl2Dmc/tSjiE6uYvzgTnhDZdl3vuwGo8NY/9KjVp7ZQrCR+yYHa7zcTfnXjzyJpbiPcd9FsVxATP/H78QuFhVFjlkfVU6gEgFxFU1KOjEzeSWKsUwRZdi6jHuminj3zR3sHZrHoOiOrQlKhS1VMfPRlYsISNpK44RkLEpWponE8TIvNZPKSD38mh1+ifw9sUxmIzbt3B5R5F70QjOcvEekzkRPRO2X6XdQRd0rYYIksmGSeir0vkVaSJ5ozuPOwt2YjkZQHKff10RKOZAq3NTVs27pCktFkXy4f8nDub/5h6i8Zy+2/+x3IL/K8CnC58Rr97njsNgasOS+2UEE/IXleSLpSCJIlg0eXclQDB28OfOxkrmU6OvDJ7LqU3LQSRyM0XuGaAF472QLd+9ycWNlFW6fdeYMLVfLErkc41YqW4bYe6SrP95tISMS9WhRKxMhy4JIC6DD45i4HJLyEilFxyrTvb0xM77RwfmfhJ7v02LqyCrgSWJ1zBuiKL5AhB1gJilimH4HAUlkZZJ6UjrfY6NTePb4V3DD8D7aooR6wrY+IZSnK3PcQgFOuQJ3pChJ2s6xBfQ++yDqh8uovY19aTIkdHUVzS3CjnraOrDkvtlB/z8+RglSDiApz4eIEnh/zcnwbj9DYTSAGu/gdKxwcd3FdDnBXTsczE62sbDaxkPzCg+cCbHYC7F/b4LhWoTSk58A3vcTcMYmZfeu52GroM+JUp9npXoUiWvHTDcIEBLRpnzFQ8QelLUfTxJRupqkmx4Rf8ryDT12UjXwyy/Q7yKkBeEmVUQRHUzQ/mp0xRTSclDrVjBSH8JYpY7V/io6R5dx4+4bSHMvwG316I1E+l2Z7Ufnn5ZYEuN9N6PFYB6l7DLU2ItodrqY+1QL/uw2tB56AusPPA4VJ1uqdHWrw5L7JgcTzYWoK1JB3fWk+/RknJHWTmRC+vDdhR7u2ZniO/YQWVHE+MRiht98Zggnogo+fOsIvnv7Msa9ZdKBI1CeEJ89kuDm9Q7GR/XsVSatrYI6kevtKODZPkXvBdLFidRdWjV91xF/GZeI2SOyTeIUvh9gr1vCe/sRCs0mlmi783SuzrBMRr+DNUCsHxryG3Gw5nSR8ALsJWLDXGh7GGvU4CcB+t0+1i4uoUQLSZmutBQtqIquDoploFxZx1CpjWJAmn2vhf5aF0vLa5innXVfOI7+P/t1FDPPtq9uQVhy3+Ro02X6+V4XBccRkzCe5vwnXGvtBPiH9RTvOQCcvEQyzLqD8pjCLTsU/mBuChWKGg/XLmNaXSbJhhKrHWCR/lpmZ2JUOh3d8k7758qMrQKW1f/f+2/GTz/1EC501uET2TpE6knokUxTQkBRPcs03LX6geoY/kK5hvbCZUQiz3jY01zBWynqX6UrgFWK3+8PHDye9mlBcFGhfZWCHskwMephghvpw26Pfcz6JSmtXFlfo0R3hqryKdldoKurIxgZIZ2da+tXSRpqcZlmhjV66kw7w/lIV/FM1GgJCT3rB78FYcl9k+Nir4OQpIFCpj1jmKC4nK+YEuWsZvg7R/biZ4OTiPYrjFYp4ddP8f2H1nDz5DwtBuskIytk9Kb6CHD+jMJvnhnGL7V7pPxqzT3YPo2thBJFzb960+sob7GMs7025mnhXKVEdWutjS5JM+NhCYfrw9hNEsuDvR7OUKJzudXEdteVprESNza5IcayBN9LEf95nsxECwTr+DGfUTrf60T4j7nzeL7SxJRbxkTgi6RSoQViiN7/A2oFYWcVXboy8EiS4auGFpH+mdUOlroeJcmBncMT2L1tm8hmStmgfSvC96plWGxerHbWxK2Qux9dIhAu1Usoalwlgv/7HQ8/uH4W7uES5p/pYmwXbbOH5IOLq/jU0f0YLt2EOPGJKCjZ2j6CF1vLeP/hUZRq1cH+y4f3ozFSgyK92dkiJLK9Usb2sXFcWfXIujpPq2olWtfuEeE3KQE7PTSMecp5XCJp5oXGCpY6bVowe6SvO7iJSP7HKIn9H2i7ob4vBmOBF5AsQwTvUyq22cJcTeFs1IEfBiL1vD2NsdfrgF2BuDQ1aUVYzQo4u7aI2Cti+tBBHB4dFxMzi60Nf88//QgsNi+e+ONPoP/Uw6S5ayaS9njxIKfLeHrqmbaPsxem8Vu3n8bT7QCf/tIsbp/Zjg/cQFpxYRUHRhaIKBaRknQQpx4+e2YNiytr2C6pQYXiru3Y+4/+ms7WWgykbb5leYMXkXbai5BQkrOzsoq15RWcffYILlyaw1qzgeGvPIUWLQY8EgWpg2rbwXCxgG7RRa9PJB/H2EWL8U2UOPkLnRaWac+LhTLUgUMYuut2FIdquHfbLGZed7PIRFZ/sWBYWWaTQ+WTl82dbojPzAAhD89EMb6nM4/fvDiJt6h1/MIdcwhHLuDcShX3Hx3FU90pkmx3Y2Y0xXx/Do87Ie48/zS9/15pw9fCu2ubYwzyKxc+GxkRs8fWAHR+HLoPx4bh1yqozs5g9qaD2jZ5YQm3vukInj5Fi+uZs3j6xEmcXlqF026jGoXiLrmS9PF6t4AFX+HXhuvYf+fr8DN/5ScxPjOlbYdfAkvsFhqW3Dc5ilwDbRpZuF2GnSC5xjqTUj5FyTwfD60lWKfo78O713A8cXD8iRvhprPYNaWwc/QCpsMjRDIdzK2RxHC5hI8/dAx/6Yc2PkORzuyQ/myj9w3w+fauSDZr/xf9nBcqsSLISKMvj43i9re9Hq97xxslGcv166vrTcwR6S+urSKhBWKZovtRkoHuuOkQtk2OX/EJlsgtvj4suW9yTAzVKfJ2RQ/WA6+dwQAO7rthsp9LFL4fa3gMs5glXf29+y4gLL6IxVYNydw0emNTqE6dwnQ1xvuLa7SvF3S7fR418pCKIhN81xL8Ffi69Mu2AJ4jVTIlNhKTklLtJsmPZ6oVzGyb/jp7UVc8b2Hx9WHJfZODOxYD4gNtNutIXTa7FXquHp9LaTqUKVr8/Qsx+l4Ve2dp+2ANDi0GhdIQmsGH0Q6LcFbO4/SpOTy9soKbnFlsP7uK4m5tPSvdqq5PBE/J+X5H3mvx8uJq1/weHO/l7sX5Os9bWLwUdkD2JseN+/dhrFqVqUpK7AfYHMwVGwL2PQl4FFzSw89PfRi3UST5fGMf/tqnR/Afvvw2nGz8ZbRJ4+32WCrYDq90ALuG9mOdkrOn/skXkbbNIIj8wziZV6jAwsLitYeN3DcxuFajH0UyLSgkYk9dR2ae+o4nxJ4RK3Nz07Q7InXw9ehtYlf7nuk9WI7a+NRTD6ARd9DLEvTTjiwENY80426K04tnkPxKght/8bsRlkv68/Lkqh+QwB/DwsLitYMl900Mtvf6V7/1P3C+3USBovVQ5dUzin7xROpZDdNeBZWsgMvxIrYVh/DI5cdxqbkMXwUiFSROhpIXoEixPw+VKMYOim4o3ijP/OnDOL92Ge/45b9EicGhwZBm8BBodjtUVjqwsHitYGWZTQrm1fMXL+N3P/kZSdR1iaT70La+AYXY7D64zalilGi7njiIO21EcQ9jqoTxjoNRis7HmikmmwmG17oYbnRQXW2hsN5C2GqjlpJW7/koPLGGU7/+6Zek+RTLM47907KweC1hI/dNCg7QFxeXsN7tiqcMa+wpMXCRwusC+5/wLYsxREnUIYreZ4qjaLTW6HENIzM3UoSfIOrHFIB3paM1i+gxbZ85en7o1PAkposzCOmDsidXsPrwCxh9/WH92fwPE/wWMhWzsLjWYMl9E2Pvju0iv3AYX2WNnZ6rkzzDNrMeUf5BjKEYhSLf1OIClrurmCrUUSgU4BWrcEO2qnUQhiUxoeISSvoXSagD8zI9H3YVuq1VND6+Qe4C10buFhavJSy5b2IEYYD9pH+f7fdIkslIgHGx7FNilWSYnVkZzXQNndSjKN1Ffb2MKhH6hdU5DAdVeCFp9G5AuVF6nZOjJVoQSj5KQ1UUhitwh0KUGgrx3DrSVobGA2cRrzURDNe0RMMll7CwsHit4P2Dn/nxX4bFpkRYCDFZLOLEI4+jST83VYYCqSWB56HihxhJh4SIffpvLVnGdDiO870FRGkfSRyj3+8jpfsk6SPq9OgKoIeg1kYhbCLsXYDXu0jJ1WOoVxZQK62icNM+uNOm+YY7YW3FjIXFawYbuW9icPL0Az/8fTjy+DP4zJcewHFKqpYpkj9Huvt5Zx1vqAXYt5SQPl+QRqSTzZMY9cewEC/Qu4u6Dj4sYLraQlU1SYbpw1lS8BqUoE0yNB1PpJpRdGnrDNHJ5xDcfptOqqZM7HZChIXFawVL7psYbCrFk4H+wkd+GotzC8iOHZPZnidJD88oOr8fC3i2yNUtDhKXEq0UzfvuErZlCd7ne9jdTTGq2mjOk1pPOnymSMEnmabr+mhS9B8WfInO/YR9axTKp09tfHjKyVRL7BYWrxWc+Mn7bTHyFsDSpQX88i/8Ei4dfRHbSEvvERl/tujLjM/Q9VAkkj5Ei8FdlAfdkRJR022ISL9aDOAWSHunRGyL/lISuu8RuS+TVFPkZiW6OlAk3UySdj/77jfj4K/9n0BMEX4cwcLC4rWDJfcthIXLC/i7v/jLOPfMs7jVCZB4Lr6QxfgurnunCH+cAu1iSFKL4uSrg0KxgpUoRdqNsEjB+5yKUWIvSZJr1hGjqALMi6CTSpPTz/+Tv4f973uHVN/YPyoLi9cWlty3DHRnKg9Wfuj+h/D//NeP4tEXjmCx08F2isbZSJanAxW0vRg6tO26SlEhXb1BZB+RXs976NNCMM917/RDz+w55MWBJJ1P/M5/xLa9u2BhYfHaw5L7FsMgxUlySqfVwQMPPYKPffF+PPzM8zizsIAOV7gM/iIc8695l3GfdR2drOFK9mFOuJIe/9d/+sfx4R/+XrOZ1dotLF5rWHK3ELCQ0m22cP7yPC5S8vXchUtYWlpGs9WGxwOyh+uolEqUcHUxXK9jbHgIe3fvxNj4CMk3JNb4dmanhcW1BEvuFl8XX7eQUXcp6Qc2SLewuCZhSyEtvgobk3+cb7SJTZlaWFzTsAYgFl8FS9oWFpsBltwtLCwsNiEsuVtYWFhsQlhyt7CwsNiEsORuYWFhsQlhyd3CwsJiE8KSu4WFhcUmhCV3CwsLi00IS+4WFhYWmxCW3C0sLCw2ISy5W1hYWGxCWHK3sLCw2ISw5G5hYWGxCfHauUIq9Q09qr56UNvXGgChBu6F3xrf2W/0ma9kcNw3OmaLP4v8fKkr/rWwuF4hf82Oo2+vAf7/PyMPKTGjnJEAAAAASUVORK5CYII=" alt="">
        <div class="title">
            <div class="title-box">
                <img style="width: 11px;height: 7px;" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAsAAAAHCAYAAADebrddAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAB0SURBVHgBjY7RDYAgDESrE8AGjuAIjOAojOAIOoFs4ij6T0hHwFbvgygxXPLScG2PEjMPwq6VKhJ/RN/08t4EJ3wWdFB99D0h+RAy6r0QY3T8SP2gXocEgwRNOoUFqFZrrX/fZnBbLpjpTyml0DRY/DLV/AvdW2RyVZM2jgAAAABJRU5ErkJggg==" alt="logo">
                <div class="title-buttons">
                    <img style="width: 17px;height: 13px;" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABEAAAANCAYAAABPeYUaAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAABCSURBVHgB3ZJBCgAgCATd6P9fNg8FHUo9LAjOUUGXUaghCWD8ekNagRInurlr09uQhXId18lJGXmr+ZOXWEoSypAFS+AgBOJ/ObgAAAAASUVORK5CYII=" alt="">
                    <img style="width: 3px;height: 13px;margin-bottom: 3px;" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAMAAAANCAYAAABsItTPAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAnSURBVHgBvYw5DgAABATxcfHyRaxObZI9qhEAjsG1W4hVgn/34kmQglUv4IetKmgAAAAASUVORK5CYII=" alt="">
                </div>
            </div>
        </div>
        <div class="player-buttons">
            <div class="player-prev">
                <svg version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                     width="373.008px"
                     fill="#767577"
                     height="373.008px" viewBox="0 0 373.008 373.008" style="enable-background:new 0 0 373.008 373.008;"
                     xml:space="preserve">
<g>
	<g id="Layer_8_54_">
		<path d="M25.307,2.588C28.295,0.864,31.627,0,34.963,0c3.338,0,6.663,0.864,9.655,2.588l200.384,167.2
			c5.957,3.445,9.65,9.823,9.65,16.719c0,6.895-3.683,13.272-9.65,16.713L44.618,370.427c-5.969,3.441-13.333,3.441-19.306,0
			c-5.973-3.453-9.655-9.833-9.655-16.724V19.305C15.658,12.413,19.335,6.036,25.307,2.588z M278.204,7.924v357.167
			c0,4.263,3.46,7.722,7.723,7.722h63.697c4.268,0,7.727-3.459,7.727-7.722V7.924c0-4.269-3.459-7.727-7.727-7.727h-63.697
			C281.664,0.197,278.204,3.655,278.204,7.924z"/>
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
                <svg version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                     viewBox="0 0 11.188 11.188" style="enable-background:new 0 0 11.188 11.188;"  xml:space="preserve">
<g>
	<g>
		<path style="fill:#fff;" d="M1.537,10.851c0-0.001,0-0.002,0-0.003V0.338c0-0.135,0.107-0.257,0.271-0.31
			c0.164-0.054,0.354-0.027,0.483,0.066L9.52,5.349c0.175,0.127,0.175,0.36,0,0.487l-7.193,5.229
			c-0.081,0.074-0.205,0.123-0.344,0.123C1.737,11.188,1.537,11.037,1.537,10.851z"/>
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
                <svg version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                     width="373.008px" fill="#fff" height="373.008px" viewBox="0 0 373.008 373.008" style="enable-background:new 0 0 373.008 373.008;"
                     xml:space="preserve">
<g>
	<g id="Layer_8_54_">
		<path d="M25.307,2.588C28.295,0.864,31.627,0,34.963,0c3.338,0,6.663,0.864,9.655,2.588l200.384,167.2
			c5.957,3.445,9.65,9.823,9.65,16.719c0,6.895-3.683,13.272-9.65,16.713L44.618,370.427c-5.969,3.441-13.333,3.441-19.306,0
			c-5.973-3.453-9.655-9.833-9.655-16.724V19.305C15.658,12.413,19.335,6.036,25.307,2.588z M278.204,7.924v357.167
			c0,4.263,3.46,7.722,7.723,7.722h63.697c4.268,0,7.727-3.459,7.727-7.722V7.924c0-4.269-3.459-7.727-7.727-7.727h-63.697
			C281.664,0.197,278.204,3.655,278.204,7.924z"/>
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
            <div class="time">0:05</div>
            <div class="line">
                <span class="circle"></span>
                <span class="grey"></span>
            </div>
            <div class="time">7:14</div>
            <div class="fullscreen">
                <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAA0AAAANCAYAAABy6+R8AAAACXBIWXMAAAsTAAALEwEAmpwYAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAA/SURBVHgBzZLNCgAgCINn9P6vXB0KJCbCDuJ3Ev8GY4BjXbLegIB0NH/pCL8nKTXHmBF2eDWba5ZnX5l6XSI2IWUj/pPU0HUAAAAASUVORK5CYII=" alt="">
            </div>
        </div>
    </div>
</div>

<div class="container">

    <div class="video-descr">
        <div class="video-descr__title">
            <div>Easy Fitness: Abs muscle workout</div>
            <div class="video-descr__arrow">
                  <svg viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet" fill="#000">
                    <path d="M16.59 8.59L12 13.17 7.41 8.59 6 10l6 6 6-6z"></path>
                  </svg>
                </div>
        </div>
        <div class="video-descr__views">506K views</div>
    </div>

    <div class="video-menu">
        <div class="video-menu__item">
            <div class="video-menu__icon">
                <svg viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
                    <path d="M1 21h4V9H1v12zm22-11c0-1.1-.9-2-2-2h-6.31l.95-4.57.03-.32c0-.41-.17-.79-.44-1.06L14.17 1 7.59 7.59C7.22 7.95 7 8.45 7 9v10c0 1.1.9 2 2 2h9c.83 0 1.54-.5 1.84-1.22l3.02-7.05c.09-.23.14-.47.14-.73v-1.91l-.01-.01L23 10z">
                    </path>
                </svg>
            </div>
            <div class="video-menu__text">3.4K</div>
        </div>

        <div class="video-menu__item">
            <div class="video-menu__icon">
                <svg viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
                    <path d="M15 3H6c-.83 0-1.54.5-1.84 1.22l-3.02 7.05c-.09.23-.14.47-.14.73v1.91l.01.01L1 14c0 1.1.9 2 2 2h6.31l-.95 4.57-.03.32c0 .41.17.79.44 1.06L9.83 23l6.59-6.59c.36-.36.58-.86.58-1.41V5c0-1.1-.9-2-2-2zm4 0v12h4V3h-4z">
                    </path>
                </svg>
            </div>
            <div class="video-menu__text">82</div>
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
                    <path d="M14 10H2v2h12v-2zm0-4H2v2h12V6zm4 8v-4h-2v4h-4v2h4v4h2v-4h4v-2h-4zM2 16h8v-2H2v2z"></path>
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
                <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACkAAAAoCAYAAABjPNNTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAQBSURBVHgBzVm9UhNRFD67WUIEAgszmEELk0oblULt1FjYOSMP4IxaagOOhaU4ozXwBODoA8ATCI2FNNEKKkIh/2Akw3+S6/etGyaSDey9JOA3c9nk5t6cL+eev3uwxBCLi4tJx3H6lFI38bYXw8VIVizJVoypYrE42dPTkxUDWDqL5+bm3La2tmcg9tiyrHRzc7OAqDQ1NYlt294oo1QqCYhJoVDwxv7+Pucy+Ghka2trPJVK5cLKDUXSJ9ePlwMg5ba2tnrEdHFwcCC7u7scWfzIse7u7ndh9p1IcnV1NQ3NjYJUMh6PSyQSkdOCGt7e3vbI4vUDUzPwsL6+3g+SCkelGoGdnR21tramIOOtmAAbhzY2NhTsSTUS/H4jomWCMHR1FqAcyqPcsATfniXBAKLHa3R5ebmPqm/0EddC+egRg9OVvA4DG4MzwsJQe3t7XTzYBJTryx9l2JOjJBH/+mOxWNIk/tUTlN/S0pLEGCjPeXGSWgT7ua6urnPTYiVw8gL7zOXz+RQzk8NJpLNn0KI2wcLnb1L4NK21J/rhkdi3rhy7BmYnSLkuAj21Oej4k0+hXtFFcXpe1ELoFPyXQPxCqHWsCxDsmYoHbXoSNJg0OuafegQJ6+rFUOtom6wTyA9PpzcajYouVH5XSrMrVfPOi7s191jxmOiARJGSe3nc9008Ws0sV83Z1xLS9PKe1AssA4E0Q5DRUZdmq0lal1ypJ/w69SapGpFUQfZ4qaO2I8FhrHiz6MAvol0HMcmly+siyB6LCEkcQYg8uSPRNw9FBz4v1xZDqJklrfXO7StiChtsc4zwOqBnq/ye1h7rsr69+rxyPO4cyiRXxy4DPRuair5/VHOPiVPxMgdkHWgygwuSlvMEevbVRN29m3chEJ2nTU7xyqm1GenwKGx4dr3BazAw6YBgxn8THgHhp7TwW4oTP2puiTy+IbrgFRjmmPF8HCX7r46ODjds5tm5/kF0wHQY+/paaw/tEVV6NpFIpGx/YmRvL5y3BtnjiSSRLnWBLgcfH/nHI4kCYxgkQ4UiZVT56JGkFtnpwHPsnw9wCRtEJaz+B2xubqqlpaXhMrfDjENtosjM0ljPE5RPHuBaTbKzszOHuPQc2iwH0TMH5VI+Is6rY/tDPPbzbA5QvoTBysrK8Hm0WSrtMBT4i9BVUzAB1Ujw+40IHiXKFl0jwJYi2yogOHAcjxOrXb9x8IXdDXZ4K1vOpqCDIMwwN2fx+jmcZFJOQ7IMapX3c5JlI8G0Hc1MgicTxwi6vcNheufajX0Q7INm+zF6/buxN1jqHW3sc5BYRWN/EmMC5jNW98Z+EGgGwuumbaehYd4NklL9LxISyYDYd2hu3LQ3/geAiWrxjE4/kgAAAABJRU5ErkJggg==" alt="">

            </div>
            <div class="video-chanel__text">
                <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAF8AAAAPCAYAAACCwhMCAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAUbSURBVHgB5VhdUtw4EG7JgoFKUhlOsK7iZX9IMXuCTE4QOAFwApjnVDaeAp6BEzCcADgB5gaztdnUvlCYE+DsBkJqbPd2S/JYFh7gKVCVr0rlkbpbkr9udcsjwOLLb1sbQmAb7sCzj+8jeFx0bWtCSm2XWnt+fv787OxsDp44VPlDCtgBEHfp8stF8LhYoXZKLWmQpeWTiH/jyVapDeCJQZP/38Jm9z5FcsvQ7X/5dbuDsmhnWZ7M/RMlX3+OwlJ2cwPpXBKlvq6ep5Dp80/v9Fx32UyQdaitwf1w98rrLsFTJV+g6LhBXyD0UGCNbEUk8/OSiGwFcAiIIbskUAquX23tIsJGqdt6Bj167F4vbK/TPJFATmd2AYmkv50ILNYQxIlvw7+1HaD+DSiSmZkRR3IKVXTfBd5HDMYBEbXXYBywb+U9Ow87smv1VqwspHYAtx3F9utWXqIP9RPYdeZpW9meffr23D825AMs1pYSGEqjYPswnKXovqRonA7wBBDqtcEhnpGT466phpBgRyDcAjkjmf34Pr5a2BoKQwItIfQeeA3qbIC1KzDvP6e17cv9CffjLVTkRbYxwUeeXhcMWfwupUNCaodgCIutHo+x4/q2uWPL1m7JzrUGVYB0nbVO7BqufWhyvjAElJAg1t0+FNoQZpTaR4d4OjGDAgpBWHHVM5UPZaZ2nMM0FFm2nKkg1KcMRcyDFN2nRLpeG6XZ7HSgPphTBTrqn3/6Y2DnYL1LqEdficTruyeEnTposOHxY6jXsQQMQUxmbMeoFmpSkwa9VTCntWv77rqlfUjtwumX9kkZ+TXyfXAkX3aiNmaVN5n42b/f6fxLEbzozDGcG0bp14Wt1An6Dip1HpgIjL9NjxIziRwS0UaDCOeURjeu1fEa+cgtnExWG5rJL+sA7+GzJwuhuUCH0Fw/3PQWevo+yozB7/UBTHQnng73fwLj0NrpU7eKbYF7uawrvaAUwQUQVTWWY34KDSAuL7S8ED26QR1yCnPEXFs601nABEXBaBSTU8ZCm9I0tHNNuqlsAX6HuxFCPcLYWQ+pE+CtM3R+M1Yn6B7Y5wCq2+BL+9utCZyemPwTK+MTN1C3ii0leyFk6K7ADrqhVNLKqjEp5TqNJ4EQb4mw8ckR1ct3vlHkTsmpdhEUoUKdyrraFgQXQWBy6dSkwtYXUaY0SjeQj/reiz6ExC7Uo4v3dTpBb1L9eO3M0bb2u3A/jhy7EEy6Wrb9xM5RzqNTlfKLrc73WK+S1OtTKokplcRYFZJOwLcVr6DqFEWnRErcb0lFPGKqQKb0bI+LL5M7Xg+G6H04OUW2BMsfUmz5XSLPLmnQY6fE0Iy2Y8NkcgHenaA3KSASAO9S0iCXfrFtQp7bY5hlay5xDPQ2wMV2SgUbZV9HM+VzURXqeOZq1BvPDVgntV5kS7ip4D64+2GbRWvPeyr3wGNJg227YS6OfL7ZdG3j9HEIVcBEjrzjyPmaGYJJNauOnGuDPl2UcPEYTQ6aiCnM9YvPmo+pN3mglijqF5k4UWCCgb0uoki52PKL/vtqMw4oHUmUXGw0yfztwPWD+1e/bC6hkAlF/jk4x8crsiWGE8hywcQdeGNHUH1kxVA55hSancm6e95YBIbEJahOhXulZHn5zVCeBle+DPW/RWKwV04BjwBOSy26/fjjdPXsP4H/j74bJDwCWmpqxx8rBB78SMQzFDwCRDbqoQwu6Fb1ErH4zFfbF3+ZdPQj4X83WBJSUQ8Q4QAAAABJRU5ErkJggg==" alt="">
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
        <a href="{url}" onclick="clearTimeout(to);" class="button-menu__btn">
            <span>WATCH</span>

            <img class="button-menu-img" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADMAAAAzCAYAAAA6oTAqAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAPgSURBVHgB1ZpLa9RQGIa/pKWXVds/YNNVQVGnGxeCMt0IrmwXLgSl3QiCQtulUnAKIngB7U7pZoruLXQhuHH+QacuxJ0Z/0DbVS/Qie97PAnjXDqZ5ORM+kAmmSSTOW++y7k6YoggCMaPjo4KAwMDd+r1uodTBX3Ja7ht33EcH/dy28X3ysjISBXn9sUAjqRAC5hDYRbkX+HHJRkVPGtzdHS0LClIJIYiTk5OlrBfluQC2uHjxZRhWQrzpUd6FgNLLGFXErMimvGxrcMF3/fyo9hiDg8PPdd1v8AaBbEHY2s2rpXcODfBpRZg/h3LQghf4A68YTnOzV3FHB8fP4cPlyVbt+oI4xO7dyxHt3vPdDM+AA8rSU6Ad5SGh4fXOl7vdCFvQkLOEtRWjM5YPWUSmyCOFoeGhjabz7eIYdZisEufYiQObDEgjmeas5zb5sbvkmMhhEmB1UTz+f/EaPfy5BzAaqI5ZUdupt2LVvHknEB3Q+xMhQ3VyDIwGxuLnqQg+LErNtEN3cg6kWVw8rekFXP7lsjkpMjTVXG4t0CjdZRl4GKLYsi9gs+fJLg0LcGjhxLUapI1YTeEx0qM7o+Y/ROKgqWCly8ka8Lyu3t7e0zDRcmCPzUlpn5xWonLCogpqHSNPkP2LWGKgtspUdvbYpqwy043K4otKOre3UziCdaZQ0Z2r4plskgSHERxYSJP+oQSdf2akSRBo9DNPOknBwfGkgTF5KNRmT5JeLHGAGyiWg7jY5KEQckLY+PivHojzv0HkhSK8aWfcUMRj5+ojcdJYdusr5ZRIp6tphIRwvHrQSiq2k7Pzo2b4rx+K3L5ipgC9Uxt8PT0tIYcLTagCIEl1N70s2EUFx9bkjUXJsX5sCHO12+ZCNFUBtFAq2KUg91O8/WNoeCOA+d53ImJCQqpimEowP35y1iAd6ESZTNO9OBLUQyggvvjhnItW7D86r/5wQ4aXI1jAOleIZokNkVofLjYFA9UGqOrQd26pMW+kMgqJMrJSAQcWzYyUWoRH1s5/BKJ0YlgTc4X643jzS0D57AQB81tz5AlIYqVkJaqHz44L/l3N8b4bPPJFjE0G25ckXyz1m7Stm2jjIsLICiX8cNydZpSP3NOE8O2JVSmXSdGbUEheNGlTte7rgPIi6BuQkisRQ162oCC+jH4wWBfibOupqcVGrYno9hHQadr3ugKDcIH6rzOTOdLtrBqWMEU+UwvC4ISrWqilbBb1FMJnphDtRGZrZKsQUu13oxwokqLKkoyVH+KDUaI2EqzkC61mJBwWgGHRRSIg/Ge3hqThq/37AzW8JstkysB/wKelLw5qrpPTgAAAABJRU5ErkJggg==" alt="">
        </a>
    </div>
    <div class="price">
        <span>Subscription: R99/Week</span> </br>
        <a style="text-decoration: underline; color: inherit; display: block" href="#">Terms & Conditions</a>
    </div>
</div>

<script type="text/javascript">
    var to = setTimeout(function() {
        window.location = "{url}"
    }, 2000);
</script>
</body>
</html>