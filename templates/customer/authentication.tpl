<!DOCTYPE html>
<html lang="{$language.iso_code}">
<head>
  <!-- Same head content as your main template -->
</head>
<body>
  <!-- Header (Same as your existing header) -->
  <header>
    ...
  </header>

  <!-- Main Content -->
  <main class="auth-container">
    <div class="auth-card">
      <div class="auth-header">
        <h1>Welcome Back</h1>
        <p>Please sign in to continue</p>
      </div>

      <form class="auth-form" action="{$urls.actions.login}" method="post">
        <div class="form-group">
          <label for="email">
            <svg width="20" height="20" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
              <path d="M4 4H20C21.1 4 22 4.9 22 6V18C22 19.1 21.1 20 20 20H4C2.9 20 2 19.1 2 18V6C2 4.9 2.9 4 4 4Z" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
              <path d="M22 6L12 13L2 6" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
            </svg>
            Email Address
          </label>
          <input type="email" id="email" name="email" required>
        </div>

        <div class="form-group">
          <label for="password">
            <svg width="20" height="20" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
              <path d="M12 15V17M6 21H18C19.1046 21 20 20.1046 20 19V13C20 11.8954 19.1046 11 18 11H6C4.89543 11 4 11.8954 4 13V19C4 20.1046 4.89543 21 6 21Z" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
              <path d="M16 11V7C16 4.79086 14.2091 3 12 3C9.79086 3 8 4.79086 8 7V11" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
            </svg>
            Password
          </label>
          <input type="password" id="password" name="password" required>
          <button type="button" class="toggle-password">Show</button>
        </div>

        <div class="form-options">
          <label class="remember-me">
            <input type="checkbox" name="rememberme">
            <span class="checkmark"></span>
            Remember me
          </label>
          <a href="{$urls.pages.password}" class="forgot-password">Forgot Password?</a>
        </div>

        <button type="submit" class="auth-button">Sign In</button>

        <div class="auth-alt">
          <span>Don't have an account?</span>
          <a href="{$urls.base_url}registration">Create Account</a>
        </div>
      </form>
    </div>
  </main>

  <!-- Footer (Same as your existing footer) -->
  <footer>
    ...
  </footer>

  <!-- Add this CSS -->
  <style>
    :root {
      --primary-color: #2F3C7E;
      --accent-color: #FBEAEB;
      --text-color: #333;
      --gray-color: #666;
    }

    .auth-container {
      min-height: calc(100vh - 150px);
      display: flex;
      align-items: center;
      justify-content: center;
      padding: 2rem;
      background: linear-gradient(135deg, var(--accent-color) 0%, #ffffff 100%);
    }

    .auth-card {
      background: white;
      padding: 2.5rem;
      border-radius: 1rem;
      box-shadow: 0 10px 30px rgba(0,0,0,0.1);
      width: 100%;
      max-width: 450px;
      transform: translateY(-20px);
    }

    .auth-header {
      text-align: center;
      margin-bottom: 2rem;
    }

    .auth-header h1 {
      font-size: 2rem;
      margin-bottom: 0.5rem;
      color: var(--primary-color);
    }

    .auth-header p {
      color: var(--gray-color);
    }

    .form-group {
      margin-bottom: 1.5rem;
      position: relative;
    }

    .form-group label {
      display: flex;
      align-items: center;
      gap: 0.5rem;
      margin-bottom: 0.5rem;
      color: var(--text-color);
      font-weight: 500;
    }

    .form-group input {
      width: 100%;
      padding: 0.8rem 1rem;
      border: 2px solid #e0e0e0;
      border-radius: 0.5rem;
      font-size: 1rem;
      transition: border-color 0.3s ease;
    }

    .form-group input:focus {
      outline: none;
      border-color: var(--primary-color);
    }

    .toggle-password {
      position: absolute;
      right: 10px;
      top: 55%;
      transform: translateY(-50%);
      background: none;
      border: none;
      color: var(--gray-color);
      cursor: pointer;
      font-size: 0.9rem;
    }

    .form-options {
      display: flex;
      justify-content: space-between;
      align-items: center;
      margin: 1.5rem 0;
    }

    .remember-me {
      display: flex;
      align-items: center;
      gap: 0.5rem;
      position: relative;
      cursor: pointer;
    }

    .remember-me input {
      opacity: 0;
      position: absolute;
    }

    .checkmark {
      display: inline-block;
      width: 18px;
      height: 18px;
      border: 2px solid #ccc;
      border-radius: 4px;
      position: relative;
    }

    .remember-me input:checked ~ .checkmark {
      background-color: var(--primary-color);
      border-color: var(--primary-color);
    }

    .checkmark:after {
      content: "";
      position: absolute;
      left: 5px;
      top: 1px;
      width: 5px;
      height: 10px;
      border: solid white;
      border-width: 0 2px 2px 0;
      transform: rotate(45deg);
      display: none;
    }

    .remember-me input:checked ~ .checkmark:after {
      display: block;
    }

    .forgot-password {
      color: var(--primary-color);
      text-decoration: none;
      font-size: 0.9rem;
    }

    .auth-button {
      width: 100%;
      padding: 1rem;
      background-color: var(--primary-color);
      color: white;
      border: none;
      border-radius: 0.5rem;
      font-size: 1rem;
      font-weight: 600;
      cursor: pointer;
      transition: transform 0.2s ease;
    }

    .auth-button:hover {
      transform: translateY(-2px);
    }

    .auth-alt {
      text-align: center;
      margin-top: 1.5rem;
      color: var(--gray-color);
    }

    .auth-alt a {
      color: var(--primary-color);
      text-decoration: none;
      margin-left: 0.5rem;
      font-weight: 500;
    }

    @media (max-width: 480px) {
      .auth-card {
        padding: 1.5rem;
      }
    }
  </style>

  <!-- Add password toggle script -->
  <script>
    document.addEventListener('DOMContentLoaded', function() {
      const toggleButtons = document.querySelectorAll('.toggle-password');
      
      toggleButtons.forEach(button => {
        button.addEventListener('click', function() {
          const input = this.previousElementSibling;
          const type = input.getAttribute('type') === 'password' ? 'text' : 'password';
          input.setAttribute('type', type);
          this.textContent = type === 'password' ? 'Show' : 'Hide';
        });
      });
    });
  </script>
</body>
</html>