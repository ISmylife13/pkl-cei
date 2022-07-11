<div class="row mt-3">
    <div class="col-md-6">
        <div class="card">
            <div class="card-header">
                Form Tambah Data Mahasiswa
            </div>
            <div class="card-body">
                <form action="" method="POST">
                    <div class="mb-3">
                        <label for="nama" class="form-label">Nama</label>
                        <input type="text" class="form-control" id="nama" name="nama" autocomplete="off">
                        <div id="emailHelp" class="form-text text-danger"><?= form_error('nama') ?></div>
                    </div>
                    <div class="mb-3">
                        <label for="nrp" class="form-label">NRP</label>
                        <input type="text" class="form-control" id="nrp" name="nrp" autocomplete="off">
                        <div id="emailHelp" class="form-text text-danger"><?= form_error('nrp') ?></div>
                    </div>
                    <div class="mb-3">
                        <label for="email" class="form-label">Email</label>
                        <input type="text" class="form-control" id="email" name="email" autocomplete="off">
                        <div id="emailHelp" class="form-text text-danger"><?= form_error('email') ?></div>
                    </div>
                    <div class="mb-3">
                        <label for="jurusan" class="form-label">Jurusan</label>
                        <select class="form-control" name="jurusan" id="jurusan">
                            <?php foreach ($jurusan as $j) : ?>
                                <option value="<?= $j; ?>"><?= $j; ?></option>
                            <?php endforeach;  ?>
                        </select>
                    </div>
                    <button type="submit" name="tambah" class="btn btn-primary mt-3 float-end">Tambah Data</button>
                    <a href="<?php echo base_url(); ?>mahasiswa/index" class="btn btn-danger mt-3 float-end me-2">Batal</a>
                </form>
            </div>
        </div>
    </div>
</div>