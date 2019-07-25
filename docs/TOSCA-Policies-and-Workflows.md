---
title: TOSCA Policies and Workflows POC
layout: default
---

Welcome to the **TOSCA Policies and Workflows POC** Challenge. In this challenge, we are looking for you to create the TOSCA Policies and Workflows POC application using Angular 2+ framework based on the requirements listed below.

In the previous challenges [Challenge 1](https://www.topcoder.com/challenges/30094218/?type=develop) , [Challenge 2](https://www.topcoder.com/challenges/30095098/?type=develop), [Challenge 3](https://www.topcoder.com/challenges/30095348/?type=develop), [Challenge 4](https://apps.topcoder.com/forums/?module=Category&categoryID=72027), [Challenge 5](https://www.topcoder.com/challenges/30095768/?type=develop), [Challenge 6](https://www.topcoder.com/challenges/30095984/?type=develop) & [Challenge 7](https://www.topcoder.com/challenges/30096503/?type=develop) we have developed *Constraint Editor & valiue editor*. Here are going to use those while creating the Policies & Workflows POC.

_**Let us know any question you have!**_

#### Technology stack
* Angular 7
* NodeJS
* HTML
* SCSS
* JavaScript

## General requirements


#### Layout
* The POC should support resolutions 1920px x 1080px and above.
* The application layout should appear somewhat similar to the sides provided.
* It's **NOT** required to exactly match font, font-size, color, element dimension, etc because the focus is mainly on the POC functions.

#### Framework specific
* Imp!: **Blueprint data should be fetched from YAML file** for other application data JSON format mock files can be used.
* Use Observable & Observable.subscribe() method wherever applicable. You may refer this: https://angular.io/tutorial/toh-pt4#subscribe-in-heroescomponent
* Use Dependency Injection coding pattern.
* `ng build` should work without throwing any error.

#### Code formatting
* Make sure code is well documented, all classes, methods, variables, parameters, return values must be documented in every single code file, and appropriate inline comments should be provided too where the code is not straightforward to understand.
* Please use clean INDENTATION for all HTML code so future developers can follow the code.
* Use appropriate linter to validate your code.

#### HTML Specific
* HTML should be valid HTML5 compliant.
* All HTML code naming should not have any conflicts or errors.
* Element and Attribute names should be in lowercase and use a '-' or camel naming to separate multiple-word classes (i.e.. 'main-content', or 'mainContent)
* Use semantically correct tags- use H tags for headers, etc. Use strong and em tags instead of bold and italic tags.
* No inline CSS styles- all styles must be placed in an external stylesheet.

#### CSS Specific
* Use CSS3 Media Queries to load different styles for each page. Do not build a different page for different device/layout.
* You may use SCSS in the project.


#### Platform
* Desktop: Chrome latest, Firefox latest (Mac & Windows), Safari latest (Mac), IE11+ (Windows), MS Edge
* **IE11 is the primary browser.**


## App Requirement

#### 0 Resource & links  
* Existing app & reference docs are attached in the **challenge forum**.

#### 1 Storyboard:

<img src="https://cdn-std.dprcdn.net/files/acc_652531/ejzlIM" height="380" alt="" />   

Only the sections marked in green are in scope. Other than that the sidebar should also be updated & button functions should work.
1. Sidebar: Policies & workflows node
1. Policies & workflows

* The background of Policies & workflows editor shold be plain gray, do **NOT** add grid background.
* The red crossed section in the above image shouldn't be added.
* For color & other layout elements you may follow the existing application.


  
#### 1. Default view
* Initially both the Policy & Workflow controls stays at the center of the *Policy & Workflow editor*. Ref: https://d.pr/free/i/wrrA6r
* On clicking the Policy contorl or Workflow control both the workflow & policy controls moves to top and some options appears for both the policy & workflow controls. Ref: https://d.pr/free/i/XrzwCI

#### 2. Policy: Type
* By defalut the `Type` stays selected. All other options should be disabled for both policies & worlfow should stay disabled.
* Clicking the *type* drop-down should show drop-down options, the of these drop-down options should come from [BaseFile.yaml's](https://gitlab.com/tosca-open/poc-blueprint/blob/dev/src/assets/yaml/policies-workflows/BaseFile.yaml) `type` nodes ref: https://d.pr/free/i/2tInfL . In this case it shold be *bt.tosca.policies.base & bt.tosca.policies.base_1*.
* Ref: https://d.pr/free/i/w5Gwv4 . Here icons are **NOT** required the search function shold work.
* On selecting a type from *BaseFile.yaml* the value of policies node in *Existing.yaml* shold be updated https://d.pr/free/i/HS6nMN . It should update all the values of the policies node & NOT just the *type* field.

#### 2. Policy: Properties
* This open gets activated & selected once a user selects a type.
* Ref: https://d.pr/free/i/dtQuXo & https://d.pr/free/i/0qjk15
* Based on the type selected show the values of *properties* option.
* A user should be able to add more properties by clicking the the "New +" link: https://d.pr/free/i/dtQuXo
* On clicking *New +* the list should be appended with one more list item. The value of this item should be editable. You may added a text-box along with the radio button.
* Add an "X" button on the right side. Clicking this should remove this item.
* Only list items added by a user can be removed.

#### 2.1 Policy: Selecting a property value
* On selecting a property the "Value & constraint" editor should appear like this: https://d.pr/free/i/ejzlIM
* The name field should **NOT** be editable.
* The value of **default** should come from **Value Editor**
* The values of **constraints** should come from **Constraints editor**
* Refer to the exiting **Value Editor** & **Constraints Editor** for refrence.
* Remove link in this window should be disabled.

#### 3 Existing functions 
* The existing functions implemented on clicking the button on the upper right section should continue to work even after implementing the above requirements.
