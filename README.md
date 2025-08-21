# 🎬 Film Management System

**A Java Enterprise web application for managing film databases with REST API capabilities**

A comprehensive film management system built with Java, featuring both web interface and RESTful API endpoints for complete CRUD operations on film data. The application includes search functionality, JSON/XML serialization, and a responsive Bootstrap-powered frontend.

## 🌟 Features

### 🎭 Film Management
- **Complete CRUD Operations** - Create, Read, Update, and Delete films
- **Advanced Search** - Search films by ID, title, or view all films
- **Detailed Film Information** - Title, year, director, stars, and reviews
- **Builder Pattern Implementation** - Flexible film object construction

### 🌐 Web Interface
- **Responsive Design** - Bootstrap 5 powered UI with dark theme
- **Dynamic Forms** - Add, update, and delete films through web forms
- **Search Integration** - Real-time search functionality
- **Success/Error Messaging** - User feedback for all operations

### 🔌 REST API
- **RESTful Endpoints** - Complete API for external integrations
- **Multiple Formats** - Support for both JSON and XML responses
- **HTTP Methods** - GET, POST, PUT, DELETE operations
- **Error Handling** - Proper HTTP status codes and error messages

### 💾 Data Management
- **MySQL Database** - Robust data persistence
- **Connection Pooling** - Efficient database connections
- **Singleton Pattern** - Optimized DAO implementation
- **Data Serialization** - JSON and XML support with JAXB

## 🛠️ Built With

- **Backend:**
  - Java Enterprise Edition 
  - Java Servlets & JSP
  - MySQL Database
  - JAXB for XML/JSON serialization
  - Gson for JSON processing

- **Frontend:**
  - HTML5, CSS3, JavaScript
  - Bootstrap 5.3.3
  - Responsive Design
  - Custom CSS animations

- **Architecture:**
  - Model-View-Controller (MVC)
  - Data Access Object (DAO) Pattern
  - Singleton Pattern
  - Builder Pattern
  - RESTful API Design

## 🏗️ Project Structure

```
src/
├── controller/
│   ├── HomeServlet.java          Main page controller
│   ├── InsertServlet.java       Add film functionality
│   ├── UpdateServlet.java        Update film functionality
│   ├── DeleteServlet.java        Delete film functionality
│   ├── SearchServlet.java        Search functionality
│   └── FilmApiController.java    REST API endpoints
├── model/
│   ├── Film.java                Film entity model
│   └── FilmBuilder.java         Builder pattern implementation
├── database/
│   └── FilmDAO.java             Data access layer
├── FilmService/
│   └── FilmService.java         Business logic layer
└── webapp/
    ├── css/
    │   ├── bootstrap.min.css    Bootstrap framework
    │   └── style.css            Custom styles
    └── [JSP pages]             Web interface templates
```

## 🚀 Getting Started

### Prerequisites

- **Java Development Kit (JDK) 11 or higher**
- **Apache Tomcat 9.0+** or similar servlet container
- **MySQL Server 8.0+**
- **Maven** (for dependency management)
- **IDE** (IntelliJ IDEA, Eclipse, or VS Code)

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/rozaghaedi/Film-Management-System.git
   cd Film-Management-System
   ```

2. **Set up the database**
   ```sql
   CREATE DATABASE filmdb;
   USE filmdb;
   
   CREATE TABLE films (
       id INT AUTO_INCREMENT PRIMARY KEY,
       title VARCHAR(255) NOT NULL,
       year INT NOT NULL,
       director VARCHAR(255) NOT NULL,
       stars TEXT,
       review TEXT
   );
   ```

3. **Configure database connection**
   Update the database credentials in `FilmDAO.java`:
   ```java
   private String user = "your_username";
   private String password = "your_password";
   private String url = "jdbc:mysql://localhost:3306/filmdb";
   ```

4. **Deploy to Tomcat**
   - Build the WAR file using your IDE or Maven
   - Deploy to Tomcat webapps directory
   - Start Tomcat server

5. **Access the application**
   - **Web Interface:** `http://localhost:8080/CloudEE/home`
   - **API Base URL:** `http://localhost:8080/CloudEE/api/films`

## 📚 API Usage

### REST Endpoints

| Method | Endpoint | Description | Example |
|--------|----------|-------------|---------|
| GET | `/api/films` | Get all films | `GET /api/films` |
| GET | `/api/films?id=1` | Get film by ID | `GET /api/films?id=1` |
| GET | `/api/films?title=inception` | Search by title | `GET /api/films?title=inception` |
| POST | `/api/films` | Create new film | `POST /api/films` |
| PUT | `/api/films` | Update existing film | `PUT /api/films` |
| DELETE | `/api/films?id=1` | Delete film by ID | `DELETE /api/films?id=1` |

### Request/Response Examples

**Create Film (POST):**
```json
{
    "title": "The Matrix",
    "year": 1999,
    "director": "The Wachowskis",
    "stars": "Keanu Reeves, Laurence Fishburne",
    "review": "A mind-bending sci-fi masterpiece"
}
```

**Response (JSON):**
```json
{
    "id": 1,
    "title": "The Matrix",
    "year": 1999,
    "director": "The Wachowskis",
    "stars": "Keanu Reeves, Laurence Fishburne",
    "review": "A mind-bending sci-fi masterpiece"
}
```

### Content Types Supported
- `application/json` - JSON format
- `application/xml` - XML format

## 🎨 Web Interface

### Main Features
- **Film Listing** - View all films in a responsive table
- **Search & Filter** - Real-time search functionality
- **Add Film** - User-friendly form for adding new films
- **Edit Film** - In-place editing with pre-populated forms
- **Delete Confirmation** - Safe deletion with confirmation dialogs

### UI Components
- **Dark Theme** - Modern dark background with white text
- **Responsive Design** - Works on desktop, tablet, and mobile
- **Bootstrap Integration** - Professional styling and components
- **Custom Animations** - Smooth transitions and hover effects

## 🔧 Configuration

### Database Settings
- **Host:** `localhost:3306`
- **Database:** `filmdb`
- **Connection Pool:** Managed by application server

### Server Settings
- **Default Port:** 8080
- **Context Path:** `/CloudEE`
- **Session Timeout:** 30 minutes

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

### Development Guidelines:
- Follow Java naming conventions
- Add comprehensive JavaDoc comments
- Implement proper error handling
- Write unit tests for new features
- Update API documentation

## 🛡️ Error Handling

The application includes comprehensive error handling:
- **400 Bad Request** - Invalid input parameters
- **404 Not Found** - Film not found
- **500 Internal Server Error** - Server-side errors
- **Validation** - Input validation on both client and server side


## 🚀 Future Enhancements

- **User Authentication** - Role-based access control
- **Image Upload** - Film poster management
- **Rating System** - User ratings and reviews
- **Advanced Search** - Filters by genre, year range, director
- **Export Features** - PDF and Excel export functionality
- **Caching** - Redis integration for better performance
- **Docker Support** - Containerized deployment
- **API Documentation** - Swagger/OpenAPI integration

