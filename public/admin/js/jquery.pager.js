
(function ($) {
  
    $.fn.pager = function (options) {

        var opts = $.extend({}, $.fn.pager.defaults, options);

        return this.each(function () {

            // empty out the destination element and then render out the pager with the supplied options
            $(this).empty().append(renderpager(parseInt(options.pagenumber), parseInt(options.pagecount), options.buttonClickCallback));

            // specify correct cursor activity
            // $('.pages li').mouseover(function () { document.body.style.cursor = "pointer"; }).mouseout(function () { document.body.style.cursor = "auto"; });
        });
    };

    // render and return the pager with the supplied options
    function renderpager(pagenumber, pagecount, buttonClickCallback) {
    
        // setup $pager to hold render
        var $pager = $('<ul></ul>');

        // add in the previous and next buttons
        $pager.append(renderButton('|<', pagenumber, pagecount, buttonClickCallback)).append(renderButton('<', pagenumber, pagecount, buttonClickCallback));

        // pager currently only handles 10 viewable pages ( could be easily parameterized, maybe in next version ) so handle edge cases
        var startPoint = 1;
        var endPoint = 9;

        if (pagenumber > 4) {
            startPoint = pagenumber - 4;
            endPoint = pagenumber + 4;
        }

        if (endPoint > pagecount) {
            startPoint = pagecount - 8;
            endPoint = pagecount;
        }

        if (startPoint < 1) {
            startPoint = 1;
        }

        // loop thru visible pages and render buttons
        for (var page = startPoint; page <= endPoint; page++) {
          
            var currentButton = $('<li ><a  href="javascript:void(0)">' + (page) + '</a></li>');

            page == pagenumber ? currentButton.addClass('active') : currentButton.click(function () { buttonClickCallback(this.firstChild.firstChild.data); });
            currentButton.appendTo($pager);
        }

        // render in the next and last buttons before returning the whole rendered control back.
        $pager.append(renderButton('>', pagenumber, pagecount, buttonClickCallback)).append(renderButton('>|', pagenumber, pagecount, buttonClickCallback));

        return $pager;
    }

    // renders and returns a 'specialized' button, ie 'next', 'previous' etc. rather than a page number button
    function renderButton(buttonLabel, pagenumber, pagecount, buttonClickCallback) {
     
        var $Button = $('<li ><a  href="javascript:void(0)">' + buttonLabel + '</a></li>');

        var destPage = 1;

        // work out destination page for required button type
        switch (buttonLabel) {
            case "|<":
                destPage = 1;
                break;
            case "<":
                destPage = pagenumber - 1;
                break;
            case ">":
                destPage = pagenumber + 1;
                break;
            case ">|":
                destPage = pagecount;
                break;
        }

        // disable and 'grey' out buttons if not needed.
        if (buttonLabel == "|<" || buttonLabel == "<") {
            pagenumber <= 1 ? $Button.addClass('disabled') : $Button.click(function () { buttonClickCallback(destPage); });
        }
        else {
            pagenumber >= pagecount ? $Button.addClass('disabled') : $Button.click(function () { buttonClickCallback(destPage); });
        }

        return $Button;
    }

    // pager defaults. hardly worth bothering with in this case but used as placeholder for expansion in the next version
    $.fn.pager.defaults = {
        pagenumber: 1,
        pagecount: 1
    };

})(jQuery);





