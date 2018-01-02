# ProtractorJS + Docker Container = E2E in CI/CD
Stable [![Build Status](https://travis-ci.org/alejandroq/docker-protractor.svg?branch=master)](https://travis-ci.org/alejandroq/docker-protractor)
Latest [![Build Status](https://travis-ci.org/alejandroq/docker-protractor.svg?branch=dev)](https://travis-ci.org/alejandroq/docker-protractor)

Run E2E suites in a Docker container. Chrome XVFB, documentation and permissions factored into usage. 

Need in Protractor config:
no-sandbox configuration

```js
chromeOptions: {
      args: [
        "--headless",
        "no-sandbox",
        "--disable-gpu",
        "--window-size=800,600"
      ]
    }
```


TODO:

- build out documentation
- tests with travis (running ng, protractor, etc)
- adopt tagging in semver

