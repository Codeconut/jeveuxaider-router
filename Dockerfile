FROM scalingo/scalingo-18

RUN mkdir -p /build/{buildpack,cache,env}/ && \
      git clone https://github.com/Scalingo/nginx-buildpack /build/buildpack && \
      gem install rerun

COPY ./ /build/app

RUN /build/buildpack/bin/compile /build/app /build/cache /build/env && cp -R /build/app/* /app/
ENV PATH=/app/bin:/app/vendor/nginx/sbin:/usr/local/bin:/usr/bin:/bin

WORKDIR /app

CMD /app/bin/run
