---
layout: default
title: TOSCA Value Editor POC | Get op output & constant
published: true
---

Welcome to the **TOSCA Value Editor POC - Get op output & constant** Challenge. In this challenge, we are looking for you to create the Value Editor POC application using Angular 2+ framework based on the requirements listed below.

In the previous challenges [Challenge 1](https://www.topcoder.com/challenges/30094218/?type=develop) , [Challenge 2](https://www.topcoder.com/challenges/30095098/?type=develop), [Challenge 3](https://www.topcoder.com/challenges/30095348/?type=develop), [Challenge 4](https://apps.topcoder.com/forums/?module=Category&categoryID=72027), [Challegne 5](https://www.topcoder.com/challenges/30095768/?type=develop) & [Challegne 6](https://www.topcoder.com/challenges/30095984/?type=develop) we have developed *Constraint Editor & valiue editor*. Here we need update the functionalities of the **Value Editor**.

_**Let us know any question you have!**_

#### Technology stack
* Angular 7
* NodeJS
* HTML
* SCSS
* JavaScript


>
#### 0 Resource & links
* Storyboard & reference docs attached in the challenge forum.

>

#### 1 Storyboard:  
<img src="https://cdn-std.dprcdn.net/files/acc_652531/hgbVQq" height="380" alt="" /> 

>>>
Only the sections marked in green are in scope. Other than that the sidebar should also be updated & button functions should work.
1. Value Editor: get_operation_output
1. Value Editor: constant
>>>

* **The value Editor should update the value of the `default` node.** in the  [Existing.yaml](https://gitlab.com/tosca-open/poc-blueprint/blob/dev/src/assets/yaml/Existing.yaml#L25).
* If  `Required: true` (checked https://d.pr/free/i/Obv5DW) then the value of `default` should be null/blank & hide this *Value Editor* section form the screen otherwise, show the *Value Editor* section.

>>>
#### 2 Value Editor: get_operation_output
* On selecting the *get_operation_output* option, the right section drop-down options should list the 5 drop-downs & a code viewer section as displayed in the *1. Storyboard* section.
* These five drop-downs synched with each other:
#### 2.1 modable_entity
* It should list *Self* & the values of `imports` node. Ref: https://d.pr/free/i/wT3LXy

#### 2.2 target_entity 
* If no value is selected in `modable_entity` text-box, it should not show any options.
& If *Self* is selected in the `modable_entity` select control then it's drop-down options should show the immediate values of `node_templates` Ref: https://d.pr/free/i/UJPJNX . In this case, it should the options as  *newEquipmentProject, newEquipmentScheme, pRouterDevice, pRouterShelf, pRouterCard*
* If some other option is selected in the `modable_entity` select control (let say it's `create_scheme_node_definitions_v2.yaml`) then it's drop-down options should show the immediate values of `node_templates` from this selected file. In this case, it should the options as  *newEquipmentProject_2, newEquipmentScheme_2, pRouterDevice_2, pRouterShelf_2, pRouterCard_2*. Ref: https://d.pr/free/i/W2TmaZ

#### 2.3 interface_entity 
* If *target_entity select control's* value is null then there should be no drop-down values for the `interface_entity` select control.
* If *target_entity select control's* value is not null then the drop-down options of *interface_entity select control* should list the values from the `interfaces` node of the *target_entity's* selected value. Ref: https://d.pr/free/i/eAmVKp . In this case, it's *CreateScheme, StartFundamentalPlanning, AddComponents...*

#### 2.4 operation_entity 
* If *interface_entity select control's* value is null then there should be no drop-down values for the `operation_entity` select control.
* If *interface_entity select control's* value is not null then the drop-down options of *operation_entity select control* should list the values from the *interface_entity's* selected value. 
Ref: https://d.pr/free/i/uVVmoI . Let's say a user has selected `CreateScheme` in the *interface_entity select control* then, in this case the options of *operation_entity select control* should be *captureSchemeDetails*

#### 2.5 output_entity
* If *operation_entity select control's* value is null then there should be no drop-down values for the `output_entity` select control.
* If *operation_entity select control's* value is not null then the drop-down options of *output_entity select control* should list the values from the `outputs` node of the *operation_entity's* selected value. 
Ref: https://d.pr/free/i/f8GQx6 . Let's say a user has selected `captureSchemeDetails` in the *operation_entity select control* then, in this case the options of *operation_entity select control* should be *schemeSysid, schemeNumber, errorCode , errorMessage*

#### 2.6 Code view

* https://d.pr/free/i/QrqLm0
* Update the code view based on the selected nodes.

#### 2.7 Resultant Syntax
* The resulatant syntax for `get_operation_output` is `get_operation_output(modable_entity_val, modable_entity_val.target_entity_val.operation_entity_val, output_entity_val)`.
* Ex: `get_operation_output(SELF, newEquipmentScheme.CreateScheme.captureSchemeDetails, schemeSysid)`.
>>>

>>>
#### 3 Constant
* On selecting the *constant* option, the right section should show one text-box.
* User shold be able to enter any value in this textbox.
* Resultant Syntax for this is: `constant(text_box_value)`
>>>

>>>
#### 4 Existing functions 
* The existing functions implemented on clicking the button on the upper right section should continue to work even after implementing the above requirements.
>>>
