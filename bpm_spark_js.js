var index =  ${_tableData}.getSelectedIndex(true);
if(index != undefined)
{
      var record = ${_tableData}.getRecord(index, true);
      var validityCheck = ${updateReason1}.getText();
      if(!validityCheck)
{
alert("Error: EOE Event Audit Reason field is required. Please describe change made.");
return false;
}
      if (validityCheck.length > 1000)
            {
var charsTooMany = validityCheck.length - 1000;
                        alert("The Update Reason provided is longer than 1000 charaters.  Please remove " + charsTooMany + " characters and click Update again. ");
            }
     else
           {
                  record.AUDIT_UPDATE_REASON = ${updateReason1}.getText();
record.EVENT_COMMENT =  ${updateComment}.getData();
record.PAF_ATTEMPTS = ${updateRetryCounter}.getSelectedItem();
record.OBJECT_FUNCTION = ${updateValidationOrder}.getSelectedItem();
record.ORDERDB_ATTEMPTS = ${updateOrderdbAttempts}.getSelectedItem();
record.COST_EST_CHECK_ATTEMPTS = ${updateCostEstCheckAttempts}.getSelectedItem();
record.RETRY_COUNT = ${_updateNewRetryCount}.getSelectedItem();
// Store the old record.EVENT_STATUS before overlaying it with what the user entered
var origEventStatus = record.EVENT_STATUS;
record.EVENT_STATUS = ${statusEventUpdate}.getSelectedItem();
record.AUDIT_UPDATED_FIELDS_AND_VALUES =  "REQUEST_STATUS" + "/" + origEventStatus + "/" + record.EVENT_STATUS;

// Get the create timestamp of the original Event table transaction.
record.AUDIT_ORIG_CREATE_TS = record.CREATE_DT;

${bindUpdatedId}.setData(record);
var listData = ${bindUpdatedId}.getData();
console.dir(listData);
${updateStoTableService}.execute(listData);
          }
}
else
{
alert("Please select a row first");
}



execute service control:
alert("Record Updated Project ID : "+ ${projectIdUpdate}.getData());
var sqlQuery = ${_dataFetchQuery}.getData();
${fetchStoEventList}.execute(sqlQuery);
${_tableData}.clear();
${_tableData}.clearSearch();
//${_tableData}.setPageIndex(0);
${updateModelSection}.setVisible(false);

on error:

alert("Service error: while Updating-->" + me.getLastError().errorText);
${updateModelSection}.setVisible(false);

//log.info( "updateEOE_EVENT_STORE_TABLE"+tw.system.error);
tw.local.error  = new tw.object.AjaxError();
tw.local.error.errorText =  tw.system.error.xpath("/error/localizedMessage").item(0).getText();


search :
//Create Variables to store values
var orderId,
clientOrderId,
projectId,
eventStatus,
bpmInstance,
projectType,
projectStatus,
designerProjectID,
desginerBPMId,
flowType,
serviceName,
serviceAction,
releaseVersion,
fundingStatus,
orchestrationApp,
dateFromObject,
dateFromDate,
dateFromMonth,
dateFromYear,
dateFrom,
dateToObject,
dateToDate,
dateToMonth,
dateToYear,
dateTo,
terminationReason;
//Retrieve DOM Input Elements - By Control ID
console.log("Begin Search Operation");
orderId = ${orderId}.getData();
clientOrderId = ${clientOrderId}.getData();
projectId = ${projectId}.getData();
bpmInstance = ${bpmInstance}.getData();
eventStatus = ${eventStatus}.getSelectedItem();
projectType = ${projectType}.getSelectedItem();
projectStatus = ${projectStatus}.getSelectedItem();
designerProjectID = ${designerProjectID}.getSelectedItem();
desginerBPMId = ${desginerBPMId}.getSelectedItem();
flowType = ${flowType}.getSelectedItem();
serviceName = ${serviceName}.getSelectedItem();
serviceAction = ${serviceAction}.getSelectedItem();
releaseVersion = ${releaseVersion}.getSelectedItem();
fundingStatus = ${fundingStatus}.getSelectedItem();
console.log("--------fundingStatus---------"+fundingStatus);
orchestrationApp = ${orchestrationApp}.getSelectedItem();
dateFromObject = ${dateFrom}.getData();
dateToObject = ${dateTo}.getData();
terminationReason = ${TerminationReasonCID}.getData();

