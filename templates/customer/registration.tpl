{extends file='page.tpl'}

{block name='head'}
  <style>
    /* Main Container */
    .auth-container {
      max-width: 480px;
      margin: 2rem auto;
      padding: 2rem;
      background: #fff;
      border-radius: 8px;
      box-shadow: 0 2px 15px rgba(0,0,0,0.1);
    }

    /* Header */
    .auth-header {
      text-align: center;
      margin-bottom: 2rem;
    }
    .auth-title {
      font-size: 1.8rem;
      color: #4361ee;
      margin-bottom: 0.5rem;
    }
    .auth-subtitle {
      color: #6c757d;
      font-size: 1rem;
    }

    /* Form Elements */
    .form-group {
      margin-bottom: 1.5rem;
    }
    .form-label {
      display: block;
      margin-bottom: 0.5rem;
      font-weight: 500;
      color: #495057;
    }
    .form-control {
      width: 100%;
      padding: 0.75rem 1rem;
      border: 1px solid #ced4da;
      border-radius: 4px;
      font-size: 1rem;
      transition: all 0.3s;
    }
    .form-control:focus {
      border-color: #4361ee;
      box-shadow: 0 0 0 0.2rem rgba(67,97,238,0.25);
      outline: none;
    }

    /* Password Input */
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
      color: #6c757d;
      cursor: pointer;
    }

    /* Remember Me & Forgot Password */
    .form-options {
      display: flex;
      justify-content: space-between;
      align-items: center;
      margin: 1.5rem 0;
    }
    .remember-me {
      display: flex;
      align-items: center;
    }
    .remember-me input {
      margin-right: 0.5rem;
    }
    .forgot-password {
      color: #4361ee;
      text-decoration: none;
    }
    .forgot-password:hover {
      text-decoration: underline;
    }

    /* Submit Button */
    .btn-signin {
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
    }
    .btn-signin:hover {
      background-color: #3a56d4;
    }

    /* Create Account Link */
    .create-account {
      text-align: center;
      margin-top: 1.5rem;
      color: #6c757d;
    }
    .create-account a {
      color: #4361ee;
      text-decoration: none;
      margin-left: 0.25rem;
    }
    .create-account a:hover {
      text-decoration: underline;
    }

    /* Error Messages */
    .alert-danger {
      padding: 0.75rem 1.25rem;
      margin-bottom: 1.5rem;
      border: 1px solid #f5c6cb;
      border-radius: 4px;
      color: #721c24;
      background-color: #f8d7da;
    }
    .alert-danger ul {
      margin: 0;
      padding-left: 1.25rem;
    }

    /* Responsive */
    @media (max-width: 576px) {
      .auth-container {
        padding: 1.5rem;
        margin: 1rem;
      }
      .form-options {
        flex-direction: column;
        align-items: flex-start;
        gap: 1rem;
      }
    }
  </style>
{/block}

{block name='content'}
  <div class="auth-container">
    <div class="auth-header">
      <h1 class="auth-title">{l s='Sign In' d='Shop.Theme.Customeraccount'}</h1>
      <p class="auth-subtitle">{l s='Access your account to manage orders and personal info' d='Shop.Theme.Customeraccount'}</p>
    </div>

    {if $errors}
      <div class="alert-danger">
        <ul>
          {foreach $errors as $error}
            <li>{$error}</li>
          {/foreach}
        </ul>
      </div>
    {/if}

    <form id="login-form" action="{$urls.pages.authentication}" method="post">
      <input type="hidden" name="submitLogin" value="1">

      <div class="form-group">
        <label for="email" class="form-label">{l s='Email' d='Shop.Forms.Labels'}</label>
        <input type="email" id="email" name="email" class="form-control" value="{if isset($smarty.post.email)}{$smarty.post.email|stripslashes}{/if}" required>
      </div>

      <div class="form-group">
        <label for="password" class="form-label">{l s='Password' d='Shop.Forms.Labels'}</label>
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

      <button type="submit" class="btn-signin">{l s='Sign In' d='Shop.Theme.Actions'}</button>
    </form>

    <div class="create-account">
      {l s='New customer?' d='Shop.Theme.Customeraccount'}
      <a href="{$urls.pages.register}">{l s='Create an account' d='Shop.Theme.Customeraccount'}</a>
    </div>
  </div>

  <script>
    document.addEventListener('DOMContentLoaded', function() {
      // Toggle password visibility
      const togglePassword = document.querySelector('.toggle-password');
      const password = document.getElementById('password');
      
      if (togglePassword && password) {
        togglePassword.addEventListener('click', function() {
          const type = password.getAttribute('type') === 'password' ? 'text' : 'password';
          password.setAttribute('type', type);
          this.querySelector('svg').style.color = type === 'password' ? '#6c757d' : '#4361ee';
        });
      }

      // Form validation
      const form = document.getElementById('login-form');
      if (form) {
        form.addEventListener('submit', function(e) {
          const email = document.getElementById('email').value.trim();
          const password = document.getElementById('password').value.trim();
          
          if (!email || !password) {
            e.preventDefault();
            alert('{l s='Please fill in all required fields' js=1 d='Shop.Theme.Customeraccount'}');
          }
        });
      }
    });
  </script>
{/block}