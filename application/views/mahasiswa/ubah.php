<div class="row mt-3">
    <div class="col-md-6">
        <div class="card">
            <div class="card-header">
                Form Ubah Data Mahasiswa
            </div>
            <div class="card-body">
                <form action="" method="POST">
                    <input type="hidden" name="id" value="<?= $mahasiswa['id']; ?>">
                    <div class="mb-3">
                        <label for="nama" class="form-label">Nama</label>
                        <input type="text" class="form-control" id="nama" name="nama" autocomplete="off" value="<?= $mahasiswa['nama']; ?>">
                        <div id="emailHelp" class="form-text text-danger"><?= form_error('nama') ?></div>
                    </div>
                    <div class="mb-3">
                        <label for="nrp" class="form-label">NRP</label>
                        <input type="text" class="form-control" id="nrp" name="nrp" autocomplete="off" value="<?= $mahasiswa['nrp']; ?>">
                        <div id="emailHelp" class="form-text text-danger"><?= form_error('nrp') ?></div>
                    </div>
                    <div class="mb-3">
                        <label for="email" class="form-label">Email</label>
                        <input type="text" class="form-control" id="email" name="email" autocomplete="off" value="<?= $mahasiswa['email']; ?>">
                        <div id="emailHelp" class="form-text text-danger"><?= form_error('email') ?></div>
                    </div>
                    <div class="mb-3">
                        <label for="jurusan" class="form-label">Jurusan</label>
                        <select class="form-control" name="jurusan" id="jurusan">
                            <?php foreach ($jurusan as $j) : ?>
                                <?php if ($j == $mahasiswa['jurusan']) : ?>
                                    <option value="<?= $j; ?>" selected><?= $j; ?></option>
                                <?php else :  ?>
                                    <option value="<?= $j; ?>"><?= $j; ?></option>
                                <?php endif;  ?>
                            <?php endforeach;  ?>
                        </select>
                    </div>
                    <button type="submit" name="ubah" class="btn btn-primary float-end">Ubah Data</button>
                    <a href="<?php echo base_url(); ?>mahasiswa/index" class="btn btn-danger float-end me-2">Batal</a>
                </form>
            </div>
        </div>
    </div>
</div>