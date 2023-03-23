<?php
session_start();
if (isset($_SESSION['uname']) && isset($_SESSION['uid'])) {
    header("Location: user.php");
    exit();
}
?>
 
<head>
    <title>Login</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" />
    <link rel="stylesheet" type="text/css" href="./css/main.css" />
    <link rel="stylesheet" type="text/css" href="./css/contact.css" />
    <link rel="stylesheet" type="text/css" href="./css/menu.css" />
    <link rel="stylesheet" type="text/css" href="./css/login.css" />
    <script type="application/javascript" src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
    <script>
        $(document).ready(function() {
            $("#alert-error").hide()
            $("#alert-success").hide()
        });
    </script>
</head>
<?php include 'contact_banner.php'; ?>
<?php include 'main_menu.php'; ?>


<div id="logreg-forms">
    <?php
    if (isset($_GET['error'])) {
        $error = $_GET['error'];
        if ($error == "emptyfields") {
            $error = "you left some fields empty";
        } elseif ($error == "bademailanduname") {
            $error = "your email address is not correct<br>your username does not match our criteria";
        } elseif ($error == "bademail") {
            $error = "your email address is not correct";
        } elseif ($error == "baduname") {
            $error = "your username does not match our criteria";
        } elseif ($error == "passnomatch") {
            $error = "your passwords does not match eachother";
        } elseif ($error == "passshortordoesnotmatchcriteria") {
            $error = "your password is to short or does not match our criteria<br><ul><li>Password must be more than 6 charecters</li><li>Password must contain one lowercase letter</li><li>Password must contain one Upercase letter</li><li>Password must contain one number</li><li>Password must contain one Special charecter</li></ul>";
        } elseif ($error == "unamelong") {
            $error = "your username is to long<br>can not be longer than 15 charecters.";
        } elseif ($error == "unameshort") {
            $error = "your username is to short<br>can not be shorter than 5 charecters.";
        } elseif ($error == "umailshort") {
            $error = "your email is to short<br>can not be shorter than 10 charecters.";
        } elseif ($error == "umaillong") {
            $error = "your email is to long<br>can not be longer than 254 charecters.";
        } elseif ($error == "unameumailtaken") {
            $error = "your username or email is already taken.";
        } else {
            $error = '';
        }
        echo '<script>$(document).ready(()=>{setTimeout(function(){$("#logreg-forms .form-signin").toggle(); $("#logreg-forms .form-signup").toggle()},500); setTimeout(function(){ $("#alert-error").fadeTo(2000, 2).delay(5000).slideUp(1000, function() {$("#alert-error").slideUp(500)})},2000)});</script>';
    } elseif (isset($_GET['signup'])) {
        $success = $_GET['signup'];
        if ($success == "success") {
            $success = "your registration was a success";
        }
        echo '<script>$(document).ready(()=>{setTimeout(function(){ $("#alert-success").fadeTo(2000, 2).delay(5000).slideUp(1000, function() {$("#alert-success").slideUp(500)})},2000)});</script>';
    } elseif (isset($_GET['logerror'])) {
        $error = $_GET['logerror'];
        if ($error == "emptyfields") {
            $error = "you left some fields empty";
        } elseif ($error == "nouser") {
            $error = "that username or email could not be found!";
        } elseif ($error == "wrongpassword") {
            $error = "that password does not match.";
        }
        echo '<script>$(document).ready(()=>{setTimeout(function(){ $("#alert-error").fadeTo(2000, 2).delay(5000).slideUp(1000, function() {$("#alert-error").slideUp(500)})},2000)});</script>';
    } else {
        $error = '';
        $success = '';
    }
    ?>
    <div class="alert alert-danger" id="alert-error" role="alert">
        <h4 class="alert-heading text-dark">
            <?php echo $error ?>
        </h4>
    </div>
    <div class="alert alert-success" id="alert-success" role="alert">
        <h4 class="alert-heading text-dark">
            <?php echo $success ?>
        </h4>
    </div>
    <form class="form-signin" method="POST" action="process.php">
        <h1 class="h3 mb-3 font-weight-normal" style="text-align: center"> Sign in</h1>
        <input type="text" name="email" id="inputEmail" class="form-control" placeholder="Username or Email" required="" autofocus="" autocomplete="username" value="">
        <input type="password" name="password" id="inputPassword" class="form-control" placeholder="Password" required="" autocomplete="current-password">
        <button class="btn btn-success btn-block" name="SignIn" type="submit"><i class="fas fa-sign-in-alt"></i> Sign in</button>
        <p>Don't have an account!</p>
        <button class="btn btn-primary btn-block disabled" type="button" id="btn-signup"><i class="fas fa-user-plus"></i> Sign up New Account</button>
    </form>
    <form method="POST" class="form-signup" action="signup.php">
        <h1 class="h3 mb-3 font-weight-normal" style="text-align: center"> Sign up</h1>
        <input type="text" id="user-name" name="uname" class="form-control" placeholder="username" required="" autofocus="" autocomplete="username" value="">
        <input type="email" id="user-email" name="umail" class="form-control" placeholder="Email address" required autofocus="" autocomplete="email" value="">
        <input type="password" id="user-pass" name="upass" class="form-control" placeholder="Password" required autofocus="" autocomplete="new-password">
        <input type="password" id="user-repeatpass" name="urpass" class="form-control" placeholder="Repeat Password" required autofocus="" autocomplete="new-password">
        <button class="btn btn-primary btn-block" name="SignUp" type="submit"><i class="fas fa-user-plus"></i> Sign Up</button>
        <a href="#" id="cancel_signup"><i class="fas fa-angle-left"></i> Back</a>
    </form>
</div>
<?php include 'footer.php'; ?>
<script type="application/javascript" src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>
<script>
    function toggleResetPswd(e) {
        e.preventDefault();
        $('#logreg-forms .form-signin').toggle() // display:block or none
        $('#logreg-forms .form-reset').toggle() // display:block or none
    }

    function toggleSignUp(e) {
        e.preventDefault();
        $('#logreg-forms .form-signin').toggle(); // display:block or none
        $('#logreg-forms .form-signup').toggle(); // display:block or none
    }

    $(() => {
        // Login Register Form
        $('#logreg-forms #forgot_pswd').click(toggleResetPswd);
        $('#logreg-forms #cancel_reset').click(toggleResetPswd);
        $('#logreg-forms #btn-signup').click(toggleSignUp);
        $('#logreg-forms #cancel_signup').click(toggleSignUp);
    })

    function error() {
        var elements = document.getElementsByTagName("INPUT");
        for (var i = 0; i < elements.length; i++) {
            elements[i].oninvalid = function(e) {
                e.target.setCustomValidity("");
                if (!e.target.validity.valid) {
                    e.target.setCustomValidity("This field cannot be left blank2");
                }
            };
            elements[i].oninput = function(e) {
                e.target.setCustomValidity("");
            };
        }
    }
</script>