//Parsing Date from dateFromObject. Format needed: 01/01/2019
if(dateFromObject){
dateFromMonth = String(dateFromObject.getMonth() + 1);
dateFromYear = String(dateFromObject.getFullYear());
dateFromDate = String(dateFromObject.getDate());
dateFrom = dateFromMonth + "/" + dateFromDate + "/" + dateFromYear;
}

//Parsing Date from dateToObject. Format needed: 01/01/2019
if(dateToObject){
dateToMonth = String(dateToObject.getMonth() + 1);
dateToYear = String(dateToObject.getFullYear());
dateToDate = String(dateToObject.getDate());
dateTo = dateToMonth + "/" + dateToDate + "/" + dateToYear;
}

//Construct SQL Query to retrieve all records from STO_EVENT_STORE_V view
var sqlQuery = "SELECT EVENT_ID,XID,OBJECT_KEY,OBJECT_NAME,OBJECT_FUNCTION,EVENT_PRIORITY,EVENT_STATUS,EVENT_STATUS_NAME,CONNECTOR_ID,EVENT_COMMENT,CREATE_DT,LAST_MODIFIED_DT,PROJECT_TYPE,PROJECT_STATUS,TCAM_UID_RMS,TCAM_UID_BPM,O_FLOW_TYPE,C_FLOW_TYPE,FUND_APRVL,SERVICE_NAME,TASK_NAME,RELEASE_VERSION,CURRENT_TASK,FLOW_TYPE,O_ORCH_APP,C_ORCH_APP,ORCHTARGETAPP,ORDER_SERVICE_ID,PAF_REQUEST_ID,PAF_REQUEST_STATUS,RETRY_COUNT,EMAIL_STATUS,SOE_REQUEST_ID,PL_UID,CLIENT_UID,PAF_ATTEMPTS,ORDERDB_ATTEMPTS,COST_EST_CHECK_ATTEMPTS, AUDIT_UPDATE_REASON,AUDIT_UPDATE_ATTUID,AUDIT_UPDATE_ATTUID_FIRSTNAME,AUDIT_UPDATE_ATTUID_LASTNAME,AUDIT_UPDATE_TS,AUDIT_UPDATE_COUNT,TERMINATION_REASON,TERMINATION_REASON_OTHER,FLOW_CHANGE_REASON  FROM EOE_EVENT_STORE_V WHERE 1=1";


console.log("Search Parameters: ");


//Null Check and Input Parameter Setter - Prints Search Parameters too
//Order ID | ORDER_SERVICE_ID
if(orderId){
console.log("Order ID: " + orderId.toString());
sqlQuery += " AND ORDER_SERVICE_ID = " + orderId + "";
}


//Client Order ID | SOE_REQUEST_ID
if(clientOrderId){
console.log("Client Order ID: " + clientOrderId);
sqlQuery += " AND SOE_REQUEST_ID = " + "'" + clientOrderId + "'";
}


//Project ID | PROJECT_ID
if(projectId){
console.log("Project ID: " + projectId.toString());
sqlQuery += " AND EVENT_ID = " + projectId + "";
}


//Event Status  | EVENT_STATUS
if(eventStatus){
console.log("EVENT_STATUS: " + eventStatus.toString());
sqlQuery += " AND EVENT_STATUS = " + eventStatus + "";
}


//BPMInstance | XID
if(bpmInstance){
console.log("BPMInstance: " + bpmInstance.toString());
sqlQuery += " AND XID = '2072."  + bpmInstance + "'";
}


