<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>People Link - Social Media Platform</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        
        body {
            background-color: #f0f2f5;
            color: #1c1e21;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }
        
        .container {
            display: flex;
            flex: 1;
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
            gap: 20px;
        }
        
        /* Header Styles */
        header {
            background-color: #ffffff;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            padding: 10px 20px;
            position: sticky;
            top: 0;
            z-index: 100;
        }
        
        .header-content {
            display: flex;
            justify-content: space-between;
            align-items: center;
            max-width: 1200px;
            margin: 0 auto;
        }
        
        .logo {
            display: flex;
            align-items: center;
            gap: 10px;
            font-size: 24px;
            font-weight: 700;
            color: #1877f2;
        }
        
        .logo i {
            font-size: 28px;
        }
        
        .search-bar {
            flex: 1;
            max-width: 500px;
            margin: 0 20px;
        }
        
        .search-bar input {
            width: 100%;
            padding: 10px 15px;
            border-radius: 20px;
            border: 1px solid #dddfe2;
            background-color: #f0f2f5;
            font-size: 14px;
        }
        
        .nav-icons {
            display: flex;
            gap: 15px;
        }
        
        .nav-icons i {
            font-size: 20px;
            color: #65676b;
            cursor: pointer;
            padding: 8px;
            border-radius: 50%;
        }
        
        .nav-icons i:hover {
            background-color: #f0f2f5;
        }
        
        .user-profile {
            display: flex;
            align-items: center;
            gap: 10px;
            cursor: pointer;
        }
        
        .user-avatar {
            width: 36px;
            height: 36px;
            border-radius: 50%;
            background-color: #1877f2;
            color: white;
            display: flex;
            align-items: center;
            justify-content: center;
            font-weight: bold;
        }
        
        /* Sidebar Styles */
        .sidebar {
            width: 25%;
            display: flex;
            flex-direction: column;
            gap: 15px;
        }
        
        .profile-card, .watch-card, .suggestions-card {
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 1px 2px rgba(0, 0, 0, 0.1);
            padding: 15px;
        }
        
        .profile-header {
            display: flex;
            align-items: center;
            gap: 10px;
            margin-bottom: 15px;
        }
        
        .profile-avatar {
            width: 60px;
            height: 60px;
            border-radius: 50%;
            background-color: #1877f2;
            color: white;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 24px;
            font-weight: bold;
        }
        
        .profile-info h3 {
            font-size: 16px;
            margin-bottom: 5px;
        }
        
        .badge {
            background-color: #ffd700;
            color: #333;
            font-size: 12px;
            padding: 2px 8px;
            border-radius: 10px;
            font-weight: bold;
        }
        
        .quick-actions {
            display: flex;
            flex-direction: column;
            gap: 10px;
        }
        
        .action-item {
            display: flex;
            align-items: center;
            gap: 10px;
            padding: 8px;
            border-radius: 5px;
            cursor: pointer;
        }
        
        .action-item:hover {
            background-color: #f0f2f5;
        }
        
        .action-item i {
            width: 20px;
            text-align: center;
            color: #1877f2;
        }
        
        hr {
            border: none;
            border-top: 1px solid #dddfe2;
            margin: 15px 0;
        }
        
        .watch-header {
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin-bottom: 10px;
        }
        
        .watch-header h3 {
            font-size: 16px;
        }
        
        .watch-badge {
            background-color: #e41e3f;
            color: white;
            font-size: 10px;
            padding: 2px 6px;
            border-radius: 10px;
            font-weight: bold;
        }
        
        .suggestion-item {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 10px 0;
        }
        
        .suggestion-info {
            display: flex;
            align-items: center;
            gap: 10px;
        }
        
        .suggestion-avatar {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            background-color: #42b883;
            color: white;
            display: flex;
            align-items: center;
            justify-content: center;
            font-weight: bold;
        }
        
        .suggestion-details h4 {
            font-size: 14px;
            margin-bottom: 3px;
        }
        
        .suggestion-details p {
            font-size: 12px;
            color: #65676b;
        }
        
        .add-btn {
            background-color: #1877f2;
            color: white;
            border: none;
            padding: 6px 12px;
            border-radius: 5px;
            font-size: 12px;
            cursor: pointer;
        }
        
        .add-btn:hover {
            background-color: #166fe5;
        }
        
        .encrypted {
            font-size: 12px;
            color: #65676b;
            text-align: center;
            margin-top: 10px;
        }
        
        /* Main Content Styles */
        .main-content {
            flex: 1;
            display: flex;
            flex-direction: column;
            gap: 15px;
        }
        
        .post-card {
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 1px 2px rgba(0, 0, 0, 0.1);
            padding: 15px;
        }
        
        .post-header {
            display: flex;
            align-items: center;
            gap: 10px;
            margin-bottom: 15px;
        }
        
        .post-avatar {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            background-color: #e41e3f;
            color: white;
            display: flex;
            align-items: center;
            justify-content: center;
            font-weight: bold;
        }
        
        .post-info h4 {
            font-size: 15px;
            margin-bottom: 3px;
        }
        
        .post-info p {
            font-size: 12px;
            color: #65676b;
        }
        
        .post-content {
            margin-bottom: 15px;
            line-height: 1.5;
        }
        
        .hashtags {
            color: #1877f2;
            margin-top: 5px;
        }
        
        .post-actions {
            display: flex;
            justify-content: space-around;
            border-top: 1px solid #dddfe2;
            border-bottom: 1px solid #dddfe2;
            padding: 10px 0;
            margin-bottom: 10px;
        }
        
        .post-action {
            display: flex;
            align-items: center;
            gap: 5px;
            cursor: pointer;
            padding: 5px 15px;
            border-radius: 5px;
        }
        
        .post-action:hover {
            background-color: #f0f2f5;
        }
        
        /* Login Modal */
        .modal {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5);
            z-index: 1000;
            justify-content: center;
            align-items: center;
        }
        
        .modal-content {
            background-color: white;
            border-radius: 8px;
            width: 400px;
            max-width: 90%;
            padding: 20px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.2);
        }
        
        .modal-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
        }
        
        .modal-header h2 {
            color: #1877f2;
        }
        
        .close-btn {
            background: none;
            border: none;
            font-size: 24px;
            cursor: pointer;
            color: #65676b;
        }
        
        .form-group {
            margin-bottom: 15px;
        }
        
        .form-group label {
            display: block;
            margin-bottom: 5px;
            font-weight: 500;
        }
        
        .form-group input {
            width: 100%;
            padding: 10px;
            border: 1px solid #dddfe2;
            border-radius: 5px;
            font-size: 14px;
        }
        
        .login-btn {
            width: 100%;
            padding: 10px;
            background-color: #1877f2;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
            margin-bottom: 15px;
        }
        
        .login-btn:hover {
            background-color: #166fe5;
        }
        
        .forgot-password {
            text-align: center;
            color: #1877f2;
            font-size: 14px;
            cursor: pointer;
            margin-bottom: 15px;
        }
        
        .create-account {
            text-align: center;
            padding-top: 15px;
            border-top: 1px solid #dddfe2;
        }
        
        .create-btn {
            background-color: #42b883;
            color: white;
            border: none;
            padding: 10px 15px;
            border-radius: 5px;
            font-weight: bold;
            cursor: pointer;
        }
        
        /* Profile Creation */
        .profile-creation {
            display: none;
            margin-top: 20px;
        }
        
        .profile-preview {
            display: flex;
            flex-direction: column;
            align-items: center;
            gap: 10px;
            margin-bottom: 20px;
        }
        
        .preview-avatar {
            width: 100px;
            height: 100px;
            border-radius: 50%;
            background-color: #1877f2;
            color: white;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 36px;
            font-weight: bold;
        }
        
        .avatar-options {
            display: flex;
            gap: 10px;
            margin-bottom: 15px;
        }
        
        .avatar-option {
            width: 50px;
            height: 50px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            font-weight: bold;
            color: white;
            cursor: pointer;
        }
        
        .avatar-option:hover {
            opacity: 0.8;
        }
        
        /* Responsive Design */
        @media (max-width: 768px) {
            .container {
                flex-direction: column;
            }
            
            .sidebar {
                width: 100%;
            }
            
            .search-bar {
                display: none;
            }
        }
    </style>
