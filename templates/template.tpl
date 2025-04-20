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
    :root {
      --primary-color: #4361ee;
      --secondary-color: #3f37c9;
      --accent-color: #4cc9f0;
      --light-color: #f8f9fa;
      --dark-color: #212529;
      --gray-color: #6c757d;
      --success-color: #4bb543;
      --danger-color: #ff3333;
      --border-radius: 8px;
      --box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
      --transition: all 0.3s ease;
    }
    
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }
    
    body {
      font-family: 'Poppins', sans-serif;
      line-height: 1.6;
      color: var(--dark-color);
      background-color: #ffffff;
      min-height: 100vh;
      display: flex;
      flex-direction: column;
    }
    
    /* Header Styles */
    header {
      display: flex;
      justify-content: space-between;
      align-items: center;
      padding: 1rem 5%;
      background-color: white;
      box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
      position: sticky;
      top: 0;
      z-index: 1000;
    }
    
    .logo {
      text-decoration: none;
      font-size: 1.8rem;
      font-weight: 700;
      color: var(--primary-color);
      display: flex;
      align-items: center;
      gap: 0.5rem;
    }
    
    .logo:hover {
      color: var(--secondary-color);
    }
    
    /* Navigation */
    nav ul {
      list-style: none;
      display: flex;
      gap: 2rem;
    }
    
    nav a {
      text-decoration: none;
      color: var(--dark-color);
      font-weight: 500;
      padding: 0.5rem 0;
      position: relative;
      transition: var(--transition);
    }
    
    nav a:hover {
      color: var(--primary-color);
    }
    
    nav a::after {
      content: '';
      position: absolute;
      bottom: 0;
      left: 0;
      width: 0;
      height: 2px;
      background-color: var(--primary-color);
      transition: var(--transition);
    }
    
    nav a:hover::after {
      width: 100%;
    }
    
    /* Account Dropdown */
    .account-dropdown {
      position: relative;
    }
    
    #auth-toggle {
      background: none;
      border: none;
      font-size: 1rem;
      cursor: pointer;
      color: var(--dark-color);
      display: flex;
      align-items: center;
      gap: 0.5rem;
      padding: 0.5rem 1rem;
      border-radius: var(--border-radius);
      transition: var(--transition);
    }
    
    #auth-toggle:hover {
      background-color: rgba(67, 97, 238, 0.1);
      color: var(--primary-color);
    }
    
    #auth-menu {
      display: none;
      position: absolute;
      top: 3rem;
      right: 0;
      background: white;
      border: 1px solid #eee;
      border-radius: var(--border-radius);
      padding: 0.5rem 0;
      box-shadow: var(--box-shadow);
      min-width: 180px;
      z-index: 100;
    }
    
    #auth-menu a {
      display: block;
      padding: 0.7rem 1.5rem;
      color: var(--dark-color);
      text-decoration: none;
      transition: var(--transition);
    }
    
    #auth-menu a:hover {
      background-color: rgba(67, 97, 238, 0.1);
      color: var(--primary-color);
      padding-left: 1.7rem;
    }
    
    /* Main Content */
    main {
      flex: 1;
      padding: 3rem 5%;
      background-color: var(--light-color);
    }
    
    .hero {
      text-align: center;
      padding: 4rem 0;
      background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
      border-radius: var(--border-radius);
      margin-bottom: 3rem;
    }
    
    .hero h1 {
      font-size: 2.5rem;
      margin-bottom: 1rem;
      color: var(--primary-color);
    }
    
    .hero p {
      font-size: 1.2rem;
      color: var(--gray-color);
      max-width: 700px;
      margin: 0 auto 2rem;
    }
    
    .btn {
      display: inline-block;
      padding: 0.8rem 1.8rem;
      background-color: var(--primary-color);
      color: white;
      border: none;
      border-radius: var(--border-radius);
      text-decoration: none;
      font-weight: 500;
      cursor: pointer;
      transition: var(--transition);
    }
    
    .btn:hover {
      background-color: var(--secondary-color);
      transform: translateY(-2px);
      box-shadow: 0 6px 12px rgba(0, 0, 0, 0.15);
    }
    
    /* Footer */
    footer {
      padding: 2rem 5%;
      text-align: center;
      color: var(--gray-color);
      background-color: white;
      border-top: 1px solid #eee;
    }
    
    .footer-content {
      display: flex;
      justify-content: space-between;
      flex-wrap: wrap;
      gap: 2rem;
      max-width: 1200px;
      margin: 0 auto;
    }
    
    .footer-section {
      flex: 1;
      min-width: 200px;
      text-align: left;
    }
    
    .footer-section h3 {
      color: var(--dark-color);
      margin-bottom: 1.5rem;
      font-size: 1.2rem;
    }
    
    .footer-section ul {
      list-style: none;
    }
    
    .footer-section ul li {
      margin-bottom: 0.8rem;
    }
    
    .footer-section a {
      color: var(--gray-color);
      text-decoration: none;
      transition: var(--transition);
    }
    
    .footer-section a:hover {
      color: var(--primary-color);
      padding-left: 5px;
    }
    
    .copyright {
      margin-top: 2rem;
      padding-top: 1.5rem;
      border-top: 1px solid #eee;
      font-size: 0.9rem;
    }
    
    /* Responsive Design */
    @media (max-width: 768px) {
      header {
        flex-direction: column;
        padding: 1rem;
        gap: 1rem;
      }
      
      nav ul {
        gap: 1rem;
      }
      
      .hero h1 {
        font-size: 2rem;
      }
      
      .footer-content {
        flex-direction: column;
      }
      
      .footer-section {
        text-align: center;
      }
    }
  </style>
