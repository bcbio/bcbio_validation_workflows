#!/usr/bin/env python
"""Upload combined CWL + JSON reference to the Cancer Genomics Cloud.

upload_to_cgc.py <project_name> <combined_cwl> <sample_json>
"""
import datetime
import os
import json
import sys

import sevenbridges as sbg

def main(project_name, cwl_file, sample_file):
    api = sbg.Api(os.environ["CGC_API_URL"], os.environ["CGC_AUTH_TOKEN"])
    project = [p for p in api.projects.query(limit=None).all() if p.id == project_name][0]

    app_id = "%s/%s" % (project_name, os.path.splitext(os.path.basename(cwl_file))[0].replace("-standalone", ""))
    with open(cwl_file) as in_handle:
        cwl = json.load(in_handle)
    app = api.apps.install_app(id=app_id, raw=cwl)

    with open(sample_file) as in_handle:
        inputs = json.load(in_handle)
    current_time = datetime.now().strftime("%m-%d-%Y_%H-%M-%S")
    task_name = "%s_%s" % (os.path.basename(app_id, current_time))
    task = api.tasks.create(name=task_name, project=project.id, app=app.id, inputs=inputs, run=False)

if __name__ == "__main__":
    main(*sys.argv[1:])



files = list(api.files.query(project).all())

for api_file in files:
    print(api_file.name, api_file.id)
