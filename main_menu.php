<div class="row d-none d-lg-flex nav-bg-color mr-0" style="align-items:center;">
    <div class="col-1">
        <a href="/">
            <img class="img-fluid" src="https://longofathens.com/site-images/dealers/0/athens-logo.jpg">
        </a>
    </div>
    <div class="col-11 nav-increase-z-index">
        <nav id="Menu" class="main-nav is-hoverable">
            <ul id="Sub-Menu" class="nav navbar-nav menu">
                <li>
                    <a href="./index.php">
                        <span class="nav-label">Home</span>
                    </a>
                </li>
                <li>
                    <div class="dropdown">
                        <button class="btn dropdown-toggle" type="button" id="Inventory" data-mdb-toggle="dropdown" aria-expanded="false">Inventory</button>
                        <ul class="dropdown-menu" aria-labelledby="Inventory">
                            <li><a class="dropdown-item" href="#">New Vehicles</a></li>
                            <li><a class="dropdown-item" href="#">Order My Vehicle</a></li>
                            <li><a class="dropdown-item" href="#">Certified Pre-owned</a></li>
                            <li><a class="dropdown-item" href="#">Pre-owned Vehicles</a></li>
                            <li><a class="dropdown-item" href="#">Search All</a></li>
                            <li><a class="dropdown-item" href="#">Specials</a></li>
                            <li><a class="dropdown-item" href="#">Learn about Electric Vehicles</a></li>
                        </ul>
                    </div>
                </li>
                <li>
                    <a href="#">
                        <span class="nav-label">Shop From Home</span>
                    </a>
                </li>
                <li>
                    <div class="dropdown">
                        <button class="btn dropdown-toggle" type="button" id="AboutUs" data-mdb-toggle="dropdown" aria-expanded="false">About Us</button>
                        <ul class="dropdown-menu" aria-labelledby="AboutUs">
                            <li><a class="dropdown-item" href="#">About Us</a></li>
                            <li><a class="dropdown-item" href="#">Careers</a></li>
                            <li><a class="dropdown-item" href="#">COVID Policy</a></li>
                            <li><a class="dropdown-item" href="#">Hours & Directions</a></li>
                            <li><a class="dropdown-item" href="#">Dealership Reviews</a></li>
                            <li><a class="dropdown-item" href="#">Military and First Responders</a></li>
                        </ul>
                    </div>
                </li>
                <li>
                    <div class="dropdown">
                        <button class="btn dropdown-toggle" type="button" id="Finance" data-mdb-toggle="dropdown" aria-expanded="false">Finance</button>
                        <ul class="dropdown-menu" aria-labelledby="Finance">
                            <li><a class="dropdown-item" href="#">Credit Application</a></li>
                            <li><a class="dropdown-item" href="#">Value Your Trade</a></li>
                            <li><a class="dropdown-item" href="#">Get Pre-Approved</a></li>
                        </ul>
                    </div>
                </li>
                <li>
                    <a href="#">
                        <span class="nav-label">News & Updates</span>
                    </a>
                </li>
                <li>
                    <div class="dropdown">
                        <button class="btn dropdown-toggle" type="button" id="Parts-Service" data-mdb-toggle="dropdown" aria-expanded="false">Parts & Service</button>
                        <ul class="dropdown-menu" aria-labelledby="Parts-Service">
                            <li><a class="dropdown-item" href="#">Accessories</a></li>
                            <li><a class="dropdown-item" href="#">Request Service Appointment</a></li>
                            <li><a class="dropdown-item" href="#">Service & Parts Financing</a></li>
                            <li><a class="dropdown-item" href="#">Specials</a></li>
                        </ul>
                    </div>
                </li>
                <li>
                    <a href="#">
                        <span class="nav-label">Long Bodyshop</span>
                    </a>
                </li>
                <?php if(isset($_SESSION['uname']) && isset($_SESSION['uid'])) {
                echo '<li>
                    <a href="/logout.php">
                        <span class="nav-label">Logout</span>
                    </a>
                </li>';
                echo '<li><img src="https://mdbcdn.b-cdn.net/img/new/avatars/2.webp" class="rounded-circle" style="width: 53px;position: relative;display: block;margin: 0 auto;" alt="Avatar" onclick="window.location.href=\'./user.php\'">
                </li>';
            }
                else {
                    echo '<li>
                    <a href="/login.php">
                        <span class="nav-label">Login Here</span>
                    </a>
                </li>';
                }
                ?>
            </ul>
        </nav>
    </div>
</div>