</head>
<body>

<!-- Header -->
<header>
  
  <!-- Logo -->
  <div>
    <a href="{$urls.base_url}" class="logo">
      <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
        <path d="M3 11L12 2L21 11V22H14V16H10V22H3V11Z" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
      </svg>
      MyShop
    </a>
  </div>

  <!-- Navigation -->
  <nav>
    <ul>
      <li><a href="{$link->getCategoryLink(3)}">Clothes</a></li>
      <li><a href="{$link->getCategoryLink(4)}">Accessories</a></li>
      <li><a href="{$link->getCategoryLink(5)}">Art</a></li>
      <li><a href="{$link->getPageLink('contact')}">Contact</a></li>
    </ul>
  </nav>

  <!-- Account Dropdown -->
  <div class="account-dropdown">
    <button id="auth-toggle">
      <svg width="20" height="20" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
        <path d="M20 21V19C20 17.9391 19.5786 16.9217 18.8284 16.1716C18.0783 15.4214 17.0609 15 16 15H8C6.93913 15 5.92172 15.4214 5.17157 16.1716C4.42143 16.9217 4 17.9391 4 19V21" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
        <path d="M12 11C14.2091 11 16 9.20914 16 7C16 4.79086 14.2091 3 12 3C9.79086 3 8 4.79086 8 7C8 9.20914 9.79086 11 12 11Z" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
      </svg>
      Account ▾
    </button>

    {assign var='is_logged_in' value=Context::getContext()->customer->isLogged()}

    <div id="auth-menu">
      {if $is_logged_in}
        <a href="{$urls.pages.my_account}">
          <svg width="16" height="16" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
            <path d="M12 12C14.2091 12 16 10.2091 16 8C16 5.79086 14.2091 4 12 4C9.79086 4 8 5.79086 8 8C8 10.2091 9.79086 12 12 12Z" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
            <path d="M6 20C6 17.7909 7.79086 16 10 16H14C16.2091 16 18 17.7909 18 20" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
          </svg>
          My Account
        </a>
        <a href="{$urls.actions.logout}">
          <svg width="16" height="16" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
            <path d="M9 21H5C4.46957 21 3.96086 20.7893 3.58579 20.4142C3.21071 20.0391 3 19.5304 3 19V5C3 4.46957 3.21071 3.96086 3.58579 3.58579C3.96086 3.21071 4.46957 3 5 3H9" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
            <path d="M16 17L21 12L16 7" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
            <path d="M21 12H9" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
          </svg>
          Log out
        </a>
      {else}
        <a href="{$urls.pages.authentication}">
          <svg width="16" height="16" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
            <path d="M15 3H19C19.5304 3 20.0391 3.21071 20.4142 3.58579C20.7893 3.96086 21 4.46957 21 5V19C21 19.5304 20.7893 20.0391 20.4142 20.4142C20.0391 20.7893 19.5304 21 19 21H15" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
            <path d="M10 17L15 12L10 7" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
            <path d="M15 12H3" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
          </svg>
          Login
        </a>
        <a href="{$urls.pages.authentication}?create_account=1">
          <svg width="16" height="16" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
            <path d="M16 21V19C16 17.9391 15.5786 16.9217 14.8284 16.1716C14.0783 15.4214 13.0609 15 12 15H5C3.93913 15 2.92172 15.4214 2.17157 16.1716C1.42143 16.9217 1 17.9391 1 19V21" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
            <path d="M8.5 11C10.7091 11 12.5 9.20914 12.5 7C12.5 4.79086 10.7091 3 8.5 3C6.29086 3 4.5 4.79086 4.5 7C4.5 9.20914 6.29086 11 8.5 11Z" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
            <path d="M20 8V14" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
            <path d="M23 11H17" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
          </svg>
          Sign Up
        </a>
      {/if}
    </div>
  </div>

