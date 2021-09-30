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
    var tables = document.getElementsByTagName('table');
    for ( var i = 0; i < tables.length; ++i ) {
        if ( !$(tables[i]).hasClass('sortable') )
            continue;

        for ( var j = 0; j < tables[i].tHead.rows[0].cells.length; ++j ) {
            var th = tables[i].tHead.rows[0].cells[j];
            th.sortTable = tables[i];
            th.sortColumn = j;
            if ( $(th).hasClass('sortNumeric') ) {
                th.sortValue = sortNumericValue;
                th.sortCompare = sortNumericCompare;
            } else if ( $(th).hasClass('sortIPv6') ) {
                th.sortValue = sortIPv6Value;
                th.sortCompare = sortNumericCompare;
            } else {
                // Try to guess if the column contains numeric data.
                var numeric = true;
                for ( var k = 0; k < tables[i].tBodies[0].rows.length; ++k ) {
                    var content = tables[i].tBodies[0].rows[k].cells[j].textContent;
                    content = content.replace(/(0x)?[0-9a-fA-F]+/g, '');
                    if ( content.match(/\w/) ) {
                        numeric = false;
                        break;
                    }
                }
                if (numeric) {
                    th.sortValue = sortNumericValue;
                    th.sortCompare = sortNumericCompare;
                } else {
                    th.sortValue = sortTextValue;
                    th.sortCompare = sortTextCompare;
                }
            }
            if ( th.addEventListener ) {
                th.addEventListener( "click", sortTable, false );
            } else {
                /* for Internet Explorer */
                th.attachEvent( "onclick", sortTable );
            }
            th.innerHTML += " <img style=\"vertical-align:middle\" src=\"../_support/sort_none.gif\"/>";
        }

        tables[i].tHead.rows[0].style.cursor = 'pointer';
    }
});

function sortTextValue( text )
{
    return text.replace( /^\W+/, '' ).toLowerCase();
}

function sortTextCompare( a, b )
{
    return a[0].localeCompare( b[0] );
}

function sortIPv6Value ( text )
{
    var v = new Array;
    var ret = new Array;
    text = text.split(/\s*-\s*/)[0];
    v = text.split(/\//);
    var plen = v[1];
    text = v[0];
    v = text.split(/:/);
    v.forEach(function(t) {
	if ( t == "" ) {
		var i;
		for (i = 8 - v.length; i > 0; i--)
			ret.push(0);
	} else {
		t = t.replace(/X/g, '0');
		var x = parseInt(t, 16);
		if (isNaN(x))
			x = 0;
		ret.push(x);
	}
    });
    plen = parseInt(plen, 10);
    if (isNaN(plen))
	    plen = 0;
    ret.push(plen);
    return ret;
}

function sortNumericValue( text )
{
    var v = new Array;
    text.split(/[^\da-fA-F]+/).forEach(function(t) {
        var x = parseInt(t, 16);
        if (!isNaN(x))
            v.push(x);
    });
    return v;
}

function sortNumericCompare( a, b )
{
    for ( var i = 0; i < a[0].length && i < b[0].length; ++i ) {
        if ( a[0][i] < b[0][i] ) return -1;
        if ( a[0][i] > b[0][i] ) return +1;
    }
    if ( a[0].length < b[0].length ) return -1;
    if ( a[0].length > b[0].length ) return +1;
    return 0;
}

// Stable sort. Time is O(n*log(n)). Storage is O(2*n). Non-recursive because
// browsers impose a fairly low recursion limit.
function mergeSort( rows, sortCompare )
{
    for ( var s = 2; ; s *= 2 ) {
        for ( var begin = 0; begin < rows.length; begin += s ) {
            var middle = (begin + begin + s) / 2;
            var end = Math.min( begin + s, rows.length );
            var left  = rows.slice( begin, middle );
            var right = rows.slice( middle, end );
            var i = begin;
            while ( left.length > 0 && right.length > 0 ) {
                if ( sortCompare(left[0], right[0]) <= 0 )
                    rows[i++] = left.shift();
                else
                    rows[i++] = right.shift();
            }
            while ( left.length > 0 )
                rows[i++] = left.shift();
            while ( right.length > 0 )
                rows[i++] = right.shift();
        }
        if ( s >= rows.length )
            break;
    }
};

function reverseRows( table )
{
    var tbody = table.tBodies[0];
    var tbodyNew = document.createElementNS(NS_XHTML, 'tbody');
    for ( var i = tbody.rows.length - 1; i >= 0; --i )
        tbodyNew.appendChild( tbody.rows[i] );
    table.removeChild(tbody);
    table.appendChild(tbodyNew);
}

function sortTable()
{
    /* for Internet Explorer */
    var el;
    if ( this.nodeType == 1 ) {
        el = this;
    } else {
        el = event.srcElement;
    }

    var tbody = el.sortTable.tBodies[0];

    function continuation() {
        if ( $(el).hasClass('sorted') ) {
            $(el).removeClass('sorted');
            $(el).addClass('reversed');
            el.getElementsByTagName('img')[0].setAttribute( 'src', '../_support/sort_up.gif' );
            reverseRows( el.sortTable );
        }
        else if ( $(el).hasClass('reversed') ) {
            $(el).removeClass('reversed');
            $(el).addClass('sorted');
            el.getElementsByTagName('img')[0].setAttribute( 'src', '../_support/sort_down.gif' );
            reverseRows( el.sortTable );
        }
        else {
            var rows = [];
            for ( var i = 0; i < tbody.rows.length; ++i ) {
                var cell = tbody.rows[i].cells[el.sortColumn];

                /* for Internet Explorer */
                var text;
                if ( cell.textContent != undefined ) {
                    text = cell.textContent;
                } else {
                    text = cell.innerText;
                }

                rows.push( [el.sortValue(text), tbody.rows[i]] );
            }

            mergeSort( rows, el.sortCompare );

            el.sortTable.removeChild(tbody);
            for ( var i = 0; i < rows.length; ++i )
                tbody.appendChild( rows[i][1] );
            el.sortTable.appendChild(tbody);

            for ( var i = 0; i < el.parentNode.childNodes.length; ++i ) {
                var cell = el.parentNode.childNodes[i];
                if ( cell.nodeType == 1 ) {
                    $(cell).removeClass('sorted');
                    $(cell).removeClass('reversed');
                }
            }
            var imgs = el.parentNode.getElementsByTagName('img');
            for ( var i = 0; i < imgs.length; ++i )
                imgs[i].setAttribute( 'src', '../_support/sort_none.gif' );

            $(el).addClass('sorted');
            el.getElementsByTagName('img')[0].setAttribute( 'src', '../_support/sort_down.gif' );
        }
    }
    setTimeout( continuation, 0 );
}
