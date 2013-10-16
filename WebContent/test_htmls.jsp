<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="http://code.jquery.com/jquery-1.9.1.js"></script> 
<title>Insert title here</title>
</head>
<body>
$(function(){
  $("button[name='doModify']").click(function(){
    // disable out modify button
    $(this).attr("disabled","disabled");
    // enable our save button
    $("button[name='save']").removeAttr("disabled");
    // cycle through each row having marked for modification
    $(":checkbox[name='modify']:checked").each(function(){
      $(this).closest("tr").find("td:gt(0)").each(function(){
        // convert each cell into an editable region
        $(this).wrapInner("<textarea name='"+$(this).attr("rel")+"'></textarea>");
      });
    });
  });
})


<table border="1" cellspacing="1" cellpadding="5">
  <tbody>
    <tr>
      <td><input type="checkbox" name="modify" /></td>
      <td rel="username[]">jon.doe</td>
      <td rel="information[]">This is my bio.</td>
      <td rel="information[]">This is my bio.</td>
      <td rel="information[]">This is my bio.</td>
      <td rel="information[]">This is my bio.</td>
    </tr>
    <tr>
      <td><input type="checkbox" name="modify" /></td>
      <td rel="username[]">jonathan.sampson</td>
      <td rel="information[]">This is my bio.</td>
    </tr>
    <tr>
      <td><input type="checkbox" name="modify" /></td>
      <td rel="username[]">yellow.05</td>
      <td rel="information[]">This is my bio.</td>
    </tr>
    <tr>
      <td colspan="3" align="right">
        <button name="doModify">Modify</button> 
        <button name="save" disabled="disabled">Save</button>
      </td>
    </tr>
  </tbody>
  
  
  $(function(){
        $("#tbl1 tr").click ( function(){
            if ( !$(this).hasClass('clicked') )
            {
                $(this).children('td').each ( function() {
                    var cellValue = $(this).text();
                    $(this).text('').append ( "<input type='text' value='" + cellValue + "' />" );
                });

                $(this).addClass('clicked');
            }
        });
    });
<table id="tbl1">
            <tr>
                <td>1</td>
                <td>4</td>
                <td>3</td>
                
            </tr>
            <tr>
                <td>4</td>
                <td>5</td>
                <td>6</td>
            </tr>
        </table>
</table>


 <style>img{ height: 100px; float: left; }</style>
 
  <script>
	function alertBook(isbn){
		$.getJSON("jaxrs/library/json/book/" + isbn,
		        function(data){
					$("<span/>").replaceAll("#cntnt-" + isbn);
		        	$("<span id='cntnt-" + isbn + "'><ul><li><b><a href='#' onclick='clearBook(\"" + isbn + "\")'>" + data.name + "</a></b></li><li>by " + data.author + "</li></ul></span>").appendTo("#" + data.isbn);
	        });
	} 
	
	function clearBook (isbn){
		$("<span/>").replaceAll("#cntnt-" + isbn);
	}

  </script>
</head>
<body>
	<div id="booksDiv">
		<ul id="books">
		</ul>
		
		<hr/>
		<ul id="onlineLinks">
		</ul>
		
	</div>
<script>$.getJSON("jaxrs/library/json/books",
        function(data){
          $.each(data, function(i,item){
            $("<li><a href='jaxrs/library/xml/book/" + item.isbn + "'>" + item.name + "</a></li>").appendTo("#books");

            $("<li><a href='#' onclick=alertBook('" + item.isbn + "')>" + item.isbn + "</a><div id='" + item.isbn + "'></div></li>").appendTo("#onlineLinks");

          });
        });
</body>
</html>