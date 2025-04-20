<!DOCTYPE html>
<html lang="{$language.iso_code}">
<head>
  <meta charset="utf-8">
  <title>{l s='Contact Us' d='Shop.Theme'} - {$shop.name}</title>
  <meta name="description" content="{l s='Get in touch with our team' d='Shop.Theme'}">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <style>
    /* Base Styles */
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
    }
    
    /* Header */
    header {
      background: white;
      padding: 1rem 2rem;
      box-shadow: 0 2px 10px rgba(0,0,0,0.1);
      display: flex;
      justify-content: space-between;
      align-items: center;
    }
    
    .logo {
      font-size: 1.5rem;
      font-weight: bold;
      color: #4361ee;
      text-decoration: none;
      display: flex;
      align-items: center;
      gap: 0.5rem;
    }
    
    nav ul {
      display: flex;
      list-style: none;
      gap: 1.5rem;
    }
    
    nav a {
      text-decoration: none;
      color: #333;
      font-weight: 500;
    }
    
    /* Main Content */
    main {
      max-width: 1200px;
      margin: 2rem auto;
      padding: 0 1rem;
    }
    
    .page-header {
      text-align: center;
      margin-bottom: 3rem;
    }
    
    .page-header h1 {
      font-size: 2.5rem;
      color: #4361ee;
      margin-bottom: 1rem;
    }
    
    /* Contact Container */
    .contact-container {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
      gap: 2rem;
    }
    
    /* Contact Info */
    .contact-info {
      background: white;
      padding: 2rem;
      border-radius: 8px;
      box-shadow: 0 2px 15px rgba(0,0,0,0.1);
    }
    
    .contact-info h2 {
      color: #4361ee;
      margin-bottom: 1.5rem;
      font-size: 1.5rem;
    }
    
    .contact-method {
      display: flex;
      gap: 1rem;
      margin-bottom: 1.5rem;
      align-items: flex-start;
    }
    
    .contact-icon {
      width: 40px;
      height: 40px;
      background-color: rgba(67,97,238,0.1);
      border-radius: 50%;
      display: flex;
      align-items: center;
      justify-content: center;
      flex-shrink: 0;
    }
    
    .contact-icon svg {
      width: 20px;
      height: 20px;
      color: #4361ee;
    }
    
    .contact-details h3 {
      font-size: 1.1rem;
      margin-bottom: 0.3rem;
    }
    
    .contact-details p, 
    .contact-details a {
      color: #6c757d;
      text-decoration: none;
    }
    
    .contact-details a:hover {
      color: #4361ee;
    }
    
    /* Contact Form */
    .contact-form {
      background: white;
      padding: 2rem;
      border-radius: 8px;
      box-shadow: 0 2px 15px rgba(0,0,0,0.1);
    }
    
    .contact-form h2 {
      color: #4361ee;
      margin-bottom: 1.5rem;
      font-size: 1.5rem;
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
      padding: 0.8rem 1rem;
      border: 1px solid #ddd;
      border-radius: 4px;
      font-family: inherit;
      font-size: 1rem;
    }
    
    .form-control:focus {
      outline: none;
      border-color: #4361ee;
      box-shadow: 0 0 0 3px rgba(67,97,238,0.2);
    }
    
    textarea.form-control {
      min-height: 150px;
      resize: vertical;
    }
    
    .btn {
      display: inline-block;
      padding: 0.8rem 1.8rem;
      background-color: #4361ee;
      color: white;
      border: none;
      border-radius: 4px;
      text-decoration: none;
      font-weight: 500;
      cursor: pointer;
      font-size: 1rem;
    }
    
    .btn:hover {
      background-color: #3a56d4;
    }
    
    /* Map */
    .map-container {
      margin-top: 3rem;
      border-radius: 8px;
      overflow: hidden;
      box-shadow: 0 2px 15px rgba(0,0,0,0.1);
    }
    
    .map-container iframe {
      width: 100%;
      height: 400px;
      border: none;
    }
    
    /* Footer */
    footer {
      padding: 2rem;
      text-align: center;
      color: #777;
      background-color: white;
      border-top: 1px solid #eee;
      margin-top: 3rem;
    }
    
    /* Responsive */
    @media (max-width: 768px) {
      header {
        flex-direction: column;
        gap: 1rem;
      }
      
      nav ul {
        gap: 1rem;
      }
    }
  </style>
