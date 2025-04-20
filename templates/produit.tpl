
<!DOCTYPE html>
<html lang="{$language.iso_code}">
<head>
  <meta charset="utf-8">
  <title>{$page.meta.title|escape:'html':'UTF-8'}</title>
  <meta name="description" content="{$page.meta.description|escape:'html':'UTF-8'}">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="{$urls.theme_assets}css/custom.css">
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
  <style>
    /* Add these styles to your custom.css */
    :root {
      --primary-color: #2ecc71;
      --secondary-color: #3498db;
      --dark-color: #2c3e50;
      --light-color: #ecf0f1;
      --gray-color: #95a5a6;
      --border-radius: 8px;
      --box-shadow: 0 2px 15px rgba(0,0,0,0.1);
      --transition: all 0.3s ease;
    }

    /* Product Grid Styles */
    .product-section {
      padding: 4rem 2rem;
      max-width: 1200px;
      margin: 0 auto;
    }

    .product-section h2 {
      text-align: center;
      font-size: 2.5rem;
      margin-bottom: 3rem;
      color: var(--dark-color);
    }

    .product-grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
      gap: 2rem;
      padding: 2rem 0;
    }

    .product-card {
      background: #fff;
      border-radius: var(--border-radius);
      box-shadow: var(--box-shadow);
      overflow: hidden;
      transition: var(--transition);
    }

    .product-card:hover {
      transform: translateY(-5px);
    }

    .product-image img {
      width: 100%;
      height: 300px;
      object-fit: cover;
      border-bottom: 3px solid var(--light-color);
    }

    .product-details {
      padding: 1.5rem;
    }

    .product-title {
      font-size: 1.2rem;
      margin-bottom: 0.5rem;
      color: var(--dark-color);
    }

    .product-price {
      margin-bottom: 1rem;
    }

    .current-price {
      font-size: 1.4rem;
      color: var(--primary-color);
      font-weight: 700;
    }

    .old-price {
      text-decoration: line-through;
      color: var(--gray-color);
      margin-right: 0.5rem;
    }

    .star-rating {
      --percent: calc(var(--rating) / 5 * 100%);
      display: inline-block;
      font-size: 1.2rem;
      line-height: 1;
    }

    .star-rating::before {
      content: '★★★★★';
      background: linear-gradient(90deg, #ffd700 var(--percent), #ccc var(--percent));
      -webkit-background-clip: text;
      background-clip: text;
      -webkit-text-fill-color: transparent;
    }

    .quantity-selector {
      margin: 1rem 0;
      display: flex;
      align-items: center;
      gap: 1rem;
    }

    .qty-input {
      width: 80px;
      padding: 0.5rem;
      border: 1px solid #ddd;
      border-radius: 4px;
      text-align: center;
    }

    .add-to-cart-btn {
      width: 100%;
      padding: 1rem;
      background: var(--secondary-color);
      color: white;
      border: none;
      border-radius: 4px;
      cursor: pointer;
      transition: var(--transition);
    }

    .add-to-cart-btn:hover {
      background: #2980b9;
    }

    .view-all {
      text-align: center;
      margin-top: 3rem;
    }

    .btn {
      display: inline-block;
      padding: 1rem 2rem;
      background: var(--primary-color);
      color: white;
      text-decoration: none;
      border-radius: var(--border-radius);
      transition: var(--transition);
    }

    .btn:hover {
      transform: translateY(-2px);
      box-shadow: var(--box-shadow);
    }
  </style>
</head>
<body>

<!-- Header -->
<header>
  <!-- Header content from previous answer remains the same -->
  <!-- ... -->
</header>

<!-- Main Content -->
<main>
  <section class="hero">
    <h1>Welcome to MyShop!</h1>
    <p>Discover our premium collection of clothes, accessories, and art pieces.</p>
    <a href="{$link->getCategoryLink(3)}" class="btn">Shop Now</a>
  </section>

  <!-- Clothing Products Section -->
  <section class="product-section">
    <h2>Our Clothing Collection</h2>
    <div class="product-grid">
      {foreach from=$products item=product}
        {if $product.id_category_default == 3}
          <article class="product-card">
            <div class="product-image">
              <a href="{$product.url}">
                <img src="{$product.cover.bySize.home_default.url}" 
                     alt="{$product.cover.legend}"
                     loading="lazy">
              </a>
            </div>
            <div class="product-details">
              <h3 class="product-title">{$product.name}</h3>
              
              <div class="product-price">
                {if $product.has_discount}
                  <span class="old-price">{$product.regular_price}</span>
                  <span class="current-price">{$product.price}</span>
                {else}
                  <span class="current-price">{$product.price}</span>
                {/if}
              </div>

              {if $product.comments_nb}
                <div class="product-reviews">
                  <div class="star-rating" style="--rating: {$product.average_grade};"></div>
                  <span>({$product.comments_nb} {l s='Reviews' d='Shop.Theme.Catalog'})</span>
                </div>
              {/if}

              <form action="{$urls.pages.cart}" method="post" class="add-to-cart">
                <input type="hidden" name="token" value="{$static_token}">
                <input type="hidden" name="id_product" value="{$product.id_product}">
                
                <div class="quantity-selector">
                  <label>{l s='Qty' d='Shop.Theme.Catalog'}:</label>
                  <input type="number" 
                         name="qty" 
                         value="1" 
                         min="1" 
                         max="{$product.quantity}"
                         class="qty-input">
                </div>

                <button class="add-to-cart-btn" 
                        type="submit" 
                        {if !$product.add_to_cart_url}disabled{/if}>
                  {if $product.availability == 'available'}
                    {l s='Add to Cart' d='Shop.Theme.Actions'}
                  {else}
                    {l s='Out of Stock' d='Shop.Theme.Catalog'}
                  {/if}
                </button>
              </form>
            </div>
          </article>
        {/if}
      {foreachelse}
        <p class="no-products">{l s='No products available' d='Shop.Theme.Catalog'}</p>
      {/foreach}
    </div>
    
    <div class="view-all">
      <a href="{$link->getCategoryLink(3)}" class="btn">
        {l s='View All Clothing' d='Shop.Theme.Catalog'}
      </a>
    </div>
  </section>
</main>

<!-- Footer -->
<footer>
  <!-- Footer content from previous answer remains the same -->
  <!-- ... -->
</footer>

<script>
document.addEventListener("DOMContentLoaded", function () {
  // Account dropdown script
  const toggle = document.getElementById("auth-toggle");
  const menu = document.getElementById("auth-menu");

  toggle.addEventListener("click", function (e) {
    e.preventDefault();
    e.stopPropagation();
    menu.style.display = menu.style.display === "block" ? "none" : "block";
  });

  document.addEventListener("click", function (e) {
    if (!toggle.contains(e.target) && !menu.contains(e.target)) {
      menu.style.display = "none";
    }
  });

  // Quantity input validation
  document.querySelectorAll('.qty-input').forEach(input => {
    input.addEventListener('change', function() {
      const max = parseInt(this.getAttribute('max'));
      if (this.value > max) this.value = max;
      if (this.value < 1) this.value = 1;
    });
  });
});
</script>

</body>
</html>