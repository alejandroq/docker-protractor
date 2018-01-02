export const config = {
  framework: 'jasmine',
  seleniumAddress: 'http://127.0.0.1:4444/wd/hub',
  multiCapabilities: [{
      'browserName': 'chrome',
      chromeOptions: {
        args: [
          "--headless",
          "no-sandbox",
          "--disable-gpu",
          "--window-size=1200,950"
        ]
      }
    }
  ],
  specs: ['spec.js']
}
