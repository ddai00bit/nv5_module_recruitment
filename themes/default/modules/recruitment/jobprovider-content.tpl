<!-- BEGIN: main -->

<!-- BEGIN: error -->
<div class="alert alert-warning">
	{ERROR}
</div>
<!-- END: error -->

<form class="form-horizontal" action="{NV_BASE_SITEURL}index.php?{NV_LANG_VARIABLE}={NV_LANG_DATA}&amp;{NV_NAME_VARIABLE}={MODULE_NAME}&amp;{NV_OP_VARIABLE}={OP}" method="post" enctype="multipart/form-data">
	<div class="panel panel-default">
		<div class="panel-heading">
			{LANG.jobprovider_info}
		</div>
		<div class="panel-body">
			<input type="hidden" name="id" value="{ROW.id}" />
			<div class="form-group">
				<label class="col-sm-5 col-md-4 control-label"><strong>{LANG.company_name}</strong> <span class="red">(*)</span></label>
				<div class="col-sm-19 col-md-20">
					<input class="form-control" type="text" name="title" value="{ROW.title}" required="required" oninvalid="setCustomValidity( nv_required )" oninput="setCustomValidity('')" />
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-5 col-md-4 text-right"><strong>{LANG.jobs}</strong> <span class="red">(*)</span></label>
				<div class="col-sm-19 col-md-20">
					<div style="height: 200px; overflow: auto; border: solid 1px #dddddd; padding: 10px">
						<!-- BEGIN: jobs -->
						<label class="show none_weight"><input type="checkbox" name="jobs[]" value="{JOBS.id}" {JOBS.checked} />{JOBS.title}</label>
						<!-- END: jobs -->
					</div>
				</div>
			</div>
            <div class="form-group">
                <label class="col-sm-5 col-md-4 control-label"><strong>{LANG.taxcode}</strong></label>
                <div class="col-sm-19 col-md-20">
                    <input class="form-control" type="text" name="taxcode" value="{ROW.taxcode}" />
                </div>
            </div>
			<div class="form-group">
				<label class="col-sm-5 col-md-4 control-label"><strong>{LANG.email}</strong> <span class="red">(*)</span></label>
				<div class="col-sm-8 col-md-9">
					<input class="form-control" type="email" name="email" value="{ROW.email}" oninvalid="setCustomValidity( nv_email )" oninput="setCustomValidity('')" required="required" />
				</div>
				<label class="col-sm-4 col-md-4 control-label"><strong>{LANG.fax}</strong></label>
				<div class="col-sm-6 col-md-7">
					<input class="form-control" type="text" name="fax" value="{ROW.fax}" />
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-5 col-md-4 control-label"><strong>{LANG.website}</strong></label>
				<div class="col-sm-8 col-md-9">
					<input class="form-control" type="url" name="website" value="{ROW.website}" oninvalid="setCustomValidity( nv_url )" oninput="setCustomValidity('')" />
				</div>
				<label class="col-sm-4 col-md-4 control-label"><strong>{LANG.agent}</strong></label>
				<div class="col-sm-6 col-md-7">
					<input class="form-control" type="text" name="agent" value="{ROW.agent}" pattern="^[0-9]*$"  oninvalid="setCustomValidity( nv_digits )" oninput="setCustomValidity('')" />
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-5 col-md-4 control-label"><strong>Logo</strong></label>
				<div class="col-sm-19 col-md-20">
					<div class="m-bottom">
						<div class="input-group">
							<input type="text" class="form-control" id="file_name" value="{ROW.file_name}" disabled>
							<span class="input-group-btn">
								<button class="btn btn-default" onclick="$('#upload_fileupload').click();" type="button">
									<em class="fa fa-folder-open-o fa-fix">&nbsp;</em> {LANG.file_selectfile}
								</button> </span>
						</div>
						<input type="file" name="file_name" id="upload_fileupload" style="display: none" />
					</div>
					<!-- BEGIN: image -->
					<a href="#" title=""><img src="{ROW.image}" class="img-thumbnail" width="150" onclick='modalShow("", "<img src=" + $(this).attr("src") + " />" );' /></a>
					<!-- END: image -->
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-5 col-md-4 control-label"><strong>{LANG.descripion}</strong></label>
				<div class="col-sm-19 col-md-20">
					{ROW.descripion}
				</div>
			</div>
		</div>
	</div>
    <div class="panel panel-default">
        <div class="panel-heading">
            {LANG.location}
        </div>
        <div class="panel-body">
            <div class="form-group">
                <label class="col-sm-5 col-md-4 control-label"><strong>{LANG.province}</strong></label>
                <div class="col-sm-19 col-md-20">
                    {LOCATION}
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-5 col-md-4 control-label"><strong>{LANG.address}</strong></label>
                <div class="col-sm-19 col-md-20">
                    <input class="form-control" type="text" name="address" value="{ROW.address}" />
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-5 col-md-4 control-label"><strong>{LANG.maps}</strong></label>
                <div class="col-sm-19 col-md-20">
                    <input type="text" class="form-control" name="maps_address" id="maps_address" value="" placeholder="{LANG.location_search}">
                    <script type="text/javascript" src="{NV_BASE_SITEURL}themes/default/js/recruitment-google_maps.js"></script>
                    <div id="maps_maparea">
                        <div id="maps_mapcanvas" style="margin-top:10px;" class="m-bottom"></div>
                        <div class="row form-group">
                            <div class="col-xs-6">
                                <div class="input-group">
                                    <span class="input-group-addon">L</span>
                                    <input type="text" class="form-control" name="maps[maps_mapcenterlat]" id="maps_mapcenterlat" value="{ROW.maps.maps_mapcenterlat}" readonly="readonly">
                                </div>
                            </div>
                            <div class="col-xs-6">
                                <div class="input-group">
                                    <span class="input-group-addon">N</span>
                                    <input type="text" class="form-control" name="maps[maps_mapcenterlng]" id="maps_mapcenterlng" value="{ROW.maps.maps_mapcenterlng}" readonly="readonly">
                                </div>
                            </div>
                            <div class="col-xs-6">
                                <div class="input-group">
                                    <span class="input-group-addon">L</span>
                                    <input type="text" class="form-control" name="maps[maps_maplat]" id="maps_maplat" value="{ROW.maps.maps_maplat}" readonly="readonly">
                                </div>
                            </div>
                            <div class="col-xs-6">
                                <div class="input-group">
                                    <span class="input-group-addon">N</span>
                                    <input type="text" class="form-control" name="maps[maps_maplng]" id="maps_maplng" value="{ROW.maps.maps_maplng}" readonly="readonly">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="input-group">
                                    <span class="input-group-addon">Z</span>
                                    <input type="text" class="form-control" name="maps[maps_mapzoom]" id="maps_mapzoom" value="{ROW.maps.maps_mapzoom}" readonly="readonly">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
	<div class="panel panel-default">
		<div class="panel-heading">
			{LANG.jobprovider_contact_info}
		</div>
		<div class="panel-body">
			<div class="form-group">
				<label class="col-sm-5 col-md-4 control-label"><strong>{LANG.fullname}</strong> <span class="red">(*)</span></label>
				<div class="col-sm-19 col-md-20">
					<input class="form-control" type="text" name="contact_fullname" value="{ROW.contact_fullname}" required="required" oninvalid="setCustomValidity( nv_required )" oninput="setCustomValidity('')" />
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-5 col-md-4 control-label"><strong>{LANG.email}</strong> <span class="red">(*)</span></label>
				<div class="col-sm-19 col-md-20">
					<input class="form-control" type="email" name="contact_email" value="{ROW.contact_email}" oninvalid="setCustomValidity( nv_email )" oninput="setCustomValidity('')" required="required" />
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-5 col-md-4 control-label"><strong>{LANG.phone}</strong> <span class="red">(*)</span></label>
				<div class="col-sm-19 col-md-20">
					<input class="form-control" type="text" name="contact_phone" value="{ROW.contact_phone}" required="required" oninvalid="setCustomValidity( nv_required )" oninput="setCustomValidity('')" />
				</div>
			</div>
			<div class="form-group" style="text-align: center"><input class="btn btn-primary" name="submit" type="submit" value="{LANG.save}" />
			</div>

		</div>
	</div>
</form>

 
<!-- END: main -->