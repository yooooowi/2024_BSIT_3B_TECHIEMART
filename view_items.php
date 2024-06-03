<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Items</title>
   <style>
      @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600&display=swap');

      :root{
         --green:#27ae60;
         --black:#333;
         --white:#fff;
         --bg-color:#eee;
         --box-shadow:0 .5rem 1rem rgba(0,0,0,.1);
         --border:.1rem solid var(--black);
      }

      *{
         font-family: 'Poppins', sans-serif;
         margin:0; padding:0;
         box-sizing: border-box;
         outline: none; border:none;
         text-decoration: none;
         text-transform: none;
      }

      html{
         font-size: 62.5%;
         overflow-x: hidden;
      }

      body{
         display: flex;
      }

      .sidebar{
         width: 250px;
         height: 100vh;
         background: var(--black);
         color: var(--white);
         position: fixed;
         top: 0;
         left: 0;
         display: flex;
         flex-direction: column;
         align-items: center;
         padding: 2rem 0;
      }

      .sidebar nav ul{
         list-style: none;
         width: 100%;
         padding: 0;
      }

      .sidebar nav ul li{
         width: 100%;
         padding: 1rem 0;
         text-align: center;
      }

      .sidebar nav ul li a{
         color: var(--white);
         font-size: 1.6rem;
         display: block;
         width: 100%;
         text-decoration: none;
         transition: background 0.3s;
      }

      .sidebar .btn{
         background: var(--black);
         color: var(--white);
         border: none;
         width: 100%;
         padding: 1rem;
         font-size: 1.6rem;
         text-align: center;
         cursor: pointer;
         transition: background 0.3s;
      }

      .sidebar .btn:hover{
         background: var(--green);
      }

      .main-content{
         margin-left: 250px;
         padding: 2rem;
         width: calc(100% - 250px);
      }

      .btn{
         display: block;
         width: 100%;
         cursor: pointer;
         border-radius: .5rem;
         margin-top: 1rem;
         font-size: 1.6rem;
         padding: 1rem 3rem;
         background: var(--green);
         color: var(--white);
         text-align: center;
      }

      .btn:hover{
         background: var(--black);
      }

      .message{
         display: block;
         background: var(--bg-color);
         padding: 1.5rem 1rem;
         font-size: 2rem;
         color: var(--black);
         margin-bottom: 2rem;
         text-align: center;
      }

      .container{
         max-width: 1000px;
         padding: 10rem;
         margin: 0 auto;
      }

      .admin-item-form-container.centered{
         display: flex;
         align-items: center;
         justify-content: center;
         min-height: 100vh;
      }

      .admin-item-form-container form{
         max-width: 50rem;
         margin: 0 auto;
         padding: 5rem;
         border-radius: .5rem;
         background: var(--bg-color);
      }

      .admin-item-form-container form h3{
         text-transform: uppercase;
         color: var(--black);
         margin-bottom: 1rem;
         text-align: center;
         font-size: 2rem;
      }

      .admin-item-form-container form .box{
         width: 100%;
         border-radius: .5rem;
         padding: 1rem 1rem;
         font-size: 1.5rem;
         margin: 1rem 0;
         background: var(--white);
         text-transform: none;
      }

      .item-display{
         margin: 1rem 0;
      }

      .item-display .item-display-table{
         width: 129%;
         text-align: center;
      }

      .item-display .item-display-table thead{
         background: var(--bg-color);
      }

      .item-display .item-display-table th{
         padding: 1rem;
         font-size: 2rem;
      }

      .item-display .item-display-table td{
         padding: 1rem;
         font-size: 2rem;
         border-bottom: var(--border);
      }

      .item-display .item-display-table .btn:first-child{
         margin-top: 0;
      }

      .item-display .item-display-table .btn:first-child:hover{
         background: var(--black);
      }

      @media (max-width: 991px) {
         html {
            font-size: 55%;
         }
      }

      @media (max-width: 768px) {
         .item-display {
            overflow-y: scroll;
         }

         .item-display .item-display-table {
            width: 80rem;
         }
      }

      @media (max-width: 450px) {
         html {
            font-size: 50%;
         }
      }
   </style>
</head>
<body>
  
<div class="container">
    <aside class="sidebar">
        <nav>
            <ul>
                <li><button class="btn" onclick="location.href='dashboard.php'">Dashboard</button></li>
                <li><button class="btn" onclick="location.href='view_items.php'">View Items</button></li>
                <li><button class="btn" onclick="location.href='view_orders.php'">View Orders</button></li>
                <li><button class="btn" onclick="location.href='add_items.php'">Manage Items</button></li>
                <li><button class="btn" onclick="location.href='reports.php'">Reports</button></li>
                <br><br><br>
                <li><button class="btn" onclick="location.href='logout.php'">Logout</button></li>
            </ul>
        </nav>
    </aside>
    <?php 
    include 'config.php';
    $select = mysqli_query($conn, "SELECT * FROM item");
    ?>
    <div class="item-display">
        <table class="item-display-table">
            <thead>
                <tr>
                    <th>Item Image</th>
                    <th>Item Name</th>
                    <th>Item Price</th>
                    <th>Stock Available</th>
                    <th>Item Description</th>
                </tr>
            </thead>
            <?php 
                while ($row = mysqli_fetch_assoc($select)) { ?>
                <tr>
                    <td><img src="img/<?php echo $row['item_image']; ?>" height="100" alt=""></td>
                    <td><?php echo $row['item_name']; ?></td>
                    <td>$<?php echo $row['item_price']; ?>/-</td>
                    <td><?php echo $row['stock_available']; ?></td>
                    <td><?php echo $row['item_description']; ?></td>
                </tr>
                <?php } ?>
        </table>
    </div>
</div>
</body>
</html>
