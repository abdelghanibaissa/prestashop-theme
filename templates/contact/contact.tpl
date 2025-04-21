<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us</title>
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

        .contact-container {
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 2rem;
            background: linear-gradient(135deg, var(--accent-color) 0%, #ffffff 100%);
        }

        .contact-card {
            background: white;
            padding: 2.5rem;
            border-radius: 1rem;
            box-shadow: 0 10px 30px rgba(0,0,0,0.1);
            width: 100%;
            max-width: 800px;
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 2rem;
        }

        .contact-header {
            grid-column: 1 / -1;
            text-align: center;
            margin-bottom: 1.5rem;
        }

        .contact-header h1 {
            font-size: 2rem;
            color: var(--primary-color);
            margin-bottom: 0.5rem;
        }

        .contact-header p {
            color: var(--gray-color);
        }

        .contact-form .form-group {
            margin-bottom: 1.5rem;
            position: relative;
        }

        .contact-form label {
            display: flex;
            align-items: center;
            gap: 0.5rem;
            margin-bottom: 0.5rem;
            color: var(--text-color);
            font-weight: 500;
        }

        .contact-form input,
        .contact-form textarea {
            width: 100%;
            padding: 0.8rem 1rem;
            border: 2px solid #e0e0e0;
            border-radius: 0.5rem;
            font-size: 1rem;
            transition: border-color 0.3s ease;
        }

        .contact-form textarea {
            height: 120px;
            resize: vertical;
        }

        .contact-form input:focus,
        .contact-form textarea:focus {
            outline: none;
            border-color: var(--primary-color);
        }

        .contact-info {
            background: var(--accent-color);
            padding: 1.5rem;
            border-radius: 0.5rem;
        }

        .info-item {
            margin-bottom: 1.5rem;
        }

        .info-item h3 {
            color: var(--primary-color);
            margin-bottom: 0.5rem;
            display: flex;
            align-items: center;
            gap: 0.5rem;
        }

        .info-item p {
            color: var(--text-color);
            line-height: 1.6;
        }

        .map-container {
            grid-column: 1 / -1;
            height: 300px;
            border-radius: 0.5rem;
            overflow: hidden;
            margin-top: 1rem;
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

        @media (max-width: 768px) {
            .contact-card {
                grid-template-columns: 1fr;
                padding: 1.5rem;
            }
            
            .map-container {
                height: 200px;
            }
        }
    </style>
</head>
<body>
    <main class="contact-container">
        <div class="contact-card">
            <div class="contact-header">
                <h1>Contact Us</h1>
                <p>We'd love to hear from you!</p>
            </div>

            <form class="contact-form">
                <div class="form-group">
                    <label for="name">
                        <svg width="20" height="20" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M12 12C14.2091 12 16 10.2091 16 8C16 5.79086 14.2091 4 12 4C9.79086 4 8 5.79086 8 8C8 10.2091 9.79086 12 12 12Z" stroke="currentColor" stroke-width="2"/>
                            <path d="M20 21V19C20 16.7909 18.2091 15 16 15H8C5.79086 15 4 16.7909 4 19V21" stroke="currentColor" stroke-width="2"/>
                        </svg>
                        Your Name
                    </label>
                    <input type="text" id="name" required>
                </div>

                <div class="form-group">
                    <label for="email">
                        <svg width="20" height="20" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M4 4H20C21.1 4 22 4.9 22 6V18C22 19.1 21.1 20 20 20H4C2.9 20 2 19.1 2 18V6C2 4.9 2.9 4 4 4Z" stroke="currentColor" stroke-width="2"/>
                            <path d="M22 6L12 13L2 6" stroke="currentColor" stroke-width="2"/>
                        </svg>
                        Email Address
                    </label>
                    <input type="email" id="email" required>
                </div>

                <div class="form-group">
                    <label for="subject">
                        <svg width="20" height="20" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M12 2L2 7L12 12L22 7L12 2Z" stroke="currentColor" stroke-width="2"/>
                            <path d="M2 17L12 22L22 17" stroke="currentColor" stroke-width="2"/>
                            <path d="M2 12L12 17L22 12" stroke="currentColor" stroke-width="2"/>
                        </svg>
                        Subject
                    </label>
                    <input type="text" id="subject" required>
                </div>

                <div class="form-group">
                    <label for="message">
                        <svg width="20" height="20" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M21 15C21 15.5304 20.7893 16.0391 20.4142 16.4142C20.0391 16.7893 19.5304 17 19 17H7L3 21V5C3 4.46957 3.21071 3.96086 3.58579 3.58579C3.96086 3.21071 4.46957 3 5 3H19C19.5304 3 20.0391 3.21071 20.4142 3.58579C20.7893 3.96086 21 4.46957 21 5V15Z" stroke="currentColor" stroke-width="2"/>
                        </svg>
                        Message
                    </label>
                    <textarea id="message" required></textarea>
                </div>

                <button type="submit" class="auth-button">Send Message</button>
            </form>

            <div class="contact-info">
                <div class="info-item">
                    <h3>
                        <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M12 2C8.13 2 5 5.13 5 9C5 14.25 12 22 12 22C12 22 19 14.25 19 9C19 5.13 15.87 2 12 2Z" stroke="currentColor" stroke-width="2"/>
                            <path d="M12 12C13.1046 12 14 11.1046 14 10C14 8.89543 13.1046 8 12 8C10.8954 8 10 8.89543 10 10C10 11.1046 10.8954 12 12 12Z" fill="currentColor"/>
                        </svg>
                        Visit Us
                    </h3>
                    <p>123 Business Street<br>New York, NY 10001<br>United States</p>
                </div>

                <div class="info-item">
                    <h3>
                        <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M22 16.92V19C22 19.7956 21.6839 20.5587 21.1213 21.1213C20.5587 21.6839 19.7956 22 19 22H17C12.0294 22 8 17.9706 8 13V5C8 4.20435 8.31607 3.44129 8.87868 2.87868C9.44129 2.31607 10.2044 2 11 2H14" stroke="currentColor" stroke-width="2"/>
                            <path d="M22 4L18 4" stroke="currentColor" stroke-width="2" stroke-linecap="round"/>
                            <path d="M19 2L19 6" stroke="currentColor" stroke-width="2" stroke-linecap="round"/>
                        </svg>
                        Call Us
                    </h3>
                    <p>+1 (555) 123-4567<br>Mon-Fri: 9am - 5pm EST</p>
                </div>

                <div class="info-item">
                    <h3>
                        <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M4 4H20C21.1 4 22 4.9 22 6V18C22 19.1 21.1 20 20 20H4C2.9 20 2 19.1 2 18V6C2 4.9 2.9 4 4 4Z" stroke="currentColor" stroke-width="2"/>
                            <path d="M22 6L12 13L2 6" stroke="currentColor" stroke-width="2"/>
                        </svg>
                        Email Us
                    </h3>
                    <p>support@company.com<br>sales@company.com</p>
                </div>
            </div>

            <div class="map-container">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3022.6175392590714!2d-73.9878530845939!3d40.748440479327756!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c259a9b3117469%3A0xd134e199a405a163!2sEmpire%20State%20Building!5e0!3m2!1sen!2sus!4v1623256789015!5m2!1sen!2sus" 
                        width="100%" 
                        height="100%" 
                        style="border:0;" 
                        allowfullscreen="" 
                        loading="lazy">
                </iframe>
            </div>
        </div>
    </main>

    <script>
        // Add form submission handling
        document.querySelector('.contact-form').addEventListener('submit', function(e) {
            e.preventDefault();
            
            // Add your form submission logic here
            alert('Thank you for your message! We will get back to you soon.');
            this.reset();
        });
    </script>
</body>
</html>