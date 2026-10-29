<p align="center">
  <sub>PRODUCT DESIGN · MOBILE DEVELOPMENT · HUMAN–COMPUTER INTERACTION</sub>
</p>

<h1 align="center">Olive Homes</h1>

<p align="center">
  <em>Exploring how people discover, evaluate, and manage properties on mobile.</em>
</p>

<p align="center">
  Solo design & development &nbsp; · &nbsp; Academic final-year project
  <br>
  Flutter / Dart
</p>

<p align="center">
  <a href="#inside-the-application"><strong>Explore the application ↓</strong></a>
  &nbsp; · &nbsp;
  <a href="#implementation">Browse the implementation</a>
  &nbsp; · &nbsp;
  <a href="https://www.sandesh.design/">My portfolio ↗</a>
</p>

<br>

## A property experience, from interface to implementation.

Olive Homes is a real-estate mobile application that brings together property discovery, filtering, favorites, account management, and administrative interfaces.

I completed this project individually as my academic final-year project, connecting user experience design with application development.

This repository contains the implementation behind the interface: screens, reusable components, state management, and service integrations.

<br>

## My contribution

**Sole designer and developer.**

I owned the complete project, including the user experience, visual interface, and application implementation. My responsibility extended across the browsing experience, account flows, property interfaces, and administrative screens.

Working across design and development meant carrying interface decisions into code and considering how screens, components, data, and application states fit together.

<br>

## Inside the application

### 01 / Discover properties
**From a broad set of options to a closer look.**

Property browsing, search, and filtering provide entry points into the application. Property-detail screens give individual listings their own space for further exploration.

[Explore discovery screens ↗](lib/presentation/screen/home/)
&nbsp; · &nbsp;
[Explore property details ↗](lib/presentation/screen/home/property/)

---

### 02 / Keep track of interest
**A place to return to properties.**

Favorites provide a dedicated part of the experience for saved properties. The implementation includes a favorites screen alongside supporting state and repository code.

[Explore the favorites screen ↗](lib/presentation/screen/home/pages/favourite_page.dart)
&nbsp; · &nbsp;
[Explore favorites state ↗](lib/presentation/provider/favorite_provider.dart)

---

### 03 / Manage an account
**Supporting the experience beyond browsing.**

Registration, sign-in, password recovery, and profile screens form the account side of the application.

These flows sit alongside the property experience rather than being treated as isolated interface exercises.

[Explore account screens ↗](lib/presentation/screen/auth/)
&nbsp; · &nbsp;
[Explore the profile screen ↗](lib/presentation/screen/home/pages/profile_page.dart)

---

### 04 / Support administration
**A separate interface for management tasks.**

The project includes administrative sign-in, home, and property-list screens, extending its scope beyond the customer-facing browsing experience.

[Explore administrative screens ↗](lib/presentation/screen/admin/)

<br>

## Implementation

The application is built with **Flutter and Dart**. Its dependencies include **Provider and Firebase**, with source organized into presentation, reusable UI, models, services, repositories, and view-model code.

| Area | Where to look |
| :--- | :--- |
| **Application entry point** | [`lib/main.dart`](lib/main.dart) |
| **Screens and presentation** | [`lib/presentation/`](lib/presentation/) |
| **Reusable interface elements** | [`lib/core/widget/`](lib/core/widget/) |
| **Theme configuration** | [`lib/config/theme.dart`](lib/config/theme.dart) |
| **Data models** | [`lib/core/model/`](lib/core/model/) |
| **Service integrations** | [`lib/core/service/`](lib/core/service/) |
| **Repository code** | [`lib/repository/`](lib/repository/) |
| **State and view-model code** | [`lib/view_model/`](lib/view_model/) |
| **Dependencies and SDK constraints** | [`pubspec.yaml`](pubspec.yaml) |

<br>

## A closer look at the design

The source offers three useful ways to examine the relationship between design and implementation.

**Follow a task across screens.**  
Trace property discovery through search, filtering, and property details to see how the experience is divided into individual interactions.

**Look for repeated patterns.**  
Explore the shared buttons, inputs, property cards, and other UI elements to see how common interface needs are represented in code.

