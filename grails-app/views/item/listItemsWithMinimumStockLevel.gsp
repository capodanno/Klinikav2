
<%@ page import="org.itech.klinikav2.domain.Item" %>
<!DOCTYPE html>
<html>
	<head>
	
<style type="text/css" title="currentStyle">
@import "web-app/css/demo_table.css";
</style>
		<meta name="layout" content="kickstart">
		<g:set var="entityName" value="${message(code: 'item.label', default: 'Item')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	
	
	
	
	<script type="text/javascript" async="" src="http://s3.buysellads.com/ac/bsa.js"></script></head>
	<body id="dt_MinItem">
	
	<script type="text/javascript">

	(function(){
		  var bsa = document.createElement('script');
		     bsa.type = 'text/javascript';
		     bsa.async = true;
		     bsa.src = '//s3.buysellads.com/ac/bsa.js';
		  (document.getElementsByTagName('head')[0]||document.getElementsByTagName('body')[0]).appendChild(bsa);
		})();


	
	var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
	document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
	</script><script src="js/ga.js" type="text/javascript"></script>
	
	
	</head>
	
	<body>
	<div class="content">
	
	<div class="container">
	<div class="page-header topSlider">
	<h1>Item<small> Minimum Stock</small></h1>
	</div>
	<h1>
	
	
	</h1>
	
	
	

<div style="padding: 5px; border: 1px solid grey">
    Custom placement for Position filter:
    <div id="custom-filter-placeholder-position"><span class="filterColumn filter_select"><select class="search_init select_filter"><option value="" class="search_init">Item Type</option><option value="%5EMEDICINE%24">Medicine</option><option value="%5EEQUIPMENT%24">Equipment</option><option value="%5VAC%24">Manager</option></select></span></div>
</div>

<script type="text/javascript">
    function test(data, type, full) {
        return '<i>' + data + '</i>';
    }
    
    function drawCallback(oSettings) {
        console.log('fnDrawCallback fired');
        console.log(oSettings);
    }
</script>
<div id="table-id_wrapper" class="dataTables_wrapper" role="grid"><div class="DTTT_container">
	<button class="btn btn-primary" id="ToolTables_table-id_0">Copy</button>
		<div style="position: absolute; left: 50px; top: 20px; width: 43px; height: 30px; z-index: 99;"><embed id="ZeroClipboard_TableToolsMovie_1" src="media/swf/copy_csv_xls_pdf.swf" loop="false" menu="false" quality="best" bgcolor="#ffffff" width="43" height="30" name="ZeroClipboard_TableToolsMovie_0" align="middle" allowscriptaccess="always" allowfullscreen="false" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" flashvars="id=1&amp;width=43&amp;height=30" wmode="transparent"></div>
		<button class="btn btn-primary" id="ToolTables_table-id_1">PDF</button>
			<div style="position: absolute; left: 20px; top: 20px; width: 37px; height: 30px; z-index: 99;"><embed id="ZeroClipboard_TableToolsMovie_1" src="media/swf/copy_csv_xls_pdf.swf" loop="false" menu="false" quality="best" bgcolor="#ffffff" width="37" height="30" name="ZeroClipboard_TableToolsMovie_2" align="middle" allowscriptaccess="always" allowfullscreen="false" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" flashvars="id=4&amp;width=37&amp;height=30" wmode="transparent"></div>
			<button class="btn btn-primary" id="View_Print">Print</button>
			</div><div class="clear"></div><div id="MinItem_length" class="dataTables_length">
			<label>Show <select size="1" name="table-id_length" aria-controls="MinItem"><option value="5">5</option><option value="10">10</option><option value="25">25</option><option value="50">50</option><option value="-1">All</option></select> entries</label></div><div class="dataTables_filter" id="MinItem_filter"><label>Search: <input type="text" aria-controls="MinItem"></label></div>
   
    
<script type="text/javascript">
    (function setDataTable() {
        if(!window.jQuery) {
            setTimeout(setDataTable, 100);
            return;
        }
        var $table = $('#MinItem');
        var dt = $table.dataTable({
            "aaSorting": [[0,"asc"]],
            "bProcessing": true,
            "bStateSave": true,
            "bServerSide": true,
            "bFilter": true,
            "sDom": 'T<"clear">lftipr',
            "aLengthMenu": [[5, 10, 25, 50, -1], [5, 10, 25, 50, "All"]],
            "bAutoWidth": false,
            "sAjaxSource": "/Home/GetUsers", "oTableTools" : { "sSwfPath": "/content/DataTables/extras/TableTools/media/swf/copy_csv_xls_pdf.swf" },
            "fnServerData": function(sSource, aoData, fnCallback) {
                $.ajax({
                    "dataType": 'json',
                    "type": "POST",
                    "url": sSource,
                    "data": aoData,
                    "success": fnCallback
                });
            },
            "aoColumnDefs" : [{"bSortable":false,"aTargets":[3]},{"bVisible":false,"aTargets":[7]},{"bSearchable":false,"aTargets":[2]},{"mRender":test,"aTargets":[1]}]
                , "fnCreatedRow":function( nRow, aData, iDataIndex ) {
        $(nRow).attr('data-id', aData[0]);
      }
    
            });
                
                    dt.columnFilter({
                        sPlaceHolder: "head:before",
                        aoColumns: [{type: 'number-range'},{type: 'text'},null,{type: 'checkbox', values : ['True', 'False']},{type: 'select', values: ['Engineer','Tester','Manager'], "sSelector":"#custom-filter-placeholder-position"},{type: 'date-range'},{type: 'checkbox', values : ['Zero','One','Two','Three','Four']},{type: 'text'}]
                    });
                
    })();
</script>




	
	
	
		<div id="list-item" class="content scaffold-list" role="main">
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			
			
			<script>
	$(document).ready( function () {
		$('#ItemMin').dataTable( {
			"sDom": "<'row-fluid'<'span6'T><'span6'f>r>t<'row-fluid'<'span6'i><'span6'p>>",
			"oTableTools": {
				"aButtons": [
					"copy",
					{
						"sExtends":    "collection",
						"sButtonText": 'Save <span class="caret" />',
						"sButtons":    [ "csv", "pdf" ]
					}
				]
			}
		} );
	} );
	</script>
	
	
	
			<table cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered" id="MinItem">
				<thead>
					<tr>
					
						<g:sortableColumn property="currentQuantity" title="${message(code: 'item.currentQuantity.label', default: 'Current Quantity')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'item.description.label', default: 'Description')}" />
															
						<g:sortableColumn property="itemType" title="${message(code: 'item.itemType.label', default: 'Item Type')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${itemInstanceList}" status="i" var="itemInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${itemInstance.id}">${fieldValue(bean: itemInstance, field: "currentQuantity")}</g:link></td>
					
						<td>${fieldValue(bean: itemInstance, field: "description")}</td>
					
						<td>${fieldValue(bean: itemInstance, field: "itemType")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			
			
			<div class="pagination">
				<g:paginate total="${itemInstanceTotal}" />
			</div>
		</div>
		</div>
		</div>
		</div>
	</body>
</html>