</header>

<!-- Main Content -->
<main>
  <section class="hero">
    <h1>Welcome to MyShop!</h1>
    <p>Discover our premium collection of clothes, accessories, and art pieces that will elevate your style.</p>
    <a href="{$link->getCategoryLink(3)}" class="btn">Shop Now</a>
  </section>

  <!-- Featured Categories Section -->
  <section style="margin: 3rem 0;">
    <h2 style="text-align: center; margin-bottom: 2rem; color: var(--primary-color);">Shop by Category</h2>
    <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(250px, 1fr)); gap: 2rem;">
      <div style="background: white; border-radius: var(--border-radius); padding: 1.5rem; box-shadow: var(--box-shadow); text-align: center; transition: var(--transition);">
        <div style="width: 100px; height: 100px; margin: 0 auto 1rem; background-color: #f0f8ff; border-radius: 50%; display: flex; align-items: center; justify-content: center;">
          <svg width="48" height="48" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
            <path d="M20 7H16C16 4.79086 14.2091 3 12 3C9.79086 3 8 4.79086 8 7H4C2.89543 7 2 7.89543 2 9V19C2 20.1046 2.89543 21 4 21H20C21.1046 21 22 20.1046 22 19V9C22 7.89543 21.1046 7 20 7Z" stroke="var(--primary-color)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
            <path d="M12 12C13.1046 12 14 11.1046 14 10C14 8.89543 13.1046 8 12 8C10.8954 8 10 8.89543 10 10C10 11.1046 10.8954 12 12 12Z" stroke="var(--primary-color)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
          </svg>
        </div>
        <h3 style="margin-bottom: 0.5rem;">Clothes</h3>
        <p style="color: var(--gray-color); margin-bottom: 1rem;">Discover our latest fashion collection</p>
        <a href="{$link->getCategoryLink(3)}" style="color: var(--primary-color); text-decoration: none; font-weight: 500;">Browse →</a>
      </div>
      
      <div style="background: white; border-radius: var(--border-radius); padding: 1.5rem; box-shadow: var(--box-shadow); text-align: center; transition: var(--transition);">
        <div style="width: 100px; height: 100px; margin: 0 auto 1rem; background-color: #fff0f8; border-radius: 50%; display: flex; align-items: center; justify-content: center;">
          <svg width="48" height="48" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
            <path d="M12 12C14.2091 12 16 10.2091 16 8C16 5.79086 14.2091 4 12 4C9.79086 4 8 5.79086 8 8C8 10.2091 9.79086 12 12 12Z" stroke="#ff66b2" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
            <path d="M18 8C18 10.973 15.8377 14.441 12 17.935C8.16229 14.441 6 10.973 6 8C6 4.68629 8.68629 2 12 2C15.3137 2 18 4.68629 18 8Z" stroke="#ff66b2" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
            <path d="M12 22V17" stroke="#ff66b2" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
          </svg>
        </div>
        <h3 style="margin-bottom: 0.5rem;">Accessories</h3>
        <p style="color: var(--gray-color); margin-bottom: 1rem;">Complete your look with our accessories</p>
        <a href="{$link->getCategoryLink(4)}" style="color: var(--primary-color); text-decoration: none; font-weight: 500;">Browse →</a>
      </div>
      
      <div style="background: white; border-radius: var(--border-radius); padding: 1.5rem; box-shadow: var(--box-shadow); text-align: center; transition: var(--transition);">
        <div style="width: 100px; height: 100px; margin: 0 auto 1rem; background-color: #f8f0ff; border-radius: 50%; display: flex; align-items: center; justify-content: center;">
          <svg width="48" height="48" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
            <path d="M3 16L12 21L21 16" stroke="#9c66ff" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
            <path d="M3 12L12 17L21 12" stroke="#9c66ff" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
            <path d="M3 8L12 13L21 8L12 3L3 8Z" stroke="#9c66ff" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
          </svg>
        </div>
        <h3 style="margin-bottom: 0.5rem;">Art</h3>
        <p style="color: var(--gray-color); margin-bottom: 1rem;">Unique pieces to inspire your space</p>
        <a href="{$link->getCategoryLink(5)}" style="color: var(--primary-color); text-decoration: none; font-weight: 500;">Browse →</a>
      </div>
    </div>
  </section>
