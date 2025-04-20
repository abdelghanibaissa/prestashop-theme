document.addEventListener('DOMContentLoaded', function() {
    // Password visibility toggle
    const showPasswordBtn = document.querySelector('.show-password');
    const passwordInput = document.getElementById('login-password');
    
    if (showPasswordBtn && passwordInput) {
      showPasswordBtn.addEventListener('click', function() {
        const type = passwordInput.getAttribute('type') === 'password' ? 'text' : 'password';
        passwordInput.setAttribute('type', type);
        this.classList.toggle('password-visible');
      });
    }
  
    // Form validation
    const loginForm = document.getElementById('login-form');
    if (loginForm) {
      loginForm.addEventListener('submit', function(e) {
        const email = document.getElementById('login-email').value.trim();
        const password = document.getElementById('login-password').value.trim();
        
        if (!email || !password) {
          e.preventDefault();
          alert('Please fill in all required fields');
        }
      });
    }
  });