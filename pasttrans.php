<?php
  include 'header.php';
?>

<body class="bg">
    <div class="container">
        <div class="row">
            <div class="col">
                <div class="card">
                    <div class="card-header">
                        <h1>Past Transactions</h1>
                        <br>
                    </div>
                     <div class="card-body">
                        <table class="table table-bordered text-center">
                            <tr class="bg-dark text-white">
                                <td>Sl No.</td>
                                <td>Sender</td>
                                <td>Receiver</td>
                                <td>Balance</td>
                                <td>Date and Time</td>
                            </tr>
                            <tr>
                            <?php 
                            include 'setting.php';

                            $sql ="select * from transaction";
                           
                            $query =mysqli_query($conn, $sql);
                           
                            while($rows = mysqli_fetch_assoc($query))
                            {
                        ?>
                            <td><?php echo $rows['sno'];?></td>
                            <td><?php echo $rows['sender'];?></td>
                            <td><?php echo $rows['receiver'];?></td>
                            <td><?php echo $rows['balance'];?></td>
                            <td><?php echo $rows['datetime'];?></td>
                            </tr>
                            <?php
                            }
                        ?>
            
                            
                        </table>
                    </div>
                </div>
            </div> 
        </div>
    </div>
      
<br>
<br>
<?php include('footer.php'); ?>

</body>
</html>