Install Tampermonkey.

```js
// ==UserScript==
// @name         redmine color closed issue
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

    // Change closed issues color.

    const trs = document.getElementsByTagName('tr')

    if (trs.length > 0) {
        for (const _ of trs) {
            if (_.classList.contains('closed')) {
                // RGB picker: ttps://htmlcolorcodes.com/color-picker/
                _.style.backgroundColor = 'rgb(112, 109, 109)'; // an ugly gray.
            }
        }
    }

})();
```