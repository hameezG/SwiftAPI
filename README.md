# File Management System (FMC)

## Project Overview
The File Management System (FMC) is a web-based application that allows users to upload, manage, and organize their files efficiently. It provides user authentication, file categorization, and API-based file handling.

## Team Members
- **FA22-BSE-038** - Hameez Ahmad
- **FA22-BSE-012** - Hasan Asif
- **FA22-BSE-061** - Muhammad Zeeshan Saleem

## Features
- User authentication with API key (API in terms of access key)
- File uploading and downloading
- File organization (mark as important, delete, etc.)
- Secure password handling with hashing
- JSON-based API responses
- Admin controls for user management

## Technologies Used
- **Backend:** PHP (with PDO for database operations)
- **Database:** MySQL
- **Frontend:** HTML, CSS, JavaScript
- **Server:** XAMPP


## Installation & Setup
1. Install **XAMPP** and start Apache & MySQL.
2. Clone this repository into your **htdocs** folder:
   ```sh
   git clone https://github.com/your-repo/fmc.git
   ```

3. Update **config.json** (if necessary) with your database credentials:
   ```json
   {
       "usr": "root",
       "pwd": "",
       "baseurl": "http://localhost/fmc/index.php",
       "url": "http://localhost/fmc/src/uploads/",
       "path": "C:/xampp/htdocs/fmc/src/uploads/",
       "thumbnailsUrl": "http://localhost/fmc/src/thumbnails/",
       "thumbnailsPath": "C:/xampp/htdocs/fmc/src/thumbnails/",
       "thumbnailSize": [500, 450],
       "newAccountMaxSize": 104857600,
       "allowNewAccounts": true
   }
   ```
4. Start the application:
   - Open a browser and go to: `http://localhost/fmc`

## API Endpoints
| Method | Endpoint                  | Description             |
|--------|---------------------------|-------------------------|
| POST   | `/src/post/login.php`      | User login             |
| POST   | `/src/post/newacc.php`     | Create new account     |
| POST   | `/src/api/upload.php`      | Upload a file          |
| POST   | `/src/post/getUploads.php` | Fetch user uploads     |
| POST   | `/src/post/resetKey.php`   | Reset API key          |
| POST   | `/src/post/makeImportant.php` | Mark file as important |

## Usage Example (cURL)
To upload a file using cURL:
```sh
curl -X POST http://localhost/fmc/src/api/upload.php \
     -F "key=YOUR_API_KEY" \
     -F "file=@C:/path/to/your/file.txt"
```

## Security Measures
- **Password Hashing:** Uses `password_hash()` for secure password storage.
- **API Key Authentication:** Every user gets a unique API key for authentication.
- **Database Security:** Uses **prepared statements** to prevent SQL injection.

## Contributors
- **FA22-BSE-038**
- **FA22-BSE-012**
- **FA22-BSE-061**














