<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Page</title>
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

        .name-group {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 1rem;
            margin-bottom: 1.5rem;
        }

        .form-options {
            margin: 1.5rem 0;
        }

        .terms {
            display: flex;
            align-items: center;
            gap: 0.5rem;
            color: var(--gray-color);
            font-size: 0.9rem;
        }

        .terms input {
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

        .terms input:checked ~ .checkmark {
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

        .terms input:checked ~ .checkmark:after {
            display: block;
        }

        .terms-link {
            color: var(--primary-color);
            text-decoration: none;
            font-weight: 500;
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

            .name-group {
                grid-template-columns: 1fr;
            }
        }
    </style>
</head>
<body>
    <main class="auth-container">
        <div class="auth-card">
            <div class="auth-header">
                <h1>Create Account</h1>
                <p>Join our community today</p>
            </div>

            <form class="auth-form">
                <div class="name-group">
                    <div class="form-group">
                        <label for="firstname">
                            <svg width="20" height="20" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M12 12C14.2091 12 16 10.2091 16 8C16 5.79086 14.2091 4 12 4C9.79086 4 8 5.79086 8 8C8 10.2091 9.79086 12 12 12Z" stroke="currentColor" stroke-width="2"/>
                                <path d="M20 21V19C20 16.7909 18.2091 15 16 15H8C5.79086 15 4 16.7909 4 19V21" stroke="currentColor" stroke-width="2"/>
                            </svg>
                            First Name
                        </label>
                        <input type="text" id="firstname" name="firstname" required>
                    </div>

                    <div class="form-group">
                        <label for="lastname">
                            <svg width="20" height="20" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M12 12C14.2091 12 16 10.2091 16 8C16 5.79086 14.2091 4 12 4C9.79086 4 8 5.79086 8 8C8 10.2091 9.79086 12 12 12Z" stroke="currentColor" stroke-width="2"/>
                                <path d="M20 21V19C20 16.7909 18.2091 15 16 15H8C5.79086 15 4 16.7909 4 19V21" stroke="currentColor" stroke-width="2"/>
                            </svg>
                            Last Name
                        </label>
                        <input type="text" id="lastname" name="lastname" required>
                    </div>
                </div>

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

                <div class="form-group">
                    <label for="password">
                        <svg width="20" height="20" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M12 15V17M6 21H18C19.1046 21 20 20.1046 20 19V13C20 11.8954 19.1046 11 18 11H6C4.89543 11 4 11.8954 4 13V19C4 20.1046 4.89543 21 6 21Z" stroke="currentColor" stroke-width="2"/>
                            <path d="M16 11V7C16 4.79086 14.2091 3 12 3C9.79086 3 8 4.79086 8 7V11" stroke="currentColor" stroke-width="2"/>
                        </svg>
                        Password
                    </label>
                    <input type="password" id="password" name="password" required>
                    <button type="button" class="toggle-password">Show</button>
                </div>

                <div class="form-group">
                    <label for="phone">
                        <svg width="20" height="20" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M22 16.92V19C22 19.7956 21.6839 20.5587 21.1213 21.1213C20.5587 21.6839 19.7956 22 19 22H17C12.0294 22 8 17.9706 8 13V5C8 4.20435 8.31607 3.44129 8.87868 2.87868C9.44129 2.31607 10.2044 2 11 2H14" stroke="currentColor" stroke-width="2"/>
                            <path d="M22 4L18 4" stroke="currentColor" stroke-width="2" stroke-linecap="round"/>
                            <path d="M19 2L19 6" stroke="currentColor" stroke-width="2" stroke-linecap="round"/>
                        </svg>
                        Phone (Optional)
                    </label>
                    <input type="tel" id="phone" name="phone">
                </div>

                <div class="form-options">
                    <label class="terms">
                        <input type="checkbox" name="terms" required>
                        <span class="checkmark"></span>
                        I agree to the <a href="#" class="terms-link">Terms & Conditions</a>
                    </label>
                </div>

                <button type="submit" class="auth-button">Create Account</button>

                <div class="auth-alt">
                    <span>Already have an account?</span>
                    <a href="{$urls.pages.authentication}">Login In</a>
                </div>
            </form>
        </div>
    </main>

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