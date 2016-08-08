<%@include file="../header.jsp" %>

<br/>
<br/>
<br/>



<div class="form-group col-sm-4" style="margin-left: 250px;">
    <h1>Add Plant Information </h1>
    <form method="post" class="form-horizontal" role="form" action="${SITE_URL}/save"> 
        <div class="form-group">
            <label>Client Id</label>
            <input type="number" name="clientId" required="required" placeholder="Enter Client Id" class="form-control"/>
        </div>   
        <div class="form-group">
            <label>Plant Name</label>
            <input type="text" name="plantName" required="required" placeholder="Enter Name" class="form-control"/>
        </div>
        <div class="form-group">
            <label>Scientific Name</label>
            <input type="text" name="plantScientificName" required="required" placeholder="Enter Scientific Name" class="form-control"/>
        </div>
        <div class="form-group">
            <label>Description</label>
            <textarea type="text" name="plantDescription" required="required" placeholder="Enter Description" class="form-control"></textarea>
        </div>

        <div class="form-group">
            <label>Height</label>
            <input type="number" name="plantHeight" required="required" placeholder="Enter Height" class="form-control"/>
        </div>
        <div class="form-group">
            <label>Localization</label>
            <input type="text" name="plantLocalization" required="required" placeholder="Enter Localization" class="form-control"/>
        </div>

        <div class="form-group">
            <label>Status</label>
            <label><input type="checkbox" name="status" />Active</label>
        </div>
        
    </form>
        
     
</div>

<br/>
<br/>
<br/>

  
<%@include file="../footer.jsp" %>