</main>

<!-- Footer -->
<footer>
  <div class="footer-content">
    <div class="footer-section">
      <h3>About MyShop</h3>
      <p>We offer high-quality products with a focus on sustainability and craftsmanship.</p>
    </div>
    <div class="footer-section">
      <h3>Quick Links</h3>
      <ul>
        <li><a href="{$urls.base_url}">Home</a></li>
        <li><a href="{$link->getPageLink('prices-drop')}">Specials</a></li>
        <li><a href="{$link->getPageLink('new-products')}">New Products</a></li>
        <li><a href="{$link->getPageLink('best-sales')}">Best Sellers</a></li>
      </ul>
    </div>
    <div class="footer-section">
      <h3>Customer Service</h3>
      <ul>
        <li><a href="{$link->getPageLink('contact')}">Contact Us</a></li>
        <li><a href="{$link->getCMSLink(3)}">Terms & Conditions</a></li>
        <li><a href="{$link->getCMSLink(4)}">Privacy Policy</a></li>
        <li><a href="{$link->getPageLink('sitemap')}">Sitemap</a></li>
      </ul>
    </div>
    <div class="footer-section">
      <h3>Stay Connected</h3>
      <div style="display: flex; gap: 1rem; justify-content: center; margin-top: 1rem;">
        <a href="#" style="color: var(--gray-color);">
          <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
            <path d="M18 2H15C13.6739 2 12.4021 2.52678 11.4645 3.46447C10.5268 4.40215 10 5.67392 10 7V10H7V14H10V22H14V14H17L18 10H14V7C14 6.73478 14.1054 6.48043 14.2929 6.29289C14.4804 6.10536 14.7348 6 15 6H18V2Z" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
          </svg>
        </a>
        <a href="#" style="color: var(--gray-color);">
          <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
            <path d="M23 3C22.0424 3.67548 20.9821 4.19211 19.86 4.53C19.2577 3.83751 18.4573 3.34669 17.567 3.12393C16.6767 2.90116 15.7395 2.9572 14.8821 3.28445C14.0247 3.61171 13.2884 4.1944 12.773 4.95372C12.2575 5.71303 11.9877 6.61234 12 7.53V8.53C10.2426 8.57557 8.50127 8.18581 6.93101 7.39545C5.36074 6.60508 4.01032 5.43864 3 4C3 4 -1 13 8 17C5.94053 18.398 3.48716 19.0989 1 19C10 24 21 19 21 7.5C20.9991 7.22145 20.9723 6.94359 20.92 6.67C21.9406 5.66349 22.6608 4.39271 23 3Z" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
          </svg>
        </a>
        <a href="#" style="color: var(--gray-color);">
          <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
            <path d="M17 2H7C4.23858 2 2 4.23858 2 7V17C2 19.7614 4.23858 22 7 22H17C19.7614 22 22 19.7614 22 17V7C22 4.23858 19.7614 2 17 2Z" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
            <path d="M16 11.37C16.1234 12.2022 15.9813 13.0522 15.5938 13.799C15.2063 14.5458 14.5931 15.1514 13.8416 15.5297C13.0901 15.9079 12.2384 16.0396 11.4078 15.9059C10.5771 15.7723 9.80976 15.3801 9.21484 14.7852C8.61992 14.1902 8.22773 13.4229 8.09406 12.5922C7.9604 11.7616 8.09206 10.9099 8.47032 10.1584C8.84858 9.40685 9.45418 8.79374 10.201 8.40624C10.9478 8.01873 11.7978 7.87658 12.63 8C13.4789 8.12588 14.2648 8.52146 14.8717 9.1283C15.4785 9.73515 15.8741 10.5211 16 11.37Z" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
            <path d="M17.5 6.5H17.51" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
          </svg>
        </a>
      </div>
    </div>
  </div>
  <div class="copyright">
    <p>© 2025 MyShop. All rights reserved.</p>
  </div>
</footer>

<!-- Dropdown Script -->
<script>
  document.addEventListener("DOMContentLoaded", function () {
    const toggle = document.getElementById("auth-toggle");
    const menu = document.getElementById("auth-menu");

    toggle.addEventListener("click", function (e) {
      e.preventDefault();
      e.stopPropagation();
      menu.style.display = (menu.style.display === "block") ? "none" : "block";
    });

    document.addEventListener("click", function (e) {
      if (!toggle.contains(e.target) && !menu.contains(e.target)) {
        menu.style.display = "none";
      }
    });
  });
</script>

</body>
</html>