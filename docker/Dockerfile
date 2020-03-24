FROM debian:testing

COPY upgrade_debian.sh .
RUN ./upgrade_debian.sh

COPY initialize_sudo.sh .
RUN ./initialize_sudo.sh

USER user
WORKDIR /home/user

COPY configure_environment.sh .
RUN ./configure_environment.sh

COPY fetch_freefem_source.sh .
RUN ./fetch_freefem_source.sh

COPY build_freefem.sh .
RUN ./build_freefem.sh

COPY check_freefem.sh .
RUN ./check_freefem.sh