<?php include "include/header.php"; ?>

<body class="contact-page">

     
    <div class="container contact form-container">

    <h2 class="contact-header">Get In Touch</h2>
        <div class="form-holder">
            <form action="" method="POST">
                 
                <input type="text" name="name" placeholder="name*" required />
                
                <input type="email" name="gmail" placeholder="gmail*" required />
               
                <textarea id="message" name="message" rows="4" cols="67" placeholder="Enter your message here..." required></textarea>
                <input type="submit" class="btn btn-primary btn-lg" value="Send Message" />
            </form>
        </div>
        <?php
        if (!empty($_POST)) {
            $name = $_POST['name'];
            $gmail = $_POST['gmail'];
            $message = $_POST['message'];
            $sql = "INSERT INTO contact (name,gmail,message) VALUES('$name','$gmail','$message')";
            $result = $db->query($sql);
            
        
            ?>
            <div style="text-align: center;">
                <p class="text-white">Message Sent Successfully!</p>
            </div>
           
        <?php
        }
        ?>
         <a  href="http://localhost/ourawesomeworld/"> <button class="rat-btn" >Return to Home</button></a>
    </div>
    


    </body>
