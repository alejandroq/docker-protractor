import {browser} from 'protractor';

describe('Protractor Demo App', function() {
    it('should have a title', function() {
      (async() => {
        browser.get('http://juliemr.github.io/protractor-demo/');
        expect(await browser.getTitle()).toEqual('Super Calculator');
      })();
    });
  });
