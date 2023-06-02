<?php 
    include 'setting.php';
    $sql = "SELECT * FROM users";
    $result = mysqli_query($conn,$sql);
?>

<?php include('header.php'); ?>

<body class="bg">
    <div class="container">
        <div class="row">
            <div class="col">
                <div class="card">
                    <div class="card-header">
                        <h1>Transaction Window</h1>
                        <br>
                    </div>
                     <div class="card-body">
                        <table class="table table-bordered text-center">
                            <tr class="bg-dark text-white">
                                <td>User Id</td>
                                <td>Name</td>
                                <td>E-mail</td>
                                <td>Balance</td>
                                <td>Operation</td>
                            </tr>
                            <tr>
                            <?php 
                            while($rows=mysqli_fetch_assoc($result))
                            {
                        ?>
                            <td><?php echo $rows['id'];?></td>
                            <td><?php echo $rows['name'];?></td>
                            <td><?php echo $rows['email'];?></td>
                            <td><?php echo $rows['balance'];?></td>
                            <td><a href="selectuserpay.php?id= <?php echo $rows['id'] ;?>" class="btn btn-primary">Transaction</a></td>
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
</body> 
<br>         
<?php include('footer.php'); ?>
</body>
</html>
