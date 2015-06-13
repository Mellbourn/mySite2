FROM node:0.12-onbuild

RUN npm install && \
    node_modules/.bin/tsd update && \
    node_modules/.bin/bower install --config.interactive=false --allow-root && \
    node_modules/.bin/gulp clean && \
    node_modules/.bin/gulp build

# replace this with your application's default port
EXPOSE 3000

# this doesn't seem to be actually run on automatic build, just on "docker run"
CMD ["gulp", "serve:dist"]