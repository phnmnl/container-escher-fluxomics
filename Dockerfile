FROM alpine:3.5

MAINTAINER PhenoMeNal-H2020 Project ( phenomenal-h2020-users@googlegroups.com )

LABEL software.version="1.6.0-beta.4"
LABEL version="0.1"
LABEL software="escher-static-viewer"

RUN apk -U add bash
ADD template_site /opt/template_site
ADD create_site_for_data.sh /usr/local/bin/create_site_for_data
RUN chmod a+x /usr/local/bin/create_site_for_data

ENTRYPOINT ["create_site_for_data"]


