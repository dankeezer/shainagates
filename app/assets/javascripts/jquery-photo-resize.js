/// <reference path="jquery-1.5.1.min.js" />

/*
* Adjust photo on browser window resize
* 
* @example: $('selector').photoResize();
* 
* @example:
        $('selector').photoResize({
                bottomSpacing:"Bottom Spacing adjustment"
        });
*/

(function ($) {

        $.fn.photoResize = function (options) {

                var element        = $(this), 
                        defaults = {
                    bottomSpacing: 0
                        };
                
                $(element).load(function () {
                        updatePhotoHeight();

                        $(window).bind('resize', function () {
                                updatePhotoHeight();
                        });
                });

                options = $.extend(defaults, options);

                function updatePhotoHeight() {
                        var o = options, 
                                photoHeight = $(window).height();

                        $(element).attr('height', photoHeight - o.bottomSpacing);
                }
        };

}(jQuery));

// (function ($) {

//         $.fn.divResize = function (options) {

//                 var element        = $(this), 
//                         defaults = {
//                     bottomSpacing: 0
//                         };
                
//                 $(element).load(function () {
//                         updateDivWidth();

//                         $(window).bind('resize', function () {
//                                 updateDivWidth();
//                         });
//                 });

//                 options = $.extend(defaults, options);

//                 function updateDivWidth() {
//                         var o = options, 
//                                 divWidth = $(window).width();

//                         $(element).attr('width', divWidth - o.bottomSpacing);
//                 }
//         };

// }(jQuery));