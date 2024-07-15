Install Tampermonkey.

```js
// ==UserScript==
// @name         redmine hide closed issues
// @namespace    http://tampermonkey.net/
// @version      0.1
// @description  try to take over the world!
// @author       ZONEVICE
// @match        http://192.168.1.121:5002/*
// @include        http://localhost:5002/*
// @grant        none
// ==/UserScript==

(function() {
    'use strict';

    // Changes color of closed issues.

    const trs = document.getElementsByTagName('tr')

    if (trs.length > 0) {
        for (const _ of trs) {
            if (_.classList.contains('closed')) {
                _.style.visibility = 'hidden';
                _.style.position = 'absolute';
                _.style.top = 0;
            }
        }
    }

})();
```