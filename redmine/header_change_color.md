Install Tampermonkey.

```js
// ==UserScript==
// @name         redmine header change color
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

    // Changes the title color.
    document.getElementById("header").style.backgroundColor = 'rgb(199, 10, 10)';

})();
```