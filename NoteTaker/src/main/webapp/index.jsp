<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    
    <title>Note Taker : Home Page</title>
    <%@include file = "all_js_css.jsp" %>
    
 
  </head>
  <body>
  
  <div class = "container">
  <%@include file = "navbar.jsp" %>
  <br>
  
  <div class = "card bg-dark shadow py-5">
  <img alt="" class = "img-fluid mx-auto" style = "max-width:300px" src="img/notes.png">
  <h1 class = "text-primary text-uppercase text-center mt-5">start taking your notes</h1>
  
  <div class = "container mx-auto text-center mt-5 mb-5" >
  <a href="add_notes.jsp" class="btn btn-outline-primary">Start Here</a>
  </div>
   </div>
  
  </div>

     </body>
</html>