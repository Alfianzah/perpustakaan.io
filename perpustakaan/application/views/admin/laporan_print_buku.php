<!DOCTYPE HTML>
    <html>
        <head>
            <title></title>
</head>
<body>
    <style type="text/css">
    .table-data{
        widht: 100%;
        border-collapse; collapse;
    }
    .table-data tr th,
    .table-data tr td{
        border:1px solid black;
        font-size; 10pt;
    }
    </style>
    <h3>LAPORAN DATA BUKU Perpustakaan</h3>
    <br/>
    <table class="table-data">
        <thead>
            <tr>
                <th>NO</th>
                <th>GAMBAR</th>
                <th>JUDUL BUKU</th>
                <th>Pengarang</th>
                <th>Tahun Terbit</th>
                <th>Penerbit</th>
                <th>ISBN</th>
                <th>Jumlah Buku</th>
                <th>Lokasi</th>
</tr>
<thead>
    <tbody>
        <?php
            $no =1;
            foreach ($buku as $b) {
                ?>
                <tr>
                    <td><?php echo $no++; ?></td>
                    <td><img src="<?php echo base_url().'assets/upload/'.$b->gambar; ?>"
                    widht="80" height="80" alt="gambar tidak ada"></td>
                    <td><?php echo $b->judul_buku ?></td>
                    <td><?php echo $b->pengarang ?></td>
                    <td><?php echo $b->thn_terbit ?></td>
                    <td><?php echo $b->penerbit ?></td>
                    <td><?php echo $b->thn_terbit ?></td>
                    <td><?php echo $b->isbn ?></td>
                    <td><?php echo $b->lokasi ?></td>
                </tr>
                <?php
            }
            ?>
            </tbpdy>
        </table>

        <script type="text/javascript">
            window.print();
            </script>
            </body>
        </html>