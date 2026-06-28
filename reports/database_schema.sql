-- Table: companies
CREATE TABLE companies(company_id TEXT,name TEXT);

-- Table: g_assignee_disambiguated
CREATE TABLE "g_assignee_disambiguated" (
"patent_id" TEXT,
  "assignee_sequence" TEXT,
  "assignee_id" TEXT,
  "disambig_assignee_individual_name_first" TEXT,
  "disambig_assignee_individual_name_last" TEXT,
  "disambig_assignee_organization" TEXT,
  "assignee_type" TEXT,
  "location_id" TEXT
);

-- Table: g_cpc_at_issue
CREATE TABLE "g_cpc_at_issue" (
"patent_id" TEXT,
  "cpc_sequence" TEXT,
  "cpc_version_indicator" TEXT,
  "cpc_section" TEXT,
  "cpc_class" TEXT,
  "cpc_subclass" TEXT,
  "cpc_group" TEXT,
  "cpc_type" TEXT,
  "cpc_action_date" TEXT
);

-- Table: g_cpc_current
CREATE TABLE "g_cpc_current" (
"patent_id" TEXT,
  "cpc_sequence" TEXT,
  "cpc_section" TEXT,
  "cpc_class" TEXT,
  "cpc_subclass" TEXT,
  "cpc_group" TEXT,
  "cpc_type" TEXT
);

-- Table: g_cpc_title
CREATE TABLE "g_cpc_title" (
"cpc_subclass" TEXT,
  "cpc_subclass_title" TEXT,
  "cpc_group" TEXT,
  "cpc_group_title" TEXT,
  "cpc_class" TEXT,
  "cpc_class_title" TEXT
);

-- Table: g_inventor_disambiguated
CREATE TABLE "g_inventor_disambiguated" (
"patent_id" TEXT,
  "inventor_sequence" TEXT,
  "inventor_id" TEXT,
  "disambig_inventor_name_first" TEXT,
  "disambig_inventor_name_last" TEXT,
  "gender_code" TEXT,
  "location_id" TEXT
);

-- Table: g_ipc_at_issue
CREATE TABLE "g_ipc_at_issue" (
"patent_id" TEXT,
  "ipc_sequence" TEXT,
  "classification_level" TEXT,
  "section" TEXT,
  "ipc_class" TEXT,
  "subclass" TEXT,
  "main_group" TEXT,
  "subgroup" TEXT,
  "classification_value" TEXT,
  "classification_status" TEXT,
  "classification_data_source" TEXT,
  "action_date" TEXT,
  "ipc_version_indicator" TEXT
);

-- Table: g_patent
CREATE TABLE "g_patent" (
"patent_id" TEXT,
  "patent_type" TEXT,
  "patent_date" TEXT,
  "patent_title" TEXT,
  "wipo_kind" TEXT,
  "num_claims" TEXT,
  "withdrawn" TEXT,
  "filename" TEXT
);

-- Table: g_patent_abstract
CREATE TABLE "g_patent_abstract" (
"patent_id" TEXT,
  "patent_abstract" TEXT
);

-- Table: inventors
CREATE TABLE inventors(
  inventor_id TEXT,
  name,
  country TEXT
);

-- Table: patents
CREATE TABLE patents(
  patent_id TEXT,
  title TEXT,
  abstract TEXT,
  filing_date TEXT,
  year
);

-- Table: relationships
CREATE TABLE relationships(
  patent_id TEXT,
  inventor_id TEXT,
  company_id TEXT
);
