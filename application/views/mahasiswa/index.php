<div class="row mt-3">
    <div class="col-md-6">
        <?php if ($this->session->flashdata('flash')) :  ?>
            <div class="alert alert-success alert-dismissible fade show" role="alert">Data Mahasiswa
                <strong>Berhasil</strong> <?php echo $this->session->flashdata('flash');  ?>
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
        <?php endif;  ?>
        <a href="<?php echo base_url(); ?>mahasiswa/tambah" class="btn btn-primary">Tambah Mahasiswa</a>

        <div class="row mt-3">
            <div class="col md-6">
                <form action="" method="POST">
                    <div class="input-group mb-3">
                        <input type="text" class="form-control" placeholder="Cari Mahasiswa" name="keyword" autocomplete="off">
                        <button class="btn btn-primary" type="submit">Cari</button>
                    </div>
                </form>
            </div>
        </div>

        <h3>Daftar Mahasiswa</h3>
        <?php if (empty($mahasiswa)) : ?>
            <div class="alert alert-danger" role="alert">
                Data Mahasiswa Tidak DItemukan.
            </div>
        <?php endif;  ?>
        <ul class="list-group">
            <?php foreach ($mahasiswa as $mhs) :  ?>
                <li class="list-group-item">
                    <?php echo $mhs['nama'];  ?>
                    <a href="<?php echo base_url(); ?>mahasiswa/hapus/<?php echo $mhs['id']; ?>" class="badge bg-danger text-decoration-none float-end m-1" onclick="return confirm('Yang bener??');">Hapus</a>
                    <a href="<?php echo base_url(); ?>mahasiswa/ubah/<?php echo $mhs['id']; ?>" class="badge bg-success text-decoration-none float-end m-1">Ubah</a>
                    <a href="<?php echo base_url(); ?>mahasiswa/detail/<?php echo $mhs['id']; ?>" class="badge bg-primary text-decoration-none float-end m-1">Detail</a>
                </li>
            <?php endforeach;  ?>
        </ul>
    </div>
</div>