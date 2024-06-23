
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>OES | Exam Screen</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
	<script src="https://use.fontawesome.com/releases/v5.0.8/js/all.js"></script>	
        <link rel="canonical" href="https://getbootstrap.com/docs/4.5/examples/carousel/">

    <style>
        body {
    padding-top: 3.5rem;
}

nav {
    font-family: sans-serif;
}

.navbar-brand {
    font-size: 20px;
    font-family: Georgia, 'Times New Roman', Times, serif;
}
    </style>

</head>
<body>
    <%
        response.setHeader("Cache-Control", "private, no-store, no-cache, must-revalidate");
    %>
    <form action="exam.jsp" method="POST"> 
        <header>
            <!--Navigation Bar-->
            <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
                <a class="navbar-brand" href="#"><b>ONLINE EXAMINATION SYSTEM</b></a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarCollapse">
                    <ul class="navbar-nav ml-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="examscreen.jsp">Exam Screen</a>
                    </li>
		    <li class="nav-item">
			<a class="nav-link" href="logout">Logout</a>
		    </li>
                    </ul>
                </div>
            </nav>
        </header>

        <main role="main">
            <div class="jumbotron">
              <div class="container">
                <h1 class="display-4">Welcome ${name}</h1>
                <p>Welcome to OES!, an online examination system for colleges and universities to conduct their exams. OES provides
                   ease and maximum efficiency thus saving the organization's valuable time.
                </p>
                <p>Please Select the Exam You Would like to take:
                </p>
                <p>
                  <select name="selectedexam">
                      <option name="py" value="Python">Python</option>
                      <option name="ej" value="Django">Django</option>          
                  </select>        
                </p>
                <input type="submit" value="Start Exam" style="color:red;"><br/><br/>
                </div>
                </div>
                <div class="container">
                  <div class="row">
                    <div class="col-md-4">
                      <h2>User</h2>
                      <p>OES provides Admin accounts which gives the user the privilege to create, manipulate or delete the exam</p>
                    </div>
                    <div class="col-md-4">
                      <h2>How does it Work?</h2>
                      <p>OES makes use of JSP, Servlets, JSTL and a MySql database</p>
                    </div>
                    <div class="col-md-4">
                      <h2>Terms & Conditions</h2>
                      <p>If your organization has any concerns regarding the system please read our Terms and Conditions.</p>
                    </div>
                </div>
                <hr>
            </div>
        </main>

<footer class="container">
  <p>&copy; oes. All Rights Reserved</p>
</footer>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
      <script>window.jQuery || document.write('<script src="../assets/js/vendor/jquery.slim.min.js"><\/script>')</script><script src="../assets/dist/js/bootstrap.bundle.js"></script>

    </form>
</body>
</html>