</head>
<body>

<!-- Header -->
<header>
  <div>
    <a href="{$urls.base_url}" class="logo">
      <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
        <path d="M3 11L12 2L21 11V22H14V16H10V22H3V11Z" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
      </svg>
      {$shop.name}
    </a>
  </div>

  <nav>
    <ul>
      <li><a href="{$link->getCategoryLink(3)}">Clothes</a></li>
      <li><a href="{$link->getCategoryLink(4)}">Accessories</a></li>
      <li><a href="{$link->getCategoryLink(5)}">Art</a></li>
      <li><a href="{$link->getPageLink('contact', true)}">Contact</a></li>
    </ul>
  </nav>
</header>

<!-- Main Content -->
<main>
  <div class="page-header">
    <h1>{l s='Contact Us' d='Shop.Theme'}</h1>
    <p>{l s='We\'d love to hear from you' d='Shop.Theme'}</p>
  </div>

  <div class="contact-container">
    <div class="contact-info">
      <h2>{l s='Our Contact Information' d='Shop.Theme'}</h2>
      
      {if $contact_infos.phone}
        <div class="contact-method">
          <div class="contact-icon">
            <svg viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
              <path d="M22 16.92V19C22 19.5304 21.7893 20.0391 21.4142 20.4142C21.0391 20.7893 20.5304 21 20 21H4C3.46957 21 2.96086 20.7893 2.58579 20.4142C2.21071 20.0391 2 19.5304 2 19V16.92M22 16.92C21.6744 15.6184 20.8278 14.4705 19.6389 13.7319C18.45 12.9933 16.9979 12.7198 15.5858 12.9697L14.828 13.1213C13.6745 13.3328 12.4932 13.1707 11.4285 12.6576C10.3638 12.1446 9.47071 11.3064 8.87868 10.2574L8.58579 9.75736C7.84066 8.45472 7.58717 6.92955 7.86863 5.46218C8.15009 3.99481 8.94799 2.68156 10.1213 1.75736L11 1L12.4142 2.41421C12.7893 2.78929 13 3.29799 13 3.82843V6.5C13 7.88071 14.1193 9 15.5 9H17.1716C17.702 9 18.2107 9.21071 18.5858 9.58579L20 11H20.5858C21.4767 11 21.8518 12.0771 21.1844 12.5858L22 16.92Z" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
            </svg>
          </div>
          <div class="contact-details">
            <h3>{l s='Phone' d='Shop.Theme'}</h3>
            <p><a href="tel:{$contact_infos.phone}">{$contact_infos.phone}</a></p>
            {if $contact_infos.fax}
              <p><a href="tel:{$contact_infos.fax}">{$contact_infos.fax} {l s='(Fax)' d='Shop.Theme'}</a></p>
            {/if}
          </div>
        </div>
      {/if}

      {if $contact_infos.email}
        <div class="contact-method">
          <div class="contact-icon">
            <svg viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
              <path d="M4 4H20C21.1 4 22 4.9 22 6V18C22 19.1 21.1 20 20 20H4C2.9 20 2 19.1 2 18V6C2 4.9 2.9 4 4 4Z" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
              <path d="M22 6L12 13L2 6" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
            </svg>
          </div>
          <div class="contact-details">
            <h3>{l s='Email' d='Shop.Theme'}</h3>
            <p><a href="mailto:{$contact_infos.email}">{$contact_infos.email}</a></p>
          </div>
        </div>
      {/if}

      {if $contact_infos.address.formatted}
        <div class="contact-method">
          <div class="contact-icon">
            <svg viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
              <path d="M21 10C21 17 12 23 12 23C12 23 3 17 3 10C3 7.61305 3.94821 5.32387 5.63604 3.63604C7.32387 1.94821 9.61305 1 12 1C14.3869 1 16.6761 1.94821 18.364 3.63604C20.0518 5.32387 21 7.61305 21 10Z" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
              <path d="M12 13C13.6569 13 15 11.6569 15 10C15 8.34315 13.6569 7 12 7C10.3431 7 9 8.34315 9 10C9 11.6569 10.3431 13 12 13Z" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
            </svg>
          </div>
          <div class="contact-details">
            <h3>{l s='Address' d='Shop.Theme'}</h3>
            <address>{$contact_infos.address.formatted nofilter}</address>
          </div>
        </div>
      {/if}
    </div>

    <div class="contact-form">
      <h2>{l s='Send Us a Message' d='Shop.Theme'}</h2>
      
      {if $notifications}
        <div class="alert {if $notifications.nw_error}alert-danger{else}alert-success{/if}">
          {$notifications.success}
          {$notifications.error}
        </div>
      {/if}
      
      <form action="{$urls.pages.contact}" method="post" {if $contact.allow_file_upload}enctype="multipart/form-data"{/if}>
        <div class="form-group">
          <label for="contact-name">{l s='Your name' d='Shop.Forms.Labels'}</label>
          <input type="text" id="contact-name" name="name" class="form-control" value="{if $customer.is_logged}{$customer.firstname} {$customer.lastname}{/if}" required>
        </div>
        
        <div class="form-group">
          <label for="contact-email">{l s='Email address' d='Shop.Forms.Labels'}</label>
          <input type="email" id="contact-email" name="from" class="form-control" value="{if $customer.is_logged}{$customer.email}{/if}" required>
        </div>
        
        <div class="form-group">
          <label for="contact-subject">{l s='Subject' d='Shop.Forms.Labels'}</label>
          <select id="contact-subject" name="id_contact" class="form-control" required>
            <option value="">{l s='-- Please choose --' d='Shop.Forms.Labels'}</option>
            {foreach from=$contact.contacts item=contact_elt}
              <option value="{$contact_elt.id_contact}" {if $id_contact == $contact_elt.id_contact}selected{/if}>{$contact_elt.name}</option>
            {/foreach}
          </select>
        </div>
        
        <div class="form-group">
          <label for="contact-message">{l s='Message' d='Shop.Forms.Labels'}</label>
          <textarea id="contact-message" name="message" class="form-control" required>{if $contact.message}{$contact.message}{/if}</textarea>
        </div>
        
        {if $contact.allow_file_upload}
          <div class="form-group">
            <label for="contact-file">{l s='Attachment' d='Shop.Forms.Labels'}</label>
            <input type="file" id="contact-file" name="fileUpload" class="form-control">
            <small>{l s='Optional' d='Shop.Forms.Labels'} - {l s='Max size:' d='Shop.Forms.Labels'} {$contact.file_upload_size}MB</small>
          </div>
        {/if}
        
        <button type="submit" class="btn" name="submitMessage">
          {l s='Send Message' d='Shop.Theme.Actions'}
        </button>
      </form>
    </div>
  </div>

  {if $contact_infos.latitude && $contact_infos.longitude}
    <div class="map-container">
      <iframe
        width="100%"
        height="400"
        frameborder="0"
        scrolling="no"
        marginheight="0"
        marginwidth="0"
        src="https://maps.google.com/maps?q={$contact_infos.latitude},{$contact_infos.longitude}&z=15&output=embed"
      ></iframe>
    </div>
  {/if}
</main>

<!-- Footer -->
<footer>
  <p>&copy; {date('Y')} {$shop.name}. {l s='All rights reserved' d='Shop.Theme'}.</p>
</footer>

<script>
  document.addEventListener('DOMContentLoaded', function() {
    // Form validation
    const contactForm = document.querySelector('.contact-form form');
    if (contactForm) {
      contactForm.addEventListener('submit', function(e) {
        const name = document.getElementById('contact-name').value.trim();
        const email = document.getElementById('contact-email').value.trim();
        const subject = document.getElementById('contact-subject').value;
        const message = document.getElementById('contact-message').value.trim();
        
        if (!name || !email || !subject || !message) {
          e.preventDefault();
          alert('Please fill in all required fields');
        }
      });
    }
  });
</script>

</body>
</html>