//PROJECT_TYPE
if(projectType){
console.log("PROJECT_TYPE: " + projectType.toString());
sqlQuery += " AND PROJECT_TYPE = " + "'" + projectType + "'";
}


//PROJECT_STATUS
if(projectStatus){
console.log("PROJECT_STATUS: " + projectStatus.toString());
sqlQuery += " AND PROJECT_STATUS = " + "'" + projectStatus + "'";
}


//DesignerProjectID|TCAM_UID_RMS
if(designerProjectID){
console.log("DesignerProjectID: " + designerProjectID.toString());
sqlQuery += " AND TCAM_UID_RMS = " + "'" + designerProjectID + "'";
}



//DesginerBPMId|TCAM_UID_BPM
if(desginerBPMId){
console.log("DesginerBPMId: " + desginerBPMId.toString());
sqlQuery += " AND TCAM_UID_BPM = " + "'" + desginerBPMId + "'";
}


//FLOW_TYPE
if(flowType){
console.log("FlowType: " + flowType.toString());
sqlQuery += " AND FLOW_TYPE = '" + flowType + "'";
}


//SERVICE_NAME
if(serviceName){
console.log("SERVICE_NAME: " + serviceName.toString());
sqlQuery += " AND SERVICE_NAME = " + "'" + serviceName + "'";
}
//ServiceAction | TASK_NAME
if(serviceAction){
console.log("serviceAction: " + serviceAction.toString());
sqlQuery += " AND TASK_NAME = " + "'" + serviceAction + "'";
}
//RELEASE_VERSION
if(releaseVersion){
console.log("RELEASE_VERSION: " + releaseVersion.toString());
sqlQuery += " AND RELEASE_VERSION = " + "'" + releaseVersion + "'";
}
// Funding Status|FUND_APRVL
if(fundingStatus)
{
console.log("FUND_APRVL: " + fundingStatus);
sqlQuery += " AND FUND_APRVL = " + "'" + fundingStatus + "'";
}
//ORCHESTRATION TOOL
if(orchestrationApp){
console.log("ORCHESTRATION TOOL: " + orchestrationApp.toString());
sqlQuery += " AND ORCHTARGETAPP = " + "'" + orchestrationApp + "'";
}
//TERMINATION_REASON
//alert(terminationReason);
if(terminationReason){
console.log("terminationReason: " + terminationReason);
sqlQuery += " AND TERMINATION_REASON = " + "'" + terminationReason + "'";
}

//Date Range (Create Date From - Create Date To) | dateFromObject - dateToObject
if(dateFromObject && dateToObject && (dateFromObject <= dateToObject)){
console.log("Create Date From: " + dateFrom);
console.log("Create Date To: " + dateTo);
sqlQuery += " AND TRUNC(CREATE_DT) BETWEEN TO_DATE(" + "'" + dateFrom + "','mm/dd/yyyy') AND TO_DATE(" + "'" + dateTo + "','mm/dd/yyyy')";
}


sqlQuery += " ORDER BY LAST_MODIFIED_DT DESC ";
console.log("Execute SQL Query : " + sqlQuery);
var row = ${_maxRow}.getData();
var listData = {'query' : sqlQuery, 'row' : row};
console.log("listData for Create---->" + JSON.stringify(listData));
${_dataFetchQuery}.setData(listData);
listdata = ${_dataFetchQuery}.getData();
console.dir(listData);
${fetchStoEventList}.execute();
${_wellTableView}.setVisible(true);
${_tableData}.clear();
${_tableData}.clearSearch();

Date Initialization API
tw.local.Request.startDate=new Date("January 10, 2017");

view definition : select TEXT

  2  FROM DBA_VIEWS

  3  where OWNER = '<owner_name>'

  4  and VIEW_NAME  = '<view_name>';

sg248355.pdf Deliver Modern UI for IBM BPM with the Coach Framework and Other Approaches


Soap UI settings set JAVA_OPTS=%JAVA_OPTS% -Dsoapui.https.protocols="SSLv3,TLSv1.2"