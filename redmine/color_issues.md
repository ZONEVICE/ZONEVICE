Install Tampermonkey.

```js
// ==UserScript==
// @name         redmine color issues
// @namespace    http://tampermonkey.net/
// @version      0.2.1
// @description  Working on Redmine 4.2.5.stable
// @author       ZONEVICE
// @match        http://localhost:5000/*
// @include      http://localhost:5000/*
// @grant        none
// ==/UserScript==

(function() {
    const trs = document.getElementsByTagName('tr');
    if (trs.length > 0) {
        function ChangeColor(tr, state_name, rgb_color) {
            if (tr.classList.contains(state_name)) {
                tr.style.backgroundColor = `rgb(${rgb_color})`;
                return;
            }
            const ts_target = Array.from(tr.getElementsByClassName('status'))[0];
            if (ts_target != undefined) {
                if (ts_target.innerHTML.includes(state_name)) tr.style.backgroundColor = `rgb(${rgb_color})`;
            }
        }
        for (const tr of trs) {
            // RGB picker: https://htmlcolorcodes.com/color-picker/
            ChangeColor(tr, 'closed', '102, 255, 51'); // Green.
            ChangeColor(tr, 'Resuelto', '221, 255, 209'); // Light green.
            // With Dark Reader extension.
            //ChangeColor(tr, 'closed', '59, 139, 35'); // Green.
            //ChangeColor(tr, 'Resuelto', '59, 139, 35'); // Light green.
        }
    }
})();
```