# Pamela's Panel
## [Visit The Page](https://pamelas-panel.herokuapp.com/)
## Motivation
###### This is a fullstack ruby on rails Admin Panel for a ficticious school. Created with the Devise Gem for authentication, AJAX rendering for content creation, and Polymorphic inheretance for three different user types on the Postgresql database. Has essential CRUD functionality, and room to build out Post-MVP bells and whistles.
## Build Status
###### This project has met the core requirements for my NYCDA assignment, but has a lot of room to build out more robust features. CRUD works for Courses, Cohorts, Students, Teachers, and Admins. The three different user types have different levels of access to the panel, for example only Admins can add students to a Cohort, or create new user accounts.    
## Code Style
###### This is my first time building out a Rails application, so navigating the structure proved educational. I worked to break down my project into smaller pieces, partial files, and single components for single functions. 
## Database creation
##### The database is a simple Postgresql relational database, I used Postico to help visualize the relationships during the build out, as well as extensive ERDs. Rails worked well with the PG Gem and was clear to troubleshoot in the build out. Certain tables depend on others existing first. For example, you need to create Courses and Teachers before you can have Cohorts, as well as have Cohorts and Students before you can have Members. Members functions as a join table for Students and Cohorts to determine which students are in which Cohorts. 
## Technology Used
###### The main functionality of the page is achieved through using AJAX to update the Postgresql database, Devise to authenticate users, Rollbar to handle errors on the backend, and Bootstrap with jQuery for page styling. 
## Features
######  The admin panel has Courses in individual subjects, cohorts of each course, teachers of cohorts, students of cohorts, and administrators to manage the functions of the school. I began framing out user notes, MTA updates via the API, weather updates via an API, direct messaging, and an open message board/help line. These have not be finished and are yet to be deployed. 
## Code Example
###### Below is an example of the polymorphic inheretance.
```ruby
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  # Polymorphic relationship structure
  belongs_to :user_type, polymorphic: true
end

class Admin < ApplicationRecord
    has_many :admin_notes, dependent: :destroy
    # Polymorphic relationship structure
    has_one :user, as: :user_type, autosave: true, dependent: :destroy
end
```
## How To Use
###### At the moment, only Admin can add usertypes to accounts, and creating an account from log in will not work as expected. Once logged in, create courses, teachers, cohorts, and students. Edit them, delete them, or find other things the page _should_ have. 
## Credit
###### This project was made possible thanks to [Ruby Gems](http://rubygems.org/) [Bootstrap](https://getbootstrap.com/) [Rails](https://github.com/rails/rails) [Devise](https://github.com/plataformatec/devise) and [Google Fonts](https://fonts.google.com/). 
## Licence
##### MIT License

###### Copyright &copy; [2018] [Joshua Seyda]

###### Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

###### The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

###### THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.


