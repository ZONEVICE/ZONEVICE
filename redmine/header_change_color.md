Install Tampermonkey.

```js
// ==UserScript==
// @name         redmine header change color
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

    // Changes the title color.
    document.getElementById("header").style.backgroundColor = 'rgb(199, 10, 10)';

})();
```