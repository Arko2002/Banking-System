<?php include('header.php'); ?>

<style>

body{
    background: -webkit-linear-gradient(left, #572649, #b55385);
}

.contact-form{
    background: #fff;
    margin-top: 5%;
    margin-bottom: 3%;
    width: 70%;
}

.contact-form .form-control{
    border-radius:1rem;
}

.contact-form form{
    padding: 14%;
}

.contact-form form .row{
    margin-bottom: -7%;
}

.contact-form h2{
    margin-bottom: 8%;
    margin-top: -15%;
    text-align: center;
    color: #572649;
    font-size: 50px;
    font-family: 'Suez One', serif;
}

.contact-form .btnContact {
    width: 50%;
    border: none;
    border-radius: 1rem;
    padding: 1.5%;
    background: #dc3545;
    font-weight: 600;
    color: #fff;
    cursor: pointer;
}

.btnContactSubmit
{
    width: 50%;
    border-radius: 1rem;
    padding: 1.5%;
    color: #fff;
    background-color: #0062cc;
    border: none;
    cursor: pointer;
}

</style>
<!------ Include the above in your HEAD tag ---------->

<div class="container contact-form">
            <form method="post">
                <h2>Drop Us a Message</h2>
               <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <input type="text" name="txtName" class="form-control" placeholder="Your Name *" value="" />
                        </div>
                        <div class="form-group">
                            <input type="text" name="txtEmail" class="form-control" placeholder="Your Email *" value="" />
                        </div>
                        
                        <div class="form-group">
                            <input type="text" name="txtPhone" class="form-control" placeholder="Your Phone Number *" value="" />
                        </div>
                        <br>
                        <br>
                        <div class="form-group">
                            <input type="submit" name="btnSubmit" class="btnContact" value="Send Message" />
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <textarea name="txtMsg" class="form-control" placeholder="Your Message *" style="width: 100%; height: 150px;"></textarea>
                        </div>
                    </div>
                </div>
            </form>
</div>

<br>
<br>
<?php include('footer.php'); ?>