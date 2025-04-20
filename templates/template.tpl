<!DOCTYPE html>
<html lang="{$language.iso_code}">
<head>
  <meta charset="utf-8">
  <title>{$page.meta.title}</title>
  <meta name="description" content="{$page.meta.description}">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="{$urls.theme_assets}css/custom.css">
</head>
<body>

  <header style="display: flex; justify-content: space-between; align-items: center; padding: 1rem 2rem; background-color: #f5f5f5; border-bottom: 1px solid #ddd;">
  
  <div>
    <a href="{$urls.base_url}" style="text-decoration: none; font-size: 1.5rem; font-weight: bold; color: #333;">
       MyShop
    </a>
  </div>

  <!-- Center: Category Links -->
  <nav>
    <ul style="list-style: none; display: flex; gap: 1.5rem; margin: 0; padding: 0;">
      <li><a href="{$link->getCategoryLink(3)}" style="text-decoration: none; color: #333;">Clothes</a></li>
      <li><a href="{$link->getCategoryLink(4)}" style="text-decoration: none; color: #333;">Accessories</a></li>
      <li><a href="{$link->getCategoryLink(5)}" style="text-decoration: none; color: #333;">Art</a></li>
    </ul>
  </nav>

<!-- Login/Signup dropdown -->
<div style="position: relative;">
  <button id="auth-toggle" style="background: none; border: none; font-size: 1rem; cursor: pointer; color: #333;">
    👤 Account ▾
  </button>
  <div id="auth-menu" style="display: none; position: absolute; top: 2rem; right: 0; background: white; border: 1px solid #ccc; border-radius: 5px; padding: 0.5rem; box-shadow: 0 2px 5px rgba(0,0,0,0.1);">
    <a href="{$urls.pages.authentication}" style="display: block; padding: 0.3rem 1rem; color: #333; text-decoration: none;">Login</a>
    <a href="{$urls.pages.authentication}?create_account=1" style="display: block; padding: 0.3rem 1rem; color: #333; text-decoration: none;">Sign Up</a>
  </div>
</div>

</header>


  <main>
    {block name='content'}{/block}
  </main>
<script>
  document.addEventListener("DOMContentLoaded", function () {
    const toggle = document.getElementById("auth-toggle");
    const menu = document.getElementById("auth-menu");

    toggle.addEventListener("click", function (e) {
      e.preventDefault();
      menu.style.display = (menu.style.display === "block") ? "none" : "block";
    });

    // Close the dropdown if you click outside
    document.addEventListener("click", function (e) {
      if (!toggle.contains(e.target) && !menu.contains(e.target)) {
        menu.style.display = "none";
      }
    });
  });
</script>
  <footer>
    
    <p>© 2025 MyShop. All rights reserved.</p>
  </footer>

</body>
</html>