</head>
<body>
    <!-- Header -->
    <header>
        <div class="header-content">
            <div class="logo">
                <i class="fas fa-users"></i>
                <span>People Link</span>
            </div>
            
            <div class="search-bar">
                <input type="text" placeholder="Search People Link">
            </div>
            
            <div class="nav-icons">
                <i class="fas fa-home"></i>
                <i class="fas fa-user-friends"></i>
                <i class="fas fa-play-circle"></i>
                <i class="fas fa-store"></i>
                <i class="fas fa-bell"></i>
                <i class="fas fa-bars"></i>
            </div>
            
            <div class="user-profile" id="userProfile">
                <div class="user-avatar" id="userAvatar">J</div>
                <span id="userName">John Doe</span>
            </div>
        </div>
    </header>
    
    <!-- Main Content -->
    <div class="container">
        <!-- Sidebar -->
        <div class="sidebar">
            <div class="profile-card">
                <div class="profile-header">
                    <div class="profile-avatar" id="mainProfileAvatar">J</div>
                    <div class="profile-info">
                        <h3 id="mainProfileName">John Doe</h3>
                        <div class="badge">Premium Member</div>
                    </div>
                </div>
                
                <div class="quick-actions">
                    <div class="action-item" id="friendsBtn">
                        <i class="fas fa-user-friends"></i>
                        <span>Friends</span>
                    </div>
                    <div class="action-item" id="storiesBtn">
                        <i class="fas fa-history"></i>
                        <span>Stories</span>
                    </div>
                    <div class="action-item" id="reelsBtn">
                        <i class="fas fa-play-circle"></i>
                        <span>Reels</span>
                    </div>
                </div>
            </div>
            
            <div class="watch-card">
                <div class="watch-header">
                    <h3>Luxury Watch Collection</h3>
                    <div class="watch-badge">Premium</div>
                </div>
                <p>Exclusive timepieces for our premium members.</p>
            </div>
            
            <div class="suggestions-card">
                <h3>People You May Know</h3>
                
                <div class="suggestion-item">
                    <div class="suggestion-info">
                        <div class="suggestion-avatar">A</div>
                        <div class="suggestion-details">
                            <h4>Alex Thompson</h4>
                            <p>12 mutual friends</p>
                        </div>
                    </div>
                    <button class="add-btn">Add</button>
                </div>
                
                <div class="suggestion-item">
                    <div class="suggestion-info">
                        <div class="suggestion-avatar">E</div>
                        <div class="suggestion-details">
                            <h4>Emma Wilson</h4>
                            <p>8 mutual friends</p>
                        </div>
                    </div>
                    <button class="add-btn">Add</button>
                </div>
                
                <div class="encrypted">
                    <i class="fas fa-lock"></i> End-to-End Encrypted
                </div>
            </div>
        </div>
        
        <!-- Main Content -->
        <div class="main-content">
            <div class="post-card">
                <div class="post-header">
                    <div class="post-avatar">S</div>
                    <div class="post-info">
                        <h4>Sarah Johnson</h4>
                        <p>2 hrs ago</p>
                    </div>
                </div>
                
                <div class="post-content">
                    Just launched my new startup! 🌟 So excited to share this journey with all of you. The future of social media is here with People Link! 
                    <div class="hashtags">#NewBeginnings #StartupLife #TechInnovation</div>
                </div>
                
                <div class="post-actions">
                    <div class="post-action">
                        <i class="far fa-thumbs-up"></i>
                        <span>Like</span>
                    </div>
                    <div class="post-action">
                        <i class="far fa-comment"></i>
                        <span>Comment</span>
                    </div>
                    <div class="post-action">
                        <i class="far fa-share-square"></i>
                        <span>Share</span>
                    </div>
                </div>
            </div>
            
            <!-- Additional posts would go here -->
        </div>
    </div>
    
    <!-- Login Modal -->
    <div class="modal" id="loginModal">
        <div class="modal-content">
            <div class="modal-header">
                <h2>Log in to People Link</h2>
                <button class="close-btn" id="closeModal">&times;</button>
            </div>
            
            <div class="form-group">
                <label for="email">Email or Phone</label>
                <input type="text" id="email" placeholder="Enter your email or phone">
            </div>
            
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" id="password" placeholder="Enter your password">
            </div>
            
            <button class="login-btn" id="loginBtn">Log In</button>
            
            <div class="forgot-password">Forgotten password?</div>
            
            <div class="create-account">
                <button class="create-btn" id="createAccountBtn">Create New Account</button>
            </div>
            
            <!-- Profile Creation Section -->
            <div class="profile-creation" id="profileCreation">
                <h3>Create Your Profile</h3>
                
                <div class="profile-preview">
                    <div class="preview-avatar" id="previewAvatar">U</div>
                    <span id="previewName">User</span>
                </div>
                
                <div class="form-group">
                    <label for="fullName">Full Name</label>
                    <input type="text" id="fullName" placeholder="Enter your full name">
                </div>
                
                <div class="form-group">
                    <label>Choose Avatar Color</label>
                    <div class="avatar-options">
                        <div class="avatar-option" style="background-color: #1877f2;" data-color="#1877f2">U</div>
                        <div class="avatar-option" style="background-color: #e41e3f;" data-color="#e41e3f">U</div>
                        <div class="avatar-option" style="background-color: #42b883;" data-color="#42b883">U</div>
                        <div class="avatar-option" style="background-color: #f39c12;" data-color="#f39c12">U</div>
                    </div>
                </div>
                
                <button class="login-btn" id="saveProfileBtn">Save Profile</button>
            </div>
        </div>
    </div>
    
    <script>
        // DOM Elements
        const loginModal = document.getElementById('loginModal');
        const closeModal = document.getElementById('closeModal');
        const loginBtn = document.getElementById('loginBtn');
        const createAccountBtn = document.getElementById('createAccountBtn');
        const profileCreation = document.getElementById('profileCreation');
        const saveProfileBtn = document.getElementById('saveProfileBtn');
        const userProfile = document.getElementById('userProfile');
        const userAvatar = document.getElementById('userAvatar');
        const userName = document.getElementById('userName');
        const mainProfileAvatar = document.getElementById('mainProfileAvatar');
        const mainProfileName = document.getElementById('mainProfileName');
        const previewAvatar = document.getElementById('previewAvatar');
        const previewName = document.getElementById('previewName');
        const fullName = document.getElementById('fullName');
        const avatarOptions = document.querySelectorAll('.avatar-option');
        const friendsBtn = document.getElementById('friendsBtn');
        const storiesBtn = document.getElementById('storiesBtn');
        const reelsBtn = document.getElementById('reelsBtn');
        
        // Show login modal on page load
        window.onload = function() {
            loginModal.style.display = 'flex';
        }
        
        // Close modal
        closeModal.addEventListener('click', function() {
            loginModal.style.display = 'none';
        });
        
        // Login functionality
        loginBtn.addEventListener('click', function() {
            const email = document.getElementById('email').value;
            const password = document.getElementById('password').value;
            
            if(email && password) {
                // In a real app, you would validate credentials here
                loginModal.style.display = 'none';
                alert('Login successful!');
            } else {
                alert('Please enter both email and password.');
            }
        });
        
        // Show profile creation
        createAccountBtn.addEventListener('click', function() {
            profileCreation.style.display = 'block';
        });
        
        // Update preview avatar and name
        fullName.addEventListener('input', function() {
            const name = fullName.value.trim();
            if(name) {
                previewName.textContent = name;
                previewAvatar.textContent = name.charAt(0).toUpperCase();
            } else {
                previewName.textContent = 'User';
                previewAvatar.textContent = 'U';
            }
        });
        
        // Change avatar color
        avatarOptions.forEach(option => {
            option.addEventListener('click', function() {
                const color = this.getAttribute('data-color');
                previewAvatar.style.backgroundColor = color;
            });
        });
        
        // Save profile
        saveProfileBtn.addEventListener('click', function() {
            const name = fullName.value.trim();
            const avatarColor = previewAvatar.style.backgroundColor;
            const avatarText = previewAvatar.textContent;
            
            if(name) {
                // Update user profile
                userName.textContent = name;
                userAvatar.textContent = avatarText;
                userAvatar.style.backgroundColor = avatarColor;
                
                // Update main profile
                mainProfileName.textContent = name;
                mainProfileAvatar.textContent = avatarText;
                mainProfileAvatar.style.backgroundColor = avatarColor;
                
                // Hide modal
                loginModal.style.display = 'none';
                profileCreation.style.display = 'none';
                
                alert('Profile created successfully!');
            } else {
                alert('Please enter your full name.');
            }
        });
        
        // Quick actions functionality
        friendsBtn.addEventListener('click', function() {
            alert('Friends feature opened!');
        });
        
        storiesBtn.addEventListener('click', function() {
            alert('Stories feature opened!');
        });
        
        reelsBtn.addEventListener('click', function() {
            alert('Reels feature opened!');
        });
        
        // User profile click
        userProfile.addEventListener('click', function() {
            alert('Profile menu opened!');
        });
    </script>
</body>
</html>
