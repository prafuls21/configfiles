USE [jbpm715]
GO
/****** Object:  Table [dbo].[Attachment]    Script Date: 9/7/2021 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attachment](
	[id] [numeric](19, 0) NOT NULL,
	[accessType] [int] NULL,
	[attachedAt] [datetime] NULL,
	[attachmentContentId] [numeric](19, 0) NOT NULL,
	[contentType] [varchar](255) NULL,
	[name] [varchar](255) NULL,
	[attachment_size] [int] NULL,
	[attachedBy_id] [varchar](255) NULL,
	[TaskData_Attachments_Id] [numeric](19, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ATTACHMENT_ID_SEQ]    Script Date: 9/7/2021 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ATTACHMENT_ID_SEQ](
	[next_val] [numeric](19, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AUDIT_ID_SEQ]    Script Date: 9/7/2021 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AUDIT_ID_SEQ](
	[next_val] [numeric](19, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AuditTaskImpl]    Script Date: 9/7/2021 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AuditTaskImpl](
	[id] [numeric](19, 0) NOT NULL,
	[activationTime] [datetime] NULL,
	[actualOwner] [varchar](255) NULL,
	[createdBy] [varchar](255) NULL,
	[createdOn] [datetime] NULL,
	[deploymentId] [varchar](255) NULL,
	[description] [varchar](255) NULL,
	[dueDate] [datetime] NULL,
	[lastModificationDate] [datetime] NULL,
	[name] [varchar](255) NULL,
	[parentId] [numeric](19, 0) NOT NULL,
	[priority] [int] NOT NULL,
	[processId] [varchar](255) NULL,
	[processInstanceId] [numeric](19, 0) NOT NULL,
	[processSessionId] [numeric](19, 0) NOT NULL,
	[status] [varchar](255) NULL,
	[taskId] [numeric](19, 0) NULL,
	[workItemId] [numeric](19, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BAM_TASK_ID_SEQ]    Script Date: 9/7/2021 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BAM_TASK_ID_SEQ](
	[next_val] [numeric](19, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BAMTaskSummary]    Script Date: 9/7/2021 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BAMTaskSummary](
	[pk] [numeric](19, 0) NOT NULL,
	[createdDate] [datetime] NULL,
	[duration] [numeric](19, 0) NULL,
	[endDate] [datetime] NULL,
	[processInstanceId] [numeric](19, 0) NOT NULL,
	[startDate] [datetime] NULL,
	[status] [varchar](255) NULL,
	[taskId] [numeric](19, 0) NOT NULL,
	[taskName] [varchar](255) NULL,
	[userId] [varchar](255) NULL,
	[OPTLOCK] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[pk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BOOLEANEXPR_ID_SEQ]    Script Date: 9/7/2021 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BOOLEANEXPR_ID_SEQ](
	[next_val] [numeric](19, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BooleanExpression]    Script Date: 9/7/2021 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BooleanExpression](
	[id] [numeric](19, 0) NOT NULL,
	[expression] [text] NULL,
	[type] [varchar](255) NULL,
	[Escalation_Constraints_Id] [numeric](19, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CASE_FILE_DATA_LOG_ID_SEQ]    Script Date: 9/7/2021 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CASE_FILE_DATA_LOG_ID_SEQ](
	[next_val] [numeric](19, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CASE_ID_INFO_ID_SEQ]    Script Date: 9/7/2021 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CASE_ID_INFO_ID_SEQ](
	[next_val] [numeric](19, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CASE_ROLE_ASSIGN_LOG_ID_SEQ]    Script Date: 9/7/2021 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CASE_ROLE_ASSIGN_LOG_ID_SEQ](
	[next_val] [numeric](19, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CaseFileDataLog]    Script Date: 9/7/2021 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CaseFileDataLog](
	[id] [numeric](19, 0) NOT NULL,
	[caseDefId] [varchar](255) NULL,
	[caseId] [varchar](255) NULL,
	[itemName] [varchar](255) NULL,
	[itemType] [varchar](255) NULL,
	[itemValue] [varchar](255) NULL,
	[lastModified] [datetime] NULL,
	[lastModifiedBy] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CaseIdInfo]    Script Date: 9/7/2021 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CaseIdInfo](
	[id] [numeric](19, 0) NOT NULL,
	[caseIdPrefix] [varchar](255) NULL,
	[currentValue] [numeric](19, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UKftvt225gyxpjnl3d06alqkqyj] UNIQUE NONCLUSTERED 
(
	[caseIdPrefix] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CaseRoleAssignmentLog]    Script Date: 9/7/2021 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CaseRoleAssignmentLog](
	[id] [numeric](19, 0) NOT NULL,
	[caseId] [varchar](255) NULL,
	[entityId] [varchar](255) NULL,
	[processInstanceId] [numeric](19, 0) NOT NULL,
	[roleName] [varchar](255) NULL,
	[type] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[COMMENT_ID_SEQ]    Script Date: 9/7/2021 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COMMENT_ID_SEQ](
	[next_val] [numeric](19, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Content]    Script Date: 9/7/2021 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Content](
	[id] [numeric](19, 0) NOT NULL,
	[content] [image] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CONTENT_ID_SEQ]    Script Date: 9/7/2021 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CONTENT_ID_SEQ](
	[next_val] [numeric](19, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CONTEXT_MAPPING_INFO_ID_SEQ]    Script Date: 9/7/2021 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CONTEXT_MAPPING_INFO_ID_SEQ](
	[next_val] [numeric](19, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContextMappingInfo]    Script Date: 9/7/2021 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContextMappingInfo](
	[mappingId] [numeric](19, 0) NOT NULL,
	[CONTEXT_ID] [varchar](255) NOT NULL,
	[KSESSION_ID] [numeric](19, 0) NOT NULL,
	[OWNER_ID] [varchar](255) NULL,
	[OPTLOCK] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[mappingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CORRELATION_KEY_ID_SEQ]    Script Date: 9/7/2021 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CORRELATION_KEY_ID_SEQ](
	[next_val] [numeric](19, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CORRELATION_PROP_ID_SEQ]    Script Date: 9/7/2021 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CORRELATION_PROP_ID_SEQ](
	[next_val] [numeric](19, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CorrelationKeyInfo]    Script Date: 9/7/2021 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CorrelationKeyInfo](
	[keyId] [numeric](19, 0) NOT NULL,
	[name] [varchar](255) NULL,
	[processInstanceId] [numeric](19, 0) NOT NULL,
	[OPTLOCK] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[keyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CorrelationPropertyInfo]    Script Date: 9/7/2021 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CorrelationPropertyInfo](
	[propertyId] [numeric](19, 0) NOT NULL,
	[name] [varchar](255) NULL,
	[value] [varchar](255) NULL,
	[OPTLOCK] [int] NULL,
	[correlationKey_keyId] [numeric](19, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[propertyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Deadline]    Script Date: 9/7/2021 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deadline](
	[id] [numeric](19, 0) NOT NULL,
	[deadline_date] [datetime] NULL,
	[escalated] [smallint] NULL,
	[Deadlines_StartDeadLine_Id] [numeric](19, 0) NULL,
	[Deadlines_EndDeadLine_Id] [numeric](19, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DEADLINE_ID_SEQ]    Script Date: 9/7/2021 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DEADLINE_ID_SEQ](
	[next_val] [numeric](19, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Delegation_delegates]    Script Date: 9/7/2021 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Delegation_delegates](
	[task_id] [numeric](19, 0) NOT NULL,
	[entity_id] [varchar](255) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DEPLOY_STORE_ID_SEQ]    Script Date: 9/7/2021 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DEPLOY_STORE_ID_SEQ](
	[next_val] [numeric](19, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeploymentStore]    Script Date: 9/7/2021 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeploymentStore](
	[id] [numeric](19, 0) NOT NULL,
	[attributes] [varchar](255) NULL,
	[DEPLOYMENT_ID] [varchar](255) NULL,
	[deploymentUnit] [text] NULL,
	[state] [int] NULL,
	[updateDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UK85rgskt09thd8mkkfl3tb0y81] UNIQUE NONCLUSTERED 
(
	[DEPLOYMENT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[email_header]    Script Date: 9/7/2021 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[email_header](
	[id] [numeric](19, 0) NOT NULL,
	[body] [text] NULL,
	[fromAddress] [varchar](255) NULL,
	[language] [varchar](255) NULL,
	[replyToAddress] [varchar](255) NULL,
	[subject] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EMAILNOTIFHEAD_ID_SEQ]    Script Date: 9/7/2021 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMAILNOTIFHEAD_ID_SEQ](
	[next_val] [numeric](19, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ERROR_INFO_ID_SEQ]    Script Date: 9/7/2021 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ERROR_INFO_ID_SEQ](
	[next_val] [numeric](19, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ErrorInfo]    Script Date: 9/7/2021 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ErrorInfo](
	[id] [numeric](19, 0) NOT NULL,
	[message] [varchar](255) NULL,
	[stacktrace] [varchar](5000) NULL,
	[timestamp] [datetime] NULL,
	[REQUEST_ID] [numeric](19, 0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Escalation]    Script Date: 9/7/2021 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Escalation](
	[id] [numeric](19, 0) NOT NULL,
	[name] [varchar](255) NULL,
	[Deadline_Escalation_Id] [numeric](19, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ESCALATION_ID_SEQ]    Script Date: 9/7/2021 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ESCALATION_ID_SEQ](
	[next_val] [numeric](19, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EventTypes]    Script Date: 9/7/2021 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventTypes](
	[InstanceId] [numeric](19, 0) NOT NULL,
	[element] [varchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EXEC_ERROR_INFO_ID_SEQ]    Script Date: 9/7/2021 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EXEC_ERROR_INFO_ID_SEQ](
	[next_val] [numeric](19, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExecutionErrorInfo]    Script Date: 9/7/2021 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExecutionErrorInfo](
	[id] [numeric](19, 0) NOT NULL,
	[ERROR_ACK] [smallint] NULL,
	[ERROR_ACK_AT] [datetime] NULL,
	[ERROR_ACK_BY] [varchar](255) NULL,
	[ACTIVITY_ID] [numeric](19, 0) NULL,
	[ACTIVITY_NAME] [varchar](255) NULL,
	[DEPLOYMENT_ID] [varchar](255) NULL,
	[ERROR_INFO] [text] NULL,
	[ERROR_DATE] [datetime] NULL,
	[ERROR_ID] [varchar](255) NULL,
	[ERROR_MSG] [varchar](255) NULL,
	[INIT_ACTIVITY_ID] [numeric](19, 0) NULL,
	[JOB_ID] [numeric](19, 0) NULL,
	[PROCESS_ID] [varchar](255) NULL,
	[PROCESS_INST_ID] [numeric](19, 0) NULL,
	[ERROR_TYPE] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[I18NText]    Script Date: 9/7/2021 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[I18NText](
	[id] [numeric](19, 0) NOT NULL,
	[language] [varchar](255) NULL,
	[shortText] [varchar](255) NULL,
	[text] [text] NULL,
	[Task_Subjects_Id] [numeric](19, 0) NULL,
	[Task_Names_Id] [numeric](19, 0) NULL,
	[Task_Descriptions_Id] [numeric](19, 0) NULL,
	[Reassignment_Documentation_Id] [numeric](19, 0) NULL,
	[Notification_Subjects_Id] [numeric](19, 0) NULL,
	[Notification_Names_Id] [numeric](19, 0) NULL,
	[Notification_Documentation_Id] [numeric](19, 0) NULL,
	[Notification_Descriptions_Id] [numeric](19, 0) NULL,
	[Deadline_Documentation_Id] [numeric](19, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[I18NTEXT_ID_SEQ]    Script Date: 9/7/2021 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[I18NTEXT_ID_SEQ](
	[next_val] [numeric](19, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NODE_INST_LOG_ID_SEQ]    Script Date: 9/7/2021 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NODE_INST_LOG_ID_SEQ](
	[next_val] [numeric](19, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NodeInstanceLog]    Script Date: 9/7/2021 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NodeInstanceLog](
	[id] [numeric](19, 0) NOT NULL,
	[connection] [varchar](255) NULL,
	[log_date] [datetime] NULL,
	[externalId] [varchar](255) NULL,
	[nodeContainerId] [varchar](255) NULL,
	[nodeId] [varchar](255) NULL,
	[nodeInstanceId] [varchar](255) NULL,
	[nodeName] [varchar](255) NULL,
	[nodeType] [varchar](255) NULL,
	[processId] [varchar](255) NULL,
	[processInstanceId] [numeric](19, 0) NOT NULL,
	[referenceId] [numeric](19, 0) NULL,
	[slaCompliance] [int] NULL,
	[sla_due_date] [datetime] NULL,
	[type] [int] NOT NULL,
	[workItemId] [numeric](19, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notification]    Script Date: 9/7/2021 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notification](
	[DTYPE] [varchar](31) NOT NULL,
	[id] [numeric](19, 0) NOT NULL,
	[priority] [int] NOT NULL,
	[Escalation_Notifications_Id] [numeric](19, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notification_BAs]    Script Date: 9/7/2021 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notification_BAs](
	[task_id] [numeric](19, 0) NOT NULL,
	[entity_id] [varchar](255) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notification_email_header]    Script Date: 9/7/2021 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notification_email_header](
	[Notification_id] [numeric](19, 0) NOT NULL,
	[emailHeaders_id] [numeric](19, 0) NOT NULL,
	[mapkey] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Notification_id] ASC,
	[mapkey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UK_ptaka5kost68h7l3wflv7w6y8] UNIQUE NONCLUSTERED 
(
	[emailHeaders_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NOTIFICATION_ID_SEQ]    Script Date: 9/7/2021 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NOTIFICATION_ID_SEQ](
	[next_val] [numeric](19, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notification_Recipients]    Script Date: 9/7/2021 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notification_Recipients](
	[task_id] [numeric](19, 0) NOT NULL,
	[entity_id] [varchar](255) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrganizationalEntity]    Script Date: 9/7/2021 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrganizationalEntity](
	[DTYPE] [varchar](31) NOT NULL,
	[id] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PeopleAssignments_BAs]    Script Date: 9/7/2021 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PeopleAssignments_BAs](
	[task_id] [numeric](19, 0) NOT NULL,
	[entity_id] [varchar](255) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PeopleAssignments_ExclOwners]    Script Date: 9/7/2021 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PeopleAssignments_ExclOwners](
	[task_id] [numeric](19, 0) NOT NULL,
	[entity_id] [varchar](255) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PeopleAssignments_PotOwners]    Script Date: 9/7/2021 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PeopleAssignments_PotOwners](
	[task_id] [numeric](19, 0) NOT NULL,
	[entity_id] [varchar](255) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PeopleAssignments_Recipients]    Script Date: 9/7/2021 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PeopleAssignments_Recipients](
	[task_id] [numeric](19, 0) NOT NULL,
	[entity_id] [varchar](255) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PeopleAssignments_Stakeholders]    Script Date: 9/7/2021 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PeopleAssignments_Stakeholders](
	[task_id] [numeric](19, 0) NOT NULL,
	[entity_id] [varchar](255) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PROC_INST_LOG_ID_SEQ]    Script Date: 9/7/2021 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PROC_INST_LOG_ID_SEQ](
	[next_val] [numeric](19, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PROCESS_INSTANCE_INFO_ID_SEQ]    Script Date: 9/7/2021 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PROCESS_INSTANCE_INFO_ID_SEQ](
	[next_val] [numeric](19, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProcessInstanceInfo]    Script Date: 9/7/2021 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProcessInstanceInfo](
	[InstanceId] [numeric](19, 0) NOT NULL,
	[lastModificationDate] [datetime] NULL,
	[lastReadDate] [datetime] NULL,
	[processId] [varchar](255) NULL,
	[processInstanceByteArray] [image] NULL,
	[startDate] [datetime] NULL,
	[state] [int] NOT NULL,
	[OPTLOCK] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[InstanceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProcessInstanceLog]    Script Date: 9/7/2021 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProcessInstanceLog](
	[id] [numeric](19, 0) NOT NULL,
	[correlationKey] [varchar](255) NULL,
	[duration] [numeric](19, 0) NULL,
	[end_date] [datetime] NULL,
	[externalId] [varchar](255) NULL,
	[user_identity] [varchar](255) NULL,
	[outcome] [varchar](255) NULL,
	[parentProcessInstanceId] [numeric](19, 0) NULL,
	[processId] [varchar](255) NULL,
	[processInstanceDescription] [varchar](255) NULL,
	[processInstanceId] [numeric](19, 0) NOT NULL,
	[processName] [varchar](255) NULL,
	[processType] [int] NULL,
	[processVersion] [varchar](255) NULL,
	[slaCompliance] [int] NULL,
	[sla_due_date] [datetime] NULL,
	[start_date] [datetime] NULL,
	[status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QUERY_DEF_ID_SEQ]    Script Date: 9/7/2021 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QUERY_DEF_ID_SEQ](
	[next_val] [numeric](19, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QueryDefinitionStore]    Script Date: 9/7/2021 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QueryDefinitionStore](
	[id] [numeric](19, 0) NOT NULL,
	[qExpression] [text] NULL,
	[qName] [varchar](255) NULL,
	[qSource] [varchar](255) NULL,
	[qTarget] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UK1dmy087nhbykucpgjipcnyluv] UNIQUE NONCLUSTERED 
(
	[qName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reassignment]    Script Date: 9/7/2021 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reassignment](
	[id] [numeric](19, 0) NOT NULL,
	[Escalation_Reassignments_Id] [numeric](19, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[REASSIGNMENT_ID_SEQ]    Script Date: 9/7/2021 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[REASSIGNMENT_ID_SEQ](
	[next_val] [numeric](19, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reassignment_potentialOwners]    Script Date: 9/7/2021 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reassignment_potentialOwners](
	[task_id] [numeric](19, 0) NOT NULL,
	[entity_id] [varchar](255) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[REQUEST_INFO_ID_SEQ]    Script Date: 9/7/2021 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[REQUEST_INFO_ID_SEQ](
	[next_val] [numeric](19, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RequestInfo]    Script Date: 9/7/2021 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RequestInfo](
	[id] [numeric](19, 0) NOT NULL,
	[commandName] [varchar](255) NULL,
	[deploymentId] [varchar](255) NULL,
	[executions] [int] NOT NULL,
	[businessKey] [varchar](255) NULL,
	[message] [varchar](255) NULL,
	[owner] [varchar](255) NULL,
	[priority] [int] NOT NULL,
	[processInstanceId] [numeric](19, 0) NULL,
	[requestData] [image] NULL,
	[responseData] [image] NULL,
	[retries] [int] NOT NULL,
	[status] [varchar](255) NULL,
	[timestamp] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SessionInfo]    Script Date: 9/7/2021 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SessionInfo](
	[id] [numeric](19, 0) NOT NULL,
	[lastModificationDate] [datetime] NULL,
	[rulesByteArray] [image] NULL,
	[startDate] [datetime] NULL,
	[OPTLOCK] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SESSIONINFO_ID_SEQ]    Script Date: 9/7/2021 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SESSIONINFO_ID_SEQ](
	[next_val] [numeric](19, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Task]    Script Date: 9/7/2021 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Task](
	[id] [numeric](19, 0) NOT NULL,
	[archived] [smallint] NULL,
	[allowedToDelegate] [varchar](255) NULL,
	[description] [varchar](255) NULL,
	[formName] [varchar](255) NULL,
	[name] [varchar](255) NULL,
	[priority] [int] NOT NULL,
	[subTaskStrategy] [varchar](255) NULL,
	[subject] [varchar](255) NULL,
	[activationTime] [datetime] NULL,
	[createdOn] [datetime] NULL,
	[deploymentId] [varchar](255) NULL,
	[documentAccessType] [int] NULL,
	[documentContentId] [numeric](19, 0) NOT NULL,
	[documentType] [varchar](255) NULL,
	[expirationTime] [datetime] NULL,
	[faultAccessType] [int] NULL,
	[faultContentId] [numeric](19, 0) NOT NULL,
	[faultName] [varchar](255) NULL,
	[faultType] [varchar](255) NULL,
	[outputAccessType] [int] NULL,
	[outputContentId] [numeric](19, 0) NOT NULL,
	[outputType] [varchar](255) NULL,
	[parentId] [numeric](19, 0) NOT NULL,
	[previousStatus] [int] NULL,
	[processId] [varchar](255) NULL,
	[processInstanceId] [numeric](19, 0) NOT NULL,
	[processSessionId] [numeric](19, 0) NOT NULL,
	[skipable] [bit] NOT NULL,
	[status] [varchar](255) NULL,
	[workItemId] [numeric](19, 0) NOT NULL,
	[taskType] [varchar](255) NULL,
	[OPTLOCK] [int] NULL,
	[taskInitiator_id] [varchar](255) NULL,
	[actualOwner_id] [varchar](255) NULL,
	[createdBy_id] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[task_comment]    Script Date: 9/7/2021 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[task_comment](
	[id] [numeric](19, 0) NOT NULL,
	[addedAt] [datetime] NULL,
	[text] [text] NULL,
	[addedBy_id] [varchar](255) NULL,
	[TaskData_Comments_Id] [numeric](19, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TASK_DEF_ID_SEQ]    Script Date: 9/7/2021 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TASK_DEF_ID_SEQ](
	[next_val] [numeric](19, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TASK_EVENT_ID_SEQ]    Script Date: 9/7/2021 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TASK_EVENT_ID_SEQ](
	[next_val] [numeric](19, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TASK_ID_SEQ]    Script Date: 9/7/2021 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TASK_ID_SEQ](
	[next_val] [numeric](19, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TASK_VAR_ID_SEQ]    Script Date: 9/7/2021 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TASK_VAR_ID_SEQ](
	[next_val] [numeric](19, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaskDef]    Script Date: 9/7/2021 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaskDef](
	[id] [numeric](19, 0) NOT NULL,
	[name] [varchar](255) NULL,
	[priority] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaskEvent]    Script Date: 9/7/2021 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaskEvent](
	[id] [numeric](19, 0) NOT NULL,
	[logTime] [datetime] NULL,
	[message] [varchar](255) NULL,
	[processInstanceId] [numeric](19, 0) NULL,
	[taskId] [numeric](19, 0) NULL,
	[type] [varchar](255) NULL,
	[userId] [varchar](255) NULL,
	[OPTLOCK] [int] NULL,
	[workItemId] [numeric](19, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaskVariableImpl]    Script Date: 9/7/2021 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaskVariableImpl](
	[id] [numeric](19, 0) NOT NULL,
	[modificationDate] [datetime] NULL,
	[name] [varchar](255) NULL,
	[processId] [varchar](255) NULL,
	[processInstanceId] [numeric](19, 0) NULL,
	[taskId] [numeric](19, 0) NULL,
	[type] [int] NULL,
	[value] [varchar](4000) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VAR_INST_LOG_ID_SEQ]    Script Date: 9/7/2021 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VAR_INST_LOG_ID_SEQ](
	[next_val] [numeric](19, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VariableInstanceLog]    Script Date: 9/7/2021 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VariableInstanceLog](
	[id] [numeric](19, 0) NOT NULL,
	[log_date] [datetime] NULL,
	[externalId] [varchar](255) NULL,
	[oldValue] [varchar](255) NULL,
	[processId] [varchar](255) NULL,
	[processInstanceId] [numeric](19, 0) NOT NULL,
	[value] [varchar](255) NULL,
	[variableId] [varchar](255) NULL,
	[variableInstanceId] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WorkItemInfo]    Script Date: 9/7/2021 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkItemInfo](
	[workItemId] [numeric](19, 0) NOT NULL,
	[creationDate] [datetime] NULL,
	[name] [varchar](255) NULL,
	[processInstanceId] [numeric](19, 0) NOT NULL,
	[state] [numeric](19, 0) NOT NULL,
	[OPTLOCK] [int] NULL,
	[workItemByteArray] [image] NULL,
PRIMARY KEY CLUSTERED 
(
	[workItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WORKITEMINFO_ID_SEQ]    Script Date: 9/7/2021 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WORKITEMINFO_ID_SEQ](
	[next_val] [numeric](19, 0) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Attachment]  WITH CHECK ADD  CONSTRAINT [FKd5xpm81gxg8n40167lbu5rbfb] FOREIGN KEY([attachedBy_id])
REFERENCES [dbo].[OrganizationalEntity] ([id])
GO
ALTER TABLE [dbo].[Attachment] CHECK CONSTRAINT [FKd5xpm81gxg8n40167lbu5rbfb]
GO
ALTER TABLE [dbo].[Attachment]  WITH CHECK ADD  CONSTRAINT [FKjj9psk52ifamilliyo16epwpc] FOREIGN KEY([TaskData_Attachments_Id])
REFERENCES [dbo].[Task] ([id])
GO
ALTER TABLE [dbo].[Attachment] CHECK CONSTRAINT [FKjj9psk52ifamilliyo16epwpc]
GO
ALTER TABLE [dbo].[BooleanExpression]  WITH CHECK ADD  CONSTRAINT [FKqth56a8k6d8pv6ngsu2vjp4kj] FOREIGN KEY([Escalation_Constraints_Id])
REFERENCES [dbo].[Escalation] ([id])
GO
ALTER TABLE [dbo].[BooleanExpression] CHECK CONSTRAINT [FKqth56a8k6d8pv6ngsu2vjp4kj]
GO
ALTER TABLE [dbo].[CorrelationPropertyInfo]  WITH CHECK ADD  CONSTRAINT [FKbchyl7kb8i6ghvi3dbr86bgo0] FOREIGN KEY([correlationKey_keyId])
REFERENCES [dbo].[CorrelationKeyInfo] ([keyId])
GO
ALTER TABLE [dbo].[CorrelationPropertyInfo] CHECK CONSTRAINT [FKbchyl7kb8i6ghvi3dbr86bgo0]
GO
ALTER TABLE [dbo].[Deadline]  WITH CHECK ADD  CONSTRAINT [FK361ggw230po88svgfasg36i2w] FOREIGN KEY([Deadlines_StartDeadLine_Id])
REFERENCES [dbo].[Task] ([id])
GO
ALTER TABLE [dbo].[Deadline] CHECK CONSTRAINT [FK361ggw230po88svgfasg36i2w]
GO
ALTER TABLE [dbo].[Deadline]  WITH CHECK ADD  CONSTRAINT [FKpeiadnoy228t35213t63c3imm] FOREIGN KEY([Deadlines_EndDeadLine_Id])
REFERENCES [dbo].[Task] ([id])
GO
ALTER TABLE [dbo].[Deadline] CHECK CONSTRAINT [FKpeiadnoy228t35213t63c3imm]
GO
ALTER TABLE [dbo].[Delegation_delegates]  WITH CHECK ADD  CONSTRAINT [FK85x3trafk3wfbrv719cafr591] FOREIGN KEY([task_id])
REFERENCES [dbo].[Task] ([id])
GO
ALTER TABLE [dbo].[Delegation_delegates] CHECK CONSTRAINT [FK85x3trafk3wfbrv719cafr591]
GO
ALTER TABLE [dbo].[Delegation_delegates]  WITH CHECK ADD  CONSTRAINT [FKewkdyi0wrgy9byp6abyglpcxq] FOREIGN KEY([entity_id])
REFERENCES [dbo].[OrganizationalEntity] ([id])
GO
ALTER TABLE [dbo].[Delegation_delegates] CHECK CONSTRAINT [FKewkdyi0wrgy9byp6abyglpcxq]
GO
ALTER TABLE [dbo].[ErrorInfo]  WITH CHECK ADD  CONSTRAINT [FKdarp6ushq06q39jmij3fdpdbs] FOREIGN KEY([REQUEST_ID])
REFERENCES [dbo].[RequestInfo] ([id])
GO
ALTER TABLE [dbo].[ErrorInfo] CHECK CONSTRAINT [FKdarp6ushq06q39jmij3fdpdbs]
GO
ALTER TABLE [dbo].[Escalation]  WITH CHECK ADD  CONSTRAINT [FK37v8ova8ti6jiblda7n6j298e] FOREIGN KEY([Deadline_Escalation_Id])
REFERENCES [dbo].[Deadline] ([id])
GO
ALTER TABLE [dbo].[Escalation] CHECK CONSTRAINT [FK37v8ova8ti6jiblda7n6j298e]
GO
ALTER TABLE [dbo].[EventTypes]  WITH CHECK ADD  CONSTRAINT [FKj0o3uve2nqo5yrjwrkc9jfttq] FOREIGN KEY([InstanceId])
REFERENCES [dbo].[ProcessInstanceInfo] ([InstanceId])
GO
ALTER TABLE [dbo].[EventTypes] CHECK CONSTRAINT [FKj0o3uve2nqo5yrjwrkc9jfttq]
GO
ALTER TABLE [dbo].[I18NText]  WITH CHECK ADD  CONSTRAINT [FK6k8hmfvhko069970eghiy2ifp] FOREIGN KEY([Notification_Descriptions_Id])
REFERENCES [dbo].[Notification] ([id])
GO
ALTER TABLE [dbo].[I18NText] CHECK CONSTRAINT [FK6k8hmfvhko069970eghiy2ifp]
GO
ALTER TABLE [dbo].[I18NText]  WITH CHECK ADD  CONSTRAINT [FK8wn7sw34q6bifsi1pvl2b1yyb] FOREIGN KEY([Deadline_Documentation_Id])
REFERENCES [dbo].[Deadline] ([id])
GO
ALTER TABLE [dbo].[I18NText] CHECK CONSTRAINT [FK8wn7sw34q6bifsi1pvl2b1yyb]
GO
ALTER TABLE [dbo].[I18NText]  WITH CHECK ADD  CONSTRAINT [FKcd6eb4q62d9ab8p0di8pb99ch] FOREIGN KEY([Task_Subjects_Id])
REFERENCES [dbo].[Task] ([id])
GO
ALTER TABLE [dbo].[I18NText] CHECK CONSTRAINT [FKcd6eb4q62d9ab8p0di8pb99ch]
GO
ALTER TABLE [dbo].[I18NText]  WITH CHECK ADD  CONSTRAINT [FKg2jsybeuc8pbj8ek8xwxutuyo] FOREIGN KEY([Notification_Names_Id])
REFERENCES [dbo].[Notification] ([id])
GO
ALTER TABLE [dbo].[I18NText] CHECK CONSTRAINT [FKg2jsybeuc8pbj8ek8xwxutuyo]
GO
ALTER TABLE [dbo].[I18NText]  WITH CHECK ADD  CONSTRAINT [FKiogka67sji8fk4cp7a369895i] FOREIGN KEY([Task_Names_Id])
REFERENCES [dbo].[Task] ([id])
GO
ALTER TABLE [dbo].[I18NText] CHECK CONSTRAINT [FKiogka67sji8fk4cp7a369895i]
GO
ALTER TABLE [dbo].[I18NText]  WITH CHECK ADD  CONSTRAINT [FKp0m7uhipskrljktvfeubdgfid] FOREIGN KEY([Notification_Documentation_Id])
REFERENCES [dbo].[Notification] ([id])
GO
ALTER TABLE [dbo].[I18NText] CHECK CONSTRAINT [FKp0m7uhipskrljktvfeubdgfid]
GO
ALTER TABLE [dbo].[I18NText]  WITH CHECK ADD  CONSTRAINT [FKqxgws3fnukyqlaet11tivqg5u] FOREIGN KEY([Reassignment_Documentation_Id])
REFERENCES [dbo].[Reassignment] ([id])
GO
ALTER TABLE [dbo].[I18NText] CHECK CONSTRAINT [FKqxgws3fnukyqlaet11tivqg5u]
GO
ALTER TABLE [dbo].[I18NText]  WITH CHECK ADD  CONSTRAINT [FKrisdlmalotmk64mdeqpo4s5m0] FOREIGN KEY([Task_Descriptions_Id])
REFERENCES [dbo].[Task] ([id])
GO
ALTER TABLE [dbo].[I18NText] CHECK CONSTRAINT [FKrisdlmalotmk64mdeqpo4s5m0]
GO
ALTER TABLE [dbo].[I18NText]  WITH CHECK ADD  CONSTRAINT [FKthf8ix3t3opf9hya1s04hwsx8] FOREIGN KEY([Notification_Subjects_Id])
REFERENCES [dbo].[Notification] ([id])
GO
ALTER TABLE [dbo].[I18NText] CHECK CONSTRAINT [FKthf8ix3t3opf9hya1s04hwsx8]
GO
ALTER TABLE [dbo].[Notification]  WITH CHECK ADD  CONSTRAINT [FKoxq5uqfg4ylwyijsg2ubyflna] FOREIGN KEY([Escalation_Notifications_Id])
REFERENCES [dbo].[Escalation] ([id])
GO
ALTER TABLE [dbo].[Notification] CHECK CONSTRAINT [FKoxq5uqfg4ylwyijsg2ubyflna]
GO
ALTER TABLE [dbo].[Notification_BAs]  WITH CHECK ADD  CONSTRAINT [FK378pb1cvjv54w4ljqpw99s3wr] FOREIGN KEY([entity_id])
REFERENCES [dbo].[OrganizationalEntity] ([id])
GO
ALTER TABLE [dbo].[Notification_BAs] CHECK CONSTRAINT [FK378pb1cvjv54w4ljqpw99s3wr]
GO
ALTER TABLE [dbo].[Notification_BAs]  WITH CHECK ADD  CONSTRAINT [FKb123fgeomc741s9yc014421yy] FOREIGN KEY([task_id])
REFERENCES [dbo].[Notification] ([id])
GO
ALTER TABLE [dbo].[Notification_BAs] CHECK CONSTRAINT [FKb123fgeomc741s9yc014421yy]
GO
ALTER TABLE [dbo].[Notification_email_header]  WITH CHECK ADD  CONSTRAINT [FKd74pdu41avy2f7a8qyp7wn2n] FOREIGN KEY([emailHeaders_id])
REFERENCES [dbo].[email_header] ([id])
GO
ALTER TABLE [dbo].[Notification_email_header] CHECK CONSTRAINT [FKd74pdu41avy2f7a8qyp7wn2n]
GO
ALTER TABLE [dbo].[Notification_email_header]  WITH CHECK ADD  CONSTRAINT [FKfdnoyp8rl0kxu29l4pyaa5566] FOREIGN KEY([Notification_id])
REFERENCES [dbo].[Notification] ([id])
GO
ALTER TABLE [dbo].[Notification_email_header] CHECK CONSTRAINT [FKfdnoyp8rl0kxu29l4pyaa5566]
GO
ALTER TABLE [dbo].[Notification_Recipients]  WITH CHECK ADD  CONSTRAINT [FKn7v944d0hw37bh0auv4gr3hsf] FOREIGN KEY([task_id])
REFERENCES [dbo].[Notification] ([id])
GO
ALTER TABLE [dbo].[Notification_Recipients] CHECK CONSTRAINT [FKn7v944d0hw37bh0auv4gr3hsf]
GO
ALTER TABLE [dbo].[Notification_Recipients]  WITH CHECK ADD  CONSTRAINT [FKot769nimyq1jvw0m61pgsq5g3] FOREIGN KEY([entity_id])
REFERENCES [dbo].[OrganizationalEntity] ([id])
GO
ALTER TABLE [dbo].[Notification_Recipients] CHECK CONSTRAINT [FKot769nimyq1jvw0m61pgsq5g3]
GO
ALTER TABLE [dbo].[PeopleAssignments_BAs]  WITH CHECK ADD  CONSTRAINT [FKa90cdfgc4km384n1ataqigq67] FOREIGN KEY([entity_id])
REFERENCES [dbo].[OrganizationalEntity] ([id])
GO
ALTER TABLE [dbo].[PeopleAssignments_BAs] CHECK CONSTRAINT [FKa90cdfgc4km384n1ataqigq67]
GO
ALTER TABLE [dbo].[PeopleAssignments_BAs]  WITH CHECK ADD  CONSTRAINT [FKt4xs0glwhbsa0xwg69r6xduv9] FOREIGN KEY([task_id])
REFERENCES [dbo].[Task] ([id])
GO
ALTER TABLE [dbo].[PeopleAssignments_BAs] CHECK CONSTRAINT [FKt4xs0glwhbsa0xwg69r6xduv9]
GO
ALTER TABLE [dbo].[PeopleAssignments_ExclOwners]  WITH CHECK ADD  CONSTRAINT [FK5ituvd6t8uvp63hsx6282xo6h] FOREIGN KEY([entity_id])
REFERENCES [dbo].[OrganizationalEntity] ([id])
GO
ALTER TABLE [dbo].[PeopleAssignments_ExclOwners] CHECK CONSTRAINT [FK5ituvd6t8uvp63hsx6282xo6h]
GO
ALTER TABLE [dbo].[PeopleAssignments_ExclOwners]  WITH CHECK ADD  CONSTRAINT [FKqxbjm1b3dl7w8w2f2y6sk0fv8] FOREIGN KEY([task_id])
REFERENCES [dbo].[Task] ([id])
GO
ALTER TABLE [dbo].[PeopleAssignments_ExclOwners] CHECK CONSTRAINT [FKqxbjm1b3dl7w8w2f2y6sk0fv8]
GO
ALTER TABLE [dbo].[PeopleAssignments_PotOwners]  WITH CHECK ADD  CONSTRAINT [FKh8oqmk4iuh2pmpgby6g8r3jd1] FOREIGN KEY([task_id])
REFERENCES [dbo].[Task] ([id])
GO
ALTER TABLE [dbo].[PeopleAssignments_PotOwners] CHECK CONSTRAINT [FKh8oqmk4iuh2pmpgby6g8r3jd1]
GO
ALTER TABLE [dbo].[PeopleAssignments_PotOwners]  WITH CHECK ADD  CONSTRAINT [FKsa3rrrjsm1qw98ajbbu2s7cjr] FOREIGN KEY([entity_id])
REFERENCES [dbo].[OrganizationalEntity] ([id])
GO
ALTER TABLE [dbo].[PeopleAssignments_PotOwners] CHECK CONSTRAINT [FKsa3rrrjsm1qw98ajbbu2s7cjr]
GO
ALTER TABLE [dbo].[PeopleAssignments_Recipients]  WITH CHECK ADD  CONSTRAINT [FK9gnbv6bplxkxoedj35vg8n7ir] FOREIGN KEY([task_id])
REFERENCES [dbo].[Task] ([id])
GO
ALTER TABLE [dbo].[PeopleAssignments_Recipients] CHECK CONSTRAINT [FK9gnbv6bplxkxoedj35vg8n7ir]
GO
ALTER TABLE [dbo].[PeopleAssignments_Recipients]  WITH CHECK ADD  CONSTRAINT [FKrd0h9ud1bhs9waf2mdmiv6j2r] FOREIGN KEY([entity_id])
REFERENCES [dbo].[OrganizationalEntity] ([id])
GO
ALTER TABLE [dbo].[PeopleAssignments_Recipients] CHECK CONSTRAINT [FKrd0h9ud1bhs9waf2mdmiv6j2r]
GO
ALTER TABLE [dbo].[PeopleAssignments_Stakeholders]  WITH CHECK ADD  CONSTRAINT [FK9uy76cu650rg1nnkrtjwj1e9t] FOREIGN KEY([entity_id])
REFERENCES [dbo].[OrganizationalEntity] ([id])
GO
ALTER TABLE [dbo].[PeopleAssignments_Stakeholders] CHECK CONSTRAINT [FK9uy76cu650rg1nnkrtjwj1e9t]
GO
ALTER TABLE [dbo].[PeopleAssignments_Stakeholders]  WITH CHECK ADD  CONSTRAINT [FKaeyk4nwslvx0jywjomjq7083i] FOREIGN KEY([task_id])
REFERENCES [dbo].[Task] ([id])
GO
ALTER TABLE [dbo].[PeopleAssignments_Stakeholders] CHECK CONSTRAINT [FKaeyk4nwslvx0jywjomjq7083i]
GO
ALTER TABLE [dbo].[Reassignment]  WITH CHECK ADD  CONSTRAINT [FKessy30safh44b30f1cfoujv2k] FOREIGN KEY([Escalation_Reassignments_Id])
REFERENCES [dbo].[Escalation] ([id])
GO
ALTER TABLE [dbo].[Reassignment] CHECK CONSTRAINT [FKessy30safh44b30f1cfoujv2k]
GO
ALTER TABLE [dbo].[Reassignment_potentialOwners]  WITH CHECK ADD  CONSTRAINT [FKftegfexshix752bh2jfxf6bnh] FOREIGN KEY([task_id])
REFERENCES [dbo].[Reassignment] ([id])
GO
ALTER TABLE [dbo].[Reassignment_potentialOwners] CHECK CONSTRAINT [FKftegfexshix752bh2jfxf6bnh]
GO
ALTER TABLE [dbo].[Reassignment_potentialOwners]  WITH CHECK ADD  CONSTRAINT [FKsqrmpvehlc4qe9i0km22nmkjl] FOREIGN KEY([entity_id])
REFERENCES [dbo].[OrganizationalEntity] ([id])
GO
ALTER TABLE [dbo].[Reassignment_potentialOwners] CHECK CONSTRAINT [FKsqrmpvehlc4qe9i0km22nmkjl]
GO
ALTER TABLE [dbo].[Task]  WITH CHECK ADD  CONSTRAINT [FK48d1bfgwf0jqow1yk8ku4xcpi] FOREIGN KEY([taskInitiator_id])
REFERENCES [dbo].[OrganizationalEntity] ([id])
GO
ALTER TABLE [dbo].[Task] CHECK CONSTRAINT [FK48d1bfgwf0jqow1yk8ku4xcpi]
GO
ALTER TABLE [dbo].[Task]  WITH CHECK ADD  CONSTRAINT [FKexuboqnbla7jfyyesyo61ucmb] FOREIGN KEY([createdBy_id])
REFERENCES [dbo].[OrganizationalEntity] ([id])
GO
ALTER TABLE [dbo].[Task] CHECK CONSTRAINT [FKexuboqnbla7jfyyesyo61ucmb]
GO
ALTER TABLE [dbo].[Task]  WITH CHECK ADD  CONSTRAINT [FKpmkxvqq63aed2y2boruu53a0s] FOREIGN KEY([actualOwner_id])
REFERENCES [dbo].[OrganizationalEntity] ([id])
GO
ALTER TABLE [dbo].[Task] CHECK CONSTRAINT [FKpmkxvqq63aed2y2boruu53a0s]
GO
ALTER TABLE [dbo].[task_comment]  WITH CHECK ADD  CONSTRAINT [FKm2mwc1ukcpdsiqwgkoroy6ise] FOREIGN KEY([TaskData_Comments_Id])
REFERENCES [dbo].[Task] ([id])
GO
ALTER TABLE [dbo].[task_comment] CHECK CONSTRAINT [FKm2mwc1ukcpdsiqwgkoroy6ise]
GO
ALTER TABLE [dbo].[task_comment]  WITH CHECK ADD  CONSTRAINT [FKqb4mkarf209y9546w7n75lb7a] FOREIGN KEY([addedBy_id])
REFERENCES [dbo].[OrganizationalEntity] ([id])
GO
ALTER TABLE [dbo].[task_comment] CHECK CONSTRAINT [FKqb4mkarf209y9546w7n75lb7a]
GO
