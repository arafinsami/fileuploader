<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

	<div class="child_information">
		<button type="button" class="btn btn-info add_child_row_attachment"
			data-child-validation="required|min_row[1]|max_row[3]|exact_row[3]">Upload
			New PDS</button>
		<table
			class="table table-condensedtable-bordered  table-responsive table-striped child_list"
			style="display: none;">

			<thead>
				<tr class="childHead">
					<th>Title</th>
					<th>Attachment</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody class="childs">
			  <!--
				<tr class="child">
				     <td>
					     <form:input type="text" class="form-control" 
					     data-validation="trim|required|min_length[1]|max_length[255]" 
					     path="pdsList[0].title"  
					     placeholder="Title"/>
					 </td>
					 
					 <td class="row">
			    	    <label class="pull-left col-sm-8 btn btn-default btn-file">
						    Browse <input type="file"  cssClass="form-control" cssErrorClass="has-error"  
						    data-validation="trim|file_allowed_type[jpeg,jpg,png,doc,docx,pdf,ppt,pptx,csv,xls,xls]"
						    name="file"  placeholder="Attachment"/>

						</label>
						<div class="preview hide col-sm-6">
							<span class="child">
								<a href="" title="" target="_blank">
								<i class="fa fa fa-cloud-download" aria-hidden="true"></i></a>
							</span>
						</div>
					 </td>
					    
					  	<td>
							<button type="button" class="btn btn-danger remove_child_row">
							<i class="fa fa-trash"></i>
							</button>
					  </td>
					</tr>
				-->
				<c:forEach items="${album.pdsList}" varStatus="loop"
					var="pds">
					<c:if test="${pds.id!=null}">
						<tr class="child preloaded"
							data-action="${pageContext.request.contextPath}/pds/delete/${pds.id}">
							<form:hidden path="pdsList[${loop.index}].id" />
							
							<td>
							   <form:input type="text" class="form-control"
									data-validation="trim|required|min_length[1]|max_length[255]"
									path="pdsList[${loop.index}].title" placeholder="Title" />&nbsp;
							</td>
							<td class="row">
							   <label
								class="pull-left col-sm-6 btn btn-default btn-file">
									Browse <input style="background: #93CBF9; color: #fff"
									type="file" cssClass="form-control"
									data-validation="trim|file_allowed_type[jpeg,jpg,png,doc,docx,pdf,ppt,pptx,csv,xls,xls]"
									name="file" placeholder="Attachment" />
							  </label>
								<div class="preview col-sm-6">
									<span class="child"> 
									<a
										href="${contextPath}/upload/${pds.attachment}"
                                        title="${pds.attachment}"
										target="_blank">
										<i class="fa fa fa-cloud-download"
											aria-hidden="true"></i>
									</a>
									</span>
								</div>
							</td>
							<td>
								<button type="button" class="btn btn-danger remove_child_row">
									<i class="fa fa-trash"></i>
								</button>
							</td>
						</tr>
					</c:if>
				</c:forEach>
			</tbody>
		</table>
	</div>

