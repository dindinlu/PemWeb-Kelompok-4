**Anggota Kelompok 4:**
1. Lukmanul Hakim
2. M. Muhajirin
3. Ratna Cempaka
4. Dinda Putri Ayu

**Referensi Web:**

Repository GitHub: [Travelscapes](https://github.com/AtharvaKulkarniIT/Travelscapes)

# Travel Website Dengan Laravel

### Cara Mengunduh Proyek

```bash
git clone https://github.com/dindinlu/PemWeb-Kelompok-4.git nama-proyek
```

### Cara Setup Database
1. Siapkan XAMPP
2. Start module Apache dan MySql
3. Buka halaman admin MySql "http://localhost/phpmyadmin/index.php"
4. Buat database baru bernama "holy-crossroads"
5. Klik Import dan pilih file "holy-crossroads.sql" dari repositori

Masuk ke direktori proyek

```bash
cd nama-proyek
```

- Salin file .env.example menjadi .env dan edit kredensial database di dalamnya yang sebelumnya bernama "Laravel" menjadi "holy-crossroads"

```bash
composer install
```

```bash
php artisan key:generate
```

- Untuk memulai web dengan database yang sudah ada

```bash
php artisan migrate
```

```bash
php artisan storage:link
```

```bash
php artisan serve
```

- Untuk menggunakan fitur admin

```bash
npm install
```

```bash
npm run dev
```

#### Login

http://127.0.0.1:8000/login

- Email: admin@admin.com
- Password: 123

- Untuk memulai web dengan database baru ganti perintah
```bash
php artisan migrate
```
  dengan
```bash
php artisan migrate:fresh --seed
```

### Deskripsi Web

**WISATA RELIGI**

Wisata religi merujuk kepada destinasi wisata yang terkait dengan sejarah, tokoh, dan tempat ibadah. Jenis wisata ini memberikan manfaat bagi mental dan spiritualitas pengunjung dengan meningkatkan keimanan, wawasan keagamaan, serta pemahaman budaya dan sejarah tempat tersebut.

**DESTINASI WISATA RELIGI**

Destinasi wisata religi mencakup tempat ibadah sakral bagi umat beragama, serta bangunan, lokasi bersejarah, dan makam orang suci atau pemimpin agama yang dihormati.

**MANFAAT WISATA RELIGI**

Wisata religi tidak hanya meningkatkan keimanan dan wawasan keagamaan, tetapi juga memperkaya pemahaman akan budaya dan sejarah suatu daerah.

Dengan merapikan dan memperjelas deskripsi webnya, informasi tersebut lebih mudah dipahami dan lebih menarik untuk calon pengunjung.
