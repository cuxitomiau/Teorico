CREATE OR REPLACE PACKAGE PCK_CONSOLIDADO_TRAMITES IS

  TYPE TCURSOR IS REF CURSOR;

  PROCEDURE OBTENER_COMPROBANTE(VINU_ID_SOLICITUD   IN NUMBER,
                                VINU_ID_NUM_CLIENTE IN NUMBER,
                                VINU_TIPO_SOLICITUD IN NUMBER,
                                VIVC_TIPO_SALIDA    IN VARCHAR2,
                                VOCURSOR_XML        OUT TCURSOR);

  PROCEDURE OBTENER_PROCESOS_TRAMITE(VINU_TIPO_SOLICITUD IN NUMBER,
                                     VINU_ID_SOLICITUD   IN NUMBER,
                                     VOCURSOR_SALIDA     OUT TCURSOR);

  FUNCTION FN_PROCESO_HABILITADO(VINU_TIPO_PROCESO IN NUMBER,
                                 VINU_ID_SOLICITUD IN NUMBER) RETURN NUMBER;

  FUNCTION FN_FORMATEO_VALOR_NULOS(VIVC_TEXTO IN VARCHAR2) RETURN VARCHAR2;

  PROCEDURE TRAMITE_CAMBIO_FONDO(VINU_ID_SOLICITUD   IN NUMBER, -- ID SOLICITUD
                                 VINU_ID_NUM_CLIENTE IN NUMBER, -- ID DEL CLIENTE
                                 VINU_TIPO_SOLICITUD IN NUMBER, -- TIPO SOLICITUD
                                 VIVC_TIPO_SALIDA    IN VARCHAR2, -- R RESUMEN   D DETALLADA
                                 VOCUR_XML           OUT TCURSOR);

  PROCEDURE TRAMITE_DISTRIBUCION_FONDO(VINU_ID_SOLICITUD   IN NUMBER, -- ID SOLICITUD
                                       VINU_ID_NUM_CLIENTE IN NUMBER, -- ID DEL CLIENTE
                                       VINU_TIPO_SOLICITUD IN NUMBER, -- TIPO SOLICITUD
                                       VIVC_TIPO_SALIDA    IN VARCHAR2, -- R RESUMEN   D DETALLADA
                                       VOCUR_XML           OUT TCURSOR);

  PROCEDURE TRAMITE_TRASPASO_FUTURO(VINU_ID_SOLICITUD   IN NUMBER, -- ID SOLICITUD
                                    VINU_ID_NUM_CLIENTE IN NUMBER, -- ID DEL CLIENTE
                                    VINU_TIPO_SOLICITUD IN NUMBER, -- TIPO SOLICITUD
                                    VIVC_TIPO_SALIDA    IN VARCHAR2, -- R RESUMEN   D DETALLADA
                                    VOCUR_XML           OUT TCURSOR);

  PROCEDURE TRAMITE_TRASPASO_EGRESO(VINU_ID_SOLICITUD   IN NUMBER, -- ID SOLICITUD
                                    VINU_ID_NUM_CLIENTE IN NUMBER, -- ID DEL CLIENTE
                                    VINU_TIPO_SOLICITUD IN NUMBER, -- TIPO SOLICITUD
                                    VIVC_TIPO_SALIDA    IN VARCHAR2, -- R RESUMEN   D DETALLADA
                                    VOCUR_XML           OUT TCURSOR);

  PROCEDURE TRAMITE_TRASPASO_INGRESO(VINU_ID_SOLICITUD   IN NUMBER, -- ID SOLICITUD
                                     VINU_ID_NUM_CLIENTE IN NUMBER, -- ID DEL CLIENTE
                                     VINU_TIPO_SOLICITUD IN NUMBER, -- TIPO SOLICITUD
                                     VIVC_TIPO_SALIDA    IN VARCHAR2, -- R RESUMEN   D DETALLADA
                                     VOCUR_XML           OUT TCURSOR);

  PROCEDURE TRAMITE_DESCUENTO_APV_CAV(VINU_ID_SOLICITUD   IN NUMBER, -- ID SOLICITUD
                                      VINU_ID_NUM_CLIENTE IN NUMBER, -- ID DEL CLIENTE
                                      VINU_TIPO_SOLICITUD IN NUMBER, -- TIPO SOLICITUD
                                      VIVC_TIPO_SALIDA    IN VARCHAR2, -- R RESUMEN   D DETALLADA
                                      VOCUR_XML           OUT TCURSOR);

  PROCEDURE TRAMITE_CAMBIO_FONDO_FUTURO(VINU_ID_SOLICITUD   IN NUMBER, -- ID SOLICITUD
                                        VINU_ID_NUM_CLIENTE IN NUMBER, -- ID DEL CLIENTE
                                        VINU_TIPO_SOLICITUD IN NUMBER, -- TIPO SOLICITUD
                                        VIVC_TIPO_SALIDA    IN VARCHAR2, -- R RESUMEN   D DETALLADA
                                        VOCUR_XML           OUT TCURSOR);

  PROCEDURE TRAMITE_PAGO_EXCESO(VINU_ID_SOLICITUD   IN NUMBER, -- ID SOLICITUD
                                VINU_ID_NUM_CLIENTE IN NUMBER, -- ID DEL CLIENTE
                                VINU_TIPO_SOLICITUD IN NUMBER, -- TIPO SOLICITUD
                                VIVC_TIPO_SALIDA    IN VARCHAR2, -- R RESUMEN   D DETALLADA
                                VOCUR_XML           OUT TCURSOR);

  PROCEDURE TRAMITE_CAV_ACOGIDA_57_BIS(VINU_ID_SOLICITUD   IN NUMBER, -- ID SOLICITUD
                                       VINU_ID_NUM_CLIENTE IN NUMBER, -- ID DEL CLIENTE
                                       VINU_TIPO_SOLICITUD IN NUMBER, -- TIPO SOLICITUD
                                       VIVC_TIPO_SALIDA    IN VARCHAR2, -- R RESUMEN   D DETALLADA
                                       VOCUR_XML           OUT TCURSOR);

  PROCEDURE TRAMITE_RETIROS_CAV_APV_CDC(VINU_ID_SOLICITUD   IN NUMBER, -- ID SOLICITUD
                                        VINU_ID_NUM_CLIENTE IN NUMBER, -- ID DEL CLIENTE
                                        VINU_TIPO_SOLICITUD IN NUMBER, -- TIPO SOLICITUD
                                        VIVC_TIPO_SALIDA    IN VARCHAR2, -- R RESUMEN   D DETALLADA
                                        VOCUR_XML           OUT TCURSOR);

  PROCEDURE TRAMITE_TEC_EXT(VINU_ID_SOLICITUD     IN NUMBER, -- ID SOLICITUD
                            VINU_TIPO_SOLICITUD   IN NUMBER, -- TIPO SOLICITUD
                            VIVC_TIPO_COMPROBANTE IN VARCHAR2, --INTERNO, WEB
                            VIVC_TIPO_SALIDA      IN VARCHAR2, -- R RESUMEN   D DETALLADA
                            VOCUR_XML             OUT TCURSOR);

  PROCEDURE TRAMITE_SOLICITUD_PENSION(VINU_ID_SOLICITUD   IN NUMBER, -- ID SOLICITUD
                                      VINU_ID_NUM_CLIENTE IN NUMBER, -- ID DEL CLIENTE
                                      VINU_TIPO_SOLICITUD IN NUMBER, -- TIPO SOLICITUD
                                      VIVC_TIPO_SALIDA    IN VARCHAR2, -- R RESUMEN   D DETALLADA
                                      VOCUR_XML           OUT TCURSOR);

  PROCEDURE TRAMITE_SOLICITUD_PENSION_ADI(VINU_ID_SOLICITUD   IN NUMBER, -- ID SOLICITUD
                                          VINU_ID_NUM_CLIENTE IN NUMBER, -- ID DEL CLIENTE
                                          VINU_TIPO_SOLICITUD IN NUMBER, -- TIPO SOLICITUD
                                          VIVC_TIPO_SALIDA    IN VARCHAR2, -- R RESUMEN   D DETALLADA
                                          VOCUR_XML           OUT TCURSOR);

  PROCEDURE TRAMITE_SOLICITUD_OFERTA_SCOMP(VINU_ID_SOLICITUD   IN NUMBER, -- ID SOLICITUD
                                           VINU_ID_NUM_CLIENTE IN NUMBER, -- ID DEL CLIENTE
                                           VINU_TIPO_SOLICITUD IN NUMBER, -- TIPO SOLICITUD
                                           VIVC_TIPO_SALIDA    IN VARCHAR2, -- R RESUMEN   D DETALLADA
                                           VOCUR_XML           OUT TCURSOR);

  PROCEDURE TRAMITE_SOLICITUD_CERT_SALDO(VINU_ID_SOLICITUD   IN NUMBER, -- ID SOLICITUD
                                         VINU_ID_NUM_CLIENTE IN NUMBER, -- ID DEL CLIENTE
                                         VINU_TIPO_SOLICITUD IN NUMBER, -- TIPO SOLICITUD
                                         VIVC_TIPO_SALIDA    IN VARCHAR2, -- R RESUMEN   D DETALLADA
                                         VOCUR_XML           OUT TCURSOR);

  PROCEDURE TRAMITE_SELECCION_MODALIDAD(VINU_ID_SOLICITUD   IN NUMBER, -- ID SOLICITUD
                                        VINU_ID_NUM_CLIENTE IN NUMBER, -- ID DEL CLIENTE
                                        VINU_TIPO_SOLICITUD IN NUMBER, -- TIPO SOLICITUD
                                        VIVC_TIPO_SALIDA    IN VARCHAR2, -- R RESUMEN   D DETALLADA
                                        VOCUR_XML           OUT TCURSOR);

  PROCEDURE TRAMITE_CAMBIO_MODALIDAD(VINU_ID_SOLICITUD   IN NUMBER, -- ID SOLICITUD
                                     VINU_ID_NUM_CLIENTE IN NUMBER, -- ID DEL CLIENTE
                                     VINU_TIPO_SOLICITUD IN NUMBER, -- TIPO SOLICITUD
                                     VIVC_TIPO_SALIDA    IN VARCHAR2, -- R RESUMEN   D DETALLADA
                                     VOCUR_XML           OUT TCURSOR);

  PROCEDURE TRAMITE_DESAFILIACION(VINU_ID_SOLICITUD   IN NUMBER, -- ID SOLICITUD
                                  VINU_ID_NUM_CLIENTE IN NUMBER, -- ID DEL CLIENTE
                                  VINU_TIPO_SOLICITUD IN NUMBER, -- TIPO SOLICITUD
                                  VIVC_TIPO_SALIDA    IN VARCHAR2, -- R RESUMEN   D DETALLADA
                                  VOCUR_XML           OUT TCURSOR);
  PROCEDURE TRAMITE_DECISION_MODALIDAD(VINU_ID_SOLICITUD   IN NUMBER, -- ID SOLICITUD
                                       VINU_ID_NUM_CLIENTE IN NUMBER, -- ID DEL CLIENTE
                                       VINU_TIPO_SOLICITUD IN NUMBER, -- TIPO SOLICITUD
                                       VIVC_TIPO_SALIDA    IN VARCHAR2, -- R RESUMEN   D DETALLADA
                                       VOCUR_XML           OUT TCURSOR);
  PROCEDURE TRAMITE_APV_IN(VINU_ID_SOLICITUD   IN NUMBER, -- ID SOLICITUD
                           VINU_ID_NUM_CLIENTE IN NUMBER, -- ID DEL CLIENTE
                           VINU_TIPO_SOLICITUD IN NUMBER, -- TIPO SOLICITUD
                           VIVC_TIPO_SALIDA    IN VARCHAR2, -- R RESUMEN   D DETALLADA
                           VOCUR_XML           OUT TCURSOR);
  PROCEDURE TRAMITE_APV_OUT(VINU_ID_SOLICITUD   IN NUMBER, -- ID SOLICITUD
                            VINU_ID_NUM_CLIENTE IN NUMBER, -- ID DEL CLIENTE
                            VINU_TIPO_SOLICITUD IN NUMBER, -- TIPO SOLICITUD
                            VIVC_TIPO_SALIDA    IN VARCHAR2, -- R RESUMEN   D DETALLADA
                            VOCUR_XML           OUT TCURSOR);
  PROCEDURE TRAMITE_INCORPORACION_CCO(VINU_ID_SOLICITUD   IN NUMBER, -- ID SOLICITUD
                                      VINU_ID_NUM_CLIENTE IN NUMBER, -- ID DEL CLIENTE
                                      VINU_TIPO_SOLICITUD IN NUMBER, -- TIPO SOLICITUD
                                      VIVC_TIPO_SALIDA    IN VARCHAR2, -- R RESUMEN   D DETALLADA
                                      VOCUR_XML           OUT TCURSOR);
  PROCEDURE TRAMITE_CLAVE_SEGURA(VINU_ID_SOLICITUD   IN NUMBER, -- ID SOLICITUD
                                 VINU_ID_NUM_CLIENTE IN NUMBER, -- ID DEL CLIENTE
                                 VINU_TIPO_SOLICITUD IN NUMBER, -- TIPO SOLICITUD
                                 VIVC_TIPO_SALIDA    IN VARCHAR2, -- R RESUMEN   D DETALLADA
                                 VOCUR_XML           OUT TCURSOR);
  PROCEDURE TRAMITE_BALANCEO_SALDO(VINU_ID_SOLICITUD   IN NUMBER, -- ID SOLICITUD
                                   VINU_ID_NUM_CLIENTE IN NUMBER, -- ID DEL CLIENTE
                                   VINU_TIPO_SOLICITUD IN NUMBER, -- TIPO SOLICITUD
                                   VIVC_TIPO_SALIDA    IN VARCHAR2, -- R RESUMEN   D DETALLADA
                                   VOCUR_XML           OUT TCURSOR);

  PROCEDURE PROCESO_COMPROBANTE_ING_BASE(VINU_ID_SOLICITUD   IN NUMBER, -- ID SOLICITUD
                                         VINU_ID_NUM_CLIENTE IN NUMBER, -- ID DEL CLIENTE
                                         VINU_TIPO_SOLICITUD IN NUMBER, -- TIPO SOLICITUD
                                         VIVC_TIPO_SALIDA    IN VARCHAR2, -- R RESUMEN   D DETALLADA
                                         VOCUR_XML           OUT TCURSOR);
  PROCEDURE TRAMITE_RECLAMO_1733(VINU_ID_SOLICITUD   IN NUMBER, -- ID SOLICITUD
                                 VINU_ID_NUM_CLIENTE IN NUMBER, -- ID DEL CLIENTE
                                 VINU_TIPO_SOLICITUD IN NUMBER, -- TIPO SOLICITUD
                                 VIVC_TIPO_SALIDA    IN VARCHAR2, -- R RESUMEN   D DETALLADA
                                 VOCUR_XML           OUT TCURSOR);
  PROCEDURE TRAMITE_INDEMNIZACION(VINU_ID_SOLICITUD   IN NUMBER, -- ID SOLICITUD
                                  VINU_ID_NUM_CLIENTE IN NUMBER, -- ID DEL CLIENTE
                                  VINU_TIPO_SOLICITUD IN NUMBER, -- TIPO SOLICITUD
                                  VIVC_TIPO_SALIDA    IN VARCHAR2, -- R RESUMEN   D DETALLADA
                                  VOCUR_XML           OUT TCURSOR);

  PROCEDURE TRAMITE_MANDATO_DEPOSITO(VINU_ID_SOLICITUD   IN NUMBER, -- ID SOLICITUD
                                     VINU_ID_NUM_CLIENTE IN NUMBER, -- ID DEL CLIENTE
                                     VINU_TIPO_SOLICITUD IN NUMBER, -- TIPO SOLICITUD
                                     VIVC_TIPO_SALIDA    IN VARCHAR2, -- R RESUMEN   D DETALLADA
                                     VOCUR_XML           OUT TCURSOR);

  PROCEDURE OBTENER_DIR_FONO_EMAIL_CLI(VINU_ID_NUM_CLIENTE IN NUMBER,
                                       VOVC_DIRECCION      OUT VARCHAR2,
                                       VOVC_REGION         OUT VARCHAR2,
                                       VOVC_COMUNA         OUT VARCHAR2,
                                       VOVC_TELEFONO       OUT VARCHAR2,
                                       VOVC_EMAIL          OUT VARCHAR2,
                                       VOVC_ID_CLIENTE     OUT VARCHAR2);

  PROCEDURE TRAMITE_MANDATO_PAC(VINU_ID_SOLICITUD   IN NUMBER, -- ID SOLICITUD
                                VINU_ID_NUM_CLIENTE IN NUMBER, -- ID DEL CLIENTE
                                VINU_TIPO_SOLICITUD IN NUMBER, -- TIPO SOLICITUD
                                VIVC_TIPO_SALIDA    IN VARCHAR2, -- R RESUMEN   D DETALLADA
                                VOCUR_XML           OUT TCURSOR);
  --***********************************************************************
  --  NOMBRE              : TRAMITE_BOTON_DE_PAGO
  --  TIPO OBJETO         : PROCEDIMIENTO
  --  TIPO RETORNO        : XML
  --  DESCRIPCION         : CREA XML UTILIZADO PARA RELLENAR CAMPOS EN COMPROBANTE DE AHORROFACIL
  --  CREADO POR          : RICARDO TORREBLANCA
  --  FECHA CREACION      : 22-11-2018
  --***********************************************************************
  PROCEDURE TRAMITE_BOTON_DE_PAGO(VINU_ID_SOLICITUD   IN NUMBER, -- ID SOLICITUD
                                  VINU_ID_NUM_CLIENTE IN NUMBER, -- ID DEL CLIENTE
                                  VINU_TIPO_SOLICITUD IN NUMBER, -- TIPO SOLICITUD
                                  VIVC_TIPO_SALIDA    IN VARCHAR2, -- R RESUMEN   D DETALLADA
                                  VOCUR_XML           OUT TCURSOR);

  PROCEDURE TRAMITE_APERTURA_CAV(VINU_ID_SOLICITUD   IN NUMBER, -- ID SOLICITUD
                                 VINU_ID_NUM_CLIENTE IN NUMBER, -- ID DEL CLIENTE
                                 VINU_TIPO_SOLICITUD IN NUMBER, -- TIPO SOLICITUD
                                 VIVC_TIPO_SALIDA    IN VARCHAR2, -- R RESUMEN   D DETALLADA
                                 VOCUR_XML           OUT TCURSOR);

  PROCEDURE TRAMITE_TRASPASO_INGRESO_CAV(VINU_ID_SOLICITUD   IN NUMBER, -- ID SOLICITUD
                                         VINU_ID_NUM_CLIENTE IN NUMBER, -- ID DEL CLIENTE
                                         VINU_TIPO_SOLICITUD IN NUMBER, -- TIPO SOLICITUD
                                         VIVC_TIPO_SALIDA    IN VARCHAR2, -- R RESUMEN   D DETALLADA
                                         VOCUR_XML           OUT TCURSOR);

  PROCEDURE TRAMITE_TRASPASO_EGRESO_CAV(VINU_ID_SOLICITUD   IN NUMBER, -- ID SOLICITUD
                                        VINU_ID_NUM_CLIENTE IN NUMBER, -- ID DEL CLIENTE
                                        VINU_TIPO_SOLICITUD IN NUMBER, -- TIPO SOLICITUD
                                        VIVC_TIPO_SALIDA    IN VARCHAR2, -- R RESUMEN   D DETALLADA
                                        VOCUR_XML           OUT TCURSOR);

  --***********************************************************************
  --  NOMBRE              : ENVIAR_CORREO_SOLINGCAV
  --  NEGOCIO             : CLIENTE
  --  TIPO OBJETO         : PROCEDIMIENTO
  --  TIPO RETORNO        : N/A
  --  DESCRIPCION         : ENVIA CORREO ELECTRONICO A USUARIOS, INDICADOLE LAS SOLICITUDES INGRESADAS VIA WEB (TECAV)
  --  PARAMETROS          :
  --  CREADO POR          : SEBASTIAN JIMENEZ (RYC) 1554
  --  FECHA CREACION      : 15-12-2015
  --***********************************************************************
  PROCEDURE ENVIAR_CORREO_SOLINGCAV;

  --***********************************************************************
  --  NOMBRE              : ENVIAR_CORREO_TECAVNOTIF_WEB
  --  NEGOCIO             : CLIENTE
  --  TIPO OBJETO         : PROCEDIMIENTO
  --  TIPO RETORNO        : N/A
  --  DESCRIPCION         : ENVIA CORREO ELECTRONICO A USUARIOS, AQUELLAS NOTIFICADAS 10  DIAS CORRIDOS VIA WEB.
  --  PARAMETROS          :
  --  CREADO POR          : SEBASTIAN JIMENEZ (RYC) 1554
  --  FECHA CREACION      : 15-12-2015
  --***********************************************************************

  PROCEDURE ENVIAR_CORREO_TECAVNOTIF_WEB;

  --***********************************************************************
  --  NOMBRE              : ENVIAR_CORREO_TECAVNOTIF_WEB
  --  NEGOCIO             : CLIENTE
  --  TIPO OBJETO         : PROCEDIMIENTO
  --  TIPO RETORNO        : N/A
  --  DESCRIPCION         : ENVIA CORREO ELECTRONICO A USUARIOS, AQUELLAS NOTIFICADAS 20  DIAS CORRIDOS POR FORMULARIO.
  --  PARAMETROS          :
  --  CREADO POR          : SEBASTIAN JIMENEZ (RYC) 1554
  --  FECHA CREACION      : 15-12-2015
  --***********************************************************************

  PROCEDURE ENVIAR_CORREO_TECAVNOTIF_FORMU;

  PROCEDURE TRAMITE_AUT_PFG(VINU_ID_SOLICITUD   IN NUMBER, -- ID SOLICITUD
                            VINU_ID_NUM_CLIENTE IN NUMBER, -- ID DEL CLIENTE
                            VINU_TIPO_SOLICITUD IN NUMBER, -- TIPO SOLICITUD
                            VIVC_TIPO_SALIDA    IN VARCHAR2, -- R RESUMEN   D DETALLADA
                            VOCUR_XML           OUT TCURSOR);
  --***********************************************************************
  --  NOMBRE              : TRAMITE_SOLICITUD_BR
  --  NEGOCIO             : CLIENTE
  --  TIPO OBJETO         : PROCEDIMIENTO
  --  TIPO RETORNO        : N/A
  --  DESCRIPCION         : DEVUELVE UN XML CON LA INFORMACION CONTENIDA EN SOLICITUDES.SOLICITUD, EL CAMPO CLOB
  --                       ESTE XML CONTIENE LA INFORMACION DE LA SOLICITUD BR.
  --  PARAMETROS          : VINU_ID_SOLICITUD   IN  NUMBER  : NUM SOLICITUD DE BR. SOLICITUDES.SOLICITUD.FOLIO =BONOS.SOLICITUD_BONO.CORRELATIVO_SOLICITUD
  --                        VINU_ID_NUM_CLIENTE IN  NUMBER  : NUM_CLIENTE
  --                        VINU_TIPO_SOLICITUD IN  NUMBER  : TIPO DE SOLICITUD
  --                        VIVC_TIPO_SALIDA    IN  VARCHAR2: D: DETALLE, X:OTROS
  --                         VOCUR_XML  : SALIDA XML
  --  CREADO POR          : JUAN JEREZ (RYC) 2203
  --  FECHA CREACION      : 15-02-2017
  --***********************************************************************
  /*PROCEDURE TRAMITE_SOLICITUD_BR (VINU_ID_SOLICITUD   IN  NUMBER,
  VINU_ID_NUM_CLIENTE IN  NUMBER,
  VINU_TIPO_SOLICITUD IN  NUMBER,
  VIVC_TIPO_SALIDA    IN  VARCHAR2,
  VOCUR_XML           OUT TCURSOR); */

  PROCEDURE TRAMITE_EXENCION_COT(VINU_ID_SOLICITUD   IN NUMBER, -- ID SOLICITUD
                                 VINU_ID_NUM_CLIENTE IN NUMBER, -- ID DEL CLIENTE
                                 VINU_TIPO_SOLICITUD IN NUMBER, -- TIPO SOLICITUD
                                 VIVC_TIPO_SALIDA    IN VARCHAR2, -- R RESUMEN   D DETALLADA
                                 VOCUR_XML           OUT TCURSOR);

  PROCEDURE RETORNA_INFO_EXENCION(VINU_ID_SOLICITUD IN NUMBER,
                                  VOCU_SALIDA       OUT TCURSOR);

  PROCEDURE TRAMITE_RETIROS_UNICO_EX(VINU_ID_SOLICITUD   IN NUMBER, -- ID SOLICITUD
                                        VINU_ID_NUM_CLIENTE IN NUMBER, -- ID DEL CLIENTE
                                        VINU_TIPO_SOLICITUD IN NUMBER, -- TIPO SOLICITUD
                                        VIVC_TIPO_SALIDA    IN VARCHAR2, -- R RESUMEN   D DETALLADA
                                        VOCUR_XML           OUT TCURSOR);

END PCK_CONSOLIDADO_TRAMITES;
/
CREATE OR REPLACE PACKAGE BODY PCK_CONSOLIDADO_TRAMITES IS

  PROCEDURE OBTENER_COMPROBANTE(VINU_ID_SOLICITUD   IN NUMBER,
                                VINU_ID_NUM_CLIENTE IN NUMBER,
                                VINU_TIPO_SOLICITUD IN NUMBER,
                                VIVC_TIPO_SALIDA    IN VARCHAR2,
                                VOCURSOR_XML        OUT TCURSOR) 
        AS
    NU_ID_CLIENTE       NUMBER(12) := 0;
    VC_TIPO_RPT_INTERNO VARCHAR2(7) := 'INTERNO';
    VC_TIPO_RPT_WEB     VARCHAR2(3) := 'WEB';
  BEGIN

    IF VINU_ID_NUM_CLIENTE IS NULL OR VINU_ID_NUM_CLIENTE = 0 THEN
      BEGIN
        SELECT C.ID_NUM_CLIENTE INTO NU_ID_CLIENTE
          FROM SOLICITUDES.SOLICITUD T
          LEFT JOIN CLIENTE.IDENTIFICACION_CLIENTE C ON T.RUT_AFECTADO = C.RUT
         WHERE T.ID_SOLICITUD = VINU_ID_SOLICITUD;
      EXCEPTION
        WHEN NO_DATA_FOUND THEN
          OPEN VOCURSOR_XML FOR
            SELECT '' AS XML FROM DUAL;
          RETURN; -- Salimos de la función, no se encontró cliente asociado a solicitud
      END;
    ELSE
      NU_ID_CLIENTE := VINU_ID_NUM_CLIENTE;
    END IF;

    IF VINU_TIPO_SOLICITUD = 31 THEN
      TRAMITE_CAMBIO_FONDO(VINU_ID_SOLICITUD,
                           NU_ID_CLIENTE,
                           VINU_TIPO_SOLICITUD,
                           VIVC_TIPO_SALIDA,
                           VOCURSOR_XML);
    ELSIF VINU_TIPO_SOLICITUD = 32 THEN
      TRAMITE_DISTRIBUCION_FONDO(VINU_ID_SOLICITUD,
                                 NU_ID_CLIENTE,
                                 VINU_TIPO_SOLICITUD,
                                 VIVC_TIPO_SALIDA,
                                 VOCURSOR_XML);
    ELSIF VINU_TIPO_SOLICITUD = 83 THEN
      TRAMITE_TRASPASO_EGRESO(VINU_ID_SOLICITUD,
                              NU_ID_CLIENTE,
                              VINU_TIPO_SOLICITUD,
                              VIVC_TIPO_SALIDA,
                              VOCURSOR_XML);
    ELSIF VINU_TIPO_SOLICITUD = 85 THEN
      TRAMITE_TRASPASO_INGRESO(VINU_ID_SOLICITUD,
                               NU_ID_CLIENTE,
                               VINU_TIPO_SOLICITUD,
                               VIVC_TIPO_SALIDA,
                               VOCURSOR_XML);
    ELSIF VINU_TIPO_SOLICITUD = 77 THEN
      TRAMITE_DESCUENTO_APV_CAV(VINU_ID_SOLICITUD,
                                NU_ID_CLIENTE,
                                VINU_TIPO_SOLICITUD,
                                VIVC_TIPO_SALIDA,
                                VOCURSOR_XML);

    ELSIF VINU_TIPO_SOLICITUD = 78 THEN
      TRAMITE_DESCUENTO_APV_CAV(VINU_ID_SOLICITUD,
                                NU_ID_CLIENTE,
                                VINU_TIPO_SOLICITUD,
                                VIVC_TIPO_SALIDA,
                                VOCURSOR_XML);
    ELSIF VINU_TIPO_SOLICITUD = 109 THEN
      TRAMITE_PAGO_EXCESO(VINU_ID_SOLICITUD,
                          NU_ID_CLIENTE,
                          VINU_TIPO_SOLICITUD,
                          VIVC_TIPO_SALIDA,
                          VOCURSOR_XML);
    ELSIF VINU_TIPO_SOLICITUD = 87 THEN
      TRAMITE_RETIROS_CAV_APV_CDC(VINU_ID_SOLICITUD,
                                  NU_ID_CLIENTE,
                                  VINU_TIPO_SOLICITUD,
                                  VIVC_TIPO_SALIDA,
                                  VOCURSOR_XML);
    ELSIF VINU_TIPO_SOLICITUD = 88 THEN
      TRAMITE_RETIROS_CAV_APV_CDC(VINU_ID_SOLICITUD,
                                  NU_ID_CLIENTE,
                                  VINU_TIPO_SOLICITUD,
                                  VIVC_TIPO_SALIDA,
                                  VOCURSOR_XML);
    ELSIF VINU_TIPO_SOLICITUD = 89 THEN
      TRAMITE_RETIROS_CAV_APV_CDC(VINU_ID_SOLICITUD,
                                  NU_ID_CLIENTE,
                                  VINU_TIPO_SOLICITUD,
                                  VIVC_TIPO_SALIDA,
                                  VOCURSOR_XML);
    ELSIF VINU_TIPO_SOLICITUD = 90 THEN
      TRAMITE_TEC_EXT(VINU_ID_SOLICITUD,VINU_TIPO_SOLICITUD,VC_TIPO_RPT_INTERNO,VIVC_TIPO_SALIDA,VOCURSOR_XML);
    ELSIF VINU_TIPO_SOLICITUD = 115 THEN
      TRAMITE_CAV_ACOGIDA_57_BIS(VINU_ID_SOLICITUD,
                                 NU_ID_CLIENTE,
                                 VINU_TIPO_SOLICITUD,
                                 VIVC_TIPO_SALIDA,
                                 VOCURSOR_XML);
    ELSIF VINU_TIPO_SOLICITUD = 122 THEN
      -- MODIFICADO: luis Arredondo
      TRAMITE_TRASPASO_FUTURO(VINU_ID_SOLICITUD   => VINU_ID_SOLICITUD,
                              VINU_ID_NUM_CLIENTE => NU_ID_CLIENTE,
                              VINU_TIPO_SOLICITUD => VINU_TIPO_SOLICITUD,
                              VIVC_TIPO_SALIDA    => VIVC_TIPO_SALIDA,
                              VOCUR_XML           => VOCURSOR_XML);
    ELSIF VINU_TIPO_SOLICITUD = 124 THEN
      TRAMITE_SOLICITUD_PENSION(VINU_ID_SOLICITUD,
                                NU_ID_CLIENTE,
                                VINU_TIPO_SOLICITUD,
                                VIVC_TIPO_SALIDA,
                                VOCURSOR_XML);
    ELSIF VINU_TIPO_SOLICITUD = 125 THEN
      TRAMITE_SOLICITUD_PENSION(VINU_ID_SOLICITUD,
                                NU_ID_CLIENTE,
                                VINU_TIPO_SOLICITUD,
                                VIVC_TIPO_SALIDA,
                                VOCURSOR_XML);
    ELSIF VINU_TIPO_SOLICITUD = 126 THEN
      TRAMITE_SOLICITUD_PENSION(VINU_ID_SOLICITUD,
                                NU_ID_CLIENTE,
                                VINU_TIPO_SOLICITUD,
                                VIVC_TIPO_SALIDA,
                                VOCURSOR_XML);
    ELSIF VINU_TIPO_SOLICITUD = 127 THEN
      TRAMITE_SOLICITUD_PENSION(VINU_ID_SOLICITUD,
                                NU_ID_CLIENTE,
                                VINU_TIPO_SOLICITUD,
                                VIVC_TIPO_SALIDA,
                                VOCURSOR_XML);
    ELSIF VINU_TIPO_SOLICITUD = 128 THEN
      TRAMITE_SOLICITUD_PENSION(VINU_ID_SOLICITUD,
                                NU_ID_CLIENTE,
                                VINU_TIPO_SOLICITUD,
                                VIVC_TIPO_SALIDA,
                                VOCURSOR_XML);
    ELSIF VINU_TIPO_SOLICITUD = 14 THEN
      TRAMITE_SOLICITUD_PENSION_ADI(VINU_ID_SOLICITUD,
                                    NU_ID_CLIENTE,
                                    VINU_TIPO_SOLICITUD,
                                    VIVC_TIPO_SALIDA,
                                    VOCURSOR_XML);
    ELSIF VINU_TIPO_SOLICITUD = 15 THEN
      TRAMITE_SOLICITUD_PENSION_ADI(VINU_ID_SOLICITUD,
                                    NU_ID_CLIENTE,
                                    VINU_TIPO_SOLICITUD,
                                    VIVC_TIPO_SALIDA,
                                    VOCURSOR_XML);
    ELSIF VINU_TIPO_SOLICITUD = 16 THEN
      TRAMITE_SOLICITUD_PENSION_ADI(VINU_ID_SOLICITUD,
                                    NU_ID_CLIENTE,
                                    VINU_TIPO_SOLICITUD,
                                    VIVC_TIPO_SALIDA,
                                    VOCURSOR_XML);
    ELSIF VINU_TIPO_SOLICITUD = 132 THEN
      TRAMITE_SELECCION_MODALIDAD(VINU_ID_SOLICITUD,
                                  NU_ID_CLIENTE,
                                  VINU_TIPO_SOLICITUD,
                                  VIVC_TIPO_SALIDA,
                                  VOCURSOR_XML);
    ELSIF VINU_TIPO_SOLICITUD = 13 THEN
      TRAMITE_DECISION_MODALIDAD(VINU_ID_SOLICITUD,
                                 NU_ID_CLIENTE,
                                 VINU_TIPO_SOLICITUD,
                                 VIVC_TIPO_SALIDA,
                                 VOCURSOR_XML);
    ELSIF VINU_TIPO_SOLICITUD = 131 THEN
      TRAMITE_DESAFILIACION(VINU_ID_SOLICITUD,
                            NU_ID_CLIENTE,
                            VINU_TIPO_SOLICITUD,
                            VIVC_TIPO_SALIDA,
                            VOCURSOR_XML);
    ELSIF VINU_TIPO_SOLICITUD = 67 THEN
      TRAMITE_APV_IN(VINU_ID_SOLICITUD,
                     NU_ID_CLIENTE,
                     VINU_TIPO_SOLICITUD,
                     VIVC_TIPO_SALIDA,
                     VOCURSOR_XML);
    ELSIF VINU_TIPO_SOLICITUD = 112 THEN
      TRAMITE_APV_OUT(VINU_ID_SOLICITUD,
                      NU_ID_CLIENTE,
                      VINU_TIPO_SOLICITUD,
                      VIVC_TIPO_SALIDA,
                      VOCURSOR_XML);
    ELSIF VINU_TIPO_SOLICITUD = 37 THEN
      TRAMITE_INCORPORACION_CCO(VINU_ID_SOLICITUD,
                                NU_ID_CLIENTE,
                                VINU_TIPO_SOLICITUD,
                                VIVC_TIPO_SALIDA,
                                VOCURSOR_XML);
    ELSIF VINU_TIPO_SOLICITUD = 167 THEN
      TRAMITE_EXENCION_COT(VINU_ID_SOLICITUD,
                           NU_ID_CLIENTE,
                           VINU_TIPO_SOLICITUD,
                           VIVC_TIPO_SALIDA,
                           VOCURSOR_XML);
    ELSIF VINU_TIPO_SOLICITUD = 33 THEN
      TRAMITE_CAMBIO_FONDO_FUTURO(VINU_ID_SOLICITUD,
                                  NU_ID_CLIENTE,
                                  VINU_TIPO_SOLICITUD,
                                  VIVC_TIPO_SALIDA,
                                  VOCURSOR_XML);
    ELSIF VINU_TIPO_SOLICITUD = 129 THEN
      TRAMITE_CLAVE_SEGURA(VINU_ID_SOLICITUD,
                           NU_ID_CLIENTE,
                           VINU_TIPO_SOLICITUD,
                           VIVC_TIPO_SALIDA,
                           VOCURSOR_XML);
    ELSIF VINU_TIPO_SOLICITUD = 500 THEN
      TRAMITE_SOLICITUD_CERT_SALDO(VINU_ID_SOLICITUD,
                                   NU_ID_CLIENTE,
                                   VINU_TIPO_SOLICITUD,
                                   VIVC_TIPO_SALIDA,
                                   VOCURSOR_XML);
    ELSIF VINU_TIPO_SOLICITUD = 34 THEN
      TRAMITE_BALANCEO_SALDO(VINU_ID_SOLICITUD,
                             NU_ID_CLIENTE,
                             VINU_TIPO_SOLICITUD,
                             VIVC_TIPO_SALIDA,
                             VOCURSOR_XML);
    ELSIF VINU_TIPO_SOLICITUD = 501 THEN
      PROCESO_COMPROBANTE_ING_BASE(VINU_ID_SOLICITUD,
                                   NU_ID_CLIENTE,
                                   VINU_TIPO_SOLICITUD,
                                   VIVC_TIPO_SALIDA,
                                   VOCURSOR_XML);
    ELSIF VINU_TIPO_SOLICITUD = 144 THEN
      TRAMITE_RECLAMO_1733(VINU_ID_SOLICITUD,
                           NU_ID_CLIENTE,
                           VINU_TIPO_SOLICITUD,
                           VIVC_TIPO_SALIDA,
                           VOCURSOR_XML);
    ELSIF VINU_TIPO_SOLICITUD = 39 THEN
      TRAMITE_INDEMNIZACION(VINU_ID_SOLICITUD,
                            NU_ID_CLIENTE,
                            VINU_TIPO_SOLICITUD,
                            VIVC_TIPO_SALIDA,
                            VOCURSOR_XML);
    ELSIF VINU_TIPO_SOLICITUD = 99 THEN
      TRAMITE_MANDATO_DEPOSITO(VINU_ID_SOLICITUD,
                               NU_ID_CLIENTE,
                               VINU_TIPO_SOLICITUD,
                               VIVC_TIPO_SALIDA,
                               VOCURSOR_XML);
    ELSIF VINU_TIPO_SOLICITUD = 145 THEN
      TRAMITE_MANDATO_PAC(VINU_ID_SOLICITUD,
                          NU_ID_CLIENTE,
                          VINU_TIPO_SOLICITUD,
                          VIVC_TIPO_SALIDA,
                          VOCURSOR_XML);
    ELSIF VINU_TIPO_SOLICITUD = 35 THEN
      TRAMITE_APERTURA_CAV(VINU_ID_SOLICITUD,
                           NU_ID_CLIENTE,
                           VINU_TIPO_SOLICITUD,
                           VIVC_TIPO_SALIDA,
                           VOCURSOR_XML);
    ELSIF VINU_TIPO_SOLICITUD = 152 THEN
      TRAMITE_TRASPASO_INGRESO_CAV(VINU_ID_SOLICITUD,
                                   NU_ID_CLIENTE,
                                   VINU_TIPO_SOLICITUD,
                                   VIVC_TIPO_SALIDA,
                                   VOCURSOR_XML);
    ELSIF VINU_TIPO_SOLICITUD = 153 THEN
      TRAMITE_TRASPASO_EGRESO_CAV(VINU_ID_SOLICITUD,
                                  NU_ID_CLIENTE,
                                  VINU_TIPO_SOLICITUD,
                                  VIVC_TIPO_SALIDA,
                                  VOCURSOR_XML);
    ELSIF VINU_TIPO_SOLICITUD = 164 THEN
      TRAMITE_AUT_PFG(VINU_ID_SOLICITUD,
                      NU_ID_CLIENTE,
                      VINU_TIPO_SOLICITUD,
                      VIVC_TIPO_SALIDA,
                      VOCURSOR_XML);
    ELSIF VINU_TIPO_SOLICITUD = 166 THEN
      TRAMITE_BOTON_DE_PAGO(VINU_ID_SOLICITUD,
                            NU_ID_CLIENTE,
                            VINU_TIPO_SOLICITUD,
                            VIVC_TIPO_SALIDA,
                            VOCURSOR_XML);
    ELSIF VINU_TIPO_SOLICITUD = 168 THEN
      TRAMITE_BOTON_DE_PAGO(VINU_ID_SOLICITUD,
                            NU_ID_CLIENTE,
                            VINU_TIPO_SOLICITUD,
                            VIVC_TIPO_SALIDA,
                            VOCURSOR_XML);
  ELSIF VINU_TIPO_SOLICITUD IN (173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,191,200,201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216,217,218,220,192,219,194,222,
								300,301,302,303,304,305,306,307,308,309,310,311,312,313,314,315,316,317,318,319,320,322,323,324,325,326,327,328,329,330,331,332,333,334,335,336,337,338,339,340,341,342,343,
								344,345,346,347,348,249,350,351,352,353,354,355,356,357)
  THEN
    TRAMITE_RETIROS_UNICO_EX(VINU_ID_SOLICITUD,
                                  NU_ID_CLIENTE,
                                  VINU_TIPO_SOLICITUD,
                                  VIVC_TIPO_SALIDA,
                                  VOCURSOR_XML);
      --/****** 2203 - DREN 25 - JJ RYC CONSULTORES - INICIO
      /*ELSIF VINU_TIPO_SOLICITUD = 136 THEN
      TRAMITE_SOLICITUD_BR(VINU_ID_SOLICITUD,
                      NU_ID_CLIENTE,
                      VINU_TIPO_SOLICITUD,
                      VIVC_TIPO_SALIDA,
                      VOCURSOR_XML); */
      --/****** 2203 - DREN 25 - JJ RYC CONSULTORES - TERMNO
    ELSE
      OPEN VOCURSOR_XML FOR
        SELECT '' AS XML FROM DUAL;
    END IF;

  END OBTENER_COMPROBANTE;

  PROCEDURE OBTENER_PROCESOS_TRAMITE(VINU_TIPO_SOLICITUD IN NUMBER,
                                     VINU_ID_SOLICITUD   IN NUMBER,
                                     VOCURSOR_SALIDA     OUT TCURSOR) AS
  BEGIN
    OPEN VOCURSOR_SALIDA FOR
      SELECT P.TIPO_PROCESO_CONSOLIDADO AS TIPO_PROCESO_CONSOLIDADO,
             P.TIPO_SOLICITUD AS TIPO_SOLICITUD,
             P.NOMBRE_PROCESO AS NOMBRE_PROCESO,
             P.ORDEN AS ORDEN,
             P.VIGENCIA AS VIGENCIA,
             FN_PROCESO_HABILITADO(P.TIPO_PROCESO_CONSOLIDADO,
                                   VINU_ID_SOLICITUD) AS PROCESO,
             NVL(P.ID_IMPRESION, 0) AS ID_IMPRESION,
             VINU_ID_SOLICITUD AS ID_SOLICITUD
        FROM TIPO_PROCESO_CONSOLIDADO P
       WHERE P.TIPO_SOLICITUD = VINU_TIPO_SOLICITUD
         AND P.VIGENCIA = 1 -- VIGENTE
       ORDER BY P.ORDEN ASC;

  END OBTENER_PROCESOS_TRAMITE;

  FUNCTION FN_PROCESO_HABILITADO(VINU_TIPO_PROCESO IN NUMBER,
                                 VINU_ID_SOLICITUD IN NUMBER) RETURN NUMBER AS
    VAR_RESPUESTA NUMBER;
    VAR_SQL       VARCHAR2(1000);
    VAR_FUNCION   VARCHAR2(1000);
  BEGIN
    BEGIN
      SELECT TP.FUNCION_VALIDACION
        INTO VAR_FUNCION
        FROM TIPO_PROCESO_CONSOLIDADO TP
       WHERE TP.TIPO_PROCESO_CONSOLIDADO = VINU_TIPO_PROCESO;
    EXCEPTION
      WHEN NO_DATA_FOUND THEN
        RETURN 0;
    END;

    IF VAR_FUNCION != '0' THEN
      VAR_SQL := 'SELECT ' || VAR_FUNCION || '(' ||
                 TO_CHAR(VINU_ID_SOLICITUD) || ') FROM DUAL';

      EXECUTE IMMEDIATE VAR_SQL
        INTO VAR_RESPUESTA;

      IF VAR_RESPUESTA > 0 THEN
        RETURN 1;
      ELSE
        RETURN 0;
      END IF;
    ELSE
      RETURN 0;
    END IF;
  END FN_PROCESO_HABILITADO;

  FUNCTION FN_FORMATEO_VALOR_NULOS(VIVC_TEXTO IN VARCHAR2) RETURN VARCHAR2 AS
    VAR_RESULT VARCHAR2(500);
  BEGIN
    IF VIVC_TEXTO IS NULL THEN
      VAR_RESULT := '--';
    ELSIF VIVC_TEXTO = '0' THEN
      VAR_RESULT := '--';
    ELSE
      VAR_RESULT := VIVC_TEXTO;
    END IF;

    RETURN VAR_RESULT;

  END FN_FORMATEO_VALOR_NULOS;

  PROCEDURE TRAMITE_CAMBIO_FONDO(VINU_ID_SOLICITUD   IN NUMBER, -- ID SOLICITUD
                                 VINU_ID_NUM_CLIENTE IN NUMBER, -- ID DEL CLIENTE
                                 VINU_TIPO_SOLICITUD IN NUMBER, -- TIPO SOLICITUD
                                 VIVC_TIPO_SALIDA    IN VARCHAR2, -- R RESUMEN   D DETALLADA
                                 VOCUR_XML           OUT TCURSOR) AS
    VAR_XML      CLOB;
    VAR_CURSOR   TCURSOR;
    VAR_CONTADOR NUMBER;
    -- INFO AFILIADO
    VAR_NOMBRE     VARCHAR2(80);
    VAR_ID_PERSONA VARCHAR(15);
    VAR_DIRECCION  VARCHAR2(200);
    VAR_REGION     VARCHAR2(80);
    VAR_COMUNA     VARCHAR2(60);
    VAR_TELEFONO   VARCHAR(15);
    VAR_EMAIL      VARCHAR(80);
    -- INFO CAMBIO FONDO
    VAR_TIPO_PRODUCTO         VARCHAR(80);
    VAR_TIPO_FONDO_ORIGEN     VARCHAR(80);
    VAR_TIPO_FONDO_DESTINO    VARCHAR(80);
    VAR_VALOR_CUOTA_ORIGEN    VARCHAR(80);
    VAR_VAL_ML_ORIGEN         VARCHAR(80);
    VAR_VAL_CUO_ORIGEN        VARCHAR(80);
    VAR_FEC_ACREDITACION      VARCHAR(80);
    VAR_ACREDITACION_ANTERIOR VARCHAR(80);
    -- INFO REPORTE
    VAR_ID_REPORTE   VARCHAR2(4);
    VAR_ID_FORMATO   VARCHAR2(5);
    VAR_TIPO_TRAMITE VARCHAR2(2);
    -- INFO COMPROBANTE
    VAR_DESCRIPCION_SOLICITUD VARCHAR2(200);
    VAR_FOLIO                 VARCHAR2(20);
    VAR_FECHA_SOLICITUD       VARCHAR(12);
    VAR_ESTADO_SOLICITUD      VARCHAR(50);
    VAR_VIA_INGRESO           VARCHAR2(50);
  BEGIN
    VAR_CONTADOR := -1;

    IF VIVC_TIPO_SALIDA = 'D' THEN
      SELECT C.ID_REPORTE_DETALLE, C.ID_FORMATO_DETALLE
        INTO VAR_ID_REPORTE, VAR_ID_FORMATO
        FROM TIPO_MENU_CONSOLIDADO C
       WHERE C.ID_TIPO_SOLICITUD = VINU_TIPO_SOLICITUD;
    ELSE
      SELECT C.ID_REPORTE_COMPROBANTE,
             C.ID_FORMATO_COMPROBANTE,
             C.TIPO_TRAMITE
        INTO VAR_ID_REPORTE, VAR_ID_FORMATO, VAR_TIPO_TRAMITE
        FROM TIPO_MENU_CONSOLIDADO C
       WHERE C.ID_TIPO_SOLICITUD = VINU_TIPO_SOLICITUD;
    END IF;

    IF VIVC_TIPO_SALIDA = 'D' THEN

      SOLICITUDES.PCK_CONSOLIDADO_TRAMITES.DETALLE_SMOVCF(VINU_ID_SOLICITUD,
                                                          VINU_ID_NUM_CLIENTE,
                                                          VAR_CURSOR);
      VAR_XML := '<CAMBIO_FONDO>' || '<Identificacion>' || '<IdReporte>' ||
                 VAR_ID_REPORTE || '</IdReporte>' || '<IdFormato>' ||
                 VAR_ID_FORMATO || '</IdFormato>' || '</Identificacion>';

      LOOP
        FETCH VAR_CURSOR
          INTO VAR_NOMBRE, 
    VAR_ID_PERSONA, 
    VAR_DIRECCION, 
    VAR_REGION, 
    VAR_COMUNA, 
    VAR_TELEFONO, 
    VAR_EMAIL, 
    VAR_TIPO_PRODUCTO, 
    VAR_TIPO_FONDO_ORIGEN, 
    VAR_TIPO_FONDO_DESTINO, 
    VAR_VALOR_CUOTA_ORIGEN, 
    VAR_VAL_ML_ORIGEN, 
    VAR_VAL_CUO_ORIGEN, 
    VAR_FEC_ACREDITACION, 
    VAR_ACREDITACION_ANTERIOR;

        EXIT WHEN VAR_CURSOR%NOTFOUND;

        IF VAR_CONTADOR = -1 THEN
          VAR_CONTADOR := 0;
        END IF;

        IF VAR_CONTADOR = 0 THEN

          SELECT DECODE(VAR_TELEFONO, '0-0', '--', VAR_TELEFONO)
            INTO VAR_TELEFONO
            FROM DUAL;

          VAR_XML := VAR_XML || '<INFO_AFILIADO>' || '<NOMBRE>' ||
                     VAR_NOMBRE || '</NOMBRE>' || '<RUT>' || VAR_ID_PERSONA ||
                     '</RUT>' || '<DOMICILIO>' || VAR_DIRECCION ||
                     '</DOMICILIO>' || '<COMUNA>' || VAR_COMUNA ||
                     '</COMUNA>' || '<REGION>' || VAR_REGION || '</REGION>' ||
                     '<TELEFONO>' || VAR_TELEFONO || '</TELEFONO>' ||
                     '<EMAIL>' || VAR_EMAIL || '</EMAIL>' ||
                     '</INFO_AFILIADO>';

        END IF;

        SELECT DECODE(VAR_FEC_ACREDITACION,
                      '01-01-0001',
                      '--',
                      VAR_FEC_ACREDITACION)
          INTO VAR_FEC_ACREDITACION
          FROM DUAL;

        VAR_XML := VAR_XML || '<FONDOS>' || '<TIPO_PRODUCTO>' ||
                   VAR_TIPO_PRODUCTO || '</TIPO_PRODUCTO>' ||
                   '<TIPO_FONDO_ORIGEN>' || VAR_TIPO_FONDO_ORIGEN ||
                   '</TIPO_FONDO_ORIGEN>' || '<TIPO_FONDO_DESTINO>' ||
                   VAR_TIPO_FONDO_DESTINO || '</TIPO_FONDO_DESTINO>' ||
                   '<VALOR_CUOTA_ORIGEN>' || VAR_VALOR_CUOTA_ORIGEN ||
                   '</VALOR_CUOTA_ORIGEN>' || '</FONDOS>' || '<MONTOS>' ||
                   '<VAL_ML_ORIGEN>' || VAR_VAL_ML_ORIGEN ||
                   '</VAL_ML_ORIGEN>' || '<VAL_CUOTA_ORIGEN>' ||
                   VAR_VAL_CUO_ORIGEN || '</VAL_CUOTA_ORIGEN>' ||
                   '<FECHA_ACREDITACION>' || VAR_FEC_ACREDITACION ||
                   '</FECHA_ACREDITACION>' || '<ACREDITACION_ANTERIOR>' ||
                   VAR_ACREDITACION_ANTERIOR || '</ACREDITACION_ANTERIOR>' ||
                   '</MONTOS>';

        VAR_CONTADOR := VAR_CONTADOR + 1;

      END LOOP;
      CLOSE VAR_CURSOR;

      VAR_XML := VAR_XML || '</CAMBIO_FONDO>';

    ELSE
      VAR_XML := '<COMPROBANTE_RESUMEN>' || '<Identificacion>' ||
                 '<IdReporte>' || VAR_ID_REPORTE || '</IdReporte>' ||
                 '<IdFormato>' || VAR_ID_FORMATO || '</IdFormato>' ||
                 '</Identificacion>';

      SOLICITUDES.PCK_CONSOLIDADO_TRAMITES.DETALLE_SMOVCF(VINU_ID_SOLICITUD,
                                                          VINU_ID_NUM_CLIENTE,
                                                          VAR_CURSOR);

      SOLICITUDES.PCK_CONSOLIDADO_TRAMITES.RESUMEN_SOLICITUD(VINU_ID_SOLICITUD,
                                                             VAR_DESCRIPCION_SOLICITUD,
                                                             VAR_FOLIO,
                                                             VAR_FECHA_SOLICITUD,
                                                             VAR_ESTADO_SOLICITUD,
                                                             VAR_VIA_INGRESO);

      LOOP
        FETCH VAR_CURSOR
          INTO VAR_NOMBRE, 
    VAR_ID_PERSONA, 
    VAR_DIRECCION, 
    VAR_REGION, 
    VAR_COMUNA, 
    VAR_TELEFONO, 
    VAR_EMAIL, 
    VAR_TIPO_PRODUCTO, 
    VAR_TIPO_FONDO_ORIGEN, 
    VAR_TIPO_FONDO_DESTINO, 
    VAR_VALOR_CUOTA_ORIGEN, 
    VAR_VAL_ML_ORIGEN, 
    VAR_VAL_CUO_ORIGEN, 
    VAR_FEC_ACREDITACION, 
    VAR_ACREDITACION_ANTERIOR;

        EXIT WHEN VAR_CURSOR%NOTFOUND;

        IF VAR_CONTADOR = -1 THEN
          VAR_CONTADOR := 0;
        END IF;

        IF VAR_CONTADOR = 0 THEN
          SELECT DECODE(VAR_FEC_ACREDITACION,
                        '01-01-0001',
                        '--',
                        VAR_FEC_ACREDITACION)
            INTO VAR_FEC_ACREDITACION
            FROM DUAL;
          SELECT DECODE(VAR_TELEFONO, '0-0', '--', VAR_TELEFONO)
            INTO VAR_TELEFONO
            FROM DUAL;
          VAR_XML := VAR_XML || '<COMPROBANTE>' || '<ID_TIPO_TRAMITE>' ||
                     VAR_TIPO_TRAMITE || '</ID_TIPO_TRAMITE>' || '<NOMBRE>' ||
                     VAR_NOMBRE || '</NOMBRE>' || '<RUT>' || VAR_ID_PERSONA ||
                     '</RUT>' || '<DOMICILIO>' || VAR_DIRECCION ||
                     '</DOMICILIO>' || '<REGION>' || VAR_REGION ||
                     '</REGION>' || '<COMUNA>' || VAR_COMUNA || '</COMUNA>' ||
                     '<TELEFONO>' || VAR_TELEFONO || '</TELEFONO>' ||
                     '<EMAIL>' || VAR_EMAIL || '</EMAIL>' ||
                     '<TITULO_COLUMNA>Fecha Materialización</TITULO_COLUMNA>' ||
                     '<INFO_COLUMNA>' || VAR_FEC_ACREDITACION ||
                     '</INFO_COLUMNA>' || '<ESTADO>' ||
                     VAR_ESTADO_SOLICITUD || '</ESTADO>' || '<VIA_INGRESO>' ||
                     VAR_VIA_INGRESO || '</VIA_INGRESO>' ||
                     '<FECHA_SOLICITUD>' || VAR_FECHA_SOLICITUD ||
                     '</FECHA_SOLICITUD>' || '<NRO_FOLIO>' || VAR_FOLIO ||
                     '</NRO_FOLIO>' || '<DESCRIPCION_TRAMITE>' ||
                     VAR_DESCRIPCION_SOLICITUD || '</DESCRIPCION_TRAMITE>' ||
                     '</COMPROBANTE>';

        END IF;

        VAR_XML := VAR_XML || '<FONDOS>' || '<TIPO_PRODUCTO>' ||
                   VAR_TIPO_PRODUCTO || '</TIPO_PRODUCTO>' ||
                   '<TIPO_FONDO_ORIGEN>' || VAR_TIPO_FONDO_ORIGEN ||
                   '</TIPO_FONDO_ORIGEN>' || '<TIPO_FONDO_DESTINO>' ||
                   VAR_TIPO_FONDO_DESTINO || '</TIPO_FONDO_DESTINO>' ||
                   '<VALOR_CUOTA_ORIGEN>' || VAR_VALOR_CUOTA_ORIGEN ||
                   '</VALOR_CUOTA_ORIGEN>' || '</FONDOS>';

        VAR_CONTADOR := VAR_CONTADOR + 1;

      END LOOP;
      CLOSE VAR_CURSOR;

      VAR_XML := VAR_XML || '</COMPROBANTE_RESUMEN>';
    END IF;

    IF VAR_CONTADOR = -1 THEN
      VAR_XML := '';
    END IF;

    OPEN VOCUR_XML FOR
      SELECT VAR_XML AS XML FROM DUAL;

  END TRAMITE_CAMBIO_FONDO;

  PROCEDURE TRAMITE_DISTRIBUCION_FONDO(VINU_ID_SOLICITUD   IN NUMBER, -- ID SOLICITUD
                                       VINU_ID_NUM_CLIENTE IN NUMBER, -- ID DEL CLIENTE
                                       VINU_TIPO_SOLICITUD IN NUMBER, -- TIPO SOLICITUD
                                       VIVC_TIPO_SALIDA    IN VARCHAR2, -- R RESUMEN   D DETALLADA
                                       VOCUR_XML           OUT TCURSOR) AS
    VAR_XML      CLOB;
    VAR_CURSOR   TCURSOR;
    VAR_CONTADOR NUMBER;
    -- INFO AFILIADO
    VAR_NOMBRE     VARCHAR2(80);
    VAR_ID_PERSONA VARCHAR(15);
    VAR_DIRECCION  VARCHAR2(200);
    VAR_REGION     VARCHAR2(80);
    VAR_COMUNA     VARCHAR2(60);
    VAR_TELEFONO   VARCHAR(15);
    VAR_EMAIL      VARCHAR(80);
    -- INFO REPORTE
    VAR_ID_REPORTE   VARCHAR2(4);
    VAR_ID_FORMATO   VARCHAR2(5);
    VAR_TIPO_TRAMITE VARCHAR2(2);
    -- INFO DISTRIBUCION FONDO
    VAR_TIPO_PRODUCTO          VARCHAR2(100);
    VAR_TIPO_FONDO_ORIGEN      VARCHAR2(2);
    VAR_TIPO_FONDO_DESTINO     VARCHAR2(2);
    VAR_PORCENTAJE_DISTRBUCION VARCHAR2(3);
    VAR_FECHA_ACREDITACION     VARCHAR2(12);
    VAR_VALOR_CUOTA            VARCHAR2(10);
    VAR_FECHA_DIS_ANTERIOR     VARCHAR2(12);
    VAR_TIPO_FONDO_RECAUDACION VARCHAR2(10);
    VAR_AJUSTE_SALDO           VARCHAR2(10);
    VAR_FONDO_APERTURA         VARCHAR2(10);
    VAR_PORCENTAJE_APERTURA    VARCHAR2(10);
    VAR_FONDO_RECAUDADOR       VARCHAR2(2);
    VAR_DESC_TIPO_CUENTA       VARCHAR2(100);
    -- INFO COMPROBANTE
    VAR_DESCRIPCION_SOLICITUD VARCHAR2(200);
    VAR_FOLIO                 VARCHAR2(20);
    VAR_FECHA_SOLICITUD       VARCHAR(12);
    VAR_ESTADO_SOLICITUD      VARCHAR(50);
    VAR_VIA_INGRESO           VARCHAR2(50);
    VAR_GENERICO              VARCHAR2(100);
  BEGIN

    VAR_CONTADOR := -1;

    IF VIVC_TIPO_SALIDA = 'D' THEN
      SELECT C.ID_REPORTE_DETALLE, C.ID_FORMATO_DETALLE
        INTO VAR_ID_REPORTE, VAR_ID_FORMATO
        FROM TIPO_MENU_CONSOLIDADO C
       WHERE C.ID_TIPO_SOLICITUD = VINU_TIPO_SOLICITUD;
    ELSE
      SELECT C.ID_REPORTE_COMPROBANTE,
             C.ID_FORMATO_COMPROBANTE,
             C.TIPO_TRAMITE
        INTO VAR_ID_REPORTE, VAR_ID_FORMATO, VAR_TIPO_TRAMITE
        FROM TIPO_MENU_CONSOLIDADO C
       WHERE C.ID_TIPO_SOLICITUD = VINU_TIPO_SOLICITUD;
    END IF;

    IF VIVC_TIPO_SALIDA = 'D' THEN

      SOLICITUDES.PCK_CONSOLIDADO_TRAMITES.DETALLE_SMOVDT(VINU_ID_SOLICITUD,
                                                          VINU_ID_NUM_CLIENTE,
                                                          VAR_CURSOR);
      VAR_XML := '<DISTRIBUICION_FONDO>' || '<Identificacion>' ||
                 '<IdReporte>' || VAR_ID_REPORTE || '</IdReporte>' ||
                 '<IdFormato>' || VAR_ID_FORMATO || '</IdFormato>' ||
                 '</Identificacion>';

      LOOP
        FETCH VAR_CURSOR
          INTO VAR_NOMBRE, 
    VAR_ID_PERSONA, 
    VAR_DIRECCION, 
    VAR_REGION, 
    VAR_COMUNA, 
    VAR_TELEFONO, 
    VAR_EMAIL, 
    VAR_TIPO_PRODUCTO, 
    VAR_TIPO_FONDO_ORIGEN, 
    VAR_TIPO_FONDO_DESTINO, 
    VAR_PORCENTAJE_DISTRBUCION, 
    VAR_FECHA_ACREDITACION, 
    VAR_VALOR_CUOTA, 
    VAR_FECHA_DIS_ANTERIOR, 
    VAR_TIPO_FONDO_RECAUDACION, 
    VAR_AJUSTE_SALDO, 
    VAR_FONDO_APERTURA, 
    VAR_PORCENTAJE_APERTURA, 
    VAR_FONDO_RECAUDADOR, 
    VAR_DESC_TIPO_CUENTA;

        EXIT WHEN VAR_CURSOR%NOTFOUND;

        IF VAR_CONTADOR = -1 THEN
          VAR_CONTADOR := 0;
        END IF;

        IF VAR_CONTADOR = 0 THEN

          SELECT DECODE(VAR_TELEFONO, '0-0', '--', VAR_TELEFONO)
            INTO VAR_TELEFONO
            FROM DUAL;
          SELECT DECODE(VAR_FECHA_ACREDITACION,
                        '01-01-0001',
                        '--',
                        VAR_FECHA_ACREDITACION)
            INTO VAR_FECHA_ACREDITACION
            FROM DUAL;

          IF VAR_DIRECCION = '--' OR VAR_TELEFONO = '--' OR
             VAR_EMAIL = '--' THEN

            OBTENER_DIR_FONO_EMAIL_CLI(VINU_ID_NUM_CLIENTE,
                                       VAR_DIRECCION,
                                       VAR_REGION,
                                       VAR_COMUNA,
                                       VAR_TELEFONO,
                                       VAR_EMAIL,
                                       VAR_GENERICO);

          END IF;

          VAR_XML := VAR_XML || '<INFO_AFILIADO>' || '<NOMBRE>' ||
                     VAR_NOMBRE || '</NOMBRE>' || '<RUT>' || VAR_ID_PERSONA ||
                     '</RUT>' || '<DOMICILIO>' || VAR_DIRECCION ||
                     '</DOMICILIO>' || '<COMUNA>' || VAR_COMUNA ||
                     '</COMUNA>' || '<REGION>' || VAR_REGION || '</REGION>' ||
                     '<TELEFONO>' || VAR_TELEFONO || '</TELEFONO>' ||
                     '<EMAIL>' || VAR_EMAIL || '</EMAIL>' ||
                     '</INFO_AFILIADO>' || '<FECHAS>' ||
                     '<FEC_ACREDITACION>' || VAR_FECHA_ACREDITACION ||
                     '</FEC_ACREDITACION>' || '<FEC_DISTRIBUCION_ANTERIOR>' ||
                     VAR_FECHA_DIS_ANTERIOR ||
                     '</FEC_DISTRIBUCION_ANTERIOR>' || '</FECHAS>';

        END IF;

        VAR_XML := VAR_XML || '<ITEMS>' || '<TIPO_PRODUCTO>' ||
                   VAR_TIPO_PRODUCTO || '</TIPO_PRODUCTO>' ||
                   '<TIPO_FONDO_ORIGEN>' || VAR_TIPO_FONDO_ORIGEN ||
                   '</TIPO_FONDO_ORIGEN>' || '<TIPO_FONDO_DESTINO>' ||
                   VAR_TIPO_FONDO_DESTINO || '</TIPO_FONDO_DESTINO>' ||
                   '<PORC_DISTRIBUCION>' || VAR_PORCENTAJE_DISTRBUCION ||
                   '</PORC_DISTRIBUCION>' || '<FONDOAPERTURA>' ||
                   VAR_FONDO_APERTURA || '</FONDOAPERTURA>' ||
                   '<PORCENTAJEAPERTURA>' || VAR_PORCENTAJE_APERTURA ||
                   '</PORCENTAJEAPERTURA>' || '<VALOR_CUOTA>' ||
                   VAR_VALOR_CUOTA || '</VALOR_CUOTA>' || '<AJUSTESALDO>' ||
                   VAR_AJUSTE_SALDO || '</AJUSTESALDO>' || '</ITEMS>';

        VAR_CONTADOR := VAR_CONTADOR + 1;

      END LOOP;
      CLOSE VAR_CURSOR;

      VAR_XML := VAR_XML || '</DISTRIBUICION_FONDO>';
    ELSE
      VAR_XML := '<COMPROBANTE_RESUMEN>' || '<Identificacion>' ||
                 '<IdReporte>' || VAR_ID_REPORTE || '</IdReporte>' ||
                 '<IdFormato>' || VAR_ID_FORMATO || '</IdFormato>' ||
                 '</Identificacion>';

      SOLICITUDES.PCK_CONSOLIDADO_TRAMITES.DETALLE_SMOVDT(VINU_ID_SOLICITUD,
                                                          VINU_ID_NUM_CLIENTE,
                                                          VAR_CURSOR);

      SOLICITUDES.PCK_CONSOLIDADO_TRAMITES.RESUMEN_SOLICITUD(VINU_ID_SOLICITUD,
                                                             VAR_DESCRIPCION_SOLICITUD,
                                                             VAR_FOLIO,
                                                             VAR_FECHA_SOLICITUD,
                                                             VAR_ESTADO_SOLICITUD,
                                                             VAR_VIA_INGRESO);

      LOOP
        FETCH VAR_CURSOR
          INTO VAR_NOMBRE, 
    VAR_ID_PERSONA, 
    VAR_DIRECCION, 
    VAR_REGION, 
    VAR_COMUNA, 
    VAR_TELEFONO, 
    VAR_EMAIL, 
    VAR_TIPO_PRODUCTO, 
    VAR_TIPO_FONDO_ORIGEN, 
    VAR_TIPO_FONDO_DESTINO, 
    VAR_PORCENTAJE_DISTRBUCION, 
    VAR_FECHA_ACREDITACION, 
    VAR_VALOR_CUOTA, 
    VAR_FECHA_DIS_ANTERIOR, 
    VAR_TIPO_FONDO_RECAUDACION, 
    VAR_AJUSTE_SALDO, 
    VAR_FONDO_APERTURA, 
    VAR_PORCENTAJE_APERTURA, 
    VAR_FONDO_RECAUDADOR, 
    VAR_DESC_TIPO_CUENTA;

        EXIT WHEN VAR_CURSOR%NOTFOUND;

        IF VAR_CONTADOR = -1 THEN
          VAR_CONTADOR := 0;
        END IF;

        IF VAR_CONTADOR = 0 THEN

          SELECT DECODE(VAR_TELEFONO, '0-0', '--', VAR_TELEFONO)
            INTO VAR_TELEFONO
            FROM DUAL;
          SELECT DECODE(VAR_FECHA_ACREDITACION,
                        '01-01-0001',
                        '--',
                        VAR_FECHA_ACREDITACION)
            INTO VAR_FECHA_ACREDITACION
            FROM DUAL;

          IF VAR_DIRECCION = '--' OR VAR_TELEFONO = '--' OR
             VAR_EMAIL = '--' THEN

            OBTENER_DIR_FONO_EMAIL_CLI(VINU_ID_NUM_CLIENTE,
                                       VAR_DIRECCION,
                                       VAR_REGION,
                                       VAR_COMUNA,
                                       VAR_TELEFONO,
                                       VAR_EMAIL,
                                       VAR_GENERICO);

          END IF;

          VAR_XML := VAR_XML || '<COMPROBANTE>' || '<ID_TIPO_TRAMITE>' ||
                     VAR_TIPO_TRAMITE || '</ID_TIPO_TRAMITE>' || '<NOMBRE>' ||
                     VAR_NOMBRE || '</NOMBRE>' || '<RUT>' || VAR_ID_PERSONA ||
                     '</RUT>' || '<DOMICILIO>' || VAR_DIRECCION ||
                     '</DOMICILIO>' || '<REGION>' || VAR_REGION ||
                     '</REGION>' || '<COMUNA>' || VAR_COMUNA || '</COMUNA>' ||
                     '<TELEFONO>' || VAR_TELEFONO || '</TELEFONO>' ||
                     '<EMAIL>' || VAR_EMAIL || '</EMAIL>' ||
                     '<TITULO_COLUMNA>Fecha Materialización</TITULO_COLUMNA>' ||
                     '<INFO_COLUMNA>' || VAR_FECHA_ACREDITACION ||
                     '</INFO_COLUMNA>' || '<ESTADO>' ||
                     VAR_ESTADO_SOLICITUD || '</ESTADO>' || '<VIA_INGRESO>' ||
                     VAR_VIA_INGRESO || '</VIA_INGRESO>' ||
                     '<FECHA_SOLICITUD>' || VAR_FECHA_SOLICITUD ||
                     '</FECHA_SOLICITUD>' || '<NRO_FOLIO>' || VAR_FOLIO ||
                     '</NRO_FOLIO>' || '<DESCRIPCION_TRAMITE>' ||
                     VAR_DESCRIPCION_SOLICITUD || '</DESCRIPCION_TRAMITE>' ||
                     '</COMPROBANTE>';

        END IF;

        VAR_XML := VAR_XML || '<DISTRIBUCION>' || '<TIPO_PRODUCTO>' ||
                   VAR_TIPO_PRODUCTO || '</TIPO_PRODUCTO>' ||

                   '<DESC_TIPO_PRODUCTO>' || VAR_DESC_TIPO_CUENTA ||
                   '</DESC_TIPO_PRODUCTO>' || '<PORC_DISTRIBUCION>' ||
                   VAR_PORCENTAJE_DISTRBUCION || '</PORC_DISTRIBUCION>' ||
                   '<TIPO_FONDO_ORIGEN>' || VAR_TIPO_FONDO_ORIGEN ||
                   '</TIPO_FONDO_ORIGEN>' || '<TIPO_FONDO_DESTINO>' ||
                   VAR_TIPO_FONDO_DESTINO || '</TIPO_FONDO_DESTINO>' ||
                   '<VALOR_CUOTA>' || VAR_VALOR_CUOTA || '</VALOR_CUOTA>' ||
                   '</DISTRIBUCION>' || '<RECAUDADOR>' || '<CUENTA>' ||
                   VAR_TIPO_PRODUCTO || '</CUENTA>' || '<DESC_CUENTA>' ||
                   VAR_DESC_TIPO_CUENTA || '</DESC_CUENTA>' || '<FONDO>' ||
                   VAR_FONDO_RECAUDADOR || '</FONDO>' ||
                   '<PORCENTAJE_APERTURA>' || VAR_PORCENTAJE_APERTURA ||
                   '</PORCENTAJE_APERTURA>' || '</RECAUDADOR>';

        VAR_XML := VAR_XML || '<ITEMS>' || '<TIPO_PRODUCTO>' ||
                   VAR_TIPO_PRODUCTO || '</TIPO_PRODUCTO>' ||
                   '<TIPO_FONDO_ORIGEN>' || VAR_TIPO_FONDO_ORIGEN ||
                   '</TIPO_FONDO_ORIGEN>' || '<TIPO_FONDO_DESTINO>' ||
                   VAR_TIPO_FONDO_DESTINO || '</TIPO_FONDO_DESTINO>' ||
                   '<PORC_DISTRIBUCION>' || VAR_PORCENTAJE_DISTRBUCION ||
                   '</PORC_DISTRIBUCION>' || '<FONDOAPERTURA>' ||
                   VAR_FONDO_APERTURA || '</FONDOAPERTURA>' ||
                   '<PORCENTAJEAPERTURA>' || VAR_PORCENTAJE_APERTURA ||
                   '</PORCENTAJEAPERTURA>' || '<VALOR_CUOTA>' ||
                   VAR_VALOR_CUOTA || '</VALOR_CUOTA>' || '<AJUSTESALDO>' ||
                   VAR_AJUSTE_SALDO || '</AJUSTESALDO>' || '</ITEMS>';

        VAR_CONTADOR := VAR_CONTADOR + 1;

      END LOOP;
      CLOSE VAR_CURSOR;

      VAR_XML := VAR_XML || '</COMPROBANTE_RESUMEN>';

    END IF;

    IF VAR_CONTADOR = -1 THEN
      VAR_XML := '';
    END IF;

    OPEN VOCUR_XML FOR
      SELECT VAR_XML AS XML FROM DUAL;

  END TRAMITE_DISTRIBUCION_FONDO;

  PROCEDURE TRAMITE_TRASPASO_FUTURO(VINU_ID_SOLICITUD   IN NUMBER, -- ID SOLICITUD
                                    VINU_ID_NUM_CLIENTE IN NUMBER, -- ID DEL CLIENTE
                                    VINU_TIPO_SOLICITUD IN NUMBER, -- TIPO SOLICITUD
                                    VIVC_TIPO_SALIDA    IN VARCHAR2, -- R RESUMEN   D DETALLADA
                                    VOCUR_XML           OUT TCURSOR) AS
    VAR_XML      CLOB;
    VAR_CURSOR   TCURSOR;
    VAR_CONTADOR NUMBER;
    -- INFO AFILIADO
    VAR_NOMBRE     VARCHAR2(80);
    VAR_ID_PERSONA VARCHAR2(15);
    VAR_DIRECCION  VARCHAR2(200);
    VAR_REGION     VARCHAR2(80);
    VAR_COMUNA     VARCHAR2(60);
    VAR_TELEFONO   VARCHAR2(15);
    VAR_EMAIL      VARCHAR2(80);
    -- INFO REPORTE
    VAR_ID_REPORTE   VARCHAR2(4);
    VAR_ID_FORMATO   VARCHAR2(5);
    VAR_TIPO_TRAMITE VARCHAR2(2);
    -- INFO DISTRIBUCION FONDO
    VAR_TIPO_PRODUCTO          VARCHAR2(100);
    VAR_FECHA_ACREDITACION     VARCHAR2(12);
    VAR_DESC_TIPO_CUENTA       VARCHAR2(100);
    VAR_TIPO_CONTRATO_ORIGINAL VARCHAR2(20);
    VAR_TIPO_CONTRATO_NUEVO    VARCHAR2(20);
    VAR_TIPO_TRAMITE_SOL       VARCHAR2(20);
    VAR_FECHA_MATERILIAZACION  VARCHAR2(20);
    -- INFO COMPROBANTE
    VAR_DESCRIPCION_SOLICITUD VARCHAR2(200);
    VAR_FOLIO                 VARCHAR2(20);
    VAR_FECHA_SOLICITUD       VARCHAR2(12);
    VAR_ESTADO_SOLICITUD      VARCHAR2(50);
    VAR_VIA_INGRESO           VARCHAR2(50);
    VAR_GENERICO              VARCHAR2(100);
  BEGIN

    VAR_CONTADOR := -1;

    IF VIVC_TIPO_SALIDA = 'D' THEN
      SELECT C.ID_REPORTE_DETALLE, C.ID_FORMATO_DETALLE
        INTO VAR_ID_REPORTE, VAR_ID_FORMATO
        FROM TIPO_MENU_CONSOLIDADO C
       WHERE C.ID_TIPO_SOLICITUD = VINU_TIPO_SOLICITUD;
    ELSE
      SELECT C.ID_REPORTE_COMPROBANTE,
             C.ID_FORMATO_COMPROBANTE,
             C.TIPO_TRAMITE
        INTO VAR_ID_REPORTE, VAR_ID_FORMATO, VAR_TIPO_TRAMITE
        FROM TIPO_MENU_CONSOLIDADO C
       WHERE C.ID_TIPO_SOLICITUD = VINU_TIPO_SOLICITUD;
    END IF;

    IF VIVC_TIPO_SALIDA = 'D' THEN

      SOLICITUDES.PCK_CONSOLIDADO_TRAMITES.DETALLE_TRASPASO_FUTURO(VINU_ID_SOLICITUD,
                                                                   VINU_ID_NUM_CLIENTE,
                                                                   VAR_CURSOR);
      VAR_XML := '<TRASPASO_FUTURO>' || '<Identificacion>' ||
                 '<IdReporte>' || VAR_ID_REPORTE || '</IdReporte>' ||
                 '<IdFormato>' || VAR_ID_FORMATO || '</IdFormato>' ||
                 '</Identificacion>';

      LOOP
        FETCH VAR_CURSOR
          INTO VAR_NOMBRE, 
    VAR_ID_PERSONA, 
    VAR_DIRECCION, 
    VAR_REGION, 
    VAR_COMUNA, 
    VAR_TELEFONO, 
    VAR_EMAIL, 
    VAR_FECHA_ACREDITACION, 
    VAR_TIPO_PRODUCTO, 
    VAR_DESC_TIPO_CUENTA, 
    VAR_TIPO_CONTRATO_ORIGINAL, 
    VAR_TIPO_CONTRATO_NUEVO, 
    VAR_TIPO_TRAMITE_SOL, 
    VAR_FECHA_MATERILIAZACION;

        EXIT WHEN VAR_CURSOR%NOTFOUND;

        IF VAR_CONTADOR = -1 THEN
          VAR_CONTADOR := 0;
        END IF;

        IF VAR_CONTADOR = 0 THEN

          SELECT DECODE(VAR_TELEFONO, '0-0', '--', VAR_TELEFONO)
            INTO VAR_TELEFONO
            FROM DUAL;
          SELECT DECODE(VAR_FECHA_ACREDITACION,
                        '01-01-0001',
                        '--',
                        VAR_FECHA_ACREDITACION)
            INTO VAR_FECHA_ACREDITACION
            FROM DUAL;

          IF VAR_DIRECCION = '--' OR VAR_TELEFONO = '--' OR
             VAR_EMAIL = '--' THEN

            OBTENER_DIR_FONO_EMAIL_CLI(VINU_ID_NUM_CLIENTE,
                                       VAR_DIRECCION,
                                       VAR_REGION,
                                       VAR_COMUNA,
                                       VAR_TELEFONO,
                                       VAR_EMAIL,
                                       VAR_GENERICO);

          END IF;

          VAR_XML := VAR_XML || '<INFO_AFILIADO>' || '<NOMBRE>' ||
                     VAR_NOMBRE || '</NOMBRE>' || '<RUT>' || VAR_ID_PERSONA ||
                     '</RUT>' || '<DOMICILIO>' || VAR_DIRECCION ||
                     '</DOMICILIO>' || '<COMUNA>' || VAR_COMUNA ||
                     '</COMUNA>' || '<REGION>' || VAR_REGION || '</REGION>' ||
                     '<TELEFONO>' || VAR_TELEFONO || '</TELEFONO>' ||
                     '<EMAIL>' || VAR_EMAIL || '</EMAIL>' ||
                     '</INFO_AFILIADO>';

        END IF;

        VAR_XML := VAR_XML || '<ITEMS>' || '<TIPO_PRODUCTO>' ||
                   VAR_DESC_TIPO_CUENTA || '</TIPO_PRODUCTO>' ||
                   '<TIPO_CONTRATO_ORIGINAL>' || VAR_TIPO_CONTRATO_ORIGINAL ||
                   '</TIPO_CONTRATO_ORIGINAL>' || '<TIPO_CONTRATO_NUEVO>' ||
                   VAR_TIPO_CONTRATO_NUEVO || '</TIPO_CONTRATO_NUEVO>' ||
                   '<TIPO_TRAMITE>' || VAR_TIPO_TRAMITE_SOL ||
                   '</TIPO_TRAMITE>' || '<FECHA_MATERIALIZACION>' ||
                   VAR_FECHA_MATERILIAZACION || '</FECHA_MATERIALIZACION>' || '</ITEMS>';

        VAR_CONTADOR := VAR_CONTADOR + 1;

      END LOOP;
      CLOSE VAR_CURSOR;

      VAR_XML := VAR_XML || '</TRASPASO_FUTURO>';
    ELSE
      VAR_XML := '<COMPROBANTE_RESUMEN>' || '<Identificacion>' ||
                 '<IdReporte>' || VAR_ID_REPORTE || '</IdReporte>' ||
                 '<IdFormato>' || VAR_ID_FORMATO || '</IdFormato>' ||
                 '</Identificacion>';

      SOLICITUDES.PCK_CONSOLIDADO_TRAMITES.DETALLE_TRASPASO_FUTURO(VINU_ID_SOLICITUD,
                                                                   VINU_ID_NUM_CLIENTE,
                                                                   VAR_CURSOR);

      SOLICITUDES.PCK_CONSOLIDADO_TRAMITES.RESUMEN_SOLICITUD(VINU_ID_SOLICITUD,
                                                             VAR_DESCRIPCION_SOLICITUD,
                                                             VAR_FOLIO,
                                                             VAR_FECHA_SOLICITUD,
                                                             VAR_ESTADO_SOLICITUD,
                                                             VAR_VIA_INGRESO);

      LOOP
        FETCH VAR_CURSOR
          INTO VAR_NOMBRE, 
    VAR_ID_PERSONA, 
    VAR_DIRECCION, 
    VAR_REGION, 
    VAR_COMUNA, 
    VAR_TELEFONO, 
    VAR_EMAIL, 
    VAR_FECHA_ACREDITACION, 
    VAR_TIPO_PRODUCTO, 
    VAR_DESC_TIPO_CUENTA, 
    VAR_TIPO_CONTRATO_ORIGINAL, 
    VAR_TIPO_CONTRATO_NUEVO, 
    VAR_TIPO_TRAMITE_SOL, 
    VAR_FECHA_MATERILIAZACION;

        EXIT WHEN VAR_CURSOR%NOTFOUND;

        IF VAR_CONTADOR = -1 THEN
          VAR_CONTADOR := 0;
        END IF;

        IF VAR_CONTADOR = 0 THEN

          SELECT DECODE(VAR_TELEFONO, '0-0', '--', VAR_TELEFONO)
            INTO VAR_TELEFONO
            FROM DUAL;
          SELECT DECODE(VAR_FECHA_ACREDITACION,
                        '01-01-0001',
                        '--',
                        VAR_FECHA_ACREDITACION)
            INTO VAR_FECHA_ACREDITACION
            FROM DUAL;

          IF VAR_DIRECCION = '--' OR VAR_TELEFONO = '--' OR
             VAR_EMAIL = '--' THEN

            OBTENER_DIR_FONO_EMAIL_CLI(VINU_ID_NUM_CLIENTE,
                                       VAR_DIRECCION,
                                       VAR_REGION,
                                       VAR_COMUNA,
                                       VAR_TELEFONO,
                                       VAR_EMAIL,
                                       VAR_GENERICO);

          END IF;

          VAR_XML := VAR_XML || '<COMPROBANTE>' || '<ID_TIPO_TRAMITE>' ||
                     VAR_TIPO_TRAMITE || '</ID_TIPO_TRAMITE>' || '<NOMBRE>' ||
                     VAR_NOMBRE || '</NOMBRE>' || '<RUT>' || VAR_ID_PERSONA ||
                     '</RUT>' || '<DOMICILIO>' || VAR_DIRECCION ||
                     '</DOMICILIO>' || '<REGION>' || VAR_REGION ||
                     '</REGION>' || '<COMUNA>' || VAR_COMUNA || '</COMUNA>' ||
                     '<TELEFONO>' || VAR_TELEFONO || '</TELEFONO>' ||
                     '<EMAIL>' || VAR_EMAIL || '</EMAIL>' ||
                     '<TITULO_COLUMNA>Fecha Materialización</TITULO_COLUMNA>' ||
                     '<INFO_COLUMNA>' || VAR_FECHA_ACREDITACION ||
                     '</INFO_COLUMNA>' || '<ESTADO>' ||
                     VAR_ESTADO_SOLICITUD || '</ESTADO>' || '<VIA_INGRESO>' ||
                     VAR_VIA_INGRESO || '</VIA_INGRESO>' ||
                     '<FECHA_SOLICITUD>' || VAR_FECHA_SOLICITUD ||
                     '</FECHA_SOLICITUD>' || '<NRO_FOLIO>' || VAR_FOLIO ||
                     '</NRO_FOLIO>' || '<DESCRIPCION_TRAMITE>' ||
                     VAR_DESCRIPCION_SOLICITUD || '</DESCRIPCION_TRAMITE>' ||
                     '</COMPROBANTE>';

        END IF;

        VAR_XML := VAR_XML || '<TRASPASO_FUTURO>' || '<DESC_TIPO_PRODUCTO>' ||
                   VAR_DESC_TIPO_CUENTA || '</DESC_TIPO_PRODUCTO>' ||
                   '<TIPO_CONTRATO_ORIGINAL>' || VAR_TIPO_CONTRATO_ORIGINAL ||
                   '</TIPO_CONTRATO_ORIGINAL>' || '<TIPO_CONTRATO_NUEVO>' ||
                   VAR_TIPO_CONTRATO_NUEVO || '</TIPO_CONTRATO_NUEVO>' ||
                   '<TIPO_TRAMITE_SOLICITUD>' || VAR_TIPO_TRAMITE_SOL ||
                   '</TIPO_TRAMITE_SOLICITUD>' ||
                   '<FECHA_MATERIALIZACION_TRAMITE>' ||
                   VAR_FECHA_MATERILIAZACION ||
                   '</FECHA_MATERIALIZACION_TRAMITE>' ||
                   '</TRASPASO_FUTURO>';

        VAR_CONTADOR := VAR_CONTADOR + 1;

      END LOOP;
      CLOSE VAR_CURSOR;

      VAR_XML := VAR_XML || '</COMPROBANTE_RESUMEN>';

    END IF;

    IF VAR_CONTADOR = -1 THEN
      VAR_XML := '';
    END IF;

    OPEN VOCUR_XML FOR
      SELECT VAR_XML AS XML FROM DUAL;

  END TRAMITE_TRASPASO_FUTURO;

  PROCEDURE TRAMITE_TRASPASO_EGRESO(VINU_ID_SOLICITUD   IN NUMBER, -- ID SOLICITUD
                                    VINU_ID_NUM_CLIENTE IN NUMBER, -- ID DEL CLIENTE
                                    VINU_TIPO_SOLICITUD IN NUMBER, -- TIPO SOLICITUD
                                    VIVC_TIPO_SALIDA    IN VARCHAR2, -- R RESUMEN   D DETALLADA
                                    VOCUR_XML           OUT TCURSOR) AS
    VAR_XML      CLOB;
    VAR_CURSOR   TCURSOR;
    VAR_CONTADOR NUMBER;
    -- INFO AFILIADO
    VAR_NOMBRE     VARCHAR2(80);
    VAR_ID_PERSONA VARCHAR(15);
    VAR_DIRECCION  VARCHAR2(200);
    VAR_REGION     VARCHAR2(80);
    VAR_COMUNA     VARCHAR2(60);
    VAR_TELEFONO   VARCHAR(15);
    VAR_EMAIL      VARCHAR(80);
    -- INFO REPORTE
    VAR_ID_REPORTE   VARCHAR2(4);
    VAR_ID_FORMATO   VARCHAR2(5);
    VAR_TIPO_TRAMITE VARCHAR2(2);
    -- INFO TRASPASO EGRESO
    VAR_FECHA_TRASPASO         VARCHAR2(12);
    VAR_AFP_DESTINO            VARCHAR2(100);
    VAR_ID_CLIENTE             VARCHAR2(12);
    VAR_TIPO_CUENTA_TRASPASADA VARCHAR2(100);
    VAR_TIPO_FONDO             VARCHAR2(2);
    VAR_PESOS_TRASPASADOS      VARCHAR2(20);
    VAR_CUOTAS_TRASPASADAS     VARCHAR2(10);
    -- INFO COMPROBANTE
    VAR_DESCRIPCION_SOLICITUD VARCHAR2(200);
    VAR_FOLIO                 VARCHAR2(20);
    VAR_FECHA_SOLICITUD       VARCHAR(12);
    VAR_ESTADO_SOLICITUD      VARCHAR(50);
    VAR_VIA_INGRESO           VARCHAR2(50);
    VAR_GENERICO              VARCHAR2(50);
  BEGIN

    VAR_CONTADOR := -1;

    IF VIVC_TIPO_SALIDA = 'D' THEN
      SELECT C.ID_REPORTE_DETALLE, C.ID_FORMATO_DETALLE
        INTO VAR_ID_REPORTE, VAR_ID_FORMATO
        FROM TIPO_MENU_CONSOLIDADO C
       WHERE C.ID_TIPO_SOLICITUD = VINU_TIPO_SOLICITUD;
    ELSE
      SELECT C.ID_REPORTE_COMPROBANTE,
             C.ID_FORMATO_COMPROBANTE,
             C.TIPO_TRAMITE
        INTO VAR_ID_REPORTE, VAR_ID_FORMATO, VAR_TIPO_TRAMITE
        FROM TIPO_MENU_CONSOLIDADO C
       WHERE C.ID_TIPO_SOLICITUD = VINU_TIPO_SOLICITUD;
    END IF;

    IF VIVC_TIPO_SALIDA = 'D' THEN

      SOLICITUDES.PCK_CONSOLIDADO_TRAMITES.DETALLE_SMOVTE(VINU_ID_SOLICITUD,
                                                          VINU_ID_NUM_CLIENTE,
                                                          VAR_CURSOR);
      VAR_XML := '<TRASPASO_EGRESO>' || '<Identificacion>' || '<IdReporte>' ||
                 VAR_ID_REPORTE || '</IdReporte>' || '<IdFormato>' ||
                 VAR_ID_FORMATO || '</IdFormato>' || '</Identificacion>';

      LOOP
        FETCH VAR_CURSOR
          INTO VAR_AFP_DESTINO, 
    VAR_ID_CLIENTE, 
    VAR_TIPO_CUENTA_TRASPASADA, 
    VAR_TIPO_FONDO, 
    VAR_PESOS_TRASPASADOS, 
    VAR_CUOTAS_TRASPASADAS, 
    VAR_NOMBRE, 
    VAR_ID_PERSONA, 
    VAR_DIRECCION, 
    VAR_REGION, 
    VAR_COMUNA, 
    VAR_TELEFONO, 
    VAR_EMAIL, 
    VAR_FECHA_TRASPASO;

        EXIT WHEN VAR_CURSOR%NOTFOUND;

        IF VAR_CONTADOR = -1 THEN
          VAR_CONTADOR := 0;
        END IF;

        IF VAR_CONTADOR = 0 THEN
          IF VAR_DIRECCION = '--' OR VAR_TELEFONO = '--' OR
             VAR_EMAIL = '--' THEN

            OBTENER_DIR_FONO_EMAIL_CLI(VINU_ID_NUM_CLIENTE,
                                       VAR_DIRECCION,
                                       VAR_REGION,
                                       VAR_COMUNA,
                                       VAR_TELEFONO,
                                       VAR_EMAIL,
                                       VAR_GENERICO);

          END IF;
          VAR_XML := VAR_XML || '<INFO_AFILIADO>' || '<NOMBRE>' ||
                     VAR_NOMBRE || '</NOMBRE>' || '<RUT>' || VAR_ID_PERSONA ||
                     '</RUT>' || '<DOMICILIO>' || VAR_DIRECCION ||
                     '</DOMICILIO>' || '<COMUNA>' || VAR_COMUNA ||
                     '</COMUNA>' || '<REGION>' || VAR_REGION || '</REGION>' ||
                     '<TELEFONO>' || VAR_TELEFONO || '</TELEFONO>' ||
                     '<EMAIL>' || VAR_EMAIL || '</EMAIL>' ||
                     '</INFO_AFILIADO>';

        END IF;

        VAR_XML := VAR_XML || '<TRASPASO>' || '<AFP_DESTINO>' ||
                   VAR_AFP_DESTINO || '</AFP_DESTINO>' ||
                   '<TIPO_CTA_TRASPASADA>' || VAR_TIPO_CUENTA_TRASPASADA ||
                   '</TIPO_CTA_TRASPASADA>' || '<TIPO_FONDO>' ||
                   VAR_TIPO_FONDO || '</TIPO_FONDO>' ||
                   '<PESOS_TRASPASADOS>' || VAR_PESOS_TRASPASADOS ||
                   '</PESOS_TRASPASADOS>' || '<CUOTAS_TRASPASADAS>' ||
                   VAR_CUOTAS_TRASPASADAS || '</CUOTAS_TRASPASADAS>' ||
                   '</TRASPASO>';

        VAR_CONTADOR := VAR_CONTADOR + 1;

      END LOOP;
      CLOSE VAR_CURSOR;

      VAR_XML := VAR_XML || '</TRASPASO_EGRESO>';

    ELSE

      VAR_XML := '<COMPROBANTE_RESUMEN>' || '<Identificacion>' ||
                 '<IdReporte>' || VAR_ID_REPORTE || '</IdReporte>' ||
                 '<IdFormato>' || VAR_ID_FORMATO || '</IdFormato>' ||
                 '</Identificacion>';

      SOLICITUDES.PCK_CONSOLIDADO_TRAMITES.DETALLE_SMOVTE(VINU_ID_SOLICITUD,
                                                          VINU_ID_NUM_CLIENTE,
                                                          VAR_CURSOR);

      SOLICITUDES.PCK_CONSOLIDADO_TRAMITES.RESUMEN_SOLICITUD(VINU_ID_SOLICITUD,
                                                             VAR_DESCRIPCION_SOLICITUD,
                                                             VAR_FOLIO,
                                                             VAR_FECHA_SOLICITUD,
                                                             VAR_ESTADO_SOLICITUD,
                                                             VAR_VIA_INGRESO);

      LOOP
        FETCH VAR_CURSOR
          INTO VAR_AFP_DESTINO, 
    VAR_ID_CLIENTE, 
    VAR_TIPO_CUENTA_TRASPASADA, 
    VAR_TIPO_FONDO, 
    VAR_PESOS_TRASPASADOS, 
    VAR_CUOTAS_TRASPASADAS, 
    VAR_NOMBRE, 
    VAR_ID_PERSONA, 
    VAR_DIRECCION, 
    VAR_REGION, 
    VAR_COMUNA, 
    VAR_TELEFONO, 
    VAR_EMAIL, 
    VAR_FECHA_TRASPASO;

        EXIT WHEN VAR_CURSOR%NOTFOUND;

        IF VAR_CONTADOR = -1 THEN
          VAR_CONTADOR := 0;
        END IF;

        IF VAR_CONTADOR = 0 THEN
          IF VAR_DIRECCION = '--' OR VAR_TELEFONO = '--' OR
             VAR_EMAIL = '--' THEN

            OBTENER_DIR_FONO_EMAIL_CLI(VINU_ID_NUM_CLIENTE,
                                       VAR_DIRECCION,
                                       VAR_REGION,
                                       VAR_COMUNA,
                                       VAR_TELEFONO,
                                       VAR_EMAIL,
                                       VAR_GENERICO);

          END IF;
          VAR_XML := VAR_XML || '<COMPROBANTE>' || '<ID_TIPO_TRAMITE>' ||
                     VAR_TIPO_TRAMITE || '</ID_TIPO_TRAMITE>' || '<NOMBRE>' ||
                     VAR_NOMBRE || '</NOMBRE>' || '<RUT>' || VAR_ID_PERSONA ||
                     '</RUT>' || '<DOMICILIO>' || VAR_DIRECCION ||
                     '</DOMICILIO>' || '<REGION>' || VAR_REGION ||
                     '</REGION>' || '<COMUNA>' || VAR_COMUNA || '</COMUNA>' ||
                     '<TELEFONO>' || VAR_TELEFONO || '</TELEFONO>' ||
                     '<EMAIL>' || VAR_EMAIL || '</EMAIL>' ||
                     '<TITULO_COLUMNA>Fecha Traspaso</TITULO_COLUMNA>' ||
                     '<INFO_COLUMNA>' || VAR_FECHA_TRASPASO ||
                     '</INFO_COLUMNA>' || '<ESTADO>' ||
                     VAR_ESTADO_SOLICITUD || '</ESTADO>' || '<VIA_INGRESO>' ||
                     VAR_VIA_INGRESO || '</VIA_INGRESO>' ||
                     '<FECHA_SOLICITUD>' || VAR_FECHA_SOLICITUD ||
                     '</FECHA_SOLICITUD>' || '<NRO_FOLIO>' || VAR_FOLIO ||
                     '</NRO_FOLIO>' || '<DESCRIPCION_TRAMITE>' ||
                     VAR_DESCRIPCION_SOLICITUD || '</DESCRIPCION_TRAMITE>' ||
                     '</COMPROBANTE>';

        END IF;

        VAR_XML := VAR_XML || '<TRASPASO>' || '<AFP_DESTINO>' ||
                   VAR_AFP_DESTINO || '</AFP_DESTINO>' ||
                   '<TIPO_CTA_TRASPASADA>' || VAR_TIPO_CUENTA_TRASPASADA ||
                   '</TIPO_CTA_TRASPASADA>' || '<TIPO_FONDO>' ||
                   VAR_TIPO_FONDO || '</TIPO_FONDO>' ||
                   '<PESOS_TRASPASADOS>' || VAR_PESOS_TRASPASADOS ||
                   '</PESOS_TRASPASADOS>' || '<CUOTAS_TRASPASADAS>' ||
                   VAR_CUOTAS_TRASPASADAS || '</CUOTAS_TRASPASADAS>' ||
                   '</TRASPASO>';

        VAR_CONTADOR := VAR_CONTADOR + 1;

      END LOOP;
      CLOSE VAR_CURSOR;

      VAR_XML := VAR_XML || '</COMPROBANTE_RESUMEN>';

    END IF;

    IF VAR_CONTADOR = -1 THEN
      VAR_XML := '';
    END IF;

    OPEN VOCUR_XML FOR
      SELECT VAR_XML AS XML FROM DUAL;

  END TRAMITE_TRASPASO_EGRESO;

  PROCEDURE TRAMITE_TRASPASO_INGRESO(VINU_ID_SOLICITUD   IN NUMBER, -- ID SOLICITUD
                                     VINU_ID_NUM_CLIENTE IN NUMBER, -- ID DEL CLIENTE
                                     VINU_TIPO_SOLICITUD IN NUMBER, -- TIPO SOLICITUD
                                     VIVC_TIPO_SALIDA    IN VARCHAR2, -- R RESUMEN   D DETALLADA
                                     VOCUR_XML           OUT TCURSOR) AS
    VAR_XML      CLOB;
    VAR_CURSOR   TCURSOR;
    VAR_CONTADOR NUMBER;
    -- INFO REPORTE
    VAR_ID_REPORTE   VARCHAR2(4);
    VAR_ID_FORMATO   VARCHAR2(5);
    VAR_TIPO_TRAMITE VARCHAR2(2);
    -- INFO AFILIADO
    VAR_NOMBRE           VARCHAR2(80);
    VAR_ID_PERSONA       VARCHAR2(15);
    VAR_FECHA_NACIMIENTO VARCHAR2(12);
    VAR_DIRECCION        VARCHAR2(200);
    VAR_REGION           VARCHAR2(80);
    VAR_COMUNA           VARCHAR2(60);
    VAR_TELEFONO         VARCHAR(15);
    VAR_EMAIL            VARCHAR(80);
    VAR_SEXO             VARCHAR2(20);
    VAR_TIPO_TRABAJADOR  VARCHAR2(50);
    -- INFO TRASPASO INGRESO
    VAR_PENSIONADO                VARCHAR2(10);
    VAR_FECHA_AFILIACION          VARCHAR2(12);
    VAR_AFP_NUEVA                 VARCHAR2(50);
    VAR_COD_INSTITUCION_SOLICITUD VARCHAR(20);
    VAR_AFP_ANTIGUA               VARCHAR2(60);
    VAR_COD_ADM_ORIGEN            VARCHAR2(60);
    VAR_VAR_ML_RENTA_IMPONIBLE    VARCHAR2(15);
    VAR_TRASPASA_CCV              VARCHAR2(5);
    VAR_TRASPASA_CDC              VARCHAR2(5);
    VAR_CARTOLA_EMAIL             VARCHAR2(5);
    VAR_TIPO_PRODUCTO             VARCHAR2(100);
    VAR_TIPO_FONDO_ORIGEN         VARCHAR2(5);
    VAR_DISTRIBUCION_ACTUAL       VARCHAR2(5);
    VAR_TIPO_FONDO_DESTINO        VARCHAR2(5);
    VAR_DISTRIBUCION_SOLICITADA   VARCHAR2(10);
    VAR_ID_EMPLEADOR              VARCHAR2(15);
    VAR_RAZON_SOCIAL              VARCHAR2(100);
    VAR_DIRECCION_EMP             VARCHAR2(200);
    VAR_REGION_EMP                VARCHAR2(70);
    VAR_COMUNA_EMP                VARCHAR2(70);
    VAR_TELEFONO_EMP              VARCHAR2(15);
    VAR_EMAIL_EMP                 VARCHAR2(150);
    VAR_COD_AGENCIA               VARCHAR2(100);
    VAR_NOMBRE_EJECUTIVO          VARCHAR2(100);
    VAR_ID_VENDEDOR               VARCHAR2(15);
    VAR_FECHA_TRASPASO            VARCHAR2(12);
    -- INFO COMPROBANTE
    VAR_DESCRIPCION_SOLICITUD VARCHAR2(200);
    VAR_FOLIO                 VARCHAR2(20);
    VAR_FECHA_SOLICITUD       VARCHAR(12);
    VAR_ESTADO_SOLICITUD      VARCHAR(50);
    VAR_VIA_INGRESO           VARCHAR2(50);
  BEGIN

    VAR_CONTADOR := -1;

    IF VIVC_TIPO_SALIDA = 'D' THEN
      SELECT C.ID_REPORTE_DETALLE, C.ID_FORMATO_DETALLE
        INTO VAR_ID_REPORTE, VAR_ID_FORMATO
        FROM TIPO_MENU_CONSOLIDADO C
       WHERE C.ID_TIPO_SOLICITUD = VINU_TIPO_SOLICITUD;
    ELSE
      SELECT C.ID_REPORTE_COMPROBANTE,
             C.ID_FORMATO_COMPROBANTE,
             C.TIPO_TRAMITE
        INTO VAR_ID_REPORTE, VAR_ID_FORMATO, VAR_TIPO_TRAMITE
        FROM TIPO_MENU_CONSOLIDADO C
       WHERE C.ID_TIPO_SOLICITUD = VINU_TIPO_SOLICITUD;
    END IF;

    IF VIVC_TIPO_SALIDA = 'D' THEN

      SOLICITUDES.PCK_CONSOLIDADO_TRAMITES.DETALLE_SMOVTI(VINU_ID_SOLICITUD,
                                                          VINU_ID_NUM_CLIENTE,
                                                          VAR_CURSOR);
      VAR_XML := '<TRASPASO_EGRESO>' || '<Identificacion>' || '<IdReporte>' ||
                 VAR_ID_REPORTE || '</IdReporte>' || '<IdFormato>' ||
                 VAR_ID_FORMATO || '</IdFormato>' || '</Identificacion>';

      LOOP
        FETCH VAR_CURSOR
          INTO VAR_NOMBRE, 
    VAR_ID_PERSONA, 
    VAR_FECHA_NACIMIENTO, 
    VAR_DIRECCION, 
    VAR_REGION, 
    VAR_COMUNA, 
    VAR_TELEFONO, 
    VAR_EMAIL, 
    VAR_SEXO, 
    VAR_TIPO_TRABAJADOR, 
    VAR_PENSIONADO, 
    VAR_FECHA_AFILIACION, 
    VAR_AFP_NUEVA, 
    VAR_COD_INSTITUCION_SOLICITUD, 
    VAR_AFP_ANTIGUA, 
    VAR_COD_ADM_ORIGEN, 
    VAR_VAR_ML_RENTA_IMPONIBLE, 
    VAR_TRASPASA_CCV, 
    VAR_TRASPASA_CDC, 
    VAR_CARTOLA_EMAIL, 
    VAR_TIPO_PRODUCTO, 
    VAR_TIPO_FONDO_ORIGEN, 
    VAR_DISTRIBUCION_ACTUAL, 
    VAR_TIPO_FONDO_DESTINO, 
    VAR_DISTRIBUCION_SOLICITADA, 
    VAR_ID_EMPLEADOR, 
    VAR_RAZON_SOCIAL, 
    VAR_DIRECCION_EMP, 
    VAR_REGION_EMP, 
    VAR_COMUNA_EMP, 
    VAR_TELEFONO_EMP, 
    VAR_EMAIL_EMP, 
    VAR_COD_AGENCIA, 
    VAR_NOMBRE_EJECUTIVO, 
    VAR_ID_VENDEDOR, 
    VAR_FECHA_TRASPASO;

        EXIT WHEN VAR_CURSOR%NOTFOUND;

        IF VAR_CONTADOR = -1 THEN
          VAR_CONTADOR := 0;
        END IF;

        IF VAR_CONTADOR = 0 THEN
          VAR_XML := VAR_XML || '<INFO_AFILIADO>' || '<NOMBRE>' ||
                     VAR_NOMBRE || '</NOMBRE>' || '<RUT>' || VAR_ID_PERSONA ||
                     '</RUT>' || '<DOMICILIO>' || VAR_DIRECCION ||
                     '</DOMICILIO>' || '<COMUNA>' || VAR_COMUNA ||
                     '</COMUNA>' || '<REGION>' || VAR_REGION || '</REGION>' ||
                     '<TELEFONO>' || VAR_TELEFONO || '</TELEFONO>' ||
                     '<EMAIL>' || VAR_EMAIL || '</EMAIL>' || '<SEXO>' ||
                     VAR_SEXO || '</SEXO>' || '<TIPO_TRABAJADOR>' ||
                     VAR_TIPO_TRABAJADOR || '</TIPO_TRABAJADOR>' ||
                     '</INFO_AFILIADO>' || '<INFO_EMPLEADOR>' ||
                     '<RAZON_SOCIAL>' || VAR_RAZON_SOCIAL ||
                     '</RAZON_SOCIAL>' || '<ID_EMPLEADOR>' ||
                     VAR_ID_EMPLEADOR || '</ID_EMPLEADOR>' ||
                     '<DIRECCION_EMP>' || VAR_DIRECCION_EMP ||
                     '</DIRECCION_EMP>' || '<COMUNA_EMP>' || VAR_COMUNA_EMP ||
                     '</COMUNA_EMP>' || '<COD_REGION_EMP>' ||
                     VAR_REGION_EMP || '</COD_REGION_EMP>' ||
                     '<TELEFONO_EMP>' || VAR_TELEFONO_EMP ||
                     '</TELEFONO_EMP>' || '<EMAIL>' || VAR_EMAIL_EMP ||
                     '</EMAIL>' || '</INFO_EMPLEADOR>' ||
                     '<INFO_EJECUTIVO>' || '<COD_AGENCIA>' ||
                     VAR_COD_AGENCIA || '</COD_AGENCIA>' ||
                     '<NOMBRE_EJECUTIVO>' || VAR_NOMBRE_EJECUTIVO ||
                     '</NOMBRE_EJECUTIVO>' || '<ID_VENDEDOR>' ||
                     VAR_ID_VENDEDOR || '</ID_VENDEDOR>' ||
                     '</INFO_EJECUTIVO>' || '<INFO_TRASPASO>' ||
                     '<PENSIONADO>' || VAR_PENSIONADO || '</PENSIONADO>' ||
                     '<FEC_AFILIACION>' || VAR_FECHA_AFILIACION ||
                     '</FEC_AFILIACION>' || '<VAL_ML_RENTA_IMPONIBLE>' ||
                     VAR_VAR_ML_RENTA_IMPONIBLE ||
                     '</VAL_ML_RENTA_IMPONIBLE>' || '<AFP_NUEVA>' ||
                     VAR_AFP_NUEVA || '</AFP_NUEVA>' ||
                     '<COD_INSTITUCION_SOLICITUD>' ||
                     VAR_COD_INSTITUCION_SOLICITUD ||
                     '</COD_INSTITUCION_SOLICITUD>' || '<AFP_ANTIGUA>' ||
                     VAR_AFP_ANTIGUA || '</AFP_ANTIGUA>' ||
                     '<COD_ADM_ORIGEN>' || VAR_COD_ADM_ORIGEN ||
                     '</COD_ADM_ORIGEN>' || '<TRASPASA_CCV>' ||
                     VAR_TRASPASA_CCV || '</TRASPASA_CCV>' ||
                     '<TRASPASA_CDC>' || VAR_TRASPASA_CDC ||
                     '</TRASPASA_CDC>' || '<CARTOLA_EMAIL>' ||
                     VAR_CARTOLA_EMAIL || '</CARTOLA_EMAIL>' ||
                     '</INFO_TRASPASO>';

        END IF;

        VAR_XML := VAR_XML || '<FONDOS>' || '<TIPO_PRODUCTO>' ||
                   VAR_TIPO_PRODUCTO || '</TIPO_PRODUCTO>' ||
                   '<TIPO_FONDO_ORIGEN>' || VAR_TIPO_FONDO_ORIGEN ||
                   '</TIPO_FONDO_ORIGEN>' || '<DISTRIBUCION_ACTUAL>' ||
                   VAR_DISTRIBUCION_ACTUAL || '</DISTRIBUCION_ACTUAL>' ||
                   '<TIPO_FONDO_DESTINO>' || VAR_TIPO_FONDO_DESTINO ||
                   '</TIPO_FONDO_DESTINO>' || '<DISTRIBUCION_SOLICITADA>' ||
                   VAR_DISTRIBUCION_SOLICITADA ||
                   '</DISTRIBUCION_SOLICITADA>' || '</FONDOS>';

        VAR_CONTADOR := VAR_CONTADOR + 1;

      END LOOP;
      CLOSE VAR_CURSOR;

      VAR_XML := VAR_XML || '</TRASPASO_EGRESO>';

    ELSE

      VAR_XML := '<COMPROBANTE_RESUMEN>' || '<Identificacion>' ||
                 '<IdReporte>' || VAR_ID_REPORTE || '</IdReporte>' ||
                 '<IdFormato>' || VAR_ID_FORMATO || '</IdFormato>' ||
                 '</Identificacion>';

      SOLICITUDES.PCK_CONSOLIDADO_TRAMITES.DETALLE_SMOVTI(VINU_ID_SOLICITUD,
                                                          VINU_ID_NUM_CLIENTE,
                                                          VAR_CURSOR);

      SOLICITUDES.PCK_CONSOLIDADO_TRAMITES.RESUMEN_SOLICITUD(VINU_ID_SOLICITUD,
                                                             VAR_DESCRIPCION_SOLICITUD,
                                                             VAR_FOLIO,
                                                             VAR_FECHA_SOLICITUD,
                                                             VAR_ESTADO_SOLICITUD,
                                                             VAR_VIA_INGRESO);

      LOOP
        FETCH VAR_CURSOR
          INTO VAR_NOMBRE, 
    VAR_ID_PERSONA, 
    VAR_FECHA_NACIMIENTO, 
    VAR_DIRECCION, 
    VAR_REGION, 
    VAR_COMUNA, 
    VAR_TELEFONO, 
    VAR_EMAIL, 
    VAR_SEXO, 
    VAR_TIPO_TRABAJADOR, 
    VAR_PENSIONADO, 
    VAR_FECHA_AFILIACION, 
    VAR_AFP_NUEVA, 
    VAR_COD_INSTITUCION_SOLICITUD, 
    VAR_AFP_ANTIGUA, 
    VAR_COD_ADM_ORIGEN, 
    VAR_VAR_ML_RENTA_IMPONIBLE, 
    VAR_TRASPASA_CCV, 
    VAR_TRASPASA_CDC, 
    VAR_CARTOLA_EMAIL, 
    VAR_TIPO_PRODUCTO, 
    VAR_TIPO_FONDO_ORIGEN, 
    VAR_DISTRIBUCION_ACTUAL, 
    VAR_TIPO_FONDO_DESTINO, 
    VAR_DISTRIBUCION_SOLICITADA, 
    VAR_ID_EMPLEADOR, 
    VAR_RAZON_SOCIAL, 
    VAR_DIRECCION_EMP, 
    VAR_REGION_EMP, 
    VAR_COMUNA_EMP, 
    VAR_TELEFONO_EMP, 
    VAR_EMAIL_EMP, 
    VAR_COD_AGENCIA, 
    VAR_NOMBRE_EJECUTIVO, 
    VAR_ID_VENDEDOR, 
    VAR_FECHA_TRASPASO;

        EXIT WHEN VAR_CURSOR%NOTFOUND;

        IF VAR_CONTADOR = -1 THEN
          VAR_CONTADOR := 0;
        END IF;

        IF VAR_CONTADOR = 0 THEN
          VAR_XML := VAR_XML || '<COMPROBANTE>' || '<ID_TIPO_TRAMITE>' ||
                     VAR_TIPO_TRAMITE || '</ID_TIPO_TRAMITE>' || '<NOMBRE>' ||
                     VAR_NOMBRE || '</NOMBRE>' || '<RUT>' || VAR_ID_PERSONA ||
                     '</RUT>' || '<DOMICILIO>' || VAR_DIRECCION ||
                     '</DOMICILIO>' || '<REGION>' || VAR_REGION ||
                     '</REGION>' || '<COMUNA>' || VAR_COMUNA || '</COMUNA>' ||
                     '<TELEFONO>' || VAR_TELEFONO || '</TELEFONO>' ||
                     '<EMAIL>' || VAR_EMAIL || '</EMAIL>' ||
                     '<TITULO_COLUMNA>Fecha Traspaso</TITULO_COLUMNA>' ||
                     '<INFO_COLUMNA>' || VAR_FECHA_TRASPASO ||
                     '</INFO_COLUMNA>' || '<ESTADO>' ||
                     VAR_ESTADO_SOLICITUD || '</ESTADO>' || '<VIA_INGRESO>' ||
                     VAR_VIA_INGRESO || '</VIA_INGRESO>' ||
                     '<FECHA_SOLICITUD>' || VAR_FECHA_SOLICITUD ||
                     '</FECHA_SOLICITUD>' || '<NRO_FOLIO>' || VAR_FOLIO ||
                     '</NRO_FOLIO>' || '<DESCRIPCION_TRAMITE>' ||
                     VAR_DESCRIPCION_SOLICITUD || '</DESCRIPCION_TRAMITE>' ||
                     '<SEXO>' || VAR_SEXO || '</SEXO>' ||
                     '<TIPO_TRABAJADOR>' || VAR_TIPO_TRABAJADOR ||
                     '</TIPO_TRABAJADOR>' || '</COMPROBANTE>' ||
                     '<INFO_TRASPASO>' || '<PENSIONADO>' || VAR_PENSIONADO ||
                     '</PENSIONADO>' || '<FEC_AFILIACION>' ||
                     VAR_FECHA_AFILIACION || '</FEC_AFILIACION>' ||
                     '<VAL_ML_RENTA_IMPONIBLE>' ||
                     VAR_VAR_ML_RENTA_IMPONIBLE ||
                     '</VAL_ML_RENTA_IMPONIBLE>' || '<AFP_NUEVA>' ||
                     VAR_AFP_NUEVA || '</AFP_NUEVA>' ||
                     '<COD_INSTITUCION_SOLICITUD>' ||
                     VAR_COD_INSTITUCION_SOLICITUD ||
                     '</COD_INSTITUCION_SOLICITUD>' || '<AFP_ANTIGUA>' ||
                     VAR_AFP_ANTIGUA || '</AFP_ANTIGUA>' ||
                     '<COD_ADM_ORIGEN>' || VAR_COD_ADM_ORIGEN ||
                     '</COD_ADM_ORIGEN>' || '<TRASPASA_CCV>' ||
                     VAR_TRASPASA_CCV || '</TRASPASA_CCV>' ||
                     '<TRASPASA_CDC>' || VAR_TRASPASA_CDC ||
                     '</TRASPASA_CDC>' || '<CARTOLA_EMAIL>' ||
                     VAR_CARTOLA_EMAIL || '</CARTOLA_EMAIL>' ||
                     '</INFO_TRASPASO>' || '<INFO_EMPLEADOR>' ||
                     '<RAZON_SOCIAL>' || VAR_RAZON_SOCIAL ||
                     '</RAZON_SOCIAL>' || '<ID_EMPLEADOR>' ||
                     VAR_ID_EMPLEADOR || '</ID_EMPLEADOR>' ||
                     '<DIRECCION_EMP>' || VAR_DIRECCION_EMP ||
                     '</DIRECCION_EMP>' || '<COMUNA_EMP>' || VAR_COMUNA_EMP ||
                     '</COMUNA_EMP>' || '<COD_REGION_EMP>' ||
                     VAR_REGION_EMP || '</COD_REGION_EMP>' ||
                     '<TELEFONO_EMP>' || VAR_TELEFONO_EMP ||
                     '</TELEFONO_EMP>' || '<EMAIL>' || VAR_EMAIL_EMP ||
                     '</EMAIL>' || '</INFO_EMPLEADOR>';

        END IF;

        VAR_XML := VAR_XML || '<FONDOS>' || '<TIPO_PRODUCTO>' ||
                   VAR_TIPO_PRODUCTO || '</TIPO_PRODUCTO>' ||
                   '<TIPO_FONDO_ORIGEN>' || VAR_TIPO_FONDO_ORIGEN ||
                   '</TIPO_FONDO_ORIGEN>' || '<DISTRIBUCION_ACTUAL>' ||
                   VAR_DISTRIBUCION_ACTUAL || '</DISTRIBUCION_ACTUAL>' ||
                   '<TIPO_FONDO_DESTINO>' || VAR_TIPO_FONDO_DESTINO ||
                   '</TIPO_FONDO_DESTINO>' || '<DISTRIBUCION_SOLICITADA>' ||
                   VAR_DISTRIBUCION_SOLICITADA ||
                   '</DISTRIBUCION_SOLICITADA>' || '</FONDOS>';

        VAR_CONTADOR := VAR_CONTADOR + 1;

      END LOOP;
      CLOSE VAR_CURSOR;

      VAR_XML := VAR_XML || '</COMPROBANTE_RESUMEN>';

    END IF;

    IF VAR_CONTADOR = -1 THEN
      VAR_XML := '';
    END IF;

    OPEN VOCUR_XML FOR
      SELECT VAR_XML AS XML FROM DUAL;

  END TRAMITE_TRASPASO_INGRESO;

  PROCEDURE TRAMITE_DESCUENTO_APV_CAV(VINU_ID_SOLICITUD   IN NUMBER, -- ID SOLICITUD
                                      VINU_ID_NUM_CLIENTE IN NUMBER, -- ID DEL CLIENTE
                                      VINU_TIPO_SOLICITUD IN NUMBER, -- TIPO SOLICITUD
                                      VIVC_TIPO_SALIDA    IN VARCHAR2, -- R RESUMEN   D DETALLADA
                                      VOCUR_XML           OUT TCURSOR) AS
    VAR_XML                   CLOB;
    VAR_CURSOR                TCURSOR;
    VAR_CONTADOR              NUMBER;
    VAR_DESCRIPCION_SOLICITUD VARCHAR2(200);
    VAR_FOLIO                 VARCHAR2(100);
    VAR_FECHA_SOLICITUD       VARCHAR2(100);
    VAR_ESTADO_SOLICITUD      VARCHAR2(100);
    VAR_VIA_INGRESO           VARCHAR2(100);
    -- INFO REPORTE
    VAR_ID_REPORTE   VARCHAR2(100);
    VAR_ID_FORMATO   VARCHAR2(100);
    VAR_TIPO_TRAMITE VARCHAR2(100);
    -- INFO AFILIADO
    VAR_NOMBRE     VARCHAR2(100);
    VAR_ID_PERSONA VARCHAR(100);
    VAR_DIRECCION  VARCHAR2(200);
    VAR_REGION     VARCHAR2(100);
    VAR_COMUNA     VARCHAR2(100);
    VAR_TELEFONO   VARCHAR(100);
    VAR_EMAIL      VARCHAR(100);
    -- INFO EMPLEADOR
    VAR_RUT_EMPLEADOR VARCHAR2(100);
    VAR_RAZON_SOCIAL  VARCHAR2(100);
    VAR_DIRECCION_EMP VARCHAR2(200);
    VAR_COMUNA_EMP    VARCHAR2(100);
    VAR_REGION_EMP    VARCHAR2(100);
    VAR_TELEFONO_EMP  VARCHAR2(100);
    VAR_EMAIL_EMP     VARCHAR2(100);
    -- INFO DESCUENTO
    VAR_TIPO_MOVIMIENTO        VARCHAR2(100);
    VAR_TIPO_PRODUCTO          VARCHAR2(100);
    VAR_VALOR_DESCUENTO        VARCHAR2(100);
    VAR_TIPO_DESCUENTO         VARCHAR2(100);
    VAR_VIGENCIA_DESCUENTO     VARCHAR2(100);
    VAR_FECHA_PRIMER_DESCUENTO VARCHAR2(100);
    VAR_PERIODO_PRIMER_PAGO    VARCHAR2(100);
    VAR_FECHA_FIN_DESCUENTO    VARCHAR2(100);
    VAR_TIPO_FONDO_RECAUDACION VARCHAR2(100);
    VAR_AGENCIA                VARCHAR2(100);
    VAR_NOMBRE_EJECUTIVO       VARCHAR2(100);
    VAR_RUT_EJECUTIVO          VARCHAR2(100);
    VAR_FECHA_NOTI_INTERNET    VARCHAR2(100);
    VAR_FECHA_MATERIALIZACION  VARCHAR2(100);
    VAR_UNIDAD_DESCUENTO       VARCHAR2(100);
    VAR_REGIMEN                VARCHAR2(100);
  BEGIN

    VAR_CONTADOR := -1;

    IF VIVC_TIPO_SALIDA = 'D' THEN
      SELECT C.ID_REPORTE_DETALLE, C.ID_FORMATO_DETALLE
        INTO VAR_ID_REPORTE, VAR_ID_FORMATO
        FROM TIPO_MENU_CONSOLIDADO C
       WHERE C.ID_TIPO_SOLICITUD = VINU_TIPO_SOLICITUD;
    ELSE
      SELECT C.ID_REPORTE_COMPROBANTE,
             C.ID_FORMATO_COMPROBANTE,
             C.TIPO_TRAMITE
        INTO VAR_ID_REPORTE, VAR_ID_FORMATO, VAR_TIPO_TRAMITE
        FROM TIPO_MENU_CONSOLIDADO C
       WHERE C.ID_TIPO_SOLICITUD = VINU_TIPO_SOLICITUD;
    END IF;

    IF VIVC_TIPO_SALIDA = 'D' THEN

      SOLICITUDES.PCK_CONSOLIDADO_TRAMITES.DESCUENTO_CAV_APV(VINU_ID_SOLICITUD,
                                                             VINU_ID_NUM_CLIENTE,
                                                             VAR_CURSOR);
      VAR_XML := '<DESCUENTO_APV_CAV>' || '<Identificacion>' ||
                 '<IdReporte>' || VAR_ID_REPORTE || '</IdReporte>' ||
                 '<IdFormato>' || VAR_ID_FORMATO || '</IdFormato>' ||
                 '</Identificacion>';

      LOOP
        FETCH VAR_CURSOR
          INTO VAR_NOMBRE, 
    VAR_ID_PERSONA, 
    VAR_DIRECCION, 
    VAR_REGION, 
    VAR_COMUNA, 
    VAR_TELEFONO, 
    VAR_EMAIL, 
    VAR_RUT_EMPLEADOR, 
    VAR_RAZON_SOCIAL, 
    VAR_DIRECCION_EMP, 
    VAR_COMUNA_EMP, 
    VAR_REGION_EMP, 
    VAR_TELEFONO_EMP, 
    VAR_EMAIL_EMP, 
    VAR_TIPO_MOVIMIENTO, 
    VAR_TIPO_PRODUCTO, 
    VAR_VALOR_DESCUENTO, 
    VAR_TIPO_DESCUENTO, 
    VAR_VIGENCIA_DESCUENTO, 
    VAR_FECHA_PRIMER_DESCUENTO, 
    VAR_PERIODO_PRIMER_PAGO, 
    VAR_FECHA_FIN_DESCUENTO, 
    VAR_TIPO_FONDO_RECAUDACION, 
    VAR_AGENCIA, 
    VAR_NOMBRE_EJECUTIVO, 
    VAR_RUT_EJECUTIVO, 
    VAR_FECHA_NOTI_INTERNET, 
    VAR_FECHA_MATERIALIZACION, 
    VAR_UNIDAD_DESCUENTO, 
    VAR_REGIMEN;

        EXIT WHEN VAR_CURSOR%NOTFOUND;

        IF VAR_CONTADOR = -1 THEN
          VAR_CONTADOR := 0;
        END IF;

        IF VAR_CONTADOR = 0 THEN
          VAR_XML := VAR_XML || '<INFO_AFILIADO>' || '<NOMBRE>' ||
                     VAR_NOMBRE || '</NOMBRE>' || '<RUT>' || VAR_ID_PERSONA ||
                     '</RUT>' || '<DOMICILIO>' || VAR_DIRECCION ||
                     '</DOMICILIO>' || '<COMUNA>' || VAR_COMUNA ||
                     '</COMUNA>' || '<REGION>' || VAR_REGION || '</REGION>' ||
                     '<TELEFONO>' || VAR_TELEFONO || '</TELEFONO>' ||
                     '<EMAIL>' || VAR_EMAIL || '</EMAIL>' ||
                     '</INFO_AFILIADO>' || '<INFO_EMPLEADOR>' ||
                     '<ID_EMPLEADOR>' || VAR_RUT_EMPLEADOR ||
                     '</ID_EMPLEADOR>' || '<RAZON_SOCIAL>' ||
                     VAR_RAZON_SOCIAL || '</RAZON_SOCIAL>' || '<DIRECCION>' ||
                     VAR_DIRECCION_EMP || '</DIRECCION>' || '<EMP_REGION>' ||
                     VAR_REGION_EMP || '</EMP_REGION>' || '<EMP_COMUNA>' ||
                     VAR_COMUNA_EMP || '</EMP_COMUNA>' || '<EMP_TELEFONO>' ||
                     VAR_TELEFONO_EMP || '</EMP_TELEFONO>' || '<EMP_EMAIL>' ||
                     VAR_EMAIL_EMP || '</EMP_EMAIL>' || '</INFO_EMPLEADOR>' ||
                     '<INFO_DESCUENTO>' || '<TIPO_PRODUCTO>' ||
                     VAR_TIPO_PRODUCTO || '</TIPO_PRODUCTO>' ||
                     '<VAL_DESCUENTO>' || VAR_VALOR_DESCUENTO ||
                     '</VAL_DESCUENTO>' || '<VIGENCIA_DESCUENTO>' ||
                     VAR_VIGENCIA_DESCUENTO || '</VIGENCIA_DESCUENTO>' ||
                     '<FEC_PRIMER_DESCUENTO>' || VAR_FECHA_PRIMER_DESCUENTO ||
                     '</FEC_PRIMER_DESCUENTO>' || '<PER_PRIMER_PAGO>' ||
                     VAR_PERIODO_PRIMER_PAGO || '</PER_PRIMER_PAGO>' ||
                     '<VIGENCIA_DESCUENTO>' || VAR_VIGENCIA_DESCUENTO ||
                     '</VIGENCIA_DESCUENTO>' || '<FEC_FIN_DESCUENTO>' ||
                     VAR_FECHA_FIN_DESCUENTO || '</FEC_FIN_DESCUENTO>' ||
                     '<UNIDAD_DESCUENTO>' || UPPER(VAR_UNIDAD_DESCUENTO) ||
                     '</UNIDAD_DESCUENTO>' || '<TIPO_MOVIMIENTO>' ||
                     UPPER(VAR_TIPO_MOVIMIENTO) || '</TIPO_MOVIMIENTO>' ||
                     '<REGIMEN>' || VAR_REGIMEN || '</REGIMEN>' ||
                     '</INFO_DESCUENTO>' || 
         '<INFO_RESP_AFP>' ||
                     '<COD_AGENCIA>' || VAR_AGENCIA || '</COD_AGENCIA>' ||
                     '<NOMBRE_EJECUTIVO>' || VAR_NOMBRE_EJECUTIVO ||
                     '</NOMBRE_EJECUTIVO>' || '<RUT_EJECUTIVO>' ||
                     VAR_RUT_EJECUTIVO || '</RUT_EJECUTIVO>' ||
                     '<FEC_NOTIFICACION_INTERNET>' ||
                     VAR_FECHA_NOTI_INTERNET ||
                     '</FEC_NOTIFICACION_INTERNET>' || '</INFO_RESP_AFP>';

        END IF;

        VAR_XML := VAR_XML || '<INFO_FONDO_SELECCIONADO>' ||
                   '<TIPO_PRODUCTO>' ||
        VAR_TIPO_PRODUCTO ||
                               '</TIPO_PRODUCTO>' ||
                               '<TIPO_FONDO_RECAUDACION>' ||
                   VAR_TIPO_FONDO_RECAUDACION ||
                   '</TIPO_FONDO_RECAUDACION>' ||
                   '</INFO_FONDO_SELECCIONADO>';

        VAR_CONTADOR := VAR_CONTADOR + 1;

      END LOOP;
      CLOSE VAR_CURSOR;

      VAR_XML := VAR_XML || '</DESCUENTO_APV_CAV>';

    ELSE

      VAR_XML := '<COMPROBANTE_RESUMEN>' || '<Identificacion>' ||
                 '<IdReporte>' || VAR_ID_REPORTE || '</IdReporte>' ||
                 '<IdFormato>' || VAR_ID_FORMATO || '</IdFormato>' ||
                 '</Identificacion>';

      SOLICITUDES.PCK_CONSOLIDADO_TRAMITES.DESCUENTO_CAV_APV(VINU_ID_SOLICITUD,
                                                             VINU_ID_NUM_CLIENTE,
                                                             VAR_CURSOR);

      SOLICITUDES.PCK_CONSOLIDADO_TRAMITES.RESUMEN_SOLICITUD(VINU_ID_SOLICITUD,
                                                             VAR_DESCRIPCION_SOLICITUD,
                                                             VAR_FOLIO,
                                                             VAR_FECHA_SOLICITUD,
                                                             VAR_ESTADO_SOLICITUD,
                                                             VAR_VIA_INGRESO);

      LOOP
        FETCH VAR_CURSOR
          INTO VAR_NOMBRE, 
    VAR_ID_PERSONA, 
    VAR_DIRECCION, 
    VAR_REGION, 
    VAR_COMUNA, 
    VAR_TELEFONO, 
    VAR_EMAIL, 
    VAR_RUT_EMPLEADOR, 
    VAR_RAZON_SOCIAL, 
    VAR_DIRECCION_EMP, 
    VAR_COMUNA_EMP, 
    VAR_REGION_EMP, 
    VAR_TELEFONO_EMP, 
    VAR_EMAIL_EMP, 
    VAR_TIPO_MOVIMIENTO, 
    VAR_TIPO_PRODUCTO, 
    VAR_VALOR_DESCUENTO, 
    VAR_TIPO_DESCUENTO, 
    VAR_VIGENCIA_DESCUENTO, 
    VAR_FECHA_PRIMER_DESCUENTO, 
    VAR_PERIODO_PRIMER_PAGO, 
    VAR_FECHA_FIN_DESCUENTO, 
    VAR_TIPO_FONDO_RECAUDACION, 
    VAR_AGENCIA, 
    VAR_NOMBRE_EJECUTIVO, 
    VAR_RUT_EJECUTIVO, 
    VAR_FECHA_NOTI_INTERNET, 
    VAR_FECHA_MATERIALIZACION, 
    VAR_UNIDAD_DESCUENTO, 
    VAR_REGIMEN;

        EXIT WHEN VAR_CURSOR%NOTFOUND;

        IF VAR_CONTADOR = -1 THEN
          VAR_CONTADOR := 0;
        END IF;

        IF VAR_CONTADOR = 0 THEN
          VAR_XML := VAR_XML || '<COMPROBANTE>' || '<ID_TIPO_TRAMITE>' ||
                     VAR_TIPO_TRAMITE || '</ID_TIPO_TRAMITE>' || '<NOMBRE>' ||
                     VAR_NOMBRE || '</NOMBRE>' || '<RUT>' || VAR_ID_PERSONA ||
                     '</RUT>' || '<DOMICILIO>' || VAR_DIRECCION ||
                     '</DOMICILIO>' || '<REGION>' || VAR_REGION ||
                     '</REGION>' || '<COMUNA>' || VAR_COMUNA || '</COMUNA>' ||
                     '<TELEFONO>' || VAR_TELEFONO || '</TELEFONO>' ||
                     '<EMAIL>' || VAR_EMAIL || '</EMAIL>' ||
                     '<TITULO_COLUMNA>Fecha Materialización</TITULO_COLUMNA>' ||
                     '<INFO_COLUMNA>' || VAR_FECHA_MATERIALIZACION ||
                     '</INFO_COLUMNA>' || '<ESTADO>' ||
                     VAR_ESTADO_SOLICITUD || '</ESTADO>' || '<VIA_INGRESO>' ||
                     VAR_VIA_INGRESO || '</VIA_INGRESO>' ||
                     '<FECHA_SOLICITUD>' || VAR_FECHA_SOLICITUD ||
                     '</FECHA_SOLICITUD>' || '<NRO_FOLIO>' || VAR_FOLIO ||
                     '</NRO_FOLIO>' || '<DESCRIPCION_TRAMITE>' ||
                     VAR_TIPO_MOVIMIENTO || '</DESCRIPCION_TRAMITE>' ||
                     '</COMPROBANTE>' || '<INFO_EMPLEADOR>' ||
                     '<ID_EMPLEADOR>' || VAR_RUT_EMPLEADOR ||
                     '</ID_EMPLEADOR>' || '<RAZON_SOCIAL>' ||
                     VAR_RAZON_SOCIAL || '</RAZON_SOCIAL>' || '<DIRECCION>' ||
                     VAR_DIRECCION_EMP || '</DIRECCION>' || '<EMP_COMUNA>' ||
                     VAR_COMUNA_EMP || '</EMP_COMUNA>' || '<EMP_REGION>' ||
                     VAR_REGION_EMP || '</EMP_REGION>' || '<EMP_TELEFONO>' ||
                     VAR_TELEFONO_EMP || '</EMP_TELEFONO>' || '<EMP_EMAIL>' ||
                     VAR_EMAIL_EMP || '</EMP_EMAIL>' || '</INFO_EMPLEADOR>' ||
                     '<INFO_DESCUENTO>' || '<TIPO_PRODUCTO>' ||
                     VAR_TIPO_PRODUCTO || '</TIPO_PRODUCTO>' ||
                     '<VAL_DESCUENTO>' || VAR_VALOR_DESCUENTO ||
                     '</VAL_DESCUENTO>' || '<VIGENCIA_DESCUENTO>' ||
                     VAR_VIGENCIA_DESCUENTO || '</VIGENCIA_DESCUENTO>' ||
                     '<FEC_PRIMER_DESCUENTO>' || VAR_FECHA_PRIMER_DESCUENTO ||
                     '</FEC_PRIMER_DESCUENTO>' || '<PER_PRIMER_PAGO>' ||
                     VAR_PERIODO_PRIMER_PAGO || '</PER_PRIMER_PAGO>' ||
                     '<FEC_FIN_DESCUENTO>' || VAR_FECHA_FIN_DESCUENTO ||
                     '</FEC_FIN_DESCUENTO>' || '<UNIDAD_DESCUENTO>' ||
                     UPPER(VAR_UNIDAD_DESCUENTO) || '</UNIDAD_DESCUENTO>' ||
                     '<TIPO_MOVIMIENTO>' || UPPER(VAR_TIPO_MOVIMIENTO) ||
                     '</TIPO_MOVIMIENTO>' || '<REGIMEN>' || VAR_REGIMEN ||
                     '</REGIMEN>' || '</INFO_DESCUENTO>';

        END IF;

        VAR_XML := VAR_XML || '<FONDO_SELECCIONADO>' || '<TIPO_PRODUCTO>' ||
                   VAR_TIPO_PRODUCTO || '</TIPO_PRODUCTO>' ||
                   '<TIPO_FONDO_RECAUDACION>' || 
       VAR_TIPO_FONDO_RECAUDACION ||
                   '</TIPO_FONDO_RECAUDACION>' || '</FONDO_SELECCIONADO>';

        VAR_CONTADOR := VAR_CONTADOR + 1;

      END LOOP;
      CLOSE VAR_CURSOR;

      VAR_XML := VAR_XML || '</COMPROBANTE_RESUMEN>';

    END IF;

    IF VAR_CONTADOR = -1 THEN
      VAR_XML := '';
    END IF;

    OPEN VOCUR_XML FOR
      SELECT VAR_XML AS XML FROM DUAL;

  END TRAMITE_DESCUENTO_APV_CAV;

  PROCEDURE TRAMITE_CAMBIO_FONDO_FUTURO(VINU_ID_SOLICITUD   IN NUMBER, -- ID SOLICITUD
                                        VINU_ID_NUM_CLIENTE IN NUMBER, -- ID DEL CLIENTE
                                        VINU_TIPO_SOLICITUD IN NUMBER, -- TIPO SOLICITUD
                                        VIVC_TIPO_SALIDA    IN VARCHAR2, -- R RESUMEN   D DETALLADA
                                        VOCUR_XML           OUT TCURSOR) AS
    VAR_XML      CLOB;
    VAR_CURSOR   TCURSOR;
    VAR_CONTADOR NUMBER;
    -- INFO AFILIADO
    VAR_NOMBRE     VARCHAR2(80);
    VAR_ID_PERSONA VARCHAR(15);
    VAR_DIRECCION  VARCHAR2(200);
    VAR_REGION     VARCHAR2(80);
    VAR_COMUNA     VARCHAR2(60);
    VAR_TELEFONO   VARCHAR(15);
    VAR_EMAIL      VARCHAR(80);
    -- INFO CAMBIO FONDO RECAUDADOR
    VAR_TIPO_PRODUCTO          VARCHAR(80);
    VAR_TIPO_FONDO_RECAUDACION VARCHAR(80);
    VAR_FEC_MATERIALIZACION    VARCHAR(80);
    VAR_FEC_ELECCION_ANTERIOR  VARCHAR(80);
    VAR_AJUSTE_SALDO           VARCHAR(2);
    VAR_FONDO_APERTURA         VARCHAR(2);
    VAR_PORCENTAJE_APERTURA    VARCHAR(3);
    -- INFO REPORTE
    VAR_ID_REPORTE   VARCHAR2(4);
    VAR_ID_FORMATO   VARCHAR2(5);
    VAR_TIPO_TRAMITE VARCHAR2(2);
    -- INFO COMPROBANTE
    VAR_DESCRIPCION_SOLICITUD VARCHAR2(200);
    VAR_FOLIO                 VARCHAR2(20);
    VAR_FECHA_SOLICITUD       VARCHAR(12);
    VAR_ESTADO_SOLICITUD      VARCHAR(50);
    VAR_VIA_INGRESO           VARCHAR2(50);
  BEGIN
    VAR_CONTADOR := 0;

    IF VIVC_TIPO_SALIDA = 'D' THEN
      SELECT C.ID_REPORTE_DETALLE, C.ID_FORMATO_DETALLE
        INTO VAR_ID_REPORTE, VAR_ID_FORMATO
        FROM TIPO_MENU_CONSOLIDADO C
       WHERE C.ID_TIPO_SOLICITUD = VINU_TIPO_SOLICITUD;
    ELSE
      SELECT C.ID_REPORTE_COMPROBANTE,
             C.ID_FORMATO_COMPROBANTE,
             C.TIPO_TRAMITE
        INTO VAR_ID_REPORTE, VAR_ID_FORMATO, VAR_TIPO_TRAMITE
        FROM TIPO_MENU_CONSOLIDADO C
       WHERE C.ID_TIPO_SOLICITUD = VINU_TIPO_SOLICITUD;
    END IF;

    IF VIVC_TIPO_SALIDA = 'D' THEN

      SOLICITUDES.PCK_CONSOLIDADO_TRAMITES.DETALLE_SCAMREC(VINU_ID_SOLICITUD,
                                                           VINU_ID_NUM_CLIENTE,
                                                           VAR_CURSOR);
      VAR_XML := '<CAMBIO_FONDO_FUTURO>' || '<Identificacion>' ||
                 '<IdReporte>' || VAR_ID_REPORTE || '</IdReporte>' ||
                 '<IdFormato>' || VAR_ID_FORMATO || '</IdFormato>' ||
                 '</Identificacion>';

      LOOP
        FETCH VAR_CURSOR
          INTO VAR_NOMBRE, 
    VAR_ID_PERSONA, 
    VAR_DIRECCION, 
    VAR_REGION, 
    VAR_COMUNA, 
    VAR_TELEFONO, 
    VAR_EMAIL, 
    VAR_TIPO_PRODUCTO, 
    VAR_TIPO_FONDO_RECAUDACION, 
    VAR_ESTADO_SOLICITUD, 
    VAR_FECHA_SOLICITUD, 
    VAR_FEC_MATERIALIZACION, 
    VAR_AJUSTE_SALDO, 
    VAR_FONDO_APERTURA, 
    VAR_PORCENTAJE_APERTURA;

        EXIT WHEN VAR_CURSOR%NOTFOUND;

        IF VAR_CONTADOR = 0 THEN
          VAR_XML := VAR_XML || '<INFO_AFILIADO>' || '<NOMBRE>' ||
                     VAR_NOMBRE || '</NOMBRE>' || '<RUT>' || VAR_ID_PERSONA ||
                     '</RUT>' || '<DIRECCION>' || VAR_DIRECCION ||
                     '</DIRECCION>' || '<COMUNA>' || VAR_COMUNA ||
                     '</COMUNA>' || '<REGION>' || VAR_REGION || '</REGION>' ||
                     '<TELEFONO>' || VAR_TELEFONO || '</TELEFONO>' ||
                     '<EMAIL>' || VAR_EMAIL || '</EMAIL>' ||
                     '<FECHA_MATERIALIZACION>' || VAR_FEC_MATERIALIZACION ||
                     '</FECHA_MATERIALIZACION>' ||
                     '<FECHA_ELECCION_ANTERIOR>' ||
                     VAR_FEC_ELECCION_ANTERIOR ||
                     '</FECHA_ELECCION_ANTERIOR>' || '</INFO_AFILIADO>' ||
                     '<DETALLE>';

        END IF;

        VAR_XML := VAR_XML || '<DETALLE_MVTO>' || '<TIPO_PRODUCTO>' ||
                   VAR_TIPO_PRODUCTO || '</TIPO_PRODUCTO>' ||
                   '<FONDOAPERTURA>' || VAR_FONDO_APERTURA ||
                   '</FONDOAPERTURA>' || '<PORCENTAJEAPERTURA>' ||
                   VAR_PORCENTAJE_APERTURA || '</PORCENTAJEAPERTURA>' ||
                   '</DETALLE_MVTO>';

        VAR_CONTADOR := VAR_CONTADOR + 1;

      END LOOP;
      CLOSE VAR_CURSOR;

      VAR_XML := VAR_XML || '</DETALLE>' || '</CAMBIO_FONDO_FUTURO>';

    ELSE
      VAR_XML := '<COMPROBANTE_RESUMEN>' || '<Identificacion>' ||
                 '<IdReporte>' || VAR_ID_REPORTE || '</IdReporte>' ||
                 '<IdFormato>' || VAR_ID_FORMATO || '</IdFormato>' ||
                 '</Identificacion>';

      SOLICITUDES.PCK_CONSOLIDADO_TRAMITES.DETALLE_SCAMREC(VINU_ID_SOLICITUD,
                                                           VINU_ID_NUM_CLIENTE,
                                                           VAR_CURSOR);

      SOLICITUDES.PCK_CONSOLIDADO_TRAMITES.RESUMEN_SOLICITUD(VINU_ID_SOLICITUD,
                                                             VAR_DESCRIPCION_SOLICITUD,
                                                             VAR_FOLIO,
                                                             VAR_FECHA_SOLICITUD,
                                                             VAR_ESTADO_SOLICITUD,
                                                             VAR_VIA_INGRESO);

      LOOP
        FETCH VAR_CURSOR
          INTO VAR_NOMBRE, 
    VAR_ID_PERSONA, 
    VAR_DIRECCION, 
    VAR_REGION, 
    VAR_COMUNA, 
    VAR_TELEFONO, 
    VAR_EMAIL, 
    VAR_TIPO_PRODUCTO, 
    VAR_TIPO_FONDO_RECAUDACION, 
    VAR_ESTADO_SOLICITUD, 
    VAR_FECHA_SOLICITUD, 
    VAR_FEC_MATERIALIZACION, 
    VAR_AJUSTE_SALDO, 
    VAR_FONDO_APERTURA, 
    VAR_PORCENTAJE_APERTURA;

        EXIT WHEN VAR_CURSOR%NOTFOUND;

        IF VAR_CONTADOR = 0 THEN
          VAR_XML := VAR_XML || '<COMPROBANTE>' || '<ID_TIPO_TRAMITE>' ||
                     VAR_TIPO_TRAMITE || '</ID_TIPO_TRAMITE>' || '<NOMBRE>' ||
                     VAR_NOMBRE || '</NOMBRE>' || '<RUT>' || VAR_ID_PERSONA ||
                     '</RUT>' || '<DOMICILIO>' || VAR_DIRECCION ||
                     '</DOMICILIO>' || '<REGION>' || VAR_REGION ||
                     '</REGION>' || '<COMUNA>' || VAR_COMUNA || '</COMUNA>' ||
                     '<TELEFONO>' || VAR_TELEFONO || '</TELEFONO>' ||
                     '<EMAIL>' || VAR_EMAIL || '</EMAIL>' ||
                     '<TITULO_COLUMNA>Fecha Materialización</TITULO_COLUMNA>' ||
                     '<INFO_COLUMNA>' || VAR_FEC_MATERIALIZACION ||
                     '</INFO_COLUMNA>' || '<ESTADO>' ||
                     VAR_ESTADO_SOLICITUD || '</ESTADO>' || '<VIA_INGRESO>' ||
                     VAR_VIA_INGRESO || '</VIA_INGRESO>' ||
                     '<FECHA_SOLICITUD>' || VAR_FECHA_SOLICITUD ||
                     '</FECHA_SOLICITUD>' || '<NRO_FOLIO>' || VAR_FOLIO ||
                     '</NRO_FOLIO>' || '<DESCRIPCION_TRAMITE>' ||
                     VAR_DESCRIPCION_SOLICITUD || '</DESCRIPCION_TRAMITE>' ||
                     '</COMPROBANTE>';

        END IF;

        VAR_XML := VAR_XML || '<FONDOS>' || '<TIPO_PRODUCTO>' ||
                   VAR_TIPO_PRODUCTO || '</TIPO_PRODUCTO>' ||
                   '<FONDOAPERTURA>' || VAR_FONDO_APERTURA ||
                   '</FONDOAPERTURA>' || '<PORCENTAJEAPERTURA>' ||
                   VAR_PORCENTAJE_APERTURA || '</PORCENTAJEAPERTURA>' ||
                   '</FONDOS>';

        VAR_CONTADOR := VAR_CONTADOR + 1;

      END LOOP;
      CLOSE VAR_CURSOR;

      VAR_XML := VAR_XML || '</COMPROBANTE_RESUMEN>';
    END IF;

    OPEN VOCUR_XML FOR
      SELECT VAR_XML AS XML FROM DUAL;

  END TRAMITE_CAMBIO_FONDO_FUTURO;

  PROCEDURE TRAMITE_PAGO_EXCESO(VINU_ID_SOLICITUD   IN NUMBER, -- ID SOLICITUD
                                VINU_ID_NUM_CLIENTE IN NUMBER, -- ID DEL CLIENTE
                                VINU_TIPO_SOLICITUD IN NUMBER, -- TIPO SOLICITUD
                                VIVC_TIPO_SALIDA    IN VARCHAR2, -- R RESUMEN   D DETALLADA
                                VOCUR_XML           OUT TCURSOR) AS
    VAR_XML                   CLOB;
    VAR_CURSOR                TCURSOR;
    VAR_CONTADOR              NUMBER;
    VAR_DESCRIPCION_SOLICITUD VARCHAR2(200);
    VAR_FOLIO                 VARCHAR2(20);
    VAR_FECHA_SOLICITUD       VARCHAR2(12);
    VAR_ESTADO_SOLICITUD      VARCHAR2(50);
    VAR_VIA_INGRESO           VARCHAR2(50);
    -- INFO REPORTE
    VAR_ID_REPORTE   VARCHAR2(4);
    VAR_ID_FORMATO   VARCHAR2(5);
    VAR_TIPO_TRAMITE VARCHAR2(2);
    -- INFO AFILIADO
    VAR_NOMBRE     VARCHAR2(80);
    VAR_ID_PERSONA VARCHAR(15);
    VAR_DIRECCION  VARCHAR2(200);
    VAR_REGION     VARCHAR2(80);
    VAR_COMUNA     VARCHAR2(60);
    VAR_TELEFONO   VARCHAR(15);
    VAR_EMAIL      VARCHAR(80);
    -- INFO PAGO EXCESO
    VAR_VIA_DE_PAGO          VARCHAR2(100);
    VAR_BANCO                VARCHAR2(100);
    VAR_NUMERO_DE_CUENTA     VARCHAR2(100);
    VAR_FUNDAMENTO           VARCHAR2(100);
    VAR_PERIODOS             VARCHAR2(100);
    VAR_COMENTARIO_TERMINO   VARCHAR2(1000);
    VAR_DESCRIPCION_ANALISIS VARCHAR2(1000);
    VAR_MONTO_PAGADO         VARCHAR(12);
    VAR_FECHA_PAGO           VARCHAR2(12);
    VAR_GENERICO             VARCHAR2(100);

  BEGIN

    VAR_CONTADOR := -1;

    IF VIVC_TIPO_SALIDA = 'D' THEN
      SELECT C.ID_REPORTE_DETALLE, C.ID_FORMATO_DETALLE
        INTO VAR_ID_REPORTE, VAR_ID_FORMATO
        FROM TIPO_MENU_CONSOLIDADO C
       WHERE C.ID_TIPO_SOLICITUD = VINU_TIPO_SOLICITUD;
    ELSE
      SELECT C.ID_REPORTE_COMPROBANTE,
             C.ID_FORMATO_COMPROBANTE,
             C.TIPO_TRAMITE
        INTO VAR_ID_REPORTE, VAR_ID_FORMATO, VAR_TIPO_TRAMITE
        FROM TIPO_MENU_CONSOLIDADO C
       WHERE C.ID_TIPO_SOLICITUD = VINU_TIPO_SOLICITUD;
    END IF;

    IF VIVC_TIPO_SALIDA = 'D' THEN

      EXCESOS.PCK_CONSOLIDADO_TRAMITES.DETALLE_PAGO_EXCESO(VINU_ID_SOLICITUD,
                                                           VINU_ID_NUM_CLIENTE,
                                                           VAR_CURSOR);
      VAR_XML := '<PAGO_EN_EXCESO>' || '<Identificacion>' || '<IdReporte>' ||
                 VAR_ID_REPORTE || '</IdReporte>' || '<IdFormato>' ||
                 VAR_ID_FORMATO || '</IdFormato>' || '</Identificacion>';

      LOOP
        FETCH VAR_CURSOR
          INTO VAR_NOMBRE, 
    VAR_ID_PERSONA, 
    VAR_DIRECCION, 
    VAR_REGION, 
    VAR_COMUNA, 
    VAR_TELEFONO, 
    VAR_EMAIL, 
    VAR_VIA_DE_PAGO, 
    VAR_BANCO, 
    VAR_NUMERO_DE_CUENTA, 
    VAR_FUNDAMENTO, 
    VAR_PERIODOS, 
    VAR_COMENTARIO_TERMINO, 
    VAR_DESCRIPCION_ANALISIS, 
    VAR_MONTO_PAGADO, 
    VAR_FECHA_PAGO;

        EXIT WHEN VAR_CURSOR%NOTFOUND;

        IF VAR_CONTADOR = -1 THEN
          VAR_CONTADOR := 0;
        END IF;

        IF VAR_DIRECCION = '--' OR VAR_DIRECCION IS NULL OR VAR_TELEFONO = '--' OR
           VAR_TELEFONO IS NULL OR VAR_EMAIL IS NULL OR VAR_EMAIL = '--' THEN

          OBTENER_DIR_FONO_EMAIL_CLI(VINU_ID_NUM_CLIENTE,
                                     VAR_DIRECCION,
                                     VAR_REGION,
                                     VAR_COMUNA,
                                     VAR_TELEFONO,
                                     VAR_EMAIL,
                                     VAR_GENERICO);

        END IF;

        IF VAR_CONTADOR = 0 THEN
          VAR_XML := VAR_XML || '<INFO_AFILIADO>' || '<NOMBRE>' ||
                     VAR_NOMBRE || '</NOMBRE>' || '<RUT>' || VAR_ID_PERSONA ||
                     '</RUT>' || '<DOMICILIO>' ||
                     FN_FORMATEO_VALOR_NULOS(VAR_DIRECCION) ||
                     '</DOMICILIO>' || '<COMUNA>' ||
                     FN_FORMATEO_VALOR_NULOS(VAR_COMUNA) || '</COMUNA>' ||
                     '<REGION>' || FN_FORMATEO_VALOR_NULOS(VAR_REGION) ||
                     '</REGION>' || '<TELEFONO>' ||
                     FN_FORMATEO_VALOR_NULOS(VAR_TELEFONO) || '</TELEFONO>' ||
                     '<EMAIL>' || FN_FORMATEO_VALOR_NULOS(VAR_EMAIL) ||
                     '</EMAIL>' || '</INFO_AFILIADO>' || '<PAGO_EXCESO>' ||
                     '<DESCRIPCION_ANALISIS>' ||
                     FN_FORMATEO_VALOR_NULOS(VAR_DESCRIPCION_ANALISIS) ||
                     '</DESCRIPCION_ANALISIS>' || '<FUNDAMENTO>' ||
                     FN_FORMATEO_VALOR_NULOS(VAR_FUNDAMENTO) ||
                     '</FUNDAMENTO>' || '<PERIODOS>' ||
                     FN_FORMATEO_VALOR_NULOS(VAR_PERIODOS) || '</PERIODOS>' ||
                     '<COMENTARIO_TERMINO>' ||
                     FN_FORMATEO_VALOR_NULOS(VAR_COMENTARIO_TERMINO) ||
                     '</COMENTARIO_TERMINO>' || '</PAGO_EXCESO>' ||
                     '<MODALIDAD_PAGO>' || '<VIA_DE_PAGO>' ||
                     FN_FORMATEO_VALOR_NULOS(VAR_VIA_DE_PAGO) ||
                     '</VIA_DE_PAGO>' || '<BANCO>' ||
                     FN_FORMATEO_VALOR_NULOS(VAR_BANCO) || '</BANCO>' ||
                     '<NUMERO_DE_CUENTA>' || FN_FORMATEO_VALOR_NULOS(VAR_NUMERO_DE_CUENTA) ||'</NUMERO_DE_CUENTA>' ||
                     '<VAR_MONTO_PAGADO>' || VAR_MONTO_PAGADO || '</VAR_MONTO_PAGADO>' ||
                     '<VAR_FECHA_PAGO>' || VAR_FECHA_PAGO || '</VAR_FECHA_PAGO>' ||
                     '</MODALIDAD_PAGO>';

        END IF;

        VAR_CONTADOR := VAR_CONTADOR + 1;

      END LOOP;
      CLOSE VAR_CURSOR;

      VAR_XML := VAR_XML || '</PAGO_EN_EXCESO>';

    ELSE

      VAR_XML := '<COMPROBANTE_RESUMEN>' || '<Identificacion>' ||
                 '<IdReporte>' || VAR_ID_REPORTE || '</IdReporte>' ||
                 '<IdFormato>' || VAR_ID_FORMATO || '</IdFormato>' ||
                 '</Identificacion>';

      EXCESOS.PCK_CONSOLIDADO_TRAMITES.DETALLE_PAGO_EXCESO(VINU_ID_SOLICITUD,
                                                           VINU_ID_NUM_CLIENTE,
                                                           VAR_CURSOR);

      SOLICITUDES.PCK_CONSOLIDADO_TRAMITES.RESUMEN_SOLICITUD(VINU_ID_SOLICITUD,
                                                             VAR_DESCRIPCION_SOLICITUD,
                                                             VAR_FOLIO,
                                                             VAR_FECHA_SOLICITUD,
                                                             VAR_ESTADO_SOLICITUD,
                                                             VAR_VIA_INGRESO);

      LOOP
        FETCH VAR_CURSOR
          INTO VAR_NOMBRE, 
    VAR_ID_PERSONA, 
    VAR_DIRECCION, 
    VAR_REGION, 
    VAR_COMUNA, 
    VAR_TELEFONO, 
    VAR_EMAIL, 
    VAR_VIA_DE_PAGO, 
    VAR_BANCO, 
    VAR_NUMERO_DE_CUENTA, 
    VAR_FUNDAMENTO, 
    VAR_PERIODOS, 
    VAR_COMENTARIO_TERMINO, 
    VAR_DESCRIPCION_ANALISIS, 
    VAR_MONTO_PAGADO, 
    VAR_FECHA_PAGO;

        EXIT WHEN VAR_CURSOR%NOTFOUND;

        IF VAR_CONTADOR = -1 THEN
          VAR_CONTADOR := 0;
        END IF;

         IF VAR_DIRECCION = '--' OR VAR_DIRECCION IS NULL OR VAR_TELEFONO = '--' OR
           VAR_TELEFONO IS NULL OR VAR_EMAIL IS NULL OR VAR_EMAIL = '--' THEN

          OBTENER_DIR_FONO_EMAIL_CLI(VINU_ID_NUM_CLIENTE,
                                     VAR_DIRECCION,
                                     VAR_REGION,
                                     VAR_COMUNA,
                                     VAR_TELEFONO,
                                     VAR_EMAIL,
                                     VAR_GENERICO);

        END IF;

        IF VAR_CONTADOR = 0 THEN
          VAR_XML := VAR_XML || '<COMPROBANTE>' || '<ID_TIPO_TRAMITE>' ||
                     VAR_TIPO_TRAMITE || '</ID_TIPO_TRAMITE>' || '<NOMBRE>' ||
                     VAR_NOMBRE || '</NOMBRE>' || '<RUT>' || VAR_ID_PERSONA ||
                     '</RUT>' || '<DOMICILIO>' ||
                     FN_FORMATEO_VALOR_NULOS(VAR_DIRECCION) ||
                     '</DOMICILIO>' || '<REGION>' ||
                     FN_FORMATEO_VALOR_NULOS(VAR_REGION) || '</REGION>' ||
                     '<COMUNA>' || FN_FORMATEO_VALOR_NULOS(VAR_COMUNA) ||
                     '</COMUNA>' || '<TELEFONO>' ||
                     FN_FORMATEO_VALOR_NULOS(VAR_TELEFONO) || '</TELEFONO>' ||
                     '<EMAIL>' || FN_FORMATEO_VALOR_NULOS(VAR_EMAIL) ||
                     '</EMAIL>' ||
                     '<TITULO_COLUMNA>Fecha Pago</TITULO_COLUMNA>' ||
                     '<INFO_COLUMNA>' ||
                     FN_FORMATEO_VALOR_NULOS(VAR_FECHA_PAGO) ||
                     '</INFO_COLUMNA>' || '<ESTADO>' ||
                     FN_FORMATEO_VALOR_NULOS(VAR_ESTADO_SOLICITUD) ||
                     '</ESTADO>' || '<VIA_INGRESO>' ||
                     FN_FORMATEO_VALOR_NULOS(VAR_VIA_INGRESO) ||
                     '</VIA_INGRESO>' || '<FECHA_SOLICITUD>' ||
                     FN_FORMATEO_VALOR_NULOS(VAR_FECHA_SOLICITUD) ||
                     '</FECHA_SOLICITUD>' || '<NRO_FOLIO>' ||
                     FN_FORMATEO_VALOR_NULOS(VAR_FOLIO) || '</NRO_FOLIO>' ||
                     '<DESCRIPCION_TRAMITE>' ||
                     FN_FORMATEO_VALOR_NULOS(VAR_DESCRIPCION_SOLICITUD) ||
                     '</DESCRIPCION_TRAMITE>' || '</COMPROBANTE>' ||
                     '<PAGO_EXCESO>' || '<DESCRIPCION_ANALISIS>' ||
                     FN_FORMATEO_VALOR_NULOS(VAR_DESCRIPCION_ANALISIS) ||
                     '</DESCRIPCION_ANALISIS>' || '<FUNDAMENTO>' ||
                     FN_FORMATEO_VALOR_NULOS(VAR_FUNDAMENTO) ||
                     '</FUNDAMENTO>' || '<PERIODOS>' ||
                     FN_FORMATEO_VALOR_NULOS(VAR_PERIODOS) || '</PERIODOS>' ||
                     '<COMENTARIO_TERMINO>' ||
                     FN_FORMATEO_VALOR_NULOS(VAR_COMENTARIO_TERMINO) ||
                     '</COMENTARIO_TERMINO>' || '</PAGO_EXCESO>' ||
                     '<MODALIDAD_PAGO>' || '<VIA_DE_PAGO>' ||
                     FN_FORMATEO_VALOR_NULOS(VAR_VIA_DE_PAGO) ||
                     '</VIA_DE_PAGO>' || '<BANCO>' ||
                     FN_FORMATEO_VALOR_NULOS(VAR_BANCO) || '</BANCO>' ||
                     '<NUMERO_DE_CUENTA>' ||
                     FN_FORMATEO_VALOR_NULOS(VAR_NUMERO_DE_CUENTA) ||
                     '</NUMERO_DE_CUENTA>' ||
                     '<VAR_MONTO_PAGADO>' || VAR_MONTO_PAGADO || '</VAR_MONTO_PAGADO>' ||
                     '<VAR_FECHA_PAGO>' || VAR_FECHA_PAGO || '</VAR_FECHA_PAGO>' ||
                     '</MODALIDAD_PAGO>';

        END IF;

        VAR_CONTADOR := VAR_CONTADOR + 1;

      END LOOP;
      CLOSE VAR_CURSOR;

      VAR_XML := VAR_XML || '</COMPROBANTE_RESUMEN>';

    END IF;

    IF VAR_CONTADOR = -1 THEN
      VAR_XML := '';
    END IF;

    OPEN VOCUR_XML FOR
      SELECT VAR_XML AS XML FROM DUAL;

  END TRAMITE_PAGO_EXCESO;

  PROCEDURE TRAMITE_CAV_ACOGIDA_57_BIS(VINU_ID_SOLICITUD   IN NUMBER, -- ID SOLICITUD
                                       VINU_ID_NUM_CLIENTE IN NUMBER, -- ID DEL CLIENTE
                                       VINU_TIPO_SOLICITUD IN NUMBER, -- TIPO SOLICITUD
                                       VIVC_TIPO_SALIDA    IN VARCHAR2, -- R RESUMEN   D DETALLADA
                                       VOCUR_XML           OUT TCURSOR) AS
    VAR_XML      CLOB;
    VAR_CURSOR   TCURSOR;
    VAR_CONTADOR NUMBER;
    -- INFO REPORTE
    VAR_ID_REPORTE   VARCHAR2(4);
    VAR_ID_FORMATO   VARCHAR2(5);
    VAR_TIPO_TRAMITE VARCHAR2(2);
    -- INFO DETALLE
    VAR_TIPO_PRODUCTO          VARCHAR2(50);
    VAR_CUENTA                 VARCHAR2(50);
    VAR_FOLIO                  VARCHAR2(20);
    VAR_FOLIO2                 VARCHAR2(20);
    VAR_TIPO_TRAM              VARCHAR2(100);
    VAR_ESTADO                 VARCHAR2(50);
    VAR_FECHA_SOLICITUD        VARCHAR2(12);
    VAR_FECHA_SOLICITUD2       VARCHAR2(12);
    VAR_FECHA_MATERIZALIZACION VARCHAR2(12);
    VAR_VIA_INGRESO            VARCHAR2(50);
    VAR_VIA_INGRESO2           VARCHAR2(50);
    VAR_TIPO_FONDO             VARCHAR2(2);
    VAR_MONTO                  VARCHAR2(20);
    VAR_VALOR_CUOTA            VARCHAR2(20);
    -- INFO COMPROBANTE
    VAR_DESCRIPCION_SOLICITUD VARCHAR2(200);
    VAR_ESTADO_SOLICITUD      VARCHAR(50);

  BEGIN
    VAR_CONTADOR := -1;

    IF VIVC_TIPO_SALIDA = 'D' THEN
      SELECT C.ID_REPORTE_DETALLE, C.ID_FORMATO_DETALLE
        INTO VAR_ID_REPORTE, VAR_ID_FORMATO
        FROM TIPO_MENU_CONSOLIDADO C
       WHERE C.ID_TIPO_SOLICITUD = VINU_TIPO_SOLICITUD;
    ELSE
      SELECT C.ID_REPORTE_COMPROBANTE,
             C.ID_FORMATO_COMPROBANTE,
             C.TIPO_TRAMITE
        INTO VAR_ID_REPORTE, VAR_ID_FORMATO, VAR_TIPO_TRAMITE
        FROM TIPO_MENU_CONSOLIDADO C
       WHERE C.ID_TIPO_SOLICITUD = VINU_TIPO_SOLICITUD;
    END IF;

    IF VIVC_TIPO_SALIDA = 'D' THEN

      TRIBUTACION.PCK_CONSOLIDADO_TRAMITES.CAV_57_BIS(VINU_ID_SOLICITUD,
                                                      VINU_ID_NUM_CLIENTE,
                                                      VAR_CURSOR);
      VAR_XML := '<CAV_57_BIS>' || '<Identificacion>' || '<IdReporte>' ||
                 VAR_ID_REPORTE || '</IdReporte>' || '<IdFormato>' ||
                 VAR_ID_FORMATO || '</IdFormato>' || '</Identificacion>';

      LOOP
        FETCH VAR_CURSOR
          INTO VAR_TIPO_PRODUCTO, 
    VAR_CUENTA, 
    VAR_FOLIO, 
    VAR_TIPO_TRAM, 
    VAR_ESTADO, 
    VAR_FECHA_SOLICITUD, 
    VAR_FECHA_MATERIZALIZACION, 
    VAR_VIA_INGRESO, 
    VAR_TIPO_FONDO, 
    VAR_MONTO, 
    VAR_VALOR_CUOTA;

        EXIT WHEN VAR_CURSOR%NOTFOUND;

        IF VAR_CONTADOR = -1 THEN
          VAR_CONTADOR := 0;
        END IF;

        IF VAR_CONTADOR = 0 THEN

          VAR_XML := VAR_XML || '<INFO_PRODUCTO>' || '<TIPO_PRODUCTO>' ||
                     VAR_TIPO_PRODUCTO || '</TIPO_PRODUCTO>' || '<CUENTA>' ||
                     VAR_CUENTA || '</CUENTA>' || '</INFO_PRODUCTO>';

        END IF;

        VAR_XML := VAR_XML || '<FONDOS>' || '<TIPO_FONDO>' ||
                   VAR_TIPO_FONDO || '</TIPO_FONDO>' || '<MONTO>' ||
                   VAR_MONTO || '</MONTO>' || '<VAL_CUO_SALDO>' ||
                   VAR_VALOR_CUOTA || '</VAL_CUO_SALDO>' || '</FONDOS>';

        VAR_CONTADOR := VAR_CONTADOR + 1;

      END LOOP;
      CLOSE VAR_CURSOR;

      VAR_XML := VAR_XML || '</CAV_57_BIS>';

    ELSE
      VAR_XML := '<COMPROBANTE_RESUMEN>' || '<Identificacion>' ||
                 '<IdReporte>' || VAR_ID_REPORTE || '</IdReporte>' ||
                 '<IdFormato>' || VAR_ID_FORMATO || '</IdFormato>' ||
                 '</Identificacion>';

      TRIBUTACION.PCK_CONSOLIDADO_TRAMITES.CAV_57_BIS(VINU_ID_SOLICITUD,
                                                      VINU_ID_NUM_CLIENTE,
                                                      VAR_CURSOR);

      SOLICITUDES.PCK_CONSOLIDADO_TRAMITES.RESUMEN_SOLICITUD(VINU_ID_SOLICITUD,
                                                             VAR_DESCRIPCION_SOLICITUD,
                                                             VAR_FOLIO2,
                                                             VAR_FECHA_SOLICITUD2,
                                                             VAR_ESTADO_SOLICITUD,
                                                             VAR_VIA_INGRESO2);

      LOOP
        FETCH VAR_CURSOR
          INTO VAR_TIPO_PRODUCTO,
     VAR_CUENTA, 
     VAR_FOLIO, 
     VAR_TIPO_TRAM, 
     VAR_ESTADO, 
     VAR_FECHA_SOLICITUD, 
     VAR_FECHA_MATERIZALIZACION, 
     VAR_VIA_INGRESO, 
     VAR_TIPO_FONDO, 
     VAR_MONTO, 
     VAR_VALOR_CUOTA;

        EXIT WHEN VAR_CURSOR%NOTFOUND;

        IF VAR_CONTADOR = -1 THEN
          VAR_CONTADOR := 0;
        END IF;

        IF VAR_CONTADOR = 0 THEN

          SELECT DECODE(VAR_FECHA_MATERIZALIZACION,
                        '01-01-0001',
                        '--',
                        VAR_FECHA_MATERIZALIZACION)
            INTO VAR_FECHA_MATERIZALIZACION
            FROM DUAL;

          VAR_XML := VAR_XML || '<COMPROBANTE>' || '<ID_TIPO_TRAMITE>' ||
                     VAR_TIPO_TRAMITE || '</ID_TIPO_TRAMITE>' ||
                     '<TITULO_COLUMNA>Fecha Materialización:</TITULO_COLUMNA>' ||
                     '<INFO_COLUMNA>' || VAR_FECHA_SOLICITUD2 ||
                     '</INFO_COLUMNA>' || '<ESTADO>' ||
                     FN_FORMATEO_VALOR_NULOS(VAR_ESTADO_SOLICITUD) ||
                     '</ESTADO>' || '<VIA_INGRESO>' ||
                     FN_FORMATEO_VALOR_NULOS(VAR_VIA_INGRESO2) ||
                     '</VIA_INGRESO>' || '<FECHA_SOLICITUD>' ||
                     FN_FORMATEO_VALOR_NULOS(VAR_FECHA_SOLICITUD2) ||
                     '</FECHA_SOLICITUD>' || '<NRO_FOLIO>' ||
                     FN_FORMATEO_VALOR_NULOS(VAR_FOLIO2) || '</NRO_FOLIO>' ||
                     '<DESCRIPCION_TRAMITE>' ||
                     FN_FORMATEO_VALOR_NULOS(VAR_DESCRIPCION_SOLICITUD) ||
                     '</DESCRIPCION_TRAMITE>' || '</COMPROBANTE>' ||
                     '<PRODUCTO>' || '<TIPO_PRODUCTO>' || VAR_TIPO_PRODUCTO ||
                     '</TIPO_PRODUCTO>' || '<CUENTA>' || VAR_CUENTA ||
                     '</CUENTA>' || '</PRODUCTO>';

        END IF;

        VAR_XML := VAR_XML || '<FONDOS>' || '<TIPO_FONDO>' ||
                   VAR_TIPO_FONDO || '</TIPO_FONDO>' || '<MONTO>' ||
                   VAR_MONTO || '</MONTO>' || '<VAL_CUO_SALDO>' ||
                   VAR_VALOR_CUOTA || '</VAL_CUO_SALDO>' || '</FONDOS>';

        VAR_CONTADOR := VAR_CONTADOR + 1;

      END LOOP;
      CLOSE VAR_CURSOR;

      VAR_XML := VAR_XML || '</COMPROBANTE_RESUMEN>';
    END IF;

    IF VAR_CONTADOR = -1 THEN
      VAR_XML := '';
    END IF;

    OPEN VOCUR_XML FOR
      SELECT VAR_XML AS XML FROM DUAL;

  END TRAMITE_CAV_ACOGIDA_57_BIS;

  PROCEDURE TRAMITE_RETIROS_CAV_APV_CDC(VINU_ID_SOLICITUD   IN NUMBER, -- ID SOLICITUD
                                        VINU_ID_NUM_CLIENTE IN NUMBER, -- ID DEL CLIENTE
                                        VINU_TIPO_SOLICITUD IN NUMBER, -- TIPO SOLICITUD
                                        VIVC_TIPO_SALIDA    IN VARCHAR2, -- R RESUMEN   D DETALLADA
                                        VOCUR_XML           OUT TCURSOR) AS
    VAR_XML      CLOB;
    VAR_CURSOR   TCURSOR;
    VAR_CONTADOR NUMBER;
    -- INFO REPORTE
    VAR_ID_REPORTE            VARCHAR2(4);
    VAR_ID_FORMATO            VARCHAR2(5);
    VAR_TIPO_TRAMITE          VARCHAR2(2);
    VAR_DESCRIPCION_SOLICITUD VARCHAR2(200);
    VAR_FOLIO                 VARCHAR2(20);
    VAR_FECHA_SOLICITUD       VARCHAR2(100);
    VAR_ESTADO_SOLICITUD      VARCHAR2(100);
    VAR_VIA_INGRESO           VARCHAR2(100);
    -- INFO DETALLE
    VAR_TIPO_PRODUCTO        VARCHAR2(100);
    VAR_TIPO_FONDO           VARCHAR2(2);
    VAR_FECHA_VALOR_CUOTA    VARCHAR2(15);
    VAR_MONTO_RETIRO_PESOS   VARCHAR2(200);
    VAR_MONTO_RETIRO_CUOTAS  VARCHAR2(50);
    VAR_VALOR_CUOTA          VARCHAR2(20);
    VAR_SALDO_INICIAL_PESOS  VARCHAR2(20);
    VAR_SALDO_INICIAL_CUOTAS VARCHAR2(20);
    VAR_COMISION_PESOS       VARCHAR2(20);
    VAR_COMISION_CUOTAS      VARCHAR2(20);
    VAR_IMPUESTO_PESOS       VARCHAR2(20);
    VAR_IMPUESTO_CUOTAS      VARCHAR2(20);
    VAR_SALDO_FINAL_PESOS    VARCHAR2(20);
    VAR_SALDO_FINAL_CUOTAS   VARCHAR2(20);
    VAR_TOTAL_RETIROS_PESOS  VARCHAR2(20);
    VAR_NOMBRE               VARCHAR2(80);
    VAR_ID_PERSONA           VARCHAR2(15);
    VAR_DIRECCION            VARCHAR2(200);
    VAR_REGION               VARCHAR2(80);
    VAR_COMUNA               VARCHAR2(60);
    VAR_TELEFONO             VARCHAR2(15);
    VAR_EMAIL                VARCHAR2(80);
    VAR_FECHA_DISPONIBILIDAD VARCHAR2(15);
    VAR_NUMERO_RETIRO        VARCHAR2(10);
    VAR_VIA_PAGO             VARCHAR2(100);
    VAR_BANCO                VARCHAR2(150);
    VAR_NRO_CUENTA           VARCHAR2(20);
    VAR_FECHA_ACEPTACION     VARCHAR2(15);
    VAR_DESC_REGIMEN         VARCHAR2(100);
    VAR_ID_REGIMEN           NUMBER;
  BEGIN
    VAR_CONTADOR := -1;

    IF VIVC_TIPO_SALIDA = 'D' THEN
      SELECT C.ID_REPORTE_DETALLE, C.ID_FORMATO_DETALLE
        INTO VAR_ID_REPORTE, VAR_ID_FORMATO
        FROM TIPO_MENU_CONSOLIDADO C
       WHERE C.ID_TIPO_SOLICITUD = VINU_TIPO_SOLICITUD;
    ELSE
      SELECT C.ID_REPORTE_COMPROBANTE,
             C.ID_FORMATO_COMPROBANTE,
             C.TIPO_TRAMITE
        INTO VAR_ID_REPORTE, VAR_ID_FORMATO, VAR_TIPO_TRAMITE
        FROM TIPO_MENU_CONSOLIDADO C
       WHERE C.ID_TIPO_SOLICITUD = VINU_TIPO_SOLICITUD;
    END IF;

    IF VIVC_TIPO_SALIDA = 'D' THEN

      RETIROS.PCK_CONSOLIDADO_TRAMITES.DETALLE_RETIRO(VINU_ID_SOLICITUD,VAR_CURSOR);
      VAR_XML := '<RETIROS_CAV_APV_CDC>' || '<Identificacion>' ||
                 '<IdReporte>' || VAR_ID_REPORTE || '</IdReporte>' ||
                 '<IdFormato>' || VAR_ID_FORMATO || '</IdFormato>' ||
                 '</Identificacion>';

      LOOP
        FETCH VAR_CURSOR
          INTO VAR_TIPO_PRODUCTO, 
    VAR_TIPO_FONDO, 
    VAR_DESC_REGIMEN, 
    VAR_ID_REGIMEN, 
    VAR_FECHA_VALOR_CUOTA, 
    VAR_VALOR_CUOTA, 
    VAR_SALDO_INICIAL_PESOS, 
    VAR_SALDO_INICIAL_CUOTAS, 
    VAR_MONTO_RETIRO_PESOS, 
    VAR_MONTO_RETIRO_CUOTAS, 
    VAR_COMISION_PESOS, 
    VAR_COMISION_CUOTAS, 
    VAR_IMPUESTO_PESOS, 
    VAR_IMPUESTO_CUOTAS, 
    VAR_SALDO_FINAL_PESOS, 
    VAR_SALDO_FINAL_CUOTAS, 
    VAR_TOTAL_RETIROS_PESOS, 
    VAR_NOMBRE, 
    VAR_ID_PERSONA, 
    VAR_DIRECCION, 
    VAR_REGION, 
    VAR_COMUNA, 
    VAR_TELEFONO, 
    VAR_EMAIL, 
    VAR_FECHA_DISPONIBILIDAD, 
    VAR_NUMERO_RETIRO, 
    VAR_VIA_PAGO, 
    VAR_BANCO, 
    VAR_NRO_CUENTA, 
    VAR_FECHA_ACEPTACION;

        EXIT WHEN VAR_CURSOR%NOTFOUND;

        IF VAR_CONTADOR = -1 THEN
          VAR_CONTADOR := 0;
        END IF;

        IF VAR_CONTADOR = 0 THEN
          VAR_XML := VAR_XML || '<INFO_AFILIADO>' || '<NOMBRE>' ||
                     VAR_NOMBRE || '</NOMBRE>' || '<RUT>' || VAR_ID_PERSONA ||
                     '</RUT>' || '<DOMICILIO>' ||
                     FN_FORMATEO_VALOR_NULOS(VAR_DIRECCION) ||
                     '</DOMICILIO>' || '<COMUNA>' ||
                     FN_FORMATEO_VALOR_NULOS(VAR_COMUNA) || '</COMUNA>' ||
                     '<REGION>' || FN_FORMATEO_VALOR_NULOS(VAR_REGION) ||
                     '</REGION>' || '<TELEFONO>' ||
                     FN_FORMATEO_VALOR_NULOS(VAR_TELEFONO) || '</TELEFONO>' ||
                     '<EMAIL>' || FN_FORMATEO_VALOR_NULOS(VAR_EMAIL) ||
                     '</EMAIL>' || '</INFO_AFILIADO>' || '<RETIROS>' ||
                     '<FECHA_DISPONIBILIDAD>' ||
                     FN_FORMATEO_VALOR_NULOS(VAR_FECHA_DISPONIBILIDAD) ||
                     '</FECHA_DISPONIBILIDAD>' || '<NUMERO_RETIRO>' ||
                     FN_FORMATEO_VALOR_NULOS(VAR_NUMERO_RETIRO) ||
                     '</NUMERO_RETIRO>' || '<VIA_PAGO>' ||
                     FN_FORMATEO_VALOR_NULOS(VAR_VIA_PAGO) || '</VIA_PAGO>' ||
                     '<BANCO>' || FN_FORMATEO_VALOR_NULOS(VAR_BANCO) ||
                     '</BANCO>' || '<NUMERO_CUENTA>' ||
                     FN_FORMATEO_VALOR_NULOS(VAR_NRO_CUENTA) ||
                     '</NUMERO_CUENTA>' || '</RETIROS>';

        END IF;

        VAR_XML := VAR_XML || '<PRODUCTOS>' || '<TIPO_PRODUCTO>' ||
                   VAR_TIPO_PRODUCTO || '</TIPO_PRODUCTO>' || '<FONDO>' ||
                   VAR_TIPO_FONDO || '</FONDO>' || '<DESC_REGIMEN>' ||
                   VAR_DESC_REGIMEN || '</DESC_REGIMEN>' ||
                   '<TOTAL_RETIROS_PESOS>' || VAR_TOTAL_RETIROS_PESOS ||
                   '</TOTAL_RETIROS_PESOS>' || '<FEC_VALOR_CUOTA>' ||
                   VAR_FECHA_VALOR_CUOTA || '</FEC_VALOR_CUOTA>' ||
                   '<VALOR_CUOTA>' || VAR_VALOR_CUOTA || '</VALOR_CUOTA>' ||
                   '<SALDO_INICIAL_PESOS>' || VAR_SALDO_INICIAL_PESOS ||
                   '</SALDO_INICIAL_PESOS>' || '<SALDO_INICIAL_CUOTAS>' ||
                   VAR_SALDO_INICIAL_CUOTAS || '</SALDO_INICIAL_CUOTAS>' ||
                   '<MONTO_RETIRO_PESOS>' || VAR_MONTO_RETIRO_PESOS ||
                   '</MONTO_RETIRO_PESOS>' || '<MONTO_RETIRO_CUOTAS>' ||
                   VAR_SALDO_INICIAL_CUOTAS || '</MONTO_RETIRO_CUOTAS>' ||
                   '<COMISION_PESOS>' || VAR_COMISION_PESOS ||
                   '</COMISION_PESOS>' || '<COMISION_CUOTAS>' ||
                   VAR_COMISION_CUOTAS || '</COMISION_CUOTAS>' ||
                   '<IMPUESTO_PESOS>' || VAR_IMPUESTO_PESOS ||
                   '</IMPUESTO_PESOS>' || '<IMPUESTO_CUOTAS>' ||
                   VAR_IMPUESTO_CUOTAS || '</IMPUESTO_CUOTAS>' ||
                   '<SALDO_FINAL_PESOS>' || VAR_SALDO_FINAL_PESOS ||
                   '</SALDO_FINAL_PESOS>' || '<SALDO_FINAL_CUOTAS>' ||
                   VAR_SALDO_FINAL_CUOTAS || '</SALDO_FINAL_CUOTAS>' ||
                   '</PRODUCTOS>';

        VAR_CONTADOR := VAR_CONTADOR + 1;

      END LOOP;
      CLOSE VAR_CURSOR;

      VAR_XML := VAR_XML || '</RETIROS_CAV_APV_CDC>';

    ELSE
      VAR_XML := '<COMPROBANTE_RESUMEN>' || '<Identificacion>' ||
                 '<IdReporte>' || VAR_ID_REPORTE || '</IdReporte>' ||
                 '<IdFormato>' || VAR_ID_FORMATO || '</IdFormato>' ||
                 '</Identificacion>';

      RETIROS.PCK_CONSOLIDADO_TRAMITES.DETALLE_RETIRO(VINU_ID_SOLICITUD,VAR_CURSOR);

      SOLICITUDES.PCK_CONSOLIDADO_TRAMITES.RESUMEN_SOLICITUD(VINU_ID_SOLICITUD,
                                                             VAR_DESCRIPCION_SOLICITUD,
                                                             VAR_FOLIO,
                                                             VAR_FECHA_SOLICITUD,
                                                             VAR_ESTADO_SOLICITUD,
                                                             VAR_VIA_INGRESO);

      LOOP
        FETCH VAR_CURSOR
          INTO VAR_TIPO_PRODUCTO, 
    VAR_TIPO_FONDO, 
    VAR_DESC_REGIMEN, 
    VAR_ID_REGIMEN, 
    VAR_FECHA_VALOR_CUOTA, 
    VAR_VALOR_CUOTA, 
    VAR_SALDO_INICIAL_PESOS, 
    VAR_SALDO_INICIAL_CUOTAS, 
    VAR_MONTO_RETIRO_PESOS, 
    VAR_MONTO_RETIRO_CUOTAS, 
    VAR_COMISION_PESOS, 
    VAR_COMISION_CUOTAS, 
    VAR_IMPUESTO_PESOS, 
    VAR_IMPUESTO_CUOTAS, 
    VAR_SALDO_FINAL_PESOS, 
    VAR_SALDO_FINAL_CUOTAS, 
    VAR_TOTAL_RETIROS_PESOS, 
    VAR_NOMBRE, 
    VAR_ID_PERSONA, 
    VAR_DIRECCION, 
    VAR_REGION, 
    VAR_COMUNA, 
    VAR_TELEFONO, 
    VAR_EMAIL, 
    VAR_FECHA_DISPONIBILIDAD, 
    VAR_NUMERO_RETIRO, 
    VAR_VIA_PAGO, 
    VAR_BANCO, 
    VAR_NRO_CUENTA, 
    VAR_FECHA_ACEPTACION;

        EXIT WHEN VAR_CURSOR%NOTFOUND;

        IF VAR_CONTADOR = -1 THEN
          VAR_CONTADOR := 0;
        END IF;

        IF VAR_CONTADOR = 0 THEN
          VAR_XML := VAR_XML || '<COMPROBANTE>' || '<ID_TIPO_TRAMITE>' ||
                     VAR_TIPO_TRAMITE || '</ID_TIPO_TRAMITE>' || '<NOMBRE>' ||
                     VAR_NOMBRE || '</NOMBRE>' || '<RUT>' || VAR_ID_PERSONA ||
                     '</RUT>' || '<DOMICILIO>' ||
                     FN_FORMATEO_VALOR_NULOS(VAR_DIRECCION) ||
                     '</DOMICILIO>' || '<REGION>' ||
                     FN_FORMATEO_VALOR_NULOS(VAR_REGION) || '</REGION>' ||
                     '<COMUNA>' || FN_FORMATEO_VALOR_NULOS(VAR_COMUNA) ||
                     '</COMUNA>' || '<TELEFONO>' ||
                     FN_FORMATEO_VALOR_NULOS(VAR_TELEFONO) || '</TELEFONO>' ||
                     '<EMAIL>' || FN_FORMATEO_VALOR_NULOS(VAR_EMAIL) ||
                     '</EMAIL>' ||
                     '<TITULO_COLUMNA>Fecha Pago</TITULO_COLUMNA>' ||
                     '<INFO_COLUMNA>'||FN_FORMATEO_VALOR_NULOS(VAR_FECHA_DISPONIBILIDAD)||'</INFO_COLUMNA>' ||
                     '<ESTADO>' ||
                     FN_FORMATEO_VALOR_NULOS(VAR_ESTADO_SOLICITUD) ||
                     '</ESTADO>' || '<VIA_INGRESO>' ||
                     FN_FORMATEO_VALOR_NULOS(VAR_VIA_INGRESO) ||
                     '</VIA_INGRESO>' || '<FECHA_SOLICITUD>' ||
                     FN_FORMATEO_VALOR_NULOS(VAR_FECHA_SOLICITUD) ||
                     '</FECHA_SOLICITUD>' || '<NRO_FOLIO>' ||
                     FN_FORMATEO_VALOR_NULOS(VAR_FOLIO) || '</NRO_FOLIO>' ||
                     '<DESCRIPCION_TRAMITE>' ||
                     FN_FORMATEO_VALOR_NULOS(VAR_DESCRIPCION_SOLICITUD) ||
                     '</DESCRIPCION_TRAMITE>' || '</COMPROBANTE>' ||
                     '<INFO>' || '<FECHA_DISPONIBILIDAD>' ||
                     FN_FORMATEO_VALOR_NULOS(VAR_FECHA_DISPONIBILIDAD) ||
                     '</FECHA_DISPONIBILIDAD>' || '<NUMERO_RETIRO>' ||
                     FN_FORMATEO_VALOR_NULOS(VAR_NUMERO_RETIRO) ||
                     '</NUMERO_RETIRO>' || '<VIA_PAGO>' ||
                     FN_FORMATEO_VALOR_NULOS(VAR_VIA_PAGO) || '</VIA_PAGO>' ||
                     '<BANCO>' || FN_FORMATEO_VALOR_NULOS(VAR_BANCO) ||
                     '</BANCO>' || '<NUMERO_CUENTA>' ||
                     FN_FORMATEO_VALOR_NULOS(VAR_NRO_CUENTA) ||
                     '</NUMERO_CUENTA>' || '</INFO>';

        END IF;

        VAR_XML := VAR_XML || '<DETALLE>' || '<TIPO_PRODUCTO>' ||
                   VAR_TIPO_PRODUCTO || '</TIPO_PRODUCTO>' || '<FONDO>' ||
                   VAR_TIPO_FONDO || '</FONDO>' || '<DESC_REGIMEN>' ||
                   VAR_DESC_REGIMEN || '</DESC_REGIMEN>' ||
                   '<TOTAL_RETIROS_PESOS>' || VAR_TOTAL_RETIROS_PESOS ||
                   '</TOTAL_RETIROS_PESOS>' || '<FEC_VALOR_CUOTA>' ||
                   VAR_FECHA_VALOR_CUOTA || '</FEC_VALOR_CUOTA>' ||
                   '<VALOR_CUOTA>' || VAR_VALOR_CUOTA || '</VALOR_CUOTA>' ||
                   '<SALDO_INICIAL_PESOS>' || VAR_SALDO_INICIAL_PESOS ||
                   '</SALDO_INICIAL_PESOS>' || '<SALDO_INICIAL_CUOTAS>' ||
                   VAR_SALDO_INICIAL_CUOTAS || '</SALDO_INICIAL_CUOTAS>' ||
                   '<MONTO_RETIRO_PESOS>' || VAR_MONTO_RETIRO_PESOS ||
                   '</MONTO_RETIRO_PESOS>' || '<MONTO_RETIRO_CUOTAS>' ||
                   VAR_MONTO_RETIRO_CUOTAS || '</MONTO_RETIRO_CUOTAS>' ||
                   '<COMISION_PESOS>' || VAR_COMISION_PESOS ||
                   '</COMISION_PESOS>' || '<COMISION_CUOTAS>' ||
                   VAR_COMISION_CUOTAS || '</COMISION_CUOTAS>' ||
                   '<IMPUESTO_PESOS>' || VAR_IMPUESTO_PESOS ||
                   '</IMPUESTO_PESOS>' || '<IMPUESTO_CUOTAS>' ||
                   VAR_IMPUESTO_CUOTAS || '</IMPUESTO_CUOTAS>' ||
                   '<SALDO_FINAL_PESOS>' || VAR_SALDO_FINAL_PESOS ||
                   '</SALDO_FINAL_PESOS>' || '<SALDO_FINAL_CUOTAS>' ||
                   VAR_SALDO_FINAL_CUOTAS || '</SALDO_FINAL_CUOTAS>' ||
                   '</DETALLE>';

        VAR_CONTADOR := VAR_CONTADOR + 1;

      END LOOP;
      CLOSE VAR_CURSOR;

      VAR_XML := VAR_XML || '</COMPROBANTE_RESUMEN>';
    END IF;

    IF VAR_CONTADOR = -1 THEN
      VAR_XML := '';
    END IF;

    OPEN VOCUR_XML FOR
      SELECT VAR_XML AS XML FROM DUAL;

  END TRAMITE_RETIROS_CAV_APV_CDC;

  PROCEDURE TRAMITE_TEC_EXT(VINU_ID_SOLICITUD     IN NUMBER, -- ID SOLICITUD
                            VINU_TIPO_SOLICITUD   IN NUMBER, -- TIPO SOLICITUD
                            VIVC_TIPO_COMPROBANTE IN VARCHAR2, --INTERNO, WEB
                            VIVC_TIPO_SALIDA      IN VARCHAR2, -- R RESUMEN   D DETALLADA
                            VOCUR_XML             OUT TCURSOR) IS
  BEGIN
    RETIROS.PCK_CONSOLIDADO_TRAMITES.DETALLE_TEC_EXT(VINU_ID_SOLICITUD,VIVC_TIPO_COMPROBANTE,VIVC_TIPO_SALIDA,VOCUR_XML);
  END TRAMITE_TEC_EXT;

  PROCEDURE TRAMITE_SOLICITUD_PENSION(VINU_ID_SOLICITUD   IN NUMBER, -- ID SOLICITUD
                                      VINU_ID_NUM_CLIENTE IN NUMBER, -- ID DEL CLIENTE
                                      VINU_TIPO_SOLICITUD IN NUMBER, -- TIPO SOLICITUD
                                      VIVC_TIPO_SALIDA    IN VARCHAR2, -- R RESUMEN   D DETALLADA
                                      VOCUR_XML           OUT TCURSOR) AS
    VAR_XML               CLOB;
    VAR_CURSOR            TCURSOR;
    VAR_CURSOR_BENEF      TCURSOR;
    VAR_CURSOR_INFO_ANEXA TCURSOR;
    VAR_CONTADOR          NUMBER;
    -- INFO REPORTE
    VAR_ID_REPORTE   VARCHAR2(4);
    VAR_ID_FORMATO   VARCHAR2(5);
    VAR_TIPO_TRAMITE VARCHAR2(2);
    -- INFO COMPROBANTE
    VAR_DESCRIPCION_SOLICITUD VARCHAR2(200);
    VAR_FOLIO                 VARCHAR2(20);
    VAR_FECHA_SOLICITUD       VARCHAR(12);
    VAR_ESTADO_SOLICITUD      VARCHAR(50);
    VAR_VIA_INGRESO           VARCHAR2(50);
    -- INFO AFILIADO
    VAR_ID_CLIENTE             VARCHAR(12);
    VAR_NUMERO_TRAMITE_PENSION VARCHAR2(12);
    VAR_ID_PERSONA             VARCHAR(15);
    VAR_NOMBRE                 VARCHAR2(80);
    VAR_DIRECCION              VARCHAR2(200);
    VAR_REGION                 VARCHAR2(80);
    VAR_COMUNA                 VARCHAR2(60);
    VAR_TELEFONO               VARCHAR(15);
    VAR_EMAIL                  VARCHAR(80);
    VAR_TIPO_TRABAJADOR        VARCHAR2(60);
    -- INFO SOLICITUD PENSION
    VAR_RUT_EMPRESA      VARCHAR2(15);
    VAR_RAZON_SOCIAL     VARCHAR2(100);
    VAR_DIRECCION_EMP    VARCHAR2(150);
    VAR_REGION_EMP       VARCHAR2(60);
    VAR_COMUNA_EMP       VARCHAR2(60);
    VAR_FONO_EMP         VARCHAR2(12);
    VAR_EMAIL_EMP        VARCHAR2(100);
    VAR_TIPO_PENSION     VARCHAR2(50);
    VAR_EXCLUSION        VARCHAR2(50);
    VAR_AGENCIA          VARCHAR2(70);
    VAR_NOMBRE_EJECUTIVO VARCHAR2(100);
    VAR_RUT_EJECUTIVO    VARCHAR2(15);
    VAR_COD_EJECUTIVO    VARCHAR2(50);
    -- INFO BENEFICIARIO
    VAR_NUMERO_BENEFICIARIO   VARCHAR2(10);
    VAR_NOMBRE_BENEFICIARIO   VARCHAR2(100);
    VAR_RUT_BENEFICIARIO      VARCHAR2(15);
    VAR_RELACION_BENEFICIARIO VARCHAR2(100);
    VAR_FECHA_NAC_BENEF       VARCHAR2(20);
    VAR_ESTADO_CIVIL          VARCHAR2(100);
    VAR_SEXO_BENEF            VARCHAR2(50);
    VAR_GRUPO_FAMILIAR        VARCHAR2(100);
    -- INFO ANEXA
    VAR_FECHA_DEVENGAMIENTO      VARCHAR2(50);
    VAR_MODALIDAD_PENSION        VARCHAR2(50);
    VAR_FECHA_ULTIMO_PAGO        VARCHAR2(50);
    VAR_MANDATARIO               VARCHAR2(50);
    VAR_FECHA_VIGENCIA_PODER     VARCHAR2(50);
    VAR_TIPO_INVALIDEZ           VARCHAR2(50);
    VAR_FECHA_EJECUTORIEDAD      VARCHAR2(50);
    VAR_PENSION_ANTIGUO_SISTEMA  VARCHAR2(50);
    VAR_MONTO_PENSION_UF_SISTEMA VARCHAR2(50);
    VAR_MONTO_INGRESO_BASE       VARCHAR2(50);
    VAR_REQUISITO_ELD            VARCHAR2(50);
    VAR_NRO_RETIRO_ELD           VARCHAR2(50);
    VAR_OPCION_TRIBUTARIA        VARCHAR2(50);
    VAR_AJUSTE_PENSION           VARCHAR2(50);
    VAR_MONTO_PENSION_UF         VARCHAR2(50);
    VAR_INSTITUCION_SALUD        VARCHAR2(50);
    VAR_VIA_PAGO                 VARCHAR2(50);
    VDT_FECHA_SELECCION_MOD      VARCHAR2(100);

  BEGIN
    VAR_CONTADOR := -1;

    IF VIVC_TIPO_SALIDA = 'D' THEN
      SELECT C.ID_REPORTE_DETALLE, C.ID_FORMATO_DETALLE
        INTO VAR_ID_REPORTE, VAR_ID_FORMATO
        FROM TIPO_MENU_CONSOLIDADO C
       WHERE C.ID_TIPO_SOLICITUD = VINU_TIPO_SOLICITUD;
    ELSE
      SELECT C.ID_REPORTE_COMPROBANTE,
             C.ID_FORMATO_COMPROBANTE,
             C.TIPO_TRAMITE
        INTO VAR_ID_REPORTE, VAR_ID_FORMATO, VAR_TIPO_TRAMITE
        FROM TIPO_MENU_CONSOLIDADO C
       WHERE C.ID_TIPO_SOLICITUD = VINU_TIPO_SOLICITUD;
    END IF;

    IF VIVC_TIPO_SALIDA = 'D' THEN

      SOLICITUDPENSION.PCK_CONSOLIDADO_TRAMITES.DETALLE_TRAMITE_PENSION(VINU_ID_SOLICITUD,
                                                                        VINU_ID_NUM_CLIENTE,
                                                                        VAR_CURSOR);

      SOLICITUDPENSION.PCK_CONSOLIDADO_TRAMITES.PSEL_DETALLE_BENEFICIARIOS(VINU_ID_SOLICITUD,
                                                                           VINU_ID_NUM_CLIENTE,
                                                                           VAR_CURSOR_BENEF);

      SOLICITUDPENSION.PCK_CONSOLIDADO_TRAMITES.PSEL_DETALLE_TRAMITE(VINU_ID_SOLICITUD,
                                                                     VINU_ID_NUM_CLIENTE,
                                                                     VAR_CURSOR_INFO_ANEXA);

      VAR_XML := '<SOLICITUD_PENSION>' || '<Identificacion>' ||
                 '<IdReporte>' || VAR_ID_REPORTE || '</IdReporte>' ||
                 '<IdFormato>' || VAR_ID_FORMATO || '</IdFormato>' ||
                 '</Identificacion>';

      LOOP
        FETCH VAR_CURSOR
          INTO VAR_ID_CLIENTE, 
    VAR_NUMERO_TRAMITE_PENSION, 
    VAR_ID_PERSONA, 
    VAR_NOMBRE, 
    VAR_DIRECCION, 
    VAR_REGION, 
    VAR_COMUNA, 
    VAR_TELEFONO, 
    VAR_EMAIL, 
    VAR_TIPO_TRABAJADOR, 
    VAR_RUT_EMPRESA, 
    VAR_RAZON_SOCIAL, 
    VAR_DIRECCION_EMP, 
    VAR_REGION_EMP, 
    VAR_COMUNA_EMP, 
    VAR_FONO_EMP, 
    VAR_EMAIL_EMP, 
    VAR_TIPO_PENSION, 
    VAR_EXCLUSION, 
    VAR_AGENCIA, 
    VAR_NOMBRE_EJECUTIVO, 
    VAR_RUT_EJECUTIVO, 
    VAR_COD_EJECUTIVO;

        EXIT WHEN VAR_CURSOR%NOTFOUND;

        IF VAR_CONTADOR = -1 THEN
          VAR_CONTADOR := 0;
        END IF;

        IF VAR_CONTADOR = 0 THEN
          VAR_XML := VAR_XML || '<INFO_AFILIADO>' || '<NOMBRE>' ||
                     VAR_NOMBRE || '</NOMBRE>' || '<RUT>' || VAR_ID_PERSONA ||
                     '</RUT>' || '<DOMICILIO>' || VAR_DIRECCION ||
                     '</DOMICILIO>' || '<COMUNA>' || VAR_COMUNA ||
                     '</COMUNA>' || '<REGION>' || VAR_REGION || '</REGION>' ||
                     '<TELEFONO>' || VAR_TELEFONO || '</TELEFONO>' ||
                     '<EMAIL>' || VAR_EMAIL || '</EMAIL>' ||
                     '</INFO_AFILIADO>' || '<DETALLE_TRAMITE_PENSION>' ||
                     '<RAZON_SOCIAL>' || VAR_RAZON_SOCIAL ||
                     '</RAZON_SOCIAL>' || '<RUT_EMPRESA>' ||
                     VAR_RUT_EMPRESA || '</RUT_EMPRESA>' ||
                     '<DOMICILIO_EMPRESA>' || VAR_DIRECCION_EMP ||
                     '</DOMICILIO_EMPRESA>' || '<COMUNA_EMPRESA>' ||
                     VAR_COMUNA_EMP || '</COMUNA_EMPRESA>' ||
                     '<REGION_EMPRESA>' || VAR_REGION_EMP ||
                     '</REGION_EMPRESA>' || '<TELEFONO_EMPRESA>' ||
                     VAR_FONO_EMP || '</TELEFONO_EMPRESA>' ||
                     '<EMAIL_EMPRESA>' || VAR_EMAIL_EMP ||
                     '</EMAIL_EMPRESA>' || '</DETALLE_TRAMITE_PENSION>' ||
                     '<DETALLE_TRAMITE_PENSION>' || '<TIPO_PENSION>' ||
                     VAR_TIPO_PENSION || '</TIPO_PENSION>' ||
                     '<EXCLUSION_LISTADO_PUBLICO>' || VAR_EXCLUSION ||
                     '</EXCLUSION_LISTADO_PUBLICO>' ||
                     '</DETALLE_TRAMITE_PENSION>' || '<RESPONSABLE_AFP>' ||
                     '<AGENCIA>' || VAR_AGENCIA || '</AGENCIA>' ||
                     '<NOMBRE_EJECUTIVO>' || VAR_NOMBRE_EJECUTIVO ||
                     '</NOMBRE_EJECUTIVO>' || '<RUT_EJECUTIVO>' ||
                     VAR_RUT_EJECUTIVO || '</RUT_EJECUTIVO>' ||
                     '<CODIGO_EJECUTIVO>' || VAR_COD_EJECUTIVO ||
                     '</CODIGO_EJECUTIVO>' || '</RESPONSABLE_AFP>';

        END IF;

        VAR_CONTADOR := VAR_CONTADOR + 1;

      END LOOP;
      CLOSE VAR_CURSOR;

      VAR_CONTADOR := 0;

      LOOP
        FETCH VAR_CURSOR_INFO_ANEXA
          INTO VAR_ID_PERSONA, 
    VAR_NOMBRE, 
    VAR_DIRECCION, 
    VAR_REGION, 
    VAR_COMUNA, 
    VAR_TELEFONO, 
    VAR_EMAIL, 
    VAR_TIPO_PENSION, 
    VAR_AGENCIA, 
    VAR_NOMBRE_EJECUTIVO, 
    VAR_RUT_EJECUTIVO, 
    VAR_FECHA_DEVENGAMIENTO, 
    VAR_MODALIDAD_PENSION, 
    VAR_MANDATARIO, 
    VAR_FECHA_ULTIMO_PAGO, 
    VAR_FECHA_VIGENCIA_PODER, 
    VAR_TIPO_INVALIDEZ, 
    VAR_FECHA_EJECUTORIEDAD, 
    VAR_PENSION_ANTIGUO_SISTEMA, 
    VAR_MONTO_PENSION_UF_SISTEMA, 
    VAR_MONTO_INGRESO_BASE, 
    VAR_REQUISITO_ELD, 
    VAR_NRO_RETIRO_ELD, 
    VAR_OPCION_TRIBUTARIA, 
    VAR_AJUSTE_PENSION, 
    VAR_MONTO_PENSION_UF, 
    VAR_INSTITUCION_SALUD, 
    VAR_VIA_PAGO;

        EXIT WHEN VAR_CURSOR_INFO_ANEXA%NOTFOUND;

        IF VAR_CONTADOR = 0 THEN
          VAR_XML := VAR_XML || '<INFO_ANEXA>' || '<FECHA_DEVENGAMIENTO>' ||
                     VAR_FECHA_DEVENGAMIENTO || '</FECHA_DEVENGAMIENTO>' ||
                     '<MODALIDAD_PENSION>' || VAR_MODALIDAD_PENSION ||
                     '</MODALIDAD_PENSION>' || '<FECHA_ULTIMO_PAGO>' ||
                     VAR_FECHA_ULTIMO_PAGO || '</FECHA_ULTIMO_PAGO>' ||
                     '<MANDATARIO>' || VAR_MANDATARIO || '</MANDATARIO>' ||
                     '<FECHA_VIGENCIA_PODER>' || VAR_FECHA_VIGENCIA_PODER ||
                     '</FECHA_VIGENCIA_PODER>' || '<TIPO_INVALIDEZ>' ||
                     VAR_TIPO_INVALIDEZ || '</TIPO_INVALIDEZ>' ||
                     '<FECHA_EJECUTORIEDAD>' || VAR_FECHA_EJECUTORIEDAD ||
                     '</FECHA_EJECUTORIEDAD>' ||
                     '<PENSION_ANTIGUO_SISTEMA>' ||
                     VAR_PENSION_ANTIGUO_SISTEMA ||
                     '</PENSION_ANTIGUO_SISTEMA>' ||
                     '<MONTO_PENSION_UF_SISTEMA>' ||
                     VAR_MONTO_PENSION_UF_SISTEMA ||
                     '</MONTO_PENSION_UF_SISTEMA>' ||
                     '<MONTO_INGRESO_BASE>' || VAR_MONTO_INGRESO_BASE ||
                     '</MONTO_INGRESO_BASE>' || '<REQUISITO_ELD>' ||
                     VAR_REQUISITO_ELD || '</REQUISITO_ELD>' ||
                     '<NRO_RETIRO_ELD>' || VAR_NRO_RETIRO_ELD ||
                     '</NRO_RETIRO_ELD>' || '<OPCION_TRIBUTARIA>' ||
                     VAR_OPCION_TRIBUTARIA || '</OPCION_TRIBUTARIA>' ||
                     '<AJUSTE_PENSION>' || VAR_AJUSTE_PENSION ||
                     '</AJUSTE_PENSION>' || '<MONTO_PENSION_UF>' ||
                     VAR_MONTO_PENSION_UF || '</MONTO_PENSION_UF>' ||
                     '<INSTITUCION_SALUD>' || VAR_INSTITUCION_SALUD ||
                     '</INSTITUCION_SALUD>' || '<VIA_PAGO>' || VAR_VIA_PAGO ||
                     '</VIA_PAGO>' || '</INFO_ANEXA>';

        END IF;

        VAR_CONTADOR := VAR_CONTADOR + 1;

      END LOOP;
      CLOSE VAR_CURSOR_INFO_ANEXA;

      LOOP
        FETCH VAR_CURSOR_BENEF
          INTO VAR_NUMERO_BENEFICIARIO, 
    VAR_NOMBRE_BENEFICIARIO, 
    VAR_RUT_BENEFICIARIO, 
    VAR_RELACION_BENEFICIARIO, 
    VAR_FECHA_NAC_BENEF, 
    VAR_ESTADO_CIVIL, 
    VAR_SEXO_BENEF, 
    VAR_GRUPO_FAMILIAR;

        EXIT WHEN VAR_CURSOR_BENEF%NOTFOUND;

        VAR_XML := VAR_XML || '<BENEFICIARIOS>' || '<DETALLE_BENEFICIARIO>' ||
                   VAR_NUMERO_BENEFICIARIO || '</DETALLE_BENEFICIARIO>' ||
                   '<NOMBRE_BENEFICIARIO>' || VAR_NOMBRE_BENEFICIARIO ||
                   '</NOMBRE_BENEFICIARIO>' || '<RUT_BENEFICIARIO>' ||
                   VAR_RUT_BENEFICIARIO || '</RUT_BENEFICIARIO>' ||
                   '<RELACION_PARENTESCO>' || VAR_RELACION_BENEFICIARIO ||
                   '</RELACION_PARENTESCO>' || '<FECHA_NACIMIENTO>' ||
                   VAR_FECHA_NAC_BENEF || '</FECHA_NACIMIENTO>' || '<SEXO>' ||
                   VAR_SEXO_BENEF || '</SEXO>' || '<ESTADO_CIVIL>' ||
                   VAR_ESTADO_CIVIL || '</ESTADO_CIVIL>' ||
                   '<GRUPO_FAMILIAR>' || VAR_GRUPO_FAMILIAR ||
                   '</GRUPO_FAMILIAR>' || '</BENEFICIARIOS>';

      END LOOP;
      CLOSE VAR_CURSOR_BENEF;

      VAR_XML := VAR_XML || '</SOLICITUD_PENSION>';

    ELSE
      VAR_XML := '<COMPROBANTE_RESUMEN>' || '<Identificacion>' ||
                 '<IdReporte>' || VAR_ID_REPORTE || '</IdReporte>' ||
                 '<IdFormato>' || VAR_ID_FORMATO || '</IdFormato>' ||
                 '</Identificacion>';

      SOLICITUDPENSION.PCK_CONSOLIDADO_TRAMITES.DETALLE_TRAMITE_PENSION(VINU_ID_SOLICITUD,
                                                                        VINU_ID_NUM_CLIENTE,
                                                                        VAR_CURSOR);

      SOLICITUDES.PCK_CONSOLIDADO_TRAMITES.RESUMEN_SOLICITUD(VINU_ID_SOLICITUD,
                                                             VAR_DESCRIPCION_SOLICITUD,
                                                             VAR_FOLIO,
                                                             VAR_FECHA_SOLICITUD,
                                                             VAR_ESTADO_SOLICITUD,
                                                             VAR_VIA_INGRESO);

      SOLICITUDPENSION.PCK_CONSOLIDADO_TRAMITES.PSEL_DETALLE_BENEFICIARIOS(VINU_ID_SOLICITUD,
                                                                           VINU_ID_NUM_CLIENTE,
                                                                           VAR_CURSOR_BENEF);

      LOOP
        FETCH VAR_CURSOR
          INTO VAR_ID_CLIENTE, 
    VAR_NUMERO_TRAMITE_PENSION, 
    VAR_ID_PERSONA, 
    VAR_NOMBRE, 
    VAR_DIRECCION, 
    VAR_REGION, 
    VAR_COMUNA, 
    VAR_TELEFONO, 
    VAR_EMAIL, 
    VAR_TIPO_TRABAJADOR, 
    VAR_RUT_EMPRESA, 
    VAR_RAZON_SOCIAL, 
    VAR_DIRECCION_EMP, 
    VAR_REGION_EMP, 
    VAR_COMUNA_EMP, 
    VAR_FONO_EMP, 
    VAR_EMAIL_EMP, 
    VAR_TIPO_PENSION, 
    VAR_EXCLUSION, 
    VAR_AGENCIA, 
    VAR_NOMBRE_EJECUTIVO, 
    VAR_RUT_EJECUTIVO, 
    VAR_COD_EJECUTIVO;

        EXIT WHEN VAR_CURSOR%NOTFOUND;

        IF VAR_CONTADOR = -1 THEN
          VAR_CONTADOR := 0;
        END IF;

        IF VAR_CONTADOR = 0 THEN

          BEGIN

            SELECT TO_CHAR(MP.FEC_SELECCION, 'dd-mm-YYYY')
              INTO VDT_FECHA_SELECCION_MOD
              FROM solicitudpension.modalidad_pension mp,
                   SOLICITUDES.SOLICITUD              S
             where S.ID_SOLICITUD = VINU_ID_SOLICITUD
               AND mp.num_solicitud_pension = S.FOLIO
               and mp.num_modalidad =
                   (SELECT max(mp2.num_modalidad)
                      FROM solicitudpension.modalidad_pension mp2
                     where mp2.num_solicitud_pension =
                           mp.num_solicitud_pension);

          EXCEPTION
            WHEN NO_DATA_FOUND THEN
              VDT_FECHA_SELECCION_MOD := 'No ha realizado la Selección de Modalidad de Pensión';
          END;

          VAR_XML := VAR_XML || '<COMPROBANTE>' || '<ID_TIPO_TRAMITE>' ||
                     VAR_TIPO_TRAMITE || '</ID_TIPO_TRAMITE>' || '<NOMBRE>' ||
                     VAR_NOMBRE || '</NOMBRE>' || '<RUT>' || VAR_ID_PERSONA ||
                     '</RUT>' || '<DOMICILIO>' || VAR_DIRECCION ||
                     '</DOMICILIO>' || '<REGION>' || VAR_REGION ||
                     '</REGION>' || '<COMUNA>' || VAR_COMUNA || '</COMUNA>' ||
                     '<TELEFONO>' || VAR_TELEFONO || '</TELEFONO>' ||
                     '<EMAIL>' || VAR_EMAIL || '</EMAIL>' ||
                     '<TIPO_TRABAJADOR>' || VAR_TIPO_TRABAJADOR ||
                     '</TIPO_TRABAJADOR>' ||
                     '<TITULO_COLUMNA>Fecha Selección Modalidad</TITULO_COLUMNA>' ||
                     '<INFO_COLUMNA>' || VDT_FECHA_SELECCION_MOD ||
                     '</INFO_COLUMNA>' || '<ESTADO>' ||
                     VAR_ESTADO_SOLICITUD || '</ESTADO>' || '<VIA_INGRESO>' ||
                     VAR_VIA_INGRESO || '</VIA_INGRESO>' ||
                     '<FECHA_SOLICITUD>' || VAR_FECHA_SOLICITUD ||
                     '</FECHA_SOLICITUD>' || '<NRO_FOLIO>' || VAR_FOLIO ||
                     '</NRO_FOLIO>' || '<DESCRIPCION_TRAMITE>' ||
                     VAR_DESCRIPCION_SOLICITUD || '</DESCRIPCION_TRAMITE>' ||
                     '</COMPROBANTE>' || '<DETALLE_TRAMITE_PENSION>' ||
                     '<TIPO_PENSION>' || VAR_TIPO_PENSION ||
                     '</TIPO_PENSION>' || '<EXCLUSION>' || VAR_EXCLUSION ||
                     '</EXCLUSION>' || '<RAZON_SOCIAL>' || VAR_RAZON_SOCIAL ||
                     '</RAZON_SOCIAL>' || '<RUT_EMPRESA>' ||
                     VAR_RUT_EMPRESA || '</RUT_EMPRESA>' ||
                     '<DOMICILIO_EMPRESA>' || VAR_DIRECCION_EMP ||
                     '</DOMICILIO_EMPRESA>' || '<COMUNA_EMPRESA>' ||
                     VAR_COMUNA_EMP || '</COMUNA_EMPRESA>' ||
                     '<REGION_EMPRESA>' || VAR_REGION_EMP ||
                     '</REGION_EMPRESA>' || '<TELEFONO_EMPRESA>' ||
                     VAR_FONO_EMP || '</TELEFONO_EMPRESA>' ||
                     '<EMAIL_EMPRESA>' || VAR_EMAIL_EMP ||
                     '</EMAIL_EMPRESA>' || '</DETALLE_TRAMITE_PENSION>';

        END IF;

        VAR_CONTADOR := VAR_CONTADOR + 1;

      END LOOP;
      CLOSE VAR_CURSOR;

      LOOP
        FETCH VAR_CURSOR_BENEF
          INTO VAR_NUMERO_BENEFICIARIO, 
    VAR_NOMBRE_BENEFICIARIO, 
    VAR_RUT_BENEFICIARIO, 
    VAR_RELACION_BENEFICIARIO, 
    VAR_FECHA_NAC_BENEF, 
    VAR_ESTADO_CIVIL, 
    VAR_SEXO_BENEF, 
    VAR_GRUPO_FAMILIAR;

        EXIT WHEN VAR_CURSOR_BENEF%NOTFOUND;

        VAR_XML := VAR_XML || '<BENEFICIARIOS>' || '<DETALLE_BENEFICIARIO>' ||
                   VAR_NUMERO_BENEFICIARIO || '</DETALLE_BENEFICIARIO>' ||
                   '<NOMBRE_BENEFICIARIO>' || VAR_NOMBRE_BENEFICIARIO ||
                   '</NOMBRE_BENEFICIARIO>' || '<RUT_BENEFICIARIO>' ||
                   VAR_RUT_BENEFICIARIO || '</RUT_BENEFICIARIO>' ||
                   '<RELACION_PARENTESCO>' || VAR_RELACION_BENEFICIARIO ||
                   '</RELACION_PARENTESCO>' || '<FECHA_NACIMIENTO>' ||
                   VAR_FECHA_NAC_BENEF || '</FECHA_NACIMIENTO>' || '<SEXO>' ||
                   VAR_SEXO_BENEF || '</SEXO>' || '<ESTADO_CIVIL>' ||
                   VAR_ESTADO_CIVIL || '</ESTADO_CIVIL>' ||
                   '<GRUPO_FAMILIAR>' || VAR_GRUPO_FAMILIAR ||
                   '</GRUPO_FAMILIAR>' || '</BENEFICIARIOS>';

      END LOOP;
      CLOSE VAR_CURSOR_BENEF;

      VAR_XML := VAR_XML || '</COMPROBANTE_RESUMEN>';
    END IF;

    IF VAR_CONTADOR = -1 THEN
      VAR_XML := '';
    END IF;

    OPEN VOCUR_XML FOR
      SELECT VAR_XML AS XML FROM DUAL;

  END TRAMITE_SOLICITUD_PENSION;

  PROCEDURE TRAMITE_SOLICITUD_PENSION_ADI(VINU_ID_SOLICITUD   IN NUMBER, -- ID SOLICITUD
                                          VINU_ID_NUM_CLIENTE IN NUMBER, -- ID DEL CLIENTE
                                          VINU_TIPO_SOLICITUD IN NUMBER, -- TIPO SOLICITUD
                                          VIVC_TIPO_SALIDA    IN VARCHAR2, -- R RESUMEN   D DETALLADA
                                          VOCUR_XML           OUT TCURSOR) AS
    VAR_XML      CLOB;
    VAR_CURSOR   TCURSOR;
    VAR_CONTADOR NUMBER;
    -- INFO AFILIADO
    VAR_ID_PERSONA VARCHAR(15);
    VAR_NOMBRE     VARCHAR2(80);
    VAR_DIRECCION  VARCHAR2(200);
    VAR_REGION     VARCHAR2(80);
    VAR_COMUNA     VARCHAR2(60);
    VAR_TELEFONO   VARCHAR(15);
    VAR_EMAIL      VARCHAR(80);
    -- INFO REPORTE
    VAR_ID_REPORTE   VARCHAR2(4);
    VAR_ID_FORMATO   VARCHAR2(5);
    VAR_TIPO_TRAMITE VARCHAR2(2);
    -- INFO PENSION ADICIONAL
    VAR_VIA_DE_PAGO      VARCHAR2(100);
    VAR_AGENCIA          VARCHAR2(100);
    VAR_NOMBRE_EJECUTIVO VARCHAR2(100);
    VAR_RUT_EJECUTIVO    VARCHAR2(15);
    -- INFO COMPROBANTE
    VAR_DESCRIPCION_SOLICITUD VARCHAR2(200);
    VAR_FOLIO                 VARCHAR2(20);
    VAR_FECHA_SOLICITUD       VARCHAR(12);
    VAR_ESTADO_SOLICITUD      VARCHAR(50);
    VAR_VIA_INGRESO           VARCHAR2(50);
    VDT_FECHA_SELECCION_MOD   VARCHAR2(100);
  BEGIN

    VAR_CONTADOR := -1;

    IF VIVC_TIPO_SALIDA = 'D' THEN
      SELECT C.ID_REPORTE_DETALLE, C.ID_FORMATO_DETALLE
        INTO VAR_ID_REPORTE, VAR_ID_FORMATO
        FROM TIPO_MENU_CONSOLIDADO C
       WHERE C.ID_TIPO_SOLICITUD = VINU_TIPO_SOLICITUD;
    ELSE
      SELECT C.ID_REPORTE_COMPROBANTE,
             C.ID_FORMATO_COMPROBANTE,
             C.TIPO_TRAMITE
        INTO VAR_ID_REPORTE, VAR_ID_FORMATO, VAR_TIPO_TRAMITE
        FROM TIPO_MENU_CONSOLIDADO C
       WHERE C.ID_TIPO_SOLICITUD = VINU_TIPO_SOLICITUD;
    END IF;

    IF VIVC_TIPO_SALIDA = 'D' THEN

      SOLICITUDPENSION.PCK_CONSOLIDADO_TRAMITES.DETALLE_PENSION_ADICIONAL(VINU_ID_SOLICITUD,
                                                                          VINU_ID_NUM_CLIENTE,
                                                                          VAR_CURSOR);
      VAR_XML := '<SOLICITUD_PENSION>' || '<Identificacion>' ||
                 '<IdReporte>' || VAR_ID_REPORTE || '</IdReporte>' ||
                 '<IdFormato>' || VAR_ID_FORMATO || '</IdFormato>' ||
                 '</Identificacion>';

      LOOP
        FETCH VAR_CURSOR
          INTO VAR_ID_PERSONA, 
    VAR_NOMBRE, 
    VAR_DIRECCION, 
    VAR_REGION, 
    VAR_COMUNA, 
    VAR_TELEFONO, 
    VAR_EMAIL, 
    VAR_VIA_DE_PAGO, 
    VAR_AGENCIA, 
    VAR_NOMBRE_EJECUTIVO, 
    VAR_RUT_EJECUTIVO;

        EXIT WHEN VAR_CURSOR%NOTFOUND;

        IF VAR_CONTADOR = -1 THEN
          VAR_CONTADOR := 0;
        END IF;

        IF VAR_CONTADOR = 0 THEN
          VAR_XML := VAR_XML || '<INFO_AFILIADO>' || '<NOMBRE>' ||
                     VAR_NOMBRE || '</NOMBRE>' || '<RUT>' || VAR_ID_PERSONA ||
                     '</RUT>' || '<DOMICILIO>' || VAR_DIRECCION ||
                     '</DOMICILIO>' || '<COMUNA>' || VAR_COMUNA ||
                     '</COMUNA>' || '<REGION>' || VAR_REGION || '</REGION>' ||
                     '<TELEFONO>' || VAR_TELEFONO || '</TELEFONO>' ||
                     '<EMAIL>' || VAR_EMAIL || '</EMAIL>' ||
                     '</INFO_AFILIADO>' || '<DETALLE_PENSION_ADICIONAL>' ||
                     '<VIA_PAGO>' || VAR_VIA_DE_PAGO || '</VIA_PAGO>' ||
                     '</DETALLE_PENSION_ADICIONAL>' || '<INFO_RESP_AFP>' ||
                     '<AGENCIA>' || VAR_AGENCIA || '</AGENCIA>' ||
                     '<NOMBRE_EJECUTIVO>' || VAR_NOMBRE_EJECUTIVO ||
                     '</NOMBRE_EJECUTIVO>' || '<RUT_EJECUTIVO>' ||
                     VAR_RUT_EJECUTIVO || '</RUT_EJECUTIVO>' ||
                     '</INFO_RESP_AFP>';

        END IF;

        VAR_CONTADOR := VAR_CONTADOR + 1;

      END LOOP;
      CLOSE VAR_CURSOR;

      VAR_XML := VAR_XML || '</SOLICITUD_PENSION>';

    ELSE

      VAR_XML := '<COMPROBANTE_RESUMEN>' || '<Identificacion>' ||
                 '<IdReporte>' || VAR_ID_REPORTE || '</IdReporte>' ||
                 '<IdFormato>' || VAR_ID_FORMATO || '</IdFormato>' ||
                 '</Identificacion>';

      SOLICITUDPENSION.PCK_CONSOLIDADO_TRAMITES.DETALLE_PENSION_ADICIONAL(VINU_ID_SOLICITUD,
                                                                          VINU_ID_NUM_CLIENTE,
                                                                          VAR_CURSOR);

      SOLICITUDES.PCK_CONSOLIDADO_TRAMITES.RESUMEN_SOLICITUD(VINU_ID_SOLICITUD,
                                                             VAR_DESCRIPCION_SOLICITUD,
                                                             VAR_FOLIO,
                                                             VAR_FECHA_SOLICITUD,
                                                             VAR_ESTADO_SOLICITUD,
                                                             VAR_VIA_INGRESO);

      LOOP
        FETCH VAR_CURSOR
          INTO VAR_ID_PERSONA, 
    VAR_NOMBRE, 
    VAR_DIRECCION, 
    VAR_REGION, 
    VAR_COMUNA, 
    VAR_TELEFONO, 
    VAR_EMAIL, 
    VAR_VIA_DE_PAGO, 
    VAR_AGENCIA, 
    VAR_NOMBRE_EJECUTIVO, 
    VAR_RUT_EJECUTIVO;

        EXIT WHEN VAR_CURSOR%NOTFOUND;

        IF VAR_CONTADOR = -1 THEN
          VAR_CONTADOR := 0;
        END IF;

        IF VAR_CONTADOR = 0 THEN

          BEGIN

            SELECT TO_CHAR(MP.FEC_SELECCION, 'dd-mm-YYYY')
              INTO VDT_FECHA_SELECCION_MOD
              FROM solicitudpension.modalidad_pension mp,
                   SOLICITUDES.SOLICITUD              S
             where S.ID_SOLICITUD = VINU_ID_SOLICITUD
               AND mp.num_solicitud_pension = S.FOLIO
               and mp.num_modalidad =
                   (SELECT max(mp2.num_modalidad)
                      FROM solicitudpension.modalidad_pension mp2
                     where mp2.num_solicitud_pension =
                           mp.num_solicitud_pension);

          EXCEPTION
            WHEN NO_DATA_FOUND THEN
              VDT_FECHA_SELECCION_MOD := 'No tiene fecha de Selección de Modalidad de Pensión';
          END;

          VAR_XML := VAR_XML || '<COMPROBANTE>' || '<ID_TIPO_TRAMITE>' ||
                     VAR_TIPO_TRAMITE || '</ID_TIPO_TRAMITE>' || '<NOMBRE>' ||
                     VAR_NOMBRE || '</NOMBRE>' || '<RUT>' || VAR_ID_PERSONA ||
                     '</RUT>' || '<DOMICILIO>' || VAR_DIRECCION ||
                     '</DOMICILIO>' || '<REGION>' || VAR_REGION ||
                     '</REGION>' || '<COMUNA>' || VAR_COMUNA || '</COMUNA>' ||
                     '<TELEFONO>' || VAR_TELEFONO || '</TELEFONO>' ||
                     '<EMAIL>' || VAR_EMAIL || '</EMAIL>' ||
                     '<TITULO_COLUMNA>Fecha Selección de Modalidad</TITULO_COLUMNA>' ||
                     '<INFO_COLUMNA>' || VDT_FECHA_SELECCION_MOD ||
                     '</INFO_COLUMNA>' || '<ESTADO>' ||
                     VAR_ESTADO_SOLICITUD || '</ESTADO>' || '<VIA_INGRESO>' ||
                     VAR_VIA_INGRESO || '</VIA_INGRESO>' ||
                     '<FECHA_SOLICITUD>' || VAR_FECHA_SOLICITUD ||
                     '</FECHA_SOLICITUD>' || '<NRO_FOLIO>' || VAR_FOLIO ||
                     '</NRO_FOLIO>' || '<DESCRIPCION_TRAMITE>' ||
                     VAR_DESCRIPCION_SOLICITUD || '</DESCRIPCION_TRAMITE>' ||
                     '</COMPROBANTE>' || '<DETALLE_PENSION_ADICIONAL>' ||
                     '<VIA_PAGO>' || VAR_VIA_DE_PAGO || '</VIA_PAGO>' ||
                     '</DETALLE_PENSION_ADICIONAL>';

        END IF;

        VAR_CONTADOR := VAR_CONTADOR + 1;

      END LOOP;
      CLOSE VAR_CURSOR;

      VAR_XML := VAR_XML || '</COMPROBANTE_RESUMEN>';

    END IF;

    IF VAR_CONTADOR = -1 THEN
      VAR_XML := '';
    END IF;

    OPEN VOCUR_XML FOR
      SELECT VAR_XML AS XML FROM DUAL;

  END TRAMITE_SOLICITUD_PENSION_ADI;

  PROCEDURE TRAMITE_SOLICITUD_OFERTA_SCOMP(VINU_ID_SOLICITUD   IN NUMBER, -- ID SOLICITUD
                                           VINU_ID_NUM_CLIENTE IN NUMBER, -- ID DEL CLIENTE
                                           VINU_TIPO_SOLICITUD IN NUMBER, -- TIPO SOLICITUD
                                           VIVC_TIPO_SALIDA    IN VARCHAR2, -- R RESUMEN   D DETALLADA
                                           VOCUR_XML           OUT TCURSOR) AS
    VAR_XML      CLOB;
    VAR_CURSOR   TCURSOR;
    VAR_CONTADOR NUMBER;
    -- INFO OFERTA SCOMP
    VAR_ID_CERT_SALDO        VARCHAR2(15);
    VAR_SEC_SOLICITUD_OFERTA VARCHAR2(15);
    VAR_ID_PERSONA           VARCHAR(15);
    VAR_NOMBRE               VARCHAR2(80);
    VAR_DIRECCION            VARCHAR2(200);
    VAR_REGION               VARCHAR2(80);
    VAR_COMUNA               VARCHAR2(60);
    VAR_TELEFONO             VARCHAR2(15);
    VAR_EMAIL                VARCHAR2(80);
    VAR_FOLIO_CERT_SALDO     VARCHAR2(15);
    VAR_TIPO_PENSION         VARCHAR2(60);
    VAR_RETIRO_ELD           VARCHAR2(15);
    VAR_AGENCIA              VARCHAR2(100);
    VAR_NOMBRE_EJECUTIVO     VARCHAR2(100);
    VAR_RUT_EJECUTIVO        VARCHAR2(15);
    -- INFO REPORTE
    VAR_ID_REPORTE   VARCHAR2(4);
    VAR_ID_FORMATO   VARCHAR2(5);
    VAR_TIPO_TRAMITE VARCHAR2(2);
    -- INFO COMPROBANTE
    VAR_DESCRIPCION_SOLICITUD VARCHAR2(200);
    VAR_FOLIO                 VARCHAR2(20);
    VAR_FECHA_SOLICITUD       VARCHAR(12);
    VAR_ESTADO_SOLICITUD      VARCHAR(50);
    VAR_VIA_INGRESO           VARCHAR2(50);
    VDT_FECHA_SELECCION_MOD   VARCHAR2(100);
  BEGIN

    VAR_CONTADOR := -1;

    IF VIVC_TIPO_SALIDA = 'D' THEN
      SELECT C.ID_REPORTE_DETALLE, C.ID_FORMATO_DETALLE
        INTO VAR_ID_REPORTE, VAR_ID_FORMATO
        FROM TIPO_MENU_CONSOLIDADO C
       WHERE C.ID_TIPO_SOLICITUD = VINU_TIPO_SOLICITUD;
    ELSE
      SELECT C.ID_REPORTE_COMPROBANTE,
             C.ID_FORMATO_COMPROBANTE,
             C.TIPO_TRAMITE
        INTO VAR_ID_REPORTE, VAR_ID_FORMATO, VAR_TIPO_TRAMITE
        FROM TIPO_MENU_CONSOLIDADO C
       WHERE C.ID_TIPO_SOLICITUD = VINU_TIPO_SOLICITUD;
    END IF;

    IF VIVC_TIPO_SALIDA = 'D' THEN

      SOLICITUDPENSION.PCK_CONSOLIDADO_TRAMITES.DETALLE_OFERTA_SCOMP(VINU_ID_SOLICITUD,
                                                                     VINU_ID_NUM_CLIENTE,
                                                                     VAR_CURSOR);
      VAR_XML := '<SOLICITUD_PENSION>' || '<Identificacion>' ||
                 '<IdReporte>' || VAR_ID_REPORTE || '</IdReporte>' ||
                 '<IdFormato>' || VAR_ID_FORMATO || '</IdFormato>' ||
                 '</Identificacion>';

      LOOP
        FETCH VAR_CURSOR
          INTO VAR_ID_CERT_SALDO, 
    VAR_SEC_SOLICITUD_OFERTA, 
    VAR_ID_PERSONA, 
    VAR_NOMBRE, 
    VAR_DIRECCION, 
    VAR_REGION, 
    VAR_COMUNA, 
    VAR_TELEFONO, 
    VAR_EMAIL, 
    VAR_FOLIO_CERT_SALDO, 
    VAR_TIPO_PENSION, 
    VAR_RETIRO_ELD, 
    VAR_AGENCIA, 
    VAR_NOMBRE_EJECUTIVO, 
    VAR_RUT_EJECUTIVO;

        EXIT WHEN VAR_CURSOR%NOTFOUND;

        IF VAR_CONTADOR = -1 THEN
          VAR_CONTADOR := 0;
        END IF;

        IF VAR_CONTADOR = 0 THEN
          VAR_XML := VAR_XML || '<INFO_AFILIADO>' || '<NOMBRE>' ||
                     VAR_NOMBRE || '</NOMBRE>' || '<RUT>' || VAR_ID_PERSONA ||
                     '</RUT>' || '<DOMICILIO>' || VAR_DIRECCION ||
                     '</DOMICILIO>' || '<COMUNA>' || VAR_COMUNA ||
                     '</COMUNA>' || '<REGION>' || VAR_REGION || '</REGION>' ||
                     '<TELEFONO>' || VAR_TELEFONO || '</TELEFONO>' ||
                     '<EMAIL>' || VAR_EMAIL || '</EMAIL>' ||
                     '</INFO_AFILIADO>' || '<OFERTA_SCOMP>' ||
                     '<NRO_FOLIO_CERTIFICADO>' || VAR_FOLIO_CERT_SALDO ||
                     '</NRO_FOLIO_CERTIFICADO>' || '<TIPO_PENSION>' ||
                     VAR_TIPO_PENSION || '</TIPO_PENSION>' ||
                     '<RETIRO_ELD>' || VAR_RETIRO_ELD || '</RETIRO_ELD>' ||
                     '</OFERTA_SCOMP>' || '<INFO_RESP_AFP>' || '<AGENCIA>' ||
                     VAR_AGENCIA || '</AGENCIA>' || '<NOMBRE_EJECUTIVO>' ||
                     VAR_NOMBRE_EJECUTIVO || '</NOMBRE_EJECUTIVO>' ||
                     '<RUT_EJECUTIVO>' || VAR_RUT_EJECUTIVO ||
                     '</RUT_EJECUTIVO>' || '</INFO_RESP_AFP>';

        END IF;

        VAR_XML := VAR_XML || '<DETALLE_OFERTA_SCOMP>' ||
                   '<TIPO_MODALIDAD_SELECCIONADA>' ||
                   'FALTA DESDE EL NEGOCIO' ||
                   '</TIPO_MODALIDAD_SELECCIONADA>' ||
                   '</DETALLE_OFERTA_SCOMP>';

        VAR_CONTADOR := VAR_CONTADOR + 1;

      END LOOP;
      CLOSE VAR_CURSOR;

      VAR_XML := VAR_XML || '</SOLICITUD_PENSION>';

    ELSE

      VAR_XML := '<COMPROBANTE_RESUMEN>' || '<Identificacion>' ||
                 '<IdReporte>' || VAR_ID_REPORTE || '</IdReporte>' ||
                 '<IdFormato>' || VAR_ID_FORMATO || '</IdFormato>' ||
                 '</Identificacion>';

      SOLICITUDPENSION.PCK_CONSOLIDADO_TRAMITES.DETALLE_OFERTA_SCOMP(VINU_ID_SOLICITUD,
                                                                     VINU_ID_NUM_CLIENTE,
                                                                     VAR_CURSOR);

      SOLICITUDES.PCK_CONSOLIDADO_TRAMITES.RESUMEN_SOLICITUD(VINU_ID_SOLICITUD,
                                                             VAR_DESCRIPCION_SOLICITUD,
                                                             VAR_FOLIO,
                                                             VAR_FECHA_SOLICITUD,
                                                             VAR_ESTADO_SOLICITUD,
                                                             VAR_VIA_INGRESO);

      LOOP
        FETCH VAR_CURSOR
          INTO VAR_ID_CERT_SALDO, 
    VAR_SEC_SOLICITUD_OFERTA, 
    VAR_ID_PERSONA, 
    VAR_NOMBRE, 
    VAR_DIRECCION, 
    VAR_REGION, 
    VAR_COMUNA, 
    VAR_TELEFONO, 
    VAR_EMAIL, 
    VAR_FOLIO_CERT_SALDO, 
    VAR_TIPO_PENSION, 
    VAR_RETIRO_ELD, 
    VAR_AGENCIA, 
    VAR_NOMBRE_EJECUTIVO, 
    VAR_RUT_EJECUTIVO;

        EXIT WHEN VAR_CURSOR%NOTFOUND;

        IF VAR_CONTADOR = -1 THEN
          VAR_CONTADOR := 0;
        END IF;

        IF VAR_CONTADOR = 0 THEN

          BEGIN

            SELECT TO_CHAR(MP.FEC_SELECCION, 'dd-mm-YYYY')
              INTO VDT_FECHA_SELECCION_MOD
              FROM solicitudpension.modalidad_pension mp,
                   SOLICITUDES.SOLICITUD              S
             where S.ID_SOLICITUD = VINU_ID_SOLICITUD
               AND mp.num_solicitud_pension = S.FOLIO
               and mp.num_modalidad =
                   (SELECT max(mp2.num_modalidad)
                      FROM solicitudpension.modalidad_pension mp2
                     where mp2.num_solicitud_pension =
                           mp.num_solicitud_pension);

          EXCEPTION
            WHEN NO_DATA_FOUND THEN
              VDT_FECHA_SELECCION_MOD := 'No tiene fecha de Selección de Modalidad de Pensión';
          END;

          VAR_XML := VAR_XML || '<COMPROBANTE>' || '<ID_TIPO_TRAMITE>' ||
                     VAR_TIPO_TRAMITE || '</ID_TIPO_TRAMITE>' || '<NOMBRE>' ||
                     VAR_NOMBRE || '</NOMBRE>' || '<RUT>' || VAR_ID_PERSONA ||
                     '</RUT>' || '<DOMICILIO>' || VAR_DIRECCION ||
                     '</DOMICILIO>' || '<REGION>' || VAR_REGION ||
                     '</REGION>' || '<COMUNA>' || VAR_COMUNA || '</COMUNA>' ||
                     '<TELEFONO>' || VAR_TELEFONO || '</TELEFONO>' ||
                     '<EMAIL>' || VAR_EMAIL || '</EMAIL>' ||
                     '<TITULO_COLUMNA>Fecha Selección de Modalidad</TITULO_COLUMNA>' ||
                     '<INFO_COLUMNA>' || VDT_FECHA_SELECCION_MOD ||
                     '</INFO_COLUMNA>' || '<ESTADO>' ||
                     VAR_ESTADO_SOLICITUD || '</ESTADO>' || '<VIA_INGRESO>' ||
                     VAR_VIA_INGRESO || '</VIA_INGRESO>' ||
                     '<FECHA_SOLICITUD>' || VAR_FECHA_SOLICITUD ||
                     '</FECHA_SOLICITUD>' || '<NRO_FOLIO>' || VAR_FOLIO ||
                     '</NRO_FOLIO>' || '<DESCRIPCION_TRAMITE>' ||
                     VAR_DESCRIPCION_SOLICITUD || '</DESCRIPCION_TRAMITE>' ||
                     '</COMPROBANTE>' || '<OFERTA_SCOMP>' ||
                     '<NRO_FOLIO_CERTIFICADO>' || VAR_FOLIO_CERT_SALDO ||
                     '</NRO_FOLIO_CERTIFICADO>' || '<TIPO_PENSION>' ||
                     VAR_TIPO_PENSION || '</TIPO_PENSION>' ||
                     '<RETIRO_ELD>' || VAR_RETIRO_ELD || '</RETIRO_ELD>' ||
                     '</OFERTA_SCOMP>';

        END IF;

        VAR_XML := VAR_XML || '<DETALLE_OFERTA_SCOMP>' ||
                   '<TIPO_MODALIDAD_SELECCIONADA>' ||
                   'FALTA DESDE EL NEGOCIO' ||
                   '</TIPO_MODALIDAD_SELECCIONADA>' ||
                   '</DETALLE_OFERTA_SCOMP>';

        VAR_CONTADOR := VAR_CONTADOR + 1;

      END LOOP;
      CLOSE VAR_CURSOR;

      VAR_XML := VAR_XML || '</COMPROBANTE_RESUMEN>';

    END IF;

    IF VAR_CONTADOR = -1 THEN
      VAR_XML := '';
    END IF;

    OPEN VOCUR_XML FOR
      SELECT VAR_XML AS XML FROM DUAL;

  END TRAMITE_SOLICITUD_OFERTA_SCOMP;

  PROCEDURE TRAMITE_SOLICITUD_CERT_SALDO(VINU_ID_SOLICITUD   IN NUMBER, -- ID SOLICITUD
                                         VINU_ID_NUM_CLIENTE IN NUMBER, -- ID DEL CLIENTE
                                         VINU_TIPO_SOLICITUD IN NUMBER, -- TIPO SOLICITUD
                                         VIVC_TIPO_SALIDA    IN VARCHAR2, -- R RESUMEN   D DETALLADA
                                         VOCUR_XML           OUT TCURSOR) AS
    VAR_XML      CLOB;
    VAR_CURSOR   TCURSOR;
    VAR_CONTADOR NUMBER;
    -- INFO OFERTA SCOMP
    VAR_ID_CLIENTE          VARCHAR2(15);
    VAR_NUM_TRAMITE_SALDO   VARCHAR2(15);
    VAR_SEQ_TRAMITE         VARCHAR2(20);
    VAR_ID_PERSONA          VARCHAR(15);
    VAR_NOMBRE              VARCHAR2(80);
    VAR_DIRECCION           VARCHAR2(200);
    VAR_REGION              VARCHAR2(80);
    VAR_COMUNA              VARCHAR2(60);
    VAR_TELEFONO            VARCHAR2(15);
    VAR_EMAIL               VARCHAR2(80);
    VAR_FECHA_VIGENCIA_CERT VARCHAR2(15);
    VAR_AGENCIA             VARCHAR2(100);
    VAR_NOMBRE_EJECUTIVO    VARCHAR2(100);
    VAR_RUT_EJECUTIVO       VARCHAR2(15);
    -- INFO REPORTE
    VAR_ID_REPORTE   VARCHAR2(4);
    VAR_ID_FORMATO   VARCHAR2(5);
    VAR_TIPO_TRAMITE VARCHAR2(2);
    -- INFO COMPROBANTE
    VAR_DESCRIPCION_SOLICITUD VARCHAR2(200);
    VAR_FOLIO                 VARCHAR2(20);
    VAR_FECHA_SOLICITUD       VARCHAR(12);
    VAR_ESTADO_SOLICITUD      VARCHAR(50);
    VAR_VIA_INGRESO           VARCHAR2(50);
  BEGIN

    VAR_CONTADOR := -1;

    IF VIVC_TIPO_SALIDA = 'D' THEN
      SELECT C.ID_REPORTE_DETALLE, C.ID_FORMATO_DETALLE
        INTO VAR_ID_REPORTE, VAR_ID_FORMATO
        FROM TIPO_MENU_CONSOLIDADO C
       WHERE C.ID_TIPO_SOLICITUD = VINU_TIPO_SOLICITUD;
    ELSE
      SELECT C.ID_REPORTE_COMPROBANTE,
             C.ID_FORMATO_COMPROBANTE,
             C.TIPO_TRAMITE
        INTO VAR_ID_REPORTE, VAR_ID_FORMATO, VAR_TIPO_TRAMITE
        FROM TIPO_MENU_CONSOLIDADO C
       WHERE C.ID_TIPO_SOLICITUD = VINU_TIPO_SOLICITUD;
    END IF;

    IF VIVC_TIPO_SALIDA = 'D' THEN

      SOLICITUDPENSION.PCK_CONSOLIDADO_TRAMITES.DETALLE_CERTIFICADO_SALDO(VINU_ID_SOLICITUD,
                                                                          VINU_ID_NUM_CLIENTE,
                                                                          VAR_CURSOR);
      VAR_XML := '<CERTIFICADO_SALDO>' || '<Identificacion>' ||
                 '<IdReporte>' || VAR_ID_REPORTE || '</IdReporte>' ||
                 '<IdFormato>' || VAR_ID_FORMATO || '</IdFormato>' ||
                 '</Identificacion>';

      LOOP
        FETCH VAR_CURSOR
          INTO VAR_ID_CLIENTE, 
    VAR_NUM_TRAMITE_SALDO, 
    VAR_SEQ_TRAMITE, 
    VAR_ID_PERSONA, 
    VAR_NOMBRE, 
    VAR_DIRECCION, 
    VAR_REGION, 
    VAR_COMUNA, 
    VAR_TELEFONO, 
    VAR_EMAIL, 
    VAR_FECHA_VIGENCIA_CERT, 
    VAR_AGENCIA, 
    VAR_NOMBRE_EJECUTIVO, 
    VAR_RUT_EJECUTIVO;

        EXIT WHEN VAR_CURSOR%NOTFOUND;

        IF VAR_CONTADOR = -1 THEN
          VAR_CONTADOR := 0;
        END IF;

        IF VAR_CONTADOR = 0 THEN
          VAR_XML := VAR_XML || '<INFO_AFILIADO>' || '<NOMBRE>' ||
                     VAR_NOMBRE || '</NOMBRE>' || '<RUT>' || VAR_ID_PERSONA ||
                     '</RUT>' || '<DOMICILIO>' || VAR_DIRECCION ||
                     '</DOMICILIO>' || '<COMUNA>' || VAR_COMUNA ||
                     '</COMUNA>' || '<REGION>' || VAR_REGION || '</REGION>' ||
                     '<TELEFONO>' || VAR_TELEFONO || '</TELEFONO>' ||
                     '<EMAIL>' || VAR_EMAIL || '</EMAIL>' ||
                     '</INFO_AFILIADO>' || '<INFO_CERTIFICADO>' ||
                     '<FECHA_VIGENCIA>' || VAR_FECHA_VIGENCIA_CERT ||
                     '</FECHA_VIGENCIA>' || '</INFO_CERTIFICADO>' ||
                     '<INFO_RESP_AFP>' || '<AGENCIA>' || VAR_AGENCIA ||
                     '</AGENCIA>' || '<NOMBRE_EJECUTIVO>' ||
                     VAR_NOMBRE_EJECUTIVO || '</NOMBRE_EJECUTIVO>' ||
                     '<RUT_EJECUTIVO>' || VAR_RUT_EJECUTIVO ||
                     '</RUT_EJECUTIVO>' || '</INFO_RESP_AFP>';

        END IF;

        VAR_XML := VAR_XML || '<INFO_CUENTA>' || '<CUENTA>' ||
                   'FALTA DESDE EL NEGOCIO' || '</CUENTA>' ||
                   '<FONDO_DESTINO>' || 'FALTA DESDE EL NEGOCIO' ||
                   '</FONDO_DESTINO>' || '<SALDO_UF>' ||
                   'FALTA DESDE EL NEGOCIO' || '</SALDO_UF>' ||
                   '</INFO_CUENTA>';

        VAR_CONTADOR := VAR_CONTADOR + 1;

      END LOOP;
      CLOSE VAR_CURSOR;

      VAR_XML := VAR_XML || '</CERTIFICADO_SALDO>';

    ELSE

      VAR_XML := '<COMPROBANTE_RESUMEN>' || '<Identificacion>' ||
                 '<IdReporte>' || VAR_ID_REPORTE || '</IdReporte>' ||
                 '<IdFormato>' || VAR_ID_FORMATO || '</IdFormato>' ||
                 '</Identificacion>';

      SOLICITUDPENSION.PCK_CONSOLIDADO_TRAMITES.DETALLE_CERTIFICADO_SALDO(VINU_ID_SOLICITUD,
                                                                          VINU_ID_NUM_CLIENTE,
                                                                          VAR_CURSOR);

      SOLICITUDES.PCK_CONSOLIDADO_TRAMITES.RESUMEN_SOLICITUD(VINU_ID_SOLICITUD,
                                                             VAR_DESCRIPCION_SOLICITUD,
                                                             VAR_FOLIO,
                                                             VAR_FECHA_SOLICITUD,
                                                             VAR_ESTADO_SOLICITUD,
                                                             VAR_VIA_INGRESO);

      LOOP
        FETCH VAR_CURSOR
          INTO VAR_ID_CLIENTE, 
    VAR_NUM_TRAMITE_SALDO, 
    VAR_SEQ_TRAMITE, 
    VAR_ID_PERSONA, 
    VAR_NOMBRE, 
    VAR_DIRECCION, 
    VAR_REGION, 
    VAR_COMUNA, 
    VAR_TELEFONO, 
    VAR_EMAIL, 
    VAR_FECHA_VIGENCIA_CERT, 
    VAR_AGENCIA, 
    VAR_NOMBRE_EJECUTIVO, 
    VAR_RUT_EJECUTIVO;

        EXIT WHEN VAR_CURSOR%NOTFOUND;

        IF VAR_CONTADOR = -1 THEN
          VAR_CONTADOR := 0;
        END IF;

        IF VAR_CONTADOR = 0 THEN
          VAR_XML := VAR_XML || '<COMPROBANTE>' || '<ID_TIPO_TRAMITE>' ||
                     VAR_TIPO_TRAMITE || '</ID_TIPO_TRAMITE>' || '<NOMBRE>' ||
                     VAR_NOMBRE || '</NOMBRE>' || '<RUT>' || VAR_ID_PERSONA ||
                     '</RUT>' || '<DOMICILIO>' || VAR_DIRECCION ||
                     '</DOMICILIO>' || '<REGION>' || VAR_REGION ||
                     '</REGION>' || '<COMUNA>' || VAR_COMUNA || '</COMUNA>' ||
                     '<TELEFONO>' || VAR_TELEFONO || '</TELEFONO>' ||
                     '<EMAIL>' || VAR_EMAIL || '</EMAIL>' ||
                     '<TITULO_COLUMNA>Fecha Materialización</TITULO_COLUMNA>' ||
                     '<INFO_COLUMNA>' || 'FALTA POR PARTE DEL NEGOCIO' ||
                     '</INFO_COLUMNA>' || '<ESTADO>' ||
                     VAR_ESTADO_SOLICITUD || '</ESTADO>' || '<VIA_INGRESO>' ||
                     VAR_VIA_INGRESO || '</VIA_INGRESO>' ||
                     '<FECHA_SOLICITUD>' || VAR_FECHA_SOLICITUD ||
                     '</FECHA_SOLICITUD>' || '<NRO_FOLIO>' || VAR_FOLIO ||
                     '</NRO_FOLIO>' || '<DESCRIPCION_TRAMITE>' ||
                     VAR_DESCRIPCION_SOLICITUD || '</DESCRIPCION_TRAMITE>' ||
                     '</COMPROBANTE>' || '<INFO_CERTIFICADO>' ||
                     '<FECHA_VIGENCIA_CERTIFICADO>' ||
                     VAR_FECHA_VIGENCIA_CERT ||
                     '</FECHA_VIGENCIA_CERTIFICADO>' ||
                     '</INFO_CERTIFICADO>';

        END IF;

        VAR_XML := VAR_XML || '<INFO_CUENTA>' || '<CUENTA>' ||
                   'FALTA POR PARTE DEL NEGOCIO' || '</CUENTA>' ||
                   '<FONDO_DESTINO>' || 'FALTA POR PARTE DEL NEGOCIO' ||
                   '</FONDO_DESTINO>' || '<SALDO_UF>' ||
                   'FALTA POR PARTE DEL NEGOCIO' || '</SALDO_UF>' ||
                   '</INFO_CUENTA>';

        VAR_CONTADOR := VAR_CONTADOR + 1;

      END LOOP;
      CLOSE VAR_CURSOR;

      VAR_XML := VAR_XML || '</COMPROBANTE_RESUMEN>';

    END IF;

    IF VAR_CONTADOR = -1 THEN
      VAR_XML := '';
    END IF;

    OPEN VOCUR_XML FOR
      SELECT VAR_XML AS XML FROM DUAL;

  END TRAMITE_SOLICITUD_CERT_SALDO;

  PROCEDURE TRAMITE_SELECCION_MODALIDAD(VINU_ID_SOLICITUD   IN NUMBER, -- ID SOLICITUD
                                        VINU_ID_NUM_CLIENTE IN NUMBER, -- ID DEL CLIENTE
                                        VINU_TIPO_SOLICITUD IN NUMBER, -- TIPO SOLICITUD
                                        VIVC_TIPO_SALIDA    IN VARCHAR2, -- R RESUMEN   D DETALLADA
                                        VOCUR_XML           OUT TCURSOR) AS
    VAR_XML      CLOB;
    VAR_CURSOR   TCURSOR;
    VAR_CONTADOR NUMBER;
    -- INFO SELECCION MODALIDAD
    VAR_ID_CLIENTE           VARCHAR2(15);
    VAR_NUM_TRAMITE_PENSION  VARCHAR2(15);
    VAR_ID_PERSONA           VARCHAR(15);
    VAR_NOMBRE               VARCHAR2(80);
    VAR_DIRECCION            VARCHAR2(200);
    VAR_REGION               VARCHAR2(80);
    VAR_COMUNA               VARCHAR2(60);
    VAR_TELEFONO             VARCHAR2(15);
    VAR_EMAIL                VARCHAR2(80);
    VAR_TIPO_PENSION         VARCHAR2(80);
    VAR_FECHA_SOLICITUD_TRAM VARCHAR2(15);
    VAR_MODALIDAD_PENSION    VARCHAR2(100);
    VAR_SOL_DEVEG_PENSION    VARCHAR2(100);
    VAR_FECHA_DEVEG_PENSION  VARCHAR2(15);
    VAR_AGENCIA              VARCHAR2(100);
    VAR_NOMBRE_EJECUTIVO     VARCHAR2(100);
    VAR_RUT_EJECUTIVO        VARCHAR2(15);
    -- INFO REPORTE
    VAR_ID_REPORTE   VARCHAR2(4);
    VAR_ID_FORMATO   VARCHAR2(5);
    VAR_TIPO_TRAMITE VARCHAR2(2);
    -- INFO COMPROBANTE
    VAR_DESCRIPCION_SOLICITUD VARCHAR2(200);
    VAR_FOLIO                 VARCHAR2(20);
    VAR_FECHA_SOLICITUD       VARCHAR(12);
    VAR_ESTADO_SOLICITUD      VARCHAR(50);
    VAR_VIA_INGRESO           VARCHAR2(50);

    VNV_ENVIAR_EMAIL        number;
    VDT_FECHA_SELECCION_MOD VARCHAR2(100);
  BEGIN

    VNV_ENVIAR_EMAIL := framework.pck_proposito_general.ENVIAR_MAIL('fgalindo@cuprum.cl',
                                                                    'datos',

                                                                    ' VINU_ID_SOLICITUD ' ||
                                                                    VINU_ID_SOLICITUD ||
                                                                    ' VINU_ID_NUM_CLIENTE ' ||
                                                                    VINU_ID_NUM_CLIENTE ||
                                                                    ' VINU_TIPO_SOLICITUD ' ||
                                                                    VINU_TIPO_SOLICITUD ||
                                                                    ' VIVC_TIPO_SALIDA ' ||
                                                                    VIVC_TIPO_SALIDA);

    VAR_CONTADOR := -1;

    IF VIVC_TIPO_SALIDA = 'D' THEN
      SELECT C.ID_REPORTE_DETALLE, C.ID_FORMATO_DETALLE
        INTO VAR_ID_REPORTE, VAR_ID_FORMATO
        FROM TIPO_MENU_CONSOLIDADO C
       WHERE C.ID_TIPO_SOLICITUD = VINU_TIPO_SOLICITUD;
    ELSE
      SELECT C.ID_REPORTE_COMPROBANTE,
             C.ID_FORMATO_COMPROBANTE,
             C.TIPO_TRAMITE
        INTO VAR_ID_REPORTE, VAR_ID_FORMATO, VAR_TIPO_TRAMITE
        FROM TIPO_MENU_CONSOLIDADO C
       WHERE C.ID_TIPO_SOLICITUD = VINU_TIPO_SOLICITUD;
    END IF;

    IF VIVC_TIPO_SALIDA = 'D' THEN

      SOLICITUDPENSION.PCK_CONSOLIDADO_TRAMITES.DETALLE_SELECCION_MODALIDAD(VINU_ID_SOLICITUD,
                                                                            VINU_ID_NUM_CLIENTE,
                                                                            VAR_CURSOR);
      VAR_XML := '<MODALIDAD_PENSION>' || '<Identificacion>' ||
                 '<IdReporte>' || VAR_ID_REPORTE || '</IdReporte>' ||
                 '<IdFormato>' || VAR_ID_FORMATO || '</IdFormato>' ||
                 '</Identificacion>';

      LOOP
        FETCH VAR_CURSOR
          INTO VAR_ID_CLIENTE, 
    VAR_NUM_TRAMITE_PENSION, 
    VAR_ID_PERSONA, 
    VAR_NOMBRE, 
    VAR_DIRECCION, 
    VAR_REGION, 
    VAR_COMUNA, 
    VAR_TELEFONO, 
    VAR_EMAIL, 
    VAR_TIPO_PENSION, 
    VAR_FECHA_SOLICITUD_TRAM, 
    VAR_MODALIDAD_PENSION, 
    VAR_SOL_DEVEG_PENSION, 
    VAR_FECHA_DEVEG_PENSION, 
    VAR_AGENCIA, 
    VAR_NOMBRE_EJECUTIVO, 
    VAR_RUT_EJECUTIVO;

        EXIT WHEN VAR_CURSOR%NOTFOUND;

        IF VAR_CONTADOR = -1 THEN
          VAR_CONTADOR := 0;
        END IF;

        IF VAR_CONTADOR = 0 THEN
          VAR_XML := VAR_XML || '<INFO_AFILIADO>' || '<NOMBRE>' ||
                     VAR_NOMBRE || '</NOMBRE>' || '<RUT>' || VAR_ID_PERSONA ||
                     '</RUT>' || '<DOMICILIO>' || VAR_DIRECCION ||
                     '</DOMICILIO>' || '<COMUNA>' || VAR_COMUNA ||
                     '</COMUNA>' || '<REGION>' || VAR_REGION || '</REGION>' ||
                     '<TELEFONO>' || VAR_TELEFONO || '</TELEFONO>' ||
                     '<EMAIL>' || VAR_EMAIL || '</EMAIL>' ||
                     '</INFO_AFILIADO>' || '<INFO_CAMBIO_MODALIDAD>' ||
                     '<TIPO_PENSION>' || VAR_TIPO_PENSION ||
                     '</TIPO_PENSION>' || '<FECHA_TRAMITE_INICIAL>' ||
                     VAR_FECHA_SOLICITUD_TRAM || '</FECHA_TRAMITE_INICIAL>' ||
                     '<MODALIDAD_PENSION>' || VAR_MODALIDAD_PENSION ||
                     '</MODALIDAD_PENSION                               >' ||
                     '<SOL_DEVEGAMIENTO_PENSION>' || VAR_SOL_DEVEG_PENSION ||
                     '</SOL_DEVEGAMIENTO_PENSION>' ||
                     '<FECHA_DEVEGAMIENTO_PENSION>' ||
                     VAR_FECHA_DEVEG_PENSION ||
                     '</FECHA_DEVEGAMIENTO_PENSION>' ||
                     '</INFO_CAMBIO_MODALIDAD>' || '<EJECUTIVO>' ||
                     '<AGENCIA>' || VAR_AGENCIA || '</AGENCIA>' ||
                     '<NOMBRE_EJECUTIVO>' || VAR_NOMBRE_EJECUTIVO ||
                     '</NOMBRE_EJECUTIVO>' || '<RUT_EJECUTIVO>' ||
                     VAR_RUT_EJECUTIVO || '</RUT_EJECUTIVO>' ||
                     '</EJECUTIVO>';

        END IF;

        VAR_XML := VAR_XML || '<INFO_CUENTA>' || '<CUENTA>' ||
                   'FALTA DESDE EL NEGOCIO' || '</CUENTA>' ||
                   '<FONDO_DESTINO>' || 'FALTA DESDE EL NEGOCIO' ||
                   '</FONDO_DESTINO>' || '<SALDO_UF>' ||
                   'FALTA DESDE EL NEGOCIO' || '</SALDO_UF>' ||
                   '</INFO_CUENTA>';

        VAR_CONTADOR := VAR_CONTADOR + 1;

      END LOOP;
      CLOSE VAR_CURSOR;

      VAR_XML := VAR_XML || '</MODALIDAD_PENSION>';

    ELSE

      VAR_XML := '<COMPROBANTE_RESUMEN>' || '<Identificacion>' ||
                 '<IdReporte>' || VAR_ID_REPORTE || '</IdReporte>' ||
                 '<IdFormato>' || VAR_ID_FORMATO || '</IdFormato>' ||
                 '</Identificacion>';

      SOLICITUDPENSION.PCK_CONSOLIDADO_TRAMITES.DETALLE_SELECCION_MODALIDAD(VINU_ID_SOLICITUD,
                                                                            VINU_ID_NUM_CLIENTE,
                                                                            VAR_CURSOR);

      SOLICITUDES.PCK_CONSOLIDADO_TRAMITES.RESUMEN_SOLICITUD(VINU_ID_SOLICITUD,
                                                             VAR_DESCRIPCION_SOLICITUD,
                                                             VAR_FOLIO,
                                                             VAR_FECHA_SOLICITUD,
                                                             VAR_ESTADO_SOLICITUD,
                                                             VAR_VIA_INGRESO);

      LOOP
        FETCH VAR_CURSOR
          INTO VAR_ID_CLIENTE, 
    VAR_NUM_TRAMITE_PENSION, 
    VAR_ID_PERSONA, 
    VAR_NOMBRE, 
    VAR_DIRECCION, 
    VAR_REGION, 
    VAR_COMUNA, 
    VAR_TELEFONO, 
    VAR_EMAIL, 
    VAR_TIPO_PENSION, 
    VAR_FECHA_SOLICITUD_TRAM, 
    VAR_MODALIDAD_PENSION, 
    VAR_SOL_DEVEG_PENSION, 
    VAR_FECHA_DEVEG_PENSION, 
    VAR_AGENCIA, 
    VAR_NOMBRE_EJECUTIVO, 
    VAR_RUT_EJECUTIVO;

        EXIT WHEN VAR_CURSOR%NOTFOUND;

        IF VAR_CONTADOR = -1 THEN
          VAR_CONTADOR := 0;
        END IF;

        IF VAR_CONTADOR = 0 THEN

          BEGIN

            SELECT TO_CHAR(MP.FEC_SELECCION, 'dd-mm-YYYY')
              INTO VDT_FECHA_SELECCION_MOD
              FROM solicitudpension.modalidad_pension mp,
                   SOLICITUDES.SOLICITUD              S
             where S.ID_SOLICITUD = VINU_ID_SOLICITUD
               AND mp.num_solicitud_pension = S.FOLIO
               and mp.num_modalidad =
                   (SELECT max(mp2.num_modalidad)
                      FROM solicitudpension.modalidad_pension mp2
                     where mp2.num_solicitud_pension =
                           mp.num_solicitud_pension);

          EXCEPTION
            WHEN NO_DATA_FOUND THEN
              VDT_FECHA_SELECCION_MOD := 'No tiene fecha de Selección de Modalidad de Pensión';
          END;

          VAR_XML := VAR_XML || '<COMPROBANTE>' || '<ID_TIPO_TRAMITE>' ||
                     VAR_TIPO_TRAMITE || '</ID_TIPO_TRAMITE>' || '<NOMBRE>' ||
                     VAR_NOMBRE || '</NOMBRE>' || '<RUT>' || VAR_ID_PERSONA ||
                     '</RUT>' || '<DOMICILIO>' || VAR_DIRECCION ||
                     '</DOMICILIO>' || '<REGION>' || VAR_REGION ||
                     '</REGION>' || '<COMUNA>' || VAR_COMUNA || '</COMUNA>' ||
                     '<TELEFONO>' || VAR_TELEFONO || '</TELEFONO>' ||
                     '<EMAIL>' || VAR_EMAIL || '</EMAIL>' ||
                     '<TITULO_COLUMNA>Fecha Selección de Modalidad</TITULO_COLUMNA>' ||
                     '<INFO_COLUMNA>' || VDT_FECHA_SELECCION_MOD ||
                     '</INFO_COLUMNA>' || '<ESTADO>' ||
                     VAR_ESTADO_SOLICITUD || '</ESTADO>' || '<VIA_INGRESO>' ||
                     VAR_VIA_INGRESO || '</VIA_INGRESO>' ||
                     '<FECHA_SOLICITUD>' || VAR_FECHA_SOLICITUD ||
                     '</FECHA_SOLICITUD>' || '<NRO_FOLIO>' || VAR_FOLIO ||
                     '</NRO_FOLIO>' || '<DESCRIPCION_TRAMITE>' ||
                     VAR_DESCRIPCION_SOLICITUD || '</DESCRIPCION_TRAMITE>' ||
                     '</COMPROBANTE>' || '<INFO_MODALIDAD_PENSION>' ||
                     '<TIPO_PENSION>' || VAR_TIPO_PENSION ||
                     '</TIPO_PENSION>' || '<MODALIDAD_PENSION>' ||
                     VAR_MODALIDAD_PENSION || '</MODALIDAD_PENSION>' ||
                     '<FECHA_TRAMITE_INICIAL>' || VAR_FECHA_SOLICITUD_TRAM ||
                     '</FECHA_TRAMITE_INICIAL>' || '<SOL_DEVEG_PENSION>' ||
                     VAR_SOL_DEVEG_PENSION || '</SOL_DEVEG_PENSION>' ||
                     '<FECHA_DEVEG_PENSION>' || VAR_FECHA_DEVEG_PENSION ||
                     '</FECHA_DEVEG_PENSION>' ||
                     '</INFO_MODALIDAD_PENSION>';

        END IF;

        VAR_XML := VAR_XML || '<INFO_CUENTA>' || '<CUENTA>' ||
                   'FALTA PARTE DEL NEGOCIO' || '</CUENTA>' ||
                   '<FONDO_DESTINO>' || 'FALTA PARTE DEL NEGOCIO' ||
                   '</FONDO_DESTINO>' || '<SALDO_UF>' ||
                   'FALTA PARTE DEL NEGOCIO' || '</SALDO_UF>' ||
                   '</INFO_CUENTA>';

        VAR_CONTADOR := VAR_CONTADOR + 1;

      END LOOP;
      CLOSE VAR_CURSOR;

      VAR_XML := VAR_XML || '</COMPROBANTE_RESUMEN>';

    END IF;

    IF VAR_CONTADOR = -1 THEN
      VAR_XML := '';
    END IF;

    OPEN VOCUR_XML FOR
      SELECT VAR_XML AS XML FROM DUAL;

  END TRAMITE_SELECCION_MODALIDAD;

  PROCEDURE TRAMITE_CAMBIO_MODALIDAD(VINU_ID_SOLICITUD   IN NUMBER, -- ID SOLICITUD
                                     VINU_ID_NUM_CLIENTE IN NUMBER, -- ID DEL CLIENTE
                                     VINU_TIPO_SOLICITUD IN NUMBER, -- TIPO SOLICITUD
                                     VIVC_TIPO_SALIDA    IN VARCHAR2, -- R RESUMEN   D DETALLADA
                                     VOCUR_XML           OUT TCURSOR) AS
    VAR_XML      CLOB;
    VAR_CURSOR   TCURSOR;
    VAR_CONTADOR NUMBER;
    -- INFO CAMBIO MODALIDAD
    VAR_ID_PERSONA            VARCHAR(15);
    VAR_NOMBRE                VARCHAR2(80);
    VAR_DIRECCION             VARCHAR2(200);
    VAR_REGION                VARCHAR2(80);
    VAR_COMUNA                VARCHAR2(60);
    VAR_TELEFONO              VARCHAR2(15);
    VAR_EMAIL                 VARCHAR2(80);
    VAR_TIPO_PENSION          VARCHAR2(80);
    VAR_MODALIDAD_PENSION     VARCHAR2(100);
    VAR_FECHA_SELECCION_MOD   VARCHAR2(15);
    VAR_FECHA_TRAMITE_INICIAL VARCHAR2(15);
    VAR_AGENCIA               VARCHAR2(100);
    VAR_NOMBRE_EJECUTIVO      VARCHAR2(100);
    VAR_RUT_EJECUTIVO         VARCHAR2(15);
    -- INFO REPORTE
    VAR_ID_REPORTE   VARCHAR2(4);
    VAR_ID_FORMATO   VARCHAR2(5);
    VAR_TIPO_TRAMITE VARCHAR2(2);
    -- INFO COMPROBANTE
    VAR_DESCRIPCION_SOLICITUD VARCHAR2(200);
    VAR_FOLIO                 VARCHAR2(20);
    VAR_FECHA_SOLICITUD       VARCHAR(12);
    VAR_ESTADO_SOLICITUD      VARCHAR(50);
    VAR_VIA_INGRESO           VARCHAR2(50);
    VDT_FECHA_SELECCION_MOD   VARCHAR2(100);
  BEGIN

    VAR_CONTADOR := -1;

    IF VIVC_TIPO_SALIDA = 'D' THEN
      SELECT C.ID_REPORTE_DETALLE, C.ID_FORMATO_DETALLE
        INTO VAR_ID_REPORTE, VAR_ID_FORMATO
        FROM TIPO_MENU_CONSOLIDADO C
       WHERE C.ID_TIPO_SOLICITUD = VINU_TIPO_SOLICITUD;
    ELSE
      SELECT C.ID_REPORTE_COMPROBANTE,
             C.ID_FORMATO_COMPROBANTE,
             C.TIPO_TRAMITE
        INTO VAR_ID_REPORTE, VAR_ID_FORMATO, VAR_TIPO_TRAMITE
        FROM TIPO_MENU_CONSOLIDADO C
       WHERE C.ID_TIPO_SOLICITUD = VINU_TIPO_SOLICITUD;
    END IF;

    IF VIVC_TIPO_SALIDA = 'D' THEN

      SOLICITUDPENSION.PCK_CONSOLIDADO_TRAMITES.DETALLE_SOLICITUD_CAMBIO_MOD(VINU_ID_SOLICITUD,
                                                                             VINU_ID_NUM_CLIENTE,
                                                                             VAR_CURSOR);
      VAR_XML := '<MODALIDAD_PENSION>' || '<Identificacion>' ||
                 '<IdReporte>' || VAR_ID_REPORTE || '</IdReporte>' ||
                 '<IdFormato>' || VAR_ID_FORMATO || '</IdFormato>' ||
                 '</Identificacion>';

      LOOP
        FETCH VAR_CURSOR
          INTO VAR_ID_PERSONA, 
    VAR_NOMBRE, 
    VAR_DIRECCION, 
    VAR_REGION, 
    VAR_COMUNA, 
    VAR_TELEFONO, 
    VAR_EMAIL, 
    VAR_TIPO_PENSION, 
    VAR_MODALIDAD_PENSION, 
    VAR_FECHA_SELECCION_MOD, 
    VAR_FECHA_TRAMITE_INICIAL, 
    VAR_AGENCIA, 
    VAR_NOMBRE_EJECUTIVO, 
    VAR_RUT_EJECUTIVO;

        EXIT WHEN VAR_CURSOR%NOTFOUND;

        IF VAR_CONTADOR = -1 THEN
          VAR_CONTADOR := 0;
        END IF;

        IF VAR_CONTADOR = 0 THEN
          VAR_XML := VAR_XML || '<INFO_AFILIADO>' || '<NOMBRE>' ||
                     VAR_NOMBRE || '</NOMBRE>' || '<RUT>' || VAR_ID_PERSONA ||
                     '</RUT>' || '<DOMICILIO>' || VAR_DIRECCION ||
                     '</DOMICILIO>' || '<COMUNA>' || VAR_COMUNA ||
                     '</COMUNA>' || '<REGION>' || VAR_REGION || '</REGION>' ||
                     '<TELEFONO>' || VAR_TELEFONO || '</TELEFONO>' ||
                     '<EMAIL>' || VAR_EMAIL || '</EMAIL>' ||
                     '</INFO_AFILIADO>' || '<INFO_CAMBIO_MODALIDAD>' ||
                     '<TIPO_PENSION>' || VAR_TIPO_PENSION ||
                     '</TIPO_PENSION>' || '<MODALIDAD_PENSION>' ||
                     VAR_MODALIDAD_PENSION || '</MODALIDAD_PENSION>' ||
                     '<FECHA_SELECCION_MODALIDAD>' ||
                     VAR_FECHA_SELECCION_MOD ||
                     '</FECHA_SELECCION_MODALIDAD>' ||
                     '<FECHA_TRAMITE_INICIAL>' || VAR_FECHA_TRAMITE_INICIAL ||
                     '</FECHA_TRAMITE_INICIAL>' || '<AGENCIA>' ||
                     VAR_AGENCIA || '</AGENCIA>' || '<NOMBRE_EJECUTIVO>' ||
                     VAR_NOMBRE_EJECUTIVO || '</NOMBRE_EJECUTIVO>' ||
                     '<RUT_EJECUTIVO>' || VAR_RUT_EJECUTIVO ||
                     '</RUT_EJECUTIVO>' || '</INFO_CAMBIO_MODALIDAD>';

        END IF;

        VAR_CONTADOR := VAR_CONTADOR + 1;

      END LOOP;
      CLOSE VAR_CURSOR;

      VAR_XML := VAR_XML || '</MODALIDAD_PENSION>';

    ELSE

      VAR_XML := '<COMPROBANTE_RESUMEN>' || '<Identificacion>' ||
                 '<IdReporte>' || VAR_ID_REPORTE || '</IdReporte>' ||
                 '<IdFormato>' || VAR_ID_FORMATO || '</IdFormato>' ||
                 '</Identificacion>';

      SOLICITUDPENSION.PCK_CONSOLIDADO_TRAMITES.DETALLE_SOLICITUD_CAMBIO_MOD(VINU_ID_SOLICITUD,
                                                                             VINU_ID_NUM_CLIENTE,
                                                                             VAR_CURSOR);

      SOLICITUDES.PCK_CONSOLIDADO_TRAMITES.RESUMEN_SOLICITUD(VINU_ID_SOLICITUD,
                                                             VAR_DESCRIPCION_SOLICITUD,
                                                             VAR_FOLIO,
                                                             VAR_FECHA_SOLICITUD,
                                                             VAR_ESTADO_SOLICITUD,
                                                             VAR_VIA_INGRESO);

      LOOP
        FETCH VAR_CURSOR
          INTO VAR_ID_PERSONA, 
    VAR_NOMBRE, 
    VAR_DIRECCION, 
    VAR_REGION, 
    VAR_COMUNA, 
    VAR_TELEFONO, 
    VAR_EMAIL, 
    VAR_TIPO_PENSION, 
    VAR_MODALIDAD_PENSION, 
    VAR_FECHA_SELECCION_MOD, 
    VAR_FECHA_TRAMITE_INICIAL, 
    VAR_AGENCIA, 
    VAR_NOMBRE_EJECUTIVO, 
    VAR_RUT_EJECUTIVO;

        EXIT WHEN VAR_CURSOR%NOTFOUND;

        IF VAR_CONTADOR = -1 THEN
          VAR_CONTADOR := 0;
        END IF;

        IF VAR_CONTADOR = 0 THEN

          BEGIN

            SELECT TO_CHAR(MP.FEC_SELECCION, 'dd-mm-YYYY')
              INTO VDT_FECHA_SELECCION_MOD
              FROM solicitudpension.modalidad_pension mp,
                   SOLICITUDES.SOLICITUD              S
             where S.ID_SOLICITUD = VINU_ID_SOLICITUD
               AND mp.num_solicitud_pension = S.FOLIO
               and mp.num_modalidad =
                   (SELECT max(mp2.num_modalidad)
                      FROM solicitudpension.modalidad_pension mp2
                     where mp2.num_solicitud_pension =
                           mp.num_solicitud_pension);

          EXCEPTION
            WHEN NO_DATA_FOUND THEN
              VDT_FECHA_SELECCION_MOD := 'No tiene fecha de Selección de Modalidad de Pensión';
          END;

          VAR_XML := VAR_XML || '<COMPROBANTE>' || '<ID_TIPO_TRAMITE>' ||
                     VAR_TIPO_TRAMITE || '</ID_TIPO_TRAMITE>' || '<NOMBRE>' ||
                     VAR_NOMBRE || '</NOMBRE>' || '<RUT>' || VAR_ID_PERSONA ||
                     '</RUT>' || '<DOMICILIO>' || VAR_DIRECCION ||
                     '</DOMICILIO>' || '<REGION>' || VAR_REGION ||
                     '</REGION>' || '<COMUNA>' || VAR_COMUNA || '</COMUNA>' ||
                     '<TELEFONO>' || VAR_TELEFONO || '</TELEFONO>' ||
                     '<EMAIL>' || VAR_EMAIL || '</EMAIL>' ||
                     '<TITULO_COLUMNA>Fecha Selección de Modalidad</TITULO_COLUMNA>' ||
                     '<INFO_COLUMNA>' || VDT_FECHA_SELECCION_MOD ||
                     '</INFO_COLUMNA>' || '<ESTADO>' ||
                     VAR_ESTADO_SOLICITUD || '</ESTADO>' || '<VIA_INGRESO>' ||
                     VAR_VIA_INGRESO || '</VIA_INGRESO>' ||
                     '<FECHA_SOLICITUD>' || VAR_FECHA_SOLICITUD ||
                     '</FECHA_SOLICITUD>' || '<NRO_FOLIO>' || VAR_FOLIO ||
                     '</NRO_FOLIO>' || '<DESCRIPCION_TRAMITE>' ||
                     VAR_DESCRIPCION_SOLICITUD || '</DESCRIPCION_TRAMITE>' ||
                     '</COMPROBANTE>' || '<INFO_MODALIDAD_PENSION>' ||
                     '<TIPO_PENSION>' || VAR_TIPO_PENSION ||
                     '</TIPO_PENSION>' || '<MODALIDAD_PENSION>' ||
                     VAR_MODALIDAD_PENSION || '</MODALIDAD_PENSION>' ||
                     '<FECHA_SELECCION_MODALIDAD>' ||
                     VAR_FECHA_SELECCION_MOD ||
                     '</FECHA_SELECCION_MODALIDAD>' ||
                     '<FECHA_TRAMITE_INICIAL>' || VAR_FECHA_TRAMITE_INICIAL ||
                     '</FECHA_TRAMITE_INICIAL>' ||
                     '</INFO_MODALIDAD_PENSION> ';

        END IF;

        VAR_CONTADOR := VAR_CONTADOR + 1;

      END LOOP;
      CLOSE VAR_CURSOR;

      VAR_XML := VAR_XML || '</COMPROBANTE_RESUMEN>';

    END IF;

    IF VAR_CONTADOR = -1 THEN
      VAR_XML := '';
    END IF;

    OPEN VOCUR_XML FOR
      SELECT VAR_XML AS XML FROM DUAL;

  END TRAMITE_CAMBIO_MODALIDAD;

  PROCEDURE TRAMITE_DESAFILIACION(VINU_ID_SOLICITUD   IN NUMBER, -- ID SOLICITUD
                                  VINU_ID_NUM_CLIENTE IN NUMBER, -- ID DEL CLIENTE
                                  VINU_TIPO_SOLICITUD IN NUMBER, -- TIPO SOLICITUD
                                  VIVC_TIPO_SALIDA    IN VARCHAR2, -- R RESUMEN   D DETALLADA
                                  VOCUR_XML           OUT TCURSOR) AS
    VAR_XML      CLOB;
    VAR_CURSOR   TCURSOR;
    VAR_CONTADOR NUMBER;
    -- INFO SOLICITUD
    VAR_CAUSAL            VARCHAR2(200);
    VAR_CAJA_PREVISIONAL  VARCHAR2(200);
    VAR_FECHA_TRASPASO    VARCHAR2(20);
    VAR_NOMBRE            VARCHAR2(200);
    VAR_ID_PERSONA        VARCHAR2(20);
    VAR_DIRECCION         VARCHAR2(300);
    VAR_REGION            VARCHAR2(200);
    VAR_COMUNA            VARCHAR2(200);
    VAR_TELEFONO          VARCHAR2(30);
    VAR_EMAIL             VARCHAR2(50);
    VAR_FECHA_SOLICITUD_D VARCHAR2(20);

    VAR_CODIGOINSTPREVISION VARCHAR2(20);
    VAR_PERIODODESDE        VARCHAR2(20);
    VAR_PERIODOHASTA        VARCHAR2(20);
    VAR_RUT_EMPLEADOR       VARCHAR2(20);
    VAR_TIPOTRASPASO        VARCHAR2(20);
    VAR_CCOFONDO1           VARCHAR2(10);
    VAR_MONTOTRASPASOFONDO1 VARCHAR2(50);
    VAR_CCOFONDO2           VARCHAR2(10);
    VAR_MONTOTRASPASOFONDO2 VARCHAR2(50);

    VAR_FECHANACIMIENTO   VARCHAR2(20);
    VAR_NOMBREPADRE       VARCHAR2(50);
    VAR_NOMBREMADRE       VARCHAR(50);
    VAR_LUGARNACIMIENTO   VARCHAR(100);
    VAR_FECHAINGRESO      VARCHAR(20);
    VAR_SEXO              VARCHAR(20);
    VAR_TIPODESAFILIACION VARCHAR(10);
    VAR_NUMINSCRIPCION    VARCHAR(50);

    -- INFO REPORTE
    VAR_ID_REPORTE   VARCHAR2(4);
    VAR_ID_FORMATO   VARCHAR2(5);
    VAR_TIPO_TRAMITE VARCHAR2(2);
    -- INFO COMPROBANTE
    VAR_DESCRIPCION_SOLICITUD VARCHAR2(200);
    VAR_FOLIO                 VARCHAR2(20);
    VAR_FECHA_SOLICITUD       VARCHAR(12);
    VAR_ESTADO_SOLICITUD      VARCHAR(50);
    VAR_VIA_INGRESO           VARCHAR2(50);
    VAR_TIPO_CAJA             VARCHAR2(50);
  BEGIN

    VAR_CONTADOR := 0;

    SELECT (SO.DETALLESOLICITUD.EXTRACT('/FormularioTEDesafil/AntecedentesDesafil/CodigoInstPrevision/text()')
           .getstringval()) -- SO.DV_AFECTADO--  .DETALLESOLICITUD.EXTRACT('/FormularioTEDesafil/AntecedentesDesafil/CodigoInstPrevision/text()')
      INTO VAR_TIPO_CAJA
      FROM SOLICITUDES.SOLICITUD SO
     WHERE SO.ID_SOLICITUD = VINU_ID_SOLICITUD;

    IF VAR_TIPO_CAJA = '5025' OR VAR_TIPO_CAJA = '5026' THEN

      IF VIVC_TIPO_SALIDA = 'D' THEN
        SELECT C.ID_REPORTE_DETALLE, C.ID_FORMATO_DETALLE
          INTO VAR_ID_REPORTE, VAR_ID_FORMATO
          FROM TIPO_MENU_CONSOLIDADO C
         WHERE C.ID_TIPO_SOLICITUD = VINU_TIPO_SOLICITUD
           AND C.ID_REPORTE_DETALLE = 796;
      ELSE
        SELECT C.ID_REPORTE_COMPROBANTE,
               C.ID_FORMATO_COMPROBANTE,
               C.TIPO_TRAMITE
          INTO VAR_ID_REPORTE, VAR_ID_FORMATO, VAR_TIPO_TRAMITE
          FROM TIPO_MENU_CONSOLIDADO C
         WHERE C.ID_TIPO_SOLICITUD = VINU_TIPO_SOLICITUD
           AND C.ID_REPORTE_DETALLE = 796;
      END IF;

      IF VIVC_TIPO_SALIDA = 'D' THEN

        SOLICITUDES.PCK_CONSOLIDADO_TRAMITES.DETALLE_SOL_DIPRECA_CAPREDENA(VINU_ID_SOLICITUD,
                                                                           VINU_ID_NUM_CLIENTE,
                                                                           VAR_CURSOR);

        LOOP
          FETCH VAR_CURSOR
            INTO VAR_CAUSAL, VAR_CAJA_PREVISIONAL, VAR_FECHA_TRASPASO;

          EXIT WHEN VAR_CURSOR%NOTFOUND;

          VAR_XML := '<SOL_DIPRECA_CAPRE>' || '<Identificacion>' ||
                     '<IdReporte>' || VAR_ID_REPORTE || '</IdReporte>' ||
                     '<IdFormato>' || VAR_ID_FORMATO || '</IdFormato>' ||
                     '</Identificacion>' || '<TRASPASO>' || '<CAUSAL>' ||
                     VAR_CAUSAL || '</CAUSAL>' || '<CAJA_PREVISIONAL>' ||
                     VAR_CAJA_PREVISIONAL || '</CAJA_PREVISIONAL>' ||
                     '</TRASPASO>';

        END LOOP;
        CLOSE VAR_CURSOR;

        VAR_XML := VAR_XML || '</SOL_DIPRECA_CAPRE>';

      ELSE

        VAR_XML := '<COMPROBANTE_RESUMEN>' || '<Identificacion>' ||
                   '<IdReporte>' || VAR_ID_REPORTE || '</IdReporte>' ||
                   '<IdFormato>' || VAR_ID_FORMATO || '</IdFormato>' ||
                   '</Identificacion>';

        SOLICITUDES.PCK_CONSOLIDADO_TRAMITES.DETALLE_SOL_DIPRECA_CAPREDENA(VINU_ID_SOLICITUD,
                                                                           VINU_ID_NUM_CLIENTE,
                                                                           VAR_CURSOR);

        SOLICITUDES.PCK_CONSOLIDADO_TRAMITES.RESUMEN_SOLICITUD(VINU_ID_SOLICITUD,
                                                               VAR_DESCRIPCION_SOLICITUD,
                                                               VAR_FOLIO,
                                                               VAR_FECHA_SOLICITUD,
                                                               VAR_ESTADO_SOLICITUD,
                                                               VAR_VIA_INGRESO);

        LOOP
          FETCH VAR_CURSOR
            INTO VAR_CAUSAL, VAR_CAJA_PREVISIONAL, VAR_FECHA_TRASPASO;

          EXIT WHEN VAR_CURSOR%NOTFOUND;

          IF VAR_CONTADOR = 0 THEN

            VAR_XML := VAR_XML || '<COMPROBANTE>' || '<ID_TIPO_TRAMITE>' ||
                       VAR_TIPO_TRAMITE || '</ID_TIPO_TRAMITE>' ||
                       '<TITULO_COLUMNA>Fecha del Traspaso</TITULO_COLUMNA>' ||
                       '<INFO_COLUMNA>' || VAR_FECHA_TRASPASO ||
                       '</INFO_COLUMNA>' || '<ESTADO>' ||
                       VAR_ESTADO_SOLICITUD || '</ESTADO>' ||
                       '<VIA_INGRESO>' || VAR_VIA_INGRESO ||
                       '</VIA_INGRESO>' || '<FECHA_SOLICITUD>' ||
                       VAR_FECHA_SOLICITUD || '</FECHA_SOLICITUD>' ||
                       '<NRO_FOLIO>' || VAR_FOLIO || '</NRO_FOLIO>' ||
                       '<DESCRIPCION_TRAMITE>' || VAR_DESCRIPCION_SOLICITUD ||
                       '</DESCRIPCION_TRAMITE>' || '</COMPROBANTE>' ||
                       '<DESAFILIACION>' || '<CAUSAL>' || VAR_CAUSAL ||
                       '</CAUSAL>' || '<CAJA_PREVISIONAL>' ||
                       VAR_CAJA_PREVISIONAL || '</CAJA_PREVISIONAL>' ||
                       '</DESAFILIACION>';

          END IF;

          VAR_CONTADOR := VAR_CONTADOR + 1;

        END LOOP;
        VAR_XML := VAR_XML || '</COMPROBANTE_RESUMEN>';
        CLOSE VAR_CURSOR;

      END IF;

    ELSE

      IF VIVC_TIPO_SALIDA = 'D' THEN
        SELECT C.ID_REPORTE_DETALLE, C.ID_FORMATO_DETALLE
          INTO VAR_ID_REPORTE, VAR_ID_FORMATO
          FROM TIPO_MENU_CONSOLIDADO C
         WHERE C.ID_TIPO_SOLICITUD = VINU_TIPO_SOLICITUD
           AND C.ID_REPORTE_DETALLE = 804;
      ELSE
        SELECT C.ID_REPORTE_COMPROBANTE,
               C.ID_FORMATO_COMPROBANTE,
               C.TIPO_TRAMITE
          INTO VAR_ID_REPORTE, VAR_ID_FORMATO, VAR_TIPO_TRAMITE
          FROM TIPO_MENU_CONSOLIDADO C
         WHERE C.ID_TIPO_SOLICITUD = VINU_TIPO_SOLICITUD
           AND C.ID_REPORTE_DETALLE = 804;
      END IF;

      IF VIVC_TIPO_SALIDA = 'D' THEN

        SOLICITUDES.PCK_CONSOLIDADO_TRAMITES.DETALLE_SOL_DESAFILIACION(VINU_ID_SOLICITUD,
                                                                       VINU_ID_NUM_CLIENTE,
                                                                       VAR_CURSOR);

        LOOP
          FETCH VAR_CURSOR
            INTO VAR_NOMBRE, 
      VAR_ID_PERSONA, 
      VAR_DIRECCION, 
      VAR_REGION, 
      VAR_COMUNA, 
      VAR_TELEFONO, 
      VAR_EMAIL, 
      VAR_CAUSAL, 
      VAR_CAJA_PREVISIONAL, 
      VAR_FECHA_SOLICITUD_D, 
      VAR_CODIGOINSTPREVISION, 
      VAR_PERIODODESDE, 
      VAR_PERIODOHASTA, 
      VAR_RUT_EMPLEADOR, 
      VAR_TIPOTRASPASO, 
      VAR_CCOFONDO1, 
      VAR_MONTOTRASPASOFONDO1, 
      VAR_CCOFONDO2, 
      VAR_MONTOTRASPASOFONDO2, 
      VAR_FECHANACIMIENTO, 
      VAR_NOMBREPADRE, 
      VAR_NOMBREMADRE, 
      VAR_LUGARNACIMIENTO, 
      VAR_FECHAINGRESO, 
      VAR_SEXO, 
      VAR_TIPODESAFILIACION, 
      VAR_NUMINSCRIPCION;

          EXIT WHEN VAR_CURSOR%NOTFOUND;

          VAR_XML := '<SOL_DESAFILIACION>' || '<Identificacion>' ||
                     '<IdReporte>' || VAR_ID_REPORTE || '</IdReporte>' ||
                     '<IdFormato>' || VAR_ID_FORMATO || '</IdFormato>' ||
                     '</Identificacion>' || '<TRASPASO>' || '<CAUSAL>' ||
                     VAR_CAUSAL || '</CAUSAL>' || '<CAJA_PREVISIONAL>' ||
                     VAR_CAJA_PREVISIONAL || '</CAJA_PREVISIONAL>' ||
                     '</TRASPASO>';

        END LOOP;
        CLOSE VAR_CURSOR;

        VAR_XML := VAR_XML || '</SOL_DESAFILIACION>';

      ELSE
        VAR_XML := '<COMPROBANTE_RESUMEN>' || '<Identificacion>' ||
                   '<IdReporte>' || VAR_ID_REPORTE || '</IdReporte>' ||
                   '<IdFormato>' || VAR_ID_FORMATO || '</IdFormato>' ||
                   '</Identificacion>';

        SOLICITUDES.PCK_CONSOLIDADO_TRAMITES.DETALLE_SOL_DESAFILIACION(VINU_ID_SOLICITUD,
                                                                       VINU_ID_NUM_CLIENTE,
                                                                       VAR_CURSOR);

        SOLICITUDES.PCK_CONSOLIDADO_TRAMITES.RESUMEN_SOLICITUD(VINU_ID_SOLICITUD,
                                                               VAR_DESCRIPCION_SOLICITUD,
                                                               VAR_FOLIO,
                                                               VAR_FECHA_SOLICITUD,
                                                               VAR_ESTADO_SOLICITUD,
                                                               VAR_VIA_INGRESO);

        LOOP
          FETCH VAR_CURSOR
            INTO VAR_NOMBRE, 
      VAR_ID_PERSONA, 
      VAR_DIRECCION, 
      VAR_REGION, 
      VAR_COMUNA, 
      VAR_TELEFONO, 
      VAR_EMAIL, 
      VAR_CAUSAL, 
      VAR_CAJA_PREVISIONAL, 
      VAR_FECHA_SOLICITUD_D, 
      VAR_CODIGOINSTPREVISION, 
      VAR_PERIODODESDE, 
      VAR_PERIODOHASTA, 
      VAR_RUT_EMPLEADOR, 
      VAR_TIPOTRASPASO, 
      VAR_CCOFONDO1, 
      VAR_MONTOTRASPASOFONDO1, 
      VAR_CCOFONDO2, 
      VAR_MONTOTRASPASOFONDO2, 
      VAR_FECHANACIMIENTO, 
      VAR_NOMBREPADRE, 
      VAR_NOMBREMADRE, 
      VAR_LUGARNACIMIENTO, 
      VAR_FECHAINGRESO, 
      VAR_SEXO, 
                 VAR_TIPODESAFILIACION,
                 VAR_NUMINSCRIPCION;

          EXIT WHEN VAR_CURSOR%NOTFOUND;

          IF VAR_CONTADOR = 0 THEN
            VAR_XML := VAR_XML || '<COMPROBANTE>' || '<ID_TIPO_TRAMITE>' ||
                       VAR_TIPO_TRAMITE || '</ID_TIPO_TRAMITE>' ||
                       '<NOMBRE>' || VAR_NOMBRE || '</NOMBRE>' || '<RUT>' ||
                       VAR_ID_PERSONA || '</RUT>' || '<DOMICILIO>' ||
                       VAR_DIRECCION || '</DOMICILIO>' || '<REGION>' ||
                       VAR_REGION || '</REGION>' || '<COMUNA>' ||
                       VAR_COMUNA || '</COMUNA>' || '<TELEFONO>' ||
                       VAR_TELEFONO || '</TELEFONO>' || '<EMAIL>' ||
                       VAR_EMAIL || '</EMAIL>' ||
                       '<TITULO_COLUMNA>Fecha Solicitud</TITULO_COLUMNA>' ||
                       '<INFO_COLUMNA>' || VAR_FECHA_SOLICITUD ||
                       '</INFO_COLUMNA>' || '<ESTADO>' ||
                       VAR_ESTADO_SOLICITUD || '</ESTADO>' ||
                       '<VIA_INGRESO>' || VAR_VIA_INGRESO ||
                       '</VIA_INGRESO>' || '<FECHA_SOLICITUD>' ||
                       VAR_FECHA_SOLICITUD || '</FECHA_SOLICITUD>' ||
                       '<NRO_FOLIO>' || VAR_FOLIO || '</NRO_FOLIO>' ||
                       '<DESCRIPCION_TRAMITE>' || VAR_DESCRIPCION_SOLICITUD ||
                       '</DESCRIPCION_TRAMITE>' || '</COMPROBANTE>' ||
                       '<INFO_DESAFILIACION>' || '<CAUSAL>' || VAR_CAUSAL ||
                       '</CAUSAL>' || '<CAJA_PREVISIONAL>' ||
                       VAR_CAJA_PREVISIONAL || '</CAJA_PREVISIONAL>' ||
                         '<CODIGOINSTPREVISION>' || VAR_CODIGOINSTPREVISION || '</CODIGOINSTPREVISION>' ||
                       '<PERIODODESDE>' || VAR_PERIODODESDE || '</PERIODODESDE>' ||
                       '<PERIODOHASTA>' || VAR_PERIODOHASTA || '</PERIODOHASTA>' ||
                       '<RUTEMPLEADOR>' || VAR_RUT_EMPLEADOR || '</RUTEMPLEADOR>' ||
                       '<TIPOTRASPASO>' || VAR_TIPOTRASPASO || '</TIPOTRASPASO>' ||
                       '<CCOFONDO1>' || VAR_CCOFONDO1 || '</CCOFONDO1>' ||
                       '<MONTOTRASPASOFONDO1>' || VAR_MONTOTRASPASOFONDO1 || '</MONTOTRASPASOFONDO1>' ||
                       '<CCOFONDO2>' || VAR_CCOFONDO2 || '</CCOFONDO2>' ||
                       '<MONTOTRASPASOFONDO2>' || VAR_MONTOTRASPASOFONDO2 || '</MONTOTRASPASOFONDO2>' ||
                       '<FECHA_NACIMIENTO>' || VAR_FECHANACIMIENTO || '</FECHA_NACIMIENTO>' ||
                       '<NOMBRE_PADRE>' || VAR_NOMBREPADRE || '</NOMBRE_PADRE>' ||
                       '<NOMBRE_MADRE>' || VAR_NOMBREMADRE || '</NOMBRE_MADRE>' ||
                       '<LUGAR_NACIMIENTO>' || VAR_LUGARNACIMIENTO || '</LUGAR_NACIMIENTO>' ||
                       '<FECHA_INGRESO>' || VAR_FECHAINGRESO || '</FECHA_INGRESO>' ||
                       '<SEXO>' || VAR_SEXO || '</SEXO>' ||
                       '<TIPO_DESAFILIACION>' || VAR_TIPODESAFILIACION || '</TIPO_DESAFILIACION>' ||
                       '<NUM_INSCRIPCION>' || VAR_NUMINSCRIPCION || '</NUM_INSCRIPCION>' ||
                       '</INFO_DESAFILIACION>';

            /*          VAR_FECHANACIMIENTO,
            VAR_NOMBREPADRE,
            VAR_NOMBREMADRE,
            VAR_LUGARNACIMIENTO,
            VAR_FECHAINGRESO,
            VAR_SEXO,
            VAR_TIPODESAFILIACION,
            VAR_NUMINSCRIPCION;*/

          END IF;

          VAR_CONTADOR := VAR_CONTADOR + 1;

        END LOOP;
        CLOSE VAR_CURSOR;

        VAR_XML := VAR_XML || '</COMPROBANTE_RESUMEN>';

      END IF;

    END IF;

    OPEN VOCUR_XML FOR
      SELECT VAR_XML AS XML FROM DUAL;

  END TRAMITE_DESAFILIACION;

  PROCEDURE TRAMITE_DECISION_MODALIDAD(VINU_ID_SOLICITUD   IN NUMBER, -- ID SOLICITUD
                                       VINU_ID_NUM_CLIENTE IN NUMBER, -- ID DEL CLIENTE
                                       VINU_TIPO_SOLICITUD IN NUMBER, -- TIPO SOLICITUD
                                       VIVC_TIPO_SALIDA    IN VARCHAR2, -- R RESUMEN   D DETALLADA
                                       VOCUR_XML           OUT TCURSOR) AS
    VAR_XML      CLOB;
    VAR_CURSOR   TCURSOR;
    VAR_CONTADOR NUMBER;
    -- INFO DECISION MODALIDAD
    VAR_ID_PERSONA            VARCHAR(15);
    VAR_NOMBRE                VARCHAR2(80);
    VAR_DIRECCION             VARCHAR2(200);
    VAR_REGION                VARCHAR2(80);
    VAR_COMUNA                VARCHAR2(60);
    VAR_TELEFONO              VARCHAR2(15);
    VAR_EMAIL                 VARCHAR2(80);
    VAR_TIPO_PENSION          VARCHAR2(80);
    VAR_FECHA_INICIAL_TRAMITE VARCHAR2(12);
    VAR_FECHA_SELECCION_MOD   VARCHAR2(15);
    VAR_MODALIDAD_PENSION_ACT VARCHAR2(100);
    VAR_MODALIDAD_PENSION_NEW VARCHAR2(100);
    VAR_FECHA_VENCIMIENTO     VARCHAR2(12);
    VAR_MONTO_NUEVA_PENSION   VARCHAR2(10);
    VAR_AGENCIA               VARCHAR2(100);
    VAR_NOMBRE_EJECUTIVO      VARCHAR2(100);
    VAR_RUT_EJECUTIVO         VARCHAR2(15);
    -- INFO REPORTE
    VAR_ID_REPORTE   VARCHAR2(4);
    VAR_ID_FORMATO   VARCHAR2(5);
    VAR_TIPO_TRAMITE VARCHAR2(2);
    -- INFO COMPROBANTE
    VAR_DESCRIPCION_SOLICITUD VARCHAR2(200);
    VAR_FOLIO                 VARCHAR2(20);
    VAR_FECHA_SOLICITUD       VARCHAR(12);
    VAR_ESTADO_SOLICITUD      VARCHAR(50);
    VAR_VIA_INGRESO           VARCHAR2(50);
    VDT_FECHA_SELECCION_MOD   VARCHAR2(100);
  BEGIN

    VAR_CONTADOR := -1;

    IF VIVC_TIPO_SALIDA = 'D' THEN
      SELECT C.ID_REPORTE_DETALLE, C.ID_FORMATO_DETALLE
        INTO VAR_ID_REPORTE, VAR_ID_FORMATO
        FROM TIPO_MENU_CONSOLIDADO C
       WHERE C.ID_TIPO_SOLICITUD = VINU_TIPO_SOLICITUD;
    ELSE
      SELECT C.ID_REPORTE_COMPROBANTE,
             C.ID_FORMATO_COMPROBANTE,
             C.TIPO_TRAMITE
        INTO VAR_ID_REPORTE, VAR_ID_FORMATO, VAR_TIPO_TRAMITE
        FROM TIPO_MENU_CONSOLIDADO C
       WHERE C.ID_TIPO_SOLICITUD = VINU_TIPO_SOLICITUD;
    END IF;

    IF VIVC_TIPO_SALIDA = 'D' THEN

      SOLICITUDPENSION.PCK_CONSOLIDADO_TRAMITES.DETALLE_DECISION_CAMBIO_MOD(VINU_ID_SOLICITUD,
                                                                            VINU_ID_NUM_CLIENTE,
                                                                            VAR_CURSOR);
      VAR_XML := '<MODALIDAD_PENSION>' || '<Identificacion>' ||
                 '<IdReporte>' || VAR_ID_REPORTE || '</IdReporte>' ||
                 '<IdFormato>' || VAR_ID_FORMATO || '</IdFormato>' ||
                 '</Identificacion>';

      LOOP
        FETCH VAR_CURSOR
          INTO VAR_ID_PERSONA,
               VAR_NOMBRE,
               VAR_DIRECCION,
               VAR_REGION,
               VAR_COMUNA,
               VAR_TELEFONO,
               VAR_EMAIL,
               VAR_TIPO_PENSION,
               VAR_FECHA_INICIAL_TRAMITE,
               VAR_FECHA_SELECCION_MOD,
               VAR_MODALIDAD_PENSION_ACT,
               VAR_MODALIDAD_PENSION_NEW,
               VAR_FECHA_VENCIMIENTO,
               VAR_MONTO_NUEVA_PENSION,
               VAR_AGENCIA,
               VAR_NOMBRE_EJECUTIVO,
               VAR_RUT_EJECUTIVO;

        EXIT WHEN VAR_CURSOR%NOTFOUND;

        IF VAR_CONTADOR = -1 THEN
          VAR_CONTADOR := 0;
        END IF;

        IF VAR_CONTADOR = 0 THEN
          VAR_XML := VAR_XML || '<INFO_AFILIADO>' || '<NOMBRE>' ||
                     VAR_NOMBRE || '</NOMBRE>' || '<RUT>' || VAR_ID_PERSONA ||
                     '</RUT>' || '<DOMICILIO>' || VAR_DIRECCION ||
                     '</DOMICILIO>' || '<COMUNA>' || VAR_COMUNA ||
                     '</COMUNA>' || '<REGION>' || VAR_REGION || '</REGION>' ||
                     '<TELEFONO>' || VAR_TELEFONO || '</TELEFONO>' ||
                     '<EMAIL>' || VAR_EMAIL || '</EMAIL>' ||
                     '</INFO_AFILIADO>' || '<INFO_DECISION_MODALIDAD>' ||
                     '<TIPO_PENSION>' || VAR_TIPO_PENSION ||
                     '</TIPO_PENSION>' || '<FECHA_SOLICITUD_PENSION>' ||
                     'FALTA DESDE EL NEGOCIO' ||
                     '</FECHA_SOLICITUD_PENSION>' ||
                     '<FECHA_SOL_CAMBIO_MODALIDAD>' ||
                     VAR_FECHA_SELECCION_MOD ||
                     '</FECHA_SOL_CAMBIO_MODALIDAD>' ||
                     '<MODALIDAD_PENSION_ACTUAL>' ||
                     VAR_MODALIDAD_PENSION_ACT ||
                     '</MODALIDAD_PENSION_ACTUAL>' ||
                     '<MODALIDAD_PENSION_NUEVA>' ||
                     VAR_MODALIDAD_PENSION_NEW ||
                     '</MODALIDAD_PENSION_NUEVA>' ||
                     '<FECHA_VIGENCIA_CERT_SALDO>' || VAR_FECHA_VENCIMIENTO ||
                     '</FECHA_VIGENCIA_CERT_SALDO>' ||
                     '<MONTO_NUEVA_PENSION>' || VAR_MONTO_NUEVA_PENSION ||
                     '</MONTO_NUEVA_PENSION>' ||
                     '</INFO_DECISION_MODALIDAD>' || '<INFO_RESP_AFP>' ||
                     '<AGENCIA>' || VAR_AGENCIA || '</AGENCIA>' ||
                     '<NOMBRE_EJECUTIVO>' || VAR_NOMBRE_EJECUTIVO ||
                     '</NOMBRE_EJECUTIVO>' || '<RUT_EJECUTIVO>' ||
                     VAR_RUT_EJECUTIVO || '</RUT_EJECUTIVO>' ||
                     '</INFO_RESP_AFP>';

        END IF;

        VAR_CONTADOR := VAR_CONTADOR + 1;

      END LOOP;
      CLOSE VAR_CURSOR;

      VAR_XML := VAR_XML || '</MODALIDAD_PENSION>';

    ELSE

      VAR_XML := '<COMPROBANTE_RESUMEN>' || '<Identificacion>' ||
                 '<IdReporte>' || VAR_ID_REPORTE || '</IdReporte>' ||
                 '<IdFormato>' || VAR_ID_FORMATO || '</IdFormato>' ||
                 '</Identificacion>';

      SOLICITUDPENSION.PCK_CONSOLIDADO_TRAMITES.DETALLE_DECISION_CAMBIO_MOD(VINU_ID_SOLICITUD,
                                                                            VINU_ID_NUM_CLIENTE,
                                                                            VAR_CURSOR);

      SOLICITUDES.PCK_CONSOLIDADO_TRAMITES.RESUMEN_SOLICITUD(VINU_ID_SOLICITUD,
                                                             VAR_DESCRIPCION_SOLICITUD,
                                                             VAR_FOLIO,
                                                             VAR_FECHA_SOLICITUD,
                                                             VAR_ESTADO_SOLICITUD,
                                                             VAR_VIA_INGRESO);

      LOOP
        FETCH VAR_CURSOR
          INTO VAR_ID_PERSONA,
               VAR_NOMBRE,
               VAR_DIRECCION,
               VAR_REGION,
               VAR_COMUNA,
               VAR_TELEFONO,
               VAR_EMAIL,
               VAR_TIPO_PENSION,
               VAR_FECHA_INICIAL_TRAMITE,
               VAR_FECHA_SELECCION_MOD,
               VAR_MODALIDAD_PENSION_ACT,
               VAR_MODALIDAD_PENSION_NEW,
               VAR_FECHA_VENCIMIENTO,
               VAR_MONTO_NUEVA_PENSION,
               VAR_AGENCIA,
               VAR_NOMBRE_EJECUTIVO,
               VAR_RUT_EJECUTIVO;

        EXIT WHEN VAR_CURSOR%NOTFOUND;

        IF VAR_CONTADOR = -1 THEN
          VAR_CONTADOR := 0;
        END IF;

        IF VAR_CONTADOR = 0 THEN

          BEGIN

            SELECT TO_CHAR(MP.FEC_SELECCION, 'dd-mm-YYYY')
              INTO VDT_FECHA_SELECCION_MOD
              FROM solicitudpension.modalidad_pension mp,
                   SOLICITUDES.SOLICITUD              S
             where S.ID_SOLICITUD = VINU_ID_SOLICITUD
               AND mp.num_solicitud_pension = S.FOLIO
               and mp.num_modalidad =
                   (SELECT max(mp2.num_modalidad)
                      FROM solicitudpension.modalidad_pension mp2
                     where mp2.num_solicitud_pension =
                           mp.num_solicitud_pension);

          EXCEPTION
            WHEN NO_DATA_FOUND THEN
              VDT_FECHA_SELECCION_MOD := 'No tiene fecha de Selección de Modalidad de Pensión';
          END;

          VAR_XML := VAR_XML || '<COMPROBANTE>' || '<ID_TIPO_TRAMITE>' ||
                     VAR_TIPO_TRAMITE || '</ID_TIPO_TRAMITE>' || '<NOMBRE>' ||
                     VAR_NOMBRE || '</NOMBRE>' || '<RUT>' || VAR_ID_PERSONA ||
                     '</RUT>' || '<DOMICILIO>' || VAR_DIRECCION ||
                     '</DOMICILIO>' || '<REGION>' || VAR_REGION ||
                     '</REGION>' || '<COMUNA>' || VAR_COMUNA || '</COMUNA>' ||
                     '<TELEFONO>' || VAR_TELEFONO || '</TELEFONO>' ||
                     '<EMAIL>' || VAR_EMAIL || '</EMAIL>' ||
                     '<TITULO_COLUMNA>Fecha Selección de Modalidad</TITULO_COLUMNA>' ||
                     '<INFO_COLUMNA>' || VDT_FECHA_SELECCION_MOD ||
                     '</INFO_COLUMNA>' || '<ESTADO>' ||
                     VAR_ESTADO_SOLICITUD || '</ESTADO>' || '<VIA_INGRESO>' ||
                     VAR_VIA_INGRESO || '</VIA_INGRESO>' ||
                     '<FECHA_SOLICITUD>' || VAR_FECHA_SOLICITUD ||
                     '</FECHA_SOLICITUD>' || '<NRO_FOLIO>' || VAR_FOLIO ||
                     '</NRO_FOLIO>' || '<DESCRIPCION_TRAMITE>' ||
                     VAR_DESCRIPCION_SOLICITUD || '</DESCRIPCION_TRAMITE>' ||
                     '</COMPROBANTE>' || '<INFO_DECISION_MODALIDAD>' ||
                     '<TIPO_PENSION>' || VAR_TIPO_PENSION ||
                     '</TIPO_PENSION>' || '<FECHA_SOLICITUD_PENSION>' ||
                     VAR_FECHA_INICIAL_TRAMITE ||
                     '</FECHA_SOLICITUD_PENSION>' ||
                     '<FECHA_SOL_CAMBIO_MODALIDAD>' ||
                     VAR_FECHA_SELECCION_MOD ||
                     '</FECHA_SOL_CAMBIO_MODALIDAD>' ||
                     '<MODALIDAD_PENSION_ACTUAL>' ||
                     VAR_MODALIDAD_PENSION_ACT ||
                     '</MODALIDAD_PENSION_ACTUAL>' ||
                     '<MODALIDAD_PENSION_NUEVA>' ||
                     VAR_MODALIDAD_PENSION_NEW ||
                     '</MODALIDAD_PENSION_NUEVA>' ||
                     '<FECHA_VIG_CERT_SALDO>' || VAR_FECHA_VENCIMIENTO ||
                     '</FECHA_VIG_CERT_SALDO>' || '<MONTO_NUEVA_PENSION>' ||
                     VAR_MONTO_NUEVA_PENSION || '</MONTO_NUEVA_PENSION>' ||
                     '</INFO_DECISION_MODALIDAD>';

        END IF;

        VAR_CONTADOR := VAR_CONTADOR + 1;

      END LOOP;
      CLOSE VAR_CURSOR;

      VAR_XML := VAR_XML || '</COMPROBANTE_RESUMEN>';

    END IF;

    IF VAR_CONTADOR = -1 THEN
      VAR_XML := '';
    END IF;

    OPEN VOCUR_XML FOR
      SELECT VAR_XML AS XML FROM DUAL;

  END TRAMITE_DECISION_MODALIDAD;

  PROCEDURE TRAMITE_APV_IN(VINU_ID_SOLICITUD   IN NUMBER, -- ID SOLICITUD
                           VINU_ID_NUM_CLIENTE IN NUMBER, -- ID DEL CLIENTE
                           VINU_TIPO_SOLICITUD IN NUMBER, -- TIPO SOLICITUD
                           VIVC_TIPO_SALIDA    IN VARCHAR2, -- R RESUMEN   D DETALLADA
                           VOCUR_XML           OUT TCURSOR) AS
    VAR_XML                   CLOB;
    VAR_CURSOR                TCURSOR;
    VAR_CONTADOR              NUMBER;
    VAR_DESCRIPCION_SOLICITUD VARCHAR2(200);
    VAR_FOLIO                 VARCHAR2(20);
    VAR_FECHA_SOLICITUD       VARCHAR2(12);
    VAR_ESTADO_SOLICITUD      VARCHAR2(50);
    VAR_VIA_INGRESO           VARCHAR2(50);
    -- INFO REPORTE
    VAR_ID_REPORTE   VARCHAR2(4);
    VAR_ID_FORMATO   VARCHAR2(5);
    VAR_TIPO_TRAMITE VARCHAR2(2);
    -- INFO AFILIADO
    VAR_NOMBRE     VARCHAR2(80);
    VAR_ID_PERSONA VARCHAR2(15);
    VAR_DIRECCION  VARCHAR2(200);
    VAR_REGION     VARCHAR2(80);
    VAR_COMUNA     VARCHAR2(60);
    VAR_TELEFONO   VARCHAR2(15);
    VAR_EMAIL      VARCHAR2(80);
    -- INFO TRANSFERENCIA
    VAR_NOM_INSTITUCION VARCHAR2(200); --ojo VARCHAR2(50);
    VAR_RUT_INSTITUCION VARCHAR2(50);
    VAR_PRODUCTO        VARCHAR2(20);
    VAR_CUOTAS          VARCHAR2(20);
    VAR_MONTOS          VARCHAR2(20);
    VAR_FONDO_ORIGEN1   VARCHAR2(20);
    VAR_FONDO_DESTINO_1 VARCHAR2(20);
    VAR_FONDO_ORIGEN_2  VARCHAR2(20);
    VAR_FONDO_DESTINO_2 VARCHAR2(20);
    VAR_FECHA_TRASPASO  VARCHAR2(20);

  BEGIN

    VAR_CONTADOR := 0;

    IF VIVC_TIPO_SALIDA = 'D' THEN
      SELECT C.ID_REPORTE_DETALLE, C.ID_FORMATO_DETALLE
        INTO VAR_ID_REPORTE, VAR_ID_FORMATO
        FROM TIPO_MENU_CONSOLIDADO C
       WHERE C.ID_TIPO_SOLICITUD = VINU_TIPO_SOLICITUD;
    ELSE
      SELECT C.ID_REPORTE_COMPROBANTE,
             C.ID_FORMATO_COMPROBANTE,
             C.TIPO_TRAMITE
        INTO VAR_ID_REPORTE, VAR_ID_FORMATO, VAR_TIPO_TRAMITE
        FROM TIPO_MENU_CONSOLIDADO C
       WHERE C.ID_TIPO_SOLICITUD = VINU_TIPO_SOLICITUD;
    END IF;

    IF VIVC_TIPO_SALIDA = 'D' THEN

      SOLICITUDES.PCK_CONSOLIDADO_TRAMITES.DETALLE_SAPV_IN(VINU_ID_SOLICITUD,
                                                           VINU_ID_NUM_CLIENTE,
                                                           VAR_CURSOR);
      VAR_XML := '<APV_IN>' || '<Identificacion>' || '<IdReporte>' ||
                 VAR_ID_REPORTE || '</IdReporte>' || '<IdFormato>' ||
                 VAR_ID_FORMATO || '</IdFormato>' || '</Identificacion>';

      LOOP
        FETCH VAR_CURSOR
          INTO VAR_NOMBRE, 
    VAR_ID_PERSONA, 
    VAR_DIRECCION, 
    VAR_REGION, 
    VAR_COMUNA, 
    VAR_TELEFONO, 
    VAR_EMAIL, 
    VAR_NOM_INSTITUCION, 
    VAR_RUT_INSTITUCION, 
    VAR_PRODUCTO, 
    VAR_CUOTAS, 
    VAR_MONTOS, 
    VAR_FONDO_ORIGEN1, 
    VAR_FONDO_DESTINO_1, 
    VAR_FONDO_ORIGEN_2, 
    VAR_FONDO_DESTINO_2, 
    VAR_FECHA_TRASPASO;

        EXIT WHEN VAR_CURSOR%NOTFOUND;

        IF VAR_CONTADOR = 0 THEN
          VAR_XML := VAR_XML || '<INFO_AFILIADO>' || '<NOMBRE>' ||
                     VAR_NOMBRE || '</NOMBRE>' || '<RUT>' || VAR_ID_PERSONA ||
                     '</RUT>' || '<DIRECCION>' || VAR_DIRECCION ||
                     '</DIRECCION>' || '<REGION>' || VAR_REGION ||
                     '</REGION>' || '<COMUNA>' || VAR_COMUNA || '</COMUNA>' ||
                     '<TELEFONO>' || VAR_TELEFONO || '</TELEFONO>' ||
                     '<EMAIL>' || VAR_EMAIL || '</EMAIL>' ||
                     '</INFO_AFILIADO>' || '<INFO_INSTITUCION>' ||
                     '<COD_INSTITUCION_TRANSFERENCIA>' ||
                     VAR_NOM_INSTITUCION ||
                     '</COD_INSTITUCION_TRANSFERENCIA>' ||
                     '<ID_INST_FINANCIERA>' || VAR_RUT_INSTITUCION ||
                     '</ID_INST_FINANCIERA>' ||
                     '</INFO_INSTITUCION><DETALLE>';

        END IF;

        VAR_XML := VAR_XML || '<DETALLE_MVTO>' || '<PRODUCTO>' ||
                   VAR_CUOTAS || '</PRODUCTO>' || '<CUOTAS>' || VAR_CUOTAS ||
                   '</CUOTAS>' || '<MONTOS>' || VAR_MONTOS || '</MONTOS>' ||
                   '<FONDO_ORIGEN_1>' || VAR_FONDO_ORIGEN1 ||
                   '</FONDO_ORIGEN_1>' || '<FONDO_DESTINO_1>' ||
                   VAR_FONDO_DESTINO_1 || '</FONDO_DESTINO_1>' ||
                   '<FONDO_ORIGEN_2>' || VAR_FONDO_ORIGEN_2 ||
                   '</FONDO_ORIGEN_2>' || '<FONDO_DESTINO_2>' ||
                   VAR_FONDO_DESTINO_2 || '</FONDO_DESTINO_2>' ||
                   '</DETALLE_MVTO>';

        VAR_CONTADOR := VAR_CONTADOR + 1;

      END LOOP;
      CLOSE VAR_CURSOR;

      VAR_XML := VAR_XML || '</DETALLE></APV_IN>';

    ELSE

      VAR_XML := '<COMPROBANTE_RESUMEN>' || '<Identificacion>' ||
                 '<IdReporte>' || VAR_ID_REPORTE || '</IdReporte>' ||
                 '<IdFormato>' || VAR_ID_FORMATO || '</IdFormato>' ||
                 '</Identificacion>';

      SOLICITUDES.PCK_CONSOLIDADO_TRAMITES.DETALLE_SAPV_IN(VINU_ID_SOLICITUD,
                                                           VINU_ID_NUM_CLIENTE,
                                                           VAR_CURSOR);

      SOLICITUDES.PCK_CONSOLIDADO_TRAMITES.RESUMEN_SOLICITUD(VINU_ID_SOLICITUD,
                                                             VAR_DESCRIPCION_SOLICITUD,
                                                             VAR_FOLIO,
                                                             VAR_FECHA_SOLICITUD,
                                                             VAR_ESTADO_SOLICITUD,
                                                             VAR_VIA_INGRESO);

      LOOP
        FETCH VAR_CURSOR
          INTO VAR_NOMBRE, 
    VAR_ID_PERSONA, 
    VAR_DIRECCION, 
    VAR_REGION, 
    VAR_COMUNA, 
    VAR_TELEFONO, 
    VAR_EMAIL, 
    VAR_NOM_INSTITUCION, 
    VAR_RUT_INSTITUCION, 
    VAR_PRODUCTO, 
    VAR_CUOTAS, 
    VAR_MONTOS, 
    VAR_FONDO_ORIGEN1, 
    VAR_FONDO_DESTINO_1, 
    VAR_FONDO_ORIGEN_2, 
    VAR_FONDO_DESTINO_2, 
    VAR_FECHA_TRASPASO;

        EXIT WHEN VAR_CURSOR%NOTFOUND;

        IF VAR_CONTADOR = 0 THEN
          VAR_XML := VAR_XML || '<COMPROBANTE>' || '<ID_TIPO_TRAMITE>' ||
                     VAR_TIPO_TRAMITE || '</ID_TIPO_TRAMITE>' || '<NOMBRE>' ||
                     VAR_NOMBRE || '</NOMBRE>' || '<RUT>' || VAR_ID_PERSONA ||
                     '</RUT>' || '<DOMICILIO>' || VAR_DIRECCION ||
                     '</DOMICILIO>' || '<REGION>' || VAR_REGION ||
                     '</REGION>' || '<COMUNA>' || VAR_COMUNA || '</COMUNA>' ||
                     '<TELEFONO>' || VAR_TELEFONO || '</TELEFONO>' ||
                     '<EMAIL>' || VAR_EMAIL || '</EMAIL>' ||
                     '<TITULO_COLUMNA>Fecha Notificacion</TITULO_COLUMNA>' ||
                     '<INFO_COLUMNA>' || VAR_FECHA_TRASPASO ||
                     '</INFO_COLUMNA>' || '<ESTADO>' ||
                     VAR_ESTADO_SOLICITUD || '</ESTADO>' || '<VIA_INGRESO>' ||
                     VAR_VIA_INGRESO || '</VIA_INGRESO>' ||
                     '<FECHA_SOLICITUD>' || VAR_FECHA_SOLICITUD ||
                     '</FECHA_SOLICITUD>' || '<NRO_FOLIO>' || VAR_FOLIO ||
                     '</NRO_FOLIO>' || '<DESCRIPCION_TRAMITE>' ||
                     VAR_DESCRIPCION_SOLICITUD || '</DESCRIPCION_TRAMITE>' ||
                     '<COD_INSTITUCION_TRANSFERENCIA>' ||
                     VAR_NOM_INSTITUCION ||
                     '</COD_INSTITUCION_TRANSFERENCIA>' ||
                     '<ID_INST_FINANCIERA>' || VAR_RUT_INSTITUCION ||
                     '</ID_INST_FINANCIERA>' || '</COMPROBANTE>';

        END IF;

        VAR_XML := VAR_XML || '<APV_IN>' || '<TIPO_PRODUCTO>' ||
                   VAR_PRODUCTO || '</TIPO_PRODUCTO>' || '<CUOTAS>' ||
                   VAR_CUOTAS || '</CUOTAS>' || '<MONTOS>' || VAR_MONTOS ||
                   '</MONTOS>' || '<FONDO_DESTINO_1>' ||
                   VAR_FONDO_DESTINO_1 || '</FONDO_DESTINO_1>' ||
                   '<FONDO_DESTINO_2>' || VAR_FONDO_DESTINO_2 ||
                   '</FONDO_DESTINO_2>' || '</APV_IN>';

        VAR_CONTADOR := VAR_CONTADOR + 1;

      END LOOP;
      CLOSE VAR_CURSOR;

      VAR_XML := VAR_XML || '</COMPROBANTE_RESUMEN>';

    END IF;

    OPEN VOCUR_XML FOR
      SELECT VAR_XML AS XML FROM DUAL;

  END TRAMITE_APV_IN;

  PROCEDURE TRAMITE_APV_OUT(VINU_ID_SOLICITUD   IN NUMBER, -- ID SOLICITUD
                            VINU_ID_NUM_CLIENTE IN NUMBER, -- ID DEL CLIENTE
                            VINU_TIPO_SOLICITUD IN NUMBER, -- TIPO SOLICITUD
                            VIVC_TIPO_SALIDA    IN VARCHAR2, -- R RESUMEN   D DETALLADA
                            VOCUR_XML           OUT TCURSOR) AS
    VAR_XML                   CLOB;
    VAR_CURSOR                TCURSOR;
    VAR_CONTADOR              NUMBER;
    VAR_DESCRIPCION_SOLICITUD VARCHAR2(200);
    VAR_FOLIO                 VARCHAR2(20);
    VAR_FECHA_SOLICITUD       VARCHAR2(12);
    VAR_ESTADO_SOLICITUD      VARCHAR2(50);
    VAR_VIA_INGRESO           VARCHAR2(50);
    -- INFO REPORTE
    VAR_ID_REPORTE   VARCHAR2(4);
    VAR_ID_FORMATO   VARCHAR2(5);
    VAR_TIPO_TRAMITE VARCHAR2(2);
    -- INFO AFILIADO
    VAR_NOMBRE     VARCHAR2(80);
    VAR_ID_PERSONA VARCHAR2(15);
    VAR_DIRECCION  VARCHAR2(200);
    VAR_REGION     VARCHAR2(80);
    VAR_COMUNA     VARCHAR2(60);
    VAR_TELEFONO   VARCHAR2(15);
    VAR_EMAIL      VARCHAR2(80);
    -- INFO TRANSFERENCIA
    VAR_COD_INSTITUCION      VARCHAR2(50);
    VAR_INSTITUCION          VARCHAR2(120);
    VAR_RUT_INSTITUCION      VARCHAR2(50);
    VAR_PRODUCTO             VARCHAR2(20);
    VAR_CUOTAS_FONDO_1       VARCHAR2(10);
    VAR_MONTOS_FONDO_1       VARCHAR2(10);
    VAR_TIPO_FONDO_ORIGEN_1  VARCHAR2(10);
    VAR_TIPO_FONDO_DESTINO_1 VARCHAR2(10);
    VAR_CUOTAS_FONDO_2       VARCHAR2(10);
    VAR_MONTOS_FONDO_2       VARCHAR2(10);
    VAR_TIPO_FONDO_ORIGEN_2  VARCHAR2(10);
    VAR_TIPO_FONDO_DESTINO_2 VARCHAR2(10);
    VAR_FECHA_TRASPASO       VARCHAR2(10);

  BEGIN

    VAR_CONTADOR := 0;

    IF VIVC_TIPO_SALIDA = 'D' THEN
      SELECT C.ID_REPORTE_DETALLE, C.ID_FORMATO_DETALLE
        INTO VAR_ID_REPORTE, VAR_ID_FORMATO
        FROM TIPO_MENU_CONSOLIDADO C
       WHERE C.ID_TIPO_SOLICITUD = VINU_TIPO_SOLICITUD;
    ELSE
      SELECT C.ID_REPORTE_COMPROBANTE,
             C.ID_FORMATO_COMPROBANTE,
             C.TIPO_TRAMITE
        INTO VAR_ID_REPORTE, VAR_ID_FORMATO, VAR_TIPO_TRAMITE
        FROM TIPO_MENU_CONSOLIDADO C
       WHERE C.ID_TIPO_SOLICITUD = VINU_TIPO_SOLICITUD;
    END IF;

    IF VIVC_TIPO_SALIDA = 'D' THEN

      SOLICITUDES.PCK_CONSOLIDADO_TRAMITES.DETALLE_SAPV_OUT(VINU_ID_SOLICITUD,
                                                            VINU_ID_NUM_CLIENTE,
                                                            VAR_CURSOR);
      VAR_XML := '<APV_IN>' || '<Identificacion>' || '<IdReporte>' ||
                 VAR_ID_REPORTE || '</IdReporte>' || '<IdFormato>' ||
                 VAR_ID_FORMATO || '</IdFormato>' || '</Identificacion>';

      LOOP
        FETCH VAR_CURSOR
          INTO VAR_NOMBRE, 
    VAR_ID_PERSONA, 
    VAR_DIRECCION, 
    VAR_REGION, 
    VAR_COMUNA, 
    VAR_TELEFONO, 
    VAR_EMAIL, 
    VAR_COD_INSTITUCION, 
    VAR_INSTITUCION, 
    VAR_RUT_INSTITUCION, 
    VAR_PRODUCTO, 
    VAR_CUOTAS_FONDO_1, 
    VAR_MONTOS_FONDO_1, 
    VAR_TIPO_FONDO_ORIGEN_1, 
    VAR_CUOTAS_FONDO_2, 
    VAR_MONTOS_FONDO_2, 
    VAR_TIPO_FONDO_ORIGEN_2, 
    VAR_TIPO_FONDO_DESTINO_1, 
    VAR_TIPO_FONDO_DESTINO_2, 
    VAR_FECHA_TRASPASO;

        EXIT WHEN VAR_CURSOR%NOTFOUND;

        IF VAR_CONTADOR = 0 THEN
          VAR_XML := VAR_XML || '<INFO_AFILIADO>' || '<NOMBRE>' ||
                     VAR_NOMBRE || '</NOMBRE>' || '<RUT>' || VAR_ID_PERSONA ||
                     '</RUT>' || '<DIRECCION>' || VAR_DIRECCION ||
                     '</DIRECCION>' || '<REGION>' || VAR_REGION ||
                     '</REGION>' || '<COMUNA>' || VAR_COMUNA || '</COMUNA>' ||
                     '<TELEFONO>' || VAR_TELEFONO || '</TELEFONO>' ||
                     '<EMAIL>' || VAR_EMAIL || '</EMAIL>' ||
                     '</INFO_AFILIADO>' || '<INFO_INSTITUCION>' ||
                     '<COD_INSTITUCION_TRANSFERENCIA>' ||
                     VAR_COD_INSTITUCION ||
                     '</COD_INSTITUCION_TRANSFERENCIA>' ||
                     '<INSTITUCION_TRANSFERENCIA>' || VAR_INSTITUCION ||
                     '</INSTITUCION_TRANSFERENCIA>' ||
                     '<ID_INST_FINANCIERA>' || VAR_RUT_INSTITUCION ||
                     '</ID_INST_FINANCIERA>' ||
                     '</INFO_INSTITUCION><DETALLE>';

        END IF;

        VAR_XML := VAR_XML || '<DETALLE_MVTO>' || '<PRODUCTO>' ||
                   VAR_PRODUCTO || '</PRODUCTO>' || '<TIPO_FONDO_ORIGEN_1>' ||
                   VAR_TIPO_FONDO_ORIGEN_1 || '</TIPO_FONDO_ORIGEN_1>' ||
                   '<CUOTAS_FONDO_1>' || VAR_CUOTAS_FONDO_1 ||
                   '</CUOTAS_FONDO_1>' || '<MONTOS_FONDO_1>' ||
                   VAR_MONTOS_FONDO_1 || '</MONTOS_FONDO_1>' ||
                   '<TIPO_FONDO_DESTINO_1>' || VAR_TIPO_FONDO_DESTINO_1 ||
                   '</TIPO_FONDO_DESTINO_1>' || '<TIPO_FONDO_ORIGEN_2>' ||
                   VAR_TIPO_FONDO_ORIGEN_2 || '</TIPO_FONDO_ORIGEN_2>' ||
                   '<CUOTAS_FONDO_2>' || VAR_CUOTAS_FONDO_2 ||
                   '</CUOTAS_FONDO_2>' || '<MONTOS_FONDO_2>' ||
                   VAR_MONTOS_FONDO_2 || '</MONTOS_FONDO_2>' ||
                   '<TIPO_FONDO_DESTINO_2>' || VAR_TIPO_FONDO_DESTINO_2 ||
                   '</TIPO_FONDO_DESTINO_2>' || '</DETALLE_MVTO>';

        VAR_CONTADOR := VAR_CONTADOR + 1;

      END LOOP;
      CLOSE VAR_CURSOR;

      VAR_XML := VAR_XML || '</DETALLE></APV_IN>';

    ELSE

      VAR_XML := '<COMPROBANTE_RESUMEN>' || '<Identificacion>' ||
                 '<IdReporte>' || VAR_ID_REPORTE || '</IdReporte>' ||
                 '<IdFormato>' || VAR_ID_FORMATO || '</IdFormato>' ||
                 '</Identificacion>';

      SOLICITUDES.PCK_CONSOLIDADO_TRAMITES.DETALLE_SAPV_OUT(VINU_ID_SOLICITUD,
                                                            VINU_ID_NUM_CLIENTE,
                                                            VAR_CURSOR);

      SOLICITUDES.PCK_CONSOLIDADO_TRAMITES.RESUMEN_SOLICITUD(VINU_ID_SOLICITUD,
                                                             VAR_DESCRIPCION_SOLICITUD,
                                                             VAR_FOLIO,
                                                             VAR_FECHA_SOLICITUD,
                                                             VAR_ESTADO_SOLICITUD,
                                                             VAR_VIA_INGRESO);

      LOOP
        FETCH VAR_CURSOR
          INTO VAR_NOMBRE, 
    VAR_ID_PERSONA, 
    VAR_DIRECCION, 
    VAR_REGION, 
    VAR_COMUNA, 
    VAR_TELEFONO, 
    VAR_EMAIL, 
    VAR_COD_INSTITUCION, 
    VAR_INSTITUCION, 
    VAR_RUT_INSTITUCION, 
    VAR_PRODUCTO, 
    VAR_CUOTAS_FONDO_1, 
    VAR_MONTOS_FONDO_1, 
    VAR_TIPO_FONDO_ORIGEN_1, 
    VAR_CUOTAS_FONDO_2, 
    VAR_MONTOS_FONDO_2, 
    VAR_TIPO_FONDO_ORIGEN_2, 
    VAR_TIPO_FONDO_DESTINO_1, 
    VAR_TIPO_FONDO_DESTINO_2, 
    VAR_FECHA_TRASPASO;

        EXIT WHEN VAR_CURSOR%NOTFOUND;

        IF VAR_CONTADOR = 0 THEN
          VAR_XML := VAR_XML || '<COMPROBANTE>' || '<ID_TIPO_TRAMITE>' ||
                     VAR_TIPO_TRAMITE || '</ID_TIPO_TRAMITE>' || '<NOMBRE>' ||
                     VAR_NOMBRE || '</NOMBRE>' || '<RUT>' || VAR_ID_PERSONA ||
                     '</RUT>' || '<DOMICILIO>' || VAR_DIRECCION ||
                     '</DOMICILIO>' || '<REGION>' || VAR_REGION ||
                     '</REGION>' || '<COMUNA>' || VAR_COMUNA || '</COMUNA>' ||
                     '<TELEFONO>' || VAR_TELEFONO || '</TELEFONO>' ||
                     '<EMAIL>' || VAR_EMAIL || '</EMAIL>' ||
                     '<TITULO_COLUMNA>Fecha Traspaso</TITULO_COLUMNA>' ||
                     '<INFO_COLUMNA>' || VAR_FECHA_TRASPASO ||
                     '</INFO_COLUMNA>' || '<ESTADO>' ||
                     VAR_ESTADO_SOLICITUD || '</ESTADO>' || '<VIA_INGRESO>' ||
                     VAR_VIA_INGRESO || '</VIA_INGRESO>' ||
                     '<FECHA_SOLICITUD>' || VAR_FECHA_SOLICITUD ||
                     '</FECHA_SOLICITUD>' || '<NRO_FOLIO>' || VAR_FOLIO ||
                     '</NRO_FOLIO>' || '<DESCRIPCION_TRAMITE>' ||
                     VAR_DESCRIPCION_SOLICITUD || '</DESCRIPCION_TRAMITE>' ||
                     '<INSTITUCION_TRANSFERENCIA>' || VAR_INSTITUCION ||
                     '</INSTITUCION_TRANSFERENCIA>' ||
                     '<ID_INST_FINANCIERA>' || VAR_RUT_INSTITUCION ||
                     '</ID_INST_FINANCIERA>' || '</COMPROBANTE>';

        END IF;

        VAR_XML := VAR_XML || '<APV_OUT>' || '<TIPO_PRODUCTO>' ||
                   VAR_PRODUCTO || '</TIPO_PRODUCTO>' ||
                   '<TIPO_FONDO_ORIGEN_1>' || VAR_TIPO_FONDO_ORIGEN_1 ||
                   '</TIPO_FONDO_ORIGEN_1>' || '<CUOTAS_FONDO_1>' ||
                   VAR_CUOTAS_FONDO_1 || '</CUOTAS_FONDO_1>' ||
                   '<MONTOS_FONDO_1>' || VAR_MONTOS_FONDO_1 ||
                   '</MONTOS_FONDO_1>' || '<TIPO_FONDO_DESTINO_1>' ||
                   VAR_TIPO_FONDO_DESTINO_1 || '</TIPO_FONDO_DESTINO_1>' ||
                   '<TIPO_FONDO_ORIGEN_2>' || VAR_TIPO_FONDO_ORIGEN_2 ||
                   '</TIPO_FONDO_ORIGEN_2>' || '<CUOTAS_FONDO_2>' ||
                   VAR_CUOTAS_FONDO_2 || '</CUOTAS_FONDO_2>' ||
                   '<MONTOS_FONDO_2>' || VAR_MONTOS_FONDO_2 ||
                   '</MONTOS_FONDO_2>' || '<TIPO_FONDO_DESTINO_2>' ||
                   VAR_TIPO_FONDO_DESTINO_2 || '</TIPO_FONDO_DESTINO_2>' ||
                   '</APV_OUT>';

        VAR_CONTADOR := VAR_CONTADOR + 1;

      END LOOP;
      CLOSE VAR_CURSOR;

      VAR_XML := VAR_XML || '</COMPROBANTE_RESUMEN>';

    END IF;

    OPEN VOCUR_XML FOR
      SELECT VAR_XML AS XML FROM DUAL;

  END TRAMITE_APV_OUT;

  PROCEDURE TRAMITE_INCORPORACION_CCO(VINU_ID_SOLICITUD   IN NUMBER, -- ID SOLICITUD
                                      VINU_ID_NUM_CLIENTE IN NUMBER, -- ID DEL CLIENTE
                                      VINU_TIPO_SOLICITUD IN NUMBER, -- TIPO SOLICITUD
                                      VIVC_TIPO_SALIDA    IN VARCHAR2, -- R RESUMEN   D DETALLADA
                                      VOCUR_XML           OUT TCURSOR) AS
    VAR_XML      CLOB;
    VAR_CURSOR   TCURSOR;
    VAR_CONTADOR NUMBER;
    -- INFO REPORTE
    VAR_ID_REPORTE   VARCHAR2(4);
    VAR_ID_FORMATO   VARCHAR2(5);
    VAR_TIPO_TRAMITE VARCHAR2(2);
    -- INFO COMPROBANTE
    VAR_DESCRIPCION_SOLICITUD VARCHAR2(200);
    VAR_FOLIO                 VARCHAR2(20);
    VAR_FECHA_SOLICITUD       VARCHAR(12);
    VAR_ESTADO_SOLICITUD      VARCHAR(50);
    VAR_VIA_INGRESO           VARCHAR2(50);
    -- INFO AFILIADO
    VAR_NOMBRE              VARCHAR2(80);
    VAR_ID_PERSONA          VARCHAR(15);
    VAR_DIRECCION           VARCHAR2(200);
    VAR_REGION              VARCHAR2(80);
    VAR_COMUNA              VARCHAR2(60);
    VAR_TELEFONO            VARCHAR2(15);
    VAR_EMAIL               VARCHAR2(80);
    VAR_FEC_NACIMIENTO      VARCHAR2(14);
    VAR_SEXO                VARCHAR2(20);
    VAR_ESTADO_CIVIL        VARCHAR2(50);
    VAR_TIPO_REG_SALUD      VARCHAR2(80);
    VAR_RENTA_IMPONIBLE     VARCHAR2(10);
    VAR_TIPO_TRABAJADOR     VARCHAR2(60);
    VAR_CLASE_COTIZANTE     VARCHAR2(50);
    VAR_PER_PRIMER_PAGO     VARCHAR2(14);
    VAR_PER_COT_ADICIONAL   VARCHAR2(20);
    VAR_PRIMA_SEGURO        VARCHAR2(20);
    VAR_NOMBRE_EJECUTIVO    VARCHAR2(120);
    VAR_RUT_EJECUTIVO       VARCHAR2(15);
    VAR_RAZON_SOCIAL        VARCHAR2(100);
    VAR_RUT_EMPRESA         VARCHAR2(30);
    VAR_DIRECCION_EMP       VARCHAR2(150);
    VAR_REGION_EMP          VARCHAR2(60);
    VAR_COMUNA_EMP          VARCHAR2(60);
    VAR_FONO_EMP            VARCHAR2(12);
    VAR_EMAIL_EMP           VARCHAR2(100);
    VAR_FAX_EMP             VARCHAR2(20);
    VAR_ACTIVIDAD_ECONOMICA VARCHAR2(200);
    VAR_CUENTA              VARCHAR2(200);
    VAR_FONDO1              VARCHAR2(1);
    VAR_DISTRIBUCION1       VARCHAR2(3);
    VAR_FONDO2              VARCHAR2(1);
    VAR_DISTRIBUCION2       VARCHAR2(3);
    VAR_COD_AGENCIA         VARCHAR2(100);
    VAR_COD_SAFP_VENDEDOR   VARCHAR2(30);
    VAR_FECHA_INCORPORACION VARCHAR2(14);

  BEGIN
    VAR_CONTADOR := 0;

    IF VIVC_TIPO_SALIDA = 'D' THEN
      SELECT C.ID_REPORTE_DETALLE, C.ID_FORMATO_DETALLE
        INTO VAR_ID_REPORTE, VAR_ID_FORMATO
        FROM TIPO_MENU_CONSOLIDADO C
       WHERE C.ID_TIPO_SOLICITUD = VINU_TIPO_SOLICITUD;
    ELSE
      SELECT C.ID_REPORTE_COMPROBANTE,
             C.ID_FORMATO_COMPROBANTE,
             C.TIPO_TRAMITE
        INTO VAR_ID_REPORTE, VAR_ID_FORMATO, VAR_TIPO_TRAMITE
        FROM TIPO_MENU_CONSOLIDADO C
       WHERE C.ID_TIPO_SOLICITUD = VINU_TIPO_SOLICITUD;
    END IF;

    IF VIVC_TIPO_SALIDA = 'D' THEN

      SOLICITUDES.PCK_CONSOLIDADO_TRAMITES.DETALLE_SCCOAI(VINU_ID_SOLICITUD,
                                                          VINU_ID_NUM_CLIENTE,
                                                          VAR_CURSOR);
      VAR_XML := '<INCORPORACION>' || '<Identificacion>' || '<IdReporte>' ||
                 VAR_ID_REPORTE || '</IdReporte>' || '<IdFormato>' ||
                 VAR_ID_FORMATO || '</IdFormato>' || '</Identificacion>';

      LOOP
        FETCH VAR_CURSOR
          INTO VAR_NOMBRE, 
    VAR_ID_PERSONA, 
    VAR_DIRECCION, 
    VAR_REGION, 
    VAR_COMUNA, 
    VAR_TELEFONO, 
    VAR_EMAIL, 
    VAR_FEC_NACIMIENTO, 
    VAR_SEXO, 
    VAR_ESTADO_CIVIL, 
    VAR_TIPO_REG_SALUD, 
    VAR_RENTA_IMPONIBLE, 
    VAR_TIPO_TRABAJADOR, 
    VAR_CLASE_COTIZANTE, 
    VAR_PER_PRIMER_PAGO, 
    VAR_PER_COT_ADICIONAL, 
    VAR_PRIMA_SEGURO, 
    VAR_NOMBRE_EJECUTIVO, 
    VAR_RUT_EJECUTIVO, 
    VAR_RAZON_SOCIAL, 
    VAR_RUT_EMPRESA, 
    VAR_DIRECCION_EMP, 
    VAR_REGION_EMP, 
    VAR_COMUNA_EMP, 
    VAR_FONO_EMP, 
    VAR_EMAIL_EMP, 
    VAR_FAX_EMP, 
    VAR_ACTIVIDAD_ECONOMICA, 
    VAR_CUENTA, 
    VAR_FONDO1, 
    VAR_DISTRIBUCION1, 
    VAR_FONDO2, 
    VAR_DISTRIBUCION2, 
    VAR_COD_AGENCIA, 
    VAR_COD_SAFP_VENDEDOR, 
    VAR_FECHA_INCORPORACION;

        EXIT WHEN VAR_CURSOR%NOTFOUND;

        IF VAR_CONTADOR = 0 THEN
          VAR_XML := VAR_XML || '<INFO_AFILIADO>' || '<NOMBRE>' ||
                     VAR_NOMBRE || '</NOMBRE>' || '<RUT>' || VAR_ID_PERSONA ||
                     '</RUT>' || '<DIRECCION>' || VAR_DIRECCION ||
                     '</DIRECCION>' || '<COMUNA>' || VAR_COMUNA ||
                     '</COMUNA>' || '<REGION>' || VAR_REGION || '</REGION>' ||
                     '<TELEFONO>' || VAR_TELEFONO || '</TELEFONO>' ||
                     '<EMAIL>' || VAR_EMAIL || '</EMAIL>' ||
                     '<FEC_NACIMIENTO>' || VAR_FEC_NACIMIENTO ||
                     '</FEC_NACIMIENTO>' || '<SEXO>' || VAR_SEXO ||
                     '</SEXO>' || '<ESTADO_CIVIL>' || VAR_ESTADO_CIVIL ||
                     '</ESTADO_CIVIL>' || '<TIPO_REG_SALUD>' ||
                     VAR_TIPO_REG_SALUD || '</TIPO_REG_SALUD>' || '<RIM>' ||
                     VAR_RENTA_IMPONIBLE || '</RIM>' || '<TIPO_TRABAJADOR>' ||
                     VAR_TIPO_TRABAJADOR || '</TIPO_TRABAJADOR>' ||
                     '<PER_PRIMER_PAGO>' || VAR_PER_PRIMER_PAGO ||
                     '</PER_PRIMER_PAGO>' || '<CLASE_COTIZANTE>' ||
                     VAR_CLASE_COTIZANTE || '</CLASE_COTIZANTE>' ||
                     '<PORC_COTIZACION_ADICIONAL>' || VAR_PER_COT_ADICIONAL ||
                     '</PORC_COTIZACION_ADICIONAL>' ||
                     '<PORC_PRIMA_SEGURO>' || VAR_PRIMA_SEGURO ||
                     '</PORC_PRIMA_SEGURO>' || '<NOMBRE_EJECUTIVO>' ||
                     VAR_NOMBRE_EJECUTIVO || '</NOMBRE_EJECUTIVO>' ||
                     '<ID_VENDEDOR>' || VAR_COD_SAFP_VENDEDOR ||
                     '</ID_VENDEDOR>' || '</INFO_AFILIADO>' ||
                     '<INFO_EMPLEADOR>' || '<RAZON_SOCIAL>' ||
                     VAR_RAZON_SOCIAL || '</RAZON_SOCIAL>' ||
                     '<ID_EMPLEADOR>' || VAR_RUT_EMPRESA ||
                     '</ID_EMPLEADOR>' || '<DIRECCION_EMP>' ||
                     VAR_DIRECCION_EMP || '</DIRECCION_EMP>' ||
                     '<COMUNA_EMP>' || VAR_COMUNA_EMP || '</COMUNA_EMP>' ||
                     '<COD_REGION_EMP>' || VAR_REGION_EMP ||
                     '</COD_REGION_EMP>' || '<TELEFONO_EMP>' ||
                     VAR_FONO_EMP || '</TELEFONO_EMP>' || '<EMAIL_EMP>' ||
                     VAR_EMAIL_EMP || '</EMAIL_EMP>' || '<FAX>' ||
                     VAR_FAX_EMP || '</FAX>' || '<COD_ACTIVIDAD_ECONOMICA>' ||
                     VAR_ACTIVIDAD_ECONOMICA ||
                     '</COD_ACTIVIDAD_ECONOMICA>' || '</INFO_EMPLEADOR>' ||
                     '<DATOS_AFP>' || '<COD_AGENCIA>' || VAR_COD_AGENCIA ||
                     '</COD_AGENCIA>' || '<NOMBRE_EJECUTIVO>' ||
                     VAR_NOMBRE_EJECUTIVO || '</NOMBRE_EJECUTIVO>' ||
                     '<ID_VENDEDOR>' || VAR_RUT_EJECUTIVO ||
                     '</ID_VENDEDOR>' || '</DATOS_AFP>' || '<CUENTAS>' ||
                     '<CUENTA>' || VAR_CUENTA || '</CUENTA>' || '<FONDO>' ||
                     VAR_FONDO1 || '</FONDO>' || '<DISTRIBUCION>' ||
                     VAR_DISTRIBUCION1 || '</DISTRIBUCION>' || '</CUENTAS>' ||
                     '<CUENTAS>' || '<CUENTA>' || VAR_CUENTA || '</CUENTA>' ||
                     '<FONDO>' || VAR_FONDO2 || '</FONDO>' ||
                     '<DISTRIBUCION>' || VAR_DISTRIBUCION2 ||
                     '</DISTRIBUCION>' || '</CUENTAS>';

        END IF;

      END LOOP;
      CLOSE VAR_CURSOR;

      VAR_XML := VAR_XML || '</INCORPORACION>';

    ELSE
      VAR_XML := '<COMPROBANTE_RESUMEN>' || '<Identificacion>' ||
                 '<IdReporte>' || VAR_ID_REPORTE || '</IdReporte>' ||
                 '<IdFormato>' || VAR_ID_FORMATO || '</IdFormato>' ||
                 '</Identificacion>';

      SOLICITUDES.PCK_CONSOLIDADO_TRAMITES.DETALLE_SCCOAI(VINU_ID_SOLICITUD,
                                                          VINU_ID_NUM_CLIENTE,
                                                          VAR_CURSOR);

      SOLICITUDES.PCK_CONSOLIDADO_TRAMITES.RESUMEN_SOLICITUD(VINU_ID_SOLICITUD,
                                                             VAR_DESCRIPCION_SOLICITUD,
                                                             VAR_FOLIO,
                                                             VAR_FECHA_SOLICITUD,
                                                             VAR_ESTADO_SOLICITUD,
                                                             VAR_VIA_INGRESO);

      LOOP
        FETCH VAR_CURSOR
          INTO VAR_NOMBRE, 
    VAR_ID_PERSONA, 
    VAR_DIRECCION, 
    VAR_REGION, 
    VAR_COMUNA, 
    VAR_TELEFONO, 
    VAR_EMAIL, 
    VAR_FEC_NACIMIENTO, 
    VAR_SEXO, 
    VAR_ESTADO_CIVIL, 
    VAR_TIPO_REG_SALUD, 
    VAR_RENTA_IMPONIBLE, 
    VAR_TIPO_TRABAJADOR, 
    VAR_CLASE_COTIZANTE, 
    VAR_PER_PRIMER_PAGO, 
    VAR_PER_COT_ADICIONAL, 
    VAR_PRIMA_SEGURO, 
    VAR_NOMBRE_EJECUTIVO, 
    VAR_RUT_EJECUTIVO, 
    VAR_RAZON_SOCIAL, 
    VAR_RUT_EMPRESA, 
    VAR_DIRECCION_EMP, 
    VAR_REGION_EMP, 
    VAR_COMUNA_EMP, 
    VAR_FONO_EMP, 
    VAR_EMAIL_EMP, 
    VAR_FAX_EMP, 
    VAR_ACTIVIDAD_ECONOMICA, 
    VAR_CUENTA, 
    VAR_FONDO1, 
    VAR_DISTRIBUCION1, 
    VAR_FONDO2, 
    VAR_DISTRIBUCION2, 
    VAR_COD_AGENCIA, 
    VAR_COD_SAFP_VENDEDOR, 
    VAR_FECHA_INCORPORACION;

        EXIT WHEN VAR_CURSOR%NOTFOUND;

        IF VAR_CONTADOR = 0 THEN
          VAR_XML := VAR_XML || '<COMPROBANTE>' || '<ID_TIPO_TRAMITE>' ||
                     VAR_TIPO_TRAMITE || '</ID_TIPO_TRAMITE>' || '<NOMBRE>' ||
                     VAR_NOMBRE || '</NOMBRE>' || '<RUT>' || VAR_ID_PERSONA ||
                     '</RUT>' || '<DOMICILIO>' || VAR_DIRECCION ||
                     '</DOMICILIO>' || '<REGION>' || VAR_REGION ||
                     '</REGION>' || '<COMUNA>' || VAR_COMUNA || '</COMUNA>' ||
                     '<TELEFONO>' || VAR_TELEFONO || '</TELEFONO>' ||
                     '<EMAIL>' || VAR_EMAIL || '</EMAIL>' ||
                     '<TIPO_TRABAJADOR>' || VAR_TIPO_TRABAJADOR ||
                     '</TIPO_TRABAJADOR>' ||
                     '<TITULO_COLUMNA>Fecha Incorporación</TITULO_COLUMNA>' ||
                     '<INFO_COLUMNA>' || VAR_FECHA_INCORPORACION ||
                     '</INFO_COLUMNA>' || '<ESTADO>' ||
                     VAR_ESTADO_SOLICITUD || '</ESTADO>' || '<VIA_INGRESO>' ||
                     VAR_VIA_INGRESO || '</VIA_INGRESO>' ||
                     '<FECHA_SOLICITUD>' || VAR_FECHA_SOLICITUD ||
                     '</FECHA_SOLICITUD>' || '<NRO_FOLIO>' || VAR_FOLIO ||
                     '</NRO_FOLIO>' || '<DESCRIPCION_TRAMITE>' ||
                     VAR_DESCRIPCION_SOLICITUD || '</DESCRIPCION_TRAMITE>' ||
                     '</COMPROBANTE>' || '<INFO_AFILIADO>' || '<NOMBRE>' ||
                     VAR_NOMBRE || '</NOMBRE>' || '<RUT>' || VAR_ID_PERSONA ||
                     '</RUT>' || '<DIRECCION>' || VAR_DIRECCION ||
                     '</DIRECCION>' || '<COMUNA>' || VAR_COMUNA ||
                     '</COMUNA>' || '<REGION>' || VAR_REGION || '</REGION>' ||
                     '<TELEFONO>' || VAR_TELEFONO || '</TELEFONO>' ||
                     '<EMAIL>' || VAR_EMAIL || '</EMAIL>' ||
                     '<FEC_NACIMIENTO>' || VAR_FEC_NACIMIENTO ||
                     '</FEC_NACIMIENTO>' || '<SEXO>' || VAR_SEXO ||
                     '</SEXO>' || '<ESTADO_CIVIL>' || VAR_ESTADO_CIVIL ||
                     '</ESTADO_CIVIL>' || '<TIPO_REG_SALUD>' ||
                     VAR_TIPO_REG_SALUD || '</TIPO_REG_SALUD>' || '<RIM>' ||
                     VAR_RENTA_IMPONIBLE || '</RIM>' || '<TIPO_TRABAJADOR>' ||
                     VAR_TIPO_TRABAJADOR || '</TIPO_TRABAJADOR>' ||
                     '<PER_PRIMER_PAGO>' || VAR_PER_PRIMER_PAGO ||
                     '</PER_PRIMER_PAGO>' || '<CLASE_COTIZANTE>' ||
                     VAR_CLASE_COTIZANTE || '</CLASE_COTIZANTE>' ||
                     '<PORC_COTIZACION_ADICIONAL>' || VAR_PER_COT_ADICIONAL ||
                     '</PORC_COTIZACION_ADICIONAL>' ||
                     '<PORC_PRIMA_SEGURO>' || VAR_PRIMA_SEGURO ||
                     '</PORC_PRIMA_SEGURO>' || '<NOMBRE_EJECUTIVO>' ||
                     VAR_NOMBRE_EJECUTIVO || '</NOMBRE_EJECUTIVO>' ||
                     '<ID_VENDEDOR>' || VAR_COD_SAFP_VENDEDOR ||
                     '</ID_VENDEDOR>' || '</INFO_AFILIADO>' ||
                     '<INFO_EMPLEADOR>' || '<RAZON_SOCIAL>' ||
                     VAR_RAZON_SOCIAL || '</RAZON_SOCIAL>' ||
                     '<ID_EMPLEADOR>' || VAR_RUT_EMPRESA ||
                     '</ID_EMPLEADOR>' || '<DIRECCION_EMP>' ||
                     VAR_DIRECCION_EMP || '</DIRECCION_EMP>' ||
                     '<COMUNA_EMP>' || VAR_COMUNA_EMP || '</COMUNA_EMP>' ||
                     '<COD_REGION_EMP>' || VAR_REGION_EMP ||
                     '</COD_REGION_EMP>' || '<TELEFONO_EMP>' ||
                     VAR_FONO_EMP || '</TELEFONO_EMP>' || '<EMAIL_EMP>' ||
                     VAR_EMAIL_EMP || '</EMAIL_EMP>' || '<FAX>' ||
                     VAR_FAX_EMP || '</FAX>' || '<COD_ACTIVIDAD_ECONOMICA>' ||
                     VAR_ACTIVIDAD_ECONOMICA ||
                     '</COD_ACTIVIDAD_ECONOMICA>' || '</INFO_EMPLEADOR>' ||
                     '<DATOS_AFP>' || '<COD_AGENCIA>' || VAR_COD_AGENCIA ||
                     '</COD_AGENCIA>' || '<NOMBRE_EJECUTIVO>' ||
                     VAR_NOMBRE_EJECUTIVO || '</NOMBRE_EJECUTIVO>' ||
                     '<ID_VENDEDOR>' || VAR_RUT_EJECUTIVO ||
                     '</ID_VENDEDOR>' || '</DATOS_AFP>' || '<CUENTAS>' ||
                     '<CUENTA>' || VAR_CUENTA || '</CUENTA>' || '<FONDO>' ||
                     VAR_FONDO1 || '</FONDO>' || '<DISTRIBUCION>' ||
                     VAR_DISTRIBUCION1 || '</DISTRIBUCION>' || '</CUENTAS>' ||
                     '<CUENTAS>' || '<CUENTA>' || VAR_CUENTA || '</CUENTA>' ||
                     '<FONDO>' || VAR_FONDO2 || '</FONDO>' ||
                     '<DISTRIBUCION>' || VAR_DISTRIBUCION2 ||
                     '</DISTRIBUCION>' || '</CUENTAS>';

        END IF;

      END LOOP;
      CLOSE VAR_CURSOR;

      VAR_XML := VAR_XML || '</COMPROBANTE_RESUMEN>';
    END IF;

    OPEN VOCUR_XML FOR
      SELECT VAR_XML AS XML FROM DUAL;

  END TRAMITE_INCORPORACION_CCO;

  PROCEDURE TRAMITE_CLAVE_SEGURA(VINU_ID_SOLICITUD   IN NUMBER, -- ID SOLICITUD
                                 VINU_ID_NUM_CLIENTE IN NUMBER, -- ID DEL CLIENTE
                                 VINU_TIPO_SOLICITUD IN NUMBER, -- TIPO SOLICITUD
                                 VIVC_TIPO_SALIDA    IN VARCHAR2, -- R RESUMEN   D DETALLADA
                                 VOCUR_XML           OUT TCURSOR) AS
    VAR_XML                   CLOB;
    VAR_CURSOR                TCURSOR;
    VAR_CONTADOR              NUMBER;
    VAR_DESCRIPCION_SOLICITUD VARCHAR2(200);
    VAR_FOLIO                 VARCHAR2(20);
    VAR_FECHA_SOLICITUD       VARCHAR2(12);
    VAR_ESTADO_SOLICITUD      VARCHAR2(50);
    VAR_VIA_INGRESO           VARCHAR2(50);
    -- INFO REPORTE
    VAR_ID_REPORTE   VARCHAR2(4);
    VAR_ID_FORMATO   VARCHAR2(5);
    VAR_TIPO_TRAMITE VARCHAR2(2);
    -- INFO AFILIADO
    VAR_NOMBRE     VARCHAR2(80);
    VAR_ID_PERSONA VARCHAR(15);
    VAR_DIRECCION  VARCHAR2(200);
    VAR_REGION     VARCHAR2(80);
    VAR_COMUNA     VARCHAR2(60);
    VAR_TELEFONO   VARCHAR(15);
    VAR_EMAIL      VARCHAR(80);
    -- INFO SOLICITUD CLAVE
    VAR_AGENCIA       VARCHAR2(100);
    VAR_EJECUTIVO     VARCHAR2(100);
    VAR_RUT_EJECUTIVO VARCHAR2(100);

  BEGIN

    VAR_CONTADOR := 0;

    IF VIVC_TIPO_SALIDA = 'D' THEN
      SELECT C.ID_REPORTE_DETALLE, C.ID_FORMATO_DETALLE
        INTO VAR_ID_REPORTE, VAR_ID_FORMATO
        FROM TIPO_MENU_CONSOLIDADO C
       WHERE C.ID_TIPO_SOLICITUD = VINU_TIPO_SOLICITUD;
    ELSE
      SELECT C.ID_REPORTE_COMPROBANTE,
             C.ID_FORMATO_COMPROBANTE,
             C.TIPO_TRAMITE
        INTO VAR_ID_REPORTE, VAR_ID_FORMATO, VAR_TIPO_TRAMITE
        FROM TIPO_MENU_CONSOLIDADO C
       WHERE C.ID_TIPO_SOLICITUD = VINU_TIPO_SOLICITUD;
    END IF;

    IF VIVC_TIPO_SALIDA = 'D' THEN

      CLAVES.PCK_CONSOLIDADO_TRAMITES.DETALLE_CLAVE_SEGURA(VINU_ID_SOLICITUD,
                                                           VINU_ID_NUM_CLIENTE,
                                                           VAR_CURSOR);

      VAR_XML := '<SOL_CLAVE>' || '<Identificacion>' || '<IdReporte>' ||
                 VAR_ID_REPORTE || '</IdReporte>' || '<IdFormato>' ||
                 VAR_ID_FORMATO || '</IdFormato>' || '</Identificacion>';

      LOOP
        FETCH VAR_CURSOR
          INTO VAR_NOMBRE, 
    VAR_ID_PERSONA, 
    VAR_DIRECCION, 
    VAR_REGION, 
    VAR_COMUNA, 
    VAR_TELEFONO, 
    VAR_EMAIL, 
    VAR_AGENCIA, 
    VAR_EJECUTIVO, 
    VAR_RUT_EJECUTIVO;

        EXIT WHEN VAR_CURSOR%NOTFOUND;

        IF VAR_CONTADOR = 0 THEN
          VAR_XML := VAR_XML || '<INFO_SOLICITUD>' || '<AGENCIA>' ||
                     VAR_AGENCIA || '</AGENCIA>' || '<NOMB_EJECUTIVO>' ||
                     VAR_EJECUTIVO || '</NOMB_EJECUTIVO>' ||
                     '<RUT_EJECUTIVO>' || VAR_RUT_EJECUTIVO ||
                     '</RUT_EJECUTIVO>' || '</INFO_SOLICITUD>';

        END IF;

        VAR_CONTADOR := VAR_CONTADOR + 1;

      END LOOP;
      CLOSE VAR_CURSOR;

      VAR_XML := VAR_XML || '</SOL_CLAVE>';

    ELSE

      VAR_XML := '<COMPROBANTE_RESUMEN>' || '<Identificacion>' ||
                 '<IdReporte>' || VAR_ID_REPORTE || '</IdReporte>' ||
                 '<IdFormato>' || VAR_ID_FORMATO || '</IdFormato>' ||
                 '</Identificacion>';

      CLAVES.PCK_CONSOLIDADO_TRAMITES.DETALLE_CLAVE_SEGURA(VINU_ID_SOLICITUD,
                                                           VINU_ID_NUM_CLIENTE,
                                                           VAR_CURSOR);

      SOLICITUDES.PCK_CONSOLIDADO_TRAMITES.RESUMEN_SOLICITUD(VINU_ID_SOLICITUD,
                                                             VAR_DESCRIPCION_SOLICITUD,
                                                             VAR_FOLIO,
                                                             VAR_FECHA_SOLICITUD,
                                                             VAR_ESTADO_SOLICITUD,
                                                             VAR_VIA_INGRESO);

      LOOP
        FETCH VAR_CURSOR
          INTO VAR_NOMBRE, 
    VAR_ID_PERSONA, 
    VAR_DIRECCION, 
    VAR_REGION, 
    VAR_COMUNA, 
    VAR_TELEFONO, 
    VAR_EMAIL, 
    VAR_AGENCIA, 
    VAR_EJECUTIVO, 
    VAR_RUT_EJECUTIVO;

        EXIT WHEN VAR_CURSOR%NOTFOUND;

        IF VAR_CONTADOR = 0 THEN
          VAR_XML := VAR_XML || '<COMPROBANTE>' || '<ID_TIPO_TRAMITE>' ||
                     VAR_TIPO_TRAMITE || '</ID_TIPO_TRAMITE>' || '<NOMBRE>' ||
                     VAR_NOMBRE || '</NOMBRE>' || '<RUT>' || VAR_ID_PERSONA ||
                     '</RUT>' || '<DOMICILIO>' || VAR_DIRECCION ||
                     '</DOMICILIO>' || '<REGION>' || VAR_REGION ||
                     '</REGION>' || '<COMUNA>' || VAR_COMUNA || '</COMUNA>' ||
                     '<TELEFONO>' || VAR_TELEFONO || '</TELEFONO>' ||
                     '<EMAIL>' || VAR_EMAIL || '</EMAIL>' ||
                     '<TITULO_COLUMNA>Fecha Aceptación Contrato de Prestaciones Remotas</TITULO_COLUMNA>' ||
                     '<INFO_COLUMNA>' || VAR_FECHA_SOLICITUD ||
                     '</INFO_COLUMNA>' || '<ESTADO>' ||
                     VAR_ESTADO_SOLICITUD || '</ESTADO>' || '<VIA_INGRESO>' ||
                     VAR_VIA_INGRESO || '</VIA_INGRESO>' ||
                     '<FECHA_SOLICITUD>' || VAR_FECHA_SOLICITUD ||
                     '</FECHA_SOLICITUD>' || '<NRO_FOLIO>' || VAR_FOLIO ||
                     '</NRO_FOLIO>' || '<DESCRIPCION_TRAMITE>' ||
                     VAR_DESCRIPCION_SOLICITUD || '</DESCRIPCION_TRAMITE>' ||
                     '</COMPROBANTE>' || '<INFO_SOLICITUD>' || '<AGENCIA>' ||
                     VAR_AGENCIA || '</AGENCIA>' || '<NOMB_EJECUTIVO>' ||
                     VAR_EJECUTIVO || '</NOMB_EJECUTIVO>' ||
                     '<RUT_EJECUTIVO>' || VAR_RUT_EJECUTIVO ||
                     '</RUT_EJECUTIVO>' || '</INFO_SOLICITUD>';

        END IF;

        VAR_CONTADOR := VAR_CONTADOR + 1;

      END LOOP;
      CLOSE VAR_CURSOR;

      VAR_XML := VAR_XML || '</COMPROBANTE_RESUMEN>';

    END IF;

    OPEN VOCUR_XML FOR
      SELECT VAR_XML AS XML FROM DUAL;

  END TRAMITE_CLAVE_SEGURA;

  PROCEDURE TRAMITE_BALANCEO_SALDO(VINU_ID_SOLICITUD   IN NUMBER, -- ID SOLICITUD
                                   VINU_ID_NUM_CLIENTE IN NUMBER, -- ID DEL CLIENTE
                                   VINU_TIPO_SOLICITUD IN NUMBER, -- TIPO SOLICITUD
                                   VIVC_TIPO_SALIDA    IN VARCHAR2, -- R RESUMEN   D DETALLADA
                                   VOCUR_XML           OUT TCURSOR) AS
    VAR_XML      CLOB;
    VAR_CURSOR   TCURSOR;
    VAR_CONTADOR NUMBER;
    -- INFO AFILIADO
    VAR_NOMBRE     VARCHAR2(80);
    VAR_ID_PERSONA VARCHAR(15);
    VAR_DIRECCION  VARCHAR2(200);
    VAR_REGION     VARCHAR2(80);
    VAR_COMUNA     VARCHAR2(60);
    VAR_TELEFONO   VARCHAR(15);
    VAR_EMAIL      VARCHAR(80);
    -- INFO SAJUREC
    VAR_TIPO_PRODUCTO          VARCHAR(80);
    VAR_TIPO_FONDO_RECAUDACION VARCHAR(80);
    VAR_FEC_MATERIALIZACION    VARCHAR(80);
    VAR_FEC_ELECCION_ANTERIOR  VARCHAR(80);
    VAR_AJUSTE_SALDO           VARCHAR(2);
    VAR_FONDO_APERTURA         VARCHAR(2);
    VAR_PORCENTAJE_APERTURA    VARCHAR(3);
    -- INFO REPORTE
    VAR_ID_REPORTE   VARCHAR2(4);
    VAR_ID_FORMATO   VARCHAR2(5);
    VAR_TIPO_TRAMITE VARCHAR2(2);
    -- INFO COMPROBANTE
    VAR_DESCRIPCION_SOLICITUD VARCHAR2(200);
    VAR_FOLIO                 VARCHAR2(20);
    VAR_FECHA_SOLICITUD       VARCHAR(12);
    VAR_ESTADO_SOLICITUD      VARCHAR(50);
    VAR_VIA_INGRESO           VARCHAR2(50);
    VAR_GENERICO              VARCHAR2(100);
  BEGIN
    VAR_CONTADOR := 0;

    IF VIVC_TIPO_SALIDA = 'D' THEN
      SELECT C.ID_REPORTE_DETALLE, C.ID_FORMATO_DETALLE
        INTO VAR_ID_REPORTE, VAR_ID_FORMATO
        FROM TIPO_MENU_CONSOLIDADO C
       WHERE C.ID_TIPO_SOLICITUD = VINU_TIPO_SOLICITUD;
    ELSE
      SELECT C.ID_REPORTE_COMPROBANTE,
             C.ID_FORMATO_COMPROBANTE,
             C.TIPO_TRAMITE
        INTO VAR_ID_REPORTE, VAR_ID_FORMATO, VAR_TIPO_TRAMITE
        FROM TIPO_MENU_CONSOLIDADO C
       WHERE C.ID_TIPO_SOLICITUD = VINU_TIPO_SOLICITUD;
    END IF;

    IF VIVC_TIPO_SALIDA = 'D' THEN

      SOLICITUDES.PCK_CONSOLIDADO_TRAMITES.DETALLE_SAJUREC(VINU_ID_SOLICITUD,
                                                           VINU_ID_NUM_CLIENTE,
                                                           VAR_CURSOR);
      VAR_XML := '<SAJUREC>' || '<Identificacion>' || '<IdReporte>' ||
                 VAR_ID_REPORTE || '</IdReporte>' || '<IdFormato>' ||
                 VAR_ID_FORMATO || '</IdFormato>' || '</Identificacion>';

      LOOP
        FETCH VAR_CURSOR
          INTO VAR_NOMBRE,
               VAR_ID_PERSONA,
               VAR_DIRECCION,
               VAR_REGION,
               VAR_COMUNA,
               VAR_TELEFONO,
               VAR_EMAIL,
               VAR_TIPO_PRODUCTO,
               VAR_TIPO_FONDO_RECAUDACION,
               VAR_ESTADO_SOLICITUD,
               VAR_FECHA_SOLICITUD,
               VAR_FEC_MATERIALIZACION,
               VAR_AJUSTE_SALDO,
               VAR_FONDO_APERTURA,
               VAR_PORCENTAJE_APERTURA;

        EXIT WHEN VAR_CURSOR%NOTFOUND;

        IF VAR_CONTADOR = 0 THEN

          IF VAR_DIRECCION = '--' OR VAR_TELEFONO = '--' OR
             VAR_EMAIL = '--' THEN

            OBTENER_DIR_FONO_EMAIL_CLI(VINU_ID_NUM_CLIENTE,
                                       VAR_DIRECCION,
                                       VAR_REGION,
                                       VAR_COMUNA,
                                       VAR_TELEFONO,
                                       VAR_EMAIL,
                                       VAR_GENERICO);

          END IF;

          VAR_XML := VAR_XML || '<INFO_AFILIADO>' || '<NOMBRE>' ||
                     VAR_NOMBRE || '</NOMBRE>' || '<RUT>' || VAR_ID_PERSONA ||
                     '</RUT>' || '<DIRECCION>' || VAR_DIRECCION ||
                     '</DIRECCION>' || '<COMUNA>' || VAR_COMUNA ||
                     '</COMUNA>' || '<REGION>' || VAR_REGION || '</REGION>' ||
                     '<TELEFONO>' || VAR_TELEFONO || '</TELEFONO>' ||
                     '<EMAIL>' || VAR_EMAIL || '</EMAIL>' ||
                     '<FECHA_MATERIALIZACION>' || VAR_FEC_MATERIALIZACION ||
                     '</FECHA_MATERIALIZACION>' ||
                     '<FECHA_ELECCION_ANTERIOR>' ||
                     VAR_FEC_ELECCION_ANTERIOR ||
                     '</FECHA_ELECCION_ANTERIOR>' || '</INFO_AFILIADO>' ||
                     '<DETALLE>';

        END IF;

        VAR_XML := VAR_XML || '<DETALLE_MVTO>' || '<TIPO_PRODUCTO>' ||
                   VAR_TIPO_PRODUCTO || '</TIPO_PRODUCTO>' ||
                   '<AJUSTESALDO>' || VAR_AJUSTE_SALDO || '</AJUSTESALDO>' ||
                   '<FONDOAPERTURA>' || VAR_FONDO_APERTURA ||
                   '</FONDOAPERTURA>' || '<PORCENTAJEAPERTURA>' ||
                   VAR_PORCENTAJE_APERTURA || '</PORCENTAJEAPERTURA>' ||
                   '</DETALLE_MVTO>';

        VAR_CONTADOR := VAR_CONTADOR + 1;

      END LOOP;
      CLOSE VAR_CURSOR;

      VAR_XML := VAR_XML || '</DETALLE>' || '</SAJUREC>';

    ELSE
      VAR_XML := '<COMPROBANTE_RESUMEN>' || '<Identificacion>' ||
                 '<IdReporte>' || VAR_ID_REPORTE || '</IdReporte>' ||
                 '<IdFormato>' || VAR_ID_FORMATO || '</IdFormato>' ||
                 '</Identificacion>';

      SOLICITUDES.PCK_CONSOLIDADO_TRAMITES.DETALLE_SAJUREC(VINU_ID_SOLICITUD,
                                                           VINU_ID_NUM_CLIENTE,
                                                           VAR_CURSOR);

      SOLICITUDES.PCK_CONSOLIDADO_TRAMITES.RESUMEN_SOLICITUD(VINU_ID_SOLICITUD,
                                                             VAR_DESCRIPCION_SOLICITUD,
                                                             VAR_FOLIO,
                                                             VAR_FECHA_SOLICITUD,
                                                             VAR_ESTADO_SOLICITUD,
                                                             VAR_VIA_INGRESO);

      LOOP
        FETCH VAR_CURSOR
          INTO VAR_NOMBRE,
               VAR_ID_PERSONA,
               VAR_DIRECCION,
               VAR_REGION,
               VAR_COMUNA,
               VAR_TELEFONO,
               VAR_EMAIL,
               VAR_TIPO_PRODUCTO,
               VAR_TIPO_FONDO_RECAUDACION,
               VAR_ESTADO_SOLICITUD,
               VAR_FECHA_SOLICITUD,
               VAR_FEC_MATERIALIZACION,
               VAR_AJUSTE_SALDO,
               VAR_FONDO_APERTURA,
               VAR_PORCENTAJE_APERTURA;

        EXIT WHEN VAR_CURSOR%NOTFOUND;

        IF VAR_CONTADOR = 0 THEN
          IF VAR_DIRECCION = '--' OR VAR_TELEFONO = '--' OR
             VAR_EMAIL = '--' THEN

            OBTENER_DIR_FONO_EMAIL_CLI(VINU_ID_NUM_CLIENTE,
                                       VAR_DIRECCION,
                                       VAR_REGION,
                                       VAR_COMUNA,
                                       VAR_TELEFONO,
                                       VAR_EMAIL,
                                       VAR_GENERICO);

          END IF;

          VAR_XML := VAR_XML || '<COMPROBANTE>' || '<ID_TIPO_TRAMITE>' ||
                     VAR_TIPO_TRAMITE || '</ID_TIPO_TRAMITE>' || '<NOMBRE>' ||
                     VAR_NOMBRE || '</NOMBRE>' || '<RUT>' || VAR_ID_PERSONA ||
                     '</RUT>' || '<DOMICILIO>' || VAR_DIRECCION ||
                     '</DOMICILIO>' || '<REGION>' || VAR_REGION ||
                     '</REGION>' || '<COMUNA>' || VAR_COMUNA || '</COMUNA>' ||
                     '<TELEFONO>' || VAR_TELEFONO || '</TELEFONO>' ||
                     '<EMAIL>' || VAR_EMAIL || '</EMAIL>' ||
                     '<TITULO_COLUMNA>Fecha Materialización</TITULO_COLUMNA>' ||
                     '<INFO_COLUMNA>' || VAR_FEC_MATERIALIZACION ||
                     '</INFO_COLUMNA>' || '<ESTADO>' ||
                     VAR_ESTADO_SOLICITUD || '</ESTADO>' || '<VIA_INGRESO>' ||
                     VAR_VIA_INGRESO || '</VIA_INGRESO>' ||
                     '<FECHA_SOLICITUD>' || VAR_FECHA_SOLICITUD ||
                     '</FECHA_SOLICITUD>' || '<NRO_FOLIO>' || VAR_FOLIO ||
                     '</NRO_FOLIO>' || '<DESCRIPCION_TRAMITE>' ||
                     VAR_DESCRIPCION_SOLICITUD || '</DESCRIPCION_TRAMITE>' ||
                     '</COMPROBANTE><DETALLE>';

        END IF;

        VAR_XML := VAR_XML || '<DETALLE_MVTO>' || '<TIPO_PRODUCTO>' ||
                   VAR_TIPO_PRODUCTO || '</TIPO_PRODUCTO>' ||
                   '<AJUSTESALDO>' || VAR_AJUSTE_SALDO || '</AJUSTESALDO>' ||
                   '<FONDOAPERTURA>' || VAR_FONDO_APERTURA ||
                   '</FONDOAPERTURA>' || '<PORCENTAJEAPERTURA>' ||
                   VAR_PORCENTAJE_APERTURA || '</PORCENTAJEAPERTURA>' ||
                   '</DETALLE_MVTO>';

        VAR_CONTADOR := VAR_CONTADOR + 1;

      END LOOP;
      CLOSE VAR_CURSOR;

      VAR_XML := VAR_XML || '</DETALLE></COMPROBANTE_RESUMEN>';
    END IF;

    OPEN VOCUR_XML FOR
      SELECT VAR_XML AS XML FROM DUAL;

  END TRAMITE_BALANCEO_SALDO;

  PROCEDURE PROCESO_COMPROBANTE_ING_BASE(VINU_ID_SOLICITUD   IN NUMBER, -- ID SOLICITUD
                                         VINU_ID_NUM_CLIENTE IN NUMBER, -- ID DEL CLIENTE
                                         VINU_TIPO_SOLICITUD IN NUMBER, -- TIPO SOLICITUD
                                         VIVC_TIPO_SALIDA    IN VARCHAR2, -- R RESUMEN   D DETALLADA
                                         VOCUR_XML           OUT TCURSOR) AS
    VAR_XML      CLOB;
    VAR_CURSOR   TCURSOR;
    VAR_CONTADOR NUMBER;
    -- INFO OFERTA SCOMP
    VAR_NOMBRE           VARCHAR2(80);
    VAR_RUT_CLIENTE      VARCHAR2(15);
    VAR_DIRECCION        VARCHAR2(200);
    VAR_COMUNA           VARCHAR2(60);
    VAR_REGION           VARCHAR2(80);
    VAR_TELEFONO         VARCHAR2(15);
    VAR_EMAIL            VARCHAR2(80);
    VAR_NRO_CERTIFICCADO VARCHAR2(20);
    VAR_NRO_PERIODOS     VARCHAR2(20);
    VAR_PERIODO_INICIO   VARCHAR2(20);
    VAR_FECHA_UF         VARCHAR2(15);
    VAR_VALOR_UF         VARCHAR2(10);
    VAR_MONTO_UF_IBPR    VARCHAR2(50);
    VAR_CALCULO_APROBADO VARCHAR2(50);
    VAR_TOTAL_RENTAS     VARCHAR2(50);
    VAR_MONTO_UF_IBPR_LA VARCHAR2(50);
    VAR_MONTO_UF_IBPR_LN VARCHAR2(50);
    VAR_AGENCIA          VARCHAR2(100);
    VAR_NOMBRE_EJECUTIVO VARCHAR2(100);
    VAR_RUT_EJECUTIVO    VARCHAR2(15);
    -- INFO REPORTE
    VAR_ID_REPORTE   VARCHAR2(4);
    VAR_ID_FORMATO   VARCHAR2(5);
    VAR_TIPO_TRAMITE VARCHAR2(2);

  BEGIN

    VAR_CONTADOR := 0;

    IF VIVC_TIPO_SALIDA = 'D' THEN
      SELECT C.ID_REPORTE_DETALLE, C.ID_FORMATO_DETALLE
        INTO VAR_ID_REPORTE, VAR_ID_FORMATO
        FROM TIPO_MENU_CONSOLIDADO C
       WHERE C.ID_TIPO_SOLICITUD = VINU_TIPO_SOLICITUD;
    ELSE
      SELECT C.ID_REPORTE_COMPROBANTE,
             C.ID_FORMATO_COMPROBANTE,
             C.TIPO_TRAMITE
        INTO VAR_ID_REPORTE, VAR_ID_FORMATO, VAR_TIPO_TRAMITE
        FROM TIPO_MENU_CONSOLIDADO C
       WHERE C.ID_TIPO_SOLICITUD = VINU_TIPO_SOLICITUD;
    END IF;

    IF VIVC_TIPO_SALIDA = 'D' THEN

      SOLICITUDPENSION.PCK_CONSOLIDADO_TRAMITES.PSEL_OBT_CALCULO_IBPR(VINU_ID_SOLICITUD,
                                                                      VINU_ID_NUM_CLIENTE,
                                                                      VAR_CURSOR);
      VAR_XML := '<INGRESO_BASE>' || '<Identificacion>' || '<IdReporte>' ||
                 VAR_ID_REPORTE || '</IdReporte>' || '<IdFormato>' ||
                 VAR_ID_FORMATO || '</IdFormato>' || '</Identificacion>';

      LOOP
        FETCH VAR_CURSOR
          INTO VAR_RUT_CLIENTE,
               VAR_NOMBRE,
               VAR_DIRECCION,
               VAR_REGION,
               VAR_COMUNA,
               VAR_TELEFONO,
               VAR_EMAIL,
               VAR_NRO_CERTIFICCADO,
               VAR_NRO_PERIODOS,
               VAR_PERIODO_INICIO,
               VAR_FECHA_UF,
               VAR_VALOR_UF,
               VAR_MONTO_UF_IBPR,
               VAR_CALCULO_APROBADO,
               VAR_TOTAL_RENTAS,
               VAR_MONTO_UF_IBPR_LA,
               VAR_MONTO_UF_IBPR_LN,
               VAR_AGENCIA,
               VAR_NOMBRE_EJECUTIVO,
               VAR_RUT_EJECUTIVO;

        EXIT WHEN VAR_CURSOR%NOTFOUND;

        IF VAR_CONTADOR = 0 THEN
          VAR_XML := VAR_XML || '<INFO_AFILIADO>' || '<NOMBRE>' ||
                     VAR_NOMBRE || '</NOMBRE>' || '<RUT>' ||
                     VAR_RUT_CLIENTE || '</RUT>' || '<DOMICILIO>' ||
                     VAR_DIRECCION || '</DOMICILIO>' || '<COMUNA>' ||
                     VAR_COMUNA || '</COMUNA>' || '<REGION>' || VAR_REGION ||
                     '</REGION>' || '<TELEFONO>' || VAR_TELEFONO ||
                     '</TELEFONO>' || '<EMAIL>' || VAR_EMAIL || '</EMAIL>' ||
                     '</INFO_AFILIADO>' || '<INFO_CERTIFICADO>' ||
                     '<NRO_CERTIFICADO>' || VAR_NRO_CERTIFICCADO ||
                     '</NRO_CERTIFICADO>' || '<NRO_PERIODOS>' ||
                     VAR_NRO_PERIODOS || '</NRO_PERIODOS>' ||
                     '<PERIODO_INICIO>' || VAR_PERIODO_INICIO ||
                     '</PERIODO_INICIO>' || '<FECHA_UF>' || VAR_FECHA_UF ||
                     '</FECHA_UF>' || '<VALOR_UF>' || VAR_VALOR_UF ||
                     '</VALOR_UF>' || '<MONTO_UF_IBPR>' ||
                     VAR_MONTO_UF_IBPR || '</MONTO_UF_IBPR>' ||
                     '<CALCULO_APROBADO>' || VAR_CALCULO_APROBADO ||
                     '</CALCULO_APROBADO>' || '<TOTAL_RENTAS>' ||
                     VAR_TOTAL_RENTAS || '</TOTAL_RENTAS>' ||
                     '<MONTO_UF_IBPR_LA>' || VAR_MONTO_UF_IBPR_LA ||
                     '</MONTO_UF_IBPR_LA>' || '<MONTO_UF_IBPR_LN>' ||
                     VAR_MONTO_UF_IBPR_LN || '</MONTO_UF_IBPR_LN>' ||
                     '</INFO_CERTIFICADO>' || '<INFO_RESP_AFP>' ||
                     '<AGENCIA>' || VAR_AGENCIA || '</AGENCIA>' ||
                     '<NOMBRE_EJECUTIVO>' || VAR_NOMBRE_EJECUTIVO ||
                     '</NOMBRE_EJECUTIVO>' || '<RUT_EJECUTIVO>' ||
                     VAR_RUT_EJECUTIVO || '</RUT_EJECUTIVO>' ||
                     '</INFO_RESP_AFP>';

        END IF;

        VAR_CONTADOR := VAR_CONTADOR + 1;

      END LOOP;
      CLOSE VAR_CURSOR;

      VAR_XML := VAR_XML || '</INGRESO_BASE>';

    END IF;

    OPEN VOCUR_XML FOR
      SELECT VAR_XML AS XML FROM DUAL;

  END PROCESO_COMPROBANTE_ING_BASE;
  PROCEDURE TRAMITE_RECLAMO_1733(VINU_ID_SOLICITUD   IN NUMBER, -- ID SOLICITUD
                                 VINU_ID_NUM_CLIENTE IN NUMBER, -- ID DEL CLIENTE
                                 VINU_TIPO_SOLICITUD IN NUMBER, -- TIPO SOLICITUD
                                 VIVC_TIPO_SALIDA    IN VARCHAR2, -- R RESUMEN   D DETALLADA
                                 VOCUR_XML           OUT TCURSOR) AS
    VAR_XML                   CLOB;
    VAR_CURSOR                TCURSOR;
    VAR_CONTADOR              NUMBER;
    VAR_DESCRIPCION_SOLICITUD VARCHAR2(200);
    VAR_FOLIO                 VARCHAR2(20);
    VAR_FECHA_SOLICITUD       VARCHAR2(12);
    VAR_ESTADO_SOLICITUD      VARCHAR2(50);
    VAR_VIA_INGRESO           VARCHAR2(50);
    -- INFO REPORTE
    VAR_ID_REPORTE   VARCHAR2(4);
    VAR_ID_FORMATO   VARCHAR2(5);
    VAR_TIPO_TRAMITE VARCHAR2(2);
    -- INFO AFILIADO
    VAR_NOMBRE     VARCHAR2(80);
    VAR_ID_PERSONA VARCHAR(15);
    VAR_DIRECCION  VARCHAR2(200);
    VAR_REGION     VARCHAR2(80);
    VAR_COMUNA     VARCHAR2(60);
    VAR_TELEFONO   VARCHAR(15);
    VAR_EMAIL      VARCHAR(80);
    -- INFO RECLAMO
    VAR_RUT_RECLAMANTE       VARCHAR2(100);
    VAR_NOMBRE_RECLAMANTE    VARCHAR2(100);
    VAR_DOMICILIO_RECLAMANTE VARCHAR2(100);
    VAR_REGION_RECLAMANTE    VARCHAR2(100);
    VAR_COMUNA_RECLAMANTE    VARCHAR2(100);
    VAR_TELEFONO_RECLAMANTE  VARCHAR2(100);
    VAR_EMAIL_RECLAMANTE     VARCHAR2(100);
    VAR_MATERIA              VARCHAR2(200);
    VAR_COMENTARIO           VARCHAR2(4100);
    VAR_FECHA_FINALIZACION   VARCHAR2(10);

  BEGIN

    VAR_CONTADOR := 0;

    IF VIVC_TIPO_SALIDA = 'D' THEN
      SELECT C.ID_REPORTE_DETALLE, C.ID_FORMATO_DETALLE
        INTO VAR_ID_REPORTE, VAR_ID_FORMATO
        FROM TIPO_MENU_CONSOLIDADO C
       WHERE C.ID_TIPO_SOLICITUD = VINU_TIPO_SOLICITUD;
    ELSE
      SELECT C.ID_REPORTE_COMPROBANTE,
             C.ID_FORMATO_COMPROBANTE,
             C.TIPO_TRAMITE
        INTO VAR_ID_REPORTE, VAR_ID_FORMATO, VAR_TIPO_TRAMITE
        FROM TIPO_MENU_CONSOLIDADO C
       WHERE C.ID_TIPO_SOLICITUD = VINU_TIPO_SOLICITUD;
    END IF;

    IF VIVC_TIPO_SALIDA = 'D' THEN

      RECLAMO.PCK_CONSOLIDADO_TRAMITES.DETALLE_RECLAMO_1733(VINU_ID_SOLICITUD,
                                                            VINU_ID_NUM_CLIENTE,
                                                            VAR_CURSOR);

      VAR_XML := '<Reclamo1733>' || '<Identificacion>' || '<IdReporte>' ||
                 VAR_ID_REPORTE || '</IdReporte>' || '<IdFormato>' ||
                 VAR_ID_FORMATO || '</IdFormato>' || '</Identificacion>';

      LOOP
        FETCH VAR_CURSOR
          INTO VAR_NOMBRE,
               VAR_ID_PERSONA,
               VAR_DIRECCION,
               VAR_REGION,
               VAR_COMUNA,
               VAR_TELEFONO,
               VAR_EMAIL,
               VAR_RUT_RECLAMANTE,
               VAR_NOMBRE_RECLAMANTE,
               VAR_DOMICILIO_RECLAMANTE,
               VAR_REGION_RECLAMANTE,
               VAR_COMUNA_RECLAMANTE,
               VAR_TELEFONO_RECLAMANTE,
               VAR_EMAIL_RECLAMANTE,
               VAR_MATERIA,
               VAR_COMENTARIO,
               VAR_FECHA_FINALIZACION;

        EXIT WHEN VAR_CURSOR%NOTFOUND;

        IF VAR_CONTADOR = 0 THEN
          VAR_XML := VAR_XML || '<DetalleReclamo>' || '<NOMBRE>' ||
                     VAR_NOMBRE || '</NOMBRE>' || '<RUT>' || VAR_ID_PERSONA ||
                     '</RUT>' || '<DIRECCION>' || VAR_DIRECCION ||
                     '</DIRECCION>' || '<REGION>' || VAR_REGION ||
                     '</REGION>' || '<COMUNA>' || VAR_COMUNA || '</COMUNA>' ||
                     '<TELEFONO>' || VAR_TELEFONO || '</TELEFONO>' ||
                     '<EMAIL>' || VAR_EMAIL || '</EMAIL>' ||
                     '<RUT_RECLAMANTE>' || VAR_RUT_RECLAMANTE ||
                     '</RUT_RECLAMANTE>' || '<NOMBRE_RECLAMANTE>' ||
                     VAR_NOMBRE_RECLAMANTE || '</NOMBRE_RECLAMANTE>' ||
                     '<DOMICILIO_RECLAMANTE>' || VAR_DOMICILIO_RECLAMANTE ||
                     '</DOMICILIO_RECLAMANTE>' || '<REGION_RECLAMANTE>' ||
                     VAR_REGION_RECLAMANTE || '</REGION_RECLAMANTE>' ||
                     '<COMUNA_RECLAMANTE>' || VAR_COMUNA_RECLAMANTE ||
                     '</COMUNA_RECLAMANTE>' || '<TELEFONO_RECLAMANTE>' ||
                     VAR_TELEFONO_RECLAMANTE || '</TELEFONO_RECLAMANTE>' ||
                     '<EMAIL_RECLAMANTE>' || VAR_EMAIL_RECLAMANTE ||
                     '</EMAIL_RECLAMANTE>' || '<MATERIA>' || VAR_MATERIA ||
                     '</MATERIA>' || '<COMENTARIO>' || VAR_COMENTARIO ||
                     '</COMENTARIO>' || '</DetalleReclamo>';

        END IF;

        VAR_CONTADOR := VAR_CONTADOR + 1;

      END LOOP;
      CLOSE VAR_CURSOR;

      VAR_XML := VAR_XML || '</Reclamo1733>';

    ELSE

      VAR_XML := '<COMPROBANTE_RESUMEN>' || '<Identificacion>' ||
                 '<IdReporte>' || VAR_ID_REPORTE || '</IdReporte>' ||
                 '<IdFormato>' || VAR_ID_FORMATO || '</IdFormato>' ||
                 '</Identificacion>';

      RECLAMO.PCK_CONSOLIDADO_TRAMITES.DETALLE_RECLAMO_1733(VINU_ID_SOLICITUD,
                                                            VINU_ID_NUM_CLIENTE,
                                                            VAR_CURSOR);

      SOLICITUDES.PCK_CONSOLIDADO_TRAMITES.RESUMEN_SOLICITUD(VINU_ID_SOLICITUD,
                                                             VAR_DESCRIPCION_SOLICITUD,
                                                             VAR_FOLIO,
                                                             VAR_FECHA_SOLICITUD,
                                                             VAR_ESTADO_SOLICITUD,
                                                             VAR_VIA_INGRESO);

      LOOP
        FETCH VAR_CURSOR
          INTO VAR_NOMBRE,
               VAR_ID_PERSONA,
               VAR_DIRECCION,
               VAR_REGION,
               VAR_COMUNA,
               VAR_TELEFONO,
               VAR_EMAIL,
               VAR_RUT_RECLAMANTE,
               VAR_NOMBRE_RECLAMANTE,
               VAR_DOMICILIO_RECLAMANTE,
               VAR_REGION_RECLAMANTE,
               VAR_COMUNA_RECLAMANTE,
               VAR_TELEFONO_RECLAMANTE,
               VAR_EMAIL_RECLAMANTE,
               VAR_MATERIA,
               VAR_COMENTARIO,
               VAR_FECHA_FINALIZACION;

        EXIT WHEN VAR_CURSOR%NOTFOUND;

        IF VAR_CONTADOR = 0 THEN
          VAR_XML := VAR_XML || '<COMPROBANTE>' || '<ID_TIPO_TRAMITE>' ||
                     VAR_TIPO_TRAMITE || '</ID_TIPO_TRAMITE>' || '<NOMBRE>' ||
                     VAR_NOMBRE || '</NOMBRE>' || '<RUT>' || VAR_ID_PERSONA ||
                     '</RUT>' || '<DOMICILIO>' || VAR_DIRECCION ||
                     '</DOMICILIO>' || '<REGION>' || VAR_REGION ||
                     '</REGION>' || '<COMUNA>' || VAR_COMUNA || '</COMUNA>' ||
                     '<TELEFONO>' || VAR_TELEFONO || '</TELEFONO>' ||
                     '<EMAIL>' || VAR_EMAIL || '</EMAIL>' ||
                     '<TITULO_COLUMNA>Fecha Finalización</TITULO_COLUMNA>' ||
                     '<INFO_COLUMNA>' || VAR_FECHA_FINALIZACION ||
                     '</INFO_COLUMNA>' || '<ESTADO>' ||
                     VAR_ESTADO_SOLICITUD || '</ESTADO>' || '<VIA_INGRESO>' ||
                     VAR_VIA_INGRESO || '</VIA_INGRESO>' ||
                     '<FECHA_SOLICITUD>' || VAR_FECHA_SOLICITUD ||
                     '</FECHA_SOLICITUD>' || '<NRO_FOLIO>' || VAR_FOLIO ||
                     '</NRO_FOLIO>' || '<DESCRIPCION_TRAMITE>' ||
                     VAR_DESCRIPCION_SOLICITUD || '</DESCRIPCION_TRAMITE>' ||
                     '</COMPROBANTE>' || '<INFO_RECLAMO>' ||
                     '<RUT_RECLAMANTE>' || VAR_RUT_RECLAMANTE ||
                     '</RUT_RECLAMANTE>' || '<NOMBRE_RECLAMANTE>' ||
                     VAR_NOMBRE_RECLAMANTE || '</NOMBRE_RECLAMANTE>' ||
                     '<DOMICILIO_RECLAMANTE>' || VAR_DOMICILIO_RECLAMANTE ||
                     '</DOMICILIO_RECLAMANTE>' || '<REGION_RECLAMANTE>' ||
                     VAR_REGION_RECLAMANTE || '</REGION_RECLAMANTE>' ||
                     '<COMUNA_RECLAMANTE>' || VAR_COMUNA_RECLAMANTE ||
                     '</COMUNA_RECLAMANTE>' || '<TELEFONO_RECLAMANTE>' ||
                     VAR_TELEFONO_RECLAMANTE || '</TELEFONO_RECLAMANTE>' ||
                     '<EMAIL_RECLAMANTE>' || VAR_EMAIL_RECLAMANTE ||
                     '</EMAIL_RECLAMANTE>' || '<MATERIA>' || VAR_MATERIA ||
                     '</MATERIA>' || '<COMENTARIO>' || VAR_COMENTARIO ||
                     '</COMENTARIO>' || '</INFO_RECLAMO>';

        END IF;

        VAR_CONTADOR := VAR_CONTADOR + 1;

      END LOOP;
      CLOSE VAR_CURSOR;

      VAR_XML := VAR_XML || '</COMPROBANTE_RESUMEN>';

    END IF;

    OPEN VOCUR_XML FOR
      SELECT VAR_XML AS XML FROM DUAL;

  END TRAMITE_RECLAMO_1733;

  PROCEDURE TRAMITE_INDEMNIZACION(VINU_ID_SOLICITUD   IN NUMBER, -- ID SOLICITUD
                                  VINU_ID_NUM_CLIENTE IN NUMBER, -- ID DEL CLIENTE
                                  VINU_TIPO_SOLICITUD IN NUMBER, -- TIPO SOLICITUD
                                  VIVC_TIPO_SALIDA    IN VARCHAR2, -- R RESUMEN   D DETALLADA
                                  VOCUR_XML           OUT TCURSOR) AS
    VAR_XML                   CLOB;
    VAR_CURSOR                TCURSOR;
    VAR_CONTADOR              NUMBER;
    VAR_DESCRIPCION_SOLICITUD VARCHAR2(200);
    VAR_FOLIO                 VARCHAR2(20);
    VAR_FECHA_SOLICITUD       VARCHAR2(12);
    VAR_ESTADO_SOLICITUD      VARCHAR2(50);
    VAR_VIA_INGRESO           VARCHAR2(50);
    -- INFO REPORTE
    VAR_ID_REPORTE   VARCHAR2(4);
    VAR_ID_FORMATO   VARCHAR2(5);
    VAR_TIPO_TRAMITE VARCHAR2(2);
    -- INFO AFILIADO
    VAR_NOMBRE     VARCHAR2(80);
    VAR_ID_PERSONA VARCHAR(15);
    VAR_DIRECCION  VARCHAR2(200);
    VAR_REGION     VARCHAR2(80);
    VAR_COMUNA     VARCHAR2(60);
    VAR_TELEFONO   VARCHAR(15);
    VAR_EMAIL      VARCHAR(80);
    -- INFO INDEMNIZACION
    VAR_RAZON_SOCIAL           VARCHAR2(200);
    VAR_ID_EMPLEADOR           VARCHAR2(100);
    VAR_DIRECCION_EMP          VARCHAR2(300);
    VAR_COMUNA_EMP             VARCHAR2(100);
    VAR_COD_REGION_EMP         VARCHAR2(100);
    VAR_TELEFONO_EMP           VARCHAR2(100);
    VAR_EMAIL_EMP              VARCHAR2(100);
    VAR_FEC_INICIO_REL         VARCHAR2(20);
    VAR_FEC_FIN_REL            VARCHAR2(20);
    VAR_TIPO_PRODUCTO          VARCHAR2(30);
    VAR_TIPO_FONDO_RECAUDACION VARCHAR2(10);
    VAR_COD_AGENCIA            VARCHAR2(200);
    VAR_NOMBRE_EJECUTIVO       VARCHAR2(100);
    VAR_FECHA_MATERIALIZACION  VARCHAR2(18);

  BEGIN

    VAR_CONTADOR := 0;

    IF VIVC_TIPO_SALIDA = 'D' THEN
      SELECT C.ID_REPORTE_DETALLE, C.ID_FORMATO_DETALLE
        INTO VAR_ID_REPORTE, VAR_ID_FORMATO
        FROM TIPO_MENU_CONSOLIDADO C
       WHERE C.ID_TIPO_SOLICITUD = VINU_TIPO_SOLICITUD;
    ELSE
      SELECT C.ID_REPORTE_COMPROBANTE,
             C.ID_FORMATO_COMPROBANTE,
             C.TIPO_TRAMITE
        INTO VAR_ID_REPORTE, VAR_ID_FORMATO, VAR_TIPO_TRAMITE
        FROM TIPO_MENU_CONSOLIDADO C
       WHERE C.ID_TIPO_SOLICITUD = VINU_TIPO_SOLICITUD;
    END IF;

    IF VIVC_TIPO_SALIDA = 'D' THEN

      SOLICITUDES.PCK_CONSOLIDADO_TRAMITES.DETALLE_SCAIAO(VINU_ID_SOLICITUD,
                                                          VINU_ID_NUM_CLIENTE,
                                                          VAR_CURSOR);

      VAR_XML := '<INDEMNIZACION>' || '<Identificacion>' || '<IdReporte>' ||
                 VAR_ID_REPORTE || '</IdReporte>' || '<IdFormato>' ||
                 VAR_ID_FORMATO || '</IdFormato>' || '</Identificacion>';

      LOOP
        FETCH VAR_CURSOR
          INTO VAR_NOMBRE,
               VAR_ID_PERSONA,
               VAR_DIRECCION,
               VAR_REGION,
               VAR_COMUNA,
               VAR_TELEFONO,
               VAR_EMAIL,
               VAR_RAZON_SOCIAL,
               VAR_ID_EMPLEADOR,
               VAR_DIRECCION_EMP,
               VAR_COMUNA_EMP,
               VAR_COD_REGION_EMP,
               VAR_TELEFONO_EMP,
               VAR_EMAIL_EMP,
               VAR_FEC_INICIO_REL,
               VAR_FEC_FIN_REL,
               VAR_TIPO_PRODUCTO,
               VAR_TIPO_FONDO_RECAUDACION,
               VAR_COD_AGENCIA,
               VAR_NOMBRE_EJECUTIVO,
               VAR_FECHA_MATERIALIZACION;

        EXIT WHEN VAR_CURSOR%NOTFOUND;

        IF VAR_CONTADOR = 0 THEN
          VAR_XML := VAR_XML || '<INFO_AFILIADO>' || '<NOMBRE>' ||
                     VAR_NOMBRE || '</NOMBRE>' || '<RUT>' || VAR_ID_PERSONA ||
                     '</RUT>' || '<DIRECCION>' || VAR_DIRECCION ||
                     '</DIRECCION>' || '<REGION>' || VAR_REGION ||
                     '</REGION>' || '<COMUNA>' || VAR_COMUNA || '</COMUNA>' ||
                     '<TELEFONO>' || VAR_TELEFONO || '</TELEFONO>' ||
                     '<EMAIL>' || VAR_EMAIL || '</EMAIL></INFO_AFILIADO>' ||
                     '<INFO_EMPLEADOR><RAZON_SOCIAL>' || VAR_RAZON_SOCIAL ||
                     '</RAZON_SOCIAL>' || '<ID_EMPLEADOR>' ||
                     VAR_ID_EMPLEADOR || '</ID_EMPLEADOR>' ||
                     '<DIRECCION_EMP>' || VAR_DIRECCION_EMP ||
                     '</DIRECCION_EMP>' || '<COD_REGION_EMP>' ||
                     VAR_COD_REGION_EMP || '</COD_REGION_EMP>' ||
                     '<COMUNA_EMP>' || VAR_COMUNA_EMP || '</COMUNA_EMP>' ||
                     '<TELEFONO_EMP>' || VAR_TELEFONO_EMP ||
                     '</TELEFONO_EMP>' || '<EMAIL_EMP>' || VAR_EMAIL_EMP ||
                     '</EMAIL_EMP>' || '<FEC_INICIO_REL>' ||
                     VAR_FEC_INICIO_REL || '</FEC_INICIO_REL>' ||
                     '<FEC_FIN_REL>' || VAR_FEC_FIN_REL ||
                     '</FEC_FIN_REL></INFO_EMPLEADOR><INFO_APERTURA>' ||
                     '<TIPO_PRODUCTO>' || VAR_TIPO_PRODUCTO ||
                     '</TIPO_PRODUCTO>' || '<TIPO_FONDO_RECAUDACION>' ||
                     VAR_TIPO_FONDO_RECAUDACION ||
                     '</TIPO_FONDO_RECAUDACION>' || '<COD_AGENCIA>' ||
                     VAR_COD_AGENCIA || '</COD_AGENCIA>' ||
                     '<NOMBRE_EJECUTIVO>' || VAR_NOMBRE_EJECUTIVO ||
                     '</NOMBRE_EJECUTIVO>' || '<FECHA_MATERIALIZACION>' ||
                     VAR_FECHA_MATERIALIZACION ||
                     '</FECHA_MATERIALIZACION>' || '</INFO_APERTURA>';

        END IF;

        VAR_CONTADOR := VAR_CONTADOR + 1;

      END LOOP;
      CLOSE VAR_CURSOR;

      VAR_XML := VAR_XML || '</INDEMNIZACION>';

    ELSE

      VAR_XML := '<COMPROBANTE_RESUMEN>' || '<Identificacion>' ||
                 '<IdReporte>' || VAR_ID_REPORTE || '</IdReporte>' ||
                 '<IdFormato>' || VAR_ID_FORMATO || '</IdFormato>' ||
                 '</Identificacion>';

      SOLICITUDES.PCK_CONSOLIDADO_TRAMITES.DETALLE_SCAIAO(VINU_ID_SOLICITUD,
                                                          VINU_ID_NUM_CLIENTE,
                                                          VAR_CURSOR);

      SOLICITUDES.PCK_CONSOLIDADO_TRAMITES.RESUMEN_SOLICITUD(VINU_ID_SOLICITUD,
                                                             VAR_DESCRIPCION_SOLICITUD,
                                                             VAR_FOLIO,
                                                             VAR_FECHA_SOLICITUD,
                                                             VAR_ESTADO_SOLICITUD,
                                                             VAR_VIA_INGRESO);

      LOOP
        FETCH VAR_CURSOR
          INTO VAR_NOMBRE,
               VAR_ID_PERSONA,
               VAR_DIRECCION,
               VAR_REGION,
               VAR_COMUNA,
               VAR_TELEFONO,
               VAR_EMAIL,
               VAR_RAZON_SOCIAL,
               VAR_ID_EMPLEADOR,
               VAR_DIRECCION_EMP,
               VAR_COMUNA_EMP,
               VAR_COD_REGION_EMP,
               VAR_TELEFONO_EMP,
               VAR_EMAIL_EMP,
               VAR_FEC_INICIO_REL,
               VAR_FEC_FIN_REL,
               VAR_TIPO_PRODUCTO,
               VAR_TIPO_FONDO_RECAUDACION,
               VAR_COD_AGENCIA,
               VAR_NOMBRE_EJECUTIVO,
               VAR_FECHA_MATERIALIZACION;

        EXIT WHEN VAR_CURSOR%NOTFOUND;

        IF VAR_CONTADOR = 0 THEN
          VAR_XML := VAR_XML || '<COMPROBANTE>' || '<ID_TIPO_TRAMITE>' ||
                     VAR_TIPO_TRAMITE || '</ID_TIPO_TRAMITE>' || '<NOMBRE>' ||
                     VAR_NOMBRE || '</NOMBRE>' || '<RUT>' || VAR_ID_PERSONA ||
                     '</RUT>' || '<DOMICILIO>' || VAR_DIRECCION ||
                     '</DOMICILIO>' || '<REGION>' || VAR_REGION ||
                     '</REGION>' || '<COMUNA>' || VAR_COMUNA || '</COMUNA>' ||
                     '<TELEFONO>' || VAR_TELEFONO || '</TELEFONO>' ||
                     '<EMAIL>' || VAR_EMAIL || '</EMAIL>' ||
                     '<TITULO_COLUMNA>Fecha Materialización</TITULO_COLUMNA>' ||
                     '<INFO_COLUMNA>' || VAR_FECHA_SOLICITUD ||
                     '</INFO_COLUMNA>' || '<ESTADO>' ||
                     VAR_ESTADO_SOLICITUD || '</ESTADO>' || '<VIA_INGRESO>' ||
                     VAR_VIA_INGRESO || '</VIA_INGRESO>' ||
                     '<FECHA_SOLICITUD>' || VAR_FECHA_SOLICITUD ||
                     '</FECHA_SOLICITUD>' || '<NRO_FOLIO>' || VAR_FOLIO ||
                     '</NRO_FOLIO>' || '<DESCRIPCION_TRAMITE>' ||
                     VAR_DESCRIPCION_SOLICITUD || '</DESCRIPCION_TRAMITE>' ||
                     '</COMPROBANTE>' || '<INFO_AFILIADO>' || '<NOMBRE>' ||
                     VAR_NOMBRE || '</NOMBRE>' || '<RUT>' || VAR_ID_PERSONA ||
                     '</RUT>' || '<DIRECCION>' || VAR_DIRECCION ||
                     '</DIRECCION>' || '<REGION>' || VAR_REGION ||
                     '</REGION>' || '<COMUNA>' || VAR_COMUNA || '</COMUNA>' ||
                     '<TELEFONO>' || VAR_TELEFONO || '</TELEFONO>' ||
                     '<EMAIL>' || VAR_EMAIL || '</EMAIL></INFO_AFILIADO>' ||
                     '<INFO_EMPLEADOR><RAZON_SOCIAL>' || VAR_RAZON_SOCIAL ||
                     '</RAZON_SOCIAL>' || '<ID_EMPLEADOR>' ||
                     VAR_ID_EMPLEADOR || '</ID_EMPLEADOR>' ||
                     '<DIRECCION_EMP>' || VAR_DIRECCION_EMP ||
                     '</DIRECCION_EMP>' || '<COD_REGION_EMP>' ||
                     VAR_COD_REGION_EMP || '</COD_REGION_EMP>' ||
                     '<COMUNA_EMP>' || VAR_COMUNA_EMP || '</COMUNA_EMP>' ||
                     '<TELEFONO_EMP>' || VAR_TELEFONO_EMP ||
                     '</TELEFONO_EMP>' || '<EMAIL_EMP>' || VAR_EMAIL_EMP ||
                     '</EMAIL_EMP>' || '<FEC_INICIO_REL>' ||
                     VAR_FEC_INICIO_REL || '</FEC_INICIO_REL>' ||
                     '<FEC_FIN_REL>' || VAR_FEC_FIN_REL ||
                     '</FEC_FIN_REL></INFO_EMPLEADOR><INFO_APERTURA>' ||
                     '<TIPO_PRODUCTO>' || VAR_TIPO_PRODUCTO ||
                     '</TIPO_PRODUCTO>' || '<TIPO_FONDO_RECAUDACION>' ||
                     VAR_TIPO_FONDO_RECAUDACION ||
                     '</TIPO_FONDO_RECAUDACION>' || '<COD_AGENCIA>' ||
                     VAR_COD_AGENCIA || '</COD_AGENCIA>' ||
                     '<NOMBRE_EJECUTIVO>' || VAR_NOMBRE_EJECUTIVO ||
                     '</NOMBRE_EJECUTIVO>' || '<FECHA_MATERIALIZACION>' ||
                     VAR_FECHA_MATERIALIZACION ||
                     '</FECHA_MATERIALIZACION>' || '</INFO_APERTURA>';

        END IF;

        VAR_CONTADOR := VAR_CONTADOR + 1;

      END LOOP;
      CLOSE VAR_CURSOR;

      VAR_XML := VAR_XML || '</COMPROBANTE_RESUMEN>';

    END IF;

    OPEN VOCUR_XML FOR
      SELECT VAR_XML AS XML FROM DUAL;

  END TRAMITE_INDEMNIZACION;

  PROCEDURE OBTENER_DIR_FONO_EMAIL_CLI(VINU_ID_NUM_CLIENTE IN NUMBER,
                                       VOVC_DIRECCION      OUT VARCHAR2,
                                       VOVC_REGION         OUT VARCHAR2,
                                       VOVC_COMUNA         OUT VARCHAR2,
                                       VOVC_TELEFONO       OUT VARCHAR2,
                                       VOVC_EMAIL          OUT VARCHAR2,
                                       VOVC_ID_CLIENTE     OUT VARCHAR2) IS
  BEGIN

    SELECT CL.ID_NUM_CLIENTE,
           NVL(D.CALLE, '--'),
           NVL(R.DESCRIPCION_LARGA, '--'),
           NVL(C.DESCRIPCION_LARGA, '--'),
           NVL(T.CODIGO_AREA, ' ') || '-' || NVL(T.TELEFONO, ' '),
           NVL(E.EMAIL, '--')

      INTO VOVC_ID_CLIENTE,
           VOVC_DIRECCION,
           VOVC_REGION,
           VOVC_COMUNA,
           VOVC_TELEFONO,
           VOVC_EMAIL

      FROM IDENTIFICACION_CLIENTE CL
      LEFT JOIN DIRECCION D
        ON D.ID_REF_DIRECCION = CL.ID_REF_DIRECCION
                           AND D.TITULAR_ENV_DOC = 1
                           AND D.TIPO_ESTADO_REFERENCIA = 1
      LEFT JOIN TIPO_COMUNA C
        ON C.TIPO_COMUNA = D.TIPO_COMUNA
      LEFT JOIN TIPO_REGION R
        ON R.TIPO_REGION = C.TIPO_REGION
      LEFT JOIN IDENTIFICACION_TELEFONO T
        ON T.ID_REF_DIRECCION = CL.ID_REF_DIRECCION
                                         AND T.TIPO_REFERENCIA = 1
                                         AND T.TIPO_ESTADO_REFERENCIA = 1
      LEFT JOIN IDENTIFICACION_EMAIL E
        ON E.ID_REF_DIRECCION = CL.ID_REF_DIRECCION
                                      AND E.TITULAR_CONTACTO = 1
                                      AND E.TIPO_ESTADO_REFERENCIA = 1
     WHERE CL.ID_NUM_CLIENTE = VINU_ID_NUM_CLIENTE;

  END OBTENER_DIR_FONO_EMAIL_CLI;

  PROCEDURE TRAMITE_MANDATO_DEPOSITO(VINU_ID_SOLICITUD   IN NUMBER, -- ID SOLICITUD
                                     VINU_ID_NUM_CLIENTE IN NUMBER, -- ID DEL CLIENTE
                                     VINU_TIPO_SOLICITUD IN NUMBER, -- TIPO SOLICITUD
                                     VIVC_TIPO_SALIDA    IN VARCHAR2, -- R RESUMEN   D DETALLADA
                                     VOCUR_XML           OUT TCURSOR) AS
    VAR_XML      CLOB;
    VAR_CURSOR   TCURSOR;
    VAR_CONTADOR NUMBER;
    -- INFO AFILIADO
    VAR_NOMBRE     VARCHAR2(80);
    VAR_ID_PERSONA VARCHAR(15);
    VAR_DIRECCION  VARCHAR2(200);
    VAR_REGION     VARCHAR2(80);
    VAR_COMUNA     VARCHAR2(60);
    VAR_TELEFONO   VARCHAR(15);
    VAR_EMAIL      VARCHAR(80);
    -- INFO MANDATO DEPOSITO
    VAR_FECHA_VIGENCIA    VARCHAR(10);
    VAR_FECHA_REVOCACION  VARCHAR(10);
    VAR_ESTADO_MANDATO    VARCHAR(50);
    VAR_TIPO_CUENTA_BANCO VARCHAR(100);
    VAR_BANCO             VARCHAR(200);
    VAR_NRO_CUENTA        VARCHAR(50);
    -- INFO REPORTE
    VAR_ID_REPORTE   VARCHAR2(4);
    VAR_ID_FORMATO   VARCHAR2(5);
    VAR_TIPO_TRAMITE VARCHAR2(2);
    -- INFO COMPROBANTE
    VAR_DESCRIPCION_SOLICITUD VARCHAR2(200);
    VAR_FOLIO                 VARCHAR2(20);
    VAR_FECHA_SOLICITUD       VARCHAR(12);
    VAR_ESTADO_SOLICITUD      VARCHAR(50);
    VAR_VIA_INGRESO           VARCHAR2(50);
    VAR_GENERICO              VARCHAR2(50);
  BEGIN
    VAR_CONTADOR := -1;

    IF VIVC_TIPO_SALIDA = 'D' THEN
      SELECT C.ID_REPORTE_DETALLE, C.ID_FORMATO_DETALLE
        INTO VAR_ID_REPORTE, VAR_ID_FORMATO
        FROM TIPO_MENU_CONSOLIDADO C
       WHERE C.ID_TIPO_SOLICITUD = VINU_TIPO_SOLICITUD;
    ELSE
      SELECT C.ID_REPORTE_COMPROBANTE,
             C.ID_FORMATO_COMPROBANTE,
             C.TIPO_TRAMITE
        INTO VAR_ID_REPORTE, VAR_ID_FORMATO, VAR_TIPO_TRAMITE
        FROM TIPO_MENU_CONSOLIDADO C
       WHERE C.ID_TIPO_SOLICITUD = VINU_TIPO_SOLICITUD;
    END IF;

    IF VIVC_TIPO_SALIDA = 'D' THEN

      RETIROS.PCK_CONSOLIDADO_TRAMITES.DETALLE_MANDATO_DEP(VINU_ID_SOLICITUD,
                                                           VAR_CURSOR);
      VAR_XML := '<MANDATO>' || '<Identificacion>' || '<IdReporte>' ||
                 VAR_ID_REPORTE || '</IdReporte>' || '<IdFormato>' ||
                 VAR_ID_FORMATO || '</IdFormato>' || '</Identificacion>';

      LOOP
        FETCH VAR_CURSOR
          INTO  VAR_NOMBRE,
                VAR_ID_PERSONA,
                VAR_FECHA_VIGENCIA,
                VAR_FECHA_REVOCACION,
                VAR_ESTADO_MANDATO,
                VAR_TIPO_CUENTA_BANCO,
                VAR_BANCO,
                VAR_NRO_CUENTA;

        EXIT WHEN VAR_CURSOR%NOTFOUND;

        IF VAR_CONTADOR = -1 THEN
          VAR_CONTADOR := 0;
        END IF;

        IF VAR_CONTADOR = 0 THEN

          OBTENER_DIR_FONO_EMAIL_CLI(VINU_ID_NUM_CLIENTE,
                                     VAR_DIRECCION,
                                     VAR_REGION,
                                     VAR_COMUNA,
                                     VAR_TELEFONO,
                                     VAR_EMAIL,
                                     VAR_GENERICO);

          SELECT DECODE(VAR_TELEFONO, '0-0', '--', VAR_TELEFONO)
            INTO VAR_TELEFONO
            FROM DUAL;

          VAR_XML := VAR_XML || '<INFO_AFILIADO>' || '<NOMBRE>' ||
                     VAR_NOMBRE || '</NOMBRE>' || '<RUT>' || VAR_ID_PERSONA ||
                     '</RUT>' || '<DOMICILIO>' || VAR_DIRECCION ||
                     '</DOMICILIO>' || '<COMUNA>' || VAR_COMUNA ||
                     '</COMUNA>' || '<REGION>' || VAR_REGION || '</REGION>' ||
                     '<TELEFONO>' || VAR_TELEFONO || '</TELEFONO>' ||
                     '<EMAIL>' || VAR_EMAIL || '</EMAIL>' ||
                     '</INFO_AFILIADO>';

        END IF;

        VAR_XML := VAR_XML || '<INF_MANDATO>' ||
                              '<FECHA_VIGENCIA>' || VAR_FECHA_VIGENCIA || '</FECHA_VIGENCIA>' ||
                              '<FECHA_REVOCACION>' || VAR_FECHA_REVOCACION || '</FECHA_REVOCACION>' ||
                              '<ESTADO_MANDATO>' || VAR_ESTADO_MANDATO || '</ESTADO_MANDATO>' ||
                              '<TIPO_CUENTA_BANCO>' || VAR_TIPO_CUENTA_BANCO || 'E</TIPO_CUENTA_BANCO>' ||
                              '<BANCO>' || VAR_BANCO || '</BANCO>' ||
                              '<NRO_CUENTA>' || VAR_NRO_CUENTA || '</NRO_CUENTA>' ||
                            '</INF_MANDATO>';

        VAR_CONTADOR := VAR_CONTADOR + 1;

      END LOOP;
      CLOSE VAR_CURSOR;

      VAR_XML := VAR_XML || '</MANDATO>';

    ELSE
      VAR_XML := '<COMPROBANTE_RESUMEN>' || '<Identificacion>' ||
                 '<IdReporte>' || VAR_ID_REPORTE || '</IdReporte>' ||
                 '<IdFormato>' || VAR_ID_FORMATO || '</IdFormato>' ||
                 '</Identificacion>';

      RETIROS.PCK_CONSOLIDADO_TRAMITES.DETALLE_MANDATO_DEP(VINU_ID_SOLICITUD,
                                                           VAR_CURSOR);

      SOLICITUDES.PCK_CONSOLIDADO_TRAMITES.RESUMEN_SOLICITUD(VINU_ID_SOLICITUD,
                                                             VAR_DESCRIPCION_SOLICITUD,
                                                             VAR_FOLIO,
                                                             VAR_FECHA_SOLICITUD,
                                                             VAR_ESTADO_SOLICITUD,
                                                             VAR_VIA_INGRESO);

      LOOP
        FETCH VAR_CURSOR
          INTO  VAR_NOMBRE,
                VAR_ID_PERSONA,
                VAR_FECHA_VIGENCIA,
                VAR_FECHA_REVOCACION,
                VAR_ESTADO_MANDATO,
                VAR_TIPO_CUENTA_BANCO,
                VAR_BANCO,
                VAR_NRO_CUENTA;

        EXIT WHEN VAR_CURSOR%NOTFOUND;

        IF VAR_CONTADOR = -1 THEN
          VAR_CONTADOR := 0;
        END IF;

        IF VAR_CONTADOR = 0 THEN

          OBTENER_DIR_FONO_EMAIL_CLI(VINU_ID_NUM_CLIENTE,
                                     VAR_DIRECCION,
                                     VAR_REGION,
                                     VAR_COMUNA,
                                     VAR_TELEFONO,
                                     VAR_EMAIL,
                                     VAR_GENERICO);

          SELECT DECODE(VAR_TELEFONO, '0-0', '--', VAR_TELEFONO)
            INTO VAR_TELEFONO
            FROM DUAL;

          VAR_XML := VAR_XML || '<COMPROBANTE>' || '<ID_TIPO_TRAMITE>' ||
                     VAR_TIPO_TRAMITE || '</ID_TIPO_TRAMITE>' || '<NOMBRE>' ||
                     VAR_NOMBRE || '</NOMBRE>' || '<RUT>' || VAR_ID_PERSONA ||
                     '</RUT>' || '<DOMICILIO>' || VAR_DIRECCION ||
                     '</DOMICILIO>' || '<REGION>' || VAR_REGION ||
                     '</REGION>' || '<COMUNA>' || VAR_COMUNA || '</COMUNA>' ||
                     '<TELEFONO>' || VAR_TELEFONO || '</TELEFONO>' ||
                     '<EMAIL>' || VAR_EMAIL || '</EMAIL>' ||
                     '<TITULO_COLUMNA>Fecha Solicitud</TITULO_COLUMNA>' ||
                     '<INFO_COLUMNA>' || VAR_FECHA_SOLICITUD ||
                     '</INFO_COLUMNA>' || '<ESTADO>' ||
                     VAR_ESTADO_SOLICITUD || '</ESTADO>' || '<VIA_INGRESO>' ||
                     VAR_VIA_INGRESO || '</VIA_INGRESO>' ||
                     '<FECHA_SOLICITUD>' || VAR_FECHA_SOLICITUD ||
                     '</FECHA_SOLICITUD>' || '<NRO_FOLIO>' || VAR_FOLIO ||
                     '</NRO_FOLIO>' || '<DESCRIPCION_TRAMITE>' ||
                     VAR_DESCRIPCION_SOLICITUD || '</DESCRIPCION_TRAMITE>' ||
                     '</COMPROBANTE>';

        END IF;

        VAR_XML := VAR_XML || '<MANDATO>' ||
                              '<FECHA_VIGENCIA>' || VAR_FECHA_VIGENCIA || '</FECHA_VIGENCIA>' ||
                              '<FECHA_REVOCACION>' || VAR_FECHA_REVOCACION || '</FECHA_REVOCACION>' ||
                              '<ESTADO_MANDATO>' || VAR_ESTADO_MANDATO || '</ESTADO_MANDATO>' ||
                              '<TIPO_CUENTA_BANCO>' || VAR_TIPO_CUENTA_BANCO || 'E</TIPO_CUENTA_BANCO>' ||
                              '<BANCO>' || VAR_BANCO || '</BANCO>' ||
                              '<NRO_CUENTA>' || VAR_NRO_CUENTA || '</NRO_CUENTA>' ||
                            '</MANDATO>';

        VAR_CONTADOR := VAR_CONTADOR + 1;

      END LOOP;
      CLOSE VAR_CURSOR;

      VAR_XML := VAR_XML || '</COMPROBANTE_RESUMEN>';
    END IF;

    IF VAR_CONTADOR = -1 THEN
      VAR_XML := '';
    END IF;

    OPEN VOCUR_XML FOR
      SELECT VAR_XML AS XML FROM DUAL;

  END TRAMITE_MANDATO_DEPOSITO;

  PROCEDURE TRAMITE_MANDATO_PAC(VINU_ID_SOLICITUD   IN NUMBER, -- ID SOLICITUD
                                VINU_ID_NUM_CLIENTE IN NUMBER, -- ID DEL CLIENTE
                                VINU_TIPO_SOLICITUD IN NUMBER, -- TIPO SOLICITUD
                                VIVC_TIPO_SALIDA    IN VARCHAR2, -- R RESUMEN   D DETALLADA
                                VOCUR_XML           OUT TCURSOR) AS
    VAR_XML      CLOB;
    VAR_CURSOR   TCURSOR;
    VAR_CONTADOR NUMBER;
    -- INFO MANDATO DEPOSITO
    VAR_NOMBRE_CLIENTE        VARCHAR2(100);
    VAR_RUT                   VARCHAR2(100);
    VAR_DOMICILIO             VARCHAR2(200);
    VAR_COMUNA                VARCHAR2(100);
    VAR_REGION                VARCHAR2(100);
    VAR_TELEFONO              VARCHAR2(100);
    VAR_EMAIL                 VARCHAR2(100);
    VAR_NUMERO_CUENTA         VARCHAR2(100);
    VAR_BANCO                 VARCHAR2(100);
    VAR_DESC_CUENTA           VARCHAR2(100);
    VAR_DIA_PAGO              VARCHAR2(100);
    VAR_FECHA_DESC            VARCHAR2(100);
    VAR_TIPO_CLIENTE          VARCHAR2(100);
    VAR_IND_SALUD             VARCHAR2(100);
    VAR_RIM                   VARCHAR2(100);
    VAR_COT_OBLI              VARCHAR2(100);
    VAR_TOTAL_COT_OBLI        VARCHAR2(100);
    VAR_COT_SALUD             VARCHAR2(100);
    VAR_TOTAL_COT_SALUD       VARCHAR2(100);
    VAR_MONTO_TOTAL           VARCHAR2(100);
    VAR_DESC_CUENTA_PROD      VARCHAR2(100);
    VAR_TRAMITE               VARCHAR2(100);
    VAR_ID_SOLICITUD          VARCHAR2(100);
    VAR_FECHA_SOLICITUD       VARCHAR2(100);
    VAR_FECHA_MATERIALIZACION VARCHAR2(100);
    VAR_DESCRIPCION           VARCHAR2(100);
    VAR_FOLIO                 VARCHAR2(20);
    -- INFO REPORTE
    VAR_ID_REPORTE   VARCHAR2(4);
    VAR_ID_FORMATO   VARCHAR2(5);
    VAR_TIPO_TRAMITE VARCHAR2(2);
  BEGIN
    VAR_CONTADOR := -1;

    IF VIVC_TIPO_SALIDA = 'D' THEN
      SELECT DISTINCT C.ID_REPORTE_DETALLE, C.ID_FORMATO_DETALLE
        INTO VAR_ID_REPORTE, VAR_ID_FORMATO
        FROM TIPO_MENU_CONSOLIDADO C
       WHERE C.ID_TIPO_SOLICITUD = VINU_TIPO_SOLICITUD;
    ELSE
      SELECT C.ID_REPORTE_COMPROBANTE,
             C.ID_FORMATO_COMPROBANTE,
             C.TIPO_TRAMITE
        INTO VAR_ID_REPORTE, VAR_ID_FORMATO, VAR_TIPO_TRAMITE
        FROM TIPO_MENU_CONSOLIDADO C
       WHERE C.ID_TIPO_SOLICITUD = VINU_TIPO_SOLICITUD;
    END IF;

    SOLICITUDES.PCK_CONSOLIDADO_TRAMITES.DETALLE_MANDATO_PAC(VINU_ID_SOLICITUD,
                                                             VAR_CURSOR);

    IF VIVC_TIPO_SALIDA = 'D' THEN

      VAR_XML := '<MANDATO>' || '<Identificacion>' || '<IdReporte>' ||
                 VAR_ID_REPORTE || '</IdReporte>' || '<IdFormato>' ||
                 VAR_ID_FORMATO || '</IdFormato>' || '</Identificacion>';

      LOOP
        FETCH VAR_CURSOR
          INTO  VAR_NOMBRE_CLIENTE,
                VAR_RUT,
                VAR_DOMICILIO,
                VAR_COMUNA,
                VAR_REGION,
                VAR_TELEFONO,
                VAR_EMAIL,
                VAR_NUMERO_CUENTA,
                VAR_BANCO,
                VAR_DESC_CUENTA,
                VAR_DIA_PAGO,
                VAR_FECHA_DESC,
                VAR_TIPO_CLIENTE,
                VAR_IND_SALUD,
                VAR_RIM,
                VAR_COT_OBLI,
                VAR_TOTAL_COT_OBLI,
                VAR_COT_SALUD,
                VAR_TOTAL_COT_SALUD,
                VAR_MONTO_TOTAL,
                VAR_DESC_CUENTA_PROD,
                VAR_TRAMITE,
                VAR_ID_SOLICITUD,
                VAR_FECHA_SOLICITUD,
                VAR_FECHA_MATERIALIZACION,
                VAR_DESCRIPCION,
                VAR_FOLIO;

        EXIT WHEN VAR_CURSOR%NOTFOUND;

        IF VAR_CONTADOR = -1 THEN
          VAR_CONTADOR := 0;
        END IF;

        VAR_XML := VAR_XML || '<INFO_MANDATO>' ||
                                  '<NOMBRE>' || VAR_NOMBRE_CLIENTE || '</NOMBRE>' ||
                                  '<RUT>' || VAR_RUT || '</RUT>' ||
                                  '<DOMICILIO>' || VAR_DOMICILIO || '</DOMICILIO>' ||
                                  '<COMUNA>' || VAR_COMUNA || '</COMUNA>' ||
                                  '<REGION>' || VAR_REGION || '</REGION>' ||
                   '<TELEFONO>' || VAR_TELEFONO || '</TELEFONO>' ||
                   '<EMAIL>' || VAR_EMAIL || '</EMAIL>' ||
                                  '<VAR_NUMERO_CUENTA>' || VAR_NUMERO_CUENTA || '</VAR_NUMERO_CUENTA>' ||
                                  '<VAR_BANCO>' || VAR_BANCO || '</VAR_BANCO>' ||
                                  '<VAR_DESC_CUENTA>' || VAR_DESC_CUENTA || '</VAR_DESC_CUENTA>' ||
                                  '<VAR_DIA_PAGO>' || VAR_DIA_PAGO || '</VAR_DIA_PAGO>' ||
                                  '<VAR_FECHA_DESC>' || VAR_FECHA_DESC || '</VAR_FECHA_DESC>' ||
                                  '<VAR_TIPO_CLIENTE>' || VAR_TIPO_CLIENTE || '</VAR_TIPO_CLIENTE>' ||
                                  '<VAR_IND_SALUD>' || VAR_IND_SALUD || '</VAR_IND_SALUD>' ||
                                  '<VAR_RIM>' || VAR_RIM || '</VAR_RIM>' ||
                                  '<VAR_COT_OBLI>' || VAR_COT_OBLI || '</VAR_COT_OBLI>' ||
                                  '<VAR_TOTAL_COT_OBLI>' || VAR_TOTAL_COT_OBLI || '</VAR_TOTAL_COT_OBLI>' ||
                                  '<VAR_COT_SALUD>' || VAR_COT_SALUD || '</VAR_COT_SALUD>' ||
                                  '<VAR_TOTAL_COT_SALUD>' || VAR_TOTAL_COT_SALUD || '</VAR_TOTAL_COT_SALUD>' ||
                                  '<VAR_MONTO_TOTAL>' || VAR_MONTO_TOTAL || '</VAR_MONTO_TOTAL>' ||
                                  '<VAR_DESC_CUENTA>' || VAR_DESC_CUENTA_PROD || '</VAR_DESC_CUENTA>' ||
                                  '<VAR_TRAMITE>' || VAR_TRAMITE || '</VAR_TRAMITE>' ||
                                  '<VAR_ID_SOLICITUD>' || VAR_ID_SOLICITUD || '</VAR_ID_SOLICITUD>' ||
                                  '<VAR_FECHA_SOLICITUD>' || VAR_FECHA_SOLICITUD || '</VAR_FECHA_SOLICITUD>' ||
                                  '<VAR_FECHA_MATERIALIZACION>' || VAR_FECHA_MATERIALIZACION || '</VAR_FECHA_MATERIALIZACION>' ||
                                  '<VAR_DESCRIPCION>' || VAR_DESCRIPCION || '</VAR_DESCRIPCION>' ||
                   '</INFO_MANDATO>';

        VAR_CONTADOR := VAR_CONTADOR + 1;

      END LOOP;
      CLOSE VAR_CURSOR;

      VAR_XML := VAR_XML || '</MANDATO>';
    ELSE
       VAR_XML := '<COMPROBANTE_RESUMEN>' || '<Identificacion>' || '<IdReporte>' ||
                 VAR_ID_REPORTE || '</IdReporte>' || '<IdFormato>' ||
                 VAR_ID_FORMATO || '</IdFormato>' || '</Identificacion>';

      LOOP
        FETCH VAR_CURSOR
          INTO  VAR_NOMBRE_CLIENTE,
                VAR_RUT,
                VAR_DOMICILIO,
                VAR_COMUNA,
                VAR_REGION,
                VAR_TELEFONO,
                VAR_EMAIL,

                VAR_NUMERO_CUENTA,
                VAR_BANCO,
                VAR_DESC_CUENTA,
                VAR_DIA_PAGO,
                VAR_FECHA_DESC,
                VAR_TIPO_CLIENTE,
                VAR_IND_SALUD,
                VAR_RIM,
                VAR_COT_OBLI,
                VAR_TOTAL_COT_OBLI,
                VAR_COT_SALUD,
                VAR_TOTAL_COT_SALUD,
                VAR_MONTO_TOTAL,
                VAR_DESC_CUENTA_PROD,

                VAR_TRAMITE,
                VAR_ID_SOLICITUD,
                VAR_FECHA_SOLICITUD,
                VAR_FECHA_MATERIALIZACION,
                VAR_DESCRIPCION,
                VAR_FOLIO;

        EXIT WHEN VAR_CURSOR%NOTFOUND;

        IF VAR_CONTADOR = -1 THEN
          VAR_CONTADOR := 0;
        END IF;

        VAR_XML := VAR_XML ||
                                 '<COMPROBANTE>' ||
                                     '<ID_TIPO_TRAMITE>' || VAR_TIPO_TRAMITE || '</ID_TIPO_TRAMITE>' ||
                                     '<NOMBRE>' || VAR_NOMBRE_CLIENTE || '</NOMBRE>' ||
                                     '<RUT>' || VAR_RUT || '</RUT>' ||
                                     '<DOMICILIO>' || VAR_DOMICILIO || '</DOMICILIO>' ||
                                     '<REGION>' || VAR_REGION || '</REGION>' ||
                                     '<COMUNA>' || VAR_COMUNA || '</COMUNA>' ||
                   '<TELEFONO>' || VAR_TELEFONO || '</TELEFONO>' ||
                   '<EMAIL>' || VAR_EMAIL || '</EMAIL>' ||
                   '<TITULO_COLUMNA>Fecha Materialización</TITULO_COLUMNA>' ||
                                     '<INFO_COLUMNA>' || VAR_FECHA_MATERIALIZACION || '</INFO_COLUMNA>' ||
                                     '<ESTADO>' || VAR_DESCRIPCION || '</ESTADO>' ||
                                     '<VIA_INGRESO>' || '--' || '</VIA_INGRESO>' ||
                                     '<FECHA_SOLICITUD>' || VAR_FECHA_SOLICITUD || '</FECHA_SOLICITUD>' ||
                   '<NRO_FOLIO>' || VAR_FOLIO || '</NRO_FOLIO>' ||
                                     '<DESCRIPCION_TRAMITE>' || VAR_DESCRIPCION || '</DESCRIPCION_TRAMITE>' ||
                     '</COMPROBANTE>';

        VAR_XML := VAR_XML || '<INFO_MANDATO>' ||
                                  '<VAR_NUMERO_CUENTA>' || VAR_NUMERO_CUENTA || '</VAR_NUMERO_CUENTA>' ||
                   '<VAR_BANCO>' || VAR_BANCO || '</VAR_BANCO>' ||
                                  '<VAR_DESC_CUENTA>' || VAR_DESC_CUENTA || '</VAR_DESC_CUENTA>' ||
                                  '<VAR_DIA_PAGO>' || VAR_DIA_PAGO || '</VAR_DIA_PAGO>' ||
                                  '<VAR_FECHA_DESC>' || VAR_FECHA_DESC || '</VAR_FECHA_DESC>' ||
                                  '<VAR_TIPO_CLIENTE>' || VAR_TIPO_CLIENTE || '</VAR_TIPO_CLIENTE>' ||
                                  '<VAR_IND_SALUD>' || VAR_IND_SALUD || '</VAR_IND_SALUD>' ||
                                  '<VAR_RIM>' || VAR_RIM || '</VAR_RIM>' ||
                                  '<VAR_COT_OBLI>' || VAR_COT_OBLI || '</VAR_COT_OBLI>' ||
                                  '<VAR_TOTAL_COT_OBLI>' || VAR_TOTAL_COT_OBLI || '</VAR_TOTAL_COT_OBLI>' ||
                                  '<VAR_COT_SALUD>' || VAR_COT_SALUD || '</VAR_COT_SALUD>' ||
                                  '<VAR_TOTAL_COT_SALUD>' || VAR_TOTAL_COT_SALUD || '</VAR_TOTAL_COT_SALUD>' ||
                                  '<VAR_MONTO_TOTAL>' || VAR_MONTO_TOTAL || '</VAR_MONTO_TOTAL>' ||
                                  '<VAR_DESC_CUENTA>' || VAR_DESC_CUENTA_PROD || '</VAR_DESC_CUENTA>' ||
                               '</INFO_MANDATO>';

        VAR_CONTADOR := VAR_CONTADOR + 1;

      END LOOP;
      CLOSE VAR_CURSOR;

      VAR_XML := VAR_XML || '</COMPROBANTE_RESUMEN>';
    END IF;

    IF VAR_CONTADOR = -1 THEN
      VAR_XML := '';
    END IF;

    OPEN VOCUR_XML FOR
      SELECT VAR_XML AS XML FROM DUAL;

  END TRAMITE_MANDATO_PAC;

  PROCEDURE TRAMITE_APERTURA_CAV(VINU_ID_SOLICITUD   IN NUMBER, -- ID SOLICITUD
                                 VINU_ID_NUM_CLIENTE IN NUMBER, -- ID DEL CLIENTE
                                 VINU_TIPO_SOLICITUD IN NUMBER, -- TIPO SOLICITUD
                                 VIVC_TIPO_SALIDA    IN VARCHAR2, -- R RESUMEN   D DETALLADA
                                 VOCUR_XML           OUT TCURSOR) AS
    VAR_XML      CLOB;
    VAR_CURSOR   TCURSOR;
    VAR_CONTADOR NUMBER;

    VAR_ID_SOLICITUD       VARCHAR2(100);
    VAR_RUT                VARCHAR2(100);
    VAR_NOMBRE_CLIENTE     VARCHAR2(100);
    VAR_FECHA_NACIMIENTO   VARCHAR2(100);
    VAR_DOMICILIO          VARCHAR2(200);
    VAR_REGION             VARCHAR2(100);
    VAR_COMUNA             VARCHAR2(100);
    VAR_CIUDAD             VARCHAR2(100);
    VAR_TELEFONO           VARCHAR2(100);
    VAR_EMAIL              VARCHAR2(100);
    VAR_REGIMEN_TRIBUTARIO VARCHAR2(100);

    VAR_FONDO1        VARCHAR2(100);
    VAR_TIPO_FONDO1   VARCHAR2(100);
    VAR_DISTRIBUCION1 VARCHAR2(100);
    VAR_FONDO2        VARCHAR2(100);
    VAR_TIPO_FONDO2   VARCHAR2(100);
    VAR_DISTRIBUCION2 VARCHAR2(100);
    -- INFO REPORTE
    VAR_ID_REPORTE   VARCHAR2(4);
    VAR_ID_FORMATO   VARCHAR2(5);
    VAR_TIPO_TRAMITE VARCHAR2(2);

  BEGIN
    VAR_CONTADOR := -1;

    IF VIVC_TIPO_SALIDA = 'D' THEN
      SELECT DISTINCT C.ID_REPORTE_DETALLE, C.ID_FORMATO_DETALLE
        INTO VAR_ID_REPORTE, VAR_ID_FORMATO
        FROM TIPO_MENU_CONSOLIDADO C
       WHERE C.ID_TIPO_SOLICITUD = VINU_TIPO_SOLICITUD;
    ELSE
      SELECT C.ID_REPORTE_COMPROBANTE,
             C.ID_FORMATO_COMPROBANTE,
             C.TIPO_TRAMITE
        INTO VAR_ID_REPORTE, VAR_ID_FORMATO, VAR_TIPO_TRAMITE
        FROM TIPO_MENU_CONSOLIDADO C
       WHERE C.ID_TIPO_SOLICITUD = VINU_TIPO_SOLICITUD;
    END IF;

    SOLICITUDES.PCK_CONSOLIDADO_TRAMITES.DETALLE_APERTURA_CAV(VINU_ID_SOLICITUD,
                                                              VAR_CURSOR);

    IF VIVC_TIPO_SALIDA = 'D' THEN

      VAR_XML := '<ComprobanteDepositoApertura>' || '<Identificacion>' || '<IdReporte>' ||
                 VAR_ID_REPORTE || '</IdReporte>' || '<IdFormato>' ||
                 VAR_ID_FORMATO || '</IdFormato>' || '</Identificacion>';

      LOOP
        FETCH VAR_CURSOR
        INTO    VAR_ID_SOLICITUD,
                VAR_RUT,
                VAR_NOMBRE_CLIENTE,
                VAR_FECHA_NACIMIENTO,
                VAR_DOMICILIO,
                VAR_REGION,
                VAR_COMUNA,
                VAR_CIUDAD,
                VAR_TELEFONO,
                VAR_EMAIL,
                VAR_REGIMEN_TRIBUTARIO,
                VAR_FONDO1,
                VAR_TIPO_FONDO1,
                VAR_DISTRIBUCION1,
                VAR_FONDO2,
                VAR_TIPO_FONDO2,
                VAR_DISTRIBUCION2;
        EXIT WHEN VAR_CURSOR%NOTFOUND;

        IF VAR_CONTADOR = -1 THEN
          VAR_CONTADOR := 0;
        END IF;

        VAR_XML := VAR_XML || '<TipoSolicitud>APERTURA</TipoSolicitud>
                              <Cliente>
                                <Rut>'|| VAR_RUT ||'</Rut>
                                <NombreCompleto>'|| VAR_NOMBRE_CLIENTE ||'</NombreCompleto>
                                <Direccion>'|| VAR_DOMICILIO ||'</Direccion>
                                <Comuna>'|| VAR_COMUNA ||'</Comuna>
                                <Ciudad>'|| VAR_CIUDAD ||'</Ciudad>
                                <Region>'|| VAR_REGION ||'</Region>
                              </Cliente>
                              <Cuentas>
                                <Cuenta>
                                  <TipoCuenta>'|| VAR_FONDO1 ||'</TipoCuenta>
                                  <TipoFondo>'||VAR_TIPO_FONDO1||'</TipoFondo>
                                  <DistribucionSaldo>'|| VAR_DISTRIBUCION1 ||'</DistribucionSaldo>
                                </Cuenta>
                                <Cuenta>
                                  <TipoCuenta>'|| VAR_FONDO2 ||'</TipoCuenta>
                                  <TipoFondo>'|| VAR_TIPO_FONDO2 ||'</TipoFondo>
                                  <DistribucionSaldo>'|| VAR_DISTRIBUCION2 ||'</DistribucionSaldo>
                                </Cuenta>
                              </Cuentas>
                              <Regimen>'|| VAR_REGIMEN_TRIBUTARIO ||'</Regimen>
                              <Monto>0</Monto>';

        VAR_CONTADOR := VAR_CONTADOR + 1;

      END LOOP;
      CLOSE VAR_CURSOR;

      VAR_XML := VAR_XML || '</ComprobanteDepositoApertura>';

    ELSE

       VAR_XML := '<COMPROBANTE_RESUMEN>' || '<Identificacion>' || '<IdReporte>' ||
                 VAR_ID_REPORTE || '</IdReporte>' || '<IdFormato>' ||
                 VAR_ID_FORMATO || '</IdFormato>' || '</Identificacion>';

      LOOP
        FETCH VAR_CURSOR
           INTO VAR_ID_SOLICITUD,
                VAR_RUT,
                VAR_NOMBRE_CLIENTE,
                VAR_FECHA_NACIMIENTO,
                VAR_DOMICILIO,
                VAR_REGION,
                VAR_COMUNA,
                VAR_CIUDAD,
                VAR_TELEFONO,
                VAR_EMAIL,
                VAR_REGIMEN_TRIBUTARIO,
                VAR_FONDO1,
                VAR_TIPO_FONDO1,
                VAR_DISTRIBUCION1,
                VAR_FONDO2,
                VAR_TIPO_FONDO2,
                VAR_DISTRIBUCION2;

        EXIT WHEN VAR_CURSOR%NOTFOUND;

        IF VAR_CONTADOR = -1 THEN
          VAR_CONTADOR := 0;
        END IF;

        VAR_XML := VAR_XML ||
                                 '<COMPROBANTE>' ||
                                     '<ID_TIPO_TRAMITE>' || VAR_TIPO_TRAMITE || '</ID_TIPO_TRAMITE>' ||
                                     '<NOMBRE>' || VAR_NOMBRE_CLIENTE || '</NOMBRE>' ||
                                     '<RUT>' || VAR_RUT || '</RUT>' ||
                                     '<DOMICILIO>' || VAR_DOMICILIO || '</DOMICILIO>' ||
                                     '<REGION>' || VAR_REGION || '</REGION>' ||
                                     '<COMUNA>' || VAR_COMUNA || '</COMUNA>' ||
                   '<TELEFONO>' || VAR_TELEFONO || '</TELEFONO>' ||
                                     '<EMAIL>' || VAR_EMAIL || '</EMAIL>' ||
                                     '</COMPROBANTE>';

        VAR_XML := VAR_XML || '<INFO_APERTURA_CAV>' ||
                                  '<VAR_REGIMEN_TRIBUTARIO>' || VAR_REGIMEN_TRIBUTARIO || '</VAR_REGIMEN_TRIBUTARIO>' ||
                                  '<VAR_FONDO1>' || VAR_FONDO1 || '</VAR_FONDO1>' ||
                                  '<VAR_TIPO_FONDO1>' || VAR_TIPO_FONDO1 || '</VAR_TIPO_FONDO1>' ||
                                  '<VAR_DISTRIBUCION1>' || VAR_DISTRIBUCION1 || '</VAR_DISTRIBUCION1>' ||
                                   '<VAR_FONDO2>' || VAR_FONDO2 || '</VAR_FONDO2>' ||
                                  '<VAR_TIPO_FONDO2>' || VAR_TIPO_FONDO2 || '</VAR_TIPO_FONDO2>' ||
                                  '<VAR_DISTRIBUCION2>' || VAR_DISTRIBUCION2 || '</VAR_DISTRIBUCION2>' ||
                                 '</INFO_APERTURA_CAV>';

        VAR_CONTADOR := VAR_CONTADOR + 1;

      END LOOP;
      CLOSE VAR_CURSOR;

      VAR_XML := VAR_XML || '</COMPROBANTE_RESUMEN>';
    END IF;

    IF VAR_CONTADOR = -1 THEN
      VAR_XML := '';
    END IF;

    OPEN VOCUR_XML FOR
      SELECT VAR_XML AS XML FROM DUAL;

  END TRAMITE_APERTURA_CAV;

  PROCEDURE TRAMITE_TRASPASO_INGRESO_CAV(VINU_ID_SOLICITUD   IN NUMBER, -- ID SOLICITUD
                                         VINU_ID_NUM_CLIENTE IN NUMBER, -- ID DEL CLIENTE
                                         VINU_TIPO_SOLICITUD IN NUMBER, -- TIPO SOLICITUD
                                         VIVC_TIPO_SALIDA    IN VARCHAR2, -- R RESUMEN   D DETALLADA
                                         VOCUR_XML           OUT TCURSOR) AS
    VAR_XML      CLOB;
    VAR_CURSOR   TCURSOR;
    VAR_CONTADOR NUMBER;

    VAR_ID_SOLICITUD   VARCHAR2(100);
    VAR_RUT            VARCHAR2(100);
    VAR_NOMBRE_CLIENTE VARCHAR2(100);
    VAR_REGION         VARCHAR2(100);
    VAR_COMUNA         VARCHAR2(100);
    VAR_DOMICILIO      VARCHAR2(100);
    --VAR_CIUDAD                     VARCHAR2(100);
    VAR_TELEFONO           VARCHAR2(100);
    VAR_EMAIL              VARCHAR2(100);
    VAR_FOLIO              VARCHAR2(100);
    VAR_FECHA_SOLICITUD    VARCHAR2(100);
    VAR_FECHA_SUSCRIPCION  VARCHAR2(100);
    VAR_FECHA_NOTIFICACION VARCHAR2(100);
    VAR_ESTADO             VARCHAR2(100);
    VAR_MOTIVO_RECHAZO     VARCHAR2(100);
    VAR_INST_ORIGEN        VARCHAR2(100);
    VAR_INST_RUT_ORIGEN    VARCHAR2(100);
    VAR_TIPO_PRODUCTO      VARCHAR2(100);
    VAR_MONTO              VARCHAR2(100);
    VAR_FONDO_DESTINO1     VARCHAR2(100);
    VAR_FONDO_DESTINO2     VARCHAR2(100);

    VAR_FONDO_DESTINO1_PORC VARCHAR2(100);
    VAR_FONDO_DESTINO2_PORC VARCHAR2(100);

    VAR_REGIMEN_TRIBUTARIO_1  VARCHAR2(100);
    VAR_MONTO_1               VARCHAR2(100);
    VAR_TIPOSALDO_1           VARCHAR2(100);
    VAR_TIPOUNIDAD_1          VARCHAR2(100);
    VAR_REGIMEN_TRIBUTARIO_2  VARCHAR2(100);
    VAR_MONTO_2               VARCHAR2(100);
    VAR_TIPOSALDO_2           VARCHAR2(100);
    VAR_TIPOUNIDAD_2          VARCHAR2(100);
    VAR_REGIMEN_TRIBUTARIO_3  VARCHAR2(100);
    VAR_MONTO_3               VARCHAR2(100);
    VAR_TIPOSALDO_3           VARCHAR2(100);
    VAR_TIPOUNIDAD_3          VARCHAR2(100);
    VAR_REGIMEN_TRIBUTARIO_4  VARCHAR2(100);
    VAR_MONTO_4               VARCHAR2(100);
    VAR_TIPOSALDO_4           VARCHAR2(100);
    VAR_TIPOUNIDAD_4          VARCHAR2(100);
    VAR_REGIMEN_TRIBUTARIO_5  VARCHAR2(100);
    VAR_MONTO_5               VARCHAR2(100);
    VAR_TIPOSALDO_5           VARCHAR2(100);
    VAR_TIPOUNIDAD_5          VARCHAR2(100);
    VAR_REGIMEN_TRIBUTARIO_6  VARCHAR2(100);
    VAR_MONTO_6               VARCHAR2(100);
    VAR_TIPOSALDO_6           VARCHAR2(100);
    VAR_TIPOUNIDAD_6          VARCHAR2(100);
    VAR_REGIMEN_TRIBUTARIO_7  VARCHAR2(100);
    VAR_MONTO_7               VARCHAR2(100);
    VAR_TIPOSALDO_7           VARCHAR2(100);
    VAR_TIPOUNIDAD_7          VARCHAR2(100);
    VAR_REGIMEN_TRIBUTARIO_8  VARCHAR2(100);
    VAR_MONTO_8               VARCHAR2(100);
    VAR_TIPOSALDO_8           VARCHAR2(100);
    VAR_TIPOUNIDAD_8          VARCHAR2(100);
    VAR_REGIMEN_TRIBUTARIO_9  VARCHAR2(100);
    VAR_MONTO_9               VARCHAR2(100);
    VAR_TIPOSALDO_9           VARCHAR2(100);
    VAR_TIPOUNIDAD_9          VARCHAR2(100);
    VAR_REGIMEN_TRIBUTARIO_10 VARCHAR2(100);
    VAR_MONTO_10              VARCHAR2(100);
    VAR_TIPOSALDO_10          VARCHAR2(100);
    VAR_TIPOUNIDAD_10         VARCHAR2(100);
    VAR_REGIMEN_TRIBUTARIO_11 VARCHAR2(100);
    VAR_MONTO_11              VARCHAR2(100);
    VAR_TIPOSALDO_11          VARCHAR2(100);
    VAR_TIPOUNIDAD_11         VARCHAR2(100);
    VAR_REGIMEN_TRIBUTARIO_12 VARCHAR2(100);
    VAR_MONTO_12              VARCHAR2(100);
    VAR_TIPOSALDO_12          VARCHAR2(100);
    VAR_TIPOUNIDAD_12         VARCHAR2(100);

    -- INFO REPORTE
    VAR_ID_REPORTE      VARCHAR2(4);
    VAR_ID_FORMATO      VARCHAR2(5);
    VAR_TIPO_TRAMITE    VARCHAR2(2);
    VC_TIPO_SOL_ANTIGUA NUMBER;

  BEGIN

    VAR_CONTADOR := -1;

    IF VIVC_TIPO_SALIDA = 'D' THEN
      SELECT DISTINCT C.ID_REPORTE_DETALLE, C.ID_FORMATO_DETALLE
        INTO VAR_ID_REPORTE, VAR_ID_FORMATO
        FROM TIPO_MENU_CONSOLIDADO C
       WHERE C.ID_TIPO_SOLICITUD = VINU_TIPO_SOLICITUD;
    ELSE
      SELECT C.ID_REPORTE_COMPROBANTE,
             C.ID_FORMATO_COMPROBANTE,
             C.TIPO_TRAMITE
        INTO VAR_ID_REPORTE, VAR_ID_FORMATO, VAR_TIPO_TRAMITE
        FROM TIPO_MENU_CONSOLIDADO C
       WHERE C.ID_TIPO_SOLICITUD = VINU_TIPO_SOLICITUD;
    END IF;

         SELECT COUNT(1)  INTO VC_TIPO_SOL_ANTIGUA FROM SOLICITUDES.SOLICITUD SOLI
         WHERE ExistsNode(SOLI.DETALLESOLICITUD,'/FormularioTICAV/Cuentas/Cuenta/Fondos/Fondo')=1
       AND SOLI.ID_SOLICITUD = VINU_ID_SOLICITUD;

    IF VC_TIPO_SOL_ANTIGUA = 1 THEN
      SOLICITUDES.PCK_CONSOLIDADO_TRAMITES.DETALLE_TRASPASO_ING_CAV_OLD(VINU_ID_SOLICITUD,
                                                                        VAR_CURSOR);
    ELSE

      SOLICITUDES.PCK_CONSOLIDADO_TRAMITES.DETALLE_TRASPASO_INGRESO_CAV(VINU_ID_SOLICITUD,
                                                                        VAR_CURSOR);
    END IF;

    IF VIVC_TIPO_SALIDA = 'D' THEN

      IF VC_TIPO_SOL_ANTIGUA = 0 THEN
            VAR_XML := '<ComprobanteTraspasoCAV>' || '<Identificacion>' || '<IdReporte>' ||
                   VAR_ID_REPORTE || '</IdReporte>' || '<IdFormato>' ||
                   VAR_ID_FORMATO || '</IdFormato>' || '</Identificacion>';
      ELSE
        VAR_ID_FORMATO := 1286; --FORMATO NUEVO PARA LA ESTRUCTURA ANTIGUA DE LA SOLICITUD
             VAR_XML := '<ComprobanteTraspasoCAV>' || '<Identificacion>' || '<IdReporte>' ||
                       VAR_ID_REPORTE || '</IdReporte>' || '<IdFormato>' ||
                       VAR_ID_FORMATO || '</IdFormato>' || '</Identificacion>';
      END IF;

      IF VC_TIPO_SOL_ANTIGUA = 0 THEN
        LOOP
          FETCH VAR_CURSOR
              INTO    VAR_ID_SOLICITUD,
                      VAR_RUT,
                      VAR_NOMBRE_CLIENTE,
                      VAR_REGION,
                      VAR_COMUNA,
                      VAR_DOMICILIO,
          --    VAR_CIUDAD,
                      VAR_TELEFONO,
                      VAR_EMAIL,
                      VAR_FOLIO,
                      VAR_FECHA_SOLICITUD,
                      VAR_FECHA_SUSCRIPCION,
                      VAR_FECHA_NOTIFICACION,
                      VAR_ESTADO,
                      VAR_MOTIVO_RECHAZO,
                      VAR_INST_ORIGEN,
                      VAR_INST_RUT_ORIGEN,
                      VAR_TIPO_PRODUCTO,
          --VAR_MONTO,
                      VAR_FONDO_DESTINO1,
                      VAR_FONDO_DESTINO2,
                      VAR_FONDO_DESTINO1_PORC,

                      VAR_FONDO_DESTINO2_PORC,

                      VAR_REGIMEN_TRIBUTARIO_1,
                      VAR_MONTO_1,
                      VAR_TIPOSALDO_1,
                      VAR_TIPOUNIDAD_1,
                      VAR_REGIMEN_TRIBUTARIO_2,
                      VAR_MONTO_2,
                      VAR_TIPOSALDO_2,
                      VAR_TIPOUNIDAD_2,
                      VAR_REGIMEN_TRIBUTARIO_3,
                      VAR_MONTO_3,
                      VAR_TIPOSALDO_3,
                     VAR_TIPOUNIDAD_3,
                      VAR_REGIMEN_TRIBUTARIO_4,
                      VAR_MONTO_4,
                      VAR_TIPOSALDO_4,
                      VAR_TIPOUNIDAD_4,
                      VAR_REGIMEN_TRIBUTARIO_5,
                      VAR_MONTO_5,
                      VAR_TIPOSALDO_5,
                      VAR_TIPOUNIDAD_5,
                      VAR_REGIMEN_TRIBUTARIO_6,
                      VAR_MONTO_6,
                      VAR_TIPOSALDO_6,
                      VAR_TIPOUNIDAD_6,
                      VAR_REGIMEN_TRIBUTARIO_7,
                      VAR_MONTO_7,
                      VAR_TIPOSALDO_7,
                      VAR_TIPOUNIDAD_7,
                      VAR_REGIMEN_TRIBUTARIO_8,
                      VAR_MONTO_8,
                      VAR_TIPOSALDO_8,
                      VAR_TIPOUNIDAD_8,
                      VAR_REGIMEN_TRIBUTARIO_9,
                      VAR_MONTO_9,
                      VAR_TIPOSALDO_9,
                      VAR_TIPOUNIDAD_9,
                      VAR_REGIMEN_TRIBUTARIO_10,
                      VAR_MONTO_10,
                      VAR_TIPOSALDO_10,
                      VAR_TIPOUNIDAD_10,
                      VAR_REGIMEN_TRIBUTARIO_11,
                      VAR_MONTO_11,
                      VAR_TIPOSALDO_11,
                      VAR_TIPOUNIDAD_11,
                      VAR_REGIMEN_TRIBUTARIO_12,
                      VAR_MONTO_12,
                      VAR_TIPOSALDO_12,
                      VAR_TIPOUNIDAD_12;

          EXIT WHEN VAR_CURSOR%NOTFOUND;

          IF VAR_CONTADOR = -1 THEN
            VAR_CONTADOR := 0;
          END IF;

          VAR_XML := VAR_XML || '<TipoSolicitud>TRASPASO INGRESO CAV </TipoSolicitud>
                                    <Cliente>
                                      <Rut>'|| VAR_RUT ||'</Rut>
                                      <NombreCompleto>'|| VAR_NOMBRE_CLIENTE ||'</NombreCompleto>
                                      <Comuna>'|| VAR_COMUNA ||'</Comuna>
                                      <Direccion>' || VAR_DOMICILIO || '</Direccion>
                                      <Region>'|| VAR_REGION ||'</Region>
                                      <Telefono>' || VAR_TELEFONO || '</Telefono>
                                      <Email>' || VAR_EMAIL || '</Email>
                                    </Cliente>' || '
                                    <Traspasos>' || '


                                      <RutInstOrigen>'|| VAR_INST_RUT_ORIGEN ||'</RutInstOrigen>
                                      <NomInstOrigen>'|| VAR_INST_ORIGEN ||'</NomInstOrigen>
                                      <TipoProducto>' || VAR_TIPO_PRODUCTO ||'</TipoProducto>
                                      <FondoDestino1>' || VAR_FONDO_DESTINO1 || '</FondoDestino1>
                                      <FondoDestino2>' || VAR_FONDO_DESTINO2 || '</FondoDestino2>'||'

                                      <Fondo_Destino1_Porc>' || VAR_FONDO_DESTINO1_PORC || '</Fondo_Destino1_Porc>
                                      <Fondo_Destino2_Porc>' || VAR_FONDO_DESTINO2_PORC || '</Fondo_Destino2_Porc>
                                    
                                                                           


                                      <Traspaso>' || '
                                       <Regimen>'|| VAR_REGIMEN_TRIBUTARIO_1 ||'</Regimen>
                                       <Monto>'|| VAR_MONTO_1 ||'</Monto>
                                       <Tiposaldo>'|| VAR_TIPOSALDO_1 ||'</Tiposaldo>
                                       <Tipounidad>'|| VAR_TIPOUNIDAD_1 ||'</Tipounidad>'||
                                       '</Traspaso>'||'
                                       <Traspaso>' || '
                                       <Regimen>'|| VAR_REGIMEN_TRIBUTARIO_2 ||'</Regimen>
                                       <Monto>'|| VAR_MONTO_2 ||'</Monto>
                                       <Tiposaldo>'|| VAR_TIPOSALDO_2 ||'</Tiposaldo>
                                       <Tipounidad>'|| VAR_TIPOUNIDAD_2 ||'</Tipounidad>'||
                                        '</Traspaso>'||'
                                       <Traspaso>' || '
                                       <Regimen>'|| VAR_REGIMEN_TRIBUTARIO_3 ||'</Regimen>
                                       <Monto>'|| VAR_MONTO_3 ||'</Monto>
                                       <Tiposaldo>'|| VAR_TIPOSALDO_3 ||'</Tiposaldo>
                                       <Tipounidad>'|| VAR_TIPOUNIDAD_3 ||'</Tipounidad>'||
                                        '</Traspaso>'||'
                                       <Traspaso>' || '
                                       <Regimen>'|| VAR_REGIMEN_TRIBUTARIO_4 ||'</Regimen>
                                       <Monto>'|| VAR_MONTO_4 ||'</Monto>
                                       <Tiposaldo>'|| VAR_TIPOSALDO_4 ||'</Tiposaldo>
                                       <Tipounidad>'|| VAR_TIPOUNIDAD_4 ||'</Tipounidad>'||
                                        '</Traspaso>'||'
                                       <Traspaso>' || '
                                       <Regimen>'|| VAR_REGIMEN_TRIBUTARIO_5 ||'</Regimen>
                                       <Monto>'|| VAR_MONTO_5 ||'</Monto>
                                       <Tiposaldo>'|| VAR_TIPOSALDO_5 ||'</Tiposaldo>
                                       <Tipounidad>'|| VAR_TIPOUNIDAD_5 ||'</Tipounidad>'||
                                        '</Traspaso>'||'
                                       <Traspaso>' || '
                                       <Regimen>'|| VAR_REGIMEN_TRIBUTARIO_6 ||'</Regimen>
                                       <Monto>'|| VAR_MONTO_6 ||'</Monto>
                                       <Tiposaldo>'|| VAR_TIPOSALDO_6 ||'</Tiposaldo>
                                       <Tipounidad>'|| VAR_TIPOUNIDAD_6 ||'</Tipounidad>'||
                                      '</Traspaso>'||'
                                       <Traspaso>' || '
                                       <Regimen>'|| VAR_REGIMEN_TRIBUTARIO_7 ||'</Regimen>
                                       <Monto>'|| VAR_MONTO_7 ||'</Monto>
                                       <Tiposaldo>'|| VAR_TIPOSALDO_7 ||'</Tiposaldo>
                                       <Tipounidad>'|| VAR_TIPOUNIDAD_7 ||'</Tipounidad>'||
                                      '</Traspaso>'||'
                                       <Traspaso>' || '
                                       <Regimen>'|| VAR_REGIMEN_TRIBUTARIO_8 ||'</Regimen>
                                       <Monto>'|| VAR_MONTO_8 ||'</Monto>
                                       <Tiposaldo>'|| VAR_TIPOSALDO_8 ||'</Tiposaldo>
                                       <Tipounidad>'|| VAR_TIPOUNIDAD_8 ||'</Tipounidad>'||
                                      '</Traspaso>'||'
                                       <Traspaso>' || '
                                       <Regimen>'|| VAR_REGIMEN_TRIBUTARIO_9 ||'</Regimen>
                                       <Monto>'|| VAR_MONTO_9 ||'</Monto>
                                       <Tiposaldo>'|| VAR_TIPOSALDO_9 ||'</Tiposaldo>
                                       <Tipounidad>'|| VAR_TIPOUNIDAD_9 ||'</Tipounidad>'||
                                      '</Traspaso>'||'
                                       <Traspaso>' || '
                                       <Regimen>'|| VAR_REGIMEN_TRIBUTARIO_10 ||'</Regimen>
                                       <Monto>'|| VAR_MONTO_10 ||'</Monto>
                                       <Tiposaldo>'|| VAR_TIPOSALDO_10 ||'</Tiposaldo>
                                       <Tipounidad>'|| VAR_TIPOUNIDAD_10 ||'</Tipounidad>'||
                                      '</Traspaso>'||'
                                      <Traspaso>' || '
                                       <Regimen>'|| VAR_REGIMEN_TRIBUTARIO_11 ||'</Regimen>
                                       <Monto>'|| VAR_MONTO_11 ||'</Monto>
                                       <Tiposaldo>'|| VAR_TIPOSALDO_11 ||'</Tiposaldo>
                                       <Tipounidad>'|| VAR_TIPOUNIDAD_11 ||'</Tipounidad>'||
                                      '</Traspaso>'||'
                                       <Traspaso>' || '
                                       <Regimen>'|| VAR_REGIMEN_TRIBUTARIO_12 ||'</Regimen>
                                       <Monto>'|| VAR_MONTO_12 ||'</Monto>
                                       <Tiposaldo>'|| VAR_TIPOSALDO_12 ||'</Tiposaldo>
                                       <Tipounidad>'|| VAR_TIPOUNIDAD_12 ||'</Tipounidad>'||
                                      '</Traspaso>'||'
                                     </Traspasos>';

          VAR_CONTADOR := VAR_CONTADOR + 1;

        END LOOP;
      ELSE
        LOOP
          FETCH VAR_CURSOR
          INTO    VAR_ID_SOLICITUD,
                  VAR_RUT,
                  VAR_NOMBRE_CLIENTE,
                  VAR_REGION,
                  VAR_COMUNA,
                  VAR_DOMICILIO,
          --    VAR_CIUDAD,
                  VAR_TELEFONO,
                  VAR_EMAIL,
                  VAR_FOLIO,
                  VAR_FECHA_SOLICITUD,
                  VAR_FECHA_SUSCRIPCION,
                  VAR_FECHA_NOTIFICACION,
                  VAR_ESTADO,
                  VAR_MOTIVO_RECHAZO,
                  VAR_INST_ORIGEN,
                  VAR_INST_RUT_ORIGEN,
                  VAR_TIPO_PRODUCTO,
          --VAR_MONTO,
                  VAR_FONDO_DESTINO1,
                  VAR_FONDO_DESTINO2,

                  VAR_REGIMEN_TRIBUTARIO_1,
                  VAR_MONTO_1,
                  VAR_TIPOSALDO_1,
                  VAR_TIPOUNIDAD_1,
                  VAR_REGIMEN_TRIBUTARIO_2,
                  VAR_MONTO_2,
                  VAR_TIPOSALDO_2,
                  VAR_TIPOUNIDAD_2,
                  VAR_REGIMEN_TRIBUTARIO_3,
                  VAR_MONTO_3,
                  VAR_TIPOSALDO_3,
                  VAR_TIPOUNIDAD_3,
                  VAR_REGIMEN_TRIBUTARIO_4,
                  VAR_MONTO_4,
                  VAR_TIPOSALDO_4,
                  VAR_TIPOUNIDAD_4,
                  VAR_REGIMEN_TRIBUTARIO_5,
                  VAR_MONTO_5,
                  VAR_TIPOSALDO_5,
                  VAR_TIPOUNIDAD_5,
                  VAR_REGIMEN_TRIBUTARIO_6,
                  VAR_MONTO_6,
                  VAR_TIPOSALDO_6,
                  VAR_TIPOUNIDAD_6;

          EXIT WHEN VAR_CURSOR%NOTFOUND;

          IF VAR_CONTADOR = -1 THEN
            VAR_CONTADOR := 0;
          END IF;

          VAR_XML := VAR_XML || '<TipoSolicitud>TRASPASO INGRESO CAV </TipoSolicitud>
                                <Cliente>
                                  <Rut>'|| VAR_RUT ||'</Rut>
                                  <NombreCompleto>'|| VAR_NOMBRE_CLIENTE ||'</NombreCompleto>
                                  <Comuna>'|| VAR_COMUNA ||'</Comuna>
                                  <Direccion>' || VAR_DOMICILIO || '</Direccion>
                                  <Region>'|| VAR_REGION ||'</Region>
                                  <Telefono>' || VAR_TELEFONO || '</Telefono>
                                  <Email>' || VAR_EMAIL || '</Email>
                                </Cliente>
                                <Traspaso>
                                  <RutInstOrigen>'|| VAR_INST_RUT_ORIGEN ||'</RutInstOrigen>
                                  <NomInstOrigen>'|| VAR_INST_ORIGEN ||'</NomInstOrigen>
                                  <TipoProducto>' || VAR_TIPO_PRODUCTO ||'</TipoProducto>
                                  <FondoDestino1>' || VAR_FONDO_DESTINO1 || '</FondoDestino1>
                                  <FondoDestino2>' || VAR_FONDO_DESTINO2 || '</FondoDestino2>
                                


                                   <Regimen1>'|| VAR_REGIMEN_TRIBUTARIO_1 ||'</Regimen1>
                                   <Monto1>'|| VAR_MONTO_1 ||'</Monto1>
                                   <Tiposaldo1>'|| VAR_TIPOSALDO_1 ||'</Tiposaldo1>
                                   <Tipounidad1>'|| VAR_TIPOUNIDAD_1 ||'</Tipounidad1>

                                   <Regimen2>'|| VAR_REGIMEN_TRIBUTARIO_2 ||'</Regimen2>
                                   <Monto2>'|| VAR_MONTO_2 ||'</Monto2>
                                   <Tiposaldo2>'|| VAR_TIPOSALDO_2 ||'</Tiposaldo2>
                                   <Tipounidad2>'|| VAR_TIPOUNIDAD_2 ||'</Tipounidad2>

                                   <Regimen3>'|| VAR_REGIMEN_TRIBUTARIO_3 ||'</Regimen3>
                                   <Monto3>'|| VAR_MONTO_3 ||'</Monto3>
                                   <Tiposaldo3>'|| VAR_TIPOSALDO_3 ||'</Tiposaldo3>
                                   <Tipounidad3>'|| VAR_TIPOUNIDAD_3 ||'</Tipounidad3>

                                   <Regimen4>'|| VAR_REGIMEN_TRIBUTARIO_4 ||'</Regimen4>
                                   <Monto4>'|| VAR_MONTO_4 ||'</Monto4>
                                   <Tiposaldo4>'|| VAR_TIPOSALDO_4 ||'</Tiposaldo4>
                                   <Tipounidad4>'|| VAR_TIPOUNIDAD_4 ||'</Tipounidad4>

                                   <Regimen5>'|| VAR_REGIMEN_TRIBUTARIO_5 ||'</Regimen5>
                                   <Monto5>'|| VAR_MONTO_5 ||'</Monto5>
                                   <Tiposaldo5>'|| VAR_TIPOSALDO_5 ||'</Tiposaldo5>
                                   <Tipounidad5>'|| VAR_TIPOUNIDAD_5 ||'</Tipounidad5>

                                   <Regimen6>'|| VAR_REGIMEN_TRIBUTARIO_6 ||'</Regimen6>
                                   <Monto6>'|| VAR_MONTO_6 ||'</Monto6>
                                   <Tiposaldo6>'|| VAR_TIPOSALDO_6 ||'</Tiposaldo6>
                                   <Tipounidad6>'|| VAR_TIPOUNIDAD_6 ||'</Tipounidad6>
                                 </Traspaso>';

          VAR_CONTADOR := VAR_CONTADOR + 1;

        END LOOP;
      END IF;
      CLOSE VAR_CURSOR;

      VAR_XML := VAR_XML || '</ComprobanteTraspasoCAV>';

    ELSE

       VAR_XML := '<COMPROBANTE_RESUMEN>' || '<Identificacion>' || '<IdReporte>' ||
                 VAR_ID_REPORTE || '</IdReporte>' || '<IdFormato>' ||
                 VAR_ID_FORMATO || '</IdFormato>' || '</Identificacion>';
                 

      IF VC_TIPO_SOL_ANTIGUA = 0 THEN
        LOOP
          FETCH VAR_CURSOR
          INTO    VAR_ID_SOLICITUD,
                  VAR_RUT,
                  VAR_NOMBRE_CLIENTE,
                  VAR_REGION,
                  VAR_COMUNA,
                  VAR_DOMICILIO,
          --VAR_CIUDAD,
                  VAR_TELEFONO,
                  VAR_EMAIL,
                  VAR_FOLIO,
                  VAR_FECHA_SOLICITUD,
                  VAR_FECHA_SUSCRIPCION,
                  VAR_FECHA_NOTIFICACION,
                  VAR_ESTADO,
                  VAR_MOTIVO_RECHAZO,
                  VAR_INST_ORIGEN,
                  VAR_INST_RUT_ORIGEN,
                  VAR_TIPO_PRODUCTO,
          --VAR_MONTO,
                  VAR_FONDO_DESTINO1,
                  VAR_FONDO_DESTINO2,
                  VAR_FONDO_DESTINO1_PORC,

                  VAR_FONDO_DESTINO2_PORC,

                  VAR_REGIMEN_TRIBUTARIO_1,
                  VAR_MONTO_1,
                  VAR_TIPOSALDO_1,
                  VAR_TIPOUNIDAD_1,
                  VAR_REGIMEN_TRIBUTARIO_2,
                  VAR_MONTO_2,
                  VAR_TIPOSALDO_2,
                  VAR_TIPOUNIDAD_2,
                  VAR_REGIMEN_TRIBUTARIO_3,
                  VAR_MONTO_3,
                  VAR_TIPOSALDO_3,
                  VAR_TIPOUNIDAD_3,
                  VAR_REGIMEN_TRIBUTARIO_4,
                  VAR_MONTO_4,
                  VAR_TIPOSALDO_4,
                  VAR_TIPOUNIDAD_4,
                  VAR_REGIMEN_TRIBUTARIO_5,
                  VAR_MONTO_5,
                  VAR_TIPOSALDO_5,
                  VAR_TIPOUNIDAD_5,
                  VAR_REGIMEN_TRIBUTARIO_6,
                  VAR_MONTO_6,
                  VAR_TIPOSALDO_6,
                  VAR_TIPOUNIDAD_6,
                  VAR_REGIMEN_TRIBUTARIO_7,
                  VAR_MONTO_7,
                  VAR_TIPOSALDO_7,
                  VAR_TIPOUNIDAD_7,
                  VAR_REGIMEN_TRIBUTARIO_8,
                  VAR_MONTO_8,
                  VAR_TIPOSALDO_8,
                  VAR_TIPOUNIDAD_8,
                  VAR_REGIMEN_TRIBUTARIO_9,
                  VAR_MONTO_9,
                  VAR_TIPOSALDO_9,
                  VAR_TIPOUNIDAD_9,
                    VAR_REGIMEN_TRIBUTARIO_10,
                  VAR_MONTO_10,
                  VAR_TIPOSALDO_10,
                  VAR_TIPOUNIDAD_10,
                  VAR_REGIMEN_TRIBUTARIO_11,
                  VAR_MONTO_11,
                  VAR_TIPOSALDO_11,
                  VAR_TIPOUNIDAD_11,
                  VAR_REGIMEN_TRIBUTARIO_12,
                  VAR_MONTO_12,
                  VAR_TIPOSALDO_12,
                  VAR_TIPOUNIDAD_12;

          EXIT WHEN VAR_CURSOR%NOTFOUND;

          IF VAR_CONTADOR = -1 THEN
            VAR_CONTADOR := 0;
          END IF;

          VAR_XML := VAR_XML ||
                                   '<COMPROBANTE>' ||
                                       '<ID_TIPO_TRAMITE>' || VAR_TIPO_TRAMITE || '</ID_TIPO_TRAMITE>' ||
                                       '<NOMBRE>' || VAR_NOMBRE_CLIENTE || '</NOMBRE>' ||
                                       '<RUT>' || VAR_RUT || '</RUT>' ||
                                       '<REGION>' || VAR_REGION || '</REGION>' ||
                                       '<COMUNA>' || VAR_COMUNA || '</COMUNA>' ||
                     '<DOMICILIO>' || VAR_DOMICILIO || '</DOMICILIO>' ||
                     '<TELEFONO>' || VAR_TELEFONO || '</TELEFONO>' ||
                                       '<EMAIL>' || VAR_EMAIL || '</EMAIL>' ||
                                       '<NRO_FOLIO>'|| VAR_FOLIO ||'</NRO_FOLIO>' ||
                                       '<FECHA_SOLICITUD>' || VAR_FECHA_SOLICITUD || '</FECHA_SOLICITUD>' ||
                     '<ESTADO>' || VAR_ESTADO || '</ESTADO>' ||
                                       '<MOTIVORECHAZO>' || VAR_MOTIVO_RECHAZO || '</MOTIVORECHAZO>' ||
                     '<DESCRIPCION_TRAMITE> TRASPASO INGRESO CAV </DESCRIPCION_TRAMITE>' ||
                     '</COMPROBANTE>';

          VAR_XML := VAR_XML || '<INFO_TRASPASO_IN_CAV>' ||
                                    '<ID_SOLICITUD>' || VAR_ID_SOLICITUD || '</ID_SOLICITUD>
                                    <FECHA_NOTIFICACION>' || VAR_FECHA_NOTIFICACION || '</FECHA_NOTIFICACION>
                                    <INST_ORIGEN>' || VAR_INST_ORIGEN || '</INST_ORIGEN>
                                    <INST_RUT_ORIGEN>' || VAR_INST_RUT_ORIGEN || '</INST_RUT_ORIGEN>
                                    <TIPO_PRODUCTO>' || VAR_TIPO_PRODUCTO || '</TIPO_PRODUCTO>
                                    <FONDO_DESTINO1>' || VAR_FONDO_DESTINO1 || '</FONDO_DESTINO1>
                                    <FONDO_DESTINO2>' || VAR_FONDO_DESTINO2 || '</FONDO_DESTINO2>
                                    <FONDO_DESTINO1_PORC>' || VAR_FONDO_DESTINO1_PORC || '</FONDO_DESTINO1_PORC>
                                    <FONDO_DESTINO2_PORC>' || VAR_FONDO_DESTINO2_PORC || '</FONDO_DESTINO2_PORC>
                                    <REGIMEN_TRIBUTARIO_1>' || VAR_REGIMEN_TRIBUTARIO_1 || '</REGIMEN_TRIBUTARIO_1>





                                    <MONTO_1>'|| VAR_MONTO_1 ||'</MONTO_1>
                                    <TIPOSALDO_1>'|| VAR_TIPOSALDO_1 ||'</TIPOSALDO_1>
                                    <TIPOUNIDAD_1>'|| VAR_TIPOUNIDAD_1 ||'</TIPOUNIDAD_1>
                                    <REGIMEN_TRIBUTARIO_2>'|| VAR_REGIMEN_TRIBUTARIO_2 ||'</REGIMEN_TRIBUTARIO_2>
                                    <MONTO_2>'|| VAR_MONTO_2 ||'</MONTO_2>
                                    <TIPOSALDO_2>'|| VAR_TIPOSALDO_2 ||'</TIPOSALDO_2>
                                    <TIPOUNIDAD_2>'|| VAR_TIPOUNIDAD_2 ||'</TIPOUNIDAD_2>
                                    <REGIMEN_TRIBUTARIO_3>'|| VAR_REGIMEN_TRIBUTARIO_3 ||'</REGIMEN_TRIBUTARIO_3>
                                    <MONTO_3>'|| VAR_MONTO_3 ||'</MONTO_3>
                                    <TIPOSALDO_3>'|| VAR_TIPOSALDO_3 ||'</TIPOSALDO_3>
                                    <TIPOUNIDAD_3>'|| VAR_TIPOUNIDAD_3 ||'</TIPOUNIDAD_3>
                                    <REGIMEN_TRIBUTARIO_4>'|| VAR_REGIMEN_TRIBUTARIO_4 ||'</REGIMEN_TRIBUTARIO_4>
                                    <MONTO_4>'|| VAR_MONTO_4 ||'</MONTO_4>
                                    <TIPOSALDO_4>'|| VAR_TIPOSALDO_4 ||'</TIPOSALDO_4>
                                    <TIPOUNIDAD_4>'|| VAR_TIPOUNIDAD_4 ||'</TIPOUNIDAD_4>
                                    <REGIMEN_TRIBUTARIO_5>'|| VAR_REGIMEN_TRIBUTARIO_5 ||'</REGIMEN_TRIBUTARIO_5>
                                    <MONTO_5>'|| VAR_MONTO_5 ||'</MONTO_5>
                                    <TIPOSALDO_5>'|| VAR_TIPOSALDO_5 ||'</TIPOSALDO_5>
                                    <TIPOUNIDAD_5>'|| VAR_TIPOUNIDAD_5 ||'</TIPOUNIDAD_5>
                                   <MONTO_6>'|| VAR_MONTO_6 ||'</MONTO_6> 
                                    <REGIMEN_TRIBUTARIO_6>'|| VAR_REGIMEN_TRIBUTARIO_6 ||'</REGIMEN_TRIBUTARIO_6>
                                    <TIPOSALDO_6>'|| VAR_TIPOSALDO_6 ||'</TIPOSALDO_6>
                                    <TIPOUNIDAD_6>'|| VAR_TIPOUNIDAD_6 ||'</TIPOUNIDAD_6>
                                    
                                    <MONTO_7>'|| VAR_MONTO_7 ||'</MONTO_7>
                                    <REGIMEN_TRIBUTARIO_7>'|| VAR_REGIMEN_TRIBUTARIO_7 ||'</REGIMEN_TRIBUTARIO_7>
                                    <TIPOSALDO_7>'|| VAR_TIPOSALDO_7 ||'</TIPOSALDO_7>
                                    <TIPOUNIDAD_7>'|| VAR_TIPOUNIDAD_7 ||'</TIPOUNIDAD_7>
                                    <MONTO_8>'|| VAR_MONTO_8 ||'</MONTO_8>
                                    <REGIMEN_TRIBUTARIO_8>'|| VAR_REGIMEN_TRIBUTARIO_8 ||'</REGIMEN_TRIBUTARIO_8>
                                    <TIPOSALDO_8>'|| VAR_TIPOSALDO_8 ||'</TIPOSALDO_8>
                                    <TIPOUNIDAD_8>'|| VAR_TIPOUNIDAD_8 ||'</TIPOUNIDAD_8>
                                    <MONTO_9>'|| VAR_MONTO_9 ||'</MONTO_9>
                                    <REGIMEN_TRIBUTARIO_9>'|| VAR_REGIMEN_TRIBUTARIO_9 ||'</REGIMEN_TRIBUTARIO_9>
                                    <TIPOSALDO_9>'|| VAR_TIPOSALDO_9 ||'</TIPOSALDO_9>
                                    <TIPOUNIDAD_9>'|| VAR_TIPOUNIDAD_9 ||'</TIPOUNIDAD_9>
                                    <MONTO_10>'|| VAR_MONTO_10 ||'</MONTO_10>
                                    <REGIMEN_TRIBUTARIO_10>'|| VAR_REGIMEN_TRIBUTARIO_10 ||'</REGIMEN_TRIBUTARIO_10>
                                    <TIPOSALDO_10>'|| VAR_TIPOSALDO_10 ||'</TIPOSALDO_10>
                                    <TIPOUNIDAD_10>'|| VAR_TIPOUNIDAD_10 ||'</TIPOUNIDAD_10>
                                    <MONTO_11>'|| VAR_MONTO_11 ||'</MONTO_11>
                                    <REGIMEN_TRIBUTARIO_11>'|| VAR_REGIMEN_TRIBUTARIO_11 ||'</REGIMEN_TRIBUTARIO_11>
                                    <TIPOSALDO_11>'|| VAR_TIPOSALDO_11 ||'</TIPOSALDO_11>
                                    <TIPOUNIDAD_11>'|| VAR_TIPOUNIDAD_11 ||'</TIPOUNIDAD_11>
                                    <MONTO_12>'|| VAR_MONTO_12 ||'</MONTO_12>
                                    <REGIMEN_TRIBUTARIO_12>'|| VAR_REGIMEN_TRIBUTARIO_12 ||'</REGIMEN_TRIBUTARIO_12>
                                    <TIPOSALDO_12>'|| VAR_TIPOSALDO_12 ||'</TIPOSALDO_12>
                                    <TIPOUNIDAD_12>'|| VAR_TIPOUNIDAD_12 ||'</TIPOUNIDAD_12>
                                </INFO_TRASPASO_IN_CAV>';

          VAR_CONTADOR := VAR_CONTADOR + 1;

        END LOOP;
      ELSE
        LOOP
          FETCH VAR_CURSOR
          INTO    VAR_ID_SOLICITUD,
                  VAR_RUT,
                  VAR_NOMBRE_CLIENTE,
                  VAR_REGION,
                  VAR_COMUNA,
                  VAR_DOMICILIO,
          --VAR_CIUDAD,
                  VAR_TELEFONO,
                  VAR_EMAIL,
                  VAR_FOLIO,
                  VAR_FECHA_SOLICITUD,
                  VAR_FECHA_SUSCRIPCION,
                  VAR_FECHA_NOTIFICACION,
                  VAR_ESTADO,
                  VAR_MOTIVO_RECHAZO,
                  VAR_INST_ORIGEN,
                  VAR_INST_RUT_ORIGEN,
                  VAR_TIPO_PRODUCTO,
          --VAR_MONTO,
                  VAR_FONDO_DESTINO1,
                  VAR_FONDO_DESTINO2,

                  VAR_REGIMEN_TRIBUTARIO_1,
                  VAR_MONTO_1,
                  VAR_TIPOSALDO_1,
                  VAR_TIPOUNIDAD_1,
                  VAR_REGIMEN_TRIBUTARIO_2,
                  VAR_MONTO_2,
                  VAR_TIPOSALDO_2,
                  VAR_TIPOUNIDAD_2,
                  VAR_REGIMEN_TRIBUTARIO_3,
                  VAR_MONTO_3,
                  VAR_TIPOSALDO_3,
                  VAR_TIPOUNIDAD_3,
                  VAR_REGIMEN_TRIBUTARIO_4,
                  VAR_MONTO_4,
                  VAR_TIPOSALDO_4,
                  VAR_TIPOUNIDAD_4,
                  VAR_REGIMEN_TRIBUTARIO_5,
                  VAR_MONTO_5,
                  VAR_TIPOSALDO_5,
                  VAR_TIPOUNIDAD_5,
                  VAR_REGIMEN_TRIBUTARIO_6,
                  VAR_MONTO_6,
                  VAR_TIPOSALDO_6,
                  VAR_TIPOUNIDAD_6;

          EXIT WHEN VAR_CURSOR%NOTFOUND;

          IF VAR_CONTADOR = -1 THEN
            VAR_CONTADOR := 0;
          END IF;

          VAR_XML := VAR_XML ||
                                   '<COMPROBANTE>' ||
                                       '<ID_TIPO_TRAMITE>' || VAR_TIPO_TRAMITE || '</ID_TIPO_TRAMITE>' ||
                                       '<NOMBRE>' || VAR_NOMBRE_CLIENTE || '</NOMBRE>' ||
                                       '<RUT>' || VAR_RUT || '</RUT>' ||
                                       '<REGION>' || VAR_REGION || '</REGION>' ||
                                       '<COMUNA>' || VAR_COMUNA || '</COMUNA>' ||
                     '<DOMICILIO>' || VAR_DOMICILIO || '</DOMICILIO>' ||
                     '<TELEFONO>' || VAR_TELEFONO || '</TELEFONO>' ||
                                       '<EMAIL>' || VAR_EMAIL || '</EMAIL>' ||
                                       '<NRO_FOLIO>'|| VAR_FOLIO ||'</NRO_FOLIO>' ||
                                       '<FECHA_SOLICITUD>' || VAR_FECHA_SUSCRIPCION || '</FECHA_SOLICITUD>' ||
                     '<ESTADO>' || VAR_ESTADO || '</ESTADO>' ||
                                       '<MOTIVORECHAZO>' || VAR_MOTIVO_RECHAZO || '</MOTIVORECHAZO>' ||
                     '<DESCRIPCION_TRAMITE> TRASPASO INGRESO CAV </DESCRIPCION_TRAMITE>' ||
                     '</COMPROBANTE>';

          VAR_XML := VAR_XML || '<INFO_TRASPASO_IN_CAV>' ||
                                    '<ID_SOLICITUD>' || VAR_ID_SOLICITUD || '</ID_SOLICITUD>
                                    <FECHA_NOTIFICACION>' || VAR_FECHA_NOTIFICACION || '</FECHA_NOTIFICACION>
                                    <INST_ORIGEN>' || VAR_INST_ORIGEN || '</INST_ORIGEN>
                                    <INST_RUT_ORIGEN>' || VAR_INST_RUT_ORIGEN || '</INST_RUT_ORIGEN>
                                    <TIPO_PRODUCTO>' || VAR_TIPO_PRODUCTO || '</TIPO_PRODUCTO>
                                    <FONDO_DESTINO1>' || VAR_FONDO_DESTINO1 || '</FONDO_DESTINO1>
                                    <FONDO_DESTINO2>' || VAR_FONDO_DESTINO2 || '</FONDO_DESTINO2>
                                    <REGIMEN_TRIBUTARIO_1>' || VAR_REGIMEN_TRIBUTARIO_1 || '</REGIMEN_TRIBUTARIO_1>
                                    <MONTO_1>'|| VAR_MONTO_1 ||'</MONTO_1>
                                    <TIPOSALDO_1>'|| VAR_TIPOSALDO_1 ||'</TIPOSALDO_1>
                                    <TIPOUNIDAD_1>'|| VAR_TIPOUNIDAD_1 ||'</TIPOUNIDAD_1>
                                    <REGIMEN_TRIBUTARIO_2>'|| VAR_REGIMEN_TRIBUTARIO_2 ||'</REGIMEN_TRIBUTARIO_2>
                                    <MONTO_2>'|| VAR_MONTO_2 ||'</MONTO_2>
                                    <TIPOSALDO_2>'|| VAR_TIPOSALDO_2 ||'</TIPOSALDO_2>
                                    <TIPOUNIDAD_2>'|| VAR_TIPOUNIDAD_2 ||'</TIPOUNIDAD_2>
                                    <REGIMEN_TRIBUTARIO_3>'|| VAR_REGIMEN_TRIBUTARIO_3 ||'</REGIMEN_TRIBUTARIO_3>
                                    <MONTO_3>'|| VAR_MONTO_3 ||'</MONTO_3>
                                    <TIPOSALDO_3>'|| VAR_TIPOSALDO_3 ||'</TIPOSALDO_3>
                                    <TIPOUNIDAD_3>'|| VAR_TIPOUNIDAD_3 ||'</TIPOUNIDAD_3>
                                    <REGIMEN_TRIBUTARIO_4>'|| VAR_REGIMEN_TRIBUTARIO_4 ||'</REGIMEN_TRIBUTARIO_4>
                                    <MONTO_4>'|| VAR_MONTO_4 ||'</MONTO_4>
                                    <TIPOSALDO_4>'|| VAR_TIPOSALDO_4 ||'</TIPOSALDO_4>
                                    <TIPOUNIDAD_4>'|| VAR_TIPOUNIDAD_4 ||'</TIPOUNIDAD_4>
                                    <REGIMEN_TRIBUTARIO_5>'|| VAR_REGIMEN_TRIBUTARIO_5 ||'</REGIMEN_TRIBUTARIO_5>
                                    <MONTO_5>'|| VAR_MONTO_5 ||'</MONTO_5>
                                    <TIPOSALDO_5>'|| VAR_TIPOSALDO_5 ||'</TIPOSALDO_5>
                                    <TIPOUNIDAD_5>'|| VAR_TIPOUNIDAD_5 ||'</TIPOUNIDAD_5>
                                    <REGIMEN_TRIBUTARIO_6>'|| VAR_REGIMEN_TRIBUTARIO_6 ||'</REGIMEN_TRIBUTARIO_6>
                                    <TIPOSALDO_6>'|| VAR_TIPOSALDO_6 ||'</TIPOSALDO_6>
                                    <TIPOUNIDAD_6>'|| VAR_TIPOUNIDAD_6 ||'</TIPOUNIDAD_6>
                                </INFO_TRASPASO_IN_CAV>';

          VAR_CONTADOR := VAR_CONTADOR + 1;

        END LOOP;

      END IF;
      CLOSE VAR_CURSOR;

      VAR_XML := VAR_XML || '</COMPROBANTE_RESUMEN>';
    END IF;

    IF VAR_CONTADOR = -1 THEN
      VAR_XML := '';
    END IF;

    OPEN VOCUR_XML FOR
      SELECT VAR_XML AS XML FROM DUAL;

  END TRAMITE_TRASPASO_INGRESO_CAV;

  PROCEDURE TRAMITE_TRASPASO_EGRESO_CAV(VINU_ID_SOLICITUD   IN NUMBER, -- ID SOLICITUD
                                        VINU_ID_NUM_CLIENTE IN NUMBER, -- ID DEL CLIENTE
                                        VINU_TIPO_SOLICITUD IN NUMBER, -- TIPO SOLICITUD
                                        VIVC_TIPO_SALIDA    IN VARCHAR2, -- R RESUMEN   D DETALLADA
                                        VOCUR_XML           OUT TCURSOR) AS
    VAR_XML      CLOB;
    VAR_CURSOR   TCURSOR;
    VAR_CONTADOR NUMBER;

    VAR_ID_SOLICITUD     VARCHAR2(100);
    VAR_RUT              VARCHAR2(100);
    VAR_NOMBRE_CLIENTE   VARCHAR2(100);
    VAR_FECHA_NACIMIENTO VARCHAR2(100);
    VAR_DIRECCION        VARCHAR2(100);
    --VAR_REGION                     VARCHAR2(100);
    VAR_COMUNA             VARCHAR2(100);
    VAR_CIUDAD             VARCHAR2(100);
    VAR_TELEFONO           VARCHAR2(100);
    VAR_EMAIL              VARCHAR2(100);
    VAR_FOLIO              VARCHAR2(100);
    VAR_FECHA_SOLICITUD    VARCHAR2(100);
    VAR_FECHA_SUSCRIPCION  VARCHAR2(100);
    VAR_FECHA_NOTIFICACION VARCHAR2(100);
    VAR_ESTADO             VARCHAR2(100);
    VAR_TIPO_TRASPASO      VARCHAR2(100);
    VAR_SALDO_CAV          VARCHAR2(100);
    VAR_MOTIVO_RECHAZO     VARCHAR2(100);

    VAR_FONDO1_REGIMEN1        VARCHAR2(100);
    VAR_MONTO_FONDO1_REGIMEN1  VARCHAR2(100);
    VAR_UNIDAD_FONDO1_REGIMEN1 VARCHAR2(100);
    VAR_REGIMEN_TRIB1_FONDO1   VARCHAR2(100);
    --VAR_RECHAZO_REGIMEN1_FONDO1    VARCHAR2(100);

    VAR_FONDO1_REGIMEN2        VARCHAR2(100);
    VAR_MONTO_FONDO1_REGIMEN2  VARCHAR2(100);
    VAR_UNIDAD_FONDO1_REGIMEN2 VARCHAR2(100);
    VAR_REGIMEN_TRIB2_FONDO1   VARCHAR2(100);
    --VAR_RECHAZO_REGIMEN2_FONDO1    VARCHAR2(100);

    VAR_FONDO1_REGIMEN3        VARCHAR2(100);
    VAR_MONTO_FONDO1_REGIMEN3  VARCHAR2(100);
    VAR_UNIDAD_FONDO1_REGIMEN3 VARCHAR2(100);
    VAR_REGIMEN_TRIB3_FONDO1   VARCHAR2(100);
    --VAR_RECHAZO_REGIMEN3_FONDO1    VARCHAR2(100);

    VAR_FONDO1_REGIMEN4        VARCHAR2(100);
    VAR_MONTO_FONDO1_REGIMEN4  VARCHAR2(100);
    VAR_UNIDAD_FONDO1_REGIMEN4 VARCHAR2(100);
    VAR_REGIMEN_TRIB4_FONDO1   VARCHAR2(100);
    --VAR_RECHAZO_REGIMEN4_FONDO1    VARCHAR2(100);

    VAR_FONDO1_REGIMEN5        VARCHAR2(100);
    VAR_MONTO_FONDO1_REGIMEN5  VARCHAR2(100);
    VAR_UNIDAD_FONDO1_REGIMEN5 VARCHAR2(100);
    VAR_REGIMEN_TRIB5_FONDO1   VARCHAR2(100);
    --VAR_RECHAZO_REGIMEN5_FONDO1    VARCHAR2(100);

    VAR_FONDO1_REGIMEN6        VARCHAR2(100);
    VAR_MONTO_FONDO1_REGIMEN6  VARCHAR2(100);
    VAR_UNIDAD_FONDO1_REGIMEN6 VARCHAR2(100);
    VAR_REGIMEN_TRIB6_FONDO1   VARCHAR2(100);
    --VAR_RECHAZO_REGIMEN6_FONDO1    VARCHAR2(100);

    VAR_FONDO2_REGIMEN1        VARCHAR2(100);
    VAR_MONTO_FONDO2_REGIMEN1  VARCHAR2(100);
    VAR_UNIDAD_FONDO2_REGIMEN1 VARCHAR2(100);
    VAR_REGIMEN_TRIB1_FONDO2   VARCHAR(100);
    --VAR_RECHAZO_REGIMEN1_FONDO2    VARCHAR2(100);

    VAR_FONDO2_REGIMEN2        VARCHAR2(100);
    VAR_MONTO_FONDO2_REGIMEN2  VARCHAR2(100);
    VAR_UNIDAD_FONDO2_REGIMEN2 VARCHAR2(100);
    VAR_REGIMEN_TRIB2_FONDO2   VARCHAR2(100);
    --VAR_RECHAZO_REGIMEN2_FONDO2    VARCHAR2(100);

    VAR_FONDO2_REGIMEN3        VARCHAR2(100);
    VAR_MONTO_FONDO2_REGIMEN3  VARCHAR2(100);
    VAR_UNIDAD_FONDO2_REGIMEN3 VARCHAR2(100);
    VAR_REGIMEN_TRIB3_FONDO2   VARCHAR2(100);
    --VAR_RECHAZO_REGIMEN3_FONDO2    VARCHAR2(100);

    VAR_FONDO2_REGIMEN4        VARCHAR2(100);
    VAR_MONTO_FONDO2_REGIMEN4  VARCHAR2(100);
    VAR_UNIDAD_FONDO2_REGIMEN4 VARCHAR2(100);
    VAR_REGIMEN_TRIB4_FONDO2   VARCHAR2(100);
    --VAR_RECHAZO_REGIMEN4_FONDO2    VARCHAR2(100);

    VAR_FONDO2_REGIMEN5        VARCHAR2(100);
    VAR_MONTO_FONDO2_REGIMEN5  VARCHAR2(100);
    VAR_UNIDAD_FONDO2_REGIMEN5 VARCHAR2(100);
    VAR_REGIMEN_TRIB5_FONDO2   VARCHAR2(100);
    --VAR_RECHAZO_REGIMEN5_FONDO2    VARCHAR2(100);

    VAR_FONDO2_REGIMEN6        VARCHAR2(100);
    VAR_MONTO_FONDO2_REGIMEN6  VARCHAR2(100);
    VAR_UNIDAD_FONDO2_REGIMEN6 VARCHAR2(100);
    VAR_REGIMEN_TRIB6_FONDO2   VARCHAR2(100);
    --VAR_RECHAZO_REGIMEN6_FONDO2    VARCHAR2(100);

    VAR_RUT_INSTITUCION  VARCHAR2(100);
    VAR_NOM_INSTITUCION  VARCHAR2(100);
    VAR_ORIGEN_SOLICITUD VARCHAR2(100);

    -- INFO REPORTE
    VAR_ID_REPORTE   VARCHAR2(4);
    VAR_ID_FORMATO   VARCHAR2(5);
    VAR_TIPO_TRAMITE VARCHAR2(2);

  BEGIN

    VAR_CONTADOR := -1;

    IF VIVC_TIPO_SALIDA = 'D' THEN
      SELECT DISTINCT C.ID_REPORTE_DETALLE, C.ID_FORMATO_DETALLE
        INTO VAR_ID_REPORTE, VAR_ID_FORMATO
        FROM TIPO_MENU_CONSOLIDADO C
       WHERE C.ID_TIPO_SOLICITUD = VINU_TIPO_SOLICITUD;
    ELSE
      SELECT C.ID_REPORTE_COMPROBANTE,
             C.ID_FORMATO_COMPROBANTE,
             C.TIPO_TRAMITE
        INTO VAR_ID_REPORTE, VAR_ID_FORMATO, VAR_TIPO_TRAMITE
        FROM TIPO_MENU_CONSOLIDADO C
       WHERE C.ID_TIPO_SOLICITUD = VINU_TIPO_SOLICITUD;
    END IF;

    SOLICITUDES.PCK_CONSOLIDADO_TRAMITES.DETALLE_TRASPASO_EGRESO_CAV(VINU_ID_SOLICITUD,
                                                                     VAR_CURSOR);

    IF VIVC_TIPO_SALIDA = 'D' THEN

      VAR_XML := '<ComprobanteTraspasoCAV>' || '<Identificacion>' || '<IdReporte>' ||
                 VAR_ID_REPORTE || '</IdReporte>' || '<IdFormato>' ||
                 VAR_ID_FORMATO || '</IdFormato>' || '</Identificacion>';

      LOOP
        FETCH VAR_CURSOR
        INTO    VAR_ID_SOLICITUD,
                VAR_RUT,
                VAR_NOMBRE_CLIENTE,
                VAR_FECHA_NACIMIENTO,
                VAR_DIRECCION,
                VAR_COMUNA,
                VAR_CIUDAD,
                VAR_TELEFONO,
                VAR_EMAIL,
                VAR_FOLIO,
                VAR_FECHA_SOLICITUD,
                VAR_FECHA_SUSCRIPCION,
                VAR_FECHA_NOTIFICACION,
                VAR_ESTADO,
                VAR_TIPO_TRASPASO,
                VAR_SALDO_CAV,
                VAR_MOTIVO_RECHAZO,
                VAR_FONDO1_REGIMEN1,
                VAR_MONTO_FONDO1_REGIMEN1,
                VAR_UNIDAD_FONDO1_REGIMEN1,
        --VAR_RECHAZO_REGIMEN1_FONDO1,
        VAR_REGIMEN_TRIB1_FONDO1,

                VAR_FONDO1_REGIMEN2,
                VAR_MONTO_FONDO1_REGIMEN2,
                VAR_UNIDAD_FONDO1_REGIMEN2,
        --VAR_RECHAZO_REGIMEN2_FONDO1,
        VAR_REGIMEN_TRIB2_FONDO1,

                VAR_FONDO1_REGIMEN3,
                VAR_MONTO_FONDO1_REGIMEN3,
                VAR_UNIDAD_FONDO1_REGIMEN3,
        --VAR_RECHAZO_REGIMEN3_FONDO1,
        VAR_REGIMEN_TRIB3_FONDO1,

                VAR_FONDO1_REGIMEN4,
                VAR_MONTO_FONDO1_REGIMEN4,
                VAR_UNIDAD_FONDO1_REGIMEN4,
        --VAR_RECHAZO_REGIMEN4_FONDO1,
        VAR_REGIMEN_TRIB4_FONDO1,

                VAR_FONDO1_REGIMEN5,
                VAR_MONTO_FONDO1_REGIMEN5,
                VAR_UNIDAD_FONDO1_REGIMEN5,
        --VAR_RECHAZO_REGIMEN5_FONDO1,
        VAR_REGIMEN_TRIB5_FONDO1,

                VAR_FONDO1_REGIMEN6,
                VAR_MONTO_FONDO1_REGIMEN6,
                VAR_UNIDAD_FONDO1_REGIMEN6,
        --VAR_RECHAZO_REGIMEN6_FONDO1,
        VAR_REGIMEN_TRIB6_FONDO1,

                VAR_FONDO2_REGIMEN1,
                VAR_MONTO_FONDO2_REGIMEN1,
                VAR_UNIDAD_FONDO2_REGIMEN1,
        --VAR_RECHAZO_REGIMEN1_FONDO2,
        VAR_REGIMEN_TRIB1_FONDO2,

                VAR_FONDO2_REGIMEN2,
                VAR_MONTO_FONDO2_REGIMEN2,
                VAR_UNIDAD_FONDO2_REGIMEN2,
        --VAR_RECHAZO_REGIMEN2_FONDO2,
        VAR_REGIMEN_TRIB2_FONDO2,

                VAR_FONDO2_REGIMEN3,
                VAR_MONTO_FONDO2_REGIMEN3,
                VAR_UNIDAD_FONDO2_REGIMEN3,
        --VAR_RECHAZO_REGIMEN3_FONDO2,
        VAR_REGIMEN_TRIB3_FONDO2,

                VAR_FONDO2_REGIMEN4,
                VAR_MONTO_FONDO2_REGIMEN4,
                VAR_UNIDAD_FONDO2_REGIMEN4,
        --VAR_RECHAZO_REGIMEN4_FONDO2,
        VAR_REGIMEN_TRIB4_FONDO2,

                VAR_FONDO2_REGIMEN5,
                VAR_MONTO_FONDO2_REGIMEN5,
                VAR_UNIDAD_FONDO2_REGIMEN5,
        --VAR_RECHAZO_REGIMEN5_FONDO2,
        VAR_REGIMEN_TRIB5_FONDO2,

                VAR_FONDO2_REGIMEN6,
                VAR_MONTO_FONDO2_REGIMEN6,
                VAR_UNIDAD_FONDO2_REGIMEN6,
        --VAR_RECHAZO_REGIMEN6_FONDO2,
        VAR_REGIMEN_TRIB6_FONDO2,

                VAR_RUT_INSTITUCION,
                VAR_NOM_INSTITUCION,
                VAR_ORIGEN_SOLICITUD;

        EXIT WHEN VAR_CURSOR%NOTFOUND;

        IF VAR_CONTADOR = -1 THEN
          VAR_CONTADOR := 0;
        END IF;

        VAR_XML := VAR_XML || '<TipoSolicitud>TRASPASO EGRESO CAV </TipoSolicitud>
                              <Cliente>
                                <Rut>'|| VAR_RUT ||'</Rut>
                                <NombreCompleto>'|| VAR_NOMBRE_CLIENTE ||'</NombreCompleto>
                                <Comuna>'|| VAR_COMUNA ||'</Comuna>
                                <Ciudad>'|| VAR_CIUDAD ||'</Ciudad>
                                <Telefono>' || VAR_TELEFONO || '</Telefono>
                                <Email>' || VAR_EMAIL || '</Email>
                              </Cliente>
                              <Traspaso>
                                <RutInstOrigen>'|| VAR_RUT_INSTITUCION ||'</RutInstOrigen>
                                <NomInstOrigen>'|| VAR_NOM_INSTITUCION ||'</NomInstOrigen>
                                <TipoProducto> CAV </TipoProducto>
                                <TipoTraspaso>' || VAR_TIPO_TRASPASO || '</TipoTraspaso>
                                <EstadoTraspaso>' || VAR_ESTADO || '</EstadoTraspaso>
                                <SaldoCAV>' || VAR_SALDO_CAV ||'</SaldoCAV>
                                <Fondo1Regimen1>' || VAR_FONDO1_REGIMEN1 || '</Fondo1Regimen1>
                                <MontoFondo1Regimen1>' || VAR_MONTO_FONDO1_REGIMEN1 || '</MontoFondo1Regimen1>
                                <UnidadFondo1Regimen1>' || VAR_UNIDAD_FONDO1_REGIMEN1 || '</UnidadFondo1Regimen1>
                                <Regimen1Fondo1>' || VAR_REGIMEN_TRIB1_FONDO1 || '</Regimen1Fondo1>
                                 
                                
                                <Fondo1Regimen2>' || VAR_FONDO1_REGIMEN2 || '</Fondo1Regimen2>
                                <MontoFondo1Regimen2>' || VAR_MONTO_FONDO1_REGIMEN2 || '</MontoFondo1Regimen2>
                                <UnidadFondo1Regimen2>' || VAR_UNIDAD_FONDO1_REGIMEN2 || '</UnidadFondo1Regimen2>
                                <Regimen2Fondo1>' || VAR_REGIMEN_TRIB2_FONDO1 || '</Regimen2Fondo1>
                                
                                                                                     
                                <Fondo1Regimen3>' || VAR_FONDO1_REGIMEN3 || '</Fondo1Regimen3>
                                <MontoFondo1Regimen3>' || VAR_MONTO_FONDO1_REGIMEN3 || '</MontoFondo1Regimen3>
                                <UnidadFondo1Regimen3>' || VAR_UNIDAD_FONDO1_REGIMEN3 || '</UnidadFondo1Regimen3>
                                <Regimen3Fondo1>' || VAR_REGIMEN_TRIB3_FONDO1 || '</Regimen3Fondo1>
                                

                                <Fondo1Regimen4>' || VAR_FONDO1_REGIMEN4 || '</Fondo1Regimen4>
                                <MontoFondo1Regimen4>' || VAR_MONTO_FONDO1_REGIMEN4 || '</MontoFondo1Regimen4>
                                <UnidadFondo1Regimen4>' || VAR_UNIDAD_FONDO1_REGIMEN4 || '</UnidadFondo1Regimen4>
                                <Regimen4Fondo1>' || VAR_REGIMEN_TRIB4_FONDO1 || '</Regimen4Fondo1>
                                

                                <Fondo1Regimen5>' || VAR_FONDO1_REGIMEN5 || '</Fondo1Regimen5>
                                <MontoFondo1Regimen5>' || VAR_MONTO_FONDO1_REGIMEN5 || '</MontoFondo1Regimen5>
                                <UnidadFondo1Regimen5>' || VAR_UNIDAD_FONDO1_REGIMEN5 || '</UnidadFondo1Regimen5>
                                <Regimen5Fondo1>' || VAR_REGIMEN_TRIB5_FONDO1 || '</Regimen5Fondo1>
                                

                                <Fondo1Regimen6>' || VAR_FONDO1_REGIMEN6 || '</Fondo1Regimen6>
                                <MontoFondo1Regimen6>' || VAR_MONTO_FONDO1_REGIMEN6 || '</MontoFondo1Regimen6>
                                <UnidadFondo1Regimen6>' || VAR_UNIDAD_FONDO1_REGIMEN6 || '</UnidadFondo1Regimen6>
                                <Regimen6Fondo1>' || VAR_REGIMEN_TRIB6_FONDO1 || '</Regimen6Fondo1>
                                

                                <Fondo2Regimen1>' || VAR_FONDO2_REGIMEN1 || '</Fondo2Regimen1>
                                <MontoFondo2Regimen1>' || VAR_MONTO_FONDO2_REGIMEN1 || '</MontoFondo2Regimen1>
                                <UnidadFondo2Regimen1>' || VAR_UNIDAD_FONDO2_REGIMEN1 || '</UnidadFondo2Regimen1>
                                <Regimen1Fondo2>' || VAR_REGIMEN_TRIB1_FONDO2 || '</Regimen1Fondo2>
                                
                                
                                <Fondo2Regimen2>' || VAR_FONDO2_REGIMEN2 || '</Fondo2Regimen2>
                                <MontoFondo2Regimen2>' || VAR_MONTO_FONDO2_REGIMEN2 || '</MontoFondo2Regimen2>
                                <UnidadFondo2Regimen2>' || VAR_UNIDAD_FONDO2_REGIMEN2 || '</UnidadFondo2Regimen2>
                                <Regimen2Fondo2>' || VAR_REGIMEN_TRIB2_FONDO2 || '</Regimen2Fondo2>
                                

                                <Fondo2Regimen3>' || VAR_FONDO2_REGIMEN3 || '</Fondo2Regimen3>
                                <MontoFondo2Regimen3>' || VAR_MONTO_FONDO2_REGIMEN3 || '</MontoFondo2Regimen3>
                                <UnidadFondo2Regimen3>' || VAR_UNIDAD_FONDO2_REGIMEN3 || '</UnidadFondo2Regimen3>
                                <Regimen3Fondo2>' || VAR_REGIMEN_TRIB3_FONDO2 || '</Regimen3Fondo2>
                                

                                <Fondo2Regimen4>' || VAR_FONDO2_REGIMEN4 || '</Fondo2Regimen4>
                                <MontoFondo2Regimen4>' || VAR_MONTO_FONDO2_REGIMEN4 || '</MontoFondo2Regimen4>
                                <UnidadFondo2Regimen4>' || VAR_UNIDAD_FONDO2_REGIMEN4 || '</UnidadFondo2Regimen4>
                                <Regimen4Fondo2>' || VAR_REGIMEN_TRIB4_FONDO2 || '</Regimen4Fondo2>
                                

                                <Fondo2Regimen5>' || VAR_FONDO2_REGIMEN5 || '</Fondo2Regimen5>
                                <MontoFondo2Regimen5>' || VAR_MONTO_FONDO2_REGIMEN5 || '</MontoFondo2Regimen5>
                                <UnidadFondo2Regimen5>' || VAR_UNIDAD_FONDO2_REGIMEN5 || '</UnidadFondo2Regimen5>
                                <Regimen5Fondo2>' || VAR_REGIMEN_TRIB5_FONDO2 || '</Regimen5Fondo2>
                                

                                <Fondo2Regimen6>' || VAR_FONDO2_REGIMEN6 || '</Fondo2Regimen6>
                                <MontoFondo2Regimen6>' || VAR_MONTO_FONDO2_REGIMEN6 || '</MontoFondo2Regimen6>
                                <UnidadFondo2Regimen6>' || VAR_UNIDAD_FONDO2_REGIMEN6 || '</UnidadFondo2Regimen6>
                                <Regimen6Fondo2>' || VAR_REGIMEN_TRIB6_FONDO2 || '</Regimen6Fondo2>
                                






                               </Traspaso>';

        VAR_CONTADOR := VAR_CONTADOR + 1;

      END LOOP;
      CLOSE VAR_CURSOR;

      VAR_XML := VAR_XML || '</ComprobanteTraspasoCAV>';

    ELSE

       VAR_XML := '<COMPROBANTE_RESUMEN>' || '<Identificacion>' || '<IdReporte>' ||
                 VAR_ID_REPORTE || '</IdReporte>' || '<IdFormato>' ||
                 VAR_ID_FORMATO || '</IdFormato>' || '</Identificacion>';

      LOOP
        FETCH VAR_CURSOR
       INTO    VAR_ID_SOLICITUD,
                VAR_RUT,
                VAR_NOMBRE_CLIENTE,
                VAR_FECHA_NACIMIENTO,
                VAR_DIRECCION,
                VAR_COMUNA,
                VAR_CIUDAD,
                VAR_TELEFONO,
                VAR_EMAIL,
                VAR_FOLIO,
                VAR_FECHA_SOLICITUD,
                VAR_FECHA_SUSCRIPCION,
                VAR_FECHA_NOTIFICACION,
                VAR_ESTADO,
                VAR_TIPO_TRASPASO,
                VAR_SALDO_CAV,
                VAR_MOTIVO_RECHAZO,
                VAR_FONDO1_REGIMEN1,
                VAR_MONTO_FONDO1_REGIMEN1,
                VAR_UNIDAD_FONDO1_REGIMEN1,
        --VAR_RECHAZO_REGIMEN1_FONDO1,
        VAR_REGIMEN_TRIB1_FONDO1,

                VAR_FONDO1_REGIMEN2,
                VAR_MONTO_FONDO1_REGIMEN2,
                VAR_UNIDAD_FONDO1_REGIMEN2,
        --VAR_RECHAZO_REGIMEN2_FONDO1,
        VAR_REGIMEN_TRIB2_FONDO1,

                VAR_FONDO1_REGIMEN3,
                VAR_MONTO_FONDO1_REGIMEN3,
                VAR_UNIDAD_FONDO1_REGIMEN3,
        --VAR_RECHAZO_REGIMEN3_FONDO1,
        VAR_REGIMEN_TRIB3_FONDO1,

                VAR_FONDO1_REGIMEN4,
                VAR_MONTO_FONDO1_REGIMEN4,
                VAR_UNIDAD_FONDO1_REGIMEN4,
        --VAR_RECHAZO_REGIMEN4_FONDO1,
        VAR_REGIMEN_TRIB4_FONDO1,

                VAR_FONDO1_REGIMEN5,
                VAR_MONTO_FONDO1_REGIMEN5,
                VAR_UNIDAD_FONDO1_REGIMEN5,
        -- VAR_RECHAZO_REGIMEN5_FONDO1,
        VAR_REGIMEN_TRIB5_FONDO1,

                VAR_FONDO1_REGIMEN6,
                VAR_MONTO_FONDO1_REGIMEN6,
                VAR_UNIDAD_FONDO1_REGIMEN6,
        --VAR_RECHAZO_REGIMEN6_FONDO1,
        VAR_REGIMEN_TRIB6_FONDO1,

                VAR_FONDO2_REGIMEN1,
                VAR_MONTO_FONDO2_REGIMEN1,
                VAR_UNIDAD_FONDO2_REGIMEN1,
        --VAR_RECHAZO_REGIMEN1_FONDO2,
        VAR_REGIMEN_TRIB1_FONDO2,

                VAR_FONDO2_REGIMEN2,
                VAR_MONTO_FONDO2_REGIMEN2,
                VAR_UNIDAD_FONDO2_REGIMEN2,
        --VAR_RECHAZO_REGIMEN2_FONDO2,
        VAR_REGIMEN_TRIB2_FONDO2,

                VAR_FONDO2_REGIMEN3,
                VAR_MONTO_FONDO2_REGIMEN3,
                VAR_UNIDAD_FONDO2_REGIMEN3,
        --VAR_RECHAZO_REGIMEN3_FONDO2,
        VAR_REGIMEN_TRIB3_FONDO2,

                VAR_FONDO2_REGIMEN4,
                VAR_MONTO_FONDO2_REGIMEN4,
                VAR_UNIDAD_FONDO2_REGIMEN4,
        --VAR_RECHAZO_REGIMEN4_FONDO2,
        VAR_REGIMEN_TRIB4_FONDO2,

                VAR_FONDO2_REGIMEN5,
                VAR_MONTO_FONDO2_REGIMEN5,
                VAR_UNIDAD_FONDO2_REGIMEN5,
        --VAR_RECHAZO_REGIMEN5_FONDO2,
        VAR_REGIMEN_TRIB5_FONDO2,

                VAR_FONDO2_REGIMEN6,
                VAR_MONTO_FONDO2_REGIMEN6,
                VAR_UNIDAD_FONDO2_REGIMEN6,
        --VAR_RECHAZO_REGIMEN6_FONDO2,
        VAR_REGIMEN_TRIB6_FONDO2,

                VAR_RUT_INSTITUCION,
                VAR_NOM_INSTITUCION,
                VAR_ORIGEN_SOLICITUD;

        EXIT WHEN VAR_CURSOR%NOTFOUND;

        IF VAR_CONTADOR = -1 THEN
          VAR_CONTADOR := 0;
        END IF;

        VAR_XML := VAR_XML ||
                                 '<COMPROBANTE>' ||
                                     '<ID_TIPO_TRAMITE>' || VAR_TIPO_TRAMITE || '</ID_TIPO_TRAMITE>' ||
                                     '<NOMBRE>' || VAR_NOMBRE_CLIENTE || '</NOMBRE>' ||
                                     '<RUT>' || VAR_RUT || '</RUT>' ||
                                     '<DOMICILIO>' || VAR_DIRECCION || '</DOMICILIO>' ||
                                     '<CIUDAD>' || VAR_CIUDAD || '</CIUDAD>'||
                                     '<COMUNA>' || VAR_COMUNA || '</COMUNA>' ||
                   '<TELEFONO>' || VAR_TELEFONO || '</TELEFONO>' ||
                                     '<EMAIL>' || VAR_EMAIL || '</EMAIL>' ||
                                     '<NRO_FOLIO>' || VAR_FOLIO || '</NRO_FOLIO>' ||
                                     '<ESTADO>' || VAR_ESTADO || '</ESTADO>' ||
                                     '<VIA_INGRESO>' || VAR_ORIGEN_SOLICITUD ||'</VIA_INGRESO>' ||
                                     '<FECHA_SOLICITUD>' || VAR_FECHA_SOLICITUD || '</FECHA_SOLICITUD>' ||
                   '<DESCRIPCION_TRAMITE> Traspaso Egreso CAV </DESCRIPCION_TRAMITE>' ||
                                     '<MOTIVORECHAZO>' || VAR_MOTIVO_RECHAZO || '</MOTIVORECHAZO>' ||
                                     '</COMPROBANTE>';

        VAR_XML := VAR_XML || '<INFO_TRASPASO_OUT_CAV>' ||
                                 '<FECHATRASPASO>' ||VAR_FECHA_SUSCRIPCION || '</FECHATRASPASO>
                                  <FECHANOTIFICACION>' || VAR_FECHA_NOTIFICACION || '</FECHANOTIFICACION>
                                  <TIPOPRODUCTO> CAV </TIPOPRODUCTO>
                                  <TIPOTRASPASO>' || VAR_TIPO_TRASPASO || '</TIPOTRASPASO>
                                  <SALDOCAV>' || VAR_SALDO_CAV ||'</SALDOCAV>
                                 
                                  <FONDO1REGIMEN1>' || VAR_FONDO1_REGIMEN1 || '</FONDO1REGIMEN1>
                                  <MONTOFONDO1REGIMEN1>' || VAR_MONTO_FONDO1_REGIMEN1 || '</MONTOFONDO1REGIMEN1>
                                  <UNIDADFONDO1REGIMEN1>' || VAR_UNIDAD_FONDO1_REGIMEN1 || '</UNIDADFONDO1REGIMEN1>

                                  <REGIMEN1FONDO1>' || VAR_REGIMEN_TRIB1_FONDO1 || '</REGIMEN1FONDO1>
                                  
                                  
                                  <FONDO1REGIMEN2>' || VAR_FONDO1_REGIMEN2 || '</FONDO1REGIMEN2>
                                  <MONTOFONDO1REGIMEN2>' || VAR_MONTO_FONDO1_REGIMEN2 || '</MONTOFONDO1REGIMEN2>
                                  <UNIDADFONDO1REGIMEN2>' || VAR_UNIDAD_FONDO1_REGIMEN2 || '</UNIDADFONDO1REGIMEN2>


                                  <REGIMEN2FONDO1>' || VAR_REGIMEN_TRIB2_FONDO1 || '</REGIMEN2FONDO1>
                                  
                                                                                      
                                  <FONDO1REGIMEN3>' || VAR_FONDO1_REGIMEN3 || '</FONDO1REGIMEN3>
                                  <MONTOFONDO1REGIMEN3>' || VAR_MONTO_FONDO1_REGIMEN3 || '</MONTOFONDO1REGIMEN3>
                                  <UNIDADFONDO1REGIMEN3>' || VAR_UNIDAD_FONDO1_REGIMEN3 || '</UNIDADFONDO1REGIMEN3>


                                  <REGIMEN3FONDO1>' || VAR_REGIMEN_TRIB3_FONDO1 || '</REGIMEN3FONDO1>
                                  

                                  <FONDO1REGIMEN4>' || VAR_FONDO1_REGIMEN4 || '</FONDO1REGIMEN4>
                                  <MONTOFONDO1REGIMEN4>' || VAR_MONTO_FONDO1_REGIMEN4 || '</MONTOFONDO1REGIMEN4>
                                  <UNIDADFONDO1REGIMEN4>' || VAR_UNIDAD_FONDO1_REGIMEN4 || '</UNIDADFONDO1REGIMEN4>
                                  <REGIMEN4FONDO1>' || VAR_REGIMEN_TRIB4_FONDO1 || '</REGIMEN4FONDO1>
                                  

                                  <FONDO1REGIMEN5>' || VAR_FONDO1_REGIMEN5 || '</FONDO1REGIMEN5>
                                  <MONTOFONDO1REGIMEN5>' || VAR_MONTO_FONDO1_REGIMEN5 || '</MONTOFONDO1REGIMEN5>
                                  <UNIDADFONDO1REGIMEN5>' || VAR_UNIDAD_FONDO1_REGIMEN5 || '</UNIDADFONDO1REGIMEN5>
                                  <REGIMEN5FONDO1>' || VAR_REGIMEN_TRIB5_FONDO1 || '</REGIMEN5FONDO1>
                                  

                                  <FONDO1REGIMEN6>' || VAR_FONDO1_REGIMEN6 || '</FONDO1REGIMEN6>
                                  <MONTOFONDO1REGIMEN6>' || VAR_MONTO_FONDO1_REGIMEN6 || '</MONTOFONDO1REGIMEN6>
                                  <UNIDADFONDO1REGIMEN6>' || VAR_UNIDAD_FONDO1_REGIMEN6 || '</UNIDADFONDO1REGIMEN6>
                                  <REGIMEN6FONDO1>' || VAR_REGIMEN_TRIB6_FONDO1 || '</REGIMEN6FONDO1>
                                  

                                  <FONDO2REGIMEN1>' || VAR_FONDO2_REGIMEN1 || '</FONDO2REGIMEN1>
                                  <MONTOFONDO2REGIMEN1>' || VAR_MONTO_FONDO2_REGIMEN1 || '</MONTOFONDO2REGIMEN1>
                                  <UNIDADFONDO2REGIMEN1>' || VAR_UNIDAD_FONDO2_REGIMEN1 || '</UNIDADFONDO2REGIMEN1>
                                  <REGIMEN1FONDO2>' || VAR_REGIMEN_TRIB1_FONDO2 || '</REGIMEN1FONDO2>
                                  
                                  
                                  <FONDO2REGIMEN2>' || VAR_FONDO2_REGIMEN2 || '</FONDO2REGIMEN2>
                                  <MONTOFONDO2REGIMEN2>' || VAR_MONTO_FONDO2_REGIMEN2 || '</MONTOFONDO2REGIMEN2>
                                  <UNIDADFONDO2REGIMEN2>' || VAR_UNIDAD_FONDO2_REGIMEN2 || '</UNIDADFONDO2REGIMEN2>


                                  <REGIMEN2FONDO2>' || VAR_REGIMEN_TRIB2_FONDO2 || '</REGIMEN2FONDO2>
                                  

                                  <FONDO2REGIMEN3>' || VAR_FONDO2_REGIMEN3 || '</FONDO2REGIMEN3>
                                  <MONTOFONDO2REGIMEN3>' || VAR_MONTO_FONDO2_REGIMEN3 || '</MONTOFONDO2REGIMEN3>
                                  <UNIDADFONDO2REGIMEN3>' || VAR_UNIDAD_FONDO2_REGIMEN3 || '</UNIDADFONDO2REGIMEN3>
                                  <REGIMEN3FONDO2>' || VAR_REGIMEN_TRIB3_FONDO2 || '</REGIMEN3FONDO2>
                                  

                                  <FONDO2REGIMEN4>' || VAR_FONDO2_REGIMEN4 || '</FONDO2REGIMEN4>
                                  <MONTOFONDO2REGIMEN4>' || VAR_MONTO_FONDO2_REGIMEN4 || '</MONTOFONDO2REGIMEN4>
                                  <UNIDADFONDO2REGIMEN4>' || VAR_UNIDAD_FONDO2_REGIMEN4 || '</UNIDADFONDO2REGIMEN4>
                                  <REGIMEN4FONDO2>' || VAR_REGIMEN_TRIB4_FONDO2 || '</REGIMEN4FONDO2>
                                  

                                  <FONDO2REGIMEN5>' || VAR_FONDO2_REGIMEN5 || '</FONDO2REGIMEN5>
                                  <MONTOFONDO2REGIMEN5>' || VAR_MONTO_FONDO2_REGIMEN5 || '</MONTOFONDO2REGIMEN5>
                                  <UNIDADFONDO2REGIMEN5>' || VAR_UNIDAD_FONDO2_REGIMEN5 || '</UNIDADFONDO2REGIMEN5>
                                  <REGIMEN5FONDO2>' || VAR_REGIMEN_TRIB5_FONDO2 || '</REGIMEN5FONDO2>
                                  

                                  <FONDO2REGIMEN6>' || VAR_FONDO2_REGIMEN6 || '</FONDO2REGIMEN6>
                                  <MONTOFONDO2REGIMEN6>' || VAR_MONTO_FONDO2_REGIMEN6 || '</MONTOFONDO2REGIMEN6>
                                  <UNIDADFONDO2REGIMEN6>' || VAR_UNIDAD_FONDO2_REGIMEN6 || '</UNIDADFONDO2REGIMEN6>
                                  <REGIMEN6FONDO2>' || VAR_REGIMEN_TRIB6_FONDO2 || '</REGIMEN6FONDO2>
                                  


                                  <RUTINSTORIGEN>'|| VAR_RUT_INSTITUCION ||'</RUTINSTORIGEN>
                                  <NOMINSTORIGEN>'|| VAR_NOM_INSTITUCION ||'</NOMINSTORIGEN>
                                </INFO_TRASPASO_OUT_CAV>';

        VAR_CONTADOR := VAR_CONTADOR + 1;

      END LOOP;
      CLOSE VAR_CURSOR;

      VAR_XML := VAR_XML || '</COMPROBANTE_RESUMEN>';
    END IF;

    IF VAR_CONTADOR = -1 THEN
      VAR_XML := '';
    END IF;

    OPEN VOCUR_XML FOR
      SELECT VAR_XML AS XML FROM DUAL;

  END TRAMITE_TRASPASO_EGRESO_CAV;

  --***********************************************************************
  --  NOMBRE              : ENVIAR_CORREO_SOLINGCAV
  --  NEGOCIO             : CLIENTE
  --  TIPO OBJETO         : PROCEDIMIENTO
  --  TIPO RETORNO        : N/A
  --  DESCRIPCION         : ENVIA CORREO ELECTRONICO A USUARIOS, INDICADOLE LAS SOLICITUDES INGRESADAS VIA WEB (TECAV)
  --  PARAMETROS          :
  --  CREADO POR          : SEBASTIAN JIMENEZ (RYC) 1554
  --  FECHA CREACION      : 15-12-2015
  --***********************************************************************

  PROCEDURE ENVIAR_CORREO_SOLINGCAV AS

    VC_MAIL            VARCHAR2(20000);
    VAR_CURSOR         TCURSOR;
    VAR_EXISTE_FERIADO NUMBER;
    DT_FECHAFERIADO    DATE;

    VAR_FECHA_SOLIC   VARCHAR2(100);
    VAR_ID_PERSONA    VARCHAR2(100);
    VAR_TIPO_CUENTA   VARCHAR2(100);
    VAR_ATAC          VARCHAR2(100);
    VAR_TIPO_TRASPASO VARCHAR2(100);
    VAR_REGIMEN       VARCHAR2(100);
    VAR_MONTOTRASPASO VARCHAR2(100);
    VAR_FONDOTRASPASO VARCHAR2(100);
    VC_NOMBRE_DIA     VARCHAR2(20);
    VC_DIA_SEMANA     VARCHAR2(10);
    DT_FECHAINICIO    DATE;
    DT_FECHAFIN       DATE;
    VAR_ESTADO        NUMBER;
    VC_CORREOS_DEST   VARCHAR2(150);

  BEGIN

    SELECT TO_CHAR(SYSDATE, 'DAY', 'NLS_DATE_LANGUAGE=SPANISH')
      INTO VC_NOMBRE_DIA
      FROM DUAL;

    /* SELECT TO_CHAR(TO_DATE(SYSDATE,'DD-MM-YYYY') ,'DAY', 'NLS_DATE_LANGUAGE=SPANISH')
         INTO VC_NOMBRE_DIA
    FROM DUAL;*/

    VAR_EXISTE_FERIADO := CONTROL_OPERAC.PCK_SERVICIO.OBTENER_SI_ES_FERIADO_int(SYSDATE);

  IF VAR_EXISTE_FERIADO != 1 AND (VC_NOMBRE_DIA !='SÁBADO' OR VC_NOMBRE_DIA !='DOMINGO') THEN --SI NO ES FERIADO NI FIN DE SEMANA SE ENVIA CORREO

  DT_FECHAFERIADO := CONTROL_OPERAC.PCK_SERVICIO.SUMA_RESTA_DIAS_HABILES(SYSDATE, 0);


      SELECT TO_CHAR(DT_FECHAFERIADO, 'DAY', 'NLS_DATE_LANGUAGE=SPANISH')
        INTO VC_DIA_SEMANA
        FROM DUAL;

      --AGREGAMOS 2 DÍAS EN EL CASO QUE SEA VIERNES PARA QUE CONSIDERE FINES DE SEMANA
      IF UPPER(TRIM(VC_DIA_SEMANA)) IN ('VIERNES') THEN
        DT_FECHAFERIADO := DT_FECHAFERIADO + 2;

        SELECT TO_CHAR(DT_FECHAFERIADO, 'DAY', 'NLS_DATE_LANGUAGE=SPANISH')
          INTO VC_DIA_SEMANA
          FROM DUAL;

      END IF;

      DT_FECHAINICIO := DT_FECHAFERIADO;
      DT_FECHAFIN    := DT_FECHAFERIADO;

      --PARA ENVIAR DE VIERNES A DOMINGO
      IF UPPER(TRIM(VC_DIA_SEMANA)) IN ('DOMINGO') THEN
        DT_FECHAINICIO := DT_FECHAFERIADO - 2;
        DT_FECHAFIN    := DT_FECHAFERIADO;

      END IF;

      -- CURSOR PARA OBTENER LA DATA CON LA FECHA
  SOLICITUDES.PCK_CONSOLIDADO_TRAMITES.DETALLE_CORREO_INGRESOS_CAV(DT_FECHAINICIO,DT_FECHAFIN,VAR_CURSOR);



      --  VC_MAIL := '';
      VC_MAIL := '<!DOCTYPE html>';
  VC_MAIL := VC_MAIL || '<html xmlns="http://www.w3.org/1999/xhtml" lang="" xml:lang="">';
      VC_MAIL := VC_MAIL ||
                 '<head> <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>';
    VC_MAIL := VC_MAIL ||
               '</head>';
      VC_MAIL := VC_MAIL || '<body>';
      VC_MAIL := VC_MAIL || '<style type="text/css">';
      VC_MAIL := VC_MAIL || '.demo {
    border:1px solid #C0C0C0;
    border-collapse:collapse;
    padding:5px;
  }
  .demo th {
    border:1px solid #C0C0C0;
    padding:5px;
    background:#F0F0F0;
  }
  .demo td {
    border:1px solid #C0C0C0;
    padding:5px;
  }';
      VC_MAIL := VC_MAIL || '</style>';

      VC_MAIL := VC_MAIL || '<table>';
      VC_MAIL := VC_MAIL || '<tr>';
  VC_MAIL := VC_MAIL || '<th> Estimados, se han confirmado exitosamente las siguientes solicitudes:  </th>';
      VC_MAIL := VC_MAIL || '</tr>';
      VC_MAIL := VC_MAIL || '</table> <br>';
      VC_MAIL := VC_MAIL || '<table border=1><thead>';
      VC_MAIL := VC_MAIL || '<tr>';
      VC_MAIL := VC_MAIL || '<th>Fecha</th><th>Rut</th> <th>Cuenta</th>';
  VC_MAIL := VC_MAIL || '<th>Atac</th> <th>Tipo Traspaso</th> <th>Regimen</th>';
      VC_MAIL := VC_MAIL || '<th>Monto</th><th>Fondo</th>';
      VC_MAIL := VC_MAIL || '</tr>';
      VC_MAIL := VC_MAIL || '</thead>';

      VC_MAIL := VC_MAIL || '<tbody>';

      LOOP
        FETCH VAR_CURSOR
        INTO   VAR_FECHA_SOLIC,
               VAR_ID_PERSONA,
               VAR_TIPO_CUENTA,
               VAR_ATAC,
               VAR_TIPO_TRASPASO,
               VAR_REGIMEN,
               VAR_MONTOTRASPASO,
               VAR_FONDOTRASPASO;
        EXIT WHEN VAR_CURSOR%NOTFOUND;

        --CICLICO

        IF VAR_REGIMEN != 'X' THEN

          VC_MAIL := VC_MAIL || '<tr>';
          VC_MAIL := VC_MAIL || '<td>' || VAR_FECHA_SOLIC || '</th>';
          VC_MAIL := VC_MAIL || '<td>' || VAR_ID_PERSONA || '</th>';
          VC_MAIL := VC_MAIL || '<td>' || VAR_TIPO_CUENTA || '</th>';
          VC_MAIL := VC_MAIL || '<td>' || VAR_ATAC || '</th>';
          VC_MAIL := VC_MAIL || '<td>' || VAR_TIPO_TRASPASO || '</th>';
          VC_MAIL := VC_MAIL || '<td>' || VAR_REGIMEN || '</th>';
          VC_MAIL := VC_MAIL || '<td>' || VAR_MONTOTRASPASO || '</th>';
          VC_MAIL := VC_MAIL || '<td>' || VAR_FONDOTRASPASO || '</th>';
          VC_MAIL := VC_MAIL || '</tr>';

        END IF;

        -- FIN CICLICO
      END LOOP;
      CLOSE VAR_CURSOR;

      VC_MAIL := VC_MAIL || '</tbody>';
      VC_MAIL := VC_MAIL || '</table>';
      VC_MAIL := VC_MAIL || '<br><br>';

      VC_MAIL := VC_MAIL || '<table>';
      VC_MAIL := VC_MAIL || '<tr>';
  VC_MAIL := VC_MAIL || '<th> Saluda Atentamente.  </th></tr></table></body></html>';

  VC_CORREOS_DEST := FRAMEWORK.PCK_PARAMETRO.OBTENERVARCHAR2('AFI','DIR_CORREO_FUNC');

      --  VC_CORREOS_DEST
      VAR_ESTADO := FRAMEWORK.PCK_PROPOSITO_GENERAL.ENVIAR_MAIL(VC_CORREOS_DEST,
                                                                'SOLICITUDES INGRESADAS DIARIAS TECAV',
                                                                VC_MAIL,
                                                                'framework.oracle@cuprum.cl');

    ELSE
      VAR_ESTADO := 0;

    END IF;

  END ENVIAR_CORREO_SOLINGCAV;

  --***********************************************************************
  --  NOMBRE              : ENVIAR_CORREO_TECAVNOTIF_WEB
  --  NEGOCIO             : CLIENTE
  --  TIPO OBJETO         : PROCEDIMIENTO
  --  TIPO RETORNO        : N/A
  --  DESCRIPCION         : ENVIA CORREO ELECTRONICO A USUARIOS, AQUELLAS NOTIFICADAS 10  DIAS CORRIDOS VIA WEB.
  --  PARAMETROS          :
  --  CREADO POR          : SEBASTIAN JIMENEZ (RYC) 1554
  --  FECHA CREACION      : 15-12-2015
  --***********************************************************************

  PROCEDURE ENVIAR_CORREO_TECAVNOTIF_WEB AS

    VAR_CURSOR_WEB        TCURSOR;
    VAR_CURSOR_FORMULARIO TCURSOR;

    VC_MAIL                   VARCHAR2(20000);
    VAR_FECHA_NOTIF_WEB       VARCHAR2(30);
    VAR_RUT_WEB               VARCHAR2(30);
    VAR_FECHA_MAXTRASPASO_WEB VARCHAR2(30);
    VAR_FOLIO_WEB             VARCHAR2(30);
    VAR_INSTITUCION_DEST_WEB  VARCHAR2(30);
    VC_ESTADO                 VARCHAR2(1);
    VAR_ESTADO                NUMBER;
    VC_CORREOS_DEST           VARCHAR2(150);

  BEGIN

    -- DATOS DE LAS SOLICITUDES VÍA WEB A 10 DÍAS DE FECHA DE NOTIFICACIÓN.-
    SOLICITUDES.PCK_CONSOLIDADO_TRAMITES.DETALLE_CORREO_NOTIF_CAV_WEB(VAR_CURSOR_WEB);


























    VC_MAIL := '<!DOCTYPE html>';
  VC_MAIL := VC_MAIL || '<html xmlns="http://www.w3.org/1999/xhtml" lang="" xml:lang="">';
    VC_MAIL := VC_MAIL ||
               '<head> <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>';
    VC_MAIL := VC_MAIL ||
               '</head>';
    VC_MAIL := VC_MAIL || '<body>';
    VC_MAIL := VC_MAIL || '<style type="text/css">';
    VC_MAIL := VC_MAIL || '.demo {
    border:1px solid #C0C0C0;
    border-collapse:collapse;
    padding:5px;
  }
  .demo th {
    border:1px solid #C0C0C0;
    padding:5px;
    background:#F0F0F0;
  }
  .demo td {
    border:1px solid #C0C0C0;
    padding:5px;
  }';
    VC_MAIL := VC_MAIL || '</style>';

  VC_MAIL := VC_MAIL || '<table>';
  VC_MAIL := VC_MAIL || '<tr>';
  VC_MAIL := VC_MAIL || '<th> Estimados, a continuación, se listarán las solicitudes que estan a 10 días corridos desde la fecha de notificación:  </th>';
  VC_MAIL := VC_MAIL || '</tr>';
  VC_MAIL := VC_MAIL || '</table> <br>';
  VC_MAIL := VC_MAIL || '<table border=1><thead>';
  VC_MAIL := VC_MAIL || '<tr>';
  VC_MAIL := VC_MAIL || '<th>Fecha de Notificación</th><th>Rut</th> <th>Fecha Máxima Traspaso</th>';
  VC_MAIL := VC_MAIL || '<th>Folio</th> <th>Institución de Destino </th>';
  VC_MAIL := VC_MAIL || '</tr>';
  VC_MAIL := VC_MAIL || '</thead>';
  VC_MAIL := VC_MAIL || '<tbody>';
   LOOP
          FETCH VAR_CURSOR_WEB
        INTO    VAR_FECHA_NOTIF_WEB,
                VAR_RUT_WEB,
                VAR_FECHA_MAXTRASPASO_WEB,
                VAR_FOLIO_WEB,
                VAR_INSTITUCION_DEST_WEB;
                EXIT WHEN VAR_CURSOR_WEB%NOTFOUND;
  IF VAR_CURSOR_WEB%ROWCOUNT = 0 THEN
     VC_ESTADO := 1; -- NO ENVIA CORREO YA QUE NO EXISTEN REGISTROS PARA EL DÍA DE HOY
  END IF;
  VC_MAIL := VC_MAIL || '<tr>';
  VC_MAIL := VC_MAIL || '<td>' || VAR_FECHA_NOTIF_WEB ||'</th>';
  VC_MAIL := VC_MAIL || '<td>' || VAR_RUT_WEB ||'</th>';
  VC_MAIL := VC_MAIL || '<td>' || VAR_FECHA_MAXTRASPASO_WEB ||'</th>';
  VC_MAIL := VC_MAIL || '<td>' || VAR_FOLIO_WEB ||'</th>';
  VC_MAIL := VC_MAIL || '<td>' || VAR_INSTITUCION_DEST_WEB ||'</th>';
  VC_MAIL := VC_MAIL || '</tr>';
   VC_ESTADO := 0;
     END LOOP;
   CLOSE VAR_CURSOR_WEB;
  VC_MAIL := VC_MAIL || '</tbody>';
  VC_MAIL := VC_MAIL || '</table>';
  VC_MAIL :=  VC_MAIL|| '<br><br>';
  VC_MAIL := VC_MAIL || '<table>';
  VC_MAIL := VC_MAIL || '<tr>';
  VC_MAIL := VC_MAIL || '<th> Saluda Atentamente.  </th></tr></table></body></html>';
  IF VC_ESTADO = 0 THEN
  VC_CORREOS_DEST := FRAMEWORK.PCK_PARAMETRO.OBTENERVARCHAR2('AFI','DIR_CORREO_FUNC');
--  VC_CORREOS_DEST
  VAR_ESTADO := FRAMEWORK.PCK_PROPOSITO_GENERAL.ENVIAR_MAIL(VC_CORREOS_DEST,
                                                               'SOLICITUDES INGRESADAS DIARIAS TECAV VIA WEB',
                                                               VC_MAIL,
                                                               'framework.oracle@cuprum.cl');
  END IF;
  -- DATOS DE LAS SOLICITUDES VIA FORMULARIO A 20 DÍAS DE FECHA DE NOTIFICACIÓN .-
  --SOLICITUDES.PCK_CONSOLIDADO_TRAMITES.DETALLE_CORREO_INGRESOS_CAV(VAR_CURSOR);
/*  IF VAR_CURSOR_WEB%ROWCOUNT != 0 THEN
 END IF;*/
END ENVIAR_CORREO_TECAVNOTIF_WEB;
       --***********************************************************************
    --  NOMBRE              : ENVIAR_CORREO_TECAVNOTIF_WEB
    --  NEGOCIO             : CLIENTE
    --  TIPO OBJETO         : PROCEDIMIENTO
    --  TIPO RETORNO        : N/A
    --  DESCRIPCION         : ENVIA CORREO ELECTRONICO A USUARIOS, AQUELLAS NOTIFICADAS 20  DIAS CORRIDOS POR FORMULARIO.
    --  PARAMETROS          :
    --  CREADO POR          : SEBASTIAN JIMENEZ (RYC) 1554
    --  FECHA CREACION      : 15-12-2015
    --***********************************************************************
PROCEDURE ENVIAR_CORREO_TECAVNOTIF_FORMU AS
VAR_CURSOR_FORMULARIO   TCURSOR;
VC_MAIL VARCHAR2(20000);
VAR_FECHA_NOTIF_FORMU VARCHAR2(30);
VAR_RUT_FORMU VARCHAR2(30);
VAR_FECHA_MAXTRASPASO_FORMU VARCHAR2(30);
VAR_FOLIO_FORMU VARCHAR2(30);
VAR_INSTITUCION_DEST_FORMU VARCHAR2(30);
VC_ESTADO VARCHAR2(1);
VAR_ESTADO NUMBER;
VC_CORREOS_DEST VARCHAR2(150);
BEGIN
  -- DATOS DE LAS SOLICITUDES VÍA FORMULARIO A 20 DÍAS DE FECHA DE NOTIFICACIÓN.-
  SOLICITUDES.PCK_CONSOLIDADO_TRAMITES.DETALLE_CORREO_NOTIF_CAV_FORMU(VAR_CURSOR_FORMULARIO);
  VC_MAIL :='<!DOCTYPE html>';
  VC_MAIL := VC_MAIL || '<html xmlns="http://www.w3.org/1999/xhtml" lang="" xml:lang="">';
  VC_MAIL := VC_MAIL ||
               '<head> <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>';
    VC_MAIL := VC_MAIL ||
               '</head>';
  VC_MAIL := VC_MAIL || '<body>';
  VC_MAIL := VC_MAIL || '<style type="text/css">';
  VC_MAIL := VC_MAIL || '.demo {
    border:1px solid #C0C0C0;
    border-collapse:collapse;
    padding:5px;
  }
  .demo th {
    border:1px solid #C0C0C0;
    padding:5px;
    background:#F0F0F0;
  }
  .demo td {
    border:1px solid #C0C0C0;
    padding:5px;
  }';
  VC_MAIL := VC_MAIL || '</style>';
    VC_MAIL := VC_MAIL || '<table>';
    VC_MAIL := VC_MAIL || '<tr>';
  VC_MAIL := VC_MAIL || '<th> Estimados, a continuación, se listarán las solicitudes que estan a 20 días corridos desde la fecha de notificación:  </th>';
    VC_MAIL := VC_MAIL || '</tr>';
    VC_MAIL := VC_MAIL || '</table> <br>';
    VC_MAIL := VC_MAIL || '<table border=1><thead>';
    VC_MAIL := VC_MAIL || '<tr>';
  VC_MAIL := VC_MAIL || '<th>Fecha de Notificación</th><th>Rut</th> <th>Fecha Máxima Traspaso</th>';
    VC_MAIL := VC_MAIL || '<th>Folio</th> <th>Institución de Destino </th>';
    VC_MAIL := VC_MAIL || '</tr>';
    VC_MAIL := VC_MAIL || '</thead>';

    VC_MAIL := VC_MAIL || '<tbody>';

    LOOP

      FETCH VAR_CURSOR_FORMULARIO

        INTO    VAR_FECHA_NOTIF_FORMU,
                VAR_RUT_FORMU,
                VAR_FECHA_MAXTRASPASO_FORMU,
                VAR_FOLIO_FORMU,
                VAR_INSTITUCION_DEST_FORMU;
      EXIT WHEN VAR_CURSOR_FORMULARIO%NOTFOUND;

      IF VAR_CURSOR_FORMULARIO%ROWCOUNT = 0 THEN

        VC_ESTADO := 1; -- NO ENVIA CORREO YA QUE NO EXISTEN REGISTROS PARA EL DÍA DE HOY

      END IF;

      VC_MAIL := VC_MAIL || '<tr>';
      VC_MAIL := VC_MAIL || '<td>' || VAR_FECHA_NOTIF_FORMU || '</th>';
      VC_MAIL := VC_MAIL || '<td>' || VAR_RUT_FORMU || '</th>';
  VC_MAIL := VC_MAIL || '<td>' || VAR_FECHA_MAXTRASPASO_FORMU ||'</th>';
      VC_MAIL := VC_MAIL || '<td>' || VAR_FOLIO_FORMU || '</th>';
      VC_MAIL := VC_MAIL || '<td>' || VAR_INSTITUCION_DEST_FORMU || '</th>';
      VC_MAIL := VC_MAIL || '</tr>';

      VC_ESTADO := 0;

    END LOOP;
    CLOSE VAR_CURSOR_FORMULARIO;

    VC_MAIL := VC_MAIL || '</tbody>';
    VC_MAIL := VC_MAIL || '</table>';
    VC_MAIL := VC_MAIL || '<br><br>';

    VC_MAIL := VC_MAIL || '<table>';
    VC_MAIL := VC_MAIL || '<tr>';
  VC_MAIL := VC_MAIL || '<th> Saluda Atentamente.  </th></tr></table></body></html>';

    IF VC_ESTADO = 0 THEN

    VC_CORREOS_DEST := FRAMEWORK.PCK_PARAMETRO.OBTENERVARCHAR2('AFI','DIR_CORREO_FUNC');

      --  VC_CORREOS_DEST
      VAR_ESTADO := FRAMEWORK.PCK_PROPOSITO_GENERAL.ENVIAR_MAIL(VC_CORREOS_DEST,
                                                                'SOLICITUDES INGRESADAS DIARIAS TECAV VIA FORMULARIO',
                                                                VC_MAIL,
                                                                'framework.oracle@cuprum.cl');

    END IF;

    -- DATOS DE LAS SOLICITUDES VIA FORMULARIO A 20 DÍAS DE FECHA DE NOTIFICACIÓN .-
    --SOLICITUDES.PCK_CONSOLIDADO_TRAMITES.DETALLE_CORREO_INGRESOS_CAV(VAR_CURSOR);
    /*  IF VAR_CURSOR_WEB%ROWCOUNT != 0 THEN
    END IF;*/

  END ENVIAR_CORREO_TECAVNOTIF_FORMU;

  PROCEDURE TRAMITE_AUT_PFG(VINU_ID_SOLICITUD   IN NUMBER, -- ID SOLICITUD
                            VINU_ID_NUM_CLIENTE IN NUMBER, -- ID DEL CLIENTE
                            VINU_TIPO_SOLICITUD IN NUMBER, -- TIPO SOLICITUD
                            VIVC_TIPO_SALIDA    IN VARCHAR2, -- R RESUMEN   D DETALLADA
                            VOCUR_XML           OUT TCURSOR) AS
    VAR_XML                   CLOB;
    VAR_CURSOR                TCURSOR;
    VAR_CONTADOR              NUMBER;
    VAR_DESCRIPCION_SOLICITUD VARCHAR2(200);
    VAR_FOLIO                 VARCHAR2(20);
    VAR_FECHA_SOLICITUD       VARCHAR2(12);
    VAR_ESTADO_SOLICITUD      VARCHAR2(50);
    VAR_VIA_INGRESO           VARCHAR2(50);
    -- INFO REPORTE
    VAR_ID_REPORTE   VARCHAR2(4);
    VAR_ID_FORMATO   VARCHAR2(5);
    VAR_TIPO_TRAMITE VARCHAR2(2);
    -- INFO AFILIADO
    VAR_NOMBRE     VARCHAR2(80);
    VAR_ID_PERSONA VARCHAR(15);
    VAR_DIRECCION  VARCHAR2(200);
    VAR_REGION     VARCHAR2(80);
    VAR_COMUNA     VARCHAR2(60);
    VAR_TELEFONO   VARCHAR(15);
    VAR_EMAIL      VARCHAR(80);
    -- INFO SOLICITUD CLAVE
    VAR_ACEPTA       VARCHAR2(100);
    VAR_FECHA_ACEPTA VARCHAR2(100);
    VAR_VIA_ACEPTA   VARCHAR2(100);

  BEGIN

    VAR_CONTADOR := 0;

    IF VIVC_TIPO_SALIDA = 'D' THEN
      SELECT C.ID_REPORTE_DETALLE, C.ID_FORMATO_DETALLE
        INTO VAR_ID_REPORTE, VAR_ID_FORMATO
        FROM TIPO_MENU_CONSOLIDADO C
       WHERE C.ID_TIPO_SOLICITUD = VINU_TIPO_SOLICITUD;
    ELSE
      SELECT C.ID_REPORTE_COMPROBANTE,
             C.ID_FORMATO_COMPROBANTE,
             C.TIPO_TRAMITE
        INTO VAR_ID_REPORTE, VAR_ID_FORMATO, VAR_TIPO_TRAMITE
        FROM TIPO_MENU_CONSOLIDADO C
       WHERE C.ID_TIPO_SOLICITUD = VINU_TIPO_SOLICITUD;
    END IF;

    IF VIVC_TIPO_SALIDA = 'D' THEN

      /*CLIENTE.PCK_INFORMACION_PUBLICA.DETALLE_CONSOLIDADO(VINU_ID_SOLICITUD,
                                                           VINU_ID_NUM_CLIENTE,
                                                           VAR_CURSOR);

      VAR_XML := '<SOL_CLAVE>' || '<Identificacion>' || '<IdReporte>' ||
                 VAR_ID_REPORTE || '</IdReporte>' || '<IdFormato>' ||
                 VAR_ID_FORMATO || '</IdFormato>' || '</Identificacion>';

      LOOP
        FETCH VAR_CURSOR
          INTO VAR_NOMBRE,
               VAR_ID_PERSONA,
               VAR_DIRECCION,
               VAR_REGION,
               VAR_COMUNA,
               VAR_TELEFONO,
               VAR_EMAIL,
               VAR_ACEPTA,
               VAR_FECHA_ACEPTA,
               VAR_VIA_ACEPTA;

        EXIT WHEN VAR_CURSOR%NOTFOUND;

        IF VAR_CONTADOR = 0 THEN
          VAR_XML := VAR_XML || '<INFO_SOLICITUD>' || '<AGENCIA>' ||
                     VAR_ACEPTA || '</AGENCIA>' || '<NOMB_EJECUTIVO>' ||
                     VAR_FECHA_ACEPTA || '</NOMB_EJECUTIVO>' ||
                     '<RUT_EJECUTIVO>' || VAR_VIA_ACEPTA ||
                     '</RUT_EJECUTIVO>' || '</INFO_SOLICITUD>';

        END IF;

        VAR_CONTADOR := VAR_CONTADOR + 1;

      END LOOP;
      CLOSE VAR_CURSOR;

      VAR_XML := VAR_XML || '</SOL_CLAVE>';*/

      VAR_XML := '';

    ELSE

      VAR_XML := '<COMPROBANTE_RESUMEN>' || '<Identificacion>' ||
                 '<IdReporte>' || VAR_ID_REPORTE || '</IdReporte>' ||
                 '<IdFormato>' || VAR_ID_FORMATO || '</IdFormato>' ||
                 '</Identificacion>';

      CLIENTE.PCK_INFORMACION_PUBLICA.DETALLE_CONSOLIDADO(VINU_ID_SOLICITUD,
                                                          VINU_ID_NUM_CLIENTE,
                                                          VAR_CURSOR);

      SOLICITUDES.PCK_CONSOLIDADO_TRAMITES.RESUMEN_SOLICITUD(VINU_ID_SOLICITUD,
                                                             VAR_DESCRIPCION_SOLICITUD,
                                                             VAR_FOLIO,
                                                             VAR_FECHA_SOLICITUD,
                                                             VAR_ESTADO_SOLICITUD,
                                                             VAR_VIA_INGRESO);

      LOOP
        FETCH VAR_CURSOR
          INTO VAR_NOMBRE,
               VAR_ID_PERSONA,
               VAR_DIRECCION,
               VAR_REGION,
               VAR_COMUNA,
               VAR_TELEFONO,
               VAR_EMAIL,
               VAR_ACEPTA,
               VAR_FECHA_ACEPTA,
               VAR_VIA_ACEPTA;

        EXIT WHEN VAR_CURSOR%NOTFOUND;

        IF VAR_CONTADOR = 0 THEN
          VAR_XML := VAR_XML || '<COMPROBANTE>' || '<ID_TIPO_TRAMITE>' ||
                     VAR_TIPO_TRAMITE || '</ID_TIPO_TRAMITE>' || '<NOMBRE>' ||
                     VAR_NOMBRE || '</NOMBRE>' || '<RUT>' || VAR_ID_PERSONA ||
                     '</RUT>' || '<DOMICILIO>' || VAR_DIRECCION ||
                     '</DOMICILIO>' || '<REGION>' || VAR_REGION ||
                     '</REGION>' || '<COMUNA>' || VAR_COMUNA || '</COMUNA>' ||
                     '<TELEFONO>' || VAR_TELEFONO || '</TELEFONO>' ||
                     '<EMAIL>' || VAR_EMAIL || '</EMAIL>' ||
                     '<TITULO_COLUMNA>Fecha Aceptación Contrato de Prestaciones Remotas</TITULO_COLUMNA>' ||
                     '<INFO_COLUMNA>' || VAR_FECHA_SOLICITUD ||
                     '</INFO_COLUMNA>' || '<ESTADO>' ||
                     VAR_ESTADO_SOLICITUD || '</ESTADO>' || '<VIA_INGRESO>' ||
                     VAR_VIA_INGRESO || '</VIA_INGRESO>' ||
                     '<FECHA_SOLICITUD>' || VAR_FECHA_SOLICITUD ||
                     '</FECHA_SOLICITUD>' || '<NRO_FOLIO>' || VAR_FOLIO ||
                     '</NRO_FOLIO>' || '<DESCRIPCION_TRAMITE>' ||
                     VAR_DESCRIPCION_SOLICITUD || '</DESCRIPCION_TRAMITE>' ||
                     '</COMPROBANTE>' || '<INFO_SOLICITUD>' || '<ACEPTA>' ||
                     VAR_ACEPTA || '</ACEPTA>' || '<FECHA>' ||
                     VAR_FECHA_ACEPTA || '</FECHA>' ||
                     '<VIA>' || VAR_VIA_ACEPTA ||
                     '</VIA>' || '</INFO_SOLICITUD>';

        END IF;

        VAR_CONTADOR := VAR_CONTADOR + 1;

      END LOOP;
      CLOSE VAR_CURSOR;

      VAR_XML := VAR_XML || '</COMPROBANTE_RESUMEN>';

    END IF;

    OPEN VOCUR_XML FOR
      SELECT VAR_XML AS XML FROM DUAL;

  END TRAMITE_AUT_PFG;
  --***********************************************************************
  --  NOMBRE              : TRAMITE_SOLICITUD_BR
  --  NEGOCIO             : CLIENTE
  --  TIPO OBJETO         : PROCEDIMIENTO
  --  TIPO RETORNO        : N/A
  --  DESCRIPCION         : DEVUELVE UN XML CON LA INFORMACION CONTENIDA EN SOLICITUDES.SOLICITUD, EL CAMPO CLOB
  --                       ESTE XML CONTIENE LA INFORMACION DE LA SOLICITUD BR.
  --  PARAMETROS          : VINU_ID_SOLICITUD   IN  NUMBER  : NUM SOLICITUD DE BR. SOLICITUDES.SOLICITUD.FOLIO =BONOS.SOLICITUD_BONO.CORRELATIVO_SOLICITUD
  --                        VINU_ID_NUM_CLIENTE IN  NUMBER  : NUM_CLIENTE
  --                        VINU_TIPO_SOLICITUD IN  NUMBER  : TIPO DE SOLICITUD
  --                        VIVC_TIPO_SALIDA    IN  VARCHAR2: D: DETALLE, X:OTROS
  --                         VOCUR_XML  : SALIDA XML
  --  CREADO POR          : JUAN JEREZ (RYC) 2203
  --  FECHA CREACION      : 15-02-2017
  --***********************************************************************

  /*PROCEDURE TRAMITE_SOLICITUD_BR (VINU_ID_SOLICITUD   IN  NUMBER,
                                VINU_ID_NUM_CLIENTE IN  NUMBER,
                                VINU_TIPO_SOLICITUD IN  NUMBER,
                                VIVC_TIPO_SALIDA    IN  VARCHAR2,
                                VOCUR_XML           OUT TCURSOR) AS
    VC_XML      CLOB;
    VC_CURSOR   TCURSOR;
    VC_CONTADOR NUMBER;
    VC_ID_SOLICITUD               VARCHAR2(100);
    VC_RUT                        VARCHAR2(100);
    VC_NOMBRE_CLIENTE             VARCHAR2(255);
    VC_DIRECCION                  VARCHAR2(255);
    VC_COMUNA                     VARCHAR2(255);
    VC_CIUDAD                     VARCHAR2(255);
    VC_TELEFONO                   VARCHAR2(255);
    VC_EMAIL                      VARCHAR2(255);
    VC_FOLIO                      VARCHAR2(100);
    VC_FECHA_SOLICITUD            VARCHAR2(100);
    VC_ESTADO                     VARCHAR2(100);
    VC_MOTIVO_RECHAZO             VARCHAR2(255);
    VC_ORIGEN_SOLICITUD           VARCHAR2(255);

      -- INFO REPORTE
    VC_ID_REPORTE   VARCHAR2(100);
    VC_ID_FORMATO   VARCHAR2(100);
    VC_TIPO_TRAMITE VARCHAR2(100);

    --INFO SBR
    VC_DES_TIPO_SOL VARCHAR2(100);
    VC_TIPO_SOL    VARCHAR2(100);
    VC_ID_ESTADO        VARCHAR2(255);
    VC_SUCURSAL         VARCHAR2(100);
    VC_ID_WORKFLOW      VARCHAR2(100);
    VC_DV_AFECTADO      VARCHAR2(100);
    VC_DV_SOLICITANTE   VARCHAR2(100);
    VC_COD_AMIN_SOL     VARCHAR2(100);
    VC_TIPO_RUT        VARCHAR2(100);
    VC_TIPO_CAUSAL_SOL  VARCHAR2(100);
    VC_NUMERO_GUIA      VARCHAR2(100);
    VC_CIUDAD_INS_NAC   VARCHAR2(100);
    VC_Ind_Ley_Continuidad         VARCHAR2(100);
    VC_Ind_Inst_LeyCont VARCHAR2(100);
    VC_Ind_Declaracion_Jurada VARCHAR2(100);
    VC_Ind_Pension_Antiguo VARCHAR2(100);
    VC_CajaPrev         VARCHAR2(255);
    VC_UsuarioIns       VARCHAR2(100);

  BEGIN

     VC_CONTADOR := -1;

       IF VIVC_TIPO_SALIDA = 'D' THEN
          SELECT DISTINCT C.ID_REPORTE_DETALLE, C.ID_FORMATO_DETALLE
                 INTO VC_ID_REPORTE, VC_ID_FORMATO
          FROM   CLIENTE.TIPO_MENU_CONSOLIDADO C
          WHERE  C.ID_TIPO_SOLICITUD = VINU_TIPO_SOLICITUD;
       ELSE
            SELECT C.ID_REPORTE_COMPROBANTE,
                   C.ID_FORMATO_COMPROBANTE,
                   C.TIPO_TRAMITE
                   INTO VC_ID_REPORTE, VC_ID_FORMATO,VC_TIPO_TRAMITE
            FROM   CLIENTE.TIPO_MENU_CONSOLIDADO C
            WHERE  C.ID_TIPO_SOLICITUD = VINU_TIPO_SOLICITUD;
      END IF;

      SOLICITUDES.PCK_CONSOLIDADO_TRAMITES.DETALLE_SOLICITUD_BR(VINU_ID_SOLICITUD,
                                                                VC_CURSOR);

      IF VIVC_TIPO_SALIDA = 'D' THEN
      --** INFO REPORTE
      VC_XML := '<COMPROBANTE_RESUMEN>' || '<Identificacion>' || '<IdReporte>' ||
                 VC_ID_REPORTE || '</IdReporte>' || '<IdFormato>' ||
                 VC_ID_FORMATO || '</IdFormato>' || '</Identificacion>';


      LOOP
        FETCH VC_CURSOR
       INTO    VC_ID_SOLICITUD,
                VC_DES_TIPO_SOL,
                VC_TIPO_RUT,
                VC_RUT,
                VC_TIPO_SOL,
                VC_FECHA_SOLICITUD,
                VC_FOLIO,
                VC_FECHA_SOLICITUD,
                VC_RUT,
                VC_ID_ESTADO,
                VC_SUCURSAL,
                VC_ID_WORKFLOW,
                VC_FECHA_SOLICITUD,
                VC_DV_AFECTADO,
                VC_DV_SOLICITANTE,
                VC_COD_AMIN_SOL,
                VC_TIPO_RUT,
                VC_FECHA_SOLICITUD,
                VC_TIPO_CAUSAL_SOL,
                VC_NUMERO_GUIA,
                VC_CIUDAD_INS_NAC,
                VC_Ind_Ley_Continuidad,
                VC_Ind_Inst_LeyCont,
                VC_Ind_Declaracion_Jurada,
                VC_Ind_Pension_Antiguo,
                VC_CajaPrev,
                VC_UsuarioIns,
                VC_NOMBRE_CLIENTE,
                VC_RUT,
                VC_DIRECCION,
                VC_CIUDAD,
                VC_COMUNA,
                VC_TELEFONO,
                VC_EMAIL
                ;

                EXIT WHEN VC_CURSOR%NOTFOUND;

        IF VC_CONTADOR = -1 THEN
          VC_CONTADOR := 0;
        END IF;
        --**********ARMA EL XML DE LA SOLICITUD COMPLETA PARA GUARDARLO EN EL CLOB
        VC_XML := VC_XML ||
                                 '<COMPROBANTE>' ||
                                     '<ID_TIPO_TRAMITE>' || VC_TIPO_TRAMITE || '</ID_TIPO_TRAMITE>' ||
                                     '<NOMBRE>' || VC_NOMBRE_CLIENTE || '</NOMBRE>' ||
                                     '<RUT>' || VC_RUT || '</RUT>' ||
                                     '<DOMICILIO>' || VC_DIRECCION || '</DOMICILIO>' ||
                                     '<CIUDAD>' || VC_CIUDAD || '</CIUDAD>'||
                                     '<COMUNA>' || VC_COMUNA || '</COMUNA>' ||
                                     '<TELEFONO>' || VC_TELEFONO || '</TELEFONO>' ||
                                     '<EMAIL>' || VC_EMAIL || '</EMAIL>' ||
                                     '<NRO_FOLIO>' || VC_FOLIO || '</NRO_FOLIO>' ||
                                     '<ESTADO>' || VC_ESTADO || '</ESTADO>' ||
                                     '<VIA_INGRESO>' || VC_ORIGEN_SOLICITUD ||'</VIA_INGRESO>' ||
                                     '<FECHA_SOLICITUD>' || VC_FECHA_SOLICITUD || '</FECHA_SOLICITUD>' ||
                                     '<DESCRIPCION_TRAMITE>'||VC_DES_TIPO_SOL||' </DESCRIPCION_TRAMITE>' ||
                                     '<MOTIVORECHAZO>' || VC_MOTIVO_RECHAZO || '</MOTIVORECHAZO>' ||
                                     '</COMPROBANTE>';
          VC_XML := VC_XML ||
                              '<Solicitud>
                              <Cliente>
                                  <Nombre>' || VC_NOMBRE_CLIENTE || '</Nombre>' ||

                                  '<Rut>' || VC_RUT || '-'||VC_DV_SOLICITANTE|| '</Rut>' ||
                                  '<Domicilio>' || VC_DIRECCION || '</Domicilio>' ||
                                  '<Ciudad>' || VC_CIUDAD || '</Ciudad>'||
                                  '<Comuna>' || VC_COMUNA || '</Comuna>' ||
                                  '<Telefono>' || VC_TELEFONO || '</Telefono>' ||
                                  '<Email>' || VC_EMAIL || '</Email>
                              </Cliente>
                              <DetalleSolicitud>
                                <IdSolicitud>'|| VC_ID_SOLICITUD ||'</IdSolicitud>
                                <DesTipoSolicitud>' || VC_DES_TIPO_SOL || '</DesTipoSolicitud>
                                <TipoRutAfectado>' || VC_TIPO_RUT || '</TipoRutAfectado>
                                <RutAfectado>' || VC_RUT || '</RutAfectado>
                                <TipoSolicitud>' || '136' || '</TipoSolicitud>
                                <FechaSolicitud>' || VC_FECHA_SOLICITUD || '</FechaSolicitud>
                                <Folio>' || VC_FOLIO || '</Folio>
                                <FechaMaterializacion>' || VC_FECHA_SOLICITUD || '</FechaMaterializacion>
                                <RutSolicitante>' || VC_RUT || '</RutSolicitante>
                                <IdEstado>' || VC_ID_ESTADO || '</IdEstado>
                                <CodSucursal>' || VC_SUCURSAL || '</CodSucursal>
                                <TipoRutVendedor>' || 0 || '</TipoRutVendedor>
                                <IdWf>' || VC_ID_WORKFLOW || '</IdWf>
                                <FechaRecepcion>' || VC_FECHA_SOLICITUD || '</FechaRecepcion>
                                <DvAfectado>' || VC_DV_SOLICITANTE || '</DvAfectado>
                                <DvSolicitante>' || VC_DV_SOLICITANTE || '</DvSolicitante>
                                <CodAdmSolicitud>' || VC_COD_AMIN_SOL || '</CodAdmSolicitud>
                                <TipoSolicitante>' || VC_TIPO_RUT || '</TipoSolicitante>
                                <FechaEstadoSolicitud>' || VC_FECHA_SOLICITUD || '</FechaEstadoSolicitud>
                                <TipoCausalSol>' || VC_TIPO_CAUSAL_SOL || '</TipoCausalSol>
                                <NGuia>' || VC_NUMERO_GUIA || '</NGuia>
                                <CuidadInsNac>' || VC_CIUDAD_INS_NAC || '</CuidadInsNac>
                                <IndLeyContinuidad>' || VC_Ind_Ley_Continuidad || '</IndLeyContinuidad>
                                <IndInstLeyCont>' || VC_Ind_Inst_LeyCont || '</IndInstLeyCont>
                                <IndDeclaracionJurada>' || VC_Ind_Declaracion_Jurada || '</IndDeclaracionJurada>
                                <IndOPensionAntiguo>' || VC_Ind_Pension_Antiguo || '</IndOPensionAntiguo>
                                <CajaPrev>' || VC_CajaPrev || '</CajaPrev>
                                <UsuarioIns>' || VC_UsuarioIns || '</UsuarioIns>

                              </DetalleSolicitud>
                              </Solicitud>';



        VC_CONTADOR := VC_CONTADOR + 1;

      END LOOP;

      CLOSE VC_CURSOR;

      VC_XML := VC_XML || '</COMPROBANTE_RESUMEN>';

     ELSE
       --INFOR DEL REPORTE
       VC_XML := '<COMPROBANTE_RESUMEN>' || '<Identificacion>' || '<IdReporte>' ||
                 VC_ID_REPORTE || '</IdReporte>' || '<IdFormato>' ||
                 VC_ID_FORMATO || '</IdFormato>' || '</Identificacion>';

      LOOP
        FETCH VC_CURSOR
       INTO    VC_ID_SOLICITUD,
                VC_DES_TIPO_SOL,
                VC_TIPO_RUT,
                VC_RUT,
                VC_TIPO_SOL,
                VC_FECHA_SOLICITUD,
                VC_FOLIO,
                VC_FECHA_SOLICITUD,
                VC_RUT,
                VC_ID_ESTADO,
                VC_SUCURSAL,
                VC_ID_WORKFLOW,
                VC_FECHA_SOLICITUD,
                VC_DV_AFECTADO,
                VC_DV_SOLICITANTE,
                VC_COD_AMIN_SOL,
                VC_TIPO_RUT,
                VC_FECHA_SOLICITUD,
                VC_TIPO_CAUSAL_SOL,
                VC_NUMERO_GUIA,
                VC_CIUDAD_INS_NAC,
                VC_Ind_Ley_Continuidad,
                VC_Ind_Inst_LeyCont,
                VC_Ind_Declaracion_Jurada,
                VC_Ind_Pension_Antiguo,
                VC_CajaPrev,
                VC_UsuarioIns,
                VC_NOMBRE_CLIENTE,
                VC_RUT,
                VC_DIRECCION,
                VC_CIUDAD,
                VC_COMUNA,
                VC_TELEFONO,
                VC_EMAIL
                ;

                EXIT WHEN VC_CURSOR%NOTFOUND;

        IF VC_CONTADOR = -1 THEN
          VC_CONTADOR := 0;
        END IF;

        --**********ARMA EL XML DE LA SOLICITUD COMPLETA PARA GUARDARLO EN EL CLOB
        VC_XML := VC_XML ||
                                 '<COMPROBANTE>' ||
                                     '<ID_TIPO_TRAMITE>' || VC_TIPO_TRAMITE || '</ID_TIPO_TRAMITE>' ||
                                     '<NOMBRE>' || VC_NOMBRE_CLIENTE || '</NOMBRE>' ||
                                     '<RUT>' || VC_RUT || '</RUT>' ||
                                     '<DOMICILIO>' || VC_DIRECCION || '</DOMICILIO>' ||
                                     '<CIUDAD>' || VC_CIUDAD || '</CIUDAD>'||
                                     '<COMUNA>' || VC_COMUNA || '</COMUNA>' ||
                                     '<TELEFONO>' || VC_TELEFONO || '</TELEFONO>' ||
                                     '<EMAIL>' || VC_EMAIL || '</EMAIL>' ||
                                     '<NRO_FOLIO>' || VC_FOLIO || '</NRO_FOLIO>' ||
                                     '<ESTADO>' || VC_ESTADO || '</ESTADO>' ||
                                     '<VIA_INGRESO>' || VC_ORIGEN_SOLICITUD ||'</VIA_INGRESO>' ||
                                     '<FECHA_SOLICITUD>' || VC_FECHA_SOLICITUD || '</FECHA_SOLICITUD>' ||
                                     '<DESCRIPCION_TRAMITE>'||VC_DES_TIPO_SOL||' </DESCRIPCION_TRAMITE>' ||
                                     '<MOTIVORECHAZO>' || VC_MOTIVO_RECHAZO || '</MOTIVORECHAZO>' ||
                                     '</COMPROBANTE>';
          VC_XML := VC_XML ||
                              '<Solicitud>
                              <Cliente>
                                  <Nombre>' || VC_NOMBRE_CLIENTE || '</Nombre>' ||

                                  '<Rut>' || VC_RUT ||'-'||VC_DV_SOLICITANTE|| '</Rut>' ||
                                  '<Domicilio>' || VC_DIRECCION || '</Domicilio>' ||
                                  '<Ciudad>' || VC_CIUDAD || '</Ciudad>'||
                                  '<Comuna>' || VC_COMUNA || '</Comuna>' ||
                                  '<Telefono>' || VC_TELEFONO || '</Telefono>' ||
                                  '<Email>' || VC_EMAIL || '</Email>
                              </Cliente>
                              <DetalleSolicitud>
                                 <IdSolicitud>'|| VC_ID_SOLICITUD ||'</IdSolicitud>
                                <DesTipoSolicitud>' || VC_DES_TIPO_SOL || '</DesTipoSolicitud>
                                <TipoRutAfectado>' || VC_TIPO_RUT || '</TipoRutAfectado>
                                <RutAfectado>' || VC_RUT || '</RutAfectado>
                                <TipoSolicitud>' || '136' || '</TipoSolicitud>
                                <FechaSolicitud>' || VC_FECHA_SOLICITUD || '</FechaSolicitud>
                                <Folio>' || VC_FOLIO || '</Folio>
                                <FechaMaterializacion>' || VC_FECHA_SOLICITUD || '</FechaMaterializacion>
                                <RutSolicitante>' || VC_RUT || '</RutSolicitante>
                                <IdEstado>' || VC_ID_ESTADO || '</IdEstado>
                                <CodSucursal>' || VC_SUCURSAL || '</CodSucursal>
                                <TipoRutVendedor>' || 0 || '</TipoRutVendedor>
                                <IdWf>' || VC_ID_WORKFLOW || '</IdWf>
                                <FechaRecepcion>' || VC_FECHA_SOLICITUD || '</FechaRecepcion>
                                <DvAfectado>' || VC_DV_SOLICITANTE || '</DvAfectado>
                                <DvSolicitante>' || VC_DV_SOLICITANTE || '</DvSolicitante>
                                <CodAdmSolicitud>' || VC_COD_AMIN_SOL || '</CodAdmSolicitud>
                                <TipoSolicitante>' || VC_TIPO_RUT || '</TipoSolicitante>
                                <FechaEstadoSolicitud>' || VC_FECHA_SOLICITUD || '</FechaEstadoSolicitud>
                                <TipoCausalSol>' || VC_TIPO_CAUSAL_SOL || '</TipoCausalSol>
                                <NGuia>' || VC_NUMERO_GUIA || '</NGuia>
                                <CuidadInsNac>' || VC_CIUDAD_INS_NAC || '</CuidadInsNac>
                                <IndLeyContinuidad>' || VC_Ind_Ley_Continuidad || '</IndLeyContinuidad>
                                <IndInstLeyCont>' || VC_Ind_Inst_LeyCont || '</IndInstLeyCont>
                                <IndDeclaracionJurada>' || VC_Ind_Declaracion_Jurada || '</IndDeclaracionJurada>
                                <IndOPensionAntiguo>' || VC_Ind_Pension_Antiguo || '</IndOPensionAntiguo>
                                <CajaPrev>' || VC_CajaPrev || '</CajaPrev>
                                <UsuarioIns>' || VC_UsuarioIns || '</UsuarioIns>

                              </DetalleSolicitud>
                              </Solicitud>';



        VC_CONTADOR := VC_CONTADOR + 1;

      END LOOP;
      CLOSE VC_CURSOR;

      VC_XML := VC_XML || '</COMPROBANTE_RESUMEN>';
      --Se deja Vacio por requerimiento futuro
      VC_XML:='';

     END IF;

    IF VC_CONTADOR = -1 THEN
      VC_XML := '';
    END IF;

    OPEN VOCUR_XML FOR
      SELECT VC_XML AS XML FROM DUAL;

  END TRAMITE_SOLICITUD_BR;*/

  PROCEDURE TRAMITE_EXENCION_COT(VINU_ID_SOLICITUD   IN NUMBER, -- ID SOLICITUD
                                 VINU_ID_NUM_CLIENTE IN NUMBER, -- ID DEL CLIENTE
                                 VINU_TIPO_SOLICITUD IN NUMBER, -- TIPO SOLICITUD
                                 VIVC_TIPO_SALIDA    IN VARCHAR2, -- R RESUMEN   D DETALLADA
                                 VOCUR_XML           OUT TCURSOR) AS
    VAR_XML                   CLOB;
    VAR_CURSOR                TCURSOR;
    VAR_CONTADOR              NUMBER;
    VAR_DESCRIPCION_SOLICITUD VARCHAR2(200);
    VAR_FOLIO                 VARCHAR2(20);
    VAR_FECHA_SOLICITUD       VARCHAR2(12);
    VAR_ESTADO_SOLICITUD      VARCHAR2(50);
    VAR_VIA_INGRESO           VARCHAR2(50);
    -- INFO REPORTE
    VAR_ID_REPORTE   VARCHAR2(4);
    VAR_ID_FORMATO   VARCHAR2(5);
    VAR_TIPO_TRAMITE VARCHAR2(2);
    -- INFO AFILIADO
    VAR_NOMBRE     VARCHAR2(80);
    VAR_ID_PERSONA VARCHAR(15);
    VAR_DIRECCION  VARCHAR2(200);
    VAR_REGION     VARCHAR2(80);
    VAR_COMUNA     VARCHAR2(60);
    VAR_TELEFONO   VARCHAR(15);
    VAR_EMAIL      VARCHAR(80);
    -- INFO SOLICITUD EXENCION
    VAR_SOLICITUD           VARCHAR2(100);
    VAR_FECHA_DEVENGAMIENTO VARCHAR2(20);
    VAR_SIS_PREVISIONAL     VARCHAR2(100);
    VAR_RUT_EMP             VARCHAR2(20);
    VAR_NOMBRE_EMP          VARCHAR2(200);
    VAR_MAIL_EMP            VARCHAR2(150);
    VAR_EXENTO              VARCHAR2(10);

  BEGIN

    VAR_CONTADOR := 0;

    IF VIVC_TIPO_SALIDA = 'D' THEN
      SELECT C.ID_REPORTE_DETALLE, C.ID_FORMATO_DETALLE
        INTO VAR_ID_REPORTE, VAR_ID_FORMATO
        FROM TIPO_MENU_CONSOLIDADO C
       WHERE C.ID_TIPO_SOLICITUD = VINU_TIPO_SOLICITUD;
    ELSE
      SELECT C.ID_REPORTE_COMPROBANTE,
             C.ID_FORMATO_COMPROBANTE,
             C.TIPO_TRAMITE
        INTO VAR_ID_REPORTE, VAR_ID_FORMATO, VAR_TIPO_TRAMITE
        FROM TIPO_MENU_CONSOLIDADO C
       WHERE C.ID_TIPO_SOLICITUD = VINU_TIPO_SOLICITUD;
    END IF;

    IF VIVC_TIPO_SALIDA = 'D' THEN

      VAR_XML := '';

    ELSE

      VAR_XML := '<COMPROBANTE_RESUMEN>' || '<Identificacion>' ||
                 '<IdReporte>' || VAR_ID_REPORTE || '</IdReporte>' ||
                 '<IdFormato>' || VAR_ID_FORMATO || '</IdFormato>' ||
                 '</Identificacion>';

      RETORNA_INFO_EXENCION(VINU_ID_SOLICITUD,
                            VAR_CURSOR); 
      SOLICITUDES.PCK_CONSOLIDADO_TRAMITES.RESUMEN_SOLICITUD(VINU_ID_SOLICITUD,
                                                             VAR_DESCRIPCION_SOLICITUD,
                                                             VAR_FOLIO,
                                                             VAR_FECHA_SOLICITUD,
                                                             VAR_ESTADO_SOLICITUD,
                                                             VAR_VIA_INGRESO);

      LOOP
        FETCH VAR_CURSOR
          INTO VAR_NOMBRE,
               VAR_ID_PERSONA,
               VAR_DIRECCION,
               VAR_REGION,
               VAR_COMUNA,
               VAR_TELEFONO,
               VAR_EMAIL,
               VAR_SOLICITUD,
               VAR_FECHA_DEVENGAMIENTO,
               VAR_SIS_PREVISIONAL,
               VAR_RUT_EMP,
               VAR_NOMBRE_EMP,
               VAR_MAIL_EMP,
               VAR_EXENTO;

        EXIT WHEN VAR_CURSOR%NOTFOUND;

        IF VAR_CONTADOR = 0 THEN

          VAR_FECHA_DEVENGAMIENTO:= SUBSTR(VAR_FECHA_DEVENGAMIENTO,5,2) || '-' || SUBSTR(VAR_FECHA_DEVENGAMIENTO,0,4);

          VAR_XML := VAR_XML || '<COMPROBANTE>' || '<ID_TIPO_TRAMITE>' ||
                     VAR_TIPO_TRAMITE || '</ID_TIPO_TRAMITE>' || '<NOMBRE>' ||
                     VAR_NOMBRE || '</NOMBRE>' || '<RUT>' || VAR_ID_PERSONA ||
                     '</RUT>' || '<DOMICILIO>' || VAR_DIRECCION ||
                     '</DOMICILIO>' || '<REGION>' || VAR_REGION ||
                     '</REGION>' || '<COMUNA>' || VAR_COMUNA || '</COMUNA>' ||
                     '<TELEFONO>' || VAR_TELEFONO || '</TELEFONO>' ||
                     '<EMAIL>' || VAR_EMAIL || '</EMAIL>' ||
                     '<TITULO_COLUMNA>Fecha Aceptación Contrato de Prestaciones Remotas</TITULO_COLUMNA>' ||
                     '<INFO_COLUMNA>' || VAR_FECHA_SOLICITUD ||
                     '</INFO_COLUMNA>' || '<ESTADO>' ||
                     VAR_ESTADO_SOLICITUD || '</ESTADO>' || '<VIA_INGRESO>' ||
                     VAR_VIA_INGRESO || '</VIA_INGRESO>' ||
                     '<FECHA_SOLICITUD>' || VAR_FECHA_SOLICITUD ||
                     '</FECHA_SOLICITUD>' || '<NRO_FOLIO>' || VAR_FOLIO ||
                     '</NRO_FOLIO>' || '<DESCRIPCION_TRAMITE>' ||
                     VAR_DESCRIPCION_SOLICITUD || '</DESCRIPCION_TRAMITE>' ||
                     '</COMPROBANTE>' || 
                       '<INFO_SOLICITUD>' || 
                         '<TIPO_SOLICITUD>' || VAR_SOLICITUD || '</TIPO_SOLICITUD>' || 
                         '<FECHA_DEVEGAMIENTO>' || VAR_FECHA_DEVENGAMIENTO || '</FECHA_DEVEGAMIENTO>' ||
                         '<SIS_PREVISIONAL>' || VAR_SIS_PREVISIONAL || '</SIS_PREVISIONAL>' || 
                         '<RUT_EMP>' || VAR_RUT_EMP || '</RUT_EMP>' || 
                         '<NOMBRE_EMP>' || VAR_NOMBRE_EMP || '</NOMBRE_EMP>' ||
                         '<EMAIL_EMP>' || VAR_MAIL_EMP || '</EMAIL_EMP>' || 
                         '<EXENTO>' || VAR_EXENTO || '</EXENTO>' || 
                     '</INFO_SOLICITUD>';

        END IF;

        VAR_CONTADOR := VAR_CONTADOR + 1;

      END LOOP;
      CLOSE VAR_CURSOR;

      VAR_XML := VAR_XML || '</COMPROBANTE_RESUMEN>';

    END IF;

    OPEN VOCUR_XML FOR
      SELECT VAR_XML AS XML FROM DUAL;

  END TRAMITE_EXENCION_COT;

  PROCEDURE TRAMITE_BOTON_DE_PAGO(VINU_ID_SOLICITUD   IN NUMBER, -- ID SOLICITUD
                                  VINU_ID_NUM_CLIENTE IN NUMBER, -- ID DEL CLIENTE
                                  VINU_TIPO_SOLICITUD IN NUMBER, -- TIPO SOLICITUD
                                  VIVC_TIPO_SALIDA    IN VARCHAR2, -- R RESUMEN   D DETALLADA
                                  VOCUR_XML           OUT TCURSOR) AS

    VAR_XML                   CLOB;
    VAR_CURSOR                TCURSOR;
    VAR_CONTADOR              NUMBER;
    VAR_DESCRIPCION_SOLICITUD VARCHAR2(200);
    VAR_FOLIO                 VARCHAR2(100);
    VAR_FECHA_SOLICITUD       VARCHAR2(100);
    VAR_ESTADO_SOLICITUD      VARCHAR2(100);
    VAR_VIA_INGRESO           VARCHAR2(100);
    -- INFO REPORTE
    VAR_ID_REPORTE   VARCHAR2(100);
    VAR_ID_FORMATO   VARCHAR2(100);
    VAR_TIPO_TRAMITE VARCHAR2(100);
    -- INFO AFILIADO
    VAR_RUT       VARCHAR(12);
    VAR_NOMBRE    VARCHAR2(100);
    VAR_DIRECCION VARCHAR2(200);
    VAR_REGION    VARCHAR2(100);
    VAR_COMUNA    VARCHAR2(100);
    VAR_TELEFONO  VARCHAR(100);
    VAR_EMAIL     VARCHAR(100);
    -- INFO DESCUENTO
    VAR_TIPO_PRODUCTO         VARCHAR2(100);
    VAR_FECHA_MATERIALIZACION VARCHAR2(100);
    VAR_REGIMEN               VARCHAR2(100);
    --INFO DATOS DEL DEPOSITO
    VAR_MEDIO_PAGO          VARCHAR(100);
    VAR_CODIGO_AUTORIZACION VARCHAR(100);
    VAR_TIPO_TRANSACCION    VARCHAR(100);
    VAR_REGIMENAPV VARCHAR2(100);
    VAR_REGIMENCAV VARCHAR2(100);
    VAR_MONTOAPV VARCHAR2(100);
    VAR_MONTOCAV VARCHAR2(100);
    VAR_DESCRIPCION_TRAMITE VARCHAR2(100);
    VAR_CUENTA VARCHAR2(100);
    VAR_MONTO VARCHAR2(100);
    VAR_GENERICO VARCHAR2(100);

  BEGIN

    SELECT SO.RUT_AFECTADO || SO.DV_AFECTADO AS RUT --RUT
          ,
           IC.NOMBRES || ' ' || IC.PATERNO || ' ' || IC.MATERNO AS NOMBRE --NOMBRE
         ,
           
          TO_CHAR(SO.FECHA_SOLICITUD,'DD-MM-YYYY') AS FECHA_SOLICITUD --FECHA SOLICITUD
          ,
          TO_CHAR(SO.FECHA_MATERIALIZACION,'DD-MM-YYYY') AS FECHA_MATERIALIZACION --FECHA_MATERIALIZACION
          ,
           SE.DESCRIPCION           AS ESTADO --ESTADO
           ------------------------DATOS DEL DEPOSITO---------------------------------
          ,
           (SO.DETALLESOLICITUD.EXTRACT('BotonPago/MedioDePago/text()')
           .GETSTRINGVAL()) AS MEDIO_DE_PAGO --MEDIO DE PAGO
          ,
           (SO.DETALLESOLICITUD.EXTRACT('BotonPago/CodigoAutorizacion/text()')
           .GETSTRINGVAL()) AS CODIGO_AUTORIZACION --CODIGO_AUTORIZACION
          ,
           (SO.DETALLESOLICITUD.EXTRACT('BotonPago/TipoTransaccion/text()')
           .GETSTRINGVAL()) AS TIPO_TRANSACCION --TIPO_TRANSACCION
          ,
           TMC.ID_REPORTE_DETALLE AS ID_REPORTE,
           TMC.ID_FORMATO_COMPROBANTE AS ID_FORMATO,
           TMC.TIPO_TRAMITE AS TIPO_TRAMITE,
           (SO.DETALLESOLICITUD.EXTRACT('BotonPago/RegimenTributarioCAV/text()')
           .GETSTRINGVAL()) AS REGIMENCAV, --REGIMENCAV
           (SO.DETALLESOLICITUD.EXTRACT('BotonPago/RegimenTributarioAPV/text()')
           .GETSTRINGVAL()) AS REGIMENAPV, --REGIMENAPV
            to_char((SO.DETALLESOLICITUD.EXTRACT('BotonPago/MontoDepositoCAV/text()')
           .GETSTRINGVAL()),'999,999,999') AS MONTOCAV, --MONTOCAV
            to_char((SO.DETALLESOLICITUD.EXTRACT('BotonPago/MontoDepositoAPV/text()')
           .GETSTRINGVAL()),'999,999,999') AS MONTOAPV --MONTOAPV

      INTO VAR_RUT,
           VAR_NOMBRE,          
           VAR_FECHA_SOLICITUD,
           VAR_FECHA_MATERIALIZACION,
           VAR_ESTADO_SOLICITUD,
           VAR_MEDIO_PAGO,
           VAR_CODIGO_AUTORIZACION,
           VAR_TIPO_TRANSACCION,
           VAR_ID_REPORTE,
           VAR_ID_FORMATO,
           VAR_TIPO_TRAMITE,
           VAR_REGIMENCAV,
           VAR_REGIMENAPV,
           VAR_MONTOCAV,
           VAR_MONTOAPV
      FROM SOLICITUDES.SOLICITUD SO
         INNER JOIN CLIENTE.IDENTIFICACION_CLIENTE IC ON SO.RUT_AFECTADO = IC.RUT
         INNER JOIN SOLICITUDES.SOLICITUD_ESTADO SE ON SO.ID_ESTADO = SE.ID_ESTADO
         INNER JOIN CLIENTE.TIPO_MENU_CONSOLIDADO TMC ON SO.TIPO_SOLICITUD = TMC.ID_TIPO_SOLICITUD
     WHERE SO.ID_SOLICITUD = VINU_ID_SOLICITUD    
       AND     SE.TIPO_SOLICITUD = 168;
             IF VAR_MONTOAPV is not null THEN
                VAR_DESCRIPCION_TRAMITE:='Depósito Directo APV';
                VAR_CUENTA :='APV';
                IF VAR_REGIMENAPV = '1' THEN
                   VAR_REGIMEN:= 'Letra A';
                ELSE 
                   IF VAR_REGIMENAPV = '2' THEN
                      VAR_REGIMEN:= 'Letra B';
                   ELSE
                      VAR_REGIMEN:= 'Sin Régimen';
                   END IF;
                END IF;
                VAR_MONTO:=REPLACE(VAR_MONTOAPV, ',','.');
             ELSE
                VAR_DESCRIPCION_TRAMITE:='Depósito Directo CAV';
                VAR_CUENTA :='CAV';
                VAR_REGIMEN:= VAR_REGIMENCAV;
                VAR_MONTO:=REPLACE(VAR_MONTOCAV, ',','.');
             END IF;

     OBTENER_DIR_FONO_EMAIL_CLI(VINU_ID_NUM_CLIENTE,
                                       VAR_DIRECCION,
                                       VAR_REGION,
                                       VAR_COMUNA,
                                       VAR_TELEFONO,
                                       VAR_EMAIL,
                                       VAR_GENERICO);


    VAR_XML := '<COMPROBANTE_RESUMEN>' ||
                  '<Identificacion>' ||
                     '<IdReporte>' || VAR_ID_REPORTE || '</IdReporte>' ||
                     '<IdFormato>' || VAR_ID_FORMATO || '</IdFormato>' ||
                   '</Identificacion>' ||
                   '<COMPROBANTE>' ||
                          '<ID_TIPO_TRAMITE>' || '168' || '</ID_TIPO_TRAMITE>' ||
                          '<NOMBRE>' || VAR_NOMBRE || '</NOMBRE>' ||
                          '<RUT>' || VAR_RUT || '</RUT>' ||
                          '<DOMICILIO>' || VAR_DIRECCION || '</DOMICILIO>' ||
                          '<REGION>' || VAR_REGION || '</REGION>' ||
                          '<COMUNA>' || VAR_COMUNA || '</COMUNA>' ||
                          '<TELEFONO>' || VAR_TELEFONO || '</TELEFONO>' ||
                          '<EMAIL>' || VAR_EMAIL || '</EMAIL>' ||
                          '<TITULO_COLUMNA>Fecha Materialización</TITULO_COLUMNA>' ||
                          '<INFO_COLUMNA>' || VAR_FECHA_MATERIALIZACION || '</INFO_COLUMNA>' ||
                          '<ESTADO>' || VAR_ESTADO_SOLICITUD || '</ESTADO>' ||
                          '<VIA_INGRESO>' || 'Web' || '</VIA_INGRESO>' ||
                          '<FECHA_SOLICITUD>' || VAR_FECHA_SOLICITUD || '</FECHA_SOLICITUD>' ||
                          '<FECHA_MATERIALIZACION>' || VAR_FECHA_MATERIALIZACION || '</FECHA_MATERIALIZACION>' ||
                          '<NRO_SOLICITUD>' || VINU_ID_SOLICITUD || '</NRO_SOLICITUD>' ||
                          '<DESCRIPCION_TRAMITE>' ||VAR_DESCRIPCION_TRAMITE  || '</DESCRIPCION_TRAMITE>' ||
                          '<NRO_FOLIO>' || VINU_ID_SOLICITUD || '</NRO_FOLIO>' ||
                   '</COMPROBANTE>' ||
                   '<INFO_DESCUENTO>' ||
                          '<CUENTA>' ||VAR_CUENTA ||'</CUENTA>' ||
                          '<REGIMEN>' || VAR_REGIMEN || '</REGIMEN>' ||
                          '<MONTO_DEPOSITO>' || VAR_MONTO || '</MONTO_DEPOSITO>' ||
                          '<MEDIO_PAGO>' || VAR_MEDIO_PAGO || '</MEDIO_PAGO>' ||
                          '<ID_SOLICITUD>' || VINU_ID_SOLICITUD || '</ID_SOLICITUD>' ||
                          '<CODIGO_AUTORIZACION>' || VAR_CODIGO_AUTORIZACION || '</CODIGO_AUTORIZACION>' ||
                          '<TIPO_TRANSACCION>' ||  VAR_TIPO_TRANSACCION || '</TIPO_TRANSACCION>' ||
                   '</INFO_DESCUENTO>' ||
                '</COMPROBANTE_RESUMEN>';

    OPEN VOCUR_XML FOR
      SELECT VAR_XML AS XML FROM DUAL;

  END TRAMITE_BOTON_DE_PAGO;

  PROCEDURE RETORNA_INFO_EXENCION(VINU_ID_SOLICITUD IN NUMBER,
                                  VOCU_SALIDA OUT TCURSOR)
  AS
  BEGIN

    OPEN VOCU_SALIDA FOR
      SELECT   CL.NOMBRES || ' ' || CL.PATERNO || ' ' ||
               CL.MATERNO                                                    AS NOMBRE,
               TRIM(TO_CHAR(CL.RUT,'99G999G999G999G999',
               'NLS_NUMERIC_CHARACTERS = ".,"')) || '-' || 
               CL.DV                                                         AS ID_PERSONA,
             D.CALLE AS DIRECCION,
             R.DESCRIPCION_LARGA AS REGION,
             C.DESCRIPCION_LARGA AS COMUNA,
             T.CODIGO_AREA || T.TELEFONO AS TELEFONO,
             E.EMAIL AS EMAIL,
             TI.NOMBRE_SOLICITUD AS SOLICITUD,
             S.DETALLESOLICITUD.extract('/EXENCION/PERIODO_DESDE/text()') .getStringVal() AS FECHA_DEVENGAMIENTO,
             '' AS SIS_PREVISIONAL,
               TRIM(TO_CHAR(TO_NUMBER(S.DETALLESOLICITUD.extract('/EXENCION/RUT_EMP/text()').getStringVal()),
               '99G999G999G999G999','NLS_NUMERIC_CHARACTERS = ".,"')) || '-' || 
             S.DETALLESOLICITUD.extract('/EXENCION/DV_EMP/text()') .getStringVal() AS RUT_EMP,
             S.DETALLESOLICITUD.extract('/EXENCION/NOMBRE_EMP/text()') .getStringVal() AS NOMBRE_EMP,
             S.DETALLESOLICITUD.extract('/EXENCION/EMAIL_EMP/text()') .getStringVal() AS MAIL_EMP,
               DECODE(S.DETALLESOLICITUD.extract('/EXENCION/EXENTO/text()').getStringVal(),'1','NO','SI')    AS EXENTO
        FROM SOLICITUDES.SOLICITUD S
      INNER JOIN CLIENTE.IDENTIFICACION_CLIENTE CL ON CL.RUT = S.RUT_AFECTADO
      INNER JOIN SOLICITUDES.SOLICITUD_TIPO TI ON TI.TIPO_SOLICITUD = S.TIPO_SOLICITUD
      LEFT JOIN CLIENTE.DIRECCION D ON D.ID_REF_DIRECCION = CL.ID_REF_DIRECCION
                                    AND D.TIPO_ESTADO_REFERENCIA = 1 AND D.TITULAR_ENV_DOC = 1
        LEFT JOIN CLIENTE.TIPO_COMUNA C ON C.TIPO_COMUNA = D.TIPO_COMUNA
        LEFT JOIN CLIENTE.TIPO_REGION R ON R.TIPO_REGION = C.TIPO_REGION
      LEFT JOIN CLIENTE.IDENTIFICACION_TELEFONO T ON T.ID_REF_DIRECCION = CL.ID_REF_DIRECCION
                                                  AND T.TIPO_ESTADO_REFERENCIA = 1 AND T.TIPO_REFERENCIA = 1
      LEFT JOIN CLIENTE.IDENTIFICACION_EMAIL E ON E.ID_REF_DIRECCION = CL.ID_REF_DIRECCION
                                               AND E.TIPO_ESTADO_REFERENCIA = 1 AND E.TITULAR_CONTACTO = 1
       WHERE S.ID_SOLICITUD = VINU_ID_SOLICITUD;

  END RETORNA_INFO_EXENCION;

PROCEDURE TRAMITE_RETIROS_UNICO_EX(VINU_ID_SOLICITUD   IN NUMBER, -- ID SOLICITUD
                                        VINU_ID_NUM_CLIENTE IN NUMBER, -- ID DEL CLIENTE
                                        VINU_TIPO_SOLICITUD IN NUMBER, -- TIPO SOLICITUD
                                        VIVC_TIPO_SALIDA    IN VARCHAR2, -- R RESUMEN   D DETALLADA
                                        VOCUR_XML           OUT TCURSOR) AS
    VAR_XML      CLOB;
    VAR_CURSOR   TCURSOR;
    VAR_CURSOR_RECHAZO TCURSOR;
  VAR_CURSOR_SUSPENSION TCURSOR;
  VAR_CURSOR_RETENIDO TCURSOR;
    VAR_CONTADOR NUMBER;
    VAR_CONTADOR_RECHAZO NUMBER;
  VAR_CONTADOR_SUSPENSION NUMBER;
  VAR_CONTADOR_RETENIDO NUMBER;

    -- INFO REPORTE
    VAR_ID_REPORTE            VARCHAR2(4);
    VAR_ID_FORMATO            VARCHAR2(5);
    VAR_TIPO_TRAMITE          VARCHAR2(2);
    VAR_DESCRIPCION_SOLICITUD VARCHAR2(200);
    VAR_FOLIO                 VARCHAR2(20);
    VAR_FECHA_SOLICITUD       VARCHAR2(100);
    VAR_ESTADO_SOLICITUD      VARCHAR2(100);
    VAR_VIA_INGRESO           VARCHAR2(100);
    -- INFO DETALLE
    VAR_TIPO_PRODUCTO        VARCHAR2(100);
    VAR_TIPO_FONDO           VARCHAR2(2);
    VAR_FECHA_VALOR_CUOTA    VARCHAR2(15);
    VAR_MONTO_RETIRO_PESOS   VARCHAR2(200);
    VAR_MONTO_RETIRO_CUOTAS  VARCHAR2(50);
    VAR_VALOR_CUOTA          VARCHAR2(20);
    VAR_SALDO_INICIAL_PESOS  VARCHAR2(20);
    VAR_SALDO_INICIAL_CUOTAS VARCHAR2(20);
    VAR_COMISION_PESOS       VARCHAR2(20);
    VAR_COMISION_CUOTAS      VARCHAR2(20);
    VAR_IMPUESTO_PESOS       VARCHAR2(20);
    VAR_IMPUESTO_CUOTAS      VARCHAR2(20);
    VAR_SALDO_FINAL_PESOS    VARCHAR2(20);
    VAR_SALDO_FINAL_CUOTAS   VARCHAR2(20);
    VAR_TOTAL_RETIROS_PESOS  VARCHAR2(20);
    VAR_NOMBRE               VARCHAR2(80);
    VAR_NOMBRE_BENEFICIARIO  VARCHAR2(80);
    VAR_ID_PERSONA           VARCHAR2(15);
    VAR_ID_BENEFICIARIO    VARCHAR2(15);
    VAR_DIRECCION            VARCHAR2(200);
    VAR_REGION               VARCHAR2(80);
    VAR_COMUNA               VARCHAR2(60);
    VAR_TELEFONO             VARCHAR2(15);
    VAR_TELEFONO_SOLICITUD   VARCHAR2(15);
    VAR_EMAIL                VARCHAR2(80);
    VAR_EMAIL_SOLICITUD      VARCHAR2(80);
    VAR_FECHA_DISPONIBILIDAD VARCHAR2(15);
    VAR_NUMERO_RETIRO        VARCHAR2(10);
    VAR_VIA_PAGO             VARCHAR2(200);
    VAR_BANCO                VARCHAR2(250);
    VAR_NRO_CUENTA           VARCHAR2(200);
    VAR_FECHA_ACEPTACION     VARCHAR2(15);
    VAR_DESC_REGIMEN         VARCHAR2(100);
    VAR_ID_REGIMEN           NUMBER;

  VAR_TRAMITE        VARCHAR(200);
  VAR_ESTADO_TRAMITE     VARCHAR2(100);
  VAR_ID_ESTADO_TRAMITE number;
  VAR_TIPO_CUENTA      VARCHAR2(20);
  VAR_RET_JUDICIAL     VARCHAR2(50);
  VAR_ID_RECHAZO       NUMBER;
  VAR_MOTIVO_RECHAZO     VARCHAR(100);
  VAR_ESTADO_PRIMER_PAGO   VARCHAR(50);
  VAR_FEC_PRIMER_PAGO    VARCHAR(50);
  VAR_MTO_PRIMER_PAGO    VARCHAR(50);
  VAR_MUESTRA_CCO_1_PRIM   NUMBER;
  VAR_MUESTRA_CCO_2_PRIM   NUMBER;
  VAR_MUESTRA_CVC_1_PRIM   NUMBER;
  VAR_MUESTRA_CVC_2_PRIM   NUMBER;
  VAR_CCO_1_TIPO_FONDO_PRIM    VARCHAR(50);
  VAR_CCO_1_PESOS_PRIM   NUMBER;
  VAR_CCO_1_CUOTAS_PRIM   VARCHAR(50);
  VAR_CCO_2_TIPO_FONDO_PRIM  VARCHAR(50);
  VAR_CCO_2_PESOS_PRIM   NUMBER;
  VAR_CCO_CUOTAS_PRIM    VARCHAR(50);
  VAR_CVC_1_TIPO_FONDO_PRIM  VARCHAR(50);
  VAR_CVC_1_PESOS_PRIM   NUMBER;
  VAR_CVC_1_CUOTAS_PRIM    VARCHAR(50);
  VAR_CVC_2_TIPO_FONDO_PRIM    VARCHAR(50);
  VAR_CVC_2_PESOS_PRIM   NUMBER;
  VAR_CVC_2_CUOTAS_PRIM  VARCHAR(50);
  VAR_ESTADO_SEGUNDO_PAGO   VARCHAR(50);
  VAR_FEC_SEGUNDO_PAGO    VARCHAR(50);
  VAR_MTO_SEGUNDO_PAGO    VARCHAR(50);
  VAR_MUESTRA_CCO_1_SEG  NUMBER;
  VAR_MUESTRA_CCO_2_SEG  NUMBER;
  VAR_MUESTRA_CVC_1_SEG  NUMBER;
  VAR_MUESTRA_CVC_2_SEG  NUMBER;
  VAR_CCO_1_TIPO_FONDO_SEG VARCHAR(50);
  VAR_CCO_1_PESOS_SEG    NUMBER;
  VAR_CCO_1_CUOTAS_SEG   VARCHAR(50);
  VAR_CCO_2_TIPO_FONDO_SEG VARCHAR(50);
  VAR_CCO_2_PESOS_SEG    NUMBER;
  VAR_CCO_2_CUOTAS_SEG   VARCHAR(50);
  VAR_CVC_1_TIPO_FONDO_SEG VARCHAR(50);
  VAR_CVC_1_PESOS_SEG    NUMBER;
  VAR_CVC_1_CUOTAS_SEG   VARCHAR(50);
  VAR_CVC_2_TIPO_FONDO_SEG VARCHAR(50);
  VAR_CVC_2_PESOS_SEG      NUMBER;
  VAR_CVC_2_CUOTAS_SEG   VARCHAR(50);
  VAR_PACK_RECHAZO            NUMBER;
  VAR_DETALLE_PACK_RECHAZO    VARCHAR2(30000);
  VAR_PACK_SUSPENSION            NUMBER;
  VAR_DETALLE_PACK_SUSPENSION    VARCHAR2(30000);
  VAR_PACK_RETENIDO            NUMBER;
  VAR_DETALLE_PACK_RETENIDO    VARCHAR2(30000);
  VAR_PORCENTAJE    VARCHAR(10);
  VAR_VALOR_CUOTA_CCO_1_PRIM VARCHAR(50);
  VAR_VALOR_CUOTA_CCO_2_PRIM VARCHAR(50);
  VAR_VALOR_CUOTA_CVC_1_PRIM VARCHAR(50);
  VAR_VALOR_CUOTA_CVC_2_PRIM VARCHAR(50);
  VAR_VALOR_CUOTA_CCO_1_SEG  VARCHAR(50);
  VAR_VALOR_CUOTA_CCO_2_SEG  VARCHAR(50);
  VAR_VALOR_CUOTA_CVC_1_SEG  VARCHAR(50);
  VAR_VALOR_CUOTA_CVC_2_SEG  VARCHAR(50);
  --Variables para 
  VAR_ID_ESTADO_PRIM_PAGO number:=-1;
  VAR_ID_ESTADO_SEG_PAGO number:=-1;
  
  VAR_FECHA_CUOTA_CCO_1_PRIM   VARCHAR(50);
  VAR_FECHA_CUOTA_CCO_2_PRIM   VARCHAR(50);
  VAR_FECHA_CUOTA_CVC_1_PRIM   VARCHAR(50);
  VAR_FECHA_CUOTA_CVC_2_PRIM   VARCHAR(50);
  
  VAR_FECHA_CUOTA_CCO_1_SEG   VARCHAR(50);
  VAR_FECHA_CUOTA_CCO_2_SEG   VARCHAR(50);
  VAR_FECHA_CUOTA_CVC_1_SEG   VARCHAR(50);
  VAR_FECHA_CUOTA_CVC_2_SEG   VARCHAR(50);
  --SUBROGANTE
  VAR_MUESTRA_SUBROGANTE  NUMBER;
  VAR_NOMBRE_SUBROGANTE VARCHAR(100);
  VAR_RUT_SUBROGANTE  VARCHAR(50);
  VAR_TELEFONO_SUBROGANTE  VARCHAR(50);
  VAR_EMAIL_SUBROGANTE  VARCHAR(50);
  
  BEGIN
    VAR_CONTADOR := -1;

    IF VIVC_TIPO_SALIDA = 'D' THEN
      SELECT C.ID_REPORTE_DETALLE, C.ID_FORMATO_DETALLE
        INTO VAR_ID_REPORTE, VAR_ID_FORMATO
        FROM TIPO_MENU_CONSOLIDADO C
       WHERE C.ID_TIPO_SOLICITUD = VINU_TIPO_SOLICITUD;
    ELSE
      SELECT C.ID_REPORTE_COMPROBANTE,
             C.ID_FORMATO_COMPROBANTE,
             C.TIPO_TRAMITE
        INTO VAR_ID_REPORTE, VAR_ID_FORMATO, VAR_TIPO_TRAMITE
        FROM TIPO_MENU_CONSOLIDADO C
       WHERE C.ID_TIPO_SOLICITUD = VINU_TIPO_SOLICITUD;
    END IF;


    IF VIVC_TIPO_SALIDA = 'R' THEN

  --Comprobante
      VAR_XML := '<COMPROBANTE_RESUMEN>' || '<Identificacion>' ||
                 '<IdReporte>' || VAR_ID_REPORTE || '</IdReporte>' ||
                 '<IdFormato>' || VAR_ID_FORMATO || '</IdFormato>' ||
                 '</Identificacion>';

    CLIENTE.PCK_TRAMITE_RETIRO_10.Retorna_Detalle_Comprobante(VINU_ID_SOLICITUD,VAR_CURSOR);

    CLIENTE.PCK_TRAMITE_RETIRO_10.Retorna_Retiro_10_Rechazo(VINU_ID_SOLICITUD,VAR_CURSOR_RECHAZO);
  
  CLIENTE.PCK_TRAMITE_RETIRO_10.LISTAR_SUSPENSION(VINU_ID_SOLICITUD,VAR_CURSOR_SUSPENSION);
  
  CLIENTE.PCK_TRAMITE_RETIRO_10.LISTAR_RETENIDO(VINU_ID_SOLICITUD,VAR_CURSOR_RETENIDO);

    SOLICITUDES.PCK_CONSOLIDADO_TRAMITES.RESUMEN_SOLICITUD(VINU_ID_SOLICITUD,
                                                             VAR_DESCRIPCION_SOLICITUD,
                                                             VAR_FOLIO,
                                                             VAR_FECHA_SOLICITUD,
                                                             VAR_ESTADO_SOLICITUD,
                                                             VAR_VIA_INGRESO);

      LOOP
        FETCH VAR_CURSOR
          INTO
              VAR_NOMBRE,
              VAR_ID_PERSONA,
              VAR_DIRECCION,
              VAR_COMUNA,
              VAR_REGION,
              VAR_TELEFONO,
              VAR_TELEFONO_SOLICITUD,
              VAR_EMAIL,
              VAR_EMAIL_SOLICITUD,
              VAR_ID_BENEFICIARIO,
              VAR_NOMBRE_BENEFICIARIO,
              VAR_TRAMITE,
              VAR_FOLIO,
              VAR_FECHA_SOLICITUD,
        VAR_ID_ESTADO_TRAMITE,
              VAR_ESTADO_TRAMITE,
              VAR_VIA_INGRESO,
              VAR_VIA_PAGO,
              VAR_NUMERO_RETIRO,
              VAR_BANCO,
              VAR_TIPO_CUENTA,
              VAR_NRO_CUENTA,
              VAR_RET_JUDICIAL,
              VAR_ID_RECHAZO,
              VAR_MOTIVO_RECHAZO,
              VAR_ESTADO_PRIMER_PAGO,
              VAR_FEC_PRIMER_PAGO,
              VAR_MTO_PRIMER_PAGO,
              VAR_MUESTRA_CCO_1_PRIM,
              VAR_MUESTRA_CCO_2_PRIM,
              VAR_MUESTRA_CVC_1_PRIM,
              VAR_MUESTRA_CVC_2_PRIM,
              VAR_CCO_1_TIPO_FONDO_PRIM,
              VAR_CCO_1_PESOS_PRIM,
              VAR_CCO_1_CUOTAS_PRIM,
              VAR_CCO_2_TIPO_FONDO_PRIM,
              VAR_CCO_2_PESOS_PRIM,
              VAR_CCO_CUOTAS_PRIM,
              VAR_CVC_1_TIPO_FONDO_PRIM,
              VAR_CVC_1_PESOS_PRIM,
              VAR_CVC_1_CUOTAS_PRIM,
              VAR_CVC_2_TIPO_FONDO_PRIM,
              VAR_CVC_2_PESOS_PRIM,
              VAR_CVC_2_CUOTAS_PRIM,
              VAR_ESTADO_SEGUNDO_PAGO,
              VAR_FEC_SEGUNDO_PAGO,
              VAR_MTO_SEGUNDO_PAGO,
              VAR_MUESTRA_CCO_1_SEG,
              VAR_MUESTRA_CCO_2_SEG,
              VAR_MUESTRA_CVC_1_SEG,
              VAR_MUESTRA_CVC_2_SEG,
              VAR_CCO_1_TIPO_FONDO_SEG,
              VAR_CCO_1_PESOS_SEG,
              VAR_CCO_1_CUOTAS_SEG,
              VAR_CCO_2_TIPO_FONDO_SEG,
              VAR_CCO_2_PESOS_SEG,
              VAR_CCO_2_CUOTAS_SEG,
              VAR_CVC_1_TIPO_FONDO_SEG,
              VAR_CVC_1_PESOS_SEG,
              VAR_CVC_1_CUOTAS_SEG,
              VAR_CVC_2_TIPO_FONDO_SEG,
              VAR_CVC_2_PESOS_SEG,
              VAR_CVC_2_CUOTAS_SEG,
        VAR_PORCENTAJE,
        VAR_VALOR_CUOTA_CCO_1_PRIM, 
        VAR_VALOR_CUOTA_CCO_2_PRIM, 
        VAR_VALOR_CUOTA_CVC_1_PRIM, 
        VAR_VALOR_CUOTA_CVC_2_PRIM, 
        VAR_VALOR_CUOTA_CCO_1_SEG,  
        VAR_VALOR_CUOTA_CCO_2_SEG,  
        VAR_VALOR_CUOTA_CVC_1_SEG,  
        VAR_VALOR_CUOTA_CVC_2_SEG,
        VAR_ID_ESTADO_PRIM_PAGO,
        VAR_ID_ESTADO_SEG_PAGO,
        VAR_FECHA_CUOTA_CCO_1_PRIM,
        VAR_FECHA_CUOTA_CCO_2_PRIM,
        VAR_FECHA_CUOTA_CVC_1_PRIM, 
        VAR_FECHA_CUOTA_CVC_2_PRIM,   
        VAR_FECHA_CUOTA_CCO_1_SEG,
        VAR_FECHA_CUOTA_CCO_2_SEG,
        VAR_FECHA_CUOTA_CVC_1_SEG,
        VAR_FECHA_CUOTA_CVC_2_SEG,
        VAR_MUESTRA_SUBROGANTE,
        VAR_NOMBRE_SUBROGANTE,
        VAR_RUT_SUBROGANTE,
        VAR_TELEFONO_SUBROGANTE,
        VAR_EMAIL_SUBROGANTE;

        EXIT WHEN VAR_CURSOR%NOTFOUND;

        IF VAR_CONTADOR = -1 THEN
          VAR_CONTADOR := 0;
        END IF;

        IF VAR_CONTADOR = 0 THEN

          VAR_XML := VAR_XML || '<COMPROBANTE>' || '<ID_TIPO_TRAMITE>' ||
                     VAR_TIPO_TRAMITE || '</ID_TIPO_TRAMITE>' || '<NOMBRE>' ||
                     VAR_NOMBRE || '</NOMBRE>' || '<RUT>' || VAR_ID_PERSONA ||
                     '</RUT>' || '<DOMICILIO>' ||
                     FN_FORMATEO_VALOR_NULOS(VAR_DIRECCION) ||
                     '</DOMICILIO>' || '<REGION>' ||
                     FN_FORMATEO_VALOR_NULOS(VAR_REGION) || '</REGION>' ||
                     '<COMUNA>' || FN_FORMATEO_VALOR_NULOS(VAR_COMUNA) ||
                     '</COMUNA>' ||
                     '<TELEFONO>' || FN_FORMATEO_VALOR_NULOS(VAR_TELEFONO) || '</TELEFONO>' ||
                     '<TELEFONO_SOLICITUD>' || FN_FORMATEO_VALOR_NULOS(VAR_TELEFONO_SOLICITUD) || '</TELEFONO_SOLICITUD>' ||
                     '<EMAIL>' || FN_FORMATEO_VALOR_NULOS(VAR_EMAIL) || '</EMAIL>' ||
                     '<EMAIL_SOLICITUD>' || FN_FORMATEO_VALOR_NULOS(VAR_EMAIL_SOLICITUD) || '</EMAIL_SOLICITUD>' ||
                     '<TITULO_COLUMNA>Fecha Pago</TITULO_COLUMNA>' ||
                     '<INFO_COLUMNA>'||FN_FORMATEO_VALOR_NULOS(VAR_FECHA_DISPONIBILIDAD)||'</INFO_COLUMNA>' ||
                     '<ESTADO>' ||
                     FN_FORMATEO_VALOR_NULOS(VAR_ESTADO_TRAMITE) ||
                     '</ESTADO>' || '<VIA_INGRESO>' ||
                     FN_FORMATEO_VALOR_NULOS(VAR_VIA_INGRESO) ||
                     '</VIA_INGRESO>' || '<FECHA_SOLICITUD>' ||
                     FN_FORMATEO_VALOR_NULOS(VAR_FECHA_SOLICITUD) ||
                     '</FECHA_SOLICITUD>' || '<NRO_FOLIO>' ||
                     FN_FORMATEO_VALOR_NULOS(VAR_FOLIO) || '</NRO_FOLIO>' ||
                     '<DESCRIPCION_TRAMITE>' ||
                     FN_FORMATEO_VALOR_NULOS(VAR_DESCRIPCION_SOLICITUD) ||
                     '</DESCRIPCION_TRAMITE>' ||
                     '<RUT_BENEFICIARIO>' || VAR_ID_BENEFICIARIO || '</RUT_BENEFICIARIO>' ||
                     '<NOMBRE_BENEFICIARIO>' || VAR_NOMBRE_BENEFICIARIO || '</NOMBRE_BENEFICIARIO>' ||
                     '<MUESTRA_SUBROGANTE>' || VAR_MUESTRA_SUBROGANTE || '</MUESTRA_SUBROGANTE>' ||
                     '<NOMBRE_SUBROGANTE>' || VAR_NOMBRE_SUBROGANTE || '</NOMBRE_SUBROGANTE>' ||
                     '<RUT_SUBROGANTE>' || VAR_RUT_SUBROGANTE || '</RUT_SUBROGANTE>' ||
                     '<TELEFONO_SUBROGANTE>' || VAR_TELEFONO_SUBROGANTE || '</TELEFONO_SUBROGANTE>' ||
                     '<EMAIL_SUBROGANTE>' || VAR_EMAIL_SUBROGANTE || '</EMAIL_SUBROGANTE>' ||
                     
                     '</COMPROBANTE>' ||
                     '<INFO>' || '<NUMERO_RETIRO>' ||
                     FN_FORMATEO_VALOR_NULOS(VAR_NUMERO_RETIRO) ||
                     '</NUMERO_RETIRO>' || '<VIA_PAGO>' ||
                     FN_FORMATEO_VALOR_NULOS(VAR_VIA_PAGO) || '</VIA_PAGO>' ||
                     '<BANCO>' || FN_FORMATEO_VALOR_NULOS(VAR_BANCO) ||'</BANCO>' ||
                     '<NUMERO_CUENTA>' ||
                     FN_FORMATEO_VALOR_NULOS(VAR_NRO_CUENTA) ||
                     '</NUMERO_CUENTA>' ||
                     '<TRAMITE>' || VAR_TRAMITE  || '</TRAMITE>' ||
           '<ID_ESTADO_TRAMITE>' || VAR_ID_ESTADO_TRAMITE || '</ID_ESTADO_TRAMITE>' ||
                     '<ESTADO_TRAMITE>' || VAR_ESTADO_TRAMITE  || '</ESTADO_TRAMITE>' ||
                     '<FECHA_SOLICITUD>' || VAR_FECHA_SOLICITUD  || '</FECHA_SOLICITUD>' ||
                     '<NUMERO_RETIRO>' || VAR_NUMERO_RETIRO || '</NUMERO_RETIRO>' ||
                     '<BANCO>' || VAR_BANCO || '</BANCO>' ||
                     '<TIPO_CUENTA>' || VAR_TIPO_CUENTA || '</TIPO_CUENTA>' ||
                     '<RET_JUDICIAL>' || VAR_RET_JUDICIAL || '</RET_JUDICIAL>' ||
                     '<ID_RECHAZO>' || VAR_ID_RECHAZO || '</ID_RECHAZO>' ||
                     '<MOTIVO_RECHAZO>' || VAR_MOTIVO_RECHAZO || '</MOTIVO_RECHAZO>' ||
           '<PORCENTAJE>' || VAR_PORCENTAJE || '</PORCENTAJE>' ||
                     '</INFO>' ||
                     '<PAGO>' ||
                     '<ESTADO_PRIMER_PAGO>' || VAR_ESTADO_PRIMER_PAGO || '</ESTADO_PRIMER_PAGO>' ||
                     '<FEC_PRIMER_PAGO>' || VAR_FEC_PRIMER_PAGO || '</FEC_PRIMER_PAGO>' ||
                     '<MTO_PRIMER_PAGO>' || VAR_MTO_PRIMER_PAGO || '</MTO_PRIMER_PAGO>' ||
                     '<MUESTRA_CCO_1_PRIM>' || VAR_MUESTRA_CCO_1_PRIM || '</MUESTRA_CCO_1_PRIM>' ||
                     '<MUESTRA_CCO_2_PRIM>' || VAR_MUESTRA_CCO_2_PRIM || '</MUESTRA_CCO_2_PRIM>' ||
                     '<MUESTRA_CVC_1_PRIM>' || VAR_MUESTRA_CVC_1_PRIM || '</MUESTRA_CVC_1_PRIM>' ||
                     '<MUESTRA_CVC_2_PRIM>' || VAR_MUESTRA_CVC_2_PRIM || '</MUESTRA_CVC_2_PRIM>' ||
                     '<CCO_1_TIPO_FONDO_PRIM>' || VAR_CCO_1_TIPO_FONDO_PRIM || '</CCO_1_TIPO_FONDO_PRIM>' ||
                     '<CCO_1_PESOS_PRIM>' || CONCAT('$',TRIM(REPLACE(TO_CHAR(TO_CHAR(VAR_CCO_1_PESOS_PRIM),'999,999,999,999,999,999'),',','.')))  || '</CCO_1_PESOS_PRIM>' ||
                     '<CCO_1_CUOTAS_PRIM>' || VAR_CCO_1_CUOTAS_PRIM || '</CCO_1_CUOTAS_PRIM>' ||
                     '<CCO_2_TIPO_FONDO_PRIM>' || VAR_CCO_2_TIPO_FONDO_PRIM || '</CCO_2_TIPO_FONDO_PRIM>' ||
                     '<CCO_2_PESOS_PRIM>' || CONCAT('$',TRIM(REPLACE(TO_CHAR(TO_CHAR(VAR_CCO_2_PESOS_PRIM),'999,999,999,999,999,999'),',','.'))) || '</CCO_2_PESOS_PRIM>' ||
                     '<CCO_CUOTAS_PRIM>' || VAR_CCO_CUOTAS_PRIM || '</CCO_CUOTAS_PRIM>' ||
                     '<CVC_1_TIPO_FONDO_PRIM>' || VAR_CVC_1_TIPO_FONDO_PRIM || '</CVC_1_TIPO_FONDO_PRIM>' ||
                     '<CVC_1_PESOS_PRIM>' || CONCAT('$',TRIM(REPLACE(TO_CHAR(TO_CHAR(VAR_CVC_1_PESOS_PRIM),'999,999,999,999,999,999'),',','.'))) || '</CVC_1_PESOS_PRIM>' ||
                     '<CVC_1_CUOTAS_PRIM>' || VAR_CVC_1_CUOTAS_PRIM || '</CVC_1_CUOTAS_PRIM>' ||
                     '<CVC_2_TIPO_FONDO_PRIM>' || VAR_CVC_2_TIPO_FONDO_PRIM || '</CVC_2_TIPO_FONDO_PRIM>' ||
                     '<CVC_2_PESOS_PRIM>' || CONCAT('$',TRIM(REPLACE(TO_CHAR(TO_CHAR(VAR_CVC_2_PESOS_PRIM),'999,999,999,999,999,999'),',','.'))) || '</CVC_2_PESOS_PRIM>' ||
                     '<CVC_2_CUOTAS_PRIM>' || VAR_CVC_2_CUOTAS_PRIM || '</CVC_2_CUOTAS_PRIM>' ||
                     '<ESTADO_SEGUNDO_PAGO>' || VAR_ESTADO_SEGUNDO_PAGO || '</ESTADO_SEGUNDO_PAGO>' ||
                     '<FEC_SEGUNDO_PAGO>' || VAR_FEC_SEGUNDO_PAGO || '</FEC_SEGUNDO_PAGO>' ||
                     '<MTO_SEGUNDO_PAGO>' || VAR_MTO_SEGUNDO_PAGO || '</MTO_SEGUNDO_PAGO>' ||
                     '<MUESTRA_CCO_1_SEG>' || VAR_MUESTRA_CCO_1_SEG || '</MUESTRA_CCO_1_SEG>' ||
                     '<MUESTRA_CCO_2_SEG>' || VAR_MUESTRA_CCO_2_SEG || '</MUESTRA_CCO_2_SEG>' ||
                     '<MUESTRA_CVC_1_SEG>' || VAR_MUESTRA_CVC_1_SEG || '</MUESTRA_CVC_1_SEG>' ||
                     '<MUESTRA_CVC_2_SEG>' || VAR_MUESTRA_CVC_2_SEG || '</MUESTRA_CVC_2_SEG>' ||
                     '<CCO_1_TIPO_FONDO_SEG>' || VAR_CCO_1_TIPO_FONDO_SEG || '</CCO_1_TIPO_FONDO_SEG>' ||
                     '<CCO_1_PESOS_SEG>' || CONCAT('$',TRIM(REPLACE(TO_CHAR(TO_CHAR(VAR_CCO_1_PESOS_SEG),'999,999,999,999,999,999'),',','.'))) || '</CCO_1_PESOS_SEG>' ||
                     '<CCO_1_CUOTAS_SEG>' || VAR_CCO_1_CUOTAS_SEG || '</CCO_1_CUOTAS_SEG>' ||
                     '<CCO_2_TIPO_FONDO_SEG>' || VAR_CCO_2_TIPO_FONDO_SEG || '</CCO_2_TIPO_FONDO_SEG>' ||
                     '<CCO_2_PESOS_SEG>' || CONCAT('$',TRIM(REPLACE(TO_CHAR(TO_CHAR(VAR_CCO_2_PESOS_SEG),'999,999,999,999,999,999'),',','.'))) || '</CCO_2_PESOS_SEG>' ||
                     '<CCO_2_CUOTAS_SEG>' || VAR_CCO_2_CUOTAS_SEG || '</CCO_2_CUOTAS_SEG>' ||
                     '<CVC_1_TIPO_FONDO_SEG>' || VAR_CVC_1_TIPO_FONDO_SEG || '</CVC_1_TIPO_FONDO_SEG>' ||
                     '<CVC_1_PESOS_SEG>' || CONCAT('$',TRIM(REPLACE(TO_CHAR(TO_CHAR(VAR_CVC_1_PESOS_SEG),'999,999,999,999,999,999'),',','.'))) || '</CVC_1_PESOS_SEG>' ||
                     '<CVC_1_CUOTAS_SEG>' || VAR_CVC_1_CUOTAS_SEG || '</CVC_1_CUOTAS_SEG>' ||
                     '<CVC_2_TIPO_FONDO_SEG>' || VAR_CVC_2_TIPO_FONDO_SEG || '</CVC_2_TIPO_FONDO_SEG>' ||
                     '<CVC_2_PESOS_SEG>' || CONCAT('$',TRIM(REPLACE(TO_CHAR(TO_CHAR(VAR_CVC_2_PESOS_SEG),'999,999,999,999,999,999'),',','.'))) || '</CVC_2_PESOS_SEG>' ||
                     '<CVC_2_CUOTAS_SEG>' || VAR_CVC_2_CUOTAS_SEG || '</CVC_2_CUOTAS_SEG>' ||
           '<CCO_1_VCUOTA_PRIM>' || VAR_VALOR_CUOTA_CCO_1_PRIM || '</CCO_1_VCUOTA_PRIM>' ||
           '<CCO_2_VCUOTA_PRIM>' || VAR_VALOR_CUOTA_CCO_2_PRIM || '</CCO_2_VCUOTA_PRIM>' ||
           '<CVC_1_VCUOTA_PRIM>' || VAR_VALOR_CUOTA_CVC_1_PRIM || '</CVC_1_VCUOTA_PRIM>' ||
           '<CVC_2_VCUOTA_PRIM>' || VAR_VALOR_CUOTA_CVC_2_PRIM || '</CVC_2_VCUOTA_PRIM>' ||
           '<CCO_1_VCUOTA_SEG>' || VAR_VALOR_CUOTA_CCO_1_SEG || '</CCO_1_VCUOTA_SEG>' ||
           '<CCO_2_VCUOTA_SEG>' || VAR_VALOR_CUOTA_CCO_2_SEG || '</CCO_2_VCUOTA_SEG>' ||
           '<CVC_1_VCUOTA_SEG>' || VAR_VALOR_CUOTA_CVC_1_SEG || '</CVC_1_VCUOTA_SEG>' ||
           '<CVC_2_VCUOTA_SEG>' || VAR_VALOR_CUOTA_CVC_2_SEG || '</CVC_2_VCUOTA_SEG>' ||
           '<ID_PRIM_PAGO_ESTADO>' || VAR_ID_ESTADO_PRIM_PAGO || '</ID_PRIM_PAGO_ESTADO>' ||
           '<ID_SEG_PAGO_ESTADO>' || VAR_ID_ESTADO_SEG_PAGO || '</ID_SEG_PAGO_ESTADO>' ||
           '<CCO_1_FCUOTA_PRIM>' || VAR_FECHA_CUOTA_CCO_1_PRIM || '</CCO_1_FCUOTA_PRIM>' ||
           '<CCO_2_FCUOTA_PRIM>' || VAR_FECHA_CUOTA_CCO_2_PRIM || '</CCO_2_FCUOTA_PRIM>' ||
           '<CVC_1_FCUOTA_PRIM>' || VAR_FECHA_CUOTA_CVC_1_PRIM || '</CVC_1_FCUOTA_PRIM>' ||
           '<CVC_2_FCUOTA_PRIM>' || VAR_FECHA_CUOTA_CVC_2_PRIM || '</CVC_2_FCUOTA_PRIM>' ||
           '<CCO_1_FCUOTA_SEG>' || VAR_FECHA_CUOTA_CCO_1_SEG || '</CCO_1_FCUOTA_SEG>' ||
           '<CCO_2_FCUOTA_SEG>' || VAR_FECHA_CUOTA_CCO_2_SEG || '</CCO_2_FCUOTA_SEG>' ||
           '<CVC_1_FCUOTA_SEG>' || VAR_FECHA_CUOTA_CVC_1_SEG || '</CVC_1_FCUOTA_SEG>' ||
           '<CVC_2_FCUOTA_SEG>' || VAR_FECHA_CUOTA_CVC_2_SEG || '</CVC_2_FCUOTA_SEG>' ||
           
                     '</PAGO>';
        END IF;

        VAR_CONTADOR := VAR_CONTADOR + 1;

      END LOOP;
      CLOSE VAR_CURSOR;


      ---SEGUNDA PARTE
       VAR_XML := VAR_XML || '<RECHAZO>';

        BEGIN
           VAR_CONTADOR_RECHAZO := 0;
          LOOP
             FETCH VAR_CURSOR_RECHAZO INTO   VAR_PACK_RECHAZO, VAR_DETALLE_PACK_RECHAZO ;
             EXIT WHEN VAR_CURSOR_RECHAZO%NOTFOUND;

             VAR_CONTADOR_RECHAZO := VAR_CONTADOR_RECHAZO + 1;

             VAR_XML := VAR_XML || '<DETALLE_RECHAZO>' || '<RECHAZO_TIPO>' ||  VAR_PACK_RECHAZO || '</RECHAZO_TIPO>' ||
                        '<MOTIVO_RECHAZO>' ||  VAR_DETALLE_PACK_RECHAZO || '</MOTIVO_RECHAZO>' ||
                        '<ID_RECHAZO>' ||  VAR_CONTADOR_RECHAZO ||  '</ID_RECHAZO>' || '</DETALLE_RECHAZO>';
          END LOOP;
        CLOSE VAR_CURSOR_RECHAZO;
        END;


        IF VAR_CONTADOR_RECHAZO = 0 THEN
                 VAR_XML := VAR_XML || '<DETALLE_RECHAZO> <RECHAZO_TIPO></RECHAZO_TIPO>' ||
                        '<MOTIVO_RECHAZO></MOTIVO_RECHAZO>' ||
                        '<ID_RECHAZO>' ||  VAR_CONTADOR_RECHAZO ||  '</ID_RECHAZO> </DETALLE_RECHAZO>';
        END IF;

        VAR_XML := VAR_XML || '</RECHAZO>';
    
    --TERCERA PARTE
    VAR_XML := VAR_XML || '<SUSPENSION>';

        BEGIN
           VAR_CONTADOR_SUSPENSION := 0;
          LOOP
             FETCH VAR_CURSOR_SUSPENSION INTO   VAR_PACK_SUSPENSION, VAR_DETALLE_PACK_SUSPENSION ;
             EXIT WHEN VAR_CURSOR_SUSPENSION%NOTFOUND;

             VAR_CONTADOR_SUSPENSION := VAR_CONTADOR_SUSPENSION + 1;

             VAR_XML := VAR_XML || '<DETALLE_SUSPENSION>' || '<SUSPENSION_TIPO>' ||  VAR_PACK_SUSPENSION || '</SUSPENSION_TIPO>' ||
                        '<MOTIVO_SUSPENSION>' ||  VAR_DETALLE_PACK_SUSPENSION || '</MOTIVO_SUSPENSION>' ||
                        '<ID_SUSPENSION>' ||  VAR_CONTADOR_SUSPENSION ||  '</ID_SUSPENSION>' || '</DETALLE_SUSPENSION>';
          END LOOP;
        CLOSE VAR_CURSOR_SUSPENSION;
        END;

        IF VAR_CONTADOR_SUSPENSION = 0 THEN
                 VAR_XML := VAR_XML || '<DETALLE_SUSPENSION> <SUSPENSION_TIPO></SUSPENSION_TIPO>' ||
                        '<MOTIVO_SUSPENSION></MOTIVO_SUSPENSION>' ||
                        '<ID_SUSPENSION>' ||  VAR_CONTADOR_SUSPENSION ||  '</ID_SUSPENSION> </DETALLE_SUSPENSION>';
        END IF;

        VAR_XML := VAR_XML || '</SUSPENSION>';
    
    --CUARTA PARTE
    VAR_XML := VAR_XML || '<RETENIDO>';
    BEGIN
           VAR_CONTADOR_RETENIDO := 0;
          LOOP
             FETCH VAR_CURSOR_RETENIDO INTO   VAR_PACK_RETENIDO, VAR_DETALLE_PACK_RETENIDO ;
             EXIT WHEN VAR_CURSOR_RETENIDO%NOTFOUND;

             VAR_CONTADOR_RETENIDO := VAR_CONTADOR_RETENIDO + 1;

             VAR_XML := VAR_XML || '<DETALLE_RETENIDO>' || '<RETENIDO_TIPO>' ||  VAR_PACK_RETENIDO || '</RETENIDO_TIPO>' ||
                        '<MOTIVO_RETENIDO>' ||  VAR_DETALLE_PACK_RETENIDO || '</MOTIVO_RETENIDO>' ||
                        '<ID_RETENIDO>' ||  VAR_CONTADOR_RETENIDO ||  '</ID_RETENIDO>' || '</DETALLE_RETENIDO>';
          END LOOP;
        CLOSE VAR_CURSOR_RETENIDO;
        END;

        IF VAR_CONTADOR_RETENIDO = 0 THEN
                 VAR_XML := VAR_XML || '<DETALLE_RETENIDO> <RETENIDO_TIPO></RETENIDO_TIPO>' ||
                        '<MOTIVO_RETENIDO></MOTIVO_RETENIDO>' ||
                        '<ID_RETENIDO>' ||  VAR_CONTADOR_RETENIDO ||  '</ID_RETENIDO> </DETALLE_RETENIDO>';
        END IF;

        VAR_XML := VAR_XML || '</RETENIDO>';

        VAR_XML := VAR_XML || '</COMPROBANTE_RESUMEN>';
    END IF;

    IF VAR_CONTADOR = -1 THEN
      VAR_XML := '';
    END IF;

    OPEN VOCUR_XML FOR
      SELECT VAR_XML AS XML FROM DUAL;

  END TRAMITE_RETIROS_UNICO_EX;

END PCK_CONSOLIDADO_TRAMITES;
/
