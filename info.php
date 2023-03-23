<?php
include_once("db.php");
if(!$_GET){
    header("Location: index.php");
}?>
<head>
    <title>Car Info</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" />
    <link rel="stylesheet" type="text/css" href="./css/main.css" />
    <link rel="stylesheet" type="text/css" href="./css/contact.css" />
    <link rel="stylesheet" type="text/css" href="./css/menu.css" />
    <!-- <link rel="stylesheet" type="text/css" href="./css/vehiclelist.css" /> -->
    <link rel="stylesheet" type="text/css" href="./css/info.css" />
    <script type="application/javascript" src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
</head>
<?php include 'contact_banner.php'; ?>
<?php include 'main_menu.php'; ?>

<?php
$Vid = $_GET["Vid"];
$sql = "SELECT * FROM `vehicleimages` WHERE `Vid` = $Vid";
$stmt = mysqli_stmt_init($conn);
if (!mysqli_stmt_prepare($stmt, $sql)) {
    echo "SQL Fail";
} else {
    mysqli_stmt_execute($stmt);
    $result = mysqli_stmt_get_result($stmt);
    function resultToArray($result)
    {
        $rows = array();
        while ($row = mysqli_fetch_assoc($result)) {
            $rows[] = $row;
        }
        return $rows;
    }
    $rows = resultToArray($result);
    // var_dump($rows);
?>

    <div id="main-content">
        <div class="wrap">
            <div class="container-fluid">
                <div class="row">
                    <div class="col text-center">
                        <h1><?php echo $_GET["car_name"] ?></h1>
                    </div>
                </div>
                <div class="row neutral-background-1">
                    <div class="container neutral-background-1">
                        <div class="row">
                            <div class="col-md-7">
                                <div class="row d-none d-md-block d-print-none">
                                    <div id="CarImages" class="carousel slide" data-ride="carousel">
                                        <div class="carousel-indicators">
                                            <button type="button" data-target="#CarImages" data-slide-to="0" class="active" aria-current="true" aria-label="Slide 0"></button>
                                            <?php for ($i = 1; $i < mysqli_num_rows($result); $i++) {
                                                echo '<button type="button" data-target="#CarImages" data-slide-to="' . $i . '" aria-label="Slide ' . $i . '"></button>';
                                            }
                                            ?>
                                        </div>
                                        <div class="carousel-inner">
                                            <?php
                                            echo '<div class="carousel-item active"><img src="' . $rows[0]['Image_path'] . '" class="d-block w-100" alt="vehicle"></div>';
                                            for ($i = 1; $i < mysqli_num_rows($result); $i++) {
                                                echo '<div class="carousel-item"><img src="' . $rows[$i]["Image_path"] . '" class="d-block w-100" alt="vehicle"></div>';
                                            }
                                            ?>
                                        </div>
                                        <button class="carousel-control-prev" type="button" data-target="#CarImages" data-slide="prev">
                                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                            <span class="visually-hidden">Previous</span>
                                        </button>
                                        <button class="carousel-control-next" type="button" data-target="#CarImages" data-slide="next">
                                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                            <span class="visually-hidden">Next</span>
                                        </button>
                                    </div>
                                </div>
                            <?php
                        }
                        $sql = "SELECT * FROM `vehiclelist` WHERE `Id` = $Vid";
                        $stmt = mysqli_stmt_init($conn);
                        if (!mysqli_stmt_prepare($stmt, $sql)) {
                            echo "SQL Fail";
                        } else {
                            mysqli_stmt_execute($stmt);
                            $result = mysqli_stmt_get_result($stmt);
                            $row = mysqli_fetch_assoc($result)
                            ?>
                                <?php if ($row["DescSavings"] != null) {
                                    echo '<div class="primary-features vehicle-details-section-container padded-container">
                                    <h1 class="category-header">
                                        <span>
                                            Incentives
                                        </span>
                                    </h1>
                                    <div class="row">
                                        <div class="col-12 white-bg padded-container">
                                            <table class="table table-striped table-bordered">
                                                <thead>
                                                    <tr>
                                                        <th>Incentive</th>
                                                        <th>Value</th>
                                                    </tr>
                                                </thead>
                                                <tbody>

                                                    <tr>
                                                        <td>
                                                            <h4><?php echo $row["DescName"];
                                                                ?> Consumer Cash Program </h4>
                                                        </td>
                                                        <td>
                                                            <h3>' . $row["DescSavings"] . '</h3>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>';
                                }
                                ?>
                            </div>
                            <div class="col-md-5 order-first order-md-2">
                                <div class="padded-container detail white-bg">
                                    <h2 class="mb-1 font-weight-bold">Pricing Details</h2>
                                    <ul class="pricing list-unstyled">

                                        <li class="clearfix">
                                            <h2 class="price msrp">
                                                <?php echo $row["DiscPrice"];
                                                ?> </h2>

                                            <h3 id="msrp-header" class="label">Retail Price</h3>
                                        </li>
                                        <li class="clearfix">
                                            <?php
                                            if ($row["DescSavings"] != null) {
                                                echo '<h2 class="price savings">-';
                                                echo $row["DescSavings"];
                                                echo '<sup>*</sup></h2><h3 class="label">Incentives</h3>';
                                            } ?>
                                        </li>

                                        <li class="clearfix Line"></li>

                                        <li class="clearfix">
                                            <?php
                                            if ($row["DescSPrice"] != null) {
                                                echo '<h3 class="price sale">';
                                                echo $row["DescSPrice"] . '</h3>';
                                                echo '<h2 class="label sale">Long Price</h2>';
                                            }
                                            ?>
                                        </li>
                                    </ul>
                                    <div class="row padded-container">
                                        <div class="col d-flex justify-content-around">

                                            <button class="btn btn-primary">Calculate Payments</button>

                                            <a href=""><button class="btn btn-primary" type="button">Apply for Credit!</button></a>

                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col d-flex justify-content-around">

                                            <button class="btn btn-primary" type="button">Get ePrice!</button>

                                            <button type="button" class="btn btn-primary">Concierge</button>
                                            <a href="#" class="btn btn-primary">Value Your Trade</a>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col d-flex justify-content-around pt-2">
                                            <a href="#" class="btn btn-primary">Get Pre-approved Now</a>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col mt-2 text-center">
                                            <a href="#" target="_blank">
                                                <img class="mt-1" src="https://longofathens.com/global-images/carfax.png" width="155" height="42" border="0">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="padded-container">
                                    <ul class="list-unstyled info">
                                        <li>
                                            <span class="data">
                                                14 MPG
                                                <span>City</span>
                                            </span>
                                            <span class="data">
                                                20 MPG
                                                <span>Hwy</span>
                                            </span>
                                            <i class="fas fa-gas-pump fa-3x icon"></i>
                                        </li>
                                        <li>
                                            <span class="data">
                                                <span>Condition: <?php echo $row["DescCon"];
                                                                    ?></span>
                                                <span>Mileage: <?php echo $row["DescMileage"];
                                                                ?></span>
                                                <span>Stock #: <?php echo $row["DescStockNum"];
                                                                ?></span>
                                            </span>
                                            <i class="fas fa-clipboard-list fa-3x icon"></i>
                                        </li>
                                    </ul>

                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<?php }
?>
<?php include 'footer.php'; ?>
<script type="application/javascript" src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>