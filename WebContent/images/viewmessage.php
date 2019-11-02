 <?php
include 'connect.php';
        $scl="SELECT * FROM `prisonerinfo`";
        $rs=  mysql_query($scl);
        ?>
<html>
    <head>
        <meta charset="UTF-8">
        <title></title>
    </head>
    <body>
        
        <form>
            <table border="5">
                <tr>
                     <td width="150"><h3>prisonerid</h3></td>
                     <td width="150"><h3>punishment details</h3></td>
                    <td width="150"><h3>release details</h3></td>
                     <td width="150"><h3>parole details</h3></td>
                </tr>
        
        
        <?php
   
                while($f=  mysql_fetch_array($rs))
                {
              ?>      
                    <tr>
                     <td><?php
                    
                     echo $f['prisonerid'];?></td>
                      <td><?php
                    
                     echo $f['punishment'];?></td>
                    <td><?php
                   echo  $f['release'];?></td>
                    <td><?php
                   echo  $f['parole'];?></td>
                    </tr>
                    <?php
                }
                    ?>
    
                    </body>
            </html>
