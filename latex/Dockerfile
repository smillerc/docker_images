FROM alpine:3.8

WORKDIR /tmp

RUN apk update && \
    apk add perl wget xz tar && \
    wget http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz && \
    tar xfz install-tl-unx.tar.gz && \
    mv install-tl-20* inst && \
    cd inst && \
    echo "selected_scheme scheme-basic" > profile && \
    ./install-tl -profile profile && \
    cd .. && \
    rm -rf *

RUN apk --no-cache add msttcorefonts-installer fontconfig && \
    update-ms-fonts && \
    fc-cache -f

RUN apk add cairo icu-libs libgcc libpaper libpng libstdc++ libx11 musl perl pixman poppler zlib

ENV PATH /usr/local/texlive/2019/bin/x86_64-linuxmusl:$PATH

WORKDIR /home

RUN tlmgr install textcase was float revtex biber latexmk chktex latexindent texcount synctex fontawesome
RUN tlmgr install collection-latexextra

CMD ["/bin/sh"]