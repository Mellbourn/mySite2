FROM node:0.12-onbuild

RUN \
    npm install -g gulp && \
    npm install -g bower && \
    npm install -g tsd && \
	npm install && \
	tsd update && \
	bower install --config.interactive=false --allow-root && \
	gulp clean && \
	gulp build

# replace this with your application's default port
EXPOSE 3000

# this doesn't seem to be actually run on automatic build, just on "docker run"
CMD ["gulp", "serve:dist"]