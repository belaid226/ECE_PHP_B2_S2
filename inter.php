<?php


// Function to handle status update
function updateStatus($status) {
    // Code to update status in the database


    // Database connection
    $servername = "localhost";
    $username = "root";
    $password_db = "";
    $dbname = "db";
    $port = 3306;
    $conn = new mysqli($servername, $username, $password_db, $dbname, $port);
    $sql = "UPDATE commentaire SET Statut = '" . $status . "' WHERE id_commentaire = " . $_POST['id'];  $result = $conn->query($sql);
    if ($result === TRUE) {
        echo "Record updated successfully";
    } else {
        echo "Error updating record: " . $conn->error;
    }
    $conn->close();
}


// Function to handle click on Completed span
function clickCompleted() {
    updateStatus("Completed");




}


// Function to handle click on Process span
function clickProcess() {
    updateStatus("Process");
}


// Function to handle click on No span
function clickNo() {
    updateStatus("No");
    
}


// Call the respective functions based on span click
if (isset($_POST['action'])) {
    $action = $_POST['action'];
    switch ($action) {
        case 'completed':
            clickCompleted();
            break;
        case 'process':
            clickProcess();
            break;
        case 'no':
            clickNo();
            break;
        default:
            echo "Invalid action";
    }
}
?>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <!-- Boxicons -->
    <link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>
    <!-- My CSS -->
    <link rel="stylesheet" href="style.css">


    <title>Intervenant</title>
</head>
<body>


    <!-- SIDEBAR -->
    <section id="sidebar">
        <a href="#" class="brand">
            <i class='bx bxs-smile'></i>
            <span class="text">Intervenant</span>
        </a>
        <ul class="side-menu top">
            <li class="active">
                <a href="analytics.html">
                    <i class='bx bxs-dashboard' ></i>
                    <span class="text">Dashboard</span>
                </a>
            </li>
            <li>
                <a href="message.html">
                    <i class='bx bxs-group' ></i>
                    <span class="text">Contact</span>
                </a>
            </li>
        </ul>
        <ul class="side-menu">
            <li>
                <a href="settings.html">
                    <i class='bx bxs-cog' ></i>
                    <span class="text">Settings</span>
                </a>
            </li>
            <li>
                <a href="login.html" class="logout">
                    <i class='bx bxs-log-out-circle' ></i>
                    <span class="text">Logout</span>
                </a>
            </li>
        </ul>
    </section>
    <!-- SIDEBAR -->
    <!-- CONTENT -->
    <section id="content">
        <!-- NAVBAR -->
        <nav>
            <i class='bx bx-menu' ></i>
            <a href="#" class="nav-link">Categories</a>
            <form action="#">
                <div class="form-input">
                    <input type="search" placeholder="Search...">
                    <button type="submit" class="search-btn"><i class='bx bx-search' ></i></button>
                </div>
            </form>
            <input type="checkbox" id="switch-mode" hidden>
            <label for="switch-mode" class="switch-mode"></label>
            <a href="#" class="notification">
                <i class='bx bxs-bell' ></i>
                <span class="num">8</span>
            </a>
            <a href="#" class="profile">
                <img src="img/people.jpg">
            </a>
        </nav>
        <!-- NAVBAR -->


        <!-- MAIN -->
        <main>
            <div class="head-title">
                <div class="left">
                    <h1>Dashboard</h1>
                    <ul class="breadcrumb">
                        <li>
                            <a href="#">Dashboard</a>
                        </li>
                        <li><i class='bx bx-chevron-right' ></i></li>
                        <li>
                            <a class="active" href="#">Home</a>
                        </li>
                    </ul>
            </div>


            <ul class="box-info">
            </ul>




            <div class="table-data">
                <div class="order">
                    <div class="head">
                        <h3>Mission</h3>
                        <i class='bx bx-search' ></i>
                        <i class='bx bx-filter' ></i>
                    </div>
                    <table>
                        <thead>
                            <tr>
<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "db";
$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $id_commentaire = $_POST['id_commentaire'];
    $new_status = $_POST['status'];

    // Mise à jour du statut du commentaire
    $update_sql = "UPDATE commentaire SET Statut = '$new_status' WHERE id_Commentaire = '$id_commentaire'";
    if ($conn->query($update_sql) === TRUE) {
        echo "Statut du commentaire mis à jour avec succès.";
    } else {
        echo "Erreur lors de la mise à jour du statut du commentaire: " . $conn->error;
    }
}

$sql = "SELECT commentaire.id_Commentaire, commentaire.description_Commentaire, client.nom_Client, client.prénom_Client FROM commentaire INNER JOIN client ON commentaire.id_Client = client.id_Client";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        echo "<li>";
        echo "<p>" . htmlspecialchars($row["description_Commentaire"]) . " - " . htmlspecialchars($row["nom_Client"]) . " " . htmlspecialchars($row["prénom_Client"]) . "</p>";
        echo "<form action='' method='post'>";
        echo "<input type='hidden' name='id_commentaire' value='" . $row["id_Commentaire"] . "'>";
        echo "<button type='submit' name='status' value='completed' class='complete-btn'>Completed</button>";
        echo "<button type='submit' name='status' value='process' class='prg-btn'>Process</button>";
        echo "<button type='submit' name='status' value='no' class='No-btn'>No</button>";
        echo "</form>";
        echo "</li>";
    }
} else {
    echo "0 results";
}

$conn->close();
?>



                        </tbody>
                    </table>
                
            </div>
        </main>
        <!-- MAIN -->
    </section>
    <!-- CONTENT -->
    


    <script src="style.js"></script>
    <script>
        // Get the status spans
        var completed = document.getElementById("completed");
        var process = document.getElementById("process");
        var no = document.getElementById("no");


        // Add click event listeners to the status spans
        completed.addEventListener("click", function() {
            document.getElementById("pending").style.color = "gray";
            document.getElementById("no").style.color = "gray";
        });
        process.addEventListener("click", function() {
            document.getElementById("completed").style.color = "gray";
            document.getElementById("no").style.color = "gray";
        });
        no.addEventListener("click", function() {
            document.getElementById("completed").style.color = "gray";
            document.getElementById("pending").style.color = "gray";
        });
    </script>
</body>
</html>
