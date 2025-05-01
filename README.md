![Public Sector Accelerators logo](/docs/Logo_GPSAccelerators_v01.png)

# HUD/HDMIS Compliance Data Model

This Accelerator is designed to streamline the process of creating and formatting reports in compliance with the Homeless Management Information System (HMIS) standards. The app helps service providers, agencies, and organizations in the homelessness support sector to efficiently collect, organize, and generate required metadata and reports in accordance with HMIS guidelines. While staff will see the options in plain text, remorts qill be created in proper values and formats. The goal is to help staff be more efficient without impacting reporting. 

This Accelerator used the <a href="https://files.hudexchange.info/resources/documents/HMIS-CSV-Format-Specifications-2024.pdf">2024 CSV Format Specifications </a> to help setup the core required metadata and report(s). Workflows, process automation will be included with future releases. if you would like to participate in future development through our community build teams, please reach out to chrissy.thompson@salesforce.com. We are always looking for ways to improve our technology through collaboration, sharing ideas, utilizing otehrs skills and talent, and incorporating our community. We would love to have you!


Key features include:

1. Automated Metadata Formatting: This accelerator automatically formats metadata to meet the specific requirements of HMIS reporting, ensuring consistency and accuracy across all reports.

2. Data Integration: It integrates with various data sources used by homelessness service providers, making it easier to pull relevant information directly into HMIS-compliant formats.

3. Customizable Reporting Templates: The tool offers customizable templates for generating reports that meet the specific data collection and reporting requirements of local Continuums of Care (CoCs) and the Department of Housing and Urban Development (HUD).

User-Friendly Interface: Designed for ease of use, the app features a straightforward interface that requires minimal training, making it accessible to both technical and non-technical staff.

Overall, this Accelerator simplifies the complex and often time-consuming process of creating HMIS-compliant reports, helping organizations maintain accurate, consistent, and timely data submissions for program performance, funding eligibility, and reporting to oversight bodies.


