---
layout: default
title: Hestia CC | Table and Add/Edit Enhancements
nav_order: 1
published: true
---

Welcome to the **Hestia CC | Table and Add/Edit Enhancements** Challenge. In this challenge, we are looking for you to update the existing functionalities based on the requirements listed in this spec.

***Let us know any question you have!***

#### Technology stack

* NodeJS
* Angular 7
* JavaScript

Optional (As APIs are hosted)
* Java 11 (OpenJDK)
* Springboot
* REST
* Microsoft Azure
* MS-SQL

## General requirements

#### Code Quality
* Important!! Reuse the existing code, components, CSS, js, etc as much as possible instead of duplicating the code.


#### Code Formatting
* Make sure code is well documented, all classes, methods, variables, parameters and return values must be documented in every single code file, and appropriate inline comments should be provided too where the code is not straightforward to understand.
* Please use clean INDENTATION for all HTML code so future developers can follow the code.
* Use appropriate linter to validate your code.

#### Framework specific
* To fetch data from the API create different services. Do NOT use single service for data handling.
* Use Observable & Observable.subscribe() method wherever applicable. You may refer this: https://angular.io/tutorial/toh-pt4#subscribe-in-heroescomponent
* Use Dependency Injection coding pattern.

#### CSS Specific
* Use CSS3 Media Queries to load different styles for each page. Do not build a different page for different device/layout.
* You may use SCSS in the project.

#### Layout
* Minimum supported resolution is 1366x768 px. The UI application is fluid, it expands automatically beyond 1366px width.
* Make sure you test the integrated code with chrome browser since the Web UI is supposed to be desktop responsive.

#### Platform
* Desktop: Chrome Browsers (Mac & Windows).
* All other browsers are out of scope. This is an internal application and the client will only be using Chrome.

## Application requirements

>>>
#### 0 Resource & links
1. The existing application can be found in the forum.
1. NEW API URL: Refer to the challenge forum.
1. Marvel-app storyboard: https://marvelapp.com/888978d/screen/54568722.
>>>

>>>
#### 1. Update the default view of the table details page.
* By default on the table detail pages: https://hestiafrontend.azurewebsites.net/details/user_schema1/HotDeals the table should show the business owned columns only. After this, a user should be able to show/hide tables using *Column Settings* sections.
* If a user refreshes the page then the table should retain the column show/hide state.
* Ref: new response: https://d.pr/free/i/g2WYNo .  
* A column having flag `business: false` considered as a non-business column, all other columns are `business` columns.
>>>

>>>
#### 2. Update sorting the tables on Dashboard 
All tables on the Dashboard page should sort the data such that recently edited records at placed on top. For implementing this sort the table based on modified date & show the most recent records on top.
>>>

>>>
#### 3. *Add records* page & *Edit records* page should contain all business columns.
* The Add records page & edit records page should allow adding/editing of the contents of all business columns.
* A new record can be added or edited from the table details page similar to this: https://hestiafrontend.azurewebsites.net/details/user_schema1/HotDeals
* Ref: new response: https://d.pr/free/i/g2WYNo .
* A column having flag `business: false` considered as a non-business column, all other columns are `business` columns.
>>>

>>>
#### 4. Fix table heading name
* Ref: https://d.pr/free/i/2WHUZg
* If the column name is in the upper case then it is displayed as spaced sperate letter. 
* Update code in `top-toolbar.component.html:172` such that heading like `PRODUCT_GROUP_NK` should be displayed as 'Product Group Nk' column heading like `endedByAssociate ` should be displayed as `Ended By Associate`
>>>
