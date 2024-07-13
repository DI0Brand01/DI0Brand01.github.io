<?php
session_start();
// Database details
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "university";
// Search term (initialize to empty)
$course_name = '';

// Results array (initialize to empty)
$results = [];



$course_name = trim($_POST['course_name']);
$day = trim($_POST['course_days']);
$course_hall = trim($_POST['course_hall']);
$course_start_time = trim($_POST['course_start_time']);

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Build the dynamic SQL query based on user input
$sql = "SELECT * FROM courses";
if (!empty($course_name) || !empty($course_day) || !empty($course_hall) || !empty($course_start_time))
    $sql .= " WHERE ";
$conditions = [];

if (!empty($course_name)) {
    $conditions[] = " course_name LIKE '%$course_name%' ";
}

if (!empty($day)) {
    $conditions[] = " course_days LIKE '%$day%' ";
}

if (!empty($course_hall)) {
    $conditions[] = " course_hall LIKE '%$course_hall%' ";
}

// Add course_start_time condition if provided
if (!empty($course_start_time)) {
    $conditions[] = " course_start_time = '$course_start_time' ";
}

// Combine conditions with AND (if any)
if (!empty($conditions)) {
    $sql .= implode(' AND ', $conditions);
}

// print ($sql);
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // Fetch and store each row of the result
    while ($row = $result->fetch_assoc()) {
        $results[] = $row;
    }
}

// Close connection
$conn->close();

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search Lectures</title>
    <style>
        table {
            /* General table styles */
            border-collapse: collapse;
            /* Make borders collapse into single lines */
            width: 100%;
            /* Optional: Set table width */
            margin: 0 auto;
            /* Optional: Center table horizontally */
        }

        th,
        td {
            /* Table cell styles */
            border: 1px solid #ddd;
            /* Add borders to cells */
            padding: 8px;
            /* Add padding to cells */
            text-align: center;
            /* Align text to the left */
        }

        th {
            /* Header row styles */
            background-color: #f2f2f2;
            /* Add background color to header row */
            font-weight: bold;
            /* Make header text bold */
        }

        tr:nth-child(even) {
            /* Style even rows (optional) */
            background-color: #f9f9f9;
            /* Add a light background color */
        }

        .striped tr:nth-child(odd) {
            /* Style odd rows (optional) - class for toggling */
            background-color: #eee;
            /* Add a slightly darker background color */
        }

        .sortable th {
            /* Style sortable headers (optional) */
            cursor: pointer;
            /* Change cursor to pointer on hover */
        }
    </style>
</head>

<body>
    <?php
    if (isset($_SESSION['error']) && $_SESSION['error'] = 'You Already Have This Course') {
        echo "<h1 style=\"color:red;\"> You Already Have This Course</h1>";
        unset($_SESSION['error']);
    }
    ?>
    <header>
        <form action="dashboard.php">
            <input type="submit" value="Return To Dashboard">
        </form>
    </header>
    <form action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>" method="post">
        <label for="course_name">Search Courses:</label>
        <input type="text" id="course_name" name="course_name"> &nbsp;
        <label for="course_hall">Search Halls:</label>
        <input type="text" id="course_hall" name="course_hall"> &nbsp;

        <select id="myDropdown" name="course_days">
            <option value="">Select Day</option>
            <option value="Sun">Sunday</option>
            <option value="Mon">Monday</option>
            <option value="Tue">Tuesday</option>
            <option value="Wed">Wednesday</option>
            <option value="Thu">Thursday</option>
            <option value="Sun Tue">Sunday & Tusday</option>
            <option value="Mon Wed">Monday & Wednesday</option>
        </select>

        <select id="course_start_timeSelection" name="course_start_time" onchange="adjustEndTime()">
            <option value="">Select start time</option>
            <option value="8.30 AM">8:30 AM</option>
            <option value="10.00 AM">10:00 AM</option>
            <option value="11.30 AM">11:30 AM</option>
            <option value="1.00 PM">1:00 PM</option>
            <option value="2.30 PM">2:30 PM</option>
            <option value="4.00 PM">4:00 PM</option>
        </select>
        <button type="submit">Search</button> <br>

    </form>
    <!-- Your HTML form -->

    <h2>Search Results</h2>
    <table>
        <thead>
            <tr>
                <th>Subject ID</th>
                <th>Subject Name</th>
                <th>Section</th>
                <th colspan="2">Time</th>
                <th>Days</th>
                <th>Subject Teacher</th>
                <th>course_hall</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($results as $row): ?>
                <tr>
                    <td>
                        <?php echo $row['course_id']; ?>
                    </td>
                    <td>
                        <?php echo $row['course_name']; ?>
                    </td>
                    <td>
                        <?php echo $row['course_section']; ?>
                    </td>
                    <td>
                        <?php echo $row['course_start_time']; ?>
                    </td>
                    <td>
                        <?php echo $row['course_end_time']; ?>
                    </td>
                    <td>
                        <?php echo $row['course_days']; ?>
                    </td>
                    <td>
                        <?php echo $row['course_teacher']; ?>
                    </td>
                    <td>
                        <?php echo $row['course_hall']; ?>
                    </td>
                    <td><a
                            href="insert_data.php?course_id=<?php echo $row['course_id']; ?>&course_section=<?php echo urlencode($row['course_section']); ?>&student_id=<?php echo urlencode($_SESSION['student_id']); ?>">Add
                            Course</a></td>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>

    <!-- Your JavaScript code -->

</body>

</html>