<#macro registrationLayout bodyClass="" displayInfo=false displayMessage=true displayRequiredFields=false
  displayWide=false showAnotherWayIfPresent=true>
  <!DOCTYPE html
    PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
  <html xmlns="http://www.w3.org/1999/xhtml" class="${properties.kcHtmlClass!}">

  <head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="robots" content="noindex, nofollow">

    <#if properties.meta?has_content>
      <#list properties.meta?split(' ') as meta>
            <meta name="${meta?split('==')[0]}" content="${meta?split('==')[1]}"/>
        </#list>
    </#if>
    <title>${msg("loginTitle",(realm.displayName!''))}</title>

    <#if properties.styles?has_content>
        <#list properties.styles?split(' ') as style>
            <link href="${url.resourcesPath}/${style}" rel="stylesheet" type="text/css" />
        </#list>
    </#if>

    <link href="https://cdn.jsdelivr.net/npm/@mdi/font@4.x/css/materialdesignicons.min.css" rel="stylesheet"/>
    <link href="https://cdn.jsdelivr.net/npm/vuetify@3.0.5/dist/vuetify.min.css" rel="stylesheet"/>

    <!--favicon link-->
    <#if properties.faviconpng?has_content>
            <link rel="icon" href="${url.resourcesPath}/${properties.faviconpng}" type="image/png" />
    <#else>
            <link rel="icon" href="${url.resourcesPath}/img/favicon.ico" />
    </#if>

    <style>
      body {
        margin: 0;
        padding: 0;
        overflow: hidden;
      }

      #particles-js {
        position: absolute;
        width: 100%;
        height: 100%;
        z-index: 0;
      }

      .main-container {
        position: relative;
        min-height: 100vh;
        z-index: 1;
      }

      .main-content {
        position: relative;
        z-index: 1;
        padding: 20px;
        border-radius: 8px;
      }

      /* Estilo para el modo oscuro */
      .switch-container {
        display: inline-flex; /* Para que los elementos estén en línea */
        align-items: center; /* Para alinear verticalmente los elementos */
      }

      .switch-container label {
        margin-left: 10px; /* Espacio entre el toggle y el texto */
      }

      .switch {
        position: relative;
        display: inline-block;
        width: 60px;
        height: 34px;
      }

      .switch input {
        opacity: 0;
        width: 0;
        height: 0;
      }

      .slider {
        position: absolute;
        cursor: pointer;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        background-color: #ccc;
        -webkit-transition: .4s;
        transition: .4s;
        border-radius: 34px;
      }

      .slider:before {
        position: absolute;
        content: "";
        height: 26px;
        width: 26px;
        left: 4px;
        bottom: 4px;
        background-color: white;
        -webkit-transition: .4s;
        transition: .4s;
        border-radius: 50%;
      }

      input:checked + .slider {
        background-color: #2196F3;
      }

      input:focus + .slider {
        box-shadow: 0 0 1px #2196F3;
      }

      input:checked + .slider:before {
        -webkit-transform: translateX(26px);
        -ms-transform: translateX(26px);
        transform: translateX(26px);
      }
      /* Estilo para el news ticker */
      .ticker-wrapper {
        overflow: hidden;
        background: #fff;
        color: #000;
        margin-bottom: 10px; /* Espacio entre el news ticker y el contenido principal */
      }

      .ticker {
        display: flex;
        animation: ticker 25s linear infinite;
      }

      .ticker__item {
        padding: 0 2rem;
        white-space: nowrap;
      }

      @keyframes ticker {
        0% { transform: translateX(100%); }
        95% { transform: translateX(-100%); }
        100% { transform: translateX(-100%); }
      }

    </style>

</head>

  <body>
    <div class="ticker-wrapper">
      <div class="ticker">
        <div class="ticker__item">"La Universidad anuncia un nuevo programa de intercambio estudiantil con universidades internacionales."</div>
        <div class="ticker__item">"Estudiantes de la Facultad de Ingeniería presentan proyectos innovadores en la feria anual de ciencias."</div>
        <div class="ticker__item">"La biblioteca universitaria ofrece acceso gratuito a nuevas bases de datos académicas."</div>
      </div>
    </div>

    <!--<div class="switch-container">
      <label class="switch">
        <input type="checkbox" id="darkModeToggle">
        <span class="slider round"></span>
      </label>
      <label for="darkModeToggle">Dark Mode</label>
    </div>-->

    <div id="particles-js"></div>
    <div id="app">
      <v-app>
        <div class="main-container">
          <v-main>
            <div class="main-content">
              <v-container>
                <v-row align="center" justify="center">
                  <v-col cols="6" align="center">
                    <#nested "form">
                  </v-col>
                </v-row>
              </v-container>
            </div>
          </v-main>
        </div>
      </v-app>
    </div>

    <script src="https://unpkg.com/vue@3/dist/vue.global.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/vuetify@3.0.5/dist/vuetify.min.js"></script>
    <#if properties.scripts?has_content>
      <#list properties.scripts?split(' ') as script>
        <script src="${url.resourcesPath}/${script}" type="text/javascript"></script>
      </#list>
    </#if>

    <script src="${url.resourcesPath}/particles/particles.js"></script>
    <script src="${url.resourcesPath}/particles/particles.js"></script>
    <script>
      particlesJS.load('particles-js', '${url.resourcesPath}/particles/particlesjs-config.json', function() {
        console.log('particles.js loaded - callback');
      });
    </script>
  </body>
</html>
</#macro>