**Compare different workflows.**  
Review browsing, account management, and administration to understand how the application supports different tasks within one product.

<br>

<br>
<br>

## Project Outcomes

<br>

### Landing Page
<img width="1440" alt="Home Page" src="https://github.com/SandeshKey/Mobile-Web-Multimedia/assets/98152515/9fb3d10e-94ba-4bb4-a3f5-b61bf8f9ea52">
<br>
<br>

### Products Carousel
<img width="1440" alt="Popular Products Section" src="https://github.com/SandeshKey/Mobile-Web-Multimedia/assets/98152515/c6adbf9a-5208-458a-86e9-d0754b600f85">
<br>
<br>

### Company Details
<img width="1440" alt="Footwear Experience Section" src="https://github.com/SandeshKey/Mobile-Web-Multimedia/assets/98152515/a637c18e-ab0c-43b0-9b5b-4503b3d50f22">
<br>
<br>

### Team Members
<img width="1440" alt="Product Team" src="https://github.com/SandeshKey/Mobile-Web-Multimedia/assets/98152515/08bcd514-9844-4826-9d6d-7581a8d5bff0">
<br>
<br>

### Brands
<img width="1440" alt="Brands" src="https://github.com/SandeshKey/Mobile-Web-Multimedia/assets/98152515/1efffd7c-34c0-4d93-a9bf-f5cd40c4a8d9">
<br>
<br>

### Products
<img width="1440" alt="Products" src="https://github.com/SandeshKey/Mobile-Web-Multimedia/assets/98152515/0b75e43f-e51f-4ebb-b5ff-1a808572f5fe">
<br>
<br>

### Products Description
<img width="1440" alt="Product Description" src="https://github.com/SandeshKey/Mobile-Web-Multimedia/assets/98152515/25e38a2a-a03d-4070-bb20-d1af8be9cc88">
<br>
<br>

### Product Cart
<img width="1439" alt="Product Cart" src="https://github.com/SandeshKey/Mobile-Web-Multimedia/assets/98152515/08129dbb-432a-41ff-8d08-a544993bff86">
<br>
<br>

### Similar Products
<img width="1440" alt="Similar Products" src="https://github.com/SandeshKey/Mobile-Web-Multimedia/assets/98152515/4c304467-e6da-4651-84b7-49b36b18b703">
<br>
<br>

### Delivery Address
<img width="1440" alt="Delivery Address" src="https://github.com/SandeshKey/Mobile-Web-Multimedia/assets/98152515/45370361-2ed5-4dd7-862f-d45417104630">
<br>
<br>

### Payment Gateways
<img width="1440" alt="Payment Gateway" src="https://github.com/SandeshKey/Mobile-Web-Multimedia/assets/98152515/2e7595ff-6a04-4df4-bf9c-61cdc43f9562">
<br>
<br>

### Error Page
<img width="1440" alt="Error Page" src="https://github.com/SandeshKey/Mobile-Web-Multimedia/assets/98152515/e197a9f6-f9cf-49d7-85ab-f809ed6fbbb4">
<br>
<br>

### Admin Panel - Order Status
<img width="1440" alt="Admin panel - Orders" src="https://github.com/SandeshKey/Mobile-Web-Multimedia/assets/98152515/dbc6e29b-7910-4775-be9f-bed3d2e870b6">
<br>
<br>

### Footer
<img width="1440" alt="Footer" src="https://github.com/SandeshKey/Mobile-Web-Multimedia/assets/98152515/fd5067bf-a8d0-4e54-8b78-760af19f583e">
<br>
<br>


### Project Documentation

For PDF File, and Keynote/PowerPoint Presentation, Visit **[Sandesh Subedi](https://sandesh.design)**

<br>
<br>
<br>
<br>

<p align="center">
  <strong>Designed and developed by Sandesh Subedi.</strong>
</p>

<p align="center">
  Product design grounded in human factors.
</p>

<p align="center">
  <a href="https://www.sandesh.design/">Portfolio</a>
  &nbsp; · &nbsp;
  <a href="https://www.linkedin.com/in/sandeshxd/">LinkedIn</a>
  &nbsp; · &nbsp;
  <a href="mailto:subedi.38@wright.edu">Get in touch</a>
</p>
