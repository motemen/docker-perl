FROM buildpack-deps:stretch

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -yq && \
    apt-get install -yq --no-install-recommends perl && \
    apt-get clean && \
    rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*

ENV PERL_VERSION 5.8.8
ENV PATH /opt/perl-$PERL_VERSION/bin:$PATH

RUN curl https://raw.githubusercontent.com/tokuhirom/Perl-Build/master/perl-build | perl - $PERL_VERSION /opt/perl-$PERL_VERSION/
RUN curl -sL https://cpanmin.us | perl - --notest App::cpanminus Carton
