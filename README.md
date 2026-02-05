# KP.Database

A comprehensive SQL Server database project for a knowledge platform and content management system.

## 📋 Project Overview

KP.Database is a SQL Server Database Project (.sqlproj) that provides the data layer for a knowledge platform application. The database supports blogging functionality, website administration, user management, and content tracking systems.

## 🏗️ Database Architecture

The database is organized into three main schemas:

### Schemas

1. **`dbo`** - Core system and user management tables
2. **`blog`** - Blog and content management tables  
3. **`admin`** - Administrative and configuration tables

## 📊 Database Schema Details

### DBO Schema (`dbo`)
Core application tables for user management and system functionality:

| Table | Description |
|-------|-------------|
| `Account` | User account information with account types and owner relationships |
| `Owner` | Owner/user entity records |
| `Administrators` | Administrative user permissions |
| `Role` | User role definitions |
| `FeedStatistics` | RSS/Feed tracking and statistics |
| `SiteDownloads` | Download tracking and metrics |

### Blog Schema (`blog`)
Complete blogging platform with content management:

| Table | Description |
|-------|-------------|
| `BlogEntries` | Main blog post entries with metadata |
| `BlogEntryComments` | Comments system for blog posts |
| `BlogEntryFiles` | File attachments for blog entries |
| `BlogEntryPingbacks` | Pingback/trackback functionality |
| `Comments` | General commenting system |
| `Posts` | Additional post content structure |
| `PostsTags` | Many-to-many relationship between posts and tags |
| `Tags` | Tag/category system |
| `Images` | Image management for blog content |

### Admin Schema (`admin`)
Administrative and configuration tables:

| Table | Description |
|-------|-------------|
| `WebSites` | Website configuration and management |
| `WebScraping` | Web scraping configuration and data |

## 🔧 Technical Specifications

- **Database Engine**: SQL Server
- **Compatibility Level**: 110 (SQL Server 2012)
- **Collation**: SQL_Latin1_General_CP1_CI_AS
- **Project Type**: SQL Server Database Project (.sqlproj)
- **Target Framework**: .NET Framework 4.5

### Key Features

- **Full-text Search**: Enabled for content searching
- **Recovery Model**: Full recovery mode
- **Auto Statistics**: Enabled for optimal query performance
- **Database Chaining**: Disabled for security
- **Parameterization**: Simple mode
- **Page Verification**: CHECKSUM for data integrity

## 🚀 Getting Started

### Prerequisites

- Visual Studio with SQL Server Data Tools (SSDT)
- SQL Server 2012 or later
- .NET Framework 4.5 or later

### Building the Database

1. **Open the Solution**
   ```
   Open KP.Database.sln in Visual Studio
   ```

2. **Build the Project**
   - Right-click on the KP.Database project
   - Select "Build" to compile the database schema

3. **Deploy the Database**
   - Right-click on the KP.Database project  
   - Select "Publish" to deploy to your SQL Server instance
   - Configure the target database connection

### Post-Deployment Data

The project includes post-deployment scripts that populate initial data:

- **Website Data**: Pre-configured websites in the `admin.WebSites` table
  - SecurityWing.com
  - asp.net-informations.com
  - aspinsiders.net
  - benfoster.io
  - And many more...

## 📁 Project Structure

```
KP.Database/
├── KP.Database.sln                 # Visual Studio solution file
└── KP.Database/
    ├── KP.Database.sqlproj         # SQL Server database project file
    ├── KP.Database.refactorlog     # Refactoring history log
    ├── admin/                      # Admin schema objects
    │   ├── admin.sql              # Schema definition
    │   ├── Tables/
    │   │   ├── WebSites.sql       # Website configuration table
    │   │   └── WebScraping.sql    # Web scraping configuration
    │   └── Data/
    │       └── WebSite.Data.sql   # Post-deployment data script
    ├── blog/                       # Blog schema objects
    │   ├── blog.sql               # Schema definition
    │   └── Tables/
    │       ├── BlogEntries.sql    # Main blog entries
    │       ├── BlogEntryComments.sql
    │       ├── BlogEntryFiles.sql
    │       ├── BlogEntryPingbacks.sql
    │       ├── Comments.sql
    │       ├── Images.sql
    │       ├── Posts.sql
    │       ├── PostsTags.sql
    │       └── Tags.sql
    └── dbo/                        # Default schema objects  
        └── Tables/
            ├── Account.sql         # User accounts
            ├── Administrators.sql  # Admin users
            ├── FeedStatistics.sql  # Feed metrics
            ├── Owner.sql          # User owners
            ├── Role.sql           # User roles
            └── SiteDownloads.sql  # Download tracking
```

## 🔐 Security Model

The database implements a multi-level security approach:

- **Schema-based separation**: Different functional areas isolated by schemas
- **Role-based access**: Administrator and user role management
- **Account management**: Comprehensive user account system with owner relationships
- **Referential integrity**: Foreign key constraints maintain data consistency

## 📈 Key Relationships

### Core Relationships
- `Account` → `Owner` (Many-to-One via OwnerId foreign key)
- `Posts` → `PostsTags` → `Tags` (Many-to-Many through junction table)
- `BlogEntries` supports related entities:
  - Comments (`BlogEntryComments`)
  - File attachments (`BlogEntryFiles`)
  - Pingbacks (`BlogEntryPingbacks`)

## 🔍 Notable Features

### Blog System
- **Rich Content Support**: NTEXT fields for extensive content
- **SEO Friendly**: URL-friendly header fields
- **Visitor Tracking**: Built-in visit counting
- **Publication Control**: Visibility and publish date management
- **Audit Trail**: Created and modified timestamp tracking

### Administrative Features
- **Website Management**: Centralized website configuration
- **Download Tracking**: Monitor file downloads and site usage
- **Feed Statistics**: RSS/Atom feed performance metrics
- **Web Scraping Support**: Configuration for automated content gathering

## 🛠️ Development Notes

### Build Configuration
- **Debug**: Full symbols and debugging information
- **Release**: Optimized for production deployment
- **Default File Structure**: Organized by schema and schema type
- **Auto-deployment**: Configured for direct database deployment

### Version Control
- Includes comprehensive `.gitignore` for Visual Studio projects
- Refactor log tracking for schema changes
- Git attributes configured for proper line ending handling

## 📝 License

This project appears to be part of the BlankInfinity Projects suite. Please refer to your organization's licensing terms.

## 🤝 Contributing

When contributing to this database project:

1. Follow the existing schema organization patterns
2. Update the refactor log for any structural changes
3. Test deployments in a development environment first
4. Document any new tables or significant schema changes
5. Ensure all foreign key relationships are properly defined

## 📞 Support

For questions about this database project, please contact the development team or refer to your organization's internal documentation.

---

*Last Updated: February 2026*