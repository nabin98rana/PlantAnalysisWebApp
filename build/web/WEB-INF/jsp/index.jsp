

<%@include file="header.jsp" %>

<br/>
<br/>
<br/>

<a href="${SITE_URL}/addplant" style="margin-top: 150px; margin-right: 225px;" class=" btn btn-default pull-right"><span class="glyphicon glyphicon-plus"></span></a>

<br/>
<br/>
<br/>

<div style="margin-left: 600px; margin-top: 5px;">
    <a href="${SITE_URL}/plants"><button class="btn btn-primary">View Plants</button></a>
</div>

<br/>
<br/>
<br/>

<div style="margin-left: 200px;height: 250px; width: 900px;">
    <h1>Plant Information</h1>
    <table class="table table-bordered table-hover table-striped table-condensed">
        <tr>
            <th>Plant Id</th>
            <th>Client Id</th>
            <th>Local Name</th>
            <th>Scientific Name</th>
            <th>Description</th>
            <th>Height</th>
            <th>Localization</th>
            <th>Status</th>
            <th>Action</th>
        </tr>
        <c:forEach var="p" items="${plants}">
            <tr>
                <td>${p.plantId}</td>
                <td>${p.clientId}</td>
                <td>${p.plantName}</td>
                <td>${p.plantScientificName}</td>
                <td>${p.plantDescription}</td>
                <td>${p.plantHeight}</td>
                <td>${p.plantLocalization}</td>
                <td>${p.status}</td>
                <td>
                    <a href="${SITE_URL}/edit/${p.plantId}">  <span class="glyphicon glyphicon-pencil btn btn-sm btn-success"></span></a>
                    <a href="${SITE_URL}/delete/${p.plantId}" onclick="return confirm('Are you sure?')"><span class="glyphicon glyphicon-trash btn btn-sm btn-danger"></span></a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>

<%@include file="footer.jsp" %>