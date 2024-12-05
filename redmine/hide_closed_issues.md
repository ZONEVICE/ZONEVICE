Install Tampermonkey.

```js
// ==UserScript==
// @name         redmine hide closed issues
// @namespace    http://tampermonkey.net/
// @version      0.1
// @description  Working on Redmine 4.2.5.stable
// @author       ZONEVICE
// @match        http://localhost:5002/*
// @include      http://localhost:5002/*
// @grant        none
// ==/UserScript==

(function() {
    'use strict';

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