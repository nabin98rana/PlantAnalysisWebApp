<%@include file="../header.jsp" %>


<br/>
<br/>
<br/>



<div class="form-group" style="margin-left: 260px;">
    <h1>Edit Plant Information</h1>
    <form:form action="${SITE_URL}/save" commandName="plants" method="post">
        <div class="form-group">
        <form:label path="clientId">Client Id</form:label>
        <form:input path="clientId" disabled="true"></form:input>
    </div>
    <div class="form-group">
        <form:label path="plantName">Local Name</form:label>
        <form:input path="plantName"></form:input>
    </div>
    <div class="form-group">
        <form:label path="plantScientificName">Scientific Name</form:label>
        <form:input path="plantScientificName"></form:input>
    </div>
    <div class="form-group">
        <form:label path="plantDescription">Description</form:label>
        <form:textarea path="plantDescription" cssStyle="height:200px; width:300px;"></form:textarea>
    </div>  
    <div class="form-group">
        <form:label path="plantHeight">Height</form:label>
        <form:input path="plantHeight"></form:input>
    </div>
    <div class="form-group">
        <form:label path="plantLocalization">Localization</form:label>
        <form:input path="plantLocalization"></form:input>
    </div>  
    <div class="form-group">
        <form:label path="status">Status</form:label>
        <form:input path="status"></form:input>
    </div> 
        <form:button name="submit" value="submit">Submit</form:button>
</form:form>
</div>

<br/>
<br/>
<br/>
<br/>

<%@include file="../footer.jsp" %>