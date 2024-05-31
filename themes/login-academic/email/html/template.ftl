<#macro htmlEmailLayout>
  <html>
  <head>
    <link href="https://cdn.jsdelivr.net/npm/@mdi/font@4.x/css/materialdesignicons.min.css" rel="stylesheet"/>
    <link href="https://cdn.jsdelivr.net/npm/vuetify@3.0.5/dist/vuetify.min.css" rel="stylesheet"/>

    <style>
      .centered-content {
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        text-align: center;
        max-width: 700px;
        margin: 0 auto;
      }
      .red-button {
        background-color: red !important;
        color: white !important;
      }
    </style>
  </head>
  <body>
  <div id="app">
    <v-app>
      <v-container class="d-flex justify-center">
        <v-img
                src="${url.resourcesUrl}/img/academic-management-logo.png"
                aspect-ratio="1"
                max-width="800"
                max-height="200"
        ></v-img>
      </v-container>
      <v-main>
        <div class="centered-content">
          <#if realmName??>
            <v-alert color="success" icon="mdi-check-circle">
              <v-alert-title><#nested 'emailTitle2'></v-alert-title>
              <!-- <span><#nested 'emailTitle2'></span> -->
            </v-alert>
          </#if>

          <v-card class="elevation-3">
            <v-card-text>
              <#nested "text">
              <a href="${link}">
                <v-btn class="red-button" prepend-icon="mdi-check-circle">
                  <#nested "linkText">
                </v-btn>
              </a>
              <div class="additional-message">
                <#nested "customMessage">
              </div>
            </v-card-text>
          </v-card>
        </div>

      </v-main>
    </v-app>
  </div>

  <script src="https://unpkg.com/vue@3/dist/vue.global.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/vuetify@3.0.5/dist/vuetify.min.js"></script>
  <#if properties.scripts?has_content>
    <#list properties.scripts?split(' ') as script>
      <script src="${url.resourcesUrl}/${script}" type="text/javascript"></script>
    </#list>
  </#if>
  </body>
  </html>
</#macro>
