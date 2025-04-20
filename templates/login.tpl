{extends file='page.tpl'}
<!DOCTYPE html>
<html lang="{$language.iso_code}">
<head>
  <meta charset="utf-8">
  <title>{l s='Login' d='Shop.Theme'} - {$shop.name}</title>
  <meta name="description" content="{l s='Login to your account' d='Shop.Theme'}">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <style>
    /* Reset and Base Styles */
    * {
      box-sizing: border-box;
      margin: 0;
      padding: 0;
    }
    
    body {
      font-family: 'Poppins', sans-serif;
      line-height: 1.6;
      color: #333;
      background-color: #f5f5f5;
      padding: 0;
      margin: 0;
    }
    
    /* Auth Container */
    .auth-container {
      max-width: 1200px;
      margin: 0 auto;
      padding: 2rem 1rem;
      min-height: 70vh;
      display: flex;
      align-items: center;
      justify-content: center;
    }
    
    /* Auth Box */
    .auth-box {
      width: 100%;
      max-width: 800px;
      background: white;
      border-radius: 8px;
      box-shadow: 0 5px 15px rgba(0,0,0,0.1);
      overflow: hidden;
      display: flex;
      flex-wrap: wrap;
    }
    
    /* Auth Header */
    .auth-header {
      width: 100%;
      padding: 1.5rem;
      background: #4361ee;
      color: white;
      text-align: center;
    }
    
    .auth-header h1 {
      font-size: 1.8rem;
      margin-bottom: 0.5rem;
    }
    
    /* Auth Columns */
    .auth-column {
      flex: 1;
      min-width: 300px;
      padding: 2rem;
    }
    
    /* Login Form */
    .auth-form h2 {
      font-size: 1.5rem;
      margin-bottom: 1.5rem;
      color: #4361ee;
    }
    
    .form-group {
      margin-bottom: 1.5rem;
    }
    
    .form-group label {
      display: block;
      margin-bottom: 0.5rem;
      font-weight: 500;
    }
    
    .form-control {
      width: 100%;
      padding: 0.75rem 1rem;
      border: 1px solid #ddd;
      border-radius: 4px;
      font-size: 1rem;
      transition: all 0.3s;
    }
    
    .form-control:focus {
      border-color: #4361ee;
      box-shadow: 0 0 0 3px rgba(67,97,238,0.1);
      outline: none;
    }
    
    .password-wrapper {
      position: relative;
    }
    
    .toggle-password {
      position: absolute;
      right: 10px;
      top: 50%;
      transform: translateY(-50%);
      background: none;
      border: none;
      color: #777;
      cursor: pointer;
    }
    
    /* Remember Me */
    .remember-me {
      display: flex;
      align-items: center;
      margin-bottom: 1rem;
    }
    
    .remember-me input {
      margin-right: 0.5rem;
    }
    
    /* Forgot Password */
    .forgot-password {
      display: block;
      text-align: right;
      margin-bottom: 1.5rem;
      color: #4361ee;
      text-decoration: none;
      font-size: 0.9rem;
    }
    
    .forgot-password:hover {
      text-decoration: underline;
    }
    
    /* Buttons */
    .btn {
      display: block;
      width: 100%;
      padding: 0.875rem;
      background-color: #4361ee;
      color: white;
      border: none;
      border-radius: 4px;
      font-size: 1rem;
      font-weight: 500;
      cursor: pointer;
      transition: all 0.3s;
      text-align: center;
      text-decoration: none;
    }
    
    .btn:hover {
      background-color: #3a56d4;
    }
    
    .btn-outline {
      background: transparent;
      border: 1px solid #4361ee;
      color: #4361ee;
    }
    
    .btn-outline:hover {
      background: rgba(67,97,238,0.1);
    }
    
    /* Divider */
    .auth-divider {
      display: flex;
      align-items: center;
      margin: 2rem 0;
      color: #777;
    }
    
    .auth-divider::before,
    .auth-divider::after {
      content: "";
      flex: 1;
      border-bottom: 1px solid #ddd;
    }
    
    .auth-divider span {
      padding: 0 1rem;
    }
    
    /* Register Block */
    .register-block {
      text-align: center;
      background: #f9f9f9;
      border-left: 1px solid #eee;
    }
    
    .register-block h2 {
      color: #333;
    }
    
    /* Error Messages */
    .alert {
      padding: 0.75rem 1.25rem;
      margin-bottom: 1.5rem;
      border-radius: 4px;
    }
    
    .alert-danger {
      color: #721c24;
      background-color: #f8d7da;
      border-color: #f5c6cb;
    }
    
    /* Responsive */
    @media (max-width: 768px) {
      .auth-box {
        flex-direction: column;
      }
      
      .register-block {
        border-left: none;
        border-top: 1px solid #eee;
      }
    }
  </style>
