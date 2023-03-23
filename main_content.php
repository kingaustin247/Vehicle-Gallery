<div id="main-content">
    <div class="wrap">
        <div class="container-fluid">
            <div id="vehicle-list">
                <div class="row">
                    <div class="col-lg-12 col-md-8">
                        <div id="VLRow" class="row">
                            <?php
                            include_once("db.php");
                            $sql = "SELECT * FROM `vehiclelist` ORDER BY `Id` ASC";
                            $stmt = mysqli_stmt_init($conn);
                            if(!mysqli_stmt_prepare($stmt, $sql)){  
                                echo "SQL Fail";
                            }else {
                                mysqli_stmt_execute($stmt);
                                $result = mysqli_stmt_get_result($stmt);
                                while ($row = mysqli_fetch_assoc($result)){
                                    echo '
                                    <div class="col container">
                                <div class="ibox">
                                    <div class="content box">
                                        <div class="product item">
                                            <img alt=\''.$row["vehicleName"].'\' src=\''.$row["vehicleImage"].'\' onclick="window.location.href=\'./info.php?Vid='.$row["Id"].'&car_name='.$row["vehicleName"].' \'"/>';
                                            if ($row["DescSavings"] !=null && $row["DescSPrice"] !=null){
                                                echo '<span class="discount">'.$row["DiscPrice"].'</span>';
                                            }
                                            else if ($row["DescRPrice"] !=null){
                                                echo '<span class="price">'.$row["DiscPrice"].'</span>';
                                            }
                                            else {
                                                echo '<span class="special">'.$row["DiscPrice"].'</span>';
                                            }
                                            echo '
                                        </div>
                                        <div class="description">
                                            <small class="text-muted">'.$row["DescName"].'</small>
                                            <a href="#" class="name">'.$row["DescFullName"].'</a>
                                            <div class="small m-t-xs">
                                                <div class="row">
                                                    <div class="col">Condition:</div>
                                                    <div class="col">'.$row["DescCon"].'</div>
                                                </div>';

                                                if ($row["DescRPrice"] !=null){
                                                    echo '<div class="row">
                                                    <div class="col">Retail Price:</div>
                                                    <div class="col">'.$row["DescRPrice"].'</div>
                                                </div>';
                                                }
                                                if ($row["DescSavings"] !=null && $row["DescSPrice"] !=null){
                                                    echo '<div class="row">
                                                    <div class="col">Savings Up To:</div>
                                                    <div class="col">'.$row["DescSavings"].'</div>
                                                </div>
                                                <div class="row">
                                                    <div class="col">Sales Price:</div>
                                                    <div class="col">'.$row["DescSPrice"].'</div>
                                                </div>';
                                                }
                                                echo '
                                                <div class="row">
                                                    <div class="col">Stock #:</div>
                                                    <div class="col">'.$row["DescStockNum"].'</div>
                                                </div>
                                                <div class="row">
                                                    <div class="col">Mileage:</div>
                                                    <div class="col">'.$row["DescMileage"].'</div>
                                                </div>
                                            </div>
                                            <div class="row text-center">
                                                <div class="col-12 padded-container-sm">
                                                    <button class="w-100 btn btn-xs btn-outline btn-primary" title="Click to calculate you monthly payments">
                                                        Calculate Payments <i class="fa fa-long-arrow-right"></i>
                                                    </button>
                                                </div>
                                                <div class="col-12 col-lg-6 padded-container-sm">
                                                    <button class="btn btn-xs btn-outline btn-primary w-100">
                                                        Details
                                                        <i class="fa fa-long-arrow-right"></i>
                                                    </button>
                                                </div>
                                                <div class="col-12 col-lg-6 padded-container-sm">
                                                    <button class="btn btn-xs btn-outline btn-primary w-100" title="Go to the car specifications and incentives">
                                                        Incentives
                                                        <i class="fa fa-long-arrow-right"></i>
                                                    </button>
                                                </div>
                                                <div class="col-12 col-lg-6 padded-container-sm">
                                                    <button class="btn btn-xs btn-outline btn-primary w-100" title="We have a concierge service that will deliver any vehicle to you within 100 miles of the dealership for you to test drive at no cost.">
                                                        Concierge
                                                        <i class="fa fa-long-arrow-right"></i>
                                                    </button>
                                                </div>
                                                <div class="col-12 col-lg-6 padded-container-sm">
                                                    <button class="btn btn-xs btn-outline btn-primary d-none d-md-inline-block w-100" title="Add vehicle to compare list">
                                                        Compare
                                                        <i class="fa fa-long-arrow-right"></i>
                                                    </button>
                                                </div>

                                                <div class="col-12 padded-container-sm">
                                                    <button class="w-100 btn btn-xs btn-outline btn-primary" title="Get Pre-approved Now">
                                                        Get Pre-approved Now <i class="fa fa-long-arrow-right"></i>
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                    ';
                                }
                            }
                            ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>