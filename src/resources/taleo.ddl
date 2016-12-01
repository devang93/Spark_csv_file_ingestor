CREATE TABLE dwh_15a.Competency (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x5 NOT NULL,
Code VARCHAR2 (50) CONSTRAINT NN_idelem4x7 NOT NULL,
Alias VARCHAR2 (300),
Description CLOB,
DescriptionText CLOB,
InternalCode VARCHAR2 (200) CONSTRAINT NN_idelem4x15 NOT NULL,
LastModifiedDate TIMESTAMP CONSTRAINT NN_idelem4x17 NOT NULL,
Name VARCHAR2 (200),
CompetencyGroup_Number NUMBER (18),
CompetencyProvider_Number NUMBER (18),
CompetencyType_Number NUMBER (18) CONSTRAINT NN_idelem4x25 NOT NULL,
DefaultCompetencyType_Number NUMBER (18) CONSTRAINT NN_idelem4x27 NOT NULL,
PrimaryNetworkJobField_Number NUMBER (18) CONSTRAINT NN_idelem4x29 NOT NULL,
RatingModel_Number NUMBER (18) CONSTRAINT NN_idelem4x31 NOT NULL,
Status_Number NUMBER (18) CONSTRAINT NN_idelem4x33 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.Competency_CptcyCategories (
Competency_Number NUMBER (18) CONSTRAINT NN_idelem4x38 NOT NULL,
CompetencyCategory_Number NUMBER (18) CONSTRAINT NN_idelem4x40 NOT NULL,
PRIMARY KEY (Competency_Number, CompetencyCategory_Number) );

CREATE TABLE dwh_15a.Competency_NetworkJobFields (
Competency_Number NUMBER (18) CONSTRAINT NN_idelem4x45 NOT NULL,
NetworkJobField_Number NUMBER (18) CONSTRAINT NN_idelem4x47 NOT NULL,
PRIMARY KEY (Competency_Number, NetworkJobField_Number) );

CREATE TABLE dwh_15a.SubCompetency (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x52 NOT NULL,
DisplaySequence NUMBER (10) CONSTRAINT NN_idelem4x54 NOT NULL,
Name VARCHAR2 (200),
ParentCompetency_Number NUMBER (18) CONSTRAINT NN_idelem4x58 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.CustomSelection (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x63 NOT NULL,
Code VARCHAR2 (50) CONSTRAINT NN_idelem4x65 NOT NULL,
Name VARCHAR2 (200),
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.CustomSelectionElement (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x72 NOT NULL,
Code VARCHAR2 (50) CONSTRAINT NN_idelem4x74 NOT NULL,
Name VARCHAR2 (200),
Sequence NUMBER (5) CONSTRAINT NN_idelem4x78 NOT NULL,
Selection_Number NUMBER (18),
Status_Number NUMBER (18) CONSTRAINT NN_idelem4x82 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.DeletedMatrixManager (
MatrixManager_Number NUMBER (18) CONSTRAINT NN_idelem4x87 NOT NULL,
ExecutionDate TIMESTAMP CONSTRAINT NN_idelem4x89 NOT NULL,
PRIMARY KEY (MatrixManager_Number) );

CREATE TABLE dwh_15a.Employee (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x94 NOT NULL,
LastModifiedDate TIMESTAMP CONSTRAINT NN_idelem4x96 NOT NULL,
Level_ NUMBER (10),
ProfileMatched NUMBER (1) CONSTRAINT NN_idelem4x100 NOT NULL,
CompetencyScore NUMBER,
CompetencyScoreDate TIMESTAMP,
GoalScore NUMBER,
GoalScoreDate TIMESTAMP,
LastReviewScore NUMBER,
LastReviewScoreDate TIMESTAMP,
PromotabilityReadinessEnd NUMBER (10),
PromotabilityReadinessSetDate TIMESTAMP,
PromotabilityReadinessStart NUMBER (10),
EmployeePotential_Number NUMBER (18) CONSTRAINT NN_idelem4x120 NOT NULL,
EmployeeRiskOfLoss_Number NUMBER (18) CONSTRAINT NN_idelem4x122 NOT NULL,
CurrentJob_Number NUMBER (18),
EmployeeStatus_Number NUMBER (18),
Location_Number NUMBER (18) CONSTRAINT NN_idelem4x128 NOT NULL,
Manager_Number NUMBER (18),
Organization_Number NUMBER (18) CONSTRAINT NN_idelem4x132 NOT NULL,
TalentUser_Number NUMBER (18) CONSTRAINT NN_idelem4x134 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.EmployeeUDF (
Employee_Number NUMBER (18) CONSTRAINT NN_idelem4x139 NOT NULL,
UDFName VARCHAR2 (765) CONSTRAINT NN_idelem4x141 NOT NULL,
Sequence NUMBER (5) CONSTRAINT NN_idelem4x143 NOT NULL,
CustomSelectionElement_Number NUMBER (18),
Value CLOB,
PRIMARY KEY (Employee_Number, UDFName, Sequence) );

CREATE TABLE dwh_15a.EmployeeMetricsUDF (
Employee_Number NUMBER (18) CONSTRAINT NN_idelem4x152 NOT NULL,
UDFName VARCHAR2 (765) CONSTRAINT NN_idelem4x154 NOT NULL,
Sequence NUMBER (5) CONSTRAINT NN_idelem4x156 NOT NULL,
CustomSelectionElement_Number NUMBER (18),
Value CLOB,
PRIMARY KEY (Employee_Number, UDFName, Sequence) );

CREATE TABLE dwh_15a.Employee_MetricValues (
Employee_Number NUMBER (18) CONSTRAINT NN_idelem4x165 NOT NULL,
ConfigurableMetric_Number NUMBER (18) CONSTRAINT NN_idelem4x167 NOT NULL,
PRIMARY KEY (Employee_Number, ConfigurableMetric_Number) );

CREATE TABLE dwh_15a.DelegatedEmployee (
MatrixManager_Number NUMBER (18) CONSTRAINT NN_idelem4x172 NOT NULL,
DelegatedEmployee_Number NUMBER (18) CONSTRAINT NN_idelem4x174 NOT NULL,
PRIMARY KEY (MatrixManager_Number, DelegatedEmployee_Number) );

CREATE TABLE dwh_15a.MatrixManager (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x179 NOT NULL,
DelegateTasks NUMBER (1) CONSTRAINT NN_idelem4x181 NOT NULL,
FromDate TIMESTAMP,
LastModifiedDate TIMESTAMP,
ToDate TIMESTAMP,
ManagerRequester_Number NUMBER (18) CONSTRAINT NN_idelem4x189 NOT NULL,
MatrixManager_Number NUMBER (18) CONSTRAINT NN_idelem4x191 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.BusinessOrganization (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x196 NOT NULL,
Code VARCHAR2 (50) CONSTRAINT NN_idelem4x198 NOT NULL,
CustomerID VARCHAR2 (50),
Level_ NUMBER (5) CONSTRAINT NN_idelem4x202 NOT NULL,
Name VARCHAR2 (200),
Parent_Number NUMBER (18),
Status_Number NUMBER (18),
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.Department (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x213 NOT NULL,
Code VARCHAR2 (50) CONSTRAINT NN_idelem4x215 NOT NULL,
CostCenter VARCHAR2 (255),
EffectiveFrom DATE,
EffectiveTill DATE,
LastModifiedDate TIMESTAMP,
Name VARCHAR2 (200),
PayFactor NUMBER (12,2),
HiringManager_UserNo NUMBER (18),
Location_Number NUMBER (18),
Organization_Number NUMBER (18),
Parent_Number NUMBER (18),
Recruiter_UserNo NUMBER (18),
State_Number NUMBER (18) CONSTRAINT NN_idelem4x239 NOT NULL,
Status_Number NUMBER (18) CONSTRAINT NN_idelem4x241 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.DepartmentUDF (
Department_Number NUMBER (18) CONSTRAINT NN_idelem4x246 NOT NULL,
UDFDefinition_Entity VARCHAR2 (50) CONSTRAINT NN_idelem4x248 NOT NULL,
UDFDefinition_ID VARCHAR2 (765) CONSTRAINT NN_idelem4x250 NOT NULL,
Sequence NUMBER (5) CONSTRAINT NN_idelem4x252 NOT NULL,
UDSElement_Number NUMBER (18),
Value CLOB,
PRIMARY KEY (Department_Number, UDFDefinition_Entity, UDFDefinition_ID, Sequence) );

CREATE TABLE dwh_15a.JobField (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x261 NOT NULL,
Code VARCHAR2 (50) CONSTRAINT NN_idelem4x263 NOT NULL,
Complete NUMBER (1),
CustomerID VARCHAR2 (50),
Level_ NUMBER (5) CONSTRAINT NN_idelem4x269 NOT NULL,
Locked NUMBER (1) CONSTRAINT NN_idelem4x271 NOT NULL,
Name VARCHAR2 (200),
NetworkJobField_Number NUMBER (18) CONSTRAINT NN_idelem4x275 NOT NULL,
Parent_Number NUMBER (18),
Sequence NUMBER (5),
Status_Number NUMBER (18) CONSTRAINT NN_idelem4x281 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.Group_ (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x286 NOT NULL,
Name VARCHAR2 (255) CONSTRAINT NN_idelem4x288 NOT NULL,
Description VARCHAR2 (255) CONSTRAINT NN_idelem4x290 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.HierarchicalRole (
RoleNo NUMBER (18) CONSTRAINT NN_idelem4x295 NOT NULL,
Code VARCHAR2 (50) CONSTRAINT NN_idelem4x297 NOT NULL,
Description VARCHAR2 (765),
Name VARCHAR2 (200),
Parent_RoleNo NUMBER (18),
Status_Number NUMBER (18) CONSTRAINT NN_idelem4x305 NOT NULL,
PRIMARY KEY (RoleNo) );

CREATE TABLE dwh_15a.Location (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x310 NOT NULL,
Abbreviation VARCHAR2 (15),
Code VARCHAR2 (50) CONSTRAINT NN_idelem4x314 NOT NULL,
Complete NUMBER (1),
CustomerID VARCHAR2 (50),
LastModifiedOn TIMESTAMP,
Level_ NUMBER (5) CONSTRAINT NN_idelem4x322 NOT NULL,
Name VARCHAR2 (200),
ZipCode VARCHAR2 (60),
NetworkLocation_Number NUMBER (18) CONSTRAINT NN_idelem4x328 NOT NULL,
Parent_Number NUMBER (18),
Sequence NUMBER (5),
Status_Number NUMBER (18) CONSTRAINT NN_idelem4x334 NOT NULL,
WorkLocation_Address1 VARCHAR2 (400),
WorkLocation_Address2 VARCHAR2 (400),
WorkLocation_City VARCHAR2 (400),
WorkLocation_Code VARCHAR2 (200),
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.Organization (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x347 NOT NULL,
Code VARCHAR2 (50) CONSTRAINT NN_idelem4x349 NOT NULL,
Complete NUMBER (1),
CustomerID VARCHAR2 (50),
Level_ NUMBER (5) CONSTRAINT NN_idelem4x355 NOT NULL,
Name VARCHAR2 (200),
BusinessOrganization_Number NUMBER (18),
Industry_Number NUMBER (18),
Parent_Number NUMBER (18),
Sequence NUMBER (5),
Status_Number NUMBER (18) CONSTRAINT NN_idelem4x367 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.Role (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x372 NOT NULL,
Name VARCHAR2 (255) CONSTRAINT NN_idelem4x374 NOT NULL,
Description VARCHAR2 (255),
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.User_ (
UserNo NUMBER (18) CONSTRAINT NN_idelem4x381 NOT NULL,
City VARCHAR2 (100),
CorporateEmail VARCHAR2 (100),
CorrespondenceEmail VARCHAR2 (100),
CorrespondenceLanguage_ISO VARCHAR2 (15),
Country VARCHAR2 (100),
DepartmentName VARCHAR2 (765),
DepartmentNumber VARCHAR2 (765),
EmployeeID VARCHAR2 (50),
Fax VARCHAR2 (50),
FirstName VARCHAR2 (255),
HomePhone VARCHAR2 (50),
Initial_ VARCHAR2 (50),
LastModifiedDate TIMESTAMP CONSTRAINT NN_idelem4x407 NOT NULL,
LastName VARCHAR2 (255),
MobilePhone VARCHAR2 (50),
Pager VARCHAR2 (50),
PersonalEmail VARCHAR2 (100),
Prefix VARCHAR2 (30),
State VARCHAR2 (100),
StreetAddress VARCHAR2 (100),
StreetAddress2 VARCHAR2 (100),
StreetAddress3 VARCHAR2 (100),
Suffix VARCHAR2 (50),
SystemUser NUMBER (1) CONSTRAINT NN_idelem4x429 NOT NULL,
Title VARCHAR2 (255),
WorkPhone VARCHAR2 (50),
WorkphoneExtension VARCHAR2 (50),
Zipcode VARCHAR2 (20),
ConfigProfile_Number NUMBER (18),
DefaultRecruiter_UserNo NUMBER (18),
DefaultHiringManager_UserNo NUMBER (18),
Department_Number NUMBER (18),
HierarchicalRole_RoleNo NUMBER (18),
TimeZone_Number NUMBER (18),
UserAccount_CreationDate TIMESTAMP CONSTRAINT NN_idelem4x451 NOT NULL,
UserAccount_EndValidity TIMESTAMP,
UserAccount_StartValidity TIMESTAMP,
UserAccount_ForceChangePwd NUMBER (1) CONSTRAINT NN_idelem4x457 NOT NULL,
UserAccount_LastPwdModif TIMESTAMP,
UserAccount_Loginname VARCHAR2 (255) CONSTRAINT NN_idelem4x461 NOT NULL,
UserAccount_Status_Number NUMBER (18) CONSTRAINT NN_idelem4x463 NOT NULL,
PRIMARY KEY (UserNo) );

CREATE TABLE dwh_15a.User_Groups (
User_UserNo NUMBER (18) CONSTRAINT NN_idelem4x468 NOT NULL,
Group_Number NUMBER (18) CONSTRAINT NN_idelem4x470 NOT NULL,
PRIMARY KEY (User_UserNo, Group_Number) );

CREATE TABLE dwh_15a.User_Roles (
User_UserNo NUMBER (18) CONSTRAINT NN_idelem4x475 NOT NULL,
Role_Number NUMBER (18) CONSTRAINT NN_idelem4x477 NOT NULL,
PRIMARY KEY (User_UserNo, Role_Number) );

CREATE TABLE dwh_15a.AccountStatus (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x482 NOT NULL,
Code VARCHAR2 (50) CONSTRAINT NN_idelem4x484 NOT NULL,
Description VARCHAR2 (150),
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.AdminEntityStatus (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x491 NOT NULL,
Code VARCHAR2 (50) CONSTRAINT NN_idelem4x493 NOT NULL,
Description VARCHAR2 (150),
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.Certification (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x500 NOT NULL,
Description VARCHAR2 (1000),
LastModifiedDate TIMESTAMP,
Status_Number NUMBER (18) CONSTRAINT NN_idelem4x506 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.CieEmployer (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x511 NOT NULL,
Description VARCHAR2 (1000),
LastModifiedDate TIMESTAMP,
Status_Number NUMBER (18) CONSTRAINT NN_idelem4x517 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.CieInstitution (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x522 NOT NULL,
Description VARCHAR2 (1000),
LastModifiedDate TIMESTAMP,
Location_Number NUMBER (18),
Status_Number NUMBER (18) CONSTRAINT NN_idelem4x530 NOT NULL,
Type_Number NUMBER (18),
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.CieProgram (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x537 NOT NULL,
Description VARCHAR2 (1000) CONSTRAINT NN_idelem4x539 NOT NULL,
LastModifiedDate TIMESTAMP,
Status_Number NUMBER (18) CONSTRAINT NN_idelem4x543 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.CompetencyCategory (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x548 NOT NULL,
Code VARCHAR2 (50) CONSTRAINT NN_idelem4x550 NOT NULL,
Description CLOB,
Name VARCHAR2 (200),
Status_Number NUMBER (18) CONSTRAINT NN_idelem4x556 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.CompetencyGroup (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x561 NOT NULL,
Code VARCHAR2 (50) CONSTRAINT NN_idelem4x563 NOT NULL,
Description CLOB,
Name VARCHAR2 (200),
DisplaySequence NUMBER (10) CONSTRAINT NN_idelem4x569 NOT NULL,
Status_Number NUMBER (18) CONSTRAINT NN_idelem4x571 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.CompetencyProvider (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x576 NOT NULL,
Code VARCHAR2 (50) CONSTRAINT NN_idelem4x578 NOT NULL,
Description VARCHAR2 (3000),
Name VARCHAR2 (200),
Status_Number NUMBER (18) CONSTRAINT NN_idelem4x584 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.CompetencyType (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x589 NOT NULL,
Code VARCHAR2 (50) CONSTRAINT NN_idelem4x591 NOT NULL,
Description VARCHAR2 (150),
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.ConfigProfile (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x598 NOT NULL,
Code VARCHAR2 (50) CONSTRAINT NN_idelem4x600 NOT NULL,
Name VARCHAR2 (200),
Status_Number NUMBER (18) CONSTRAINT NN_idelem4x604 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.ConfigurableMetric (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x609 NOT NULL,
Code VARCHAR2 (50) CONSTRAINT NN_idelem4x611 NOT NULL,
DefaultValue NUMBER (1) CONSTRAINT NN_idelem4x613 NOT NULL,
Name VARCHAR2 (200),
Sequence NUMBER (5) CONSTRAINT NN_idelem4x617 NOT NULL,
Status_Number NUMBER (18),
Type_Number NUMBER (18),
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.Currency (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x626 NOT NULL,
Active NUMBER (1) CONSTRAINT NN_idelem4x628 NOT NULL,
BaseCurrencyRatio NUMBER (30,10) CONSTRAINT NN_idelem4x630 NOT NULL,
Code VARCHAR2 (150),
Description VARCHAR2 (150) CONSTRAINT NN_idelem4x634 NOT NULL,
ISO4217Abbreviation VARCHAR2 (9) CONSTRAINT NN_idelem4x636 NOT NULL,
ISO4217Code NUMBER (5) CONSTRAINT NN_idelem4x638 NOT NULL,
Sequence NUMBER (5) CONSTRAINT NN_idelem4x640 NOT NULL,
Symbol VARCHAR2 (150) CONSTRAINT NN_idelem4x642 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.DepartmentState (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x647 NOT NULL,
Code VARCHAR2 (50) CONSTRAINT NN_idelem4x649 NOT NULL,
Description VARCHAR2 (765) CONSTRAINT NN_idelem4x651 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.EmployeePotential (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x656 NOT NULL,
Code VARCHAR2 (50),
Description VARCHAR2 (150) CONSTRAINT NN_idelem4x660 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.EmployeeRiskOfLoss (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x665 NOT NULL,
Code VARCHAR2 (50) CONSTRAINT NN_idelem4x667 NOT NULL,
Description VARCHAR2 (150),
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.EmploymentStatus (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x674 NOT NULL,
Active NUMBER (1) CONSTRAINT NN_idelem4x676 NOT NULL,
Code VARCHAR2 (50) CONSTRAINT NN_idelem4x678 NOT NULL,
Description VARCHAR2 (200),
Sequence NUMBER (5) CONSTRAINT NN_idelem4x682 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.Industry (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x687 NOT NULL,
Code VARCHAR2 (50),
Description VARCHAR2 (150),
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.InfoFeeder (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x696 NOT NULL,
Code VARCHAR2 (150) CONSTRAINT NN_idelem4x698 NOT NULL,
Description VARCHAR2 (150) CONSTRAINT NN_idelem4x700 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.InterestIntlAssignment (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x705 NOT NULL,
Code VARCHAR2 (50) CONSTRAINT NN_idelem4x707 NOT NULL,
Description VARCHAR2 (150),
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.JobLevel (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x714 NOT NULL,
Active NUMBER (1) CONSTRAINT NN_idelem4x716 NOT NULL,
Code VARCHAR2 (50) CONSTRAINT NN_idelem4x718 NOT NULL,
Description VARCHAR2 (150),
Sequence NUMBER (5),
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.JobSchedule (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x727 NOT NULL,
Active NUMBER (1) CONSTRAINT NN_idelem4x729 NOT NULL,
Code VARCHAR2 (150) CONSTRAINT NN_idelem4x731 NOT NULL,
Description VARCHAR2 (150),
Sequence NUMBER (5) CONSTRAINT NN_idelem4x735 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.JobShift (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x740 NOT NULL,
Active NUMBER (1) CONSTRAINT NN_idelem4x742 NOT NULL,
Code VARCHAR2 (150) CONSTRAINT NN_idelem4x744 NOT NULL,
Description VARCHAR2 (150),
Sequence NUMBER (5) CONSTRAINT NN_idelem4x748 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.JobType (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x753 NOT NULL,
Active NUMBER (1) CONSTRAINT NN_idelem4x755 NOT NULL,
Code VARCHAR2 (150) CONSTRAINT NN_idelem4x757 NOT NULL,
Description VARCHAR2 (150),
Sequence NUMBER (5) CONSTRAINT NN_idelem4x761 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.Language (
ISO VARCHAR2 (15) CONSTRAINT NN_idelem4x766 NOT NULL,
Code VARCHAR2 (200) CONSTRAINT NN_idelem4x768 NOT NULL,
Description VARCHAR2 (200),
PRIMARY KEY (ISO) );

CREATE TABLE dwh_15a.MetricType (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x775 NOT NULL,
Active NUMBER (1) CONSTRAINT NN_idelem4x777 NOT NULL,
Code VARCHAR2 (150) CONSTRAINT NN_idelem4x779 NOT NULL,
Description VARCHAR2 (150),
Sequence NUMBER (5) CONSTRAINT NN_idelem4x783 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.NetworkJobField (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x788 NOT NULL,
Code VARCHAR2 (50) CONSTRAINT NN_idelem4x790 NOT NULL,
Complete NUMBER (1),
Level_ NUMBER (5) CONSTRAINT NN_idelem4x794 NOT NULL,
Name VARCHAR2 (765),
Sequence NUMBER (5),
Parent_Number NUMBER (18),
Status_Number NUMBER (18) CONSTRAINT NN_idelem4x802 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.NetworkLocation (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x807 NOT NULL,
Abbreviation VARCHAR2 (15),
Code VARCHAR2 (50),
Complete NUMBER (1) CONSTRAINT NN_idelem4x813 NOT NULL,
ISO3166Alpha3 VARCHAR2 (3),
LastModifiedOn TIMESTAMP,
Latitude NUMBER (30,10),
Level_ NUMBER (1) CONSTRAINT NN_idelem4x821 NOT NULL,
Longitude NUMBER (30,10),
Name VARCHAR2 (150) CONSTRAINT NN_idelem4x825 NOT NULL,
ZipCode VARCHAR2 (20),
Sequence NUMBER (5),
Parent_Number NUMBER (18),
Status_Number NUMBER (18) CONSTRAINT NN_idelem4x833 NOT NULL,
TimeZone_Number NUMBER (18),
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.Origin (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x840 NOT NULL,
Code VARCHAR2 (150) CONSTRAINT NN_idelem4x842 NOT NULL,
Description VARCHAR2 (150),
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.PhoneType (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x849 NOT NULL,
Description VARCHAR2 (150) CONSTRAINT NN_idelem4x851 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.ProfileImportance (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x856 NOT NULL,
Code VARCHAR2 (50) CONSTRAINT NN_idelem4x858 NOT NULL,
Description VARCHAR2 (150),
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.ProgramType (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x865 NOT NULL,
Code VARCHAR2 (150) CONSTRAINT NN_idelem4x867 NOT NULL,
Description VARCHAR2 (150),
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.RaterType (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x874 NOT NULL,
Code VARCHAR2 (50) CONSTRAINT NN_idelem4x876 NOT NULL,
Description VARCHAR2 (150),
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.RatingDimensionType (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x883 NOT NULL,
Code VARCHAR2 (50) CONSTRAINT NN_idelem4x885 NOT NULL,
Description VARCHAR2 (150),
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.Reassignment (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x892 NOT NULL,
Code VARCHAR2 (50) CONSTRAINT NN_idelem4x894 NOT NULL,
Description VARCHAR2 (150),
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.StudyLevel (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x901 NOT NULL,
Active NUMBER (1) CONSTRAINT NN_idelem4x903 NOT NULL,
Code VARCHAR2 (50) CONSTRAINT NN_idelem4x905 NOT NULL,
Description VARCHAR2 (765) CONSTRAINT NN_idelem4x907 NOT NULL,
Sequence NUMBER (5) CONSTRAINT NN_idelem4x909 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.TaleoTimeZone (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x914 NOT NULL,
TimezoneId VARCHAR2 (765) CONSTRAINT NN_idelem4x916 NOT NULL,
IsDisplacementOnly NUMBER (1) CONSTRAINT NN_idelem4x918 NOT NULL,
JavaTimeZone VARCHAR2 (765) CONSTRAINT NN_idelem4x920 NOT NULL,
OffsetDescription VARCHAR2 (765) CONSTRAINT NN_idelem4x922 NOT NULL,
OracleTimeZone VARCHAR2 (765) CONSTRAINT NN_idelem4x924 NOT NULL,
TimezoneDescription VARCHAR2 (765) CONSTRAINT NN_idelem4x926 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.TypeOfInstitution (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x931 NOT NULL,
Code VARCHAR2 (150) CONSTRAINT NN_idelem4x933 NOT NULL,
Description VARCHAR2 (150),
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.WillingnessToTravel (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x940 NOT NULL,
Code VARCHAR2 (50) CONSTRAINT NN_idelem4x942 NOT NULL,
Description VARCHAR2 (150),
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.WillRelocate (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x949 NOT NULL,
Code VARCHAR2 (50) CONSTRAINT NN_idelem4x951 NOT NULL,
Description VARCHAR2 (150),
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.CertificationRequirement (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x958 NOT NULL,
DisplaySequence NUMBER (10) CONSTRAINT NN_idelem4x960 NOT NULL,
Weight NUMBER (10) CONSTRAINT NN_idelem4x962 NOT NULL,
Certification_Number NUMBER (18) CONSTRAINT NN_idelem4x964 NOT NULL,
Importance_Number NUMBER (18) CONSTRAINT NN_idelem4x966 NOT NULL,
JobProfile_Number NUMBER (18) CONSTRAINT NN_idelem4x968 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.CompetencyRequirement (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x973 NOT NULL,
DisplaySequence NUMBER (10) CONSTRAINT NN_idelem4x975 NOT NULL,
Weight NUMBER (10) CONSTRAINT NN_idelem4x977 NOT NULL,
Competency_Number NUMBER (18) CONSTRAINT NN_idelem4x979 NOT NULL,
Importance_Number NUMBER (18) CONSTRAINT NN_idelem4x981 NOT NULL,
JobProfile_Number NUMBER (18) CONSTRAINT NN_idelem4x983 NOT NULL,
PerformanceRating_Number NUMBER (18) CONSTRAINT NN_idelem4x985 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.JobProfile (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x990 NOT NULL,
LastModifiedDate TIMESTAMP CONSTRAINT NN_idelem4x992 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.JobRole (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x997 NOT NULL,
Code VARCHAR2 (50) CONSTRAINT NN_idelem4x999 NOT NULL,
LastModifiedDate TIMESTAMP CONSTRAINT NN_idelem4x1001 NOT NULL,
Name VARCHAR2 (200),
JobField_Number NUMBER (18),
JobLevel_Number NUMBER (18) CONSTRAINT NN_idelem4x1007 NOT NULL,
JobProfile_Number NUMBER (18) CONSTRAINT NN_idelem4x1009 NOT NULL,
Status_Number NUMBER (18) CONSTRAINT NN_idelem4x1011 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.JobRoleDefinition (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x1016 NOT NULL,
Description CLOB,
DescriptionText CLOB,
Qualifications CLOB,
QualificationsText CLOB,
Responsabilities CLOB,
ResponsabilitiesText CLOB,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.JobRole_JobCodes (
JobRole_Number NUMBER (18) CONSTRAINT NN_idelem4x1033 NOT NULL,
JobCode VARCHAR2 (50) CONSTRAINT NN_idelem4x1035 NOT NULL,
PRIMARY KEY (JobRole_Number, JobCode) );

CREATE TABLE dwh_15a.Position (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x1040 NOT NULL,
Code VARCHAR2 (50) CONSTRAINT NN_idelem4x1042 NOT NULL,
Criticality NUMBER (18) CONSTRAINT NN_idelem4x1044 NOT NULL,
Description VARCHAR2 (1000),
IsOpen NUMBER (1) CONSTRAINT NN_idelem4x1048 NOT NULL,
LastModifiedDate TIMESTAMP CONSTRAINT NN_idelem4x1050 NOT NULL,
Name VARCHAR2 (200),
NbEmployees NUMBER (18) CONSTRAINT NN_idelem4x1054 NOT NULL,
TargetStartDate DATE,
Department_Number NUMBER (18),
Employee_Number NUMBER (18),
JobProfile_Number NUMBER (18) CONSTRAINT NN_idelem4x1062 NOT NULL,
JobRole_Number NUMBER (18) CONSTRAINT NN_idelem4x1064 NOT NULL,
Location_Number NUMBER (18),
Manager_Number NUMBER (18),
Organization_Number NUMBER (18),
ParentPosition_Number NUMBER (18),
Status_Number NUMBER (18) CONSTRAINT NN_idelem4x1074 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.RatingDimension (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x1079 NOT NULL,
Code VARCHAR2 (50) CONSTRAINT NN_idelem4x1081 NOT NULL,
Description VARCHAR2 (3000),
LastModifiedDate TIMESTAMP CONSTRAINT NN_idelem4x1085 NOT NULL,
Name VARCHAR2 (200),
CompetencyProvider_Number NUMBER (18),
RatingDimensionType_Number NUMBER (18) CONSTRAINT NN_idelem4x1091 NOT NULL,
Status_Number NUMBER (18) CONSTRAINT NN_idelem4x1093 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.RatingModel (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x1098 NOT NULL,
Code VARCHAR2 (50) CONSTRAINT NN_idelem4x1100 NOT NULL,
Description VARCHAR2 (3000),
LastModifiedDate TIMESTAMP CONSTRAINT NN_idelem4x1104 NOT NULL,
Name VARCHAR2 (200),
CompetencyProvider_Number NUMBER (18),
Status_Number NUMBER (18) CONSTRAINT NN_idelem4x1110 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.RatingModelDimension (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x1115 NOT NULL,
DisplaySequence NUMBER (10) CONSTRAINT NN_idelem4x1117 NOT NULL,
RatingDimension_Number NUMBER (18) CONSTRAINT NN_idelem4x1119 NOT NULL,
RatingModel_Number NUMBER (18) CONSTRAINT NN_idelem4x1121 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.RatingValue (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x1126 NOT NULL,
DisplaySequence NUMBER (10) CONSTRAINT NN_idelem4x1128 NOT NULL,
Name VARCHAR2 (100),
NumericValue NUMBER CONSTRAINT NN_idelem4x1132 NOT NULL,
RatingDimension_Number NUMBER (18) CONSTRAINT NN_idelem4x1134 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.TalentCompetency (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x1139 NOT NULL,
TalentUser_Number NUMBER (18) CONSTRAINT NN_idelem4x1141 NOT NULL,
AssessedSSA NUMBER (1) CONSTRAINT NN_idelem4x1143 NOT NULL,
Competency_Number NUMBER (18) CONSTRAINT NN_idelem4x1145 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.TalentCompetencyValue (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x1150 NOT NULL,
RatedDimension_Number NUMBER (18) CONSTRAINT NN_idelem4x1152 NOT NULL,
RatedValue_Number NUMBER (18) CONSTRAINT NN_idelem4x1154 NOT NULL,
RaterType_Number NUMBER (18) CONSTRAINT NN_idelem4x1156 NOT NULL,
TalentCompetency_Number NUMBER (18) CONSTRAINT NN_idelem4x1158 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.TalentUser (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x1163 NOT NULL,
LastModifiedDate TIMESTAMP CONSTRAINT NN_idelem4x1165 NOT NULL,
YearsInIndustry NUMBER (10),
YearsOfManagementExperience NUMBER (10),
ArUser_UserNo NUMBER (18),
Employee_Number NUMBER (18),
InterestIntlAssign_Number NUMBER (18),
Profile_Number NUMBER (18) CONSTRAINT NN_idelem4x1177 NOT NULL,
Reassignment_Number NUMBER (18),
WillingnessToTravel_Number NUMBER (18),
WillRelocate_Number NUMBER (18),
CareerSiteLanguage_ISO VARCHAR2 (15),
CorrespondenceLanguage_ISO VARCHAR2 (15),
DoNotEmail NUMBER (1),
LastReferralListAccessDate TIMESTAMP,
LastSubmissionListAccessDate TIMESTAMP,
PreferredTimeZone_Number NUMBER (18),
SendApplicationAcknowledgement NUMBER (1),
SendJobPostingNotification NUMBER (1),
SendMyJobAgentsNotice NUMBER (1),
SendRejectionLetterNotice NUMBER (1),
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.TalentUser_EmploymentStatuses (
TalentUser_Number NUMBER (18) CONSTRAINT NN_idelem4x1208 NOT NULL,
EmploymentStatus_Number NUMBER (18) CONSTRAINT NN_idelem4x1210 NOT NULL,
PRIMARY KEY (TalentUser_Number, EmploymentStatus_Number) );

CREATE TABLE dwh_15a.TalentUser_JobFields (
TalentUser_Number NUMBER (18) CONSTRAINT NN_idelem4x1215 NOT NULL,
JobField_Number NUMBER (18) CONSTRAINT NN_idelem4x1217 NOT NULL,
PRIMARY KEY (TalentUser_Number, JobField_Number) );

CREATE TABLE dwh_15a.TalentUser_JobLevels (
TalentUser_Number NUMBER (18) CONSTRAINT NN_idelem4x1222 NOT NULL,
JobLevel_Number NUMBER (18) CONSTRAINT NN_idelem4x1224 NOT NULL,
PRIMARY KEY (TalentUser_Number, JobLevel_Number) );

CREATE TABLE dwh_15a.TalentUser_JobSchedules (
TalentUser_Number NUMBER (18) CONSTRAINT NN_idelem4x1229 NOT NULL,
JobSchedule_Number NUMBER (18) CONSTRAINT NN_idelem4x1231 NOT NULL,
PRIMARY KEY (TalentUser_Number, JobSchedule_Number) );

CREATE TABLE dwh_15a.TalentUser_JobTypes (
TalentUser_Number NUMBER (18) CONSTRAINT NN_idelem4x1236 NOT NULL,
JobType_Number NUMBER (18) CONSTRAINT NN_idelem4x1238 NOT NULL,
PRIMARY KEY (TalentUser_Number, JobType_Number) );

CREATE TABLE dwh_15a.TalentUser_Locations (
TalentUser_Number NUMBER (18) CONSTRAINT NN_idelem4x1243 NOT NULL,
Location_Number NUMBER (18) CONSTRAINT NN_idelem4x1245 NOT NULL,
PRIMARY KEY (TalentUser_Number, Location_Number) );

CREATE TABLE dwh_15a.TalentUser_Organizations (
TalentUser_Number NUMBER (18) CONSTRAINT NN_idelem4x1250 NOT NULL,
Organization_Number NUMBER (18) CONSTRAINT NN_idelem4x1252 NOT NULL,
PRIMARY KEY (TalentUser_Number, Organization_Number) );

CREATE TABLE dwh_15a.TalentUser_StudyLevels (
TalentUser_Number NUMBER (18) CONSTRAINT NN_idelem4x1257 NOT NULL,
StudyLevel_Number NUMBER (18) CONSTRAINT NN_idelem4x1259 NOT NULL,
PRIMARY KEY (TalentUser_Number, StudyLevel_Number) );

CREATE TABLE dwh_15a.Approval (
No NUMBER (18) CONSTRAINT NN_idelem4x1264 NOT NULL,
CreationDate TIMESTAMP CONSTRAINT NN_idelem4x1266 NOT NULL,
Comment_ CLOB,
Sequence NUMBER (5) CONSTRAINT NN_idelem4x1270 NOT NULL,
Approbator_UserNo NUMBER (18) CONSTRAINT NN_idelem4x1272 NOT NULL,
ApprovalContext_No NUMBER (18) CONSTRAINT NN_idelem4x1274 NOT NULL,
ApprovalStatus_Number NUMBER (18) CONSTRAINT NN_idelem4x1276 NOT NULL,
OnBehalfOfUser_UserNo NUMBER (18),
PRIMARY KEY (No) );

CREATE TABLE dwh_15a.ApprovalContext (
No NUMBER (18) CONSTRAINT NN_idelem4x1283 NOT NULL,
CreationDate TIMESTAMP CONSTRAINT NN_idelem4x1285 NOT NULL,
ApprovalRequestorComment CLOB,
Owner_UserNo NUMBER (18) CONSTRAINT NN_idelem4x1289 NOT NULL,
PRIMARY KEY (No) );

CREATE TABLE dwh_15a.Candidate (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x1294 NOT NULL,
Address VARCHAR2 (100),
Address2 VARCHAR2 (100),
Anonymous NUMBER (1),
AvailabilityDate DATE,
Birthday DATE,
City VARCHAR2 (100),
CreationDate TIMESTAMP CONSTRAINT NN_idelem4x1308 NOT NULL,
CSWLatestDate TIMESTAMP,
DisqualifierResultDate TIMESTAMP,
EmailAddress VARCHAR2 (100),
EmployeeNumber VARCHAR2 (50),
Fax VARCHAR2 (50),
FirstName VARCHAR2 (255),
HasReferred NUMBER (1) CONSTRAINT NN_idelem4x1322 NOT NULL,
HomePhone VARCHAR2 (50),
Hourly NUMBER (1) CONSTRAINT NN_idelem4x1326 NOT NULL,
IdentificationMissing NUMBER (1),
InclusiveLastModifiedDate TIMESTAMP,
InHiringProcess NUMBER (1) CONSTRAINT NN_idelem4x1332 NOT NULL,
InternalApplication NUMBER (1) CONSTRAINT NN_idelem4x1334 NOT NULL,
IsApplicant NUMBER (1) CONSTRAINT NN_idelem4x1336 NOT NULL,
IsPersonalInfoMasked NUMBER (1) CONSTRAINT NN_idelem4x1338 NOT NULL,
LastModifiedDate TIMESTAMP,
LastName VARCHAR2 (255),
MiddleInitial VARCHAR2 (60),
MobilePhone VARCHAR2 (50),
NotifyByEmail NUMBER (1),
PagerPhone VARCHAR2 (50),
PersonalInfoValidated NUMBER (1) CONSTRAINT NN_idelem4x1352 NOT NULL,
Prefix VARCHAR2 (30),
ReferenceDate TIMESTAMP,
ReferenceEndDate TIMESTAMP,
Referred NUMBER (1),
Salary NUMBER (30,15),
SocialSecurityNumber VARCHAR2 (50),
Suffix VARCHAR2 (30),
WebSite VARCHAR2 (255),
WorkPhone VARCHAR2 (50),
ZipCode VARCHAR2 (20),
AdvanceNotice_Number NUMBER (18),
CityOfBirth VARCHAR2 (100),
MotherMaidenName VARCHAR2 (30),
CandidateReferrer_Number NUMBER (18),
Currency_Number NUMBER (18),
DisqualifierResult_Number NUMBER (18),
DriverLicenseNumber VARCHAR2 (50),
DriverLicenseLocation_Number NUMBER (18),
OwnerAgent_Number NUMBER (18),
PreferredPhone_Number NUMBER (18),
ReferralStatus_Number NUMBER (18),
ResidenceLocation_Number NUMBER (18),
TalentUser_Number NUMBER (18) CONSTRAINT NN_idelem4x1398 NOT NULL,
TimeZone_Number NUMBER (18),
AvailableHolidays NUMBER (1),
AvailableWeekends NUMBER (1),
HourlyPayRateExpected NUMBER (15,3),
HourlyPayRateCurrency_Number NUMBER (18),
HoursPerWeekPreferred_Number NUMBER (18),
HoursPerWeekWilling_Number NUMBER (18),
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.Candidate_JobShifts (
Candidate_Number NUMBER (18) CONSTRAINT NN_idelem4x1417 NOT NULL,
JobShift_Number NUMBER (18) CONSTRAINT NN_idelem4x1419 NOT NULL,
PRIMARY KEY (Candidate_Number, JobShift_Number) );

CREATE TABLE dwh_15a.CandidateUDF (
Candidate_Number NUMBER (18) CONSTRAINT NN_idelem4x1424 NOT NULL,
UDFDefinition_Entity VARCHAR2 (50) CONSTRAINT NN_idelem4x1426 NOT NULL,
UDFDefinition_ID VARCHAR2 (765) CONSTRAINT NN_idelem4x1428 NOT NULL,
Sequence NUMBER (5) CONSTRAINT NN_idelem4x1430 NOT NULL,
UDSElement_Number NUMBER (18),
Value CLOB,
PRIMARY KEY (Candidate_Number, UDFDefinition_Entity, UDFDefinition_ID, Sequence) );

CREATE TABLE dwh_15a.CandidateUpdate (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x1439 NOT NULL,
LargeStringValue CLOB,
Reference VARCHAR2 (255),
StringValue VARCHAR2 (1000),
CandidateEvent_Number NUMBER (18),
AppHistoryUpdateItem_Number NUMBER (18),
UDFDefinition_Entity VARCHAR2 (50),
UDFDefinition_ID VARCHAR2 (765),
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.CandidateAnswerUpdate (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x1458 NOT NULL,
Explanation CLOB,
PossibleAnswer_Number NUMBER (18),
Question_Number NUMBER (18),
AppHistoryAnswerItem_Number  NUMBER (18),
InfoFeeder_Number NUMBER (18),
Origin_Number NUMBER (18),
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.DiversityAnswer (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x1475 NOT NULL,
Candidate_Number NUMBER (18) CONSTRAINT NN_idelem4x1477 NOT NULL,
CreationDate TIMESTAMP CONSTRAINT NN_idelem4x1479 NOT NULL,
Question_Number NUMBER (18) CONSTRAINT NN_idelem4x1481 NOT NULL,
PossibleAnswer_Number NUMBER (18) CONSTRAINT NN_idelem4x1483 NOT NULL,
Origin_Number NUMBER (18),
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.MilitaryService (
Candidate_Number NUMBER (18) CONSTRAINT NN_idelem4x1490 NOT NULL,
DisplaySequence NUMBER (5) CONSTRAINT NN_idelem4x1492 NOT NULL,
Branch VARCHAR2 (50),
Country VARCHAR2 (100),
DischargeStatus VARCHAR2 (50),
EndDate DATE,
RankAchieved VARCHAR2 (50),
ServiceNumber VARCHAR2 (30),
ServiceStatus VARCHAR2 (50),
StartDate DATE,
PRIMARY KEY (Candidate_Number, DisplaySequence) );

CREATE TABLE dwh_15a.QuestionAnswer (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x1513 NOT NULL,
Candidate_Number NUMBER (18) CONSTRAINT NN_idelem4x1515 NOT NULL,
CreationDate TIMESTAMP CONSTRAINT NN_idelem4x1517 NOT NULL,
Question_Number NUMBER (18) CONSTRAINT NN_idelem4x1519 NOT NULL,
Answer_Number NUMBER (18),
Explanation CLOB,
DisqualifierResult_Number NUMBER (18),
InfoFeeder_Number NUMBER (18),
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.CSWMotive (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x1532 NOT NULL,
Available NUMBER (1) CONSTRAINT NN_idelem4x1534 NOT NULL,
Mnemonic VARCHAR2 (765) CONSTRAINT NN_idelem4x1536 NOT NULL,
Name VARCHAR2 (765),
Description VARCHAR2 (765),
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.CSWStatus (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x1545 NOT NULL,
Available NUMBER (1) CONSTRAINT NN_idelem4x1547 NOT NULL,
Description VARCHAR2 (765),
Mnemonic VARCHAR2 (765) CONSTRAINT NN_idelem4x1551 NOT NULL,
Name VARCHAR2 (765),
ApplicationState_Number NUMBER (18),
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.CSWStep (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x1560 NOT NULL,
Available NUMBER (1) CONSTRAINT NN_idelem4x1562 NOT NULL,
Description VARCHAR2 (765),
Mnemonic VARCHAR2 (765) CONSTRAINT NN_idelem4x1566 NOT NULL,
Name VARCHAR2 (765),
ShortName VARCHAR2 (150),
ApplicationState_Number NUMBER (18),
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.CSWWorkflow (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x1577 NOT NULL,
Available NUMBER (1) CONSTRAINT NN_idelem4x1579 NOT NULL,
Description VARCHAR2 (765),
IsDefault NUMBER (1) CONSTRAINT NN_idelem4x1583 NOT NULL,
Mnemonic VARCHAR2 (765) CONSTRAINT NN_idelem4x1585 NOT NULL,
Name VARCHAR2 (765),
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.DeletedApplication (
Application_Number NUMBER (18) CONSTRAINT NN_idelem4x1592 NOT NULL,
ExecutionDate TIMESTAMP CONSTRAINT NN_idelem4x1594 NOT NULL,
PRIMARY KEY (Application_Number) );

CREATE TABLE dwh_15a.DeletedCandidate (
Candidate_Number NUMBER (18) CONSTRAINT NN_idelem4x1599 NOT NULL,
ExecutionDate TIMESTAMP CONSTRAINT NN_idelem4x1601 NOT NULL,
PRIMARY KEY (Candidate_Number) );

CREATE TABLE dwh_15a.DeletedQuestion (
Question_Number NUMBER (18) CONSTRAINT NN_idelem4x1606 NOT NULL,
ExecutionDate TIMESTAMP CONSTRAINT NN_idelem4x1608 NOT NULL,
PRIMARY KEY (Question_Number) );

CREATE TABLE dwh_15a.DeletedRequisition (
Requisition_Number NUMBER (18) CONSTRAINT NN_idelem4x1613 NOT NULL,
ExecutionDate TIMESTAMP CONSTRAINT NN_idelem4x1615 NOT NULL,
PRIMARY KEY (Requisition_Number) );

CREATE TABLE dwh_15a.DeletedJobTemplate (
JobTemplate_Number NUMBER (18) CONSTRAINT NN_idelem4x1620 NOT NULL,
ExecutionDate TIMESTAMP CONSTRAINT NN_idelem4x1622 NOT NULL,
PRIMARY KEY (JobTemplate_Number) );

CREATE TABLE dwh_15a.MergedCandidate (
Candidate_Number NUMBER (18) CONSTRAINT NN_idelem4x1627 NOT NULL,
MasterCandidate_Number NUMBER (18) CONSTRAINT NN_idelem4x1629 NOT NULL,
ExecutionDate TIMESTAMP CONSTRAINT NN_idelem4x1631 NOT NULL,
PRIMARY KEY (Candidate_Number) );

CREATE TABLE dwh_15a.ApplicationMedium (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x1636 NOT NULL,
Code VARCHAR2 (150) CONSTRAINT NN_idelem4x1638 NOT NULL,
Description VARCHAR2 (150),
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.ApplicationState (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x1645 NOT NULL,
Description VARCHAR2 (150) CONSTRAINT NN_idelem4x1647 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.ApprovalStatus (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x1652 NOT NULL,
Description VARCHAR2 (150) CONSTRAINT NN_idelem4x1654 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.CandidateSelectionEvent (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x1659 NOT NULL,
Code VARCHAR2 (200) CONSTRAINT NN_idelem4x1661 NOT NULL,
Description VARCHAR2 (300),
DetailDescription VARCHAR2 (300),
Category_Number NUMBER (18) CONSTRAINT NN_idelem4x1667 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.CandidateSelectionEventCatg (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x1672 NOT NULL,
Code VARCHAR2 (150) CONSTRAINT NN_idelem4x1674 NOT NULL,
Description VARCHAR2 (150),
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.CandidateUpdateEvent (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x1681 NOT NULL,
Code VARCHAR2 (200),
Description VARCHAR2 (1000),
ResourceNumber NUMBER (18),
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.CitizenshipStatus (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x1692 NOT NULL,
Description VARCHAR2 (150) CONSTRAINT NN_idelem4x1694 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.CompletionLevel (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x1699 NOT NULL,
Code VARCHAR2 (150) CONSTRAINT NN_idelem4x1701 NOT NULL,
Description VARCHAR2 (150) CONSTRAINT NN_idelem4x1703 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.DisqualifierResult (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x1708 NOT NULL,
Description VARCHAR2 (150) CONSTRAINT NN_idelem4x1710 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.DiversityPossibleAnswerType (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x1715 NOT NULL,
Code VARCHAR2 (50) CONSTRAINT NN_idelem4x1717 NOT NULL,
Name VARCHAR2 (200),
Origin_Number NUMBER (18) CONSTRAINT NN_idelem4x1721 NOT NULL,
Status_Number NUMBER (18) CONSTRAINT NN_idelem4x1723 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.DiversityQuestionType (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x1728 NOT NULL,
Code VARCHAR2 (50) CONSTRAINT NN_idelem4x1730 NOT NULL,
Name VARCHAR2 (200),
Origin_Number NUMBER (18) CONSTRAINT NN_idelem4x1734 NOT NULL,
Status_Number NUMBER (18) CONSTRAINT NN_idelem4x1736 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.EmailState (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x1741 NOT NULL,
Code VARCHAR2 (150) CONSTRAINT NN_idelem4x1743 NOT NULL,
Description VARCHAR2 (150) CONSTRAINT NN_idelem4x1745 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.EmployeeStatus (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x1750 NOT NULL,
Description VARCHAR2 (150) CONSTRAINT NN_idelem4x1752 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.EmploymentEquityEstablishment (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x1757 NOT NULL,
Description VARCHAR2 (150) CONSTRAINT NN_idelem4x1759 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.EmploymentEquityJobCategory (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x1764 NOT NULL,
Description VARCHAR2 (150) CONSTRAINT NN_idelem4x1766 NOT NULL,
NetworkLocation_Number NUMBER (18) CONSTRAINT NN_idelem4x1768 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.EmploymentEquityJobGroup (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x1773 NOT NULL,
EEJobCategory_Number NUMBER (18) CONSTRAINT NN_idelem4x1775 NOT NULL,
Description VARCHAR2 (150) CONSTRAINT NN_idelem4x1777 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.EmploymentEquityQuestionType (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x1782 NOT NULL,
Description VARCHAR2 (150) CONSTRAINT NN_idelem4x1784 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.ExpectationType (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x1789 NOT NULL,
Description VARCHAR2 (150) CONSTRAINT NN_idelem4x1791 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.ExtensionMechanism (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x1796 NOT NULL,
Description VARCHAR2 (150) CONSTRAINT NN_idelem4x1798 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.HireType (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x1803 NOT NULL,
Active NUMBER (1) CONSTRAINT NN_idelem4x1805 NOT NULL,
Code VARCHAR2 (50) CONSTRAINT NN_idelem4x1807 NOT NULL,
Description VARCHAR2 (200),
Sequence NUMBER (5) CONSTRAINT NN_idelem4x1811 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.JobBoardType (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x1816 NOT NULL,
Description VARCHAR2 (150) CONSTRAINT NN_idelem4x1818 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.JobTemplateState (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x1823 NOT NULL,
Description VARCHAR2 (150) CONSTRAINT NN_idelem4x1825 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.Justification (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x1830 NOT NULL,
Active NUMBER (1) CONSTRAINT NN_idelem4x1832 NOT NULL,
Code VARCHAR2 (150) CONSTRAINT NN_idelem4x1834 NOT NULL,
Description VARCHAR2 (150),
Sequence NUMBER (5) CONSTRAINT NN_idelem4x1838 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.MeetingAttendeeRole (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x1843 NOT NULL,
Description VARCHAR2 (150) CONSTRAINT NN_idelem4x1845 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.MeetingReminderDuration (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x1850 NOT NULL,
Description VARCHAR2 (150) CONSTRAINT NN_idelem4x1852 NOT NULL,
MeetingDuration VARCHAR2 (150) CONSTRAINT NN_idelem4x1854 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.MeetingType (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x1859 NOT NULL,
Description VARCHAR2 (150) CONSTRAINT NN_idelem4x1861 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.MessageDeliveryTransport (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x1866 NOT NULL,
Description VARCHAR2 (150) CONSTRAINT NN_idelem4x1868 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.OfferStatus (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x1873 NOT NULL,
Description VARCHAR2 (150) CONSTRAINT NN_idelem4x1875 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.OfferTitle (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x1880 NOT NULL,
Description VARCHAR2 (150) CONSTRAINT NN_idelem4x1882 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.OvertimeStatus (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x1887 NOT NULL,
Description VARCHAR2 (150) CONSTRAINT NN_idelem4x1889 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.PayFrequencyBasis (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x1894 NOT NULL,
Description VARCHAR2 (150) CONSTRAINT NN_idelem4x1896 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.QuestionType (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x1901 NOT NULL,
Description VARCHAR2 (150) CONSTRAINT NN_idelem4x1903 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.RecruitmentSourceState (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x1908 NOT NULL,
Code VARCHAR2 (150) CONSTRAINT NN_idelem4x1910 NOT NULL,
Description VARCHAR2 (150),
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.RecruitmentSourceType (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x1917 NOT NULL,
Code VARCHAR2 (150) CONSTRAINT NN_idelem4x1919 NOT NULL,
Description VARCHAR2 (150),
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.RecruitmentSourceVisibility (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x1926 NOT NULL,
Code VARCHAR2 (150) CONSTRAINT NN_idelem4x1928 NOT NULL,
Description VARCHAR2 (150),
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.ReferenceType (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x1935 NOT NULL,
Description VARCHAR2 (150) CONSTRAINT NN_idelem4x1937 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.ReferralStatus (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x1942 NOT NULL,
Code VARCHAR2 (150) CONSTRAINT NN_idelem4x1944 NOT NULL,
Description VARCHAR2 (150),
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.RelationshipLength (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x1951 NOT NULL,
Description VARCHAR2 (150) CONSTRAINT NN_idelem4x1953 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.RequestMoreInfoState (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x1958 NOT NULL,
Description VARCHAR2 (150) CONSTRAINT NN_idelem4x1960 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.RequisitionParentState (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x1965 NOT NULL,
Description VARCHAR2 (150) CONSTRAINT NN_idelem4x1967 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.RequisitionState (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x1972 NOT NULL,
Description VARCHAR2 (150) CONSTRAINT NN_idelem4x1974 NOT NULL,
ParentState_Number NUMBER (18) CONSTRAINT NN_idelem4x1976 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.SourcingRequestStatus (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x1981 NOT NULL,
Description VARCHAR2 (150) CONSTRAINT NN_idelem4x1983 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.StartDate (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x1988 NOT NULL,
Active NUMBER (1) CONSTRAINT NN_idelem4x1990 NOT NULL,
Code VARCHAR2 (150) CONSTRAINT NN_idelem4x1992 NOT NULL,
Description VARCHAR2 (150),
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.UDFType (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x1999 NOT NULL,
Description VARCHAR2 (150) CONSTRAINT NN_idelem4x2001 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.VacationType (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x2006 NOT NULL,
Description VARCHAR2 (150) CONSTRAINT NN_idelem4x2008 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.WorkAction (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x2013 NOT NULL,
Description VARCHAR2 (150) CONSTRAINT NN_idelem4x2015 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.WorkConditionHourLevel (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x2020 NOT NULL,
Description VARCHAR2 (150) CONSTRAINT NN_idelem4x2022 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.WorkerType (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x2027 NOT NULL,
Description VARCHAR2 (150) CONSTRAINT NN_idelem4x2029 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.Meeting (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x2034 NOT NULL,
Comment_ VARCHAR2 (765),
CreationDate TIMESTAMP CONSTRAINT NN_idelem4x2038 NOT NULL,
EndTime TIMESTAMP CONSTRAINT NN_idelem4x2040 NOT NULL,
LastUpdate TIMESTAMP,
Location VARCHAR2 (765),
StartTime TIMESTAMP,
Subject VARCHAR2 (765) CONSTRAINT NN_idelem4x2048 NOT NULL,
MeetingReminderDuration_Number NUMBER (18),
TaleoTimeZone_Number NUMBER (18) CONSTRAINT NN_idelem4x2052 NOT NULL,
Application_Number NUMBER (18),
MeetingType_Number NUMBER (18) CONSTRAINT NN_idelem4x2056 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.MeetingAttendees (
Number_ NUMBER (30) CONSTRAINT NN_idelem4x2061 NOT NULL,
Attendee_UserNo NUMBER (18),
Candidate_Number NUMBER (18),
Meeting_Number NUMBER (18) CONSTRAINT NN_idelem4x2067 NOT NULL,
UnregisteredAttendeeEmail VARCHAR2 (100),
MeetingAttendeeRole_Number NUMBER (18),
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.Message (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x2076 NOT NULL,
Body CLOB,
BccText VARCHAR2 (300),
CcText VARCHAR2 (300),
Comment_ VARCHAR2 (765),
DateSent TIMESTAMP CONSTRAINT NN_idelem4x2086 NOT NULL,
FromText VARCHAR2 (300),
Locale_ISO VARCHAR2 (15),
Subject VARCHAR2 (765),
ToText VARCHAR2 (300),
DeliveryTransport_Number NUMBER (18) CONSTRAINT NN_idelem4x2096 NOT NULL,
MessageTemplate_Number NUMBER (18),
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.MessageTemplate (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x2103 NOT NULL,
Code VARCHAR2 (50),
Name VARCHAR2 (200),
Subject VARCHAR2 (765),
Status_Number NUMBER (18) CONSTRAINT NN_idelem4x2111 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.ApplicationTrackingOfferItem (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x2116 NOT NULL,
CommentText CLOB,
CreationDate TIMESTAMP CONSTRAINT NN_idelem4x2120 NOT NULL,
Detail CLOB,
EventDate TIMESTAMP,
IsNewStartDateTentative NUMBER (1),
IsOldOfferAccepted NUMBER (1),
IsOldStartDateTentative NUMBER (1),
NewExpirationDate TIMESTAMP,
NewStartDate TIMESTAMP,
OfferAcceptedDate TIMESTAMP,
OfferExtendedDate TIMESTAMP,
OldExpirationDate TIMESTAMP,
OldStartDate TIMESTAMP,
ProfileLocale_ISO VARCHAR2 (15),
Event_Number NUMBER (18),
Offer_Number NUMBER (18) CONSTRAINT NN_idelem4x2148 NOT NULL,
Message_Number NUMBER (18),
Substitute_UserNo NUMBER (18),
User_UserNo NUMBER (18) CONSTRAINT NN_idelem4x2154 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.ATOfferItem_OfferMotives (
ATOfferItem_Number NUMBER (18) CONSTRAINT NN_idelem4x2159 NOT NULL,
OfferMotive_Number NUMBER (18) CONSTRAINT NN_idelem4x2161 NOT NULL,
PRIMARY KEY (ATOfferItem_Number, OfferMotive_Number) );

CREATE TABLE dwh_15a.CompetitiveOffer (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x2166 NOT NULL,
AnnualBonus VARCHAR2 (150),
CaptureDate TIMESTAMP CONSTRAINT NN_idelem4x2170 NOT NULL,
CarAllowance VARCHAR2 (150),
CommissionAmount VARCHAR2 (150),
CompetitiveJobDescription VARCHAR2 (765),
CompetitiveJobTitle VARCHAR2 (765),
CompetitiveOfferDate TIMESTAMP,
CompetitiveOtherEmployer VARCHAR2 (765),
CompetitiveSequence NUMBER (5),
DaysPerWeek NUMBER (5,2),
ExpenseAccount VARCHAR2 (150),
HoursPerDay NUMBER (5,2),
LastModifiedDate TIMESTAMP,
Name VARCHAR2 (765),
Notes VARCHAR2 (765),
OtherBonus VARCHAR2 (150),
OtherCompensation VARCHAR2 (150),
PayValue NUMBER (30,15),
RelocationAmount NUMBER (30,15),
Salary NUMBER (30,15),
SignOnBonus NUMBER (30,15),
StockAmount VARCHAR2 (150),
StockOption VARCHAR2 (150),
TargetStartDate TIMESTAMP,
Vacation NUMBER (5),
Candidate_Number NUMBER (18),
CommissionType_Number NUMBER (18),
CommissionType_UDS_Number NUMBER (18),
CompetitiveCieEmployer_Number NUMBER (18),
CompetitiveCieJobField_Number NUMBER (18),
CompetitiveCieLocation_Number NUMBER (18),
Currency_Number NUMBER (18),
OfferTitle_Number NUMBER (18) CONSTRAINT NN_idelem4x2232 NOT NULL,
PayFrequencyBasis_Number NUMBER (18),
RelocationType_Number NUMBER (18),
RelocationType_UDS_Number NUMBER (18),
StockOptionType_Number NUMBER (18),
StockOptionType_UDS_Number NUMBER (18),
StockType_Number NUMBER (18),
StockType_UDS_Number NUMBER (18),
VacationType_Number NUMBER (18),
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.CompetitiveOfferUDF (
CompetitiveOffer_Number NUMBER (18) CONSTRAINT NN_idelem4x2253 NOT NULL,
UDFDefinition_Entity VARCHAR2 (50) CONSTRAINT NN_idelem4x2255 NOT NULL,
UDFDefinition_ID VARCHAR2 (765) CONSTRAINT NN_idelem4x2257 NOT NULL,
Sequence NUMBER (5) CONSTRAINT NN_idelem4x2259 NOT NULL,
UDSElement_Number NUMBER (18),
Value CLOB,
PRIMARY KEY (CompetitiveOffer_Number, UDFDefinition_Entity, UDFDefinition_ID, Sequence) );

CREATE TABLE dwh_15a.CurrentJob (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x2268 NOT NULL,
AnnualBonus VARCHAR2 (150),
CaptureDate TIMESTAMP CONSTRAINT NN_idelem4x2272 NOT NULL,
CarAllowance VARCHAR2 (150),
CommissionAmount VARCHAR2 (150),
CurrentJobDescription VARCHAR2 (765),
CurrentJobTitle VARCHAR2 (765),
CurrentJobOfferDate TIMESTAMP,
CurrentJobOtherEmployer VARCHAR2 (765),
DaysPerWeek NUMBER (5,2),
ExpenseAccount VARCHAR2 (150),
HoursPerDay NUMBER (5,2),
LastModifiedDate TIMESTAMP,
Name VARCHAR2 (765),
Notes VARCHAR2 (765),
OtherBonus VARCHAR2 (150),
OtherCompensation VARCHAR2 (150),
PayValue NUMBER (30,15),
RelocationAmount NUMBER (30,15),
Salary NUMBER (30,15),
SignOnBonus NUMBER (30,15),
StockAmount VARCHAR2 (150),
StockOption VARCHAR2 (150),
TargetStartDate TIMESTAMP,
Vacation NUMBER (5),
Candidate_Number NUMBER (18),
CommissionType_Number NUMBER (18),
CommissionType_UDS_Number NUMBER (18),
Currency_Number NUMBER (18),
CurrentJobCieEmployer_Number NUMBER (18),
CurrentJobCieJobField_Number NUMBER (18),
CurrentJobCieLocation_Number NUMBER (18),
OfferTitle_Number NUMBER (18) CONSTRAINT NN_idelem4x2332 NOT NULL,
PayFrequencyBasis_Number NUMBER (18),
RelocationType_Number NUMBER (18),
RelocationType_UDS_Number NUMBER (18),
StockOptionType_Number NUMBER (18),
StockOptionType_UDS_Number NUMBER (18),
StockType_Number NUMBER (18),
StockType_UDS_Number NUMBER (18),
VacationType_Number NUMBER (18),
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.CurrentJobUDF (
CurrentJob_Number NUMBER (18) CONSTRAINT NN_idelem4x2353 NOT NULL,
UDFDefinition_Entity VARCHAR2 (50) CONSTRAINT NN_idelem4x2355 NOT NULL,
UDFDefinition_ID VARCHAR2 (765) CONSTRAINT NN_idelem4x2357 NOT NULL,
Sequence NUMBER (5) CONSTRAINT NN_idelem4x2359 NOT NULL,
UDSElement_Number NUMBER (18),
Value CLOB,
PRIMARY KEY (CurrentJob_Number, UDFDefinition_Entity, UDFDefinition_ID, Sequence) );

CREATE TABLE dwh_15a.Expectation (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x2368 NOT NULL,
AnnualBonus VARCHAR2 (150),
CaptureDate TIMESTAMP CONSTRAINT NN_idelem4x2372 NOT NULL,
CarAllowance VARCHAR2 (150),
CommissionAmount VARCHAR2 (150),
DaysPerWeek NUMBER (5,2),
ExpectationOfferDate TIMESTAMP,
ExpenseAccount VARCHAR2 (150),
HoursPerDay NUMBER (5,2),
LastModifiedDate TIMESTAMP,
Name VARCHAR2 (765),
Notes VARCHAR2 (765),
OtherBonus VARCHAR2 (150),
OtherCompensation VARCHAR2 (150),
PayValue NUMBER (30,15),
RelocationAmount NUMBER (30,15),
Salary NUMBER (30,15),
SignOnBonus NUMBER (30,15),
StockAmount VARCHAR2 (150),
StockOption VARCHAR2 (150),
TargetStartDate TIMESTAMP,
Vacation NUMBER (5),
Application_Number NUMBER (18),
CommissionType_Number NUMBER (18),
CommissionType_UDS_Number NUMBER (18),
Currency_Number NUMBER (18),
ExpectationType_Number NUMBER (18) CONSTRAINT NN_idelem4x2420 NOT NULL,
OfferTitle_Number NUMBER (18) CONSTRAINT NN_idelem4x2422 NOT NULL,
PayFrequencyBasis_Number NUMBER (18),
RelocationType_Number NUMBER (18),
RelocationType_UDS_Number NUMBER (18),
StockOptionType_Number NUMBER (18),
StockOptionType_UDS_Number NUMBER (18),
StockType_Number NUMBER (18),
StockType_UDS_Number NUMBER (18),
VacationType_Number NUMBER (18),
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.ExpectationUDF (
Expectation_Number NUMBER (18) CONSTRAINT NN_idelem4x2443 NOT NULL,
UDFDefinition_Entity VARCHAR2 (50) CONSTRAINT NN_idelem4x2445 NOT NULL,
UDFDefinition_ID VARCHAR2 (765) CONSTRAINT NN_idelem4x2447 NOT NULL,
Sequence NUMBER (5) CONSTRAINT NN_idelem4x2449 NOT NULL,
UDSElement_Number NUMBER (18),
Value CLOB,
PRIMARY KEY (Expectation_Number, UDFDefinition_Entity, UDFDefinition_ID, Sequence) );

CREATE TABLE dwh_15a.Offer (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x2458 NOT NULL,
AcceptedDate TIMESTAMP,
ActualStartDate TIMESTAMP,
AnnualBonus VARCHAR2 (150),
ApprovedDate TIMESTAMP,
CaptureDate TIMESTAMP CONSTRAINT NN_idelem4x2468 NOT NULL,
CarAllowance VARCHAR2 (150),
CommissionAmount VARCHAR2 (150),
DaysPerWeek NUMBER (5,2),
ExpenseAccount VARCHAR2 (150),
ExpirationDate TIMESTAMP,
ExtendDate TIMESTAMP,
HoursPerDay NUMBER (5,2),
LastModifiedDate TIMESTAMP,
Name VARCHAR2 (765),
Notes VARCHAR2 (765),
OtherBonus VARCHAR2 (150),
OtherCompensation VARCHAR2 (150),
PayValue NUMBER (30,15),
RefusedDate TIMESTAMP,
RelocationAmount NUMBER (30,15),
Salary NUMBER (30,15),
Sequence NUMBER (5),
SignOnBonus NUMBER (30,15),
StockAmount VARCHAR2 (150),
StockOption VARCHAR2 (150),
TargetStartDate TIMESTAMP,
Tentative NUMBER (1),
Vacation NUMBER (5),
Application_Number NUMBER (18),
ApprovalContext_No NUMBER (18),
CommissionType_Number NUMBER (18),
CommissionType_UDS_Number NUMBER (18),
Currency_Number NUMBER (18),
ExtensionMechanism_Number NUMBER (18),
OfferTitle_Number NUMBER (18) CONSTRAINT NN_idelem4x2528 NOT NULL,
PayFrequencyBasis_Number NUMBER (18),
RelocationType_Number NUMBER (18),
RelocationType_UDS_Number NUMBER (18),
Status_Number NUMBER (18),
StockOptionType_Number NUMBER (18),
StockOptionType_UDS_Number NUMBER (18),
StockType_Number NUMBER (18),
StockType_UDS_Number NUMBER (18),
VacationType_Number NUMBER (18),
UserAfterApprvSuccess_UserNo NUMBER (18),
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.OfferUDF (
Offer_Number NUMBER (18) CONSTRAINT NN_idelem4x2553 NOT NULL,
UDFDefinition_Entity VARCHAR2 (50) CONSTRAINT NN_idelem4x2555 NOT NULL,
UDFDefinition_ID VARCHAR2 (765) CONSTRAINT NN_idelem4x2557 NOT NULL,
Sequence NUMBER (5) CONSTRAINT NN_idelem4x2559 NOT NULL,
UDSElement_Number NUMBER (18),
Value CLOB,
PRIMARY KEY (Offer_Number, UDFDefinition_Entity, UDFDefinition_ID, Sequence) );

CREATE TABLE dwh_15a.RequisitionOfferParameter (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x2568 NOT NULL,
AnnualBonus VARCHAR2 (150),
CaptureDate TIMESTAMP CONSTRAINT NN_idelem4x2572 NOT NULL,
CarAllowance VARCHAR2 (150),
CommissionAmount VARCHAR2 (150),
DaysPerWeek NUMBER (5,2),
ExpenseAccount VARCHAR2 (150),
HoursPerDay NUMBER (5,2),
LastModifiedDate TIMESTAMP,
MaximumSalary NUMBER (30,15),
MaximumSalaryReference NUMBER (30,15),
Name VARCHAR2 (765),
Notes VARCHAR2 (765),
OtherBonus VARCHAR2 (150),
OtherCompensation VARCHAR2 (150),
PayValue NUMBER (30,15),
RelocationAmount NUMBER (30,15),
Salary NUMBER (30,15),
SignOnBonus NUMBER (30,15),
StockAmount VARCHAR2 (150),
StockOption VARCHAR2 (150),
TargetStartDate TIMESTAMP,
Vacation NUMBER (5),
CommissionType_Number NUMBER (18),
CommissionType_UDS_Number NUMBER (18),
Currency_Number NUMBER (18),
OfferTitle_Number NUMBER (18) CONSTRAINT NN_idelem4x2620 NOT NULL,
PayFrequencyBasis_Number NUMBER (18),
RelocationType_Number NUMBER (18),
RelocationType_UDS_Number NUMBER (18),
StockOptionType_Number NUMBER (18),
StockOptionType_UDS_Number NUMBER (18),
StockType_Number NUMBER (18),
StockType_UDS_Number NUMBER (18),
VacationType_Number NUMBER (18),
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.RequisitionOfferParameterUDF (
ReqOfferParameter_Number NUMBER (18) CONSTRAINT NN_idelem4x2641 NOT NULL,
UDFDefinition_Entity VARCHAR2 (50) CONSTRAINT NN_idelem4x2643 NOT NULL,
UDFDefinition_ID VARCHAR2 (765) CONSTRAINT NN_idelem4x2645 NOT NULL,
Sequence NUMBER (5) CONSTRAINT NN_idelem4x2647 NOT NULL,
UDSElement_Number NUMBER (18),
Value CLOB,
PRIMARY KEY (ReqOfferParameter_Number, UDFDefinition_Entity, UDFDefinition_ID, Sequence) );

CREATE TABLE dwh_15a.Application (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x2656 NOT NULL,
BillRate NUMBER,
ChargeSalesTax NUMBER (1),
CSWLatestDate TIMESTAMP,
DateOfEntry TIMESTAMP,
DisqualifierResultDate TIMESTAMP,
EEOInfoRequestDate TIMESTAMP,
ExpirationDate TIMESTAMP,
Grade NUMBER (18),
IsOnRestrictedStep NUMBER (1),
IsSubmissionExpired NUMBER (1),
LastModifiedDate TIMESTAMP CONSTRAINT NN_idelem4x2678 NOT NULL,
LastSubmissionDate TIMESTAMP,
LetterSendRegretLetter TIMESTAMP,
NewApplication NUMBER (1),
NbOfDayBeforeSubmisnExpiration NUMBER (3),
PayRate NUMBER,
RmiCompletedDate TIMESTAMP,
RmiSentDate TIMESTAMP,
SupplierOrderNumber VARCHAR2 (300),
SupplierWorkerID VARCHAR2 (300),
AceAlertStatus_Number NUMBER (18),
ApplicationState_Number NUMBER (18),
Candidate_Number NUMBER (18) CONSTRAINT NN_idelem4x2702 NOT NULL,
CSWLatestStatus_Number NUMBER (18),
CSWLatestStep_Number NUMBER (18),
CSWWorkflow_Number NUMBER (18),
DisqualifierResult_Number NUMBER (18),
PreslnResults_HasAllRequired NUMBER (1),
PreslnResults_IsAceCandidate NUMBER (1),
PreslnResults_NbAchievedAssets NUMBER (5),
PreslnResults_NbAchievedReqd NUMBER (5),
PreslnResults_Score NUMBER (5),
ProfileInformation_Number NUMBER (18) CONSTRAINT NN_idelem4x2722 NOT NULL,
Requisition_Number NUMBER (18) CONSTRAINT NN_idelem4x2724 NOT NULL,
RmiStatus_Number NUMBER (18) CONSTRAINT NN_idelem4x2726 NOT NULL,
WorkerType_Number NUMBER (18),
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.Application_LocationsAppliedTo (
Application_Number NUMBER (18) CONSTRAINT NN_idelem4x2733 NOT NULL,
Location_Number NUMBER (18) CONSTRAINT NN_idelem4x2735 NOT NULL,
PRIMARY KEY (Application_Number, Location_Number) );

CREATE TABLE dwh_15a.ApplicationCertification (
No NUMBER (18) CONSTRAINT NN_idelem4x2740 NOT NULL,
ProfileInformation_Number NUMBER (18) CONSTRAINT NN_idelem4x2742 NOT NULL,
DateReceived DATE,
DisplaySequence NUMBER (5) CONSTRAINT NN_idelem4x2746 NOT NULL,
ExpirationDate DATE,
IssuingOrganization VARCHAR2 (100),
NumberId VARCHAR2 (30),
OtherCertificationName VARCHAR2 (100),
Certification_Number NUMBER (18),
Location_Number NUMBER (18),
PRIMARY KEY (No) );

CREATE TABLE dwh_15a.ApplicationHistoryAnswerItem (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x2763 NOT NULL,
CommentText CLOB,
CreationDate TIMESTAMP CONSTRAINT NN_idelem4x2767 NOT NULL,
Detail CLOB,
EventDate TIMESTAMP,
ProfileLocale_ISO VARCHAR2 (15),
Event_Number NUMBER (18),
Message_Number NUMBER (18),
ProfileInformation_Number NUMBER (18) CONSTRAINT NN_idelem4x2779 NOT NULL,
Substitute_UserNo NUMBER (18),
User_UserNo NUMBER (18) CONSTRAINT NN_idelem4x2783 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.ApplicationHistoryUpdateItem (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x2788 NOT NULL,
CommentText CLOB,
CreationDate TIMESTAMP CONSTRAINT NN_idelem4x2792 NOT NULL,
Detail CLOB,
EventDate TIMESTAMP,
ProfileLocale_ISO VARCHAR2 (15),
Event_Number NUMBER (18),
Message_Number NUMBER (18),
ProfileInformation_Number NUMBER (18) CONSTRAINT NN_idelem4x2804 NOT NULL,
Substitute_UserNo NUMBER (18),
User_UserNo NUMBER (18) CONSTRAINT NN_idelem4x2808 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.ApplicationTrackingCSWItem (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x2813 NOT NULL,
CommentText CLOB,
CreationDate TIMESTAMP CONSTRAINT NN_idelem4x2817 NOT NULL,
Detail CLOB,
EventDate TIMESTAMP,
IsConditional NUMBER (1),
ProfileLocale_ISO VARCHAR2 (15),
Event_Number NUMBER (18),
Message_Number NUMBER (18),
ProfileInformation_Number NUMBER (18) CONSTRAINT NN_idelem4x2831 NOT NULL,
Status_Number NUMBER (18),
Step_Number NUMBER (18),
Substitute_UserNo NUMBER (18),
User_UserNo NUMBER (18) CONSTRAINT NN_idelem4x2839 NOT NULL,
Workflow_Number NUMBER (18),
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.AppTrackingCSWItem_CSWMotives (
ATCSWItem_Number NUMBER (18) CONSTRAINT NN_idelem4x2846 NOT NULL,
CSWMotive_Number NUMBER (18) CONSTRAINT NN_idelem4x2848 NOT NULL,
PRIMARY KEY (ATCSWItem_Number, CSWMotive_Number) );

CREATE TABLE dwh_15a.Experience (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x2853 NOT NULL,
ProfileInformation_Number NUMBER (18) CONSTRAINT NN_idelem4x2855 NOT NULL,
BeginDate DATE,
CurrentEmployer NUMBER (1) CONSTRAINT NN_idelem4x2859 NOT NULL,
DisplaySequence NUMBER (5) CONSTRAINT NN_idelem4x2861 NOT NULL,
EndDate DATE,
LastModifiedDate TIMESTAMP,
NameWhileEmployed VARCHAR2 (100),
OtherEmployerName VARCHAR2 (100),
OtherJobTitle VARCHAR2 (100),
PermissionToContact NUMBER (1),
ReasonForLeaving CLOB,
Responsibility CLOB,
Supervisor VARCHAR2 (100),
SupervisorEmail VARCHAR2 (100),
SupervisorPhone VARCHAR2 (50),
SupervisorTitle VARCHAR2 (100),
Employer_Number NUMBER (18),
JobFunction_Number NUMBER (18),
Location_Number NUMBER (18),
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.ExperienceUDF (
Experience_Number NUMBER (18) CONSTRAINT NN_idelem4x2896 NOT NULL,
UDFDefinition_Entity VARCHAR2 (50) CONSTRAINT NN_idelem4x2898 NOT NULL,
UDFDefinition_ID VARCHAR2 (765) CONSTRAINT NN_idelem4x2900 NOT NULL,
Sequence NUMBER (5) CONSTRAINT NN_idelem4x2902 NOT NULL,
UDSElement_Number NUMBER (18),
Value CLOB,
PRIMARY KEY (Experience_Number, UDFDefinition_Entity, UDFDefinition_ID, Sequence) );

CREATE TABLE dwh_15a.ProfileInformation (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x2911 NOT NULL,
IsApplication NUMBER (1) CONSTRAINT NN_idelem4x2913 NOT NULL,
ApplicationDate TIMESTAMP CONSTRAINT NN_idelem4x2915 NOT NULL,
Completed NUMBER (1) CONSTRAINT NN_idelem4x2917 NOT NULL,
CompletedDate TIMESTAMP,
CreationDate TIMESTAMP CONSTRAINT NN_idelem4x2921 NOT NULL,
ExperienceValidated NUMBER (1) CONSTRAINT NN_idelem4x2923 NOT NULL,
IsInternal NUMBER (1) CONSTRAINT NN_idelem4x2925 NOT NULL,
LastModifiedDate TIMESTAMP CONSTRAINT NN_idelem4x2927 NOT NULL,
LastTrackingDate TIMESTAMP,
Locale_ISO VARCHAR2 (15) CONSTRAINT NN_idelem4x2931 NOT NULL,
RecruitementSourceAutoFilled NUMBER (1),
RecruitmentSourceDetail VARCHAR2 (1000),
RequestedLocale_ISO VARCHAR2 (15),
ResumeValidated NUMBER (1) CONSTRAINT NN_idelem4x2939 NOT NULL,
SendAcknowledgement TIMESTAMP,
StudyValidated NUMBER (1) CONSTRAINT NN_idelem4x2943 NOT NULL,
BckgndCheck_Consent NUMBER (1),
BckgndCheck_InquiryReportReqd NUMBER (1),
Candidate_Number NUMBER (18) CONSTRAINT NN_idelem4x2949 NOT NULL,
ErtAckgmntStatus_Number NUMBER (18) CONSTRAINT NN_idelem4x2951 NOT NULL,
ErtThankyouStatus_Number NUMBER (18) CONSTRAINT NN_idelem4x2953 NOT NULL,
ESignature_DateTimeSigned TIMESTAMP,
ESignature_EmailAddress VARCHAR2 (100),
ESignature_Identifier VARCHAR2 (100),
ESignature_Initials VARCHAR2 (10),
ESignature_IPAddress VARCHAR2 (40),
ESignature_Name VARCHAR2 (100),
InfoFeeder_Number NUMBER (18) CONSTRAINT NN_idelem4x2967 NOT NULL,
InitialAppMedium_Number NUMBER (18),
Medium_Number NUMBER (18) CONSTRAINT NN_idelem4x2971 NOT NULL,
PrivacyStatement_Agreed NUMBER (1),
RecruitmentSource_Number NUMBER (18),
RecruitmentSourceEvent_Number NUMBER (18),
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.Reference (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x2982 NOT NULL,
ProfileInformation_Number NUMBER (18) CONSTRAINT NN_idelem4x2984 NOT NULL,
Company VARCHAR2 (100),
DisplaySequence NUMBER (5) CONSTRAINT NN_idelem4x2988 NOT NULL,
EmailAddress VARCHAR2 (100),
FirstName VARCHAR2 (255),
LastName VARCHAR2 (255),
MiddleInitial VARCHAR2 (60),
PhoneNumber VARCHAR2 (50),
Relationship VARCHAR2 (100),
Title VARCHAR2 (100),
Country_Number NUMBER (18),
ReferenceType_Number NUMBER (18),
RelationshipLength_Number NUMBER (18),
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.Study (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x3013 NOT NULL,
ProfileInformation_Number NUMBER (18) CONSTRAINT NN_idelem4x3015 NOT NULL,
DisplaySequence NUMBER (5) CONSTRAINT NN_idelem4x3017 NOT NULL,
Gpa NUMBER (7),
GpaRange NUMBER (7),
Graduated NUMBER (1),
GraduationDate DATE,
GraduationDateProjected NUMBER (1),
LastModifiedDate TIMESTAMP,
NameWhileAttending VARCHAR2 (100),
OtherCourseTitle VARCHAR2 (255),
OtherInstitutionCity VARCHAR2 (100),
OtherInstitutionName VARCHAR2 (100),
StartDate DATE,
Institution_Number NUMBER (18),
OtherInstnLocation_Number NUMBER (18),
Program_Number NUMBER (18),
ProgramType_Number NUMBER (18),
StudyLevel_Number NUMBER (18),
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.StudyUDF (
Study_Number NUMBER (18) CONSTRAINT NN_idelem4x3054 NOT NULL,
UDFDefinition_Entity VARCHAR2 (50) CONSTRAINT NN_idelem4x3056 NOT NULL,
UDFDefinition_ID VARCHAR2 (765) CONSTRAINT NN_idelem4x3058 NOT NULL,
Sequence NUMBER (5) CONSTRAINT NN_idelem4x3060 NOT NULL,
UDSElement_Number NUMBER (18),
Value CLOB,
PRIMARY KEY (Study_Number, UDFDefinition_Entity, UDFDefinition_ID, Sequence) );

CREATE TABLE dwh_15a.DiversityPossibleAnswer (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x3069 NOT NULL,
Question_Number NUMBER (18) CONSTRAINT NN_idelem4x3071 NOT NULL,
Description VARCHAR2 (1000),
Sequence NUMBER (5) CONSTRAINT NN_idelem4x3075 NOT NULL,
PossibleAnswerType_Number NUMBER (18) CONSTRAINT NN_idelem4x3077 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.DiversityQuestion (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x3082 NOT NULL,
Code VARCHAR2 (50),
Name VARCHAR2 (200),
QuestionType_Number NUMBER (18) CONSTRAINT NN_idelem4x3088 NOT NULL,
RegulationQuestionType_Number NUMBER (18) CONSTRAINT NN_idelem4x3090 NOT NULL,
Status_Number NUMBER (18) CONSTRAINT NN_idelem4x3092 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.PossibleAnswer (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x3097 NOT NULL,
Question_Number NUMBER (18) CONSTRAINT NN_idelem4x3099 NOT NULL,
Description VARCHAR2 (1000),
DisplaySequence NUMBER (5) CONSTRAINT NN_idelem4x3103 NOT NULL,
NotSpecified NUMBER (1) CONSTRAINT NN_idelem4x3105 NOT NULL,
DisqualifierResult_Number NUMBER (18),
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.Question (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x3112 NOT NULL,
Code VARCHAR2 (50),
CreationDate TIMESTAMP CONSTRAINT NN_idelem4x3116 NOT NULL,
Description VARCHAR2 (1000),
ExplanationIntro VARCHAR2 (255),
LastModifiedDate TIMESTAMP,
Name VARCHAR2 (200),
EEOUSAVersion NUMBER (18),
EEQuestionType_Number NUMBER (18),
Status_Number NUMBER (18) CONSTRAINT NN_idelem4x3130 NOT NULL,
TypeOfQuestion_Number NUMBER (18) CONSTRAINT NN_idelem4x3132 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.JobInformation (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x3137 NOT NULL,
AdditionalInformation VARCHAR2 (1000),
AutoDeclineCandidates NUMBER (1) CONSTRAINT NN_idelem4x3141 NOT NULL,
AutoRejectCandidates NUMBER (1) CONSTRAINT NN_idelem4x3143 NOT NULL,
BillRateMedian NUMBER (15,3),
BillRateNotToExceed NUMBER (15,3),
CreationDate TIMESTAMP CONSTRAINT NN_idelem4x3149 NOT NULL,
DescriptionBaseLocale NUMBER (1),
DescriptionExternalHTML CLOB,
DescriptionInternalHTML CLOB,
ExternalBonusAmount NUMBER (30,15),
ExternalBonusTracking NUMBER (1),
ExternalQualificationHTML CLOB,
HighQuartileSalary NUMBER (30,15),
InternalBonusAmount NUMBER (30,15),
InternalBonusTracking NUMBER (1),
InternalQualificationHTML CLOB,
JobBoardDescription VARCHAR2 (1000),
JobGrade VARCHAR2 (50),
LastModifiedDate TIMESTAMP,
LowQuartileSalary NUMBER (30,15),
MidPointSalary NUMBER (30,15),
NumberToHire NUMBER (3),
OtherCosts VARCHAR2 (50),
RelocationCosts VARCHAR2 (50),
SourcingBudget VARCHAR2 (50),
Title VARCHAR2 (255),
TravelCosts VARCHAR2 (50),
UnlimitedHire NUMBER (1) CONSTRAINT NN_idelem4x3193 NOT NULL,
BonusCurrency_Number NUMBER (18),
BudgetCurrency_Number NUMBER (18),
CitizenshipStatus_Number NUMBER (18),
ContingentCurrency_Number NUMBER (18),
Creator_UserNo NUMBER (18) CONSTRAINT NN_idelem4x3203 NOT NULL,
CSWWorkflow_Number NUMBER (18),
EEJobGroup_Number NUMBER (18),
EEJobCategory_Number NUMBER (18),
EEEstablishment_Number NUMBER (18),
HireType_Number NUMBER (18) CONSTRAINT NN_idelem4x3213 NOT NULL,
JobField_Number NUMBER (18) CONSTRAINT NN_idelem4x3215 NOT NULL,
JobInformationGroup_Number NUMBER (18),
JobLevel_Number NUMBER (18),
JobRole_Number NUMBER (18),
JobSchedule_Number NUMBER (18),
JobShift_Number NUMBER (18),
JobType_Number NUMBER (18),
OfferParameter_Number NUMBER (18) CONSTRAINT NN_idelem4x3229 NOT NULL,
Organization_Number NUMBER (18) CONSTRAINT NN_idelem4x3231 NOT NULL,
OvertimeStatus_Number NUMBER (18),
PrimaryLocation_Number NUMBER (18) CONSTRAINT NN_idelem4x3235 NOT NULL,
Program_Number NUMBER (18),
RecruiterOwner_UserNo NUMBER (18) CONSTRAINT NN_idelem4x3239 NOT NULL,
StudyLevel_Number NUMBER (18),
WillingnessToTravel_Number NUMBER (18),
EmploymentStatus_Number NUMBER (18),
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.JobInformation_OtherLocations (
JobInformation_Number NUMBER (18) CONSTRAINT NN_idelem4x3250 NOT NULL,
Location_Number NUMBER (18) CONSTRAINT NN_idelem4x3252 NOT NULL,
PRIMARY KEY (JobInformation_Number, Location_Number) );

CREATE TABLE dwh_15a.JobInformationUDF (
JobInformation_Number NUMBER (18) CONSTRAINT NN_idelem4x3257 NOT NULL,
UDFDefinition_Entity VARCHAR2 (50) CONSTRAINT NN_idelem4x3259 NOT NULL,
UDFDefinition_ID VARCHAR2 (765) CONSTRAINT NN_idelem4x3261 NOT NULL,
Sequence NUMBER (5) CONSTRAINT NN_idelem4x3263 NOT NULL,
UDSElement_Number NUMBER (18),
Value CLOB,
PRIMARY KEY (JobInformation_Number, UDFDefinition_Entity, UDFDefinition_ID, Sequence) );

CREATE TABLE dwh_15a.JobTemplate (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x3272 NOT NULL,
EffectiveFrom TIMESTAMP,
EffectiveTill TIMESTAMP,
JobCode VARCHAR2 (150),
BaseJobTemplate_Number NUMBER (18),
Department_Number NUMBER (18),
JobInformation_Number NUMBER (18) CONSTRAINT NN_idelem4x3284 NOT NULL,
State_Number NUMBER (18) CONSTRAINT NN_idelem4x3286 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.Requisition (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x3291 NOT NULL,
AbstractInfo VARCHAR2 (1000),
AceCandidateAlertEnabled NUMBER (1) CONSTRAINT NN_idelem4x3295 NOT NULL,
AceCandidateMinimalScore NUMBER (3),
AceCandidateNumberRelevant NUMBER (3),
ClosingDateExternal TIMESTAMP,
ClosingDateInternal TIMESTAMP,
ContestNumber VARCHAR2 (20) CONSTRAINT NN_idelem4x3305 NOT NULL,
DailyRecruitingReportEnabled NUMBER (1) CONSTRAINT NN_idelem4x3307 NOT NULL,
ExtendMoreOffers NUMBER (1) CONSTRAINT NN_idelem4x3309 NOT NULL,
HasBeenApproved NUMBER (1) CONSTRAINT NN_idelem4x3311 NOT NULL,
HotJob NUMBER (1) CONSTRAINT NN_idelem4x3313 NOT NULL,
ManagerRequisitionTitle VARCHAR2 (255),
OpeningDateExternal TIMESTAMP,
OpeningDateInternal TIMESTAMP,
PositionString VARCHAR2 (255),
PreventPosting NUMBER (1) CONSTRAINT NN_idelem4x3323 NOT NULL,
RequestMoreInfoAssetValue NUMBER (3),
RequestMoreInfoByAssetEnabled NUMBER (1),
RequestMoreInfoByScoreEnabled NUMBER (1),
RequestMoreInfoScoreValue NUMBER (3),
TargetStartDate TIMESTAMP,
ApprovalContext_No NUMBER (18),
BaseJobTemplate_Number NUMBER (18),
CompletionLevel_Number NUMBER (18) CONSTRAINT NN_idelem4x3339 NOT NULL,
ContactEmailExternal_UserNo NUMBER (18),
ContactEmailInternal_UserNo NUMBER (18),
ContactNameExternal_UserNo NUMBER (18),
ContactNameInternal_UserNo NUMBER (18),
Department_Number NUMBER (18),
HiringManager_UserNo NUMBER (18),
HiringManagerAssistant_UserNo NUMBER (18),
JobInformation_Number NUMBER (18) CONSTRAINT NN_idelem4x3355 NOT NULL,
Justification_Number NUMBER (18),
RecruiterAssistant_UserNo NUMBER (18),
ResumeState_Number NUMBER (18),
State_Number NUMBER (18) CONSTRAINT NN_idelem4x3363 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.Requisition_Collaborators (
Requisition_Number NUMBER (18) CONSTRAINT NN_idelem4x3368 NOT NULL,
Collaborator_UserNo NUMBER (18) CONSTRAINT NN_idelem4x3370 NOT NULL,
PRIMARY KEY (Requisition_Number, Collaborator_UserNo) );

CREATE TABLE dwh_15a.RequisitionEvent (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x3375 NOT NULL,
Requisition_Number NUMBER (18) CONSTRAINT NN_idelem4x3377 NOT NULL,
WorkAction_Number NUMBER (18),
EventDate TIMESTAMP CONSTRAINT NN_idelem4x3381 NOT NULL,
Comments VARCHAR2 (3000),
Operator_UserNo NUMBER (18) CONSTRAINT NN_idelem4x3385 NOT NULL,
SubstituteOperator_UserNo NUMBER (18),
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.RequisitionHistory (
Requisition_Number NUMBER (18) CONSTRAINT NN_idelem4x3392 NOT NULL,
CreationDate TIMESTAMP CONSTRAINT NN_idelem4x3394 NOT NULL,
RequisitionState_Number NUMBER (18) CONSTRAINT NN_idelem4x3396 NOT NULL,
EndDate TIMESTAMP,
Creator_UserNo NUMBER (18) CONSTRAINT NN_idelem4x3400 NOT NULL,
RecruiterOwner_UserNo NUMBER (18) CONSTRAINT NN_idelem4x3402 NOT NULL,
PRIMARY KEY (Requisition_Number, CreationDate, RequisitionState_Number) );

CREATE TABLE dwh_15a.Agency (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x3407 NOT NULL,
ContactName VARCHAR2 (100),
ContactPhoneNumber VARCHAR2 (50),
EmailAddress VARCHAR2 (100),
RecruitmentSource_Number NUMBER (18) CONSTRAINT NN_idelem4x3415 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.Agent (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x3420 NOT NULL,
Address VARCHAR2 (100),
Address2 VARCHAR2 (100),
City VARCHAR2 (100),
CorrespondenceLocale_ISO VARCHAR2 (15) CONSTRAINT NN_idelem4x3428 NOT NULL,
CreationDate TIMESTAMP CONSTRAINT NN_idelem4x3430 NOT NULL,
EmailAddress VARCHAR2 (100),
Fax VARCHAR2 (50),
FirstName VARCHAR2 (255),
HomePhone VARCHAR2 (50),
LastName VARCHAR2 (255),
MobilePhone VARCHAR2 (50),
PagerPhone VARCHAR2 (50),
WorkPhone VARCHAR2 (50),
Zip VARCHAR2 (20),
Agency_Number NUMBER (18) CONSTRAINT NN_idelem4x3450 NOT NULL,
RecruitmentSource_Number NUMBER (18) CONSTRAINT NN_idelem4x3452 NOT NULL,
TimeZone_Number NUMBER (18),
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.JobBoard (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x3459 NOT NULL,
IsPaying NUMBER (1) CONSTRAINT NN_idelem4x3461 NOT NULL,
JobboardType_Number NUMBER (18) CONSTRAINT NN_idelem4x3463 NOT NULL,
RecruitmentSource_Number NUMBER (18) CONSTRAINT NN_idelem4x3465 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.RecruitmentSource (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x3470 NOT NULL,
Description VARCHAR2 (765),
PartnerId VARCHAR2 (100),
NetworkLocation_Number NUMBER (18) CONSTRAINT NN_idelem4x3476 NOT NULL,
ObjectOrigin_Number NUMBER (18) CONSTRAINT NN_idelem4x3478 NOT NULL,
ParentSource_Number NUMBER (18),
State_Number NUMBER (18) CONSTRAINT NN_idelem4x3482 NOT NULL,
Type_Number NUMBER (18) CONSTRAINT NN_idelem4x3484 NOT NULL,
Visibility_Number NUMBER (18) CONSTRAINT NN_idelem4x3486 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.RecruitmentSourceEvent (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x3491 NOT NULL,
Source_Number NUMBER (18) CONSTRAINT NN_idelem4x3493 NOT NULL,
Cost NUMBER (10,2),
Description VARCHAR2 (50),
EndDate TIMESTAMP,
ExternalContactEmail VARCHAR2 (100),
ExternalContactName VARCHAR2 (255),
ExternalContactPhone VARCHAR2 (50),
ID VARCHAR2 (50) CONSTRAINT NN_idelem4x3507 NOT NULL,
StartDate TIMESTAMP CONSTRAINT NN_idelem4x3509 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.RecruitSource_JobFields (
RecruitmentSource_Number NUMBER (18) CONSTRAINT NN_idelem4x3514 NOT NULL,
JobField_Number NUMBER (18) CONSTRAINT NN_idelem4x3516 NOT NULL,
PRIMARY KEY (RecruitmentSource_Number, JobField_Number) );

CREATE TABLE dwh_15a.RecruitSource_Locations (
RecruitmentSource_Number NUMBER (18) CONSTRAINT NN_idelem4x3521 NOT NULL,
Location_Number NUMBER (18) CONSTRAINT NN_idelem4x3523 NOT NULL,
PRIMARY KEY (RecruitmentSource_Number, Location_Number) );

CREATE TABLE dwh_15a.RecruitSource_Organizations (
RecruitmentSource_Number NUMBER (18) CONSTRAINT NN_idelem4x3528 NOT NULL,
Organization_Number NUMBER (18) CONSTRAINT NN_idelem4x3530 NOT NULL,
PRIMARY KEY (RecruitmentSource_Number, Organization_Number) );

CREATE TABLE dwh_15a.SourcingRequestAgent (
Requisition_Number NUMBER (18) CONSTRAINT NN_idelem4x3535 NOT NULL,
Agent_Number NUMBER (18) CONSTRAINT NN_idelem4x3537 NOT NULL,
CloseDate TIMESTAMP,
OpenDate TIMESTAMP,
SourcingRequestStatus_Number NUMBER (18) CONSTRAINT NN_idelem4x3543 NOT NULL,
PRIMARY KEY (Requisition_Number, Agent_Number) );

CREATE TABLE dwh_15a.SourcingRequest (
Requisition_Number NUMBER (18) CONSTRAINT NN_idelem4x3548 NOT NULL,
JobBoard_Number NUMBER (18) CONSTRAINT NN_idelem4x3550 NOT NULL,
CreationDate TIMESTAMP,
ApplyOnlineEnabled NUMBER (1) CONSTRAINT NN_idelem4x3554 NOT NULL,
CloseDate TIMESTAMP,
OpenDate TIMESTAMP CONSTRAINT NN_idelem4x3558 NOT NULL,
SourcingRequestStatus_Number NUMBER (18) CONSTRAINT NN_idelem4x3560 NOT NULL,
PRIMARY KEY (Requisition_Number, JobBoard_Number) );

CREATE TABLE dwh_15a.SourcingRequestHistory (
Requisition_Number NUMBER (18) CONSTRAINT NN_idelem4x3565 NOT NULL,
JobBoard_Number NUMBER (18) CONSTRAINT NN_idelem4x3567 NOT NULL,
CreationDate TIMESTAMP CONSTRAINT NN_idelem4x3569 NOT NULL,
CloseDate TIMESTAMP,
OpenDate TIMESTAMP CONSTRAINT NN_idelem4x3573 NOT NULL,
SourcingRequestStatus_Number NUMBER (18) CONSTRAINT NN_idelem4x3575 NOT NULL,
PRIMARY KEY (Requisition_Number, JobBoard_Number, CreationDate) );

CREATE TABLE dwh_15a.UDFDefinition (
Entity VARCHAR2 (90) CONSTRAINT NN_idelem4x3580 NOT NULL,
ID VARCHAR2 (765) CONSTRAINT NN_idelem4x3582 NOT NULL,
Cardinality NUMBER (2) CONSTRAINT NN_idelem4x3584 NOT NULL,
Description VARCHAR2 (765) CONSTRAINT NN_idelem4x3586 NOT NULL,
Type_Number NUMBER (5) CONSTRAINT NN_idelem4x3588 NOT NULL,
UserDefinedSelection_Number NUMBER (18),
PRIMARY KEY (Entity, ID) );

CREATE TABLE dwh_15a.UDSElement (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x3595 NOT NULL,
UserDefinedSelection_Number NUMBER (18) CONSTRAINT NN_idelem4x3597 NOT NULL,
Active NUMBER (1) CONSTRAINT NN_idelem4x3599 NOT NULL,
Code VARCHAR2 (50),
Complete NUMBER (1) CONSTRAINT NN_idelem4x3603 NOT NULL,
Description VARCHAR2 (765),
EffectiveFrom TIMESTAMP,
EffectiveUntil TIMESTAMP,
LastModifiedDate TIMESTAMP,
Sequence NUMBER (5) CONSTRAINT NN_idelem4x3613 NOT NULL,
PRIMARY KEY (Number_, UserDefinedSelection_Number) );

CREATE TABLE dwh_15a.UserDefinedSelection (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x3618 NOT NULL,
Code VARCHAR2 (50),
EffectiveDatingEnabled NUMBER (1) CONSTRAINT NN_idelem4x3622 NOT NULL,
Large NUMBER (1) CONSTRAINT NN_idelem4x3624 NOT NULL,
Name VARCHAR2 (765),
Origin_Number NUMBER (18) CONSTRAINT NN_idelem4x3628 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a. (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x3633 NOT NULL,
Code VARCHAR2 (100),
Description VARCHAR2 (1000),
Sequence NUMBER (5),
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.Citizenship (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x3644 NOT NULL,
Code VARCHAR2 (100),
Description VARCHAR2 (1000),
Sequence NUMBER (5),
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.DocumentTitle1 (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x3655 NOT NULL,
Code VARCHAR2 (100) CONSTRAINT NN_idelem4x3657 NOT NULL,
Description VARCHAR2 (1000) CONSTRAINT NN_idelem4x3659 NOT NULL,
Sequence NUMBER (5),
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.DocumentTitleB (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x3666 NOT NULL,
Code VARCHAR2 (100) CONSTRAINT NN_idelem4x3668 NOT NULL,
Description VARCHAR2 (1000) CONSTRAINT NN_idelem4x3670 NOT NULL,
Sequence NUMBER (5),
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.DocumentTitleC (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x3677 NOT NULL,
Code VARCHAR2 (100) CONSTRAINT NN_idelem4x3679 NOT NULL,
Description VARCHAR2 (1000) CONSTRAINT NN_idelem4x3681 NOT NULL,
Sequence NUMBER (5),
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.ESignatureType (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x3688 NOT NULL,
Description VARCHAR2 (255) CONSTRAINT NN_idelem4x3690 NOT NULL,
RessourceNumber NUMBER (18) CONSTRAINT NN_idelem4x3692 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.ExecutionState (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x3697 NOT NULL,
Description VARCHAR2 (255),
RessourceNumber NUMBER (18),
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.PriorityType (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x3706 NOT NULL,
Description VARCHAR2 (255) CONSTRAINT NN_idelem4x3708 NOT NULL,
RessourceNumber NUMBER (18) CONSTRAINT NN_idelem4x3710 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.TaskType (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x3715 NOT NULL,
Description VARCHAR2 (255) CONSTRAINT NN_idelem4x3717 NOT NULL,
RessourceNumber NUMBER (18) CONSTRAINT NN_idelem4x3719 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.Process (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x3724 NOT NULL,
StartDate TIMESTAMP,
EndDate TIMESTAMP,
Progress NUMBER (3),
Definition_Number NUMBER (18) CONSTRAINT NN_idelem4x3732 NOT NULL,
State_Number NUMBER (18) CONSTRAINT NN_idelem4x3734 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.ProcessDefinition (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x3739 NOT NULL,
Code VARCHAR2 (765),
Description VARCHAR2 (765),
Name VARCHAR2 (765),
Status_Number NUMBER (18) CONSTRAINT NN_idelem4x3747 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.Process_Steps (
Process_Number NUMBER (18) CONSTRAINT NN_idelem4x3752 NOT NULL,
Step_Number NUMBER (18) CONSTRAINT NN_idelem4x3754 NOT NULL,
PRIMARY KEY (Process_Number, Step_Number) );

CREATE TABLE dwh_15a.Step (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x3759 NOT NULL,
StartDate TIMESTAMP,
EndDate TIMESTAMP,
Definition_Number NUMBER (18) CONSTRAINT NN_idelem4x3765 NOT NULL,
Task_Number NUMBER (18),
State_Number NUMBER (18) CONSTRAINT NN_idelem4x3769 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.StepDefinition (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x3774 NOT NULL,
Name VARCHAR2 (765) CONSTRAINT NN_idelem4x3776 NOT NULL,
Description VARCHAR2 (765),
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.Task (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x3783 NOT NULL,
AssignmentDate TIMESTAMP,
Code VARCHAR2 (765),
Comments VARCHAR2 (765),
CreationDate TIMESTAMP CONSTRAINT NN_idelem4x3791 NOT NULL,
DueDate TIMESTAMP,
Name VARCHAR2 (765),
RsData NUMBER (1),
PriorityType_Number NUMBER (18) CONSTRAINT NN_idelem4x3799 NOT NULL,
Type_Number NUMBER (18),
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.Task_Assignees (
Task_Number NUMBER (18) CONSTRAINT NN_idelem4x3806 NOT NULL,
Assignee_UserNo NUMBER (18) CONSTRAINT NN_idelem4x3808 NOT NULL,
PRIMARY KEY (Task_Number, Assignee_UserNo) );

CREATE TABLE dwh_15a.TransitionProcess (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x3813 NOT NULL,
Mentor_UserNo NUMBER (18),
Process_Number NUMBER (18),
ProcessSubject_Number NUMBER (18) CONSTRAINT NN_idelem4x3819 NOT NULL,
ProfileInformation_Number NUMBER (18),
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.TransitionProcessUDF (
TransitionProcess_Number NUMBER (18) CONSTRAINT NN_idelem4x3826 NOT NULL,
UDFDefinition_Entity VARCHAR2 (50) CONSTRAINT NN_idelem4x3828 NOT NULL,
UDFDefinition_ID VARCHAR2 (765) CONSTRAINT NN_idelem4x3830 NOT NULL,
Sequence NUMBER (5) CONSTRAINT NN_idelem4x3832 NOT NULL,
UDSElement_Code VARCHAR2 (50),
Value CLOB,
PRIMARY KEY (TransitionProcess_Number, UDFDefinition_Entity, UDFDefinition_ID, Sequence) );

CREATE TABLE dwh_15a.TransitionProcess_Esignatures (
TransitionProcess_Number NUMBER (18) CONSTRAINT NN_idelem4x3841 NOT NULL,
Esignature_Number NUMBER (18) CONSTRAINT NN_idelem4x3843 NOT NULL,
PRIMARY KEY (TransitionProcess_Number, Esignature_Number) );

CREATE TABLE dwh_15a.ESignature (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x3848 NOT NULL,
FirstName VARCHAR2 (255) CONSTRAINT NN_idelem4x3850 NOT NULL,
IpAddress VARCHAR2 (50) CONSTRAINT NN_idelem4x3852 NOT NULL,
IsValid NUMBER (1) CONSTRAINT NN_idelem4x3854 NOT NULL,
LastName CLOB CONSTRAINT NN_idelem4x3856 NOT NULL,
SignatureDate TIMESTAMP CONSTRAINT NN_idelem4x3858 NOT NULL,
Value VARCHAR2 (765) CONSTRAINT NN_idelem4x3860 NOT NULL,
ESignatureDefinition_Number NUMBER (18) CONSTRAINT NN_idelem4x3862 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.ESignatureDefinition (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x3867 NOT NULL,
Code VARCHAR2 (255) CONSTRAINT NN_idelem4x3869 NOT NULL,
Name VARCHAR2 (255) CONSTRAINT NN_idelem4x3871 NOT NULL,
ShowValue NUMBER (1) CONSTRAINT NN_idelem4x3873 NOT NULL,
ESignatureType_Number NUMBER (18) CONSTRAINT NN_idelem4x3875 NOT NULL,
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a.ProcessSubject (
Number_ NUMBER (18) CONSTRAINT NN_idelem4x3880 NOT NULL,
TalentUser_Number NUMBER (18) CONSTRAINT NN_idelem4x3882 NOT NULL,
DirectDeposit_Number NUMBER (18),
Citizenship_Number NUMBER (18),
I9AlienAdmissionNo VARCHAR2 (200),
I9AlienNo VARCHAR2 (400),
I9AlienNo2 VARCHAR2 (400),
I9AutToWorkUntilDate TIMESTAMP,
I9EmployeeApartment VARCHAR2 (100),
I9EmployeeOtherNames VARCHAR2 (1000),
I9ForeignPassportCountry VARCHAR2 (400),
I9ForeignPassportNo VARCHAR2 (100),
DocumentA1DocumentId VARCHAR2 (200),
DocumentA1ExpirationDate TIMESTAMP,
DocumentA1IssuingAuthority VARCHAR2 (200),
DocumentTitleA1_Number NUMBER (18),
DocumentA2DocumentId VARCHAR2 (200),
DocumentA2ExpirationDate TIMESTAMP,
DocumentA2IssuingAuthority VARCHAR2 (200),
DocumentTitleA2_Number NUMBER (18),
DocumentA3DocumentId VARCHAR2 (200),
DocumentA3ExpirationDate TIMESTAMP,
DocumentA3IssuingAuthority VARCHAR2 (200),
DocumentTitleA3_Number NUMBER (18),
DocumentBDocumentId VARCHAR2 (200),
DocumentBExpirationDate TIMESTAMP,
DocumentBIssuingAuthority VARCHAR2 (200),
DocumentTitleB_Number NUMBER (18),
DocumentCDocumentId VARCHAR2 (200),
DocumentCExpirationDate TIMESTAMP,
DocumentCIssuingAuthority VARCHAR2 (200),
DocumentTitleC_Number NUMBER (18),
I9EmployerAddress VARCHAR2 (1000),
I9EmployerCity VARCHAR2 (400),
I9EmployerName VARCHAR2 (1000),
I9EmployerRepFirstName VARCHAR2 (1000),
I9EmployerReprLastName VARCHAR2 (1000),
I9EmployerRepTitle VARCHAR2 (1000),
I9EmployerState VARCHAR2 (2),
I9EmployerStreetAddress VARCHAR2 (400),
I9EmployerZipCode VARCHAR2 (100),
I9PreparerAddress VARCHAR2 (1000),
I9PreparerCity VARCHAR2 (400),
I9PreparerFirstName VARCHAR2 (1000),
I9PreparerLastName VARCHAR2 (1000),
I9PreparerPrintName VARCHAR2 (1000),
I9PreparerState VARCHAR2 (2),
I9PreparerStreetAddress VARCHAR2 (400),
I9PreparerZipCode VARCHAR2 (100),
PRIMARY KEY (Number_) );

CREATE TABLE dwh_15a. (
ProcessSubject_Number NUMBER (18) CONSTRAINT NN_idelem4x3981 NOT NULL,
DirectDeposit_Number NUMBER (18) CONSTRAINT NN_idelem4x3983 NOT NULL,
PRIMARY KEY (ProcessSubject_Number, DirectDeposit_Number) );

CREATE TABLE dwh_15a.ProcessSubjectUDF (
ProcessSubject_Number NUMBER (18) CONSTRAINT NN_idelem4x3988 NOT NULL,
UDFDefinition_Entity VARCHAR2 (50) CONSTRAINT NN_idelem4x3990 NOT NULL,
UDFDefinition_ID VARCHAR2 (765) CONSTRAINT NN_idelem4x3992 NOT NULL,
Sequence NUMBER (5) CONSTRAINT NN_idelem4x3994 NOT NULL,
UDSElement_Code VARCHAR2 (50),
Value CLOB,
PRIMARY KEY (ProcessSubject_Number, UDFDefinition_Entity, UDFDefinition_ID, Sequence) );

CREATE TABLE dwh_15a.DirectDeposit (
DirectDeposit_Number NUMBER (18) CONSTRAINT NN_idelem4x4003 NOT NULL,
folio VARCHAR2 (50) CONSTRAINT NN_idelem4x4005 NOT NULL,
InstitutionName VARCHAR2 (765) CONSTRAINT NN_idelem4x4007 NOT NULL,
PayDistribution NUMBER (18) CONSTRAINT NN_idelem4x4009 NOT NULL,
TransitNumber NUMBER (18),
PRIMARY KEY (DirectDeposit_Number) );

CREATE TABLE dwh_15a. (
 );

ALTER TABLE dwh_15a.Competency
ADD CONSTRAINT FK_idelem4x21 FOREIGN KEY (CompetencyGroup_Number) REFERENCES dwh_15a.CompetencyGroup (Number_);
ALTER TABLE dwh_15a.Competency
ADD CONSTRAINT FK_idelem4x23 FOREIGN KEY (CompetencyProvider_Number) REFERENCES dwh_15a.CompetencyProvider (Number_);
ALTER TABLE dwh_15a.Competency
ADD CONSTRAINT FK_idelem4x25 FOREIGN KEY (CompetencyType_Number) REFERENCES dwh_15a.CompetencyType (Number_);
ALTER TABLE dwh_15a.Competency
ADD CONSTRAINT FK_idelem4x27 FOREIGN KEY (DefaultCompetencyType_Number) REFERENCES dwh_15a.CompetencyType (Number_);
ALTER TABLE dwh_15a.Competency
ADD CONSTRAINT FK_idelem4x29 FOREIGN KEY (PrimaryNetworkJobField_Number) REFERENCES dwh_15a.NetworkJobField (Number_);
ALTER TABLE dwh_15a.Competency
ADD CONSTRAINT FK_idelem4x31 FOREIGN KEY (RatingModel_Number) REFERENCES dwh_15a.RatingModel (Number_);
ALTER TABLE dwh_15a.Competency
ADD CONSTRAINT FK_idelem4x33 FOREIGN KEY (Status_Number) REFERENCES dwh_15a.AdminEntityStatus (Number_);

ALTER TABLE dwh_15a.Competency_CptcyCategories
ADD CONSTRAINT FK_idelem4x38 FOREIGN KEY (Competency_Number) REFERENCES dwh_15a.Competency (Number_);
ALTER TABLE dwh_15a.Competency_CptcyCategories
ADD CONSTRAINT FK_idelem4x40 FOREIGN KEY (CompetencyCategory_Number) REFERENCES dwh_15a.CompetencyCategory (Number_);

ALTER TABLE dwh_15a.Competency_NetworkJobFields
ADD CONSTRAINT FK_idelem4x45 FOREIGN KEY (Competency_Number) REFERENCES dwh_15a.Competency (Number_);
ALTER TABLE dwh_15a.Competency_NetworkJobFields
ADD CONSTRAINT FK_idelem4x47 FOREIGN KEY (NetworkJobField_Number) REFERENCES dwh_15a.NetworkJobField (Number_);

ALTER TABLE dwh_15a.SubCompetency
ADD CONSTRAINT FK_idelem4x58 FOREIGN KEY (ParentCompetency_Number) REFERENCES dwh_15a.Competency (Number_);

ALTER TABLE dwh_15a.CustomSelectionElement
ADD CONSTRAINT FK_idelem4x80 FOREIGN KEY (Selection_Number) REFERENCES dwh_15a.CustomSelection (Number_);
ALTER TABLE dwh_15a.CustomSelectionElement
ADD CONSTRAINT FK_idelem4x82 FOREIGN KEY (Status_Number) REFERENCES dwh_15a.AdminEntityStatus (Number_);

ALTER TABLE dwh_15a.DeletedMatrixManager
ADD CONSTRAINT FK_idelem4x87 FOREIGN KEY (MatrixManager_Number) REFERENCES dwh_15a.MatrixManager (Number_);

ALTER TABLE dwh_15a.Employee
ADD CONSTRAINT FK_idelem4x120 FOREIGN KEY (EmployeePotential_Number) REFERENCES dwh_15a.EmployeePotential (Number_);
ALTER TABLE dwh_15a.Employee
ADD CONSTRAINT FK_idelem4x122 FOREIGN KEY (EmployeeRiskOfLoss_Number) REFERENCES dwh_15a.EmployeeRiskOfLoss (Number_);
ALTER TABLE dwh_15a.Employee
ADD CONSTRAINT FK_idelem4x124 FOREIGN KEY (CurrentJob_Number) REFERENCES dwh_15a.JobRole (Number_);
ALTER TABLE dwh_15a.Employee
ADD CONSTRAINT FK_idelem4x126 FOREIGN KEY (EmployeeStatus_Number) REFERENCES dwh_15a.EmployeeStatus (Number_);
ALTER TABLE dwh_15a.Employee
ADD CONSTRAINT FK_idelem4x128 FOREIGN KEY (Location_Number) REFERENCES dwh_15a.Location (Number_);
ALTER TABLE dwh_15a.Employee
ADD CONSTRAINT FK_idelem4x130 FOREIGN KEY (Manager_Number) REFERENCES dwh_15a.Employee (Number_);
ALTER TABLE dwh_15a.Employee
ADD CONSTRAINT FK_idelem4x132 FOREIGN KEY (Organization_Number) REFERENCES dwh_15a.Organization (Number_);
ALTER TABLE dwh_15a.Employee
ADD CONSTRAINT FK_idelem4x134 FOREIGN KEY (TalentUser_Number) REFERENCES dwh_15a.TalentUser (Number_);

ALTER TABLE dwh_15a.EmployeeUDF
ADD CONSTRAINT FK_idelem4x139 FOREIGN KEY (Employee_Number) REFERENCES dwh_15a.Employee (Number_);
ALTER TABLE dwh_15a.EmployeeUDF
ADD CONSTRAINT FK_idelem4x145 FOREIGN KEY (CustomSelectionElement_Number) REFERENCES dwh_15a.CustomSelectionElement (Number_);

ALTER TABLE dwh_15a.EmployeeMetricsUDF
ADD CONSTRAINT FK_idelem4x152 FOREIGN KEY (Employee_Number) REFERENCES dwh_15a.Employee (Number_);
ALTER TABLE dwh_15a.EmployeeMetricsUDF
ADD CONSTRAINT FK_idelem4x158 FOREIGN KEY (CustomSelectionElement_Number) REFERENCES dwh_15a.CustomSelectionElement (Number_);

ALTER TABLE dwh_15a.Employee_MetricValues
ADD CONSTRAINT FK_idelem4x165 FOREIGN KEY (Employee_Number) REFERENCES dwh_15a.Employee (Number_);
ALTER TABLE dwh_15a.Employee_MetricValues
ADD CONSTRAINT FK_idelem4x167 FOREIGN KEY (ConfigurableMetric_Number) REFERENCES dwh_15a.ConfigurableMetric (Number_);

ALTER TABLE dwh_15a.DelegatedEmployee
ADD CONSTRAINT FK_idelem4x172 FOREIGN KEY (MatrixManager_Number) REFERENCES dwh_15a.MatrixManager (Number_);
ALTER TABLE dwh_15a.DelegatedEmployee
ADD CONSTRAINT FK_idelem4x174 FOREIGN KEY (DelegatedEmployee_Number) REFERENCES dwh_15a.Employee (Number_);

ALTER TABLE dwh_15a.MatrixManager
ADD CONSTRAINT FK_idelem4x189 FOREIGN KEY (ManagerRequester_Number) REFERENCES dwh_15a.Employee (Number_);
ALTER TABLE dwh_15a.MatrixManager
ADD CONSTRAINT FK_idelem4x191 FOREIGN KEY (MatrixManager_Number) REFERENCES dwh_15a.Employee (Number_);

ALTER TABLE dwh_15a.BusinessOrganization
ADD CONSTRAINT FK_idelem4x206 FOREIGN KEY (Parent_Number) REFERENCES dwh_15a.BusinessOrganization (Number_);
ALTER TABLE dwh_15a.BusinessOrganization
ADD CONSTRAINT FK_idelem4x208 FOREIGN KEY (Status_Number) REFERENCES dwh_15a.AdminEntityStatus (Number_);

ALTER TABLE dwh_15a.Department
ADD CONSTRAINT FK_idelem4x229 FOREIGN KEY (HiringManager_UserNo) REFERENCES dwh_15a.User_ (UserNo);
ALTER TABLE dwh_15a.Department
ADD CONSTRAINT FK_idelem4x231 FOREIGN KEY (Location_Number) REFERENCES dwh_15a.Location (Number_);
ALTER TABLE dwh_15a.Department
ADD CONSTRAINT FK_idelem4x233 FOREIGN KEY (Organization_Number) REFERENCES dwh_15a.Organization (Number_);
ALTER TABLE dwh_15a.Department
ADD CONSTRAINT FK_idelem4x235 FOREIGN KEY (Parent_Number) REFERENCES dwh_15a.Department (Number_);
ALTER TABLE dwh_15a.Department
ADD CONSTRAINT FK_idelem4x237 FOREIGN KEY (Recruiter_UserNo) REFERENCES dwh_15a.User_ (UserNo);
ALTER TABLE dwh_15a.Department
ADD CONSTRAINT FK_idelem4x239 FOREIGN KEY (State_Number) REFERENCES dwh_15a.DepartmentState (Number_);
ALTER TABLE dwh_15a.Department
ADD CONSTRAINT FK_idelem4x241 FOREIGN KEY (Status_Number) REFERENCES dwh_15a.AdminEntityStatus (Number_);

ALTER TABLE dwh_15a.DepartmentUDF
ADD CONSTRAINT FK_idelem4x246 FOREIGN KEY (Department_Number) REFERENCES dwh_15a.Department (Number_);
ALTER TABLE dwh_15a.DepartmentUDF
ADD CONSTRAINT FK_idelem4x248 FOREIGN KEY (UDFDefinition_Entity, UDFDefinition_ID) REFERENCES dwh_15a.UDFDefinition (Entity, ID);

ALTER TABLE dwh_15a.JobField
ADD CONSTRAINT FK_idelem4x275 FOREIGN KEY (NetworkJobField_Number) REFERENCES dwh_15a.NetworkJobField (Number_);
ALTER TABLE dwh_15a.JobField
ADD CONSTRAINT FK_idelem4x277 FOREIGN KEY (Parent_Number) REFERENCES dwh_15a.JobField (Number_);
ALTER TABLE dwh_15a.JobField
ADD CONSTRAINT FK_idelem4x281 FOREIGN KEY (Status_Number) REFERENCES dwh_15a.AdminEntityStatus (Number_);

ALTER TABLE dwh_15a.HierarchicalRole
ADD CONSTRAINT FK_idelem4x303 FOREIGN KEY (Parent_RoleNo) REFERENCES dwh_15a.HierarchicalRole (RoleNo);
ALTER TABLE dwh_15a.HierarchicalRole
ADD CONSTRAINT FK_idelem4x305 FOREIGN KEY (Status_Number) REFERENCES dwh_15a.AdminEntityStatus (Number_);

ALTER TABLE dwh_15a.Location
ADD CONSTRAINT FK_idelem4x328 FOREIGN KEY (NetworkLocation_Number) REFERENCES dwh_15a.NetworkLocation (Number_);
ALTER TABLE dwh_15a.Location
ADD CONSTRAINT FK_idelem4x330 FOREIGN KEY (Parent_Number) REFERENCES dwh_15a.Location (Number_);
ALTER TABLE dwh_15a.Location
ADD CONSTRAINT FK_idelem4x334 FOREIGN KEY (Status_Number) REFERENCES dwh_15a.AdminEntityStatus (Number_);

ALTER TABLE dwh_15a.Organization
ADD CONSTRAINT FK_idelem4x359 FOREIGN KEY (BusinessOrganization_Number) REFERENCES dwh_15a.BusinessOrganization (Number_);
ALTER TABLE dwh_15a.Organization
ADD CONSTRAINT FK_idelem4x361 FOREIGN KEY (Industry_Number) REFERENCES dwh_15a.Industry (Number_);
ALTER TABLE dwh_15a.Organization
ADD CONSTRAINT FK_idelem4x363 FOREIGN KEY (Parent_Number) REFERENCES dwh_15a.Organization (Number_);
ALTER TABLE dwh_15a.Organization
ADD CONSTRAINT FK_idelem4x367 FOREIGN KEY (Status_Number) REFERENCES dwh_15a.AdminEntityStatus (Number_);

ALTER TABLE dwh_15a.User_
ADD CONSTRAINT FK_idelem4x389 FOREIGN KEY (CorrespondenceLanguage_ISO) REFERENCES dwh_15a.Language (ISO);
ALTER TABLE dwh_15a.User_
ADD CONSTRAINT FK_idelem4x439 FOREIGN KEY (ConfigProfile_Number) REFERENCES dwh_15a.ConfigProfile (Number_);
ALTER TABLE dwh_15a.User_
ADD CONSTRAINT FK_idelem4x441 FOREIGN KEY (DefaultRecruiter_UserNo) REFERENCES dwh_15a.User_ (UserNo);
ALTER TABLE dwh_15a.User_
ADD CONSTRAINT FK_idelem4x443 FOREIGN KEY (DefaultHiringManager_UserNo) REFERENCES dwh_15a.User_ (UserNo);
ALTER TABLE dwh_15a.User_
ADD CONSTRAINT FK_idelem4x445 FOREIGN KEY (Department_Number) REFERENCES dwh_15a.Department (Number_);
ALTER TABLE dwh_15a.User_
ADD CONSTRAINT FK_idelem4x447 FOREIGN KEY (HierarchicalRole_RoleNo) REFERENCES dwh_15a.HierarchicalRole (RoleNo);
ALTER TABLE dwh_15a.User_
ADD CONSTRAINT FK_idelem4x449 FOREIGN KEY (TimeZone_Number) REFERENCES dwh_15a.TaleoTimeZone (Number_);
ALTER TABLE dwh_15a.User_
ADD CONSTRAINT FK_idelem4x463 FOREIGN KEY (UserAccount_Status_Number) REFERENCES dwh_15a.AccountStatus (Number_);

ALTER TABLE dwh_15a.User_Groups
ADD CONSTRAINT FK_idelem4x468 FOREIGN KEY (User_UserNo) REFERENCES dwh_15a.User_ (UserNo);
ALTER TABLE dwh_15a.User_Groups
ADD CONSTRAINT FK_idelem4x470 FOREIGN KEY (Group_Number) REFERENCES dwh_15a.Group_ (Number_);

ALTER TABLE dwh_15a.User_Roles
ADD CONSTRAINT FK_idelem4x475 FOREIGN KEY (User_UserNo) REFERENCES dwh_15a.User_ (UserNo);
ALTER TABLE dwh_15a.User_Roles
ADD CONSTRAINT FK_idelem4x477 FOREIGN KEY (Role_Number) REFERENCES dwh_15a.Role (Number_);

ALTER TABLE dwh_15a.Certification
ADD CONSTRAINT FK_idelem4x506 FOREIGN KEY (Status_Number) REFERENCES dwh_15a.AdminEntityStatus (Number_);

ALTER TABLE dwh_15a.CieEmployer
ADD CONSTRAINT FK_idelem4x517 FOREIGN KEY (Status_Number) REFERENCES dwh_15a.AdminEntityStatus (Number_);

ALTER TABLE dwh_15a.CieInstitution
ADD CONSTRAINT FK_idelem4x528 FOREIGN KEY (Location_Number) REFERENCES dwh_15a.NetworkLocation (Number_);
ALTER TABLE dwh_15a.CieInstitution
ADD CONSTRAINT FK_idelem4x530 FOREIGN KEY (Status_Number) REFERENCES dwh_15a.AdminEntityStatus (Number_);
ALTER TABLE dwh_15a.CieInstitution
ADD CONSTRAINT FK_idelem4x532 FOREIGN KEY (Type_Number) REFERENCES dwh_15a.TypeOfInstitution (Number_);

ALTER TABLE dwh_15a.CieProgram
ADD CONSTRAINT FK_idelem4x543 FOREIGN KEY (Status_Number) REFERENCES dwh_15a.AdminEntityStatus (Number_);

ALTER TABLE dwh_15a.CompetencyCategory
ADD CONSTRAINT FK_idelem4x556 FOREIGN KEY (Status_Number) REFERENCES dwh_15a.AdminEntityStatus (Number_);

ALTER TABLE dwh_15a.CompetencyGroup
ADD CONSTRAINT FK_idelem4x571 FOREIGN KEY (Status_Number) REFERENCES dwh_15a.AdminEntityStatus (Number_);

ALTER TABLE dwh_15a.CompetencyProvider
ADD CONSTRAINT FK_idelem4x584 FOREIGN KEY (Status_Number) REFERENCES dwh_15a.AdminEntityStatus (Number_);

ALTER TABLE dwh_15a.ConfigProfile
ADD CONSTRAINT FK_idelem4x604 FOREIGN KEY (Status_Number) REFERENCES dwh_15a.AdminEntityStatus (Number_);

ALTER TABLE dwh_15a.ConfigurableMetric
ADD CONSTRAINT FK_idelem4x619 FOREIGN KEY (Status_Number) REFERENCES dwh_15a.AdminEntityStatus (Number_);
ALTER TABLE dwh_15a.ConfigurableMetric
ADD CONSTRAINT FK_idelem4x621 FOREIGN KEY (Type_Number) REFERENCES dwh_15a.MetricType (Number_);

ALTER TABLE dwh_15a.NetworkJobField
ADD CONSTRAINT FK_idelem4x800 FOREIGN KEY (Parent_Number) REFERENCES dwh_15a.NetworkJobField (Number_);
ALTER TABLE dwh_15a.NetworkJobField
ADD CONSTRAINT FK_idelem4x802 FOREIGN KEY (Status_Number) REFERENCES dwh_15a.AdminEntityStatus (Number_);

ALTER TABLE dwh_15a.NetworkLocation
ADD CONSTRAINT FK_idelem4x831 FOREIGN KEY (Parent_Number) REFERENCES dwh_15a.NetworkLocation (Number_);
ALTER TABLE dwh_15a.NetworkLocation
ADD CONSTRAINT FK_idelem4x833 FOREIGN KEY (Status_Number) REFERENCES dwh_15a.AdminEntityStatus (Number_);
ALTER TABLE dwh_15a.NetworkLocation
ADD CONSTRAINT FK_idelem4x835 FOREIGN KEY (TimeZone_Number) REFERENCES dwh_15a.TaleoTimeZone (Number_);

ALTER TABLE dwh_15a.CertificationRequirement
ADD CONSTRAINT FK_idelem4x964 FOREIGN KEY (Certification_Number) REFERENCES dwh_15a.Certification (Number_);
ALTER TABLE dwh_15a.CertificationRequirement
ADD CONSTRAINT FK_idelem4x966 FOREIGN KEY (Importance_Number) REFERENCES dwh_15a.ProfileImportance (Number_);
ALTER TABLE dwh_15a.CertificationRequirement
ADD CONSTRAINT FK_idelem4x968 FOREIGN KEY (JobProfile_Number) REFERENCES dwh_15a.JobProfile (Number_);

ALTER TABLE dwh_15a.CompetencyRequirement
ADD CONSTRAINT FK_idelem4x979 FOREIGN KEY (Competency_Number) REFERENCES dwh_15a.Competency (Number_);
ALTER TABLE dwh_15a.CompetencyRequirement
ADD CONSTRAINT FK_idelem4x981 FOREIGN KEY (Importance_Number) REFERENCES dwh_15a.ProfileImportance (Number_);
ALTER TABLE dwh_15a.CompetencyRequirement
ADD CONSTRAINT FK_idelem4x983 FOREIGN KEY (JobProfile_Number) REFERENCES dwh_15a.JobProfile (Number_);
ALTER TABLE dwh_15a.CompetencyRequirement
ADD CONSTRAINT FK_idelem4x985 FOREIGN KEY (PerformanceRating_Number) REFERENCES dwh_15a.RatingValue (Number_);

ALTER TABLE dwh_15a.JobRole
ADD CONSTRAINT FK_idelem4x1005 FOREIGN KEY (JobField_Number) REFERENCES dwh_15a.JobField (Number_);
ALTER TABLE dwh_15a.JobRole
ADD CONSTRAINT FK_idelem4x1007 FOREIGN KEY (JobLevel_Number) REFERENCES dwh_15a.JobLevel (Number_);
ALTER TABLE dwh_15a.JobRole
ADD CONSTRAINT FK_idelem4x1009 FOREIGN KEY (JobProfile_Number) REFERENCES dwh_15a.JobProfile (Number_);
ALTER TABLE dwh_15a.JobRole
ADD CONSTRAINT FK_idelem4x1011 FOREIGN KEY (Status_Number) REFERENCES dwh_15a.AdminEntityStatus (Number_);

ALTER TABLE dwh_15a.Position
ADD CONSTRAINT FK_idelem4x1058 FOREIGN KEY (Department_Number) REFERENCES dwh_15a.Department (Number_);
ALTER TABLE dwh_15a.Position
ADD CONSTRAINT FK_idelem4x1060 FOREIGN KEY (Employee_Number) REFERENCES dwh_15a.Employee (Number_);
ALTER TABLE dwh_15a.Position
ADD CONSTRAINT FK_idelem4x1062 FOREIGN KEY (JobProfile_Number) REFERENCES dwh_15a.JobProfile (Number_);
ALTER TABLE dwh_15a.Position
ADD CONSTRAINT FK_idelem4x1064 FOREIGN KEY (JobRole_Number) REFERENCES dwh_15a.JobRole (Number_);
ALTER TABLE dwh_15a.Position
ADD CONSTRAINT FK_idelem4x1066 FOREIGN KEY (Location_Number) REFERENCES dwh_15a.Location (Number_);
ALTER TABLE dwh_15a.Position
ADD CONSTRAINT FK_idelem4x1068 FOREIGN KEY (Manager_Number) REFERENCES dwh_15a.Employee (Number_);
ALTER TABLE dwh_15a.Position
ADD CONSTRAINT FK_idelem4x1070 FOREIGN KEY (Organization_Number) REFERENCES dwh_15a.Organization (Number_);
ALTER TABLE dwh_15a.Position
ADD CONSTRAINT FK_idelem4x1072 FOREIGN KEY (ParentPosition_Number) REFERENCES dwh_15a.Position (Number_);
ALTER TABLE dwh_15a.Position
ADD CONSTRAINT FK_idelem4x1074 FOREIGN KEY (Status_Number) REFERENCES dwh_15a.AdminEntityStatus (Number_);

ALTER TABLE dwh_15a.RatingDimension
ADD CONSTRAINT FK_idelem4x1089 FOREIGN KEY (CompetencyProvider_Number) REFERENCES dwh_15a.CompetencyProvider (Number_);
ALTER TABLE dwh_15a.RatingDimension
ADD CONSTRAINT FK_idelem4x1091 FOREIGN KEY (RatingDimensionType_Number) REFERENCES dwh_15a.RatingDimensionType (Number_);
ALTER TABLE dwh_15a.RatingDimension
ADD CONSTRAINT FK_idelem4x1093 FOREIGN KEY (Status_Number) REFERENCES dwh_15a.AdminEntityStatus (Number_);

ALTER TABLE dwh_15a.RatingModel
ADD CONSTRAINT FK_idelem4x1108 FOREIGN KEY (CompetencyProvider_Number) REFERENCES dwh_15a.CompetencyProvider (Number_);
ALTER TABLE dwh_15a.RatingModel
ADD CONSTRAINT FK_idelem4x1110 FOREIGN KEY (Status_Number) REFERENCES dwh_15a.AdminEntityStatus (Number_);

ALTER TABLE dwh_15a.RatingModelDimension
ADD CONSTRAINT FK_idelem4x1119 FOREIGN KEY (RatingDimension_Number) REFERENCES dwh_15a.RatingDimension (Number_);
ALTER TABLE dwh_15a.RatingModelDimension
ADD CONSTRAINT FK_idelem4x1121 FOREIGN KEY (RatingModel_Number) REFERENCES dwh_15a.RatingModel (Number_);

ALTER TABLE dwh_15a.RatingValue
ADD CONSTRAINT FK_idelem4x1134 FOREIGN KEY (RatingDimension_Number) REFERENCES dwh_15a.RatingDimension (Number_);

ALTER TABLE dwh_15a.TalentCompetency
ADD CONSTRAINT FK_idelem4x1141 FOREIGN KEY (TalentUser_Number) REFERENCES dwh_15a.TalentUser (Number_);
ALTER TABLE dwh_15a.TalentCompetency
ADD CONSTRAINT FK_idelem4x1145 FOREIGN KEY (Competency_Number) REFERENCES dwh_15a.Competency (Number_);

ALTER TABLE dwh_15a.TalentCompetencyValue
ADD CONSTRAINT FK_idelem4x1152 FOREIGN KEY (RatedDimension_Number) REFERENCES dwh_15a.RatingDimension (Number_);
ALTER TABLE dwh_15a.TalentCompetencyValue
ADD CONSTRAINT FK_idelem4x1154 FOREIGN KEY (RatedValue_Number) REFERENCES dwh_15a.RatingValue (Number_);
ALTER TABLE dwh_15a.TalentCompetencyValue
ADD CONSTRAINT FK_idelem4x1156 FOREIGN KEY (RaterType_Number) REFERENCES dwh_15a.RaterType (Number_);
ALTER TABLE dwh_15a.TalentCompetencyValue
ADD CONSTRAINT FK_idelem4x1158 FOREIGN KEY (TalentCompetency_Number) REFERENCES dwh_15a.TalentCompetency (Number_);

ALTER TABLE dwh_15a.TalentUser
ADD CONSTRAINT FK_idelem4x1171 FOREIGN KEY (ArUser_UserNo) REFERENCES dwh_15a.User_ (UserNo);
ALTER TABLE dwh_15a.TalentUser
ADD CONSTRAINT FK_idelem4x1173 FOREIGN KEY (Employee_Number) REFERENCES dwh_15a.Employee (Number_);
ALTER TABLE dwh_15a.TalentUser
ADD CONSTRAINT FK_idelem4x1175 FOREIGN KEY (InterestIntlAssign_Number) REFERENCES dwh_15a.InterestIntlAssignment (Number_);
ALTER TABLE dwh_15a.TalentUser
ADD CONSTRAINT FK_idelem4x1177 FOREIGN KEY (Profile_Number) REFERENCES dwh_15a.ProfileInformation (Number_);
ALTER TABLE dwh_15a.TalentUser
ADD CONSTRAINT FK_idelem4x1179 FOREIGN KEY (Reassignment_Number) REFERENCES dwh_15a.Reassignment (Number_);
ALTER TABLE dwh_15a.TalentUser
ADD CONSTRAINT FK_idelem4x1181 FOREIGN KEY (WillingnessToTravel_Number) REFERENCES dwh_15a.WillingnessToTravel (Number_);
ALTER TABLE dwh_15a.TalentUser
ADD CONSTRAINT FK_idelem4x1183 FOREIGN KEY (WillRelocate_Number) REFERENCES dwh_15a.WillRelocate (Number_);
ALTER TABLE dwh_15a.TalentUser
ADD CONSTRAINT FK_idelem4x1185 FOREIGN KEY (CareerSiteLanguage_ISO) REFERENCES dwh_15a.Language (ISO);
ALTER TABLE dwh_15a.TalentUser
ADD CONSTRAINT FK_idelem4x1187 FOREIGN KEY (CorrespondenceLanguage_ISO) REFERENCES dwh_15a.Language (ISO);
ALTER TABLE dwh_15a.TalentUser
ADD CONSTRAINT FK_idelem4x1195 FOREIGN KEY (PreferredTimeZone_Number) REFERENCES dwh_15a.TaleoTimeZone (Number_);

ALTER TABLE dwh_15a.TalentUser_EmploymentStatuses
ADD CONSTRAINT FK_idelem4x1208 FOREIGN KEY (TalentUser_Number) REFERENCES dwh_15a.TalentUser (Number_);
ALTER TABLE dwh_15a.TalentUser_EmploymentStatuses
ADD CONSTRAINT FK_idelem4x1210 FOREIGN KEY (EmploymentStatus_Number) REFERENCES dwh_15a.EmploymentStatus (Number_);

ALTER TABLE dwh_15a.TalentUser_JobFields
ADD CONSTRAINT FK_idelem4x1215 FOREIGN KEY (TalentUser_Number) REFERENCES dwh_15a.TalentUser (Number_);
ALTER TABLE dwh_15a.TalentUser_JobFields
ADD CONSTRAINT FK_idelem4x1217 FOREIGN KEY (JobField_Number) REFERENCES dwh_15a.JobField (Number_);

ALTER TABLE dwh_15a.TalentUser_JobLevels
ADD CONSTRAINT FK_idelem4x1222 FOREIGN KEY (TalentUser_Number) REFERENCES dwh_15a.TalentUser (Number_);
ALTER TABLE dwh_15a.TalentUser_JobLevels
ADD CONSTRAINT FK_idelem4x1224 FOREIGN KEY (JobLevel_Number) REFERENCES dwh_15a.JobLevel (Number_);

ALTER TABLE dwh_15a.TalentUser_JobSchedules
ADD CONSTRAINT FK_idelem4x1229 FOREIGN KEY (TalentUser_Number) REFERENCES dwh_15a.TalentUser (Number_);
ALTER TABLE dwh_15a.TalentUser_JobSchedules
ADD CONSTRAINT FK_idelem4x1231 FOREIGN KEY (JobSchedule_Number) REFERENCES dwh_15a.JobSchedule (Number_);

ALTER TABLE dwh_15a.TalentUser_JobTypes
ADD CONSTRAINT FK_idelem4x1236 FOREIGN KEY (TalentUser_Number) REFERENCES dwh_15a.TalentUser (Number_);
ALTER TABLE dwh_15a.TalentUser_JobTypes
ADD CONSTRAINT FK_idelem4x1238 FOREIGN KEY (JobType_Number) REFERENCES dwh_15a.JobType (Number_);

ALTER TABLE dwh_15a.TalentUser_Locations
ADD CONSTRAINT FK_idelem4x1243 FOREIGN KEY (TalentUser_Number) REFERENCES dwh_15a.TalentUser (Number_);
ALTER TABLE dwh_15a.TalentUser_Locations
ADD CONSTRAINT FK_idelem4x1245 FOREIGN KEY (Location_Number) REFERENCES dwh_15a.Location (Number_);

ALTER TABLE dwh_15a.TalentUser_Organizations
ADD CONSTRAINT FK_idelem4x1250 FOREIGN KEY (TalentUser_Number) REFERENCES dwh_15a.TalentUser (Number_);
ALTER TABLE dwh_15a.TalentUser_Organizations
ADD CONSTRAINT FK_idelem4x1252 FOREIGN KEY (Organization_Number) REFERENCES dwh_15a.Organization (Number_);

ALTER TABLE dwh_15a.TalentUser_StudyLevels
ADD CONSTRAINT FK_idelem4x1257 FOREIGN KEY (TalentUser_Number) REFERENCES dwh_15a.TalentUser (Number_);
ALTER TABLE dwh_15a.TalentUser_StudyLevels
ADD CONSTRAINT FK_idelem4x1259 FOREIGN KEY (StudyLevel_Number) REFERENCES dwh_15a.StudyLevel (Number_);

ALTER TABLE dwh_15a.Approval
ADD CONSTRAINT FK_idelem4x1272 FOREIGN KEY (Approbator_UserNo) REFERENCES dwh_15a.User_ (UserNo);
ALTER TABLE dwh_15a.Approval
ADD CONSTRAINT FK_idelem4x1274 FOREIGN KEY (ApprovalContext_No) REFERENCES dwh_15a.ApprovalContext (No);
ALTER TABLE dwh_15a.Approval
ADD CONSTRAINT FK_idelem4x1276 FOREIGN KEY (ApprovalStatus_Number) REFERENCES dwh_15a.ApprovalStatus (Number_);
ALTER TABLE dwh_15a.Approval
ADD CONSTRAINT FK_idelem4x1278 FOREIGN KEY (OnBehalfOfUser_UserNo) REFERENCES dwh_15a.User_ (UserNo);

ALTER TABLE dwh_15a.ApprovalContext
ADD CONSTRAINT FK_idelem4x1289 FOREIGN KEY (Owner_UserNo) REFERENCES dwh_15a.User_ (UserNo);

ALTER TABLE dwh_15a.Candidate
ADD CONSTRAINT FK_idelem4x1374 FOREIGN KEY (AdvanceNotice_Number) REFERENCES dwh_15a.StartDate (Number_);
ALTER TABLE dwh_15a.Candidate
ADD CONSTRAINT FK_idelem4x1380 FOREIGN KEY (CandidateReferrer_Number) REFERENCES dwh_15a.Candidate (Number_);
ALTER TABLE dwh_15a.Candidate
ADD CONSTRAINT FK_idelem4x1382 FOREIGN KEY (Currency_Number) REFERENCES dwh_15a.Currency (Number_);
ALTER TABLE dwh_15a.Candidate
ADD CONSTRAINT FK_idelem4x1384 FOREIGN KEY (DisqualifierResult_Number) REFERENCES dwh_15a.DisqualifierResult (Number_);
ALTER TABLE dwh_15a.Candidate
ADD CONSTRAINT FK_idelem4x1388 FOREIGN KEY (DriverLicenseLocation_Number) REFERENCES dwh_15a.NetworkLocation (Number_);
ALTER TABLE dwh_15a.Candidate
ADD CONSTRAINT FK_idelem4x1390 FOREIGN KEY (OwnerAgent_Number) REFERENCES dwh_15a.Agent (Number_);
ALTER TABLE dwh_15a.Candidate
ADD CONSTRAINT FK_idelem4x1392 FOREIGN KEY (PreferredPhone_Number) REFERENCES dwh_15a.PhoneType (Number_);
ALTER TABLE dwh_15a.Candidate
ADD CONSTRAINT FK_idelem4x1394 FOREIGN KEY (ReferralStatus_Number) REFERENCES dwh_15a.ReferralStatus (Number_);
ALTER TABLE dwh_15a.Candidate
ADD CONSTRAINT FK_idelem4x1396 FOREIGN KEY (ResidenceLocation_Number) REFERENCES dwh_15a.NetworkLocation (Number_);
ALTER TABLE dwh_15a.Candidate
ADD CONSTRAINT FK_idelem4x1398 FOREIGN KEY (TalentUser_Number) REFERENCES dwh_15a.TalentUser (Number_);
ALTER TABLE dwh_15a.Candidate
ADD CONSTRAINT FK_idelem4x1400 FOREIGN KEY (TimeZone_Number) REFERENCES dwh_15a.TaleoTimeZone (Number_);
ALTER TABLE dwh_15a.Candidate
ADD CONSTRAINT FK_idelem4x1408 FOREIGN KEY (HourlyPayRateCurrency_Number) REFERENCES dwh_15a.Currency (Number_);
ALTER TABLE dwh_15a.Candidate
ADD CONSTRAINT FK_idelem4x1410 FOREIGN KEY (HoursPerWeekPreferred_Number) REFERENCES dwh_15a.WorkConditionHourLevel (Number_);
ALTER TABLE dwh_15a.Candidate
ADD CONSTRAINT FK_idelem4x1412 FOREIGN KEY (HoursPerWeekWilling_Number) REFERENCES dwh_15a.WorkConditionHourLevel (Number_);

ALTER TABLE dwh_15a.Candidate_JobShifts
ADD CONSTRAINT FK_idelem4x1417 FOREIGN KEY (Candidate_Number) REFERENCES dwh_15a.Candidate (Number_);
ALTER TABLE dwh_15a.Candidate_JobShifts
ADD CONSTRAINT FK_idelem4x1419 FOREIGN KEY (JobShift_Number) REFERENCES dwh_15a.JobShift (Number_);

ALTER TABLE dwh_15a.CandidateUDF
ADD CONSTRAINT FK_idelem4x1424 FOREIGN KEY (Candidate_Number) REFERENCES dwh_15a.Candidate (Number_);
ALTER TABLE dwh_15a.CandidateUDF
ADD CONSTRAINT FK_idelem4x1426 FOREIGN KEY (UDFDefinition_Entity, UDFDefinition_ID) REFERENCES dwh_15a.UDFDefinition (Entity, ID);

ALTER TABLE dwh_15a.CandidateUpdate
ADD CONSTRAINT FK_idelem4x1447 FOREIGN KEY (CandidateEvent_Number) REFERENCES dwh_15a.CandidateUpdateEvent (Number_);
ALTER TABLE dwh_15a.CandidateUpdate
ADD CONSTRAINT FK_idelem4x1449 FOREIGN KEY (AppHistoryUpdateItem_Number) REFERENCES dwh_15a.ApplicationHistoryUpdateItem (Number_);
ALTER TABLE dwh_15a.CandidateUpdate
ADD CONSTRAINT FK_idelem4x1451 FOREIGN KEY (UDFDefinition_Entity, UDFDefinition_ID) REFERENCES dwh_15a.UDFDefinition (Entity, ID);

ALTER TABLE dwh_15a.CandidateAnswerUpdate
ADD CONSTRAINT FK_idelem4x1462 FOREIGN KEY (PossibleAnswer_Number) REFERENCES dwh_15a.PossibleAnswer (Number_);
ALTER TABLE dwh_15a.CandidateAnswerUpdate
ADD CONSTRAINT FK_idelem4x1464 FOREIGN KEY (Question_Number) REFERENCES dwh_15a.Question (Number_);
ALTER TABLE dwh_15a.CandidateAnswerUpdate
ADD CONSTRAINT FK_idelem4x1466 FOREIGN KEY (AppHistoryAnswerItem_Number ) REFERENCES dwh_15a.ApplicationHistoryAnswerUpdate (Number_);
ALTER TABLE dwh_15a.CandidateAnswerUpdate
ADD CONSTRAINT FK_idelem4x1468 FOREIGN KEY (InfoFeeder_Number) REFERENCES dwh_15a.InfoFeeder (Number_);
ALTER TABLE dwh_15a.CandidateAnswerUpdate
ADD CONSTRAINT FK_idelem4x1470 FOREIGN KEY (Origin_Number) REFERENCES dwh_15a.Origin (Number_);

ALTER TABLE dwh_15a.DiversityAnswer
ADD CONSTRAINT FK_idelem4x1477 FOREIGN KEY (Candidate_Number) REFERENCES dwh_15a.Candidate (Number_);
ALTER TABLE dwh_15a.DiversityAnswer
ADD CONSTRAINT FK_idelem4x1481 FOREIGN KEY (Question_Number) REFERENCES dwh_15a.DiversityQuestion (Number_);
ALTER TABLE dwh_15a.DiversityAnswer
ADD CONSTRAINT FK_idelem4x1483 FOREIGN KEY (PossibleAnswer_Number) REFERENCES dwh_15a.DiversityPossibleAnswer (Number_);
ALTER TABLE dwh_15a.DiversityAnswer
ADD CONSTRAINT FK_idelem4x1485 FOREIGN KEY (Origin_Number) REFERENCES dwh_15a.Origin (Number_);

ALTER TABLE dwh_15a.MilitaryService
ADD CONSTRAINT FK_idelem4x1490 FOREIGN KEY (Candidate_Number) REFERENCES dwh_15a.Candidate (Number_);

ALTER TABLE dwh_15a.QuestionAnswer
ADD CONSTRAINT FK_idelem4x1515 FOREIGN KEY (Candidate_Number) REFERENCES dwh_15a.Candidate (Number_);
ALTER TABLE dwh_15a.QuestionAnswer
ADD CONSTRAINT FK_idelem4x1519 FOREIGN KEY (Question_Number) REFERENCES dwh_15a.Question (Number_);
ALTER TABLE dwh_15a.QuestionAnswer
ADD CONSTRAINT FK_idelem4x1521 FOREIGN KEY (Answer_Number) REFERENCES dwh_15a.PossibleAnswer (Number_);
ALTER TABLE dwh_15a.QuestionAnswer
ADD CONSTRAINT FK_idelem4x1525 FOREIGN KEY (DisqualifierResult_Number) REFERENCES dwh_15a.DisqualifierResult (Number_);
ALTER TABLE dwh_15a.QuestionAnswer
ADD CONSTRAINT FK_idelem4x1527 FOREIGN KEY (InfoFeeder_Number) REFERENCES dwh_15a.InfoFeeder (Number_);

ALTER TABLE dwh_15a.CSWStatus
ADD CONSTRAINT FK_idelem4x1555 FOREIGN KEY (ApplicationState_Number) REFERENCES dwh_15a.ApplicationState (Number_);

ALTER TABLE dwh_15a.CSWStep
ADD CONSTRAINT FK_idelem4x1572 FOREIGN KEY (ApplicationState_Number) REFERENCES dwh_15a.ApplicationState (Number_);

ALTER TABLE dwh_15a.DeletedApplication
ADD CONSTRAINT FK_idelem4x1592 FOREIGN KEY (Application_Number) REFERENCES dwh_15a.Application (Number_);

ALTER TABLE dwh_15a.DeletedCandidate
ADD CONSTRAINT FK_idelem4x1599 FOREIGN KEY (Candidate_Number) REFERENCES dwh_15a.Candidate (Number_);

ALTER TABLE dwh_15a.DeletedQuestion
ADD CONSTRAINT FK_idelem4x1606 FOREIGN KEY (Question_Number) REFERENCES dwh_15a.Question (Number_);

ALTER TABLE dwh_15a.DeletedRequisition
ADD CONSTRAINT FK_idelem4x1613 FOREIGN KEY (Requisition_Number) REFERENCES dwh_15a.Requisition (Number_);

ALTER TABLE dwh_15a.DeletedJobTemplate
ADD CONSTRAINT FK_idelem4x1620 FOREIGN KEY (JobTemplate_Number) REFERENCES dwh_15a.JobTemplate (Number_);

ALTER TABLE dwh_15a.MergedCandidate
ADD CONSTRAINT FK_idelem4x1627 FOREIGN KEY (Candidate_Number) REFERENCES dwh_15a.Candidate (Number_);
ALTER TABLE dwh_15a.MergedCandidate
ADD CONSTRAINT FK_idelem4x1629 FOREIGN KEY (MasterCandidate_Number) REFERENCES dwh_15a.Candidate (Number_);

ALTER TABLE dwh_15a.CandidateSelectionEvent
ADD CONSTRAINT FK_idelem4x1667 FOREIGN KEY (Category_Number) REFERENCES dwh_15a.CandidateSelectionEventCatg (Number_);

ALTER TABLE dwh_15a.DiversityPossibleAnswerType
ADD CONSTRAINT FK_idelem4x1721 FOREIGN KEY (Origin_Number) REFERENCES dwh_15a.Origin (Number_);
ALTER TABLE dwh_15a.DiversityPossibleAnswerType
ADD CONSTRAINT FK_idelem4x1723 FOREIGN KEY (Status_Number) REFERENCES dwh_15a.AdminEntityStatus (Number_);

ALTER TABLE dwh_15a.DiversityQuestionType
ADD CONSTRAINT FK_idelem4x1734 FOREIGN KEY (Origin_Number) REFERENCES dwh_15a.Origin (Number_);
ALTER TABLE dwh_15a.DiversityQuestionType
ADD CONSTRAINT FK_idelem4x1736 FOREIGN KEY (Status_Number) REFERENCES dwh_15a.AdminEntityStatus (Number_);

ALTER TABLE dwh_15a.EmploymentEquityJobCategory
ADD CONSTRAINT FK_idelem4x1768 FOREIGN KEY (NetworkLocation_Number) REFERENCES dwh_15a.NetworkLocation (Number_);

ALTER TABLE dwh_15a.EmploymentEquityJobGroup
ADD CONSTRAINT FK_idelem4x1775 FOREIGN KEY (EEJobCategory_Number) REFERENCES dwh_15a.EmploymentEquityJobCategory (Number_);

ALTER TABLE dwh_15a.RequisitionState
ADD CONSTRAINT FK_idelem4x1976 FOREIGN KEY (ParentState_Number) REFERENCES dwh_15a.RequisitionParentState (Number_);

ALTER TABLE dwh_15a.Meeting
ADD CONSTRAINT FK_idelem4x2050 FOREIGN KEY (MeetingReminderDuration_Number) REFERENCES dwh_15a.MeetingReminderDuration (Number_);
ALTER TABLE dwh_15a.Meeting
ADD CONSTRAINT FK_idelem4x2052 FOREIGN KEY (TaleoTimeZone_Number) REFERENCES dwh_15a.TaleoTimeZone (Number_);
ALTER TABLE dwh_15a.Meeting
ADD CONSTRAINT FK_idelem4x2054 FOREIGN KEY (Application_Number) REFERENCES dwh_15a.Application (Number_);
ALTER TABLE dwh_15a.Meeting
ADD CONSTRAINT FK_idelem4x2056 FOREIGN KEY (MeetingType_Number) REFERENCES dwh_15a.MeetingType (Number_);

ALTER TABLE dwh_15a.MeetingAttendees
ADD CONSTRAINT FK_idelem4x2063 FOREIGN KEY (Attendee_UserNo) REFERENCES dwh_15a.User_ (UserNo);
ALTER TABLE dwh_15a.MeetingAttendees
ADD CONSTRAINT FK_idelem4x2065 FOREIGN KEY (Candidate_Number) REFERENCES dwh_15a.Candidate (Number_);
ALTER TABLE dwh_15a.MeetingAttendees
ADD CONSTRAINT FK_idelem4x2067 FOREIGN KEY (Meeting_Number) REFERENCES dwh_15a.Meeting (Number_);
ALTER TABLE dwh_15a.MeetingAttendees
ADD CONSTRAINT FK_idelem4x2071 FOREIGN KEY (MeetingAttendeeRole_Number) REFERENCES dwh_15a.MeetingAttendeeRole (Number_);

ALTER TABLE dwh_15a.Message
ADD CONSTRAINT FK_idelem4x2090 FOREIGN KEY (Locale_ISO) REFERENCES dwh_15a.Language (ISO);
ALTER TABLE dwh_15a.Message
ADD CONSTRAINT FK_idelem4x2096 FOREIGN KEY (DeliveryTransport_Number) REFERENCES dwh_15a.MessageDeliveryTransport (Number_);
ALTER TABLE dwh_15a.Message
ADD CONSTRAINT FK_idelem4x2098 FOREIGN KEY (MessageTemplate_Number) REFERENCES dwh_15a.MessageTemplate (Number_);

ALTER TABLE dwh_15a.MessageTemplate
ADD CONSTRAINT FK_idelem4x2111 FOREIGN KEY (Status_Number) REFERENCES dwh_15a.AdminEntityStatus (Number_);

ALTER TABLE dwh_15a.ApplicationTrackingOfferItem
ADD CONSTRAINT FK_idelem4x2144 FOREIGN KEY (ProfileLocale_ISO) REFERENCES dwh_15a.Language (ISO);
ALTER TABLE dwh_15a.ApplicationTrackingOfferItem
ADD CONSTRAINT FK_idelem4x2146 FOREIGN KEY (Event_Number) REFERENCES dwh_15a.CandidateSelectionEvent (Number_);
ALTER TABLE dwh_15a.ApplicationTrackingOfferItem
ADD CONSTRAINT FK_idelem4x2148 FOREIGN KEY (Offer_Number) REFERENCES dwh_15a.Offer (Number_);
ALTER TABLE dwh_15a.ApplicationTrackingOfferItem
ADD CONSTRAINT FK_idelem4x2150 FOREIGN KEY (Message_Number) REFERENCES dwh_15a.Message (Number_);
ALTER TABLE dwh_15a.ApplicationTrackingOfferItem
ADD CONSTRAINT FK_idelem4x2152 FOREIGN KEY (Substitute_UserNo) REFERENCES dwh_15a.User_ (UserNo);
ALTER TABLE dwh_15a.ApplicationTrackingOfferItem
ADD CONSTRAINT FK_idelem4x2154 FOREIGN KEY (User_UserNo) REFERENCES dwh_15a.User_ (UserNo);

ALTER TABLE dwh_15a.ATOfferItem_OfferMotives
ADD CONSTRAINT FK_idelem4x2159 FOREIGN KEY (ATOfferItem_Number) REFERENCES dwh_15a.ApplicationTrackingOfferItem (Number_);
ALTER TABLE dwh_15a.ATOfferItem_OfferMotives
ADD CONSTRAINT FK_idelem4x2161 FOREIGN KEY (OfferMotive_Number) REFERENCES dwh_15a.CSWMotive (Number_);

ALTER TABLE dwh_15a.CompetitiveOffer
ADD CONSTRAINT FK_idelem4x2218 FOREIGN KEY (Candidate_Number) REFERENCES dwh_15a.Candidate (Number_);
ALTER TABLE dwh_15a.CompetitiveOffer
ADD CONSTRAINT FK_idelem4x2220 FOREIGN KEY (CommissionType_Number, CommissionType_UDS_Number) REFERENCES dwh_15a.UDSElement (Number_, UserDefinedSelection_Number);
ALTER TABLE dwh_15a.CompetitiveOffer
ADD CONSTRAINT FK_idelem4x2224 FOREIGN KEY (CompetitiveCieEmployer_Number) REFERENCES dwh_15a.CieEmployer (Number_);
ALTER TABLE dwh_15a.CompetitiveOffer
ADD CONSTRAINT FK_idelem4x2226 FOREIGN KEY (CompetitiveCieJobField_Number) REFERENCES dwh_15a.JobField (Number_);
ALTER TABLE dwh_15a.CompetitiveOffer
ADD CONSTRAINT FK_idelem4x2228 FOREIGN KEY (CompetitiveCieLocation_Number) REFERENCES dwh_15a.NetworkLocation (Number_);
ALTER TABLE dwh_15a.CompetitiveOffer
ADD CONSTRAINT FK_idelem4x2230 FOREIGN KEY (Currency_Number) REFERENCES dwh_15a.Currency (Number_);
ALTER TABLE dwh_15a.CompetitiveOffer
ADD CONSTRAINT FK_idelem4x2232 FOREIGN KEY (OfferTitle_Number) REFERENCES dwh_15a.OfferTitle (Number_);
ALTER TABLE dwh_15a.CompetitiveOffer
ADD CONSTRAINT FK_idelem4x2234 FOREIGN KEY (PayFrequencyBasis_Number) REFERENCES dwh_15a.PayFrequencyBasis (Number_);
ALTER TABLE dwh_15a.CompetitiveOffer
ADD CONSTRAINT FK_idelem4x2236 FOREIGN KEY (RelocationType_Number, RelocationType_UDS_Number) REFERENCES dwh_15a.UDSElement (Number_, UserDefinedSelection_Number);
ALTER TABLE dwh_15a.CompetitiveOffer
ADD CONSTRAINT FK_idelem4x2240 FOREIGN KEY (StockOptionType_Number, StockOptionType_UDS_Number) REFERENCES dwh_15a.UDSElement (Number_, UserDefinedSelection_Number);
ALTER TABLE dwh_15a.CompetitiveOffer
ADD CONSTRAINT FK_idelem4x2244 FOREIGN KEY (StockType_Number, StockType_UDS_Number) REFERENCES dwh_15a.UDSElement (Number_, UserDefinedSelection_Number);
ALTER TABLE dwh_15a.CompetitiveOffer
ADD CONSTRAINT FK_idelem4x2248 FOREIGN KEY (VacationType_Number) REFERENCES dwh_15a.VacationType (Number_);

ALTER TABLE dwh_15a.CompetitiveOfferUDF
ADD CONSTRAINT FK_idelem4x2253 FOREIGN KEY (CompetitiveOffer_Number) REFERENCES dwh_15a.CompetitiveOffer (Number_);
ALTER TABLE dwh_15a.CompetitiveOfferUDF
ADD CONSTRAINT FK_idelem4x2255 FOREIGN KEY (UDFDefinition_Entity, UDFDefinition_ID) REFERENCES dwh_15a.UDFDefinition (Entity, ID);

ALTER TABLE dwh_15a.CurrentJob
ADD CONSTRAINT FK_idelem4x2318 FOREIGN KEY (Candidate_Number) REFERENCES dwh_15a.Candidate (Number_);
ALTER TABLE dwh_15a.CurrentJob
ADD CONSTRAINT FK_idelem4x2320 FOREIGN KEY (CommissionType_Number, CommissionType_UDS_Number) REFERENCES dwh_15a.UDSElement (Number_, UserDefinedSelection_Number);
ALTER TABLE dwh_15a.CurrentJob
ADD CONSTRAINT FK_idelem4x2324 FOREIGN KEY (Currency_Number) REFERENCES dwh_15a.Currency (Number_);
ALTER TABLE dwh_15a.CurrentJob
ADD CONSTRAINT FK_idelem4x2326 FOREIGN KEY (CurrentJobCieEmployer_Number) REFERENCES dwh_15a.CieEmployer (Number_);
ALTER TABLE dwh_15a.CurrentJob
ADD CONSTRAINT FK_idelem4x2328 FOREIGN KEY (CurrentJobCieJobField_Number) REFERENCES dwh_15a.JobField (Number_);
ALTER TABLE dwh_15a.CurrentJob
ADD CONSTRAINT FK_idelem4x2330 FOREIGN KEY (CurrentJobCieLocation_Number) REFERENCES dwh_15a.NetworkLocation (Number_);
ALTER TABLE dwh_15a.CurrentJob
ADD CONSTRAINT FK_idelem4x2332 FOREIGN KEY (OfferTitle_Number) REFERENCES dwh_15a.OfferTitle (Number_);
ALTER TABLE dwh_15a.CurrentJob
ADD CONSTRAINT FK_idelem4x2334 FOREIGN KEY (PayFrequencyBasis_Number) REFERENCES dwh_15a.PayFrequencyBasis (Number_);
ALTER TABLE dwh_15a.CurrentJob
ADD CONSTRAINT FK_idelem4x2336 FOREIGN KEY (RelocationType_Number, RelocationType_UDS_Number) REFERENCES dwh_15a.UDSElement (Number_, UserDefinedSelection_Number);
ALTER TABLE dwh_15a.CurrentJob
ADD CONSTRAINT FK_idelem4x2340 FOREIGN KEY (StockOptionType_Number, StockOptionType_UDS_Number) REFERENCES dwh_15a.UDSElement (Number_, UserDefinedSelection_Number);
ALTER TABLE dwh_15a.CurrentJob
ADD CONSTRAINT FK_idelem4x2344 FOREIGN KEY (StockType_Number, StockType_UDS_Number) REFERENCES dwh_15a.UDSElement (Number_, UserDefinedSelection_Number);
ALTER TABLE dwh_15a.CurrentJob
ADD CONSTRAINT FK_idelem4x2348 FOREIGN KEY (VacationType_Number) REFERENCES dwh_15a.VacationType (Number_);

ALTER TABLE dwh_15a.CurrentJobUDF
ADD CONSTRAINT FK_idelem4x2353 FOREIGN KEY (CurrentJob_Number) REFERENCES dwh_15a.CurrentJob (Number_);
ALTER TABLE dwh_15a.CurrentJobUDF
ADD CONSTRAINT FK_idelem4x2355 FOREIGN KEY (UDFDefinition_Entity, UDFDefinition_ID) REFERENCES dwh_15a.UDFDefinition (Entity, ID);

ALTER TABLE dwh_15a.Expectation
ADD CONSTRAINT FK_idelem4x2412 FOREIGN KEY (Application_Number) REFERENCES dwh_15a.Application (Number_);
ALTER TABLE dwh_15a.Expectation
ADD CONSTRAINT FK_idelem4x2414 FOREIGN KEY (CommissionType_Number, CommissionType_UDS_Number) REFERENCES dwh_15a.UDSElement (Number_, UserDefinedSelection_Number);
ALTER TABLE dwh_15a.Expectation
ADD CONSTRAINT FK_idelem4x2418 FOREIGN KEY (Currency_Number) REFERENCES dwh_15a.Currency (Number_);
ALTER TABLE dwh_15a.Expectation
ADD CONSTRAINT FK_idelem4x2420 FOREIGN KEY (ExpectationType_Number) REFERENCES dwh_15a.ExpectationType (Number_);
ALTER TABLE dwh_15a.Expectation
ADD CONSTRAINT FK_idelem4x2422 FOREIGN KEY (OfferTitle_Number) REFERENCES dwh_15a.OfferTitle (Number_);
ALTER TABLE dwh_15a.Expectation
ADD CONSTRAINT FK_idelem4x2424 FOREIGN KEY (PayFrequencyBasis_Number) REFERENCES dwh_15a.PayFrequencyBasis (Number_);
ALTER TABLE dwh_15a.Expectation
ADD CONSTRAINT FK_idelem4x2426 FOREIGN KEY (RelocationType_Number, RelocationType_UDS_Number) REFERENCES dwh_15a.UDSElement (Number_, UserDefinedSelection_Number);
ALTER TABLE dwh_15a.Expectation
ADD CONSTRAINT FK_idelem4x2430 FOREIGN KEY (StockOptionType_Number, StockOptionType_UDS_Number) REFERENCES dwh_15a.UDSElement (Number_, UserDefinedSelection_Number);
ALTER TABLE dwh_15a.Expectation
ADD CONSTRAINT FK_idelem4x2434 FOREIGN KEY (StockType_Number, StockType_UDS_Number) REFERENCES dwh_15a.UDSElement (Number_, UserDefinedSelection_Number);
ALTER TABLE dwh_15a.Expectation
ADD CONSTRAINT FK_idelem4x2438 FOREIGN KEY (VacationType_Number) REFERENCES dwh_15a.VacationType (Number_);

ALTER TABLE dwh_15a.ExpectationUDF
ADD CONSTRAINT FK_idelem4x2443 FOREIGN KEY (Expectation_Number) REFERENCES dwh_15a.Expectation (Number_);
ALTER TABLE dwh_15a.ExpectationUDF
ADD CONSTRAINT FK_idelem4x2445 FOREIGN KEY (UDFDefinition_Entity, UDFDefinition_ID) REFERENCES dwh_15a.UDFDefinition (Entity, ID);

ALTER TABLE dwh_15a.Offer
ADD CONSTRAINT FK_idelem4x2516 FOREIGN KEY (Application_Number) REFERENCES dwh_15a.Application (Number_);
ALTER TABLE dwh_15a.Offer
ADD CONSTRAINT FK_idelem4x2518 FOREIGN KEY (ApprovalContext_No) REFERENCES dwh_15a.ApprovalContext (No);
ALTER TABLE dwh_15a.Offer
ADD CONSTRAINT FK_idelem4x2520 FOREIGN KEY (CommissionType_Number, CommissionType_UDS_Number) REFERENCES dwh_15a.UDSElement (Number_, UserDefinedSelection_Number);
ALTER TABLE dwh_15a.Offer
ADD CONSTRAINT FK_idelem4x2524 FOREIGN KEY (Currency_Number) REFERENCES dwh_15a.Currency (Number_);
ALTER TABLE dwh_15a.Offer
ADD CONSTRAINT FK_idelem4x2526 FOREIGN KEY (ExtensionMechanism_Number) REFERENCES dwh_15a.ExtensionMechanism (Number_);
ALTER TABLE dwh_15a.Offer
ADD CONSTRAINT FK_idelem4x2528 FOREIGN KEY (OfferTitle_Number) REFERENCES dwh_15a.OfferTitle (Number_);
ALTER TABLE dwh_15a.Offer
ADD CONSTRAINT FK_idelem4x2530 FOREIGN KEY (PayFrequencyBasis_Number) REFERENCES dwh_15a.PayFrequencyBasis (Number_);
ALTER TABLE dwh_15a.Offer
ADD CONSTRAINT FK_idelem4x2532 FOREIGN KEY (RelocationType_Number, RelocationType_UDS_Number) REFERENCES dwh_15a.UDSElement (Number_, UserDefinedSelection_Number);
ALTER TABLE dwh_15a.Offer
ADD CONSTRAINT FK_idelem4x2536 FOREIGN KEY (Status_Number) REFERENCES dwh_15a.OfferStatus (Number_);
ALTER TABLE dwh_15a.Offer
ADD CONSTRAINT FK_idelem4x2538 FOREIGN KEY (StockOptionType_Number, StockOptionType_UDS_Number) REFERENCES dwh_15a.UDSElement (Number_, UserDefinedSelection_Number);
ALTER TABLE dwh_15a.Offer
ADD CONSTRAINT FK_idelem4x2542 FOREIGN KEY (StockType_Number, StockType_UDS_Number) REFERENCES dwh_15a.UDSElement (Number_, UserDefinedSelection_Number);
ALTER TABLE dwh_15a.Offer
ADD CONSTRAINT FK_idelem4x2546 FOREIGN KEY (VacationType_Number) REFERENCES dwh_15a.VacationType (Number_);
ALTER TABLE dwh_15a.Offer
ADD CONSTRAINT FK_idelem4x2548 FOREIGN KEY (UserAfterApprvSuccess_UserNo) REFERENCES dwh_15a.User_ (UserNo);

ALTER TABLE dwh_15a.OfferUDF
ADD CONSTRAINT FK_idelem4x2553 FOREIGN KEY (Offer_Number) REFERENCES dwh_15a.Offer (Number_);
ALTER TABLE dwh_15a.OfferUDF
ADD CONSTRAINT FK_idelem4x2555 FOREIGN KEY (UDFDefinition_Entity, UDFDefinition_ID) REFERENCES dwh_15a.UDFDefinition (Entity, ID);

ALTER TABLE dwh_15a.RequisitionOfferParameter
ADD CONSTRAINT FK_idelem4x2614 FOREIGN KEY (CommissionType_Number, CommissionType_UDS_Number) REFERENCES dwh_15a.UDSElement (Number_, UserDefinedSelection_Number);
ALTER TABLE dwh_15a.RequisitionOfferParameter
ADD CONSTRAINT FK_idelem4x2618 FOREIGN KEY (Currency_Number) REFERENCES dwh_15a.Currency (Number_);
ALTER TABLE dwh_15a.RequisitionOfferParameter
ADD CONSTRAINT FK_idelem4x2620 FOREIGN KEY (OfferTitle_Number) REFERENCES dwh_15a.OfferTitle (Number_);
ALTER TABLE dwh_15a.RequisitionOfferParameter
ADD CONSTRAINT FK_idelem4x2622 FOREIGN KEY (PayFrequencyBasis_Number) REFERENCES dwh_15a.PayFrequencyBasis (Number_);
ALTER TABLE dwh_15a.RequisitionOfferParameter
ADD CONSTRAINT FK_idelem4x2624 FOREIGN KEY (RelocationType_Number, RelocationType_UDS_Number) REFERENCES dwh_15a.UDSElement (Number_, UserDefinedSelection_Number);
ALTER TABLE dwh_15a.RequisitionOfferParameter
ADD CONSTRAINT FK_idelem4x2628 FOREIGN KEY (StockOptionType_Number, StockOptionType_UDS_Number) REFERENCES dwh_15a.UDSElement (Number_, UserDefinedSelection_Number);
ALTER TABLE dwh_15a.RequisitionOfferParameter
ADD CONSTRAINT FK_idelem4x2632 FOREIGN KEY (StockType_Number, StockType_UDS_Number) REFERENCES dwh_15a.UDSElement (Number_, UserDefinedSelection_Number);
ALTER TABLE dwh_15a.RequisitionOfferParameter
ADD CONSTRAINT FK_idelem4x2636 FOREIGN KEY (VacationType_Number) REFERENCES dwh_15a.VacationType (Number_);

ALTER TABLE dwh_15a.RequisitionOfferParameterUDF
ADD CONSTRAINT FK_idelem4x2641 FOREIGN KEY (ReqOfferParameter_Number) REFERENCES dwh_15a.RequisitionOfferParameter (Number_);
ALTER TABLE dwh_15a.RequisitionOfferParameterUDF
ADD CONSTRAINT FK_idelem4x2643 FOREIGN KEY (UDFDefinition_Entity, UDFDefinition_ID) REFERENCES dwh_15a.UDFDefinition (Entity, ID);

ALTER TABLE dwh_15a.Application
ADD CONSTRAINT FK_idelem4x2698 FOREIGN KEY (AceAlertStatus_Number) REFERENCES dwh_15a.EmailState (Number_);
ALTER TABLE dwh_15a.Application
ADD CONSTRAINT FK_idelem4x2700 FOREIGN KEY (ApplicationState_Number) REFERENCES dwh_15a.ApplicationState (Number_);
ALTER TABLE dwh_15a.Application
ADD CONSTRAINT FK_idelem4x2702 FOREIGN KEY (Candidate_Number) REFERENCES dwh_15a.Candidate (Number_);
ALTER TABLE dwh_15a.Application
ADD CONSTRAINT FK_idelem4x2704 FOREIGN KEY (CSWLatestStatus_Number) REFERENCES dwh_15a.CSWStatus (Number_);
ALTER TABLE dwh_15a.Application
ADD CONSTRAINT FK_idelem4x2706 FOREIGN KEY (CSWLatestStep_Number) REFERENCES dwh_15a.CSWStep (Number_);
ALTER TABLE dwh_15a.Application
ADD CONSTRAINT FK_idelem4x2708 FOREIGN KEY (CSWWorkflow_Number) REFERENCES dwh_15a.CSWWorkflow (Number_);
ALTER TABLE dwh_15a.Application
ADD CONSTRAINT FK_idelem4x2710 FOREIGN KEY (DisqualifierResult_Number) REFERENCES dwh_15a.DisqualifierResult (Number_);
ALTER TABLE dwh_15a.Application
ADD CONSTRAINT FK_idelem4x2722 FOREIGN KEY (ProfileInformation_Number) REFERENCES dwh_15a.ProfileInformation (Number_);
ALTER TABLE dwh_15a.Application
ADD CONSTRAINT FK_idelem4x2724 FOREIGN KEY (Requisition_Number) REFERENCES dwh_15a.Requisition (Number_);
ALTER TABLE dwh_15a.Application
ADD CONSTRAINT FK_idelem4x2726 FOREIGN KEY (RmiStatus_Number) REFERENCES dwh_15a.RequestMoreInfoState (Number_);
ALTER TABLE dwh_15a.Application
ADD CONSTRAINT FK_idelem4x2728 FOREIGN KEY (WorkerType_Number) REFERENCES dwh_15a.WorkerType (Number_);

ALTER TABLE dwh_15a.Application_LocationsAppliedTo
ADD CONSTRAINT FK_idelem4x2733 FOREIGN KEY (Application_Number) REFERENCES dwh_15a.Application (Number_);
ALTER TABLE dwh_15a.Application_LocationsAppliedTo
ADD CONSTRAINT FK_idelem4x2735 FOREIGN KEY (Location_Number) REFERENCES dwh_15a.Location (Number_);

ALTER TABLE dwh_15a.ApplicationCertification
ADD CONSTRAINT FK_idelem4x2742 FOREIGN KEY (ProfileInformation_Number) REFERENCES dwh_15a.ProfileInformation (Number_);
ALTER TABLE dwh_15a.ApplicationCertification
ADD CONSTRAINT FK_idelem4x2756 FOREIGN KEY (Certification_Number) REFERENCES dwh_15a.Certification (Number_);
ALTER TABLE dwh_15a.ApplicationCertification
ADD CONSTRAINT FK_idelem4x2758 FOREIGN KEY (Location_Number) REFERENCES dwh_15a.NetworkLocation (Number_);

ALTER TABLE dwh_15a.ApplicationHistoryAnswerItem
ADD CONSTRAINT FK_idelem4x2773 FOREIGN KEY (ProfileLocale_ISO) REFERENCES dwh_15a.Language (ISO);
ALTER TABLE dwh_15a.ApplicationHistoryAnswerItem
ADD CONSTRAINT FK_idelem4x2775 FOREIGN KEY (Event_Number) REFERENCES dwh_15a.CandidateSelectionEvent (Number_);
ALTER TABLE dwh_15a.ApplicationHistoryAnswerItem
ADD CONSTRAINT FK_idelem4x2777 FOREIGN KEY (Message_Number) REFERENCES dwh_15a.Message (Number_);
ALTER TABLE dwh_15a.ApplicationHistoryAnswerItem
ADD CONSTRAINT FK_idelem4x2779 FOREIGN KEY (ProfileInformation_Number) REFERENCES dwh_15a.ProfileInformation (Number_);
ALTER TABLE dwh_15a.ApplicationHistoryAnswerItem
ADD CONSTRAINT FK_idelem4x2781 FOREIGN KEY (Substitute_UserNo) REFERENCES dwh_15a.User_ (UserNo);
ALTER TABLE dwh_15a.ApplicationHistoryAnswerItem
ADD CONSTRAINT FK_idelem4x2783 FOREIGN KEY (User_UserNo) REFERENCES dwh_15a.User_ (UserNo);

ALTER TABLE dwh_15a.ApplicationHistoryUpdateItem
ADD CONSTRAINT FK_idelem4x2798 FOREIGN KEY (ProfileLocale_ISO) REFERENCES dwh_15a.Language (ISO);
ALTER TABLE dwh_15a.ApplicationHistoryUpdateItem
ADD CONSTRAINT FK_idelem4x2800 FOREIGN KEY (Event_Number) REFERENCES dwh_15a.CandidateSelectionEvent (Number_);
ALTER TABLE dwh_15a.ApplicationHistoryUpdateItem
ADD CONSTRAINT FK_idelem4x2802 FOREIGN KEY (Message_Number) REFERENCES dwh_15a.Message (Number_);
ALTER TABLE dwh_15a.ApplicationHistoryUpdateItem
ADD CONSTRAINT FK_idelem4x2804 FOREIGN KEY (ProfileInformation_Number) REFERENCES dwh_15a.ProfileInformation (Number_);
ALTER TABLE dwh_15a.ApplicationHistoryUpdateItem
ADD CONSTRAINT FK_idelem4x2806 FOREIGN KEY (Substitute_UserNo) REFERENCES dwh_15a.User_ (UserNo);
ALTER TABLE dwh_15a.ApplicationHistoryUpdateItem
ADD CONSTRAINT FK_idelem4x2808 FOREIGN KEY (User_UserNo) REFERENCES dwh_15a.User_ (UserNo);

ALTER TABLE dwh_15a.ApplicationTrackingCSWItem
ADD CONSTRAINT FK_idelem4x2825 FOREIGN KEY (ProfileLocale_ISO) REFERENCES dwh_15a.Language (ISO);
ALTER TABLE dwh_15a.ApplicationTrackingCSWItem
ADD CONSTRAINT FK_idelem4x2827 FOREIGN KEY (Event_Number) REFERENCES dwh_15a.CandidateSelectionEvent (Number_);
ALTER TABLE dwh_15a.ApplicationTrackingCSWItem
ADD CONSTRAINT FK_idelem4x2829 FOREIGN KEY (Message_Number) REFERENCES dwh_15a.Message (Number_);
ALTER TABLE dwh_15a.ApplicationTrackingCSWItem
ADD CONSTRAINT FK_idelem4x2831 FOREIGN KEY (ProfileInformation_Number) REFERENCES dwh_15a.ProfileInformation (Number_);
ALTER TABLE dwh_15a.ApplicationTrackingCSWItem
ADD CONSTRAINT FK_idelem4x2833 FOREIGN KEY (Status_Number) REFERENCES dwh_15a.CSWStatus (Number_);
ALTER TABLE dwh_15a.ApplicationTrackingCSWItem
ADD CONSTRAINT FK_idelem4x2835 FOREIGN KEY (Step_Number) REFERENCES dwh_15a.CSWStep (Number_);
ALTER TABLE dwh_15a.ApplicationTrackingCSWItem
ADD CONSTRAINT FK_idelem4x2837 FOREIGN KEY (Substitute_UserNo) REFERENCES dwh_15a.User_ (UserNo);
ALTER TABLE dwh_15a.ApplicationTrackingCSWItem
ADD CONSTRAINT FK_idelem4x2839 FOREIGN KEY (User_UserNo) REFERENCES dwh_15a.User_ (UserNo);
ALTER TABLE dwh_15a.ApplicationTrackingCSWItem
ADD CONSTRAINT FK_idelem4x2841 FOREIGN KEY (Workflow_Number) REFERENCES dwh_15a.CSWWorkflow (Number_);

ALTER TABLE dwh_15a.AppTrackingCSWItem_CSWMotives
ADD CONSTRAINT FK_idelem4x2846 FOREIGN KEY (ATCSWItem_Number) REFERENCES dwh_15a.ApplicationTrackingCSWItem (Number_);
ALTER TABLE dwh_15a.AppTrackingCSWItem_CSWMotives
ADD CONSTRAINT FK_idelem4x2848 FOREIGN KEY (CSWMotive_Number) REFERENCES dwh_15a.CSWMotive (Number_);

ALTER TABLE dwh_15a.Experience
ADD CONSTRAINT FK_idelem4x2855 FOREIGN KEY (ProfileInformation_Number) REFERENCES dwh_15a.ProfileInformation (Number_);
ALTER TABLE dwh_15a.Experience
ADD CONSTRAINT FK_idelem4x2887 FOREIGN KEY (Employer_Number) REFERENCES dwh_15a.CieEmployer (Number_);
ALTER TABLE dwh_15a.Experience
ADD CONSTRAINT FK_idelem4x2889 FOREIGN KEY (JobFunction_Number) REFERENCES dwh_15a.JobField (Number_);
ALTER TABLE dwh_15a.Experience
ADD CONSTRAINT FK_idelem4x2891 FOREIGN KEY (Location_Number) REFERENCES dwh_15a.NetworkLocation (Number_);

ALTER TABLE dwh_15a.ExperienceUDF
ADD CONSTRAINT FK_idelem4x2896 FOREIGN KEY (Experience_Number) REFERENCES dwh_15a.Experience (Number_);
ALTER TABLE dwh_15a.ExperienceUDF
ADD CONSTRAINT FK_idelem4x2898 FOREIGN KEY (UDFDefinition_Entity, UDFDefinition_ID) REFERENCES dwh_15a.UDFDefinition (Entity, ID);

ALTER TABLE dwh_15a.ProfileInformation
ADD CONSTRAINT FK_idelem4x2931 FOREIGN KEY (Locale_ISO) REFERENCES dwh_15a.Language (ISO);
ALTER TABLE dwh_15a.ProfileInformation
ADD CONSTRAINT FK_idelem4x2937 FOREIGN KEY (RequestedLocale_ISO) REFERENCES dwh_15a.Language (ISO);
ALTER TABLE dwh_15a.ProfileInformation
ADD CONSTRAINT FK_idelem4x2949 FOREIGN KEY (Candidate_Number) REFERENCES dwh_15a.Candidate (Number_);
ALTER TABLE dwh_15a.ProfileInformation
ADD CONSTRAINT FK_idelem4x2951 FOREIGN KEY (ErtAckgmntStatus_Number) REFERENCES dwh_15a.EmailState (Number_);
ALTER TABLE dwh_15a.ProfileInformation
ADD CONSTRAINT FK_idelem4x2953 FOREIGN KEY (ErtThankyouStatus_Number) REFERENCES dwh_15a.EmailState (Number_);
ALTER TABLE dwh_15a.ProfileInformation
ADD CONSTRAINT FK_idelem4x2967 FOREIGN KEY (InfoFeeder_Number) REFERENCES dwh_15a.InfoFeeder (Number_);
ALTER TABLE dwh_15a.ProfileInformation
ADD CONSTRAINT FK_idelem4x2969 FOREIGN KEY (InitialAppMedium_Number) REFERENCES dwh_15a.ApplicationMedium (Number_);
ALTER TABLE dwh_15a.ProfileInformation
ADD CONSTRAINT FK_idelem4x2971 FOREIGN KEY (Medium_Number) REFERENCES dwh_15a.ApplicationMedium (Number_);
ALTER TABLE dwh_15a.ProfileInformation
ADD CONSTRAINT FK_idelem4x2975 FOREIGN KEY (RecruitmentSource_Number) REFERENCES dwh_15a.RecruitmentSource (Number_);
ALTER TABLE dwh_15a.ProfileInformation
ADD CONSTRAINT FK_idelem4x2977 FOREIGN KEY (RecruitmentSourceEvent_Number) REFERENCES dwh_15a.RecruitmentSourceEvent (Number_);

ALTER TABLE dwh_15a.Reference
ADD CONSTRAINT FK_idelem4x2984 FOREIGN KEY (ProfileInformation_Number) REFERENCES dwh_15a.ProfileInformation (Number_);
ALTER TABLE dwh_15a.Reference
ADD CONSTRAINT FK_idelem4x3004 FOREIGN KEY (Country_Number) REFERENCES dwh_15a.NetworkLocation (Number_);
ALTER TABLE dwh_15a.Reference
ADD CONSTRAINT FK_idelem4x3006 FOREIGN KEY (ReferenceType_Number) REFERENCES dwh_15a.ReferenceType (Number_);
ALTER TABLE dwh_15a.Reference
ADD CONSTRAINT FK_idelem4x3008 FOREIGN KEY (RelationshipLength_Number) REFERENCES dwh_15a.RelationshipLength (Number_);

ALTER TABLE dwh_15a.Study
ADD CONSTRAINT FK_idelem4x3015 FOREIGN KEY (ProfileInformation_Number) REFERENCES dwh_15a.ProfileInformation (Number_);
ALTER TABLE dwh_15a.Study
ADD CONSTRAINT FK_idelem4x3041 FOREIGN KEY (Institution_Number) REFERENCES dwh_15a.CieInstitution (Number_);
ALTER TABLE dwh_15a.Study
ADD CONSTRAINT FK_idelem4x3043 FOREIGN KEY (OtherInstnLocation_Number) REFERENCES dwh_15a.NetworkLocation (Number_);
ALTER TABLE dwh_15a.Study
ADD CONSTRAINT FK_idelem4x3045 FOREIGN KEY (Program_Number) REFERENCES dwh_15a.CieProgram (Number_);
ALTER TABLE dwh_15a.Study
ADD CONSTRAINT FK_idelem4x3047 FOREIGN KEY (ProgramType_Number) REFERENCES dwh_15a.ProgramType (Number_);
ALTER TABLE dwh_15a.Study
ADD CONSTRAINT FK_idelem4x3049 FOREIGN KEY (StudyLevel_Number) REFERENCES dwh_15a.StudyLevel (Number_);

ALTER TABLE dwh_15a.StudyUDF
ADD CONSTRAINT FK_idelem4x3054 FOREIGN KEY (Study_Number) REFERENCES dwh_15a.Study (Number_);
ALTER TABLE dwh_15a.StudyUDF
ADD CONSTRAINT FK_idelem4x3056 FOREIGN KEY (UDFDefinition_Entity, UDFDefinition_ID) REFERENCES dwh_15a.UDFDefinition (Entity, ID);

ALTER TABLE dwh_15a.DiversityPossibleAnswer
ADD CONSTRAINT FK_idelem4x3071 FOREIGN KEY (Question_Number) REFERENCES dwh_15a.DiversityQuestion (Number_);
ALTER TABLE dwh_15a.DiversityPossibleAnswer
ADD CONSTRAINT FK_idelem4x3077 FOREIGN KEY (PossibleAnswerType_Number) REFERENCES dwh_15a.DiversityPossibleAnswerType (Number_);

ALTER TABLE dwh_15a.DiversityQuestion
ADD CONSTRAINT FK_idelem4x3088 FOREIGN KEY (QuestionType_Number) REFERENCES dwh_15a.QuestionType (Number_);
ALTER TABLE dwh_15a.DiversityQuestion
ADD CONSTRAINT FK_idelem4x3090 FOREIGN KEY (RegulationQuestionType_Number) REFERENCES dwh_15a.DiversityQuestionType (Number_);
ALTER TABLE dwh_15a.DiversityQuestion
ADD CONSTRAINT FK_idelem4x3092 FOREIGN KEY (Status_Number) REFERENCES dwh_15a.AdminEntityStatus (Number_);

ALTER TABLE dwh_15a.PossibleAnswer
ADD CONSTRAINT FK_idelem4x3099 FOREIGN KEY (Question_Number) REFERENCES dwh_15a.Question (Number_);
ALTER TABLE dwh_15a.PossibleAnswer
ADD CONSTRAINT FK_idelem4x3107 FOREIGN KEY (DisqualifierResult_Number) REFERENCES dwh_15a.DisqualifierResult (Number_);

ALTER TABLE dwh_15a.Question
ADD CONSTRAINT FK_idelem4x3128 FOREIGN KEY (EEQuestionType_Number) REFERENCES dwh_15a.EmploymentEquityQuestionType (Number_);
ALTER TABLE dwh_15a.Question
ADD CONSTRAINT FK_idelem4x3130 FOREIGN KEY (Status_Number) REFERENCES dwh_15a.AdminEntityStatus (Number_);
ALTER TABLE dwh_15a.Question
ADD CONSTRAINT FK_idelem4x3132 FOREIGN KEY (TypeOfQuestion_Number) REFERENCES dwh_15a.QuestionType (Number_);

ALTER TABLE dwh_15a.JobInformation
ADD CONSTRAINT FK_idelem4x3195 FOREIGN KEY (BonusCurrency_Number) REFERENCES dwh_15a.Currency (Number_);
ALTER TABLE dwh_15a.JobInformation
ADD CONSTRAINT FK_idelem4x3197 FOREIGN KEY (BudgetCurrency_Number) REFERENCES dwh_15a.Currency (Number_);
ALTER TABLE dwh_15a.JobInformation
ADD CONSTRAINT FK_idelem4x3199 FOREIGN KEY (CitizenshipStatus_Number) REFERENCES dwh_15a.CitizenshipStatus (Number_);
ALTER TABLE dwh_15a.JobInformation
ADD CONSTRAINT FK_idelem4x3201 FOREIGN KEY (ContingentCurrency_Number) REFERENCES dwh_15a.Currency (Number_);
ALTER TABLE dwh_15a.JobInformation
ADD CONSTRAINT FK_idelem4x3203 FOREIGN KEY (Creator_UserNo) REFERENCES dwh_15a.User_ (UserNo);
ALTER TABLE dwh_15a.JobInformation
ADD CONSTRAINT FK_idelem4x3205 FOREIGN KEY (CSWWorkflow_Number) REFERENCES dwh_15a.CSWWorkflow (Number_);
ALTER TABLE dwh_15a.JobInformation
ADD CONSTRAINT FK_idelem4x3207 FOREIGN KEY (EEJobGroup_Number) REFERENCES dwh_15a.EmploymentEquityJobGroup (Number_);
ALTER TABLE dwh_15a.JobInformation
ADD CONSTRAINT FK_idelem4x3209 FOREIGN KEY (EEJobCategory_Number) REFERENCES dwh_15a.EmploymentEquityJobCategory (Number_);
ALTER TABLE dwh_15a.JobInformation
ADD CONSTRAINT FK_idelem4x3211 FOREIGN KEY (EEEstablishment_Number) REFERENCES dwh_15a.EmploymentEquityEstablishment (Number_);
ALTER TABLE dwh_15a.JobInformation
ADD CONSTRAINT FK_idelem4x3213 FOREIGN KEY (HireType_Number) REFERENCES dwh_15a.HireType (Number_);
ALTER TABLE dwh_15a.JobInformation
ADD CONSTRAINT FK_idelem4x3215 FOREIGN KEY (JobField_Number) REFERENCES dwh_15a.JobField (Number_);
ALTER TABLE dwh_15a.JobInformation
ADD CONSTRAINT FK_idelem4x3217 FOREIGN KEY (JobInformationGroup_Number) REFERENCES dwh_15a.Group_ (Number_);
ALTER TABLE dwh_15a.JobInformation
ADD CONSTRAINT FK_idelem4x3219 FOREIGN KEY (JobLevel_Number) REFERENCES dwh_15a.JobLevel (Number_);
ALTER TABLE dwh_15a.JobInformation
ADD CONSTRAINT FK_idelem4x3221 FOREIGN KEY (JobRole_Number) REFERENCES dwh_15a.JobRole (Number_);
ALTER TABLE dwh_15a.JobInformation
ADD CONSTRAINT FK_idelem4x3223 FOREIGN KEY (JobSchedule_Number) REFERENCES dwh_15a.JobSchedule (Number_);
ALTER TABLE dwh_15a.JobInformation
ADD CONSTRAINT FK_idelem4x3225 FOREIGN KEY (JobShift_Number) REFERENCES dwh_15a.JobShift (Number_);
ALTER TABLE dwh_15a.JobInformation
ADD CONSTRAINT FK_idelem4x3227 FOREIGN KEY (JobType_Number) REFERENCES dwh_15a.JobType (Number_);
ALTER TABLE dwh_15a.JobInformation
ADD CONSTRAINT FK_idelem4x3229 FOREIGN KEY (OfferParameter_Number) REFERENCES dwh_15a.RequisitionOfferParameter (Number_);
ALTER TABLE dwh_15a.JobInformation
ADD CONSTRAINT FK_idelem4x3231 FOREIGN KEY (Organization_Number) REFERENCES dwh_15a.Organization (Number_);
ALTER TABLE dwh_15a.JobInformation
ADD CONSTRAINT FK_idelem4x3233 FOREIGN KEY (OvertimeStatus_Number) REFERENCES dwh_15a.OvertimeStatus (Number_);
ALTER TABLE dwh_15a.JobInformation
ADD CONSTRAINT FK_idelem4x3235 FOREIGN KEY (PrimaryLocation_Number) REFERENCES dwh_15a.Location (Number_);
ALTER TABLE dwh_15a.JobInformation
ADD CONSTRAINT FK_idelem4x3237 FOREIGN KEY (Program_Number) REFERENCES dwh_15a.CieProgram (Number_);
ALTER TABLE dwh_15a.JobInformation
ADD CONSTRAINT FK_idelem4x3239 FOREIGN KEY (RecruiterOwner_UserNo) REFERENCES dwh_15a.User_ (UserNo);
ALTER TABLE dwh_15a.JobInformation
ADD CONSTRAINT FK_idelem4x3241 FOREIGN KEY (StudyLevel_Number) REFERENCES dwh_15a.StudyLevel (Number_);
ALTER TABLE dwh_15a.JobInformation
ADD CONSTRAINT FK_idelem4x3243 FOREIGN KEY (WillingnessToTravel_Number) REFERENCES dwh_15a.WillingnessToTravel (Number_);
ALTER TABLE dwh_15a.JobInformation
ADD CONSTRAINT FK_idelem4x3245 FOREIGN KEY (EmploymentStatus_Number) REFERENCES dwh_15a.EmploymentStatus (Number_);

ALTER TABLE dwh_15a.JobInformation_OtherLocations
ADD CONSTRAINT FK_idelem4x3250 FOREIGN KEY (JobInformation_Number) REFERENCES dwh_15a.JobInformation (Number_);
ALTER TABLE dwh_15a.JobInformation_OtherLocations
ADD CONSTRAINT FK_idelem4x3252 FOREIGN KEY (Location_Number) REFERENCES dwh_15a.Location (Number_);

ALTER TABLE dwh_15a.JobInformationUDF
ADD CONSTRAINT FK_idelem4x3257 FOREIGN KEY (JobInformation_Number) REFERENCES dwh_15a.JobInformation (Number_);
ALTER TABLE dwh_15a.JobInformationUDF
ADD CONSTRAINT FK_idelem4x3259 FOREIGN KEY (UDFDefinition_Entity, UDFDefinition_ID) REFERENCES dwh_15a.UDFDefinition (Entity, ID);

ALTER TABLE dwh_15a.JobTemplate
ADD CONSTRAINT FK_idelem4x3280 FOREIGN KEY (BaseJobTemplate_Number) REFERENCES dwh_15a.JobTemplate (Number_);
ALTER TABLE dwh_15a.JobTemplate
ADD CONSTRAINT FK_idelem4x3282 FOREIGN KEY (Department_Number) REFERENCES dwh_15a.Department (Number_);
ALTER TABLE dwh_15a.JobTemplate
ADD CONSTRAINT FK_idelem4x3284 FOREIGN KEY (JobInformation_Number) REFERENCES dwh_15a.JobInformation (Number_);
ALTER TABLE dwh_15a.JobTemplate
ADD CONSTRAINT FK_idelem4x3286 FOREIGN KEY (State_Number) REFERENCES dwh_15a.JobTemplateState (Number_);

ALTER TABLE dwh_15a.Requisition
ADD CONSTRAINT FK_idelem4x3335 FOREIGN KEY (ApprovalContext_No) REFERENCES dwh_15a.ApprovalContext (No);
ALTER TABLE dwh_15a.Requisition
ADD CONSTRAINT FK_idelem4x3337 FOREIGN KEY (BaseJobTemplate_Number) REFERENCES dwh_15a.JobTemplate (Number_);
ALTER TABLE dwh_15a.Requisition
ADD CONSTRAINT FK_idelem4x3339 FOREIGN KEY (CompletionLevel_Number) REFERENCES dwh_15a.CompletionLevel (Number_);
ALTER TABLE dwh_15a.Requisition
ADD CONSTRAINT FK_idelem4x3341 FOREIGN KEY (ContactEmailExternal_UserNo) REFERENCES dwh_15a.User_ (UserNo);
ALTER TABLE dwh_15a.Requisition
ADD CONSTRAINT FK_idelem4x3343 FOREIGN KEY (ContactEmailInternal_UserNo) REFERENCES dwh_15a.User_ (UserNo);
ALTER TABLE dwh_15a.Requisition
ADD CONSTRAINT FK_idelem4x3345 FOREIGN KEY (ContactNameExternal_UserNo) REFERENCES dwh_15a.User_ (UserNo);
ALTER TABLE dwh_15a.Requisition
ADD CONSTRAINT FK_idelem4x3347 FOREIGN KEY (ContactNameInternal_UserNo) REFERENCES dwh_15a.User_ (UserNo);
ALTER TABLE dwh_15a.Requisition
ADD CONSTRAINT FK_idelem4x3349 FOREIGN KEY (Department_Number) REFERENCES dwh_15a.Department (Number_);
ALTER TABLE dwh_15a.Requisition
ADD CONSTRAINT FK_idelem4x3351 FOREIGN KEY (HiringManager_UserNo) REFERENCES dwh_15a.User_ (UserNo);
ALTER TABLE dwh_15a.Requisition
ADD CONSTRAINT FK_idelem4x3353 FOREIGN KEY (HiringManagerAssistant_UserNo) REFERENCES dwh_15a.User_ (UserNo);
ALTER TABLE dwh_15a.Requisition
ADD CONSTRAINT FK_idelem4x3355 FOREIGN KEY (JobInformation_Number) REFERENCES dwh_15a.JobInformation (Number_);
ALTER TABLE dwh_15a.Requisition
ADD CONSTRAINT FK_idelem4x3357 FOREIGN KEY (Justification_Number) REFERENCES dwh_15a.Justification (Number_);
ALTER TABLE dwh_15a.Requisition
ADD CONSTRAINT FK_idelem4x3359 FOREIGN KEY (RecruiterAssistant_UserNo) REFERENCES dwh_15a.User_ (UserNo);
ALTER TABLE dwh_15a.Requisition
ADD CONSTRAINT FK_idelem4x3361 FOREIGN KEY (ResumeState_Number) REFERENCES dwh_15a.RequisitionState (Number_);
ALTER TABLE dwh_15a.Requisition
ADD CONSTRAINT FK_idelem4x3363 FOREIGN KEY (State_Number) REFERENCES dwh_15a.RequisitionState (Number_);

ALTER TABLE dwh_15a.Requisition_Collaborators
ADD CONSTRAINT FK_idelem4x3368 FOREIGN KEY (Requisition_Number) REFERENCES dwh_15a.Requisition (Number_);
ALTER TABLE dwh_15a.Requisition_Collaborators
ADD CONSTRAINT FK_idelem4x3370 FOREIGN KEY (Collaborator_UserNo) REFERENCES dwh_15a.User_ (UserNo);

ALTER TABLE dwh_15a.RequisitionEvent
ADD CONSTRAINT FK_idelem4x3377 FOREIGN KEY (Requisition_Number) REFERENCES dwh_15a.Requisition (Number_);
ALTER TABLE dwh_15a.RequisitionEvent
ADD CONSTRAINT FK_idelem4x3379 FOREIGN KEY (WorkAction_Number) REFERENCES dwh_15a.WorkAction (Number_);
ALTER TABLE dwh_15a.RequisitionEvent
ADD CONSTRAINT FK_idelem4x3385 FOREIGN KEY (Operator_UserNo) REFERENCES dwh_15a.User_ (UserNo);
ALTER TABLE dwh_15a.RequisitionEvent
ADD CONSTRAINT FK_idelem4x3387 FOREIGN KEY (SubstituteOperator_UserNo) REFERENCES dwh_15a.User_ (UserNo);

ALTER TABLE dwh_15a.RequisitionHistory
ADD CONSTRAINT FK_idelem4x3392 FOREIGN KEY (Requisition_Number) REFERENCES dwh_15a.Requisition (Number_);
ALTER TABLE dwh_15a.RequisitionHistory
ADD CONSTRAINT FK_idelem4x3396 FOREIGN KEY (RequisitionState_Number) REFERENCES dwh_15a.RequisitionState (Number_);
ALTER TABLE dwh_15a.RequisitionHistory
ADD CONSTRAINT FK_idelem4x3400 FOREIGN KEY (Creator_UserNo) REFERENCES dwh_15a.User_ (UserNo);
ALTER TABLE dwh_15a.RequisitionHistory
ADD CONSTRAINT FK_idelem4x3402 FOREIGN KEY (RecruiterOwner_UserNo) REFERENCES dwh_15a.User_ (UserNo);

ALTER TABLE dwh_15a.Agency
ADD CONSTRAINT FK_idelem4x3415 FOREIGN KEY (RecruitmentSource_Number) REFERENCES dwh_15a.RecruitmentSource (Number_);

ALTER TABLE dwh_15a.Agent
ADD CONSTRAINT FK_idelem4x3428 FOREIGN KEY (CorrespondenceLocale_ISO) REFERENCES dwh_15a.Language (ISO);
ALTER TABLE dwh_15a.Agent
ADD CONSTRAINT FK_idelem4x3450 FOREIGN KEY (Agency_Number) REFERENCES dwh_15a.Agency (Number_);
ALTER TABLE dwh_15a.Agent
ADD CONSTRAINT FK_idelem4x3452 FOREIGN KEY (RecruitmentSource_Number) REFERENCES dwh_15a.RecruitmentSource (Number_);
ALTER TABLE dwh_15a.Agent
ADD CONSTRAINT FK_idelem4x3454 FOREIGN KEY (TimeZone_Number) REFERENCES dwh_15a.TaleoTimeZone (Number_);

ALTER TABLE dwh_15a.JobBoard
ADD CONSTRAINT FK_idelem4x3463 FOREIGN KEY (JobboardType_Number) REFERENCES dwh_15a.JobBoardType (Number_);
ALTER TABLE dwh_15a.JobBoard
ADD CONSTRAINT FK_idelem4x3465 FOREIGN KEY (RecruitmentSource_Number) REFERENCES dwh_15a.RecruitmentSource (Number_);

ALTER TABLE dwh_15a.RecruitmentSource
ADD CONSTRAINT FK_idelem4x3476 FOREIGN KEY (NetworkLocation_Number) REFERENCES dwh_15a.NetworkLocation (Number_);
ALTER TABLE dwh_15a.RecruitmentSource
ADD CONSTRAINT FK_idelem4x3478 FOREIGN KEY (ObjectOrigin_Number) REFERENCES dwh_15a.Origin (Number_);
ALTER TABLE dwh_15a.RecruitmentSource
ADD CONSTRAINT FK_idelem4x3480 FOREIGN KEY (ParentSource_Number) REFERENCES dwh_15a.RecruitmentSource (Number_);
ALTER TABLE dwh_15a.RecruitmentSource
ADD CONSTRAINT FK_idelem4x3482 FOREIGN KEY (State_Number) REFERENCES dwh_15a.RecruitmentSourceState (Number_);
ALTER TABLE dwh_15a.RecruitmentSource
ADD CONSTRAINT FK_idelem4x3484 FOREIGN KEY (Type_Number) REFERENCES dwh_15a.RecruitmentSourceType (Number_);
ALTER TABLE dwh_15a.RecruitmentSource
ADD CONSTRAINT FK_idelem4x3486 FOREIGN KEY (Visibility_Number) REFERENCES dwh_15a.RecruitmentSourceVisibility (Number_);

ALTER TABLE dwh_15a.RecruitmentSourceEvent
ADD CONSTRAINT FK_idelem4x3493 FOREIGN KEY (Source_Number) REFERENCES dwh_15a.RecruitmentSource (Number_);

ALTER TABLE dwh_15a.RecruitSource_JobFields
ADD CONSTRAINT FK_idelem4x3514 FOREIGN KEY (RecruitmentSource_Number) REFERENCES dwh_15a.RecruitmentSource (Number_);
ALTER TABLE dwh_15a.RecruitSource_JobFields
ADD CONSTRAINT FK_idelem4x3516 FOREIGN KEY (JobField_Number) REFERENCES dwh_15a.JobField (Number_);

ALTER TABLE dwh_15a.RecruitSource_Locations
ADD CONSTRAINT FK_idelem4x3521 FOREIGN KEY (RecruitmentSource_Number) REFERENCES dwh_15a.RecruitmentSource (Number_);
ALTER TABLE dwh_15a.RecruitSource_Locations
ADD CONSTRAINT FK_idelem4x3523 FOREIGN KEY (Location_Number) REFERENCES dwh_15a.Location (Number_);

ALTER TABLE dwh_15a.RecruitSource_Organizations
ADD CONSTRAINT FK_idelem4x3528 FOREIGN KEY (RecruitmentSource_Number) REFERENCES dwh_15a.RecruitmentSource (Number_);
ALTER TABLE dwh_15a.RecruitSource_Organizations
ADD CONSTRAINT FK_idelem4x3530 FOREIGN KEY (Organization_Number) REFERENCES dwh_15a.Organization (Number_);

ALTER TABLE dwh_15a.SourcingRequestAgent
ADD CONSTRAINT FK_idelem4x3535 FOREIGN KEY (Requisition_Number) REFERENCES dwh_15a.Requisition (Number_);
ALTER TABLE dwh_15a.SourcingRequestAgent
ADD CONSTRAINT FK_idelem4x3537 FOREIGN KEY (Agent_Number) REFERENCES dwh_15a.Agent (Number_);
ALTER TABLE dwh_15a.SourcingRequestAgent
ADD CONSTRAINT FK_idelem4x3543 FOREIGN KEY (SourcingRequestStatus_Number) REFERENCES dwh_15a.SourcingRequestStatus (Number_);

ALTER TABLE dwh_15a.SourcingRequest
ADD CONSTRAINT FK_idelem4x3548 FOREIGN KEY (Requisition_Number) REFERENCES dwh_15a.Requisition (Number_);
ALTER TABLE dwh_15a.SourcingRequest
ADD CONSTRAINT FK_idelem4x3550 FOREIGN KEY (JobBoard_Number) REFERENCES dwh_15a.JobBoard (Number_);
ALTER TABLE dwh_15a.SourcingRequest
ADD CONSTRAINT FK_idelem4x3560 FOREIGN KEY (SourcingRequestStatus_Number) REFERENCES dwh_15a.SourcingRequestStatus (Number_);

ALTER TABLE dwh_15a.SourcingRequestHistory
ADD CONSTRAINT FK_idelem4x3565 FOREIGN KEY (Requisition_Number) REFERENCES dwh_15a.Requisition (Number_);
ALTER TABLE dwh_15a.SourcingRequestHistory
ADD CONSTRAINT FK_idelem4x3567 FOREIGN KEY (JobBoard_Number) REFERENCES dwh_15a.JobBoard (Number_);
ALTER TABLE dwh_15a.SourcingRequestHistory
ADD CONSTRAINT FK_idelem4x3575 FOREIGN KEY (SourcingRequestStatus_Number) REFERENCES dwh_15a.SourcingRequestStatus (Number_);

ALTER TABLE dwh_15a.UDFDefinition
ADD CONSTRAINT FK_idelem4x3588 FOREIGN KEY (Type_Number) REFERENCES dwh_15a.UDFType (Number_);
ALTER TABLE dwh_15a.UDFDefinition
ADD CONSTRAINT FK_idelem4x3590 FOREIGN KEY (UserDefinedSelection_Number) REFERENCES dwh_15a.UserDefinedSelection (Number_);

ALTER TABLE dwh_15a.UDSElement
ADD CONSTRAINT FK_idelem4x3597 FOREIGN KEY (UserDefinedSelection_Number) REFERENCES dwh_15a.UserDefinedSelection (Number_);

ALTER TABLE dwh_15a.UserDefinedSelection
ADD CONSTRAINT FK_idelem4x3628 FOREIGN KEY (Origin_Number) REFERENCES dwh_15a.Origin (Number_);

ALTER TABLE dwh_15a.Process
ADD CONSTRAINT FK_idelem4x3732 FOREIGN KEY (Definition_Number) REFERENCES dwh_15a.ProcessDefinition (Number_);
ALTER TABLE dwh_15a.Process
ADD CONSTRAINT FK_idelem4x3734 FOREIGN KEY (State_Number) REFERENCES dwh_15a.ExecutionState (Number_);

ALTER TABLE dwh_15a.ProcessDefinition
ADD CONSTRAINT FK_idelem4x3747 FOREIGN KEY (Status_Number) REFERENCES dwh_15a.AdminEntityStatus (Number_);

ALTER TABLE dwh_15a.Process_Steps
ADD CONSTRAINT FK_idelem4x3752 FOREIGN KEY (Process_Number) REFERENCES dwh_15a.Process (Number_);
ALTER TABLE dwh_15a.Process_Steps
ADD CONSTRAINT FK_idelem4x3754 FOREIGN KEY (Step_Number) REFERENCES dwh_15a.Step (Number_);

ALTER TABLE dwh_15a.Step
ADD CONSTRAINT FK_idelem4x3765 FOREIGN KEY (Definition_Number) REFERENCES dwh_15a.StepDefinition (Number_);
ALTER TABLE dwh_15a.Step
ADD CONSTRAINT FK_idelem4x3767 FOREIGN KEY (Task_Number) REFERENCES dwh_15a.Task (Number_);
ALTER TABLE dwh_15a.Step
ADD CONSTRAINT FK_idelem4x3769 FOREIGN KEY (State_Number) REFERENCES dwh_15a.ExecutionSate (Number_);

ALTER TABLE dwh_15a.Task
ADD CONSTRAINT FK_idelem4x3799 FOREIGN KEY (PriorityType_Number) REFERENCES dwh_15a.PriorityType (Number_);
ALTER TABLE dwh_15a.Task
ADD CONSTRAINT FK_idelem4x3801 FOREIGN KEY (Type_Number) REFERENCES dwh_15a.TaskType (Number_);

ALTER TABLE dwh_15a.Task_Assignees
ADD CONSTRAINT FK_idelem4x3806 FOREIGN KEY (Task_Number) REFERENCES dwh_15a.Task (Number_);
ALTER TABLE dwh_15a.Task_Assignees
ADD CONSTRAINT FK_idelem4x3808 FOREIGN KEY (Assignee_UserNo) REFERENCES dwh_15a.User_ (UserNo);

ALTER TABLE dwh_15a.TransitionProcess
ADD CONSTRAINT FK_idelem4x3815 FOREIGN KEY (Mentor_UserNo) REFERENCES dwh_15a.User_ (UserNo);
ALTER TABLE dwh_15a.TransitionProcess
ADD CONSTRAINT FK_idelem4x3817 FOREIGN KEY (Process_Number) REFERENCES dwh_15a.Process (Number_);
ALTER TABLE dwh_15a.TransitionProcess
ADD CONSTRAINT FK_idelem4x3819 FOREIGN KEY (ProcessSubject_Number) REFERENCES dwh_15a.ProcessSubject (Number_);
ALTER TABLE dwh_15a.TransitionProcess
ADD CONSTRAINT FK_idelem4x3821 FOREIGN KEY (ProfileInformation_Number) REFERENCES dwh_15a.ProfileInformation (Number_);

ALTER TABLE dwh_15a.TransitionProcessUDF
ADD CONSTRAINT FK_idelem4x3826 FOREIGN KEY (TransitionProcess_Number) REFERENCES dwh_15a.TransitionProcess (Number_);
ALTER TABLE dwh_15a.TransitionProcessUDF
ADD CONSTRAINT FK_idelem4x3828 FOREIGN KEY (UDFDefinition_Entity, UDFDefinition_ID) REFERENCES dwh_15a.UDFDefinition (Entity, ID);
ALTER TABLE dwh_15a.TransitionProcessUDF
ADD CONSTRAINT FK_idelem4x3834 FOREIGN KEY (UDSElement_Code) REFERENCES dwh_15a.UDSElement (Number_);

ALTER TABLE dwh_15a.TransitionProcess_Esignatures
ADD CONSTRAINT FK_idelem4x3841 FOREIGN KEY (TransitionProcess_Number) REFERENCES dwh_15a.TransitionProcess (Number_);
ALTER TABLE dwh_15a.TransitionProcess_Esignatures
ADD CONSTRAINT FK_idelem4x3843 FOREIGN KEY (Esignature_Number) REFERENCES dwh_15a.ESignature (No);

ALTER TABLE dwh_15a.ESignature
ADD CONSTRAINT FK_idelem4x3862 FOREIGN KEY (ESignatureDefinition_Number) REFERENCES dwh_15a.ESignatureDefinition (No);

ALTER TABLE dwh_15a.ESignatureDefinition
ADD CONSTRAINT FK_idelem4x3875 FOREIGN KEY (ESignatureType_Number) REFERENCES dwh_15a.ESignatureType (Number_);

ALTER TABLE dwh_15a.ProcessSubject
ADD CONSTRAINT FK_idelem4x3882 FOREIGN KEY (TalentUser_Number) REFERENCES dwh_15a.TalentUser (Number_);
ALTER TABLE dwh_15a.ProcessSubject
ADD CONSTRAINT FK_idelem4x3884 FOREIGN KEY (DirectDeposit_Number) REFERENCES dwh_15a.DirectDeposit (Number_);
ALTER TABLE dwh_15a.ProcessSubject
ADD CONSTRAINT FK_idelem4x3886 FOREIGN KEY (Citizenship_Number) REFERENCES dwh_15a.Citizenship (Number_);
ALTER TABLE dwh_15a.ProcessSubject
ADD CONSTRAINT FK_idelem4x3910 FOREIGN KEY (DocumentTitleA1_Number) REFERENCES dwh_15a.DocumentTitle1 (Number_);
ALTER TABLE dwh_15a.ProcessSubject
ADD CONSTRAINT FK_idelem4x3918 FOREIGN KEY (DocumentTitleA2_Number) REFERENCES dwh_15a.DocumentTitle1 (Number_);
ALTER TABLE dwh_15a.ProcessSubject
ADD CONSTRAINT FK_idelem4x3926 FOREIGN KEY (DocumentTitleA3_Number) REFERENCES dwh_15a.DocumentTitle1 (Number_);
ALTER TABLE dwh_15a.ProcessSubject
ADD CONSTRAINT FK_idelem4x3934 FOREIGN KEY (DocumentTitleB_Number) REFERENCES dwh_15a.DocumentTitleB (Number_);
ALTER TABLE dwh_15a.ProcessSubject
ADD CONSTRAINT FK_idelem4x3942 FOREIGN KEY (DocumentTitleC_Number) REFERENCES dwh_15a.DocumentTitleC (Number_);

ALTER TABLE dwh_15a.
ADD CONSTRAINT FK_idelem4x3981 FOREIGN KEY (ProcessSubject_Number) REFERENCES dwh_15a.ProcessSubject (Number_);
ALTER TABLE dwh_15a.
ADD CONSTRAINT FK_idelem4x3983 FOREIGN KEY (DirectDeposit_Number) REFERENCES dwh_15a.DirectDeposit (Number_);

ALTER TABLE dwh_15a.ProcessSubjectUDF
ADD CONSTRAINT FK_idelem4x3988 FOREIGN KEY (ProcessSubject_Number) REFERENCES dwh_15a.ProcessSubject (Number_);
ALTER TABLE dwh_15a.ProcessSubjectUDF
ADD CONSTRAINT FK_idelem4x3990 FOREIGN KEY (UDFDefinition_Entity, UDFDefinition_ID) REFERENCES dwh_15a.UDFDefinition (Entity, ID);
ALTER TABLE dwh_15a.ProcessSubjectUDF
ADD CONSTRAINT FK_idelem4x3996 FOREIGN KEY (UDSElement_Code) REFERENCES dwh_15a.UDSElement (Number_);