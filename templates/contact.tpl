<!DOCTYPE html>
<html lang="{$language.iso_code}">
<head>
  <!-- Same head content as your main template -->
</head>
<body>
  <!-- Header (Same as your existing header) -->
 

  <!-- Main Content -->
  <main class="auth-container">
    <div class="auth-card">
      <div class="auth-header">
        <h1>Contact Us</h1>
        <p>We'd love to hear from you</p>
      </div>

      <form class="auth-form" action="#" method="post">
        <div class="form-group">
          <label for="name">
            <svg width="20" height="20" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
              <path d="M20 21V19C20 17.9391 19.5786 16.9217 18.8284 16.1716C18.0783 15.4214 17.0609 15 16 15H8C6.93913 15 5.92172 15.4214 5.17157 16.1716C4.42143 16.9217 4 17.9391 4 19V21" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
              <path d="M12 11C14.2091 11 16 9.20914 16 7C16 4.79086 14.2091 3 12 3C9.79086 3 8 4.79086 8 7C8 9.20914 9.79086 11 12 11Z" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
            </svg>
            Your Name
          </label>
          <input type="text" id="name" name="name" required>
        </div>

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
          <label for="subject">
            <svg width="20" height="20" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
              <path d="M12 22H6C4.89543 22 4 21.1046 4 20V4C4 2.89543 4.89543 2 6 2H18C19.1046 2 20 2.89543 20 4V12" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
              <path d="M15 16.5L17.5 14L22 18.5" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
              <path d="M19 14V18.5H22" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
            </svg>
            Subject
          </label>
          <input type="text" id="subject" name="subject" required>
        </div>

        <div class="form-group">
          <label for="message">
            <svg width="20" height="20" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
              <path d="M8 10H16M8 14H12M12 22C17.5228 22 22 17.5228 22 12C22 6.47715 17.5228 2 12 2C6.47715 2 2 6.47715 2 12C2 13.5997 2.37562 15.1116 3.04346 16.4525C3.22094 16.8088 3.28001 17.2161 3.17712 17.6006L2.58151 19.8267C2.32295 20.793 3.20701 21.677 4.17335 21.4185L6.39939 20.8229C6.78393 20.719 7.19121 20.7791 7.54753 20.9565C8.88837 21.6244 10.4003 22 12 22Z" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
            </svg>
            Message
          </label>
          <textarea id="message" name="message" rows="5" required></textarea>
        </div>

        <button type="submit" class="auth-button">Send Message</button>

        <div class="auth-alt">
          <span>Prefer other methods?</span>
          <a href="tel:+1234567890">Call us: +1 234 567 890</a>
        </div>
      </form>
    </div>
  </main>


 

  <!-- Unified CSS -->
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

    .form-group input,
    .form-group textarea {
      width: 100%;
      padding: 0.8rem 1rem;
      border: 2px solid #e0e0e0;
      border-radius: 0.5rem;
      font-size: 1rem;
      transition: border-color 0.3s ease;
      font-family: inherit;
    }

    .form-group textarea {
      resize: vertical;
      min-height: 120px;
    }

    .form-group input:focus,
    .form-group textarea:focus {
      outline: none;
      border-color: var(--primary-color);
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
      display: flex;
      flex-direction: column;
      gap: 0.5rem;
    }

    .auth-alt a {
      color: var(--primary-color);
      text-decoration: none;
      font-weight: 500;
    }

    @media (max-width: 480px) {
      .auth-card {
        padding: 1.5rem;
      }
    }
  </style>

  <!-- Form Submission Script -->
  <script>
    document.addEventListener('DOMContentLoaded', function() {
      const form = document.querySelector('.auth-form');
      form.addEventListener('submit', function(e) {
        e.preventDefault();
        // Add your form submission logic here
        alert('Thank you for your message! We will respond shortly.');
        form.reset();
      });
    });
  </script>
</body>
</html>