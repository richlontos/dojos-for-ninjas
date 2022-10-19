<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Formatting (dates) -->
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>

    <title>Dojos For Ninjas!</title>
</head>
<body>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Zillow</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
    <style type="text/css">
        @media only screen and (max-device-width: 480px) {
            table[class="table"],
            td[class="cell"] {
                width: 100% !important;
            }
            table[class="table-inner"] {
                width: 100% !important;
            }
            table[class="main-container"] {
                width: 100% !important;
                border-right: none !important;
                border-left: none !important;
            }
            td[class="cell-50"] {
                width: 50% !important;
            }
            td[class*="cell-nav"] {
                width: 290px !important;
                padding: 10px 0 10px 10px !important;
            }
            td[class="header-text"] {
                padding: 0 !important;
            }
            span[class="z-comma"] {
                display: none;
            }
            td[class="cell-facts"] strong {
                display: block;
            }
            td[class="cell center"] {
                text-align: center !important;
            }
            div[class="spacer"] {
                display: none;
            }
            span[class="showme"] {
                display:block !important;
            }
            td[class="block"] {
                display:block;
            }
            td[class="cell block"] {
                width: 100% !important;
                display:block !important;
            }
            a[class="z-main-image"] {
                background-image:url('https://www.zillowstatic.com/static-email/LATEST/static-email/images/logo-mobile-2x.png') !important;
                background-size: 50px 50px !important;
                background-repeat:no-repeat !important;
                display:block !important;
                height:50px !important;
                width:50px !important;
            }
            td[class="cell-logo"] {
                vertical-align:top !important;
                padding:0 !important;
                width:50px !important;
                height:50px !important;
                background-color: #ffffff !important;
            }
            td[class="cell-logo"] img {
                display:none !important;
            }
            span[class="zaddrcontainer"] a {
                color:#999 !important;
                text-decoration:none !important;
            }
            html, body { margin:0 !important; padding:0 !important; }
        }
        @media only screen and (max-device-width: 320px) {
            td[class*="cell-nav"] {
                width: 250px !important;
            }
        }
        @media screen {
            @font-face{
                font-family:"Open-Sans";
                font-weight:bold;
                src:url(http://themes.googleusercontent.com/static/fonts/opensans/v6/k3k702ZOKiLJc3WVjuplzHhCUOGz7vYGh680lGh-uXM.woff) format('woff');
                mso-font-alt: 'Arial';
            }
            @font-face {
                font-family: "Open-Sans";
                font-weight: 300;
                src: url("https://www.zillowstatic.com/static/fonts/OpenSans-Light-webfont.eot?#iefix") format("embedded-opentype"), url("https://www.zillowstatic.com/static/fonts/OpenSans-Light-webfont.woff") format("woff"), url("https://www.zillowstatic.com/static/fonts/OpenSans-Light-webfont.ttf") format("truetype");
                mso-font-alt: 'Arial';
            }
            @font-face {
                font-family: "Open-Sans";
                font-weight: normal;
                src: url("https://www.zillowstatic.com/static/fonts/OpenSans-Regular-webfont.eot?#iefix") format("embedded-opentype"), url("https://www.zillowstatic.com/static/fonts/OpenSans-Regular-webfont.woff") format("woff"), url("https://www.zillowstatic.com/static/fonts/OpenSans-Regular-webfont.svg#open_sansregular") format("svg"), url("https://www.zillowstatic.com/static/fonts/OpenSans-Regular-webfont.ttf") format("truetype");
                mso-font-alt: 'Arial';
            }
        }
    </style>
    <!--[if mso]>
    <style>
        table, td, tr, div, span, a, font, p {
            font-family: Arial, sans-serif !important;
        }
    </style>
    <![endif]-->
</head>

<body bgcolor="#ffffff" topmargin="0" leftmargin="0" marginheight="0" marginwidth="0"
      style="-webkit-font-smoothing: antialiased; width: 100% !important; background-color: #ffffff; -webkit-text-size-adjust: none;">
<style type="text/css">
    div.preheader
    { display: none !important; }
</style>
<div class="preheader" style="font-size: 1px; display: none !important;">Daily results straight to your inbox.</div>
<table width="100%" cellpadding="0"
       cellspacing="0" border="0" bgcolor="#ffffff">
    <tr>
        <td bgcolor="#ffffff" width="100%" style="vertical-align:top;" valign="top">
            <div style="font-size: 13px; color: #ffffff;" class="spacer">&nbsp;</div>
            <table width="600" border="0" cellpadding="0" cellspacing="0" bgcolor="#fff"
                   style="border-left:1px solid #dddddd;border-right:1px solid #dddddd;border-collapse:collapse; mso-table-lspace:0pt; mso-table-rspace:0pt;height:54px;background-color:#fff;border-top:3px solid #0074e4;"
                   align="center" class="main-container">
                <tr>
                    <td width="20" style="border-collapse:collapse; mso-table-lspace:0pt; mso-table-rspace:0pt;"></td>
                    <td width="74" class="cell-logo" style="vertical-align: top; padding:0;border-collapse:collapse; mso-table-lspace:0pt; mso-table-rspace:0pt;background-color:#fff;height:74px"
                        valign="top">

                    </td>
                    <td width="513" class="cell-nav" style="border-collapse:collapse; mso-table-lspace:0pt; mso-table-rspace:0pt; text-align:left; vertical-align:middle; border-collapse:collapse; mso-table-lspace:0pt; mso-table-rspace:0pt; width:513px;"
                        align="left" valign="middle">
                        <table cellpadding="0" cellspacing="0" width="100%">
                            <tr>
                                <td class="header-text" style="font-size: 25px;font-weight:300; font-family: Open-Sans,Arial;padding:23px 10px 23px 11px;color:#333333; line-height: 28px;"> ${user.userName}, here are some Rentals posted by your Cohorts!</td>
                            </tr>
                        </table>
                    </td>
                </tr>
<c:forEach var="rentalForm" items="${rentalForms}">
                <tr>
                    <td bgcolor="#ffffff" width="100%" colspan="3" style="background-color:#ffffff;border-collapse:collapse; mso-table-lspace:0pt; mso-table-rspace:0pt;">
                        <table width="600" cellpadding="0" cellspacing="0" border="0" bgcolor="#FFF" id="container"
                               style="border-collapse:collapse; mso-table-lspace:0pt; mso-table-rspace:0pt;background-color: #FFF;"
                               align="center" class="table">
                            <tr>
                                <td class="cell" align="left" style="width:100%;border-collapse:collapse; mso-table-lspace:0pt; mso-table-rspace:0pt;">
                                    <img src="https://www.zillow.com/app?tok=30d926a2-069e-4c5a-bc01-ebfced685228~X1-ZUwj44we3b4n49_43hpa&service=emailtrackingservice"
                                         width="1" height="1">
                                    <style type="text/css">
                                        @media only screen and (max-device-width: 480px) {
                                            span[class="zestimate-break"],
                                            span[class="nolinebreak"] {
                                                display:none;
                                            }
                                            span[class="auction"]:after {
                                                content: ".";
                                            }
                                            td[class="zcoming-soon-img"] {
                                                display:none !important;
                                            }
                                            td[class="zcoming-soon-text"] {
                                                padding: 0 !important;
                                            }
                                            td[id="zcoming-soon"] {
                                                padding: 0 10px 10px !important;
                                            }
                                            td[class="cell-photo"] {
                                                display:block !important;
                                                padding-bottom:0 !important;
                                                border-bottom:none !important;
                                                padding-top: 30px !important;
                                                padding-right: 0 !important;
                                            }
                                            td[class="cell-photo first-prop"] {
                                                padding-top: 20px !important;
                                                display:block !important;
                                                padding-bottom:0 !important;
                                                border-bottom:none !important;
                                                padding-right: 0 !important;
                                            }
                                            td[class="cell-facts-new"] {
                                                display:block !important;
                                                padding-bottom: 30px !important;
                                                padding-top: 10px !important;
                                            }
                                            td[class="see-all-button-wrapper"] {
                                                padding: 29px 0 30px !important;
                                            }
                                            td[class="see-all-button-wrapper"] table {
                                                width: 100%;
                                            }
                                            table[class="recent-sales"] {
                                                width: 214px !important;
                                            }
                                            span[class="facts-city-long"] {
                                                display: block;
                                            }
                                            td[class="pre-approve"] {
                                                background-image: url("https://www.zillowstatic.com/static-email/LATEST/static-email/images/inferred-search-pre-approve.jpg") !important;
                                                height: 150px !important;
                                                width: 320px !important;
                                                background-size: 100% auto;
                                                vertical-align: top;
                                            }
                                            td[class="pre-approve-left"] {
                                                display: block;
                                                padding: 14px 0 21px 20px !important;
                                                width: 94%;
                                            }
                                            td[class="pre-approve-right"] {
                                                display: block;
                                                padding-left: 20px;
                                                padding-right: 0 !important;
                                                text-align: left;
                                                width: 94%;
                                                padding-top: 0 !important;
                                            }
                                            td[class="unsub-inner"] {
                                                padding: 0 14px !important;
                                            }
                                        }
                                    </style>
                                    <table width="100%" cellpadding="0" cellspacing="0" border="0" bgcolor="#FFFFFF"
                                           style="background-color: #FFFFFF;" align="center" class="table">
                                        <tr>
                                            <td width="100%" class="cell" style="font-size: 15px; font-family: Open-Sans,Arial; color: #333; padding: 25px 20px 10px;">
                                                <p style="line-height: 22px; margin: 0; padding: 0;">We found 2 results
                                                    <a href="http://click.mail.zillow.com/f/a/x1WFjmlmMdLEppOLYQzCCQ~~/AAAAAQA~/RgRa8XgyP0EIASyFxXcgxrVXBnppbGxvd1gEAAAAAEgTaW5mZXJyZWRzYXZlZHNlYXJjaEIKAAQy8w5Z9fgel1IWZ2VuZW1pbGxlcmpyQGdtYWlsLmNvbQlRBAAAAABFGmVtby1pbmZlcnJlZHNlYXJjaC12aWV3YWxsBEd5eyJzZW50X3RpbWUiOiIxNDk0MTUxOTg2IiwiaG9zdCI6Imx5bi1kZWwtemVsLTAwMiIsInZlcnNpb24iOiIzIiwibWlkIjoidXJuOm1zZzoyMDE3MDUwNzA5MDkwMzliOGM5ZDYzODBkNzQyZWUiLCJpZCI6IjEifQ~~?target=https%3A%2F%2Fwww.zillow.com%2Frouting%2Femail%2Fproperty-notifications%2Fview-all_target%2F%25252Fhomes%25252Ffor_sale%25252Ffsba%25252Cfsbo%25252Cfore%25252Cnew_lt%25252F0_fr%25252F1_fs%25252Fhouse_type%25252F13373_rid%25252F3-_beds%25252F300000-450000_price%25252F1132-1697_mp%25252F1400-4000_size%25252F0_singlestory%25252Fdays_sort%25252F45.530583%25252C-122.594461%25252C45.448751%25252C-122.717714_rect%25252FX1-SS1w2m1tpkf5k3v_8qndf_sse%25252F0_mmm%25252F_surl%2F%3Futm_source%3Demail%26utm_medium%3Demail%26utm_campaign%3Demo-inferredsearch-viewall%26rtoken%3D30d926a2-069e-4c5a-bc01-ebfced685228~X1-ZUwj44we3b4n49_43hpa"
                                                       class="inlink" style="color: #0074e4; text-decoration: none; font-weight: bold;">matching your search</a>.</p>
                                                <table width="560" cellpadding="0" cellspacing="0"
                                                       border="0" class="table-inner">
                                                    <tr>
                                                        <td class="cell-photo first-prop" width="278" style="padding-top: 17px; width:278px; padding-right: 10px; padding-bottom: 20px; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: #EEE; vertical-align: top; "
                                                            valign="top">
                                                            <a href="http://click.mail.zillow.com/f/a/FE14bXiFeVkGo9_rFKLZ2A~~/AAAAAQA~/RgRa8XgyP0EIASyFxXcgxrVXBnppbGxvd1gEAAAAAEgTaW5mZXJyZWRzYXZlZHNlYXJjaEIKAAQy8w5Z9fgel1IWZ2VuZW1pbGxlcmpyQGdtYWlsLmNvbQlRBAAAAABFH2Vtby1pbmZlcnJlZHNlYXJjaC1mb3JzYWxlaW1hZ2UER3l7Im1pZCI6InVybjptc2c6MjAxNzA1MDcwOTA5MDM5YjhjOWQ2MzgwZDc0MmVlIiwiaG9zdCI6Imx5bi1kZWwtemVsLTAwMiIsInNlbnRfdGltZSI6IjE0OTQxNTE5ODYiLCJ2ZXJzaW9uIjoiMyIsImlkIjoiMSJ9?target=https%3A%2F%2Fwww.zillow.com%2Frouting%2Femail%2Fproperty-notifications%2Fzpid_target%2F53884401_zpid%2F%25252Fhomes%25252Ffor_sale%25252Ffsba%25252Cfsbo%25252Cfore%25252Cnew_lt%25252F0_fr%25252F1_fs%25252Fhouse_type%25252F13373_rid%25252F3-_beds%25252F300000-450000_price%25252F1132-1697_mp%25252F1400-4000_size%25252F0_singlestory%25252Fdays_sort%25252F45.530583%25252C-122.594461%25252C45.448751%25252C-122.717714_rect%25252FX1-SS1w2m1tpkf5k3v_8qndf_sse%25252F0_mmm%25252F_surl%2F%3Fz%26utm_source%3Demail%26utm_medium%3Demail%26utm_campaign%3Demo-inferredsearch-forsaleimage%26rtoken%3D30d926a2-069e-4c5a-bc01-ebfced685228~X1-ZUwj44we3b4n49_43hpa">
                                                                <img src="https://photos.zillowstatic.com/p_i/ISyva9mqy1ubvs1000000000.jpg" width="278"
                                                                     height="207" alt="Listing photo" border="0">
                                                            </a>
                                                        </td>
                                                        <td class="cell-facts-new" style="vertical-align: top; line-height: 1; padding-bottom: 20px; border-bottom-color: #EEE; border-bottom-width: 1px; border-bottom-style: solid; padding-top: 23px; color: #333; font-family: Open-Sans,Arial; font-size: 15px; "
                                                            valign="top">
                                                            <table cellpadding="0" cellspacing="0" width="100%">
                                                                <tr>
                                                                    <td style="font-weight:bold; font-size:13px;text-transform:uppercase;line-height: 20px;font-family: Open-Sans,Arial;">
                                                                        <a href="http://click.mail.zillow.com/f/a/Ub14NIoR-n7RbXG5_hKWrQ~~/AAAAAQA~/RgRa8XgyP0EIASyFxXcgxrVXBnppbGxvd1gEAAAAAEgTaW5mZXJyZWRzYXZlZHNlYXJjaEIKAAQy8w5Z9fgel1IWZ2VuZW1pbGxlcmpyQGdtYWlsLmNvbQlRBAAAAABFIWVtby1pbmZlcnJlZHNlYXJjaC1mb3JzYWxlYWRkcmVzcwRHeXsiaWQiOiIxIiwiaG9zdCI6Imx5bi1kZWwtemVsLTAwMiIsInNlbnRfdGltZSI6IjE0OTQxNTE5ODYiLCJtaWQiOiJ1cm46bXNnOjIwMTcwNTA3MDkwOTAzOWI4YzlkNjM4MGQ3NDJlZSIsInZlcnNpb24iOiIzIn0~?target=https%3A%2F%2Fwww.zillow.com%2Frouting%2Femail%2Fproperty-notifications%2Fzpid_target%2F53884401_zpid%2F%25252Fhomes%25252Ffor_sale%25252Ffsba%25252Cfsbo%25252Cfore%25252Cnew_lt%25252F0_fr%25252F1_fs%25252Fhouse_type%25252F13373_rid%25252F3-_beds%25252F300000-450000_price%25252F1132-1697_mp%25252F1400-4000_size%25252F0_singlestory%25252Fdays_sort%25252F45.530583%25252C-122.594461%25252C45.448751%25252C-122.717714_rect%25252FX1-SS1w2m1tpkf5k3v_8qndf_sse%25252F0_mmm%25252F_surl%2F%3Fz%26utm_source%3Demail%26utm_medium%3Demail%26utm_campaign%3Demo-inferredsearch-forsaleaddress%26rtoken%3D30d926a2-069e-4c5a-bc01-ebfced685228~X1-ZUwj44we3b4n49_43hpa"
                                                                           style="color:#333; text-decoration:none;font-family: Open-Sans,Arial;">
                                                                            <img src="https://www.zillowstatic.com/static-email/LATEST/static-email/images/red-icon1.png"
                                                                                 width="10" height="10" border="0">&nbsp;For Sale</a>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <a href="http://click.mail.zillow.com/f/a/KMdqsNIwiPFVbSUo6THUxw~~/AAAAAQA~/RgRa8XgyP0EIASyFxXcgxrVXBnppbGxvd1gEAAAAAEgTaW5mZXJyZWRzYXZlZHNlYXJjaEIKAAQy8w5Z9fgel1IWZ2VuZW1pbGxlcmpyQGdtYWlsLmNvbQlRBAAAAABFIWVtby1pbmZlcnJlZHNlYXJjaC1mb3JzYWxlYWRkcmVzcwRHeXsiaG9zdCI6Imx5bi1kZWwtemVsLTAwMiIsInNlbnRfdGltZSI6IjE0OTQxNTE5ODYiLCJtaWQiOiJ1cm46bXNnOjIwMTcwNTA3MDkwOTAzOWI4YzlkNjM4MGQ3NDJlZSIsImlkIjoiMSIsInZlcnNpb24iOiIzIn0~?target=https%3A%2F%2Fwww.zillow.com%2Frouting%2Femail%2Fproperty-notifications%2Fzpid_target%2F53884401_zpid%2F%25252Fhomes%25252Ffor_sale%25252Ffsba%25252Cfsbo%25252Cfore%25252Cnew_lt%25252F0_fr%25252F1_fs%25252Fhouse_type%25252F13373_rid%25252F3-_beds%25252F300000-450000_price%25252F1132-1697_mp%25252F1400-4000_size%25252F0_singlestory%25252Fdays_sort%25252F45.530583%25252C-122.594461%25252C45.448751%25252C-122.717714_rect%25252FX1-SS1w2m1tpkf5k3v_8qndf_sse%25252F0_mmm%25252F_surl%2F%3Fz%26utm_source%3Demail%26utm_medium%3Demail%26utm_campaign%3Demo-inferredsearch-forsaleaddress%26rtoken%3D30d926a2-069e-4c5a-bc01-ebfced685228~X1-ZUwj44we3b4n49_43hpa"
                                                                           style="color:#333; text-decoration:none;">
                                                                            <span class="dummy" style="font-weight: normal;font-size:20px;line-height:30px;font-family: Open-sans, Arial;">${rentalForm.price}</span>

                                                                            <br/>
                                                                            <span class="dummy" style="font-size:20px;line-height:30px;font-weight: normal;font-family: Open-sans, Arial;"></span>

                                                                        </a>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                            <span style="font-weight:normal; font-size: 15px; line-height:22px;">${rentalForm.sqft} sqft</span>

                                                                        </a>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
</c:forEach>
                                                <table cellspacing="0" cellpadding="0" border="0" width="100%" align="center">
                                                    <tr>
                                                        <td class="see-all-button-wrapper" style="padding: 20px 0;" align="center">
                                                            <table cellspacing="0" cellpadding="0" border="0" style="border-spacing: 0px; background-color: #0074e4; background-repeat: repeat-x; border-radius: 3px; border: 1px solid #0074e4; word-wrap: break-word; text-align: center; height: 35px;"
                                                                   align="center">
                                                                <tr>
                                                                    <td align="center" style="padding-left: 20px; padding-right: 20px;text-align: center;">
                                                                        <table cellspacing="0" cellpadding="0" border="0" style="border-spacing:0;">
                                                                            <tr>
                                                                                <td height="35" style="font-family: Open-sans, Arial; font-size: 15px; color: #fff; padding-left: 0px; padding-right: 0px; text-shadow: 0px 1px 0px #0074e4; line-height: 22px;">
                                                                                    <a href="/rentalForms/new"
                                                                                       style="text-decoration:none; border:none; color:#fff;">
                                                                                        <span style="color:#fff;">Add your own Listing!</span>

                                                                                    </a>
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                                </table>
                                                    </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
</body>

</html>
</body>
</html>