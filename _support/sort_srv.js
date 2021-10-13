/*
 * Copyright 2009, Viagénie Inc.
 * info&viagenie.ca
 *
 * This software is provided AS IS with no warranty.
 *
 * $Id$
 *
 * This is JavaScript code that handles sorting registries by column. It depends
 * on jQuery being loaded (just for the $(document).ready(...) part) and it also
 * requires 3 .gif files.
 *
 * To make a table sortable, give it class name "sortable".
 *
 * Sorting is done differently based on the type of data a column contains. By
 * default, we try to guess the type of data. It is also possible to hard code
 * the type of data by setting the CSS class of the corresponding header (th
 * element). For numeric data, use class "sortNumeric".
 *
 * The sort algorithm is a merge sort. We hardcode our own algorithm because we
 * need a stable sort algorithm. A stable sort algorithm has the useful property
 * that we can cort by multiple criteria. For example, if we want to sort first
 * by Surname, then by Name, we click on the Name header then on the Surname
 * header. The built-in algorithm in most browsers is quicksort, which is not
 * stable. Even though our algorithm implemented in JavaScript is slower than
 * a built-in one implemented in C, this is not the bottleneck. DOM manipulation
 * is the bottleneck.
 */

var NS_XHTML = "http://www.w3.org/1999/xhtml";

$(document).ready( function() {
    var uri = new Uri(window.location.href);
    var tables = document.getElementsByTagName('table');
    var skeys = uri.getQueryParamValues('skey');
    for ( var i = 0; i < tables.length; ++i ) {
        if ( !$(tables[i]).hasClass('sortable_srv') )
            continue;

        for ( var j = 0; j < tables[i].tHead.rows[0].cells.length; ++j ) {
            var th = tables[i].tHead.rows[0].cells[j];
            if ( th.addEventListener ) {
                th.addEventListener( "click", sortTableSrv(j+1), false );
            } else {
                /* for Internet Explorer */
                th.attachEvent( "onclick", sortTableSrv(j+1) );
            }

	    var add = "";
	    for(var k = 0; k < skeys.length; ++k) {
		    if (skeys[k] < 0 && -skeys[k] == j + 1) {
			    add = " <img style=\"vertical-align:middle\" src=\"../_support/sort_down.gif\"/>";
		    } else if (skeys[k] == j + 1) {
			    add = " <img style=\"vertical-align:middle\" src=\"../_support/sort_up.gif\"/>";
		    }
	    }
	    if (add == "") {
		    th.innerHTML += " <img style=\"vertical-align:middle\" src=\"../_support/sort_none.gif\"/>";
	    } else {
		    th.innerHTML += add
	    }
        }
        tables[i].tHead.rows[0].style.cursor = 'pointer';
    }
});

function sortTableSrv(colnum)
{
    return function() {

       /* for Internet Explorer */
       var el;
       if ( this.nodeType == 1 ) {
           el = this;
       } else {
           el = event.srcElement;
       }

       var uri = new Uri(window.location.href);
       var found = false;
       uri.deleteQueryParam('page');
       var skeys = uri.getQueryParamValues('skey');
       for(var k = 0; k < skeys.length; ++k) {
	       if (skeys[k] == colnum) {
		       uri.deleteQueryParam('skey', skeys[k]);
		       uri.addQueryParam('skey', -skeys[k]);
		       found = true;
	       } else if (skeys[k] == -colnum) {
		       uri.deleteQueryParam('skey', skeys[k]);
		       found = true;
	       }
       }
       if (!found) {
	       uri.addQueryParam("skey", colnum);
       }
       window.location.href = uri.toString();
    }
}

