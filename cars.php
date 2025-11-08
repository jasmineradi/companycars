<?php
// Database connection
$connect = mysqli_connect("localhost", "root", "", "vehicle_fleet");

// If the connection fails
if (!$connect) {
  die("Connection failed: " . mysqli_connect_error());
}

// Get user choices (no defaults)
$sort_by = isset($_GET['sort_by']) ? $_GET['sort_by'] : '';
$order   = isset($_GET['order'])   ? $_GET['order']   : '';

// Base query
$query = "SELECT * FROM company_cars";

// Add sorting only if both values are provided
if (!empty($sort_by) && !empty($order)) {
  $query .= " ORDER BY $sort_by $order";
}

$result = mysqli_query($connect, $query);

?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Company Cars Results</title>
  <link rel="stylesheet" href="styles.css">
</head>
<body>
  <main>
    <table>
      <caption>
        Company Cars
        <?php // Dynamically will display sorting info in the header
          if (!empty($sort_by) && !empty($order)) {
            echo " — Sorted by " . htmlspecialchars(ucfirst($sort_by)) . 
                " (" . htmlspecialchars(strtoupper($order)) . ")";
          } else {
            echo " — Unsorted";
          }
        ?>
      </caption>
<thead>
  <tr>
    <th>
      License
      <?php if ($sort_by == 'license') echo $order == 'ASC' ? '&#9650;' : '&#9660;'; ?>
    </th>
    <th>
      Make
      <?php if ($sort_by == 'make') echo $order == 'ASC' ? '&#9650;' : '&#9660;'; ?>
    </th>
    <th>
      Model
      <?php if ($sort_by == 'model') echo $order == 'ASC' ? '&#9650;' : '&#9660;'; ?>
    </th>
    <th>
      Mileage
      <?php if ($sort_by == 'mileage') echo $order == 'ASC' ? '&#9650;' : '&#9660;'; ?>
    </th>
    <th>
      Year
      <?php if ($sort_by == 'model_year') echo $order == 'ASC' ? '&#9650;' : '&#9660;'; ?>
    </th>
  </tr>
</thead>

      <tbody>
        <?php
        if ($result && mysqli_num_rows($result) > 0) {
          while ($row = mysqli_fetch_row($result)) {
            echo "<tr>
                    <td>{$row[0]}</td>
                    <td>{$row[1]}</td>
                    <td>{$row[2]}</td>
                    <td>{$row[3]}</td>
                    <td>{$row[4]}</td>
                  </tr>";
          }
        } else {
          echo "<tr><td colspan='5'>No results found.</td></tr>";
        }
        ?>
      </tbody>
    </table>
    <a class="back-link" href="cars.html">⬅ Back to Sort Options</a>
  </main>

</body>
</html>