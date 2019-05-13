FROM openjdk:8-jre

# Install google-chrome and xvfb
RUN \
  wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - && \
  echo "deb http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list && \
  apt-get -y update && \
  apt-get install -y google-chrome-stable unzip xvfb libxi6 libgconf-2-4 && \
  rm -rf /var/lib/apt/lists/*

# Install ChromeDriver

RUN \
  wget https://chromedriver.storage.googleapis.com/2.41/chromedriver_linux64.zip && \
  unzip chromedriver_linux64.zip && \
  mv chromedriver /usr/bin/chromedriver && \
  rm -rf chromedriver_linux64.zip && \
  chown root:root /usr/bin/chromedriver  && \
  chmod +x /usr/bin/chromedriver

ENV CHROME_BIN /usr/bin/google-chrome

CMD ["bin/bash"]

EXPOSE 8012 8013
