FROM hwestphal/nodebox

COPY ./ /src
WORKDIR /src

ENV BUILD_HTTPS_PROXY='something'
ENV BUILD_HTTP_PROXY='something'

ENV HTTP_PROXY=$BUILD_HTTP_PROXY
ENV HTTPS_PROXY=$BUILD_HTTPS_PROXY

RUN npm install

ENV HTTP_PROXY=""
ENV HTTPS_PROXY=""

EXPOSE  8080
CMD ["node", "server.js"]