[Accelerator Listing](https://gpsaccelerators.developer.salesforce.com/accelerator/a0wDo000000BAxYIAW/hudhmis-compliance-data-model)


## Description
<html style="overflow-y: hidden;">

</head>
<body style="height: auto; min-height: auto;">
<p><strong>HMIS Accelerator</strong></p>

<p>Version 1.20 - Winter 2024</p>

<p>All fields required based on the <a href="https://files.hudexchange.info/resources/documents/HMIS-CSV-Format-Specifications-2024.pdf" rel="noopener noreferrer" target="_blank">2024 HMIS CSV Format Specifications</a> have been added to the appropriate objects for staff to access. ERD can be located <a href="https://lucid.app/lucidchart/74b71658-1665-43c1-b08b-19fb8362241d/edit?viewport_loc=-969%2C-471%2C4320%2C2185%2C0_0&invitationId=inv_fe322484-e35f-4054-8e51-8888d0560199" rel="noopener noreferrer" target="_blank">here</a>.</p>

<p>Note: Salesforce uses the term Program vs Project. This can be relabeled if preferred.</p>

<p><span style="font-size:18px;"><strong>Summary of Field Placement Locations</strong></span></p>

<p><strong><u>Program Enrollment Related Records</u></strong></p>

<ul>
	<li><strong>Enrollment</strong> = Program Enrollment</li>
	<li><strong>Client</strong> = Fields are set in the Contact (Person Account), but the report is pulled on Program Enrollment with Lookups to the Contact fields.</li>
	<li><strong>Assessment</strong> = Assessment</li>
	<li><strong>CEParticipation</strong> = Program</li>
	<li><strong>CurrentLivingSituation</strong> = Custom object Current Living Situation</li>
	<li><strong>EmploymentEducation</strong> = Custom object Employment Education</li>
	<li><strong>Event</strong> = Referral</li>
	<li><strong>Exit</strong> = Custom object Exit</li>
	<li><strong>HealthAndDV</strong> = Custom object Health and DV</li>
	<li><strong>HMIS Participation</strong>: Additional fields in Program</li>
	<li><strong>IncomeBenefit</strong>: Custom object Income Benefit</li>
	<li><strong>Services</strong> = Benefit Disbursements with initial values being set during Benefit Assignment. The Disbursement pulls the specifics for the Service every time it is dispersed. This allows staff to quickly enter Assignment once, and multiple disbursements with minimal data entry</li>
	<li><strong>YouthEductaionStatus</strong>: Person Life Events </li>
</ul>

<p><strong><u>Program Relationships</u></strong><u>:</u></p>

<ul>
	<li><strong>Funder</strong> = Custom object Funder</li>
	<li><strong>Projec</strong>t = Custom fields on Program object</li>
	<li><strong>ProjectCoC</strong> = Custom Object Project CoC</li>
</ul>

<p><strong><u>Additional Fields to Pre-existing Objects</u></strong></p>

<ul>
	<li><strong>Inventory = </strong>Custom fields on Benefit</li>
	<li><strong>Organization</strong> = Custom fields on Account</li>
	<li><strong>User</strong> - Custom field to User</li>
</ul>

<p><strong><u>Additional Build</u></strong></p>

<ul>
	<li><strong>Value Formats</strong>: You will find many fields have API_Value fields. This is used to be able to report on the proper formatted values:</li>
	<li>D: yyyy-mm-dd</li>
	<li>Datetime: yyyy-mm-dd hh:mm:ss</li>
	<li>Integer I A non-negative whole number. Can&#39;t use the actal text that staff would see.</li>
	<li>Money: Number with two decimal places (no commas and no currency symbol); numbers may be negative</li>
	<li>String: A combination of letters, numbers, and standard punctuation</li>
	<li><strong>Report Types</strong>: have been created for all reports. Report Types allow us to change the headers required by HUD.</li>
	<li><strong>Report Folder</strong>: All report templates are saved in the HMIS Report Folder.</li>
	<li><strong>Hashed Values</strong>: Name is required to be hashed. A Flow was created to automatically Hash First, Lane, and Middle Name for Client.csv.</li>
	<li><strong>Page Layout</strong>: You will also find basic Lightning Page Layouts to help your team quickly enter data with proper formatting, dependent pick lists, and force required fields when needed.</li>
</ul>

<p>&nbsp;</p>



<head>
	
</head>
<body style="height: auto; min-height: auto;">	
</ul>
</body>
</html>

<p>Future versions of this Accelerator:</p>

<ul>
	<li>We are working with providers to come up with centralized Assessments or standard quick and efficient data entry for Entry, Update, and Exit.</li>
	<li>This may includes additional dynamic forms or assessments to grab several data points in a single page.</li>
	<li>Reporting: Was set to be native and out of the box for any Salesforce admin to administer. In the future, we may built out triggers to automatically set filters and create a PDF attaching it to the appropriate Export record.</li>
	<li>Please keep in mind, Users that have Tableau, may decide to run reports strictly from Tableau. This Accelerator is a way to run the reports out of the box formatted correctly with API values and proper headers.</li>
</ul>

<p>For any additional requests, questions, please feel free to reach out to Chrissy Thompson, Solution Engineer at chrissy.thompson@salesforce.com. We look forward to adding and improving functionality based on the feedback we receive from our community of users!</p>
</body>
</html>



## Included Assets

<html style="overflow-y: hidden;">
</head>
<body style="height: auto; min-height: auto;">
<p><b>Lightning App - HMIS Case Management:</b></p>

<ul>
	<li>Lightning Record Pages:&nbsp;
	<ul>
		<li>Hides fields not needed until prior values are selected</li>
		<li>Flags required fields</li>
		<li>Added into sections for staff to easily jump to a given section to create new or edit</li>
	</ul>
	</li>
	<li>Reporting Quality
	<ul>
		<li>Global pick lists have been added so that as changes occure, the Global options are changed, updating all locations that reference that field.</li>
		<li>API Values that allow the data to be transformed into the proper format for reporting (Example: Staff will see options Male vs Female, but the API value in the report will be set to 1 or 2. This also includes date/time and money formats.&nbsp;</li>
		<li>Report Types are used to set column headers and call upon the API values/</li>
<html style="overflow-y: hidden;">

</head>
<body style="height: auto; min-height: auto;">
<p>HMIS Report Folder will provide the following report templates:</p>

<ul>
	<li>HMIS Client</li>
	<li>HMIS CEParticipation</li>
	<li>HMIS - Assessment</li>
	<li>HMIS - Current Living Situation</li>
	<li>HMIS - Employment Education</li>
	<li>HMIS - Event</li>
	<li>HMIS - Funder</li>
	<li>HMIS - Export</li>
	<li>HMIS - Exit</li>
	<li>HMIS - HMISParticipation</li>
	<li>HMIS - Organization</li>
	<li>HMIS - Inventory</li>
	<li>HMIS - Income Benefit</li>
	<li>HMIS - HealthAndDV</li>
	<li>HMIS - Project</li>
	<li>HMIS - Youth Education</li>
	<li>HMIS - User</li>
	<li>HMIS - Services</li>
	<li>HMIS - ProjectCoc</li>
	<li>HMIS - Enrollment</li>
</ul>
</body>

<p>While we work on automating csv reports based on filters added to the Export record, for now you will have access to each report that can easily be tweaked for the filters you want to apply (program, start, end date). We also have an included column for the Export ID you would like to apply to the report. Reports can then be saved to the appropriate Export record for future reference, if needed.</p>

**License Requirements** 
<html style="overflow-y: hidden;">
</head>
<body style="height: auto; min-height: auto;">
	
Nonprofit Cloud

</head>
<body style="height: auto; min-height: auto;">You will need to have installed Public Sector Benefit Management or Nonprofit Cloud that includes Program and Benefit Management. This Accelerator adds to preexisting objects to extend functionality for HMIS reporting.&nbsp;</body>
</html>


## Before You Install
<html style="overflow-y: hidden;">

</head>
<body style="height: auto; min-height: auto;">
<p><strong></strong>Org Activations - 5 Min<strong></strong></p>
	<br />
<b>System Access</b>	
<ol>
	<li>Validate that you have procured Nonprofit Cloud or Public Sector Solutions</li>
	<li>Enable Middle Name and Suffixes: Setup &gt; User Interface (bottom of list) &gt; Enable Middle Names for Person Names and Enable Name Suffixes for Person Names . Additional information and <a href="https://help.salesforce.com/s/articleView?id=000386359&type=1"> Instructions Here</a></li>
	<li>Enable Person Accounts: Setup &gt; Person Accounts and walk through the checklist provided in your org, Example: If you haven&rsquo;t setup a Record Type yet for a traditional business account, such as &ldquo;Business Account&rdquo; or &ldquo;Account&rdquo;, you will need to create one. Lastly, you will check the box confirming you have reviewed the implications of setting up person accounts and then select Enable. More Information about Person Accounts<a href="https://help.salesforce.com/s/articleView?id=sales.account_person_enable.htm&type=5"> here</a>.<br />
		<br />
		Note: Person Accounts are use for Clients within Nonprofit Cloud. Details about the Client are stored in their related Contact record and then surfaced by the Person Account page layout. All ParticpantIDs on these reports are linked to the AccountID field.</li>
	<li>Enable Dynamic Assessments: Setup &gt; Discovery Framework &gt; General Settings &gt; Enable (<a href="https://help.salesforce.com/s/articleView?id=ind.psc_dynamic_assessments_prerequisites.htm&type=5">more info here</a>)</li>
	<li>Enable Program and Benefit Management: Setup, search for &quot;Program and Benefit Management Settings&quot; and enable</li>
	<li>Enable Referrals: Setup &gt; Case Referral and enable.</li>
	<li>If currency is not enabled, you may need to turn it on due to Case and Referral records: Setup &gt; Company Information &gt; Edit &gt; Activate Multiple Currencies. Please review implications of multiple currencies.</li>
</ol>

<br />
<b>User Permissions Set Assignment - 2 Min</b>
Give Users the following <b>Permission Set Assignments</b> (1st Section Down): Setup &gt; Users &gt; Select the User and scroll to down to their Permission Set Assignment section. You will move over the following items to give them access.
		<ol>
			<li>Action Plans</li>
			<li>Advanced Program Management</li>
			<li>Business Milestones and Life Events</li>
			<li>Case Referral</li>
			<li>Dynamic Assessment Access</li>
			<li>OmniStudio Admin (if creating Assessment templates) and/or OmniStudio User (If utilizing Assessments)</li>
			<li>Program and Benefit Management Access</li>
		</ol>
		</li>

<br />
<b>User Permissions Set License Assignment - 2 Min</b>

Give Users the following <b>Permission Set Licenses Assignment </b>(4th section down):<b> </b>Example: Setup &gt; Users &gt; Select the User and scroll to down to their Permission Set License Assignment section. Scroll down to Industries Assessment and check the box.
		<ol>
			<li>Industries Assessment</li>
		<ol>	
		</li>
	
</body>

## Installation

<html style="overflow-y: hidden;">
<head>
</head>
<body style="height: auto; min-height: auto;">
<ol>
	<li> Install the package using this link:  https://login.salesforce.com/packaging/installPackage.apexp?p0=04tal0000014Qub </li>
	<li> You will need to confirm the pre-installation steps have been completed.</li>
	<li>Once that is done, you will visit this link:&nbsp;</li>
	<li>Select which users (who were also given permissions in step 1)</li>
</ol>
</body>
</html>


## Post-Install Setup & Configuration

<html style="overflow-y: hidden;">
<head>
</head>
<body style="height: auto; min-height: auto;">
<ol dir="auto">
	<li dir="ltr">OPTIONAL: HMIS Lightning Pages are already assigned to the HMIS Accelerator App by default. If you want to assign these pages to your own app and specific profiles, below are the Lightning Pages that come with the app. Steps: Setup &gt; go to Object &gt; select the Lightning Record Pages &gt; select the page to edit &gt; once in the Lightning Page, select Activate (top right):
	<ol>
		<li>Assign to the HMIS Case Management App (or any additional custom App you may want to apply it to)</li>
		<li>Assign to the Record Type (assignment is listed below)</li>
		<li>Assign to Profiles who should have access to these layouts<br />
		<br />
		<span style="color:#16a085;">Pro Tip - Once you are in one Lightning Page, you can quickly toggle to other Lightning pages without having to go back into Setup. Once in a Lightning Page, within the blue header of the Lightning Page, use the carrot/drop down arrow on "Pages" (top left) to move from Lightning Page to another Lightning Page. This will allow you to quickly assign the following Lightning Pages:</span>
		<ul dir="auto">
			<li dir="ltr">Account object:&nbsp;<i>HMIS Client View&nbsp;</i>lightning page to&nbsp;<i>HMIS Client</i>&nbsp;record type</li>
			<li dir="ltr">Program object:&nbsp;<i>HMIS Project</i>&nbsp;lightning page to&nbsp;<i>HMIS</i>&nbsp;record type</li>
			<li dir="ltr">Benefit Disbursements object:&nbsp;<i>HMIS Services</i>&nbsp;lightning page to&nbsp;<i>HMIS Benefit Assignment&nbsp;</i>record type</li>
			<li dir="ltr">Living Situation object:&nbsp;<i>HMIS Living Situation</i>&nbsp;lightning page to&nbsp;<i>Current Living Situation</i>&nbsp;record type</li>
			<li dir="ltr">Export object:&nbsp;<i>HMIS Export</i>&nbsp;lightning page to&nbsp;<i>Master</i>&nbsp;record type</li>
			<li dir="ltr">Program Enrollment object:&nbsp;<i>HMIS Enrollment</i>&nbsp;lightning page to&nbsp;<i>HMIS Enrollment Type</i>&nbsp;record type</li>
			<li dir="ltr">Exit object:&nbsp;<i>HMIS Exit</i>&nbsp;lightning page to&nbsp;<i>Master</i>&nbsp;record type</li>
			<li dir="ltr">Benefit object:&nbsp;<i>HMIS Benefit&nbsp;</i>lightning page to<i>&nbsp;HMIS - Inventory Type</i>&nbsp;record type</li>
		</ul>
		</li>
	</ol>
	</li>
	<li dir="ltr">Setup an Assessment Type: Setup &gt; Assessment &gt; Type field &gt; validate at least one picklist option is available. Object search &gt; Assessment &gt; Fields and Relationships &gt; edit Type field &gt; add the following picklist option is available. When you add new values you can enter each item in a new line. Then once saved, edit next to each option and change their API value. This will validate that your reports will send numerical value &ldquo;1&rdquo; vs the options staff will see &ldquo;Phone&rdquo;.
	<ol dir="auto">
		<li dir="ltr">Value = Phone, API = 1</li>
		<li dir="ltr">Value = Virtual, API = 2</li>
		<li dir="ltr">Value = In Person, API = 3.</li>
	</ol>
	</li>
	<li dir="ltr">Person Life Event Setup: Setup &gt; Person Life Event &gt; Event Type &gt; add &ldquo;Youth Education Status&rdquo;</li>
</ol>

<br />	<i>Note: If you haven&#39;t already assigned permissions individually to your users, now you can assign them the &quot;HMIS Accelerator Access&quot; Permission Set Group. This includes all the permissions they will need to access the objects, fields, and reports for this Accelerator. Go to Setup &gt; search for Permission Set Group &gt; select HMIS Accelerator Access &gt; select &ldquo;Manage Assignment&rdquo; and assign to the Users who will need to access this package.</i><br />
&nbsp;</body>
</html>

You are all set! Staff will now be able to capture all the required fields for Projects, Enrollments, Living Situations, etc and then report the data in the format expected by <a href="https://files.hudexchange.info/resources/documents/HMIS-CSV-Format-Specifications-2024.pdf">HMIS CSV Format Specification</a>.<br />
&nbsp;</body>
</ol>
</body>
</html>


## FAQs

**_Q: Does this Accelerator create the csv's automatically?_**

A: Great question! The report templates are setup to include the proper columns and formatted values. The report can then be modified by Program and Date filters, which can then be exported in csv and modified if needed (such as adding the specific ExportId)

**_Q: How do you enter in data?_**

A: Version 1 of this Accelerator is to allow Organizations to report on their data regardless of how they prefer to enter the data. Each organization enters data in varying ways, such as a centralized assessment, quick action buttons, or by simply adding new records to the Program Enrollment/client. We will be meeting with the community to come up with a model that works for most.

**_Q: Can I change the Report Templates and Report Types?_**

A: Yes, everything is configurable. We do recommend making copies so that you could default back if needed. 


## Revision History

<strong>1.0 Initial release (25 Dec 2024)</strong> - Focused on Metadat Structure and Reporting temapltes to speed up the time to reporting to HUD/HMIS. 

## Acknowledgements

<body style="height: auto; min-height: auto;"><strong>Chrissy Thompson</strong>, Lead Strategic Solution Engineer: https://www.linkedin.com/in/thompsonchrissy/<br />
<strong>LeAndria Streeter, </strong>Sr Account Solution Engineer:<strong>&nbsp;</strong>https://www.linkedin.com/in/lstreeter/<br />
<strong>Shannon Schupbach</strong>, Senior Director of Solution Engineering:&nbsp;https://www.linkedin.com/in/shannon-schupbach/<br />
&nbsp;</body>



## Terms of Use


Thank you for using Global Public Sector and Nonprofit (GPS) Accelerators.  Accelerators are provided by Salesforce.com, Inc., located at 1 Market Street, San Francisco, CA 94105, United States.

By using this site and these accelerators, you are agreeing to these terms. Please read them carefully.

Accelerators are not supported by Salesforce, they are supplied as-is, and are meant to be a starting point for your organization. Salesforce is not liable for the use of accelerators.

For more about the Accelerator program, visit: [https://gpsaccelerators.developer.salesforce.com/](https://gpsaccelerators.developer.salesforce.com/)
