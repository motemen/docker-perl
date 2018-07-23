FROM buildpack-deps:stable-curl

ENV PERL_VERSION 5.8.8
ENV PATH /opt/perl-$PERL_VERSION/bin:$PATH

RUN curl https://raw.githubusercontent.com/tokuhirom/Perl-Build/master/perl-build | perl - $PERL_VERSION /opt/perl-$PERL_VERSION/
RUN curl -sL https://cpanmin.us | perl - --notest App::cpanminus Carton
