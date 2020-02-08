ARG VERSION=latest
FROM calico/node:${VERSION}

ENV CONFD_GIT_URL=https://raw.githubusercontent.com/logan2211/calico-confd/master

ADD ${CONFD_GIT_URL}/etc/calico/confd/templates/bird.cfg.template \
    ${CONFD_GIT_URL}/etc/calico/confd/templates/bird6.cfg.template \
    ${CONFD_GIT_URL}/etc/calico/confd/templates/bird_ipam.cfg.template \
    ${CONFD_GIT_URL}/etc/calico/confd/templates/bird6_ipam.cfg.template \
    /etc/calico/confd/templates/
