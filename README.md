# Rails 6 Blog Application

This is a blog application built with **Ruby on Rails 6** that allows for dynamic content management using **StimulusReflex** for live publish tagging and **SortableJS** for element sorting. The application also includes user authentication through **Devise**, human-readable URLs through **FriendlyId**, and model annotations through **Annotate**.

## Features

- User authentication (sign up, sign in, password management) using **Devise**
- Friendly URLs for blog posts and tags using **FriendlyId**
- Real-time publish status updates using **StimulusReflex**
- Drag-and-drop sorting for blog posts and tags with **SortableJS**
- Auto-generated model, migration, and schema annotations via **Annotate**

## Prerequisites

Ensure you have the following installed:

- **Ruby** 2.7+
- **Rails** 6.x
- **Node.js** and **Yarn** for managing JavaScript dependencies
- **PostgreSQL** or another relational database

## Setup

1. Clone the repository:
    ```bash
    git clone https://github.com/your-username/your-repo.git
    cd your-repo
    ```

2. Install dependencies:
    ```bash
    bundle install
    yarn install
    ```

3. Set up the database:
    ```bash
    rails db:create
    rails db:migrate
    ```

4. Run the application:
    ```bash
    rails server
    ```

5. Visit `http://localhost:3000` to see the application in action.

## Key Gems Used

### Devise

[Devise](https://github.com/heartcombo/devise) handles user authentication. It provides sign-up, login, logout, and password recovery features out of the box.

- Run `rails generate devise:install` to set up Devise.
- Configure your user model by running `rails generate devise User`.

### FriendlyId

[FriendlyId](https://github.com/norman/friendly_id) provides human-readable slugs for blog posts and tags. This replaces the default numeric IDs in URLs with more meaningful ones.

- Set up FriendlyId in your models by adding `friendly_id :title, use: :slugged`.

### StimulusReflex

[StimulusReflex](https://github.com/hopsoft/stimulus_reflex) enables real-time updates in your Rails app without needing to write custom JavaScript. In this blog, it is used for live publish tag updates.

- Install StimulusReflex:
    ```bash
    bundle add stimulus_reflex
    rails stimulus_reflex:install
    ```

### SortableJS

[SortableJS](https://github.com/SortableJS/Sortable) is used for drag-and-drop sorting of blog posts and tags. It's integrated with Stimulus to make it easy to handle sorting in a Rails-friendly way.

- Install SortableJS via Yarn:
    ```bash
    yarn add sortablejs
    ```

- Use it in your views by connecting the elements you want to be sortable.

### Annotate

[Annotate](https://github.com/ctran/annotate_models) automatically adds comments to your models, routes, and migrations to improve code documentation.

- Run `annotate` to update the annotations whenever you generate new models or migrations.

## Usage

### Live Publish Tagging

The blog posts can be published or unpublished in real-time using **StimulusReflex**. Simply click the "Publish" button on a blog post to toggle its status without reloading the page.

### Sorting Posts

You can sort blog posts or tags using **SortableJS**. Drag and drop the elements in the list, and the order will automatically update.

### User Authentication

To create an account, click "Sign Up" on the homepage. Once signed in, you can create, edit, or delete blog posts based on your user permissions.

## Development

After setting up the project, you can start the development server using the following command:

```bash
rails server
