<!DOCTYPE html>
<html lang="ar" dir="rtl">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>أعمال فنية | متجر اللوحات</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" />
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif, 'Tajawal', sans-serif;
      background: #fdf9f3; /* لون كريمي فاتح */
      color: #333;
      line-height: 1.6;
      padding: 40px 20px;
    }

    header {
      text-align: center;
      margin-bottom: 50px;
    }

    h1 {
      font-size: 2.8rem;
      color: #5a4a42;
      margin-bottom: 10px;
      letter-spacing: 1px;
    }

    .subtitle {
      font-size: 1.1rem;
      color: #8b7355;
      max-width: 600px;
      margin: 0 auto;
    }

    .gallery {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
      gap: 35px;
      max-width: 1200px;
      margin: 0 auto;
    }

    .art-item {
      background: white;
      border-radius: 16px;
      overflow: hidden;
      box-shadow: 0 10px 30px rgba(0, 0, 0, 0.08);
      transition: transform 0.4s, box-shadow 0.4s;
    }

    .art-item:hover {
      transform: translateY(-10px);
      box-shadow: 0 15px 40px rgba(0, 0, 0, 0.15);
    }

    .art-item img {
      width: 100%;
      height: 240px;
      object-fit: cover;
      display: block;
      transition: transform 0.5s;
    }

    .art-item:hover img {
      transform: scale(1.05);
    }

    .art-info {
      padding: 20px;
      text-align: center;
    }

    .art-info h3 {
      font-size: 1.3rem;
      margin-bottom: 10px;
      color: #4a3a30;
    }

    .price {
      font-size: 1.4rem;
      font-weight: bold;
      color: #c19a6b; /* ذهبي ناعم */
      margin: 12px 0;
    }

    .buy-btn {
      background: linear-gradient(135deg, #c19a6b, #a67c52);
      color: white;
      border: none;
      padding: 12px 28px;
      border-radius: 30px;
      font-size: 1.05rem;
      cursor: pointer;
      display: inline-flex;
      align-items: center;
      gap: 8px;
      transition: opacity 0.3s;
      font-weight: 600;
    }

    .buy-btn:hover {
      opacity: 0.9;
    }

    footer {
      text-align: center;
      margin-top: 70px;
      color: #8b7355;
      font-size: 0.95rem;
    }
  </style>
</head>
<body>

  <header>
    <h1>أعمال فنية</h1>
    <p class="subtitle">لوحات أصلية يدويّة وصور فوتوغرافية فريدة — لمسة جمال في كل بيت.</p>
  </header>

  <div class="gallery" id="gallery">
    <!-- سيتم ملؤه تلقائيًا -->
  </div>

  <footer>
    <p>© 2025 متجر الأعمال الفنية. جميع الحقوق محفوظة.</p>
  </footer>

  <script>
    const artworks = [
      { image: "https://images.unsplash.com/photo-1501084817091-a4f3d1d19e07?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&h=500&q=80", title: "الهدوء الداخلي", price: "280 ريال" },
      { image: "https://images.unsplash.com/photo-1476821406275-2724f6f15b94?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&h=500&q=80", title: "غروب في البادية", price: "350 ريال" },
      { image: "https://images.unsplash.com/photo-1579783902614-a3fb3927b6a5?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&h=500&q=80", title: "الغيم فوق الجبال", price: "420 ريال" },
      { image: "https://images.unsplash.com/photo-1513364776144-60967b0f8000?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&h=500&q=80", title: "زهور الربيع", price: "190 ريال" },
      { image: "https://images.unsplash.com/photo-1505737319319-a0d9f83c602a?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&h=500&q=80", title: "السماء المفتوحة", price: "310 ريال" },
      { image: "https://images.unsplash.com/photo-1534438927534-4e8f18f8f19f?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&h=500&q=80", title: "الصمت الأخضر", price: "260 ريال" }
    ];

    const gallery = document.getElementById('gallery');

    artworks.forEach(art => {
      const item = document.createElement('div');
      item.className = 'art-item';
      item.innerHTML = `
        <img src="${art.image}" alt="${art.title}">
        <div class="art-info">
          <h3>${art.title}</h3>
          <div class="price">${art.price}</div>
          <button class="buy-btn" onclick="buyNow('${art.title}', '${art.price}')">
            <i class="fas fa-shopping-cart"></i> اشترِ الآن
          </button>
        </div>
      `;
      gallery.appendChild(item);
    });

    function buyNow(title, price) {
      alert(`✅ تم إضافة "${title}" إلى سلة المشتريات!\nالسعر: ${price}\n(سيتم تمكين الدفع قريباً)`);
    }
  </script>
</body>
</html>
