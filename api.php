<?php
header("Content-Type:application/json");
require_once('config/db.php');

// filter param
$opt = $_GET['opt'];

// init pdo
$db = new DBConnection();
$conn = $db->getInstance();

// switch pilihan
switch ($opt) {
    case 'list':
        $res = $conn->prepare("SELECT * FROM data;");
        $res->execute();
        $data = $res->fetchAll(PDO::FETCH_ASSOC);
        echo json_encode($data);
        break;
    case 'create':
        $nm_brg = $_POST['nm_brg'];
        $stock = (int) $_POST['stock'];
        $jml_tjl =  (int) $_POST['jml_trjl'];
        $tgl_tran = $_POST['tgl_trns'];
        $jns_brg = $_POST['jns_brg'];

        // convert tanggal
        $str2date = strtotime($tgl_tran);
        $transaksi = date('Y-m-d', $str2date);
        // PDO
        $stmt = $conn->prepare("INSERT INTO data (nm_brg, stk_brg, jml_trjl, tgl_trns, jns_brg) VALUES (?, ?, ?, ?, ?)");
        $result = $stmt->execute([$nm_brg, $stock, $jml_tjl, $transaksi, $jns_brg]);
        echo json_encode([
            'success' => $result
        ]);
        break;
    case 'update':
        $id = (int) $_POST['id'];
        $nm_brg = $_POST['nm_brg'];
        $stock = (int) $_POST['stock'];
        $jml_tjl =  (int) $_POST['jml_trjl'];
        $tgl_tran = $_POST['tgl_trns'];
        $jns_brg = $_POST['jns_brg'];

        // convert tanggal
        $str2date = strtotime($tgl_tran);
        $transaksi = date('Y-m-d', $str2date);

        $stmt = $conn->prepare("UPDATE data SET nm_brg = ?, stk_brg = ?, jml_trjl = ?, tgl_trns = ?, jns_brg = ? WHERE id_brg= ?");
        $result =  $stmt->execute([$nm_brg, $stock, $jml_tjl, $transaksi, $jns_brg, $id]);
        echo json_encode([
            'success' => $result
        ]);
        break;
    case 'delete':
        $id = (int) $_POST['id'];
        $stmt = $conn->prepare("DELETE FROM data WHERE id_brg = ?");
        $result = $stmt->execute([$id]);
        echo json_encode([
            'success' => $result
        ]);
        break;
    default:
        die('No Parameter Input!');
        break;
}
