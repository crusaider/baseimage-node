# Base the image the baseimage-node image, in production
# you would probably want to fix it to a specific tag
FROM crusaider/baseimage-node

# Install application
ADD app/ /app/

# Install dependencies
WORKDIR /app
RUN npm install --production

# Register service
RUN mkdir /etc/service/nodeapp && \
    echo "#!/bin/sh\nexec /usr/bin/node /app/server.js" > /etc/service/nodeapp/run && \
    chmod +x /etc/service/nodeapp/run

EXPOSE 8080
