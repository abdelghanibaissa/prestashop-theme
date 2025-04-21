<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Forgot Password</title>
    <style>
        :root {
            --primary-color: #2F3C7E;
            --accent-color: #FBEAEB;
            --text-color: #333;
            --gray-color: #666;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Arial', sans-serif;
        }

        .auth-container {
            min-height: 100vh;
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
            line-height: 1.5;
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

        .success-message {
            display: none;
            text-align: center;
            padding: 1rem;
            background-color: #e8f5e9;
            border-radius: 0.5rem;
            color: #2e7d32;
            margin-top: 1rem;
        }

        @media (max-width: 480px) {
            .auth-card {
                padding: 1.5rem;
            }
        }
    </style>
</head>
<body>
<h1>HALOOO</h1>
    <main class="auth-container">
        <div class="auth-card">
            <div class="auth-header">
                <h1>Forgot Password?</h1>
                <p>Enter your email address and we'll send you a link to reset your password</p>
            </div>

            <form class="auth-form" id="passwordResetForm">
                <div class="form-group">
                    <label for="email">
                        <svg width="20" height="20" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M4 4H20C21.1 4 22 4.9 22 6V18C22 19.1 21.1 20 20 20H4C2.9 20 2 19.1 2 18V6C2 4.9 2.9 4 4 4Z" stroke="currentColor" stroke-width="2"/>
                            <path d="M22 6L12 13L2 6" stroke="currentColor" stroke-width="2"/>
                        </svg>
                        Email Address
                    </label>
                    <input type="email" id="email" name="email" required>
                </div>

                <button type="submit" class="auth-button">Send Reset Link</button>
                
                <div class="success-message" id="successMessage">
                    Reset link sent! Please check your email.
                </div>

                <div class="auth-alt">
                    <span>Remember your password?</span>
                    <a href="#">Sign In</a>
                </div>
            </form>
        </div>
    </main>

    <script>
        document.getElementById('passwordResetForm').addEventListener('submit', function(e) {
            e.preventDefault();
            
            // Show success message
            document.getElementById('successMessage').style.display = 'block';
            
            // Reset form
            this.reset();
            
            // Hide success message after 5 seconds
            setTimeout(() => {
                document.getElementById('successMessage').style.display = 'none';
            }, 5000);
        });
    </script>
</body>
</html>