</head>
<body>

<!-- Auth Container -->
<div class="auth-container">
  <div class="auth-box">
    <div class="auth-header">
      <h1>{l s='Welcome Back' d='Shop.Theme.Customeraccount'}</h1>
      <p>{l s='Login to access your account' d='Shop.Theme.Customeraccount'}</p>
    </div>
    
    <div class="auth-column auth-form">
      {if $errors}
        <div class="alert alert-danger">
          <ul>
            {foreach $errors as $error}
              <li>{$error}</li>
            {/foreach}
          </ul>
        </div>
      {/if}
      
      <h2>{l s='Sign In' d='Shop.Theme.Customeraccount'}</h2>
      
      <form id="login-form" action="{$urls.pages.authentication}" method="post">
        <input type="hidden" name="submitLogin" value="1">
        
        <div class="form-group">
          <label for="email">{l s='Email' d='Shop.Forms.Labels'}</label>
          <input type="email" id="email" name="email" class="form-control" value="{if isset($smarty.post.email)}{$smarty.post.email|stripslashes}{/if}" required>
        </div>
        
        <div class="form-group">
          <label for="password">{l s='Password' d='Shop.Forms.Labels'}</label>
          <div class="password-wrapper">
            <input type="password" id="password" name="password" class="form-control" required>
            <button type="button" class="toggle-password" aria-label="{l s='Show password' d='Shop.Theme.Actions'}">
              <svg width="20" height="20" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path d="M1 12C1 12 5 4 12 4C19 4 23 12 23 12C23 12 19 20 12 20C5 20 1 12 1 12Z" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                <path d="M12 15C13.6569 15 15 13.6569 15 12C15 10.3431 13.6569 9 12 9C10.3431 9 9 10.3431 9 12C9 13.6569 10.3431 15 12 15Z" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
              </svg>
            </button>
          </div>
        </div>
        
        <div class="form-options">
          <div class="remember-me">
            <input type="checkbox" id="rememberme" name="rememberme" value="1">
            <label for="rememberme">{l s='Remember me' d='Shop.Theme.Customeraccount'}</label>
          </div>
          <a href="{$urls.pages.password}" class="forgot-password">{l s='Forgot password?' d='Shop.Theme.Customeraccount'}</a>
        </div>
        
        <button type="submit" class="btn">{l s='Sign In' d='Shop.Theme.Actions'}</button>
      </form>
    </div>
    
    <div class="auth-column register-block">
      <h2>{l s='New Customer?' d='Shop.Theme.Customeraccount'}</h2>
      <p>{l s='Create an account to enjoy these benefits:' d='Shop.Theme.Customeraccount'}</p>
      
      <ul style="text-align: left; margin: 1.5rem 0; padding-left: 1.5rem;">
        <li>{l s='Faster checkout' d='Shop.Theme.Customeraccount'}</li>
        <li>{l s='Order history' d='Shop.Theme.Customeraccount'}</li>
        <li>{l s='Wishlist' d='Shop.Theme.Customeraccount'}</li>
        <li>{l s='Special offers' d='Shop.Theme.Customeraccount'}</li>
      </ul>
      
     
    </div>
  </div>
</div>



</body>
</html>