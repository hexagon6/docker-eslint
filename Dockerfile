FROM node:6.9

MAINTAINER Tobias Thüring <docker@fet.li>

# Global install yarn package manager
RUN npm set progress=false && \
    npm install -g --progress=false yarn

WORKDIR /workspace

ENV VERSION=3.10.2
RUN yarn global add eslint@$VERSION
RUN yarn global add eslint-config-standard \
                   eslint-plugin-promise \
                   eslint-plugin-standard \
                   eslint-plugin-react \
                   eslint-config-standard \
                   eslint-config-standard-jsx \
                   eslint-plugin-import
