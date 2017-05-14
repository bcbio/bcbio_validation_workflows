#!/usr/bin/env python
"""Upload combined CWL + JSON reference to the Cancer Genomics Cloud.

upload_to_cgc.py <project_name> <combined_cwl> <sample_json>
"""
import datetime
import os
import json
import sys

import sevenbridges as sbg
from sevenbridges.http.advance_access import advance_access

def main(project_name, cwl_file, sample_file):
    api = sbg.Api(os.environ["CGC_API_URL"], os.environ["CGC_AUTH_TOKEN"])
    project = [p for p in api.projects.query(limit=None).all() if p.id == project_name][0]
    version = 0
    app_id = "%s/%s/%s" % (project_name, os.path.splitext(os.path.basename(cwl_file))[0].replace("-standalone", ""),
                           version)
    with open(cwl_file) as in_handle:
        cwl = json.load(in_handle)
    # _debug()
    with advance_access(api):
        app = api.apps.install_app(id=app_id, raw=cwl)

    with open(sample_file) as in_handle:
        inputs = json.load(in_handle)
    current_time = datetime.datetime.now().strftime("%m-%d-%Y_%H-%M-%S")
    task_name = "%s_%s" % (os.path.basename(app_id), current_time)
    task = api.tasks.create(name=task_name, project=project.id, app=app.id, inputs=inputs, run=False)

def _debug():
    import logging
    from httplib import HTTPConnection
    HTTPConnection.debuglevel = 2
    logging.basicConfig()
    logging.getLogger().setLevel(logging.DEBUG)
    requests_log = logging.getLogger("requests.packages.urllib3")
    requests_log.setLevel(logging.DEBUG)
    requests_log.propagate = True

def _raw_post(app_id, cwl):
    import requests
    post_request = requests.post("https://cgc-api.sbgenomics.com/v2/%s/raw" % app_id,
                                 headers={'X-SBG-Auth-Token': os.environ["CGC_AUTH_TOKEN"],
                                          'Accept': 'application/json',
                                          'Content-type': 'application/json',
                                          'X-SBG-advance-access': 'advance'},
                                 data=json.dumps(cwl))
    print(post_request)


if __name__ == "__main__":
    main(*sys.argv[1:])
