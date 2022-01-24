#!/usr/bin/python3

# Tool to regenerate existing framework CSV models.

from pathlib import Path
import json
import os
import requests
import shutil
import subprocess
import tempfile


lgtmSlugToModelFile = {
    # "apache/commons-beanutils": "java/ql/lib/semmle/code/java/frameworks/apache/BeanUtilsGenerated.qll",
    # "apache/commons-codec": "java/ql/lib/semmle/code/java/frameworks/apache/CodecGenerated.qll",
    # "apache/commons-lang": "java/ql/lib/semmle/code/java/frameworks/apache/Lang3Generated.qll",
    "apache/commons-io": "java/ql/lib/semmle/code/java/frameworks/apache/IoGenerated.qll",
}


def downloadLgtmDatabase(lgtmSlug):
    r = requests.get("https://lgtm.com/api/v1.0/projects/g/" + lgtmSlug)
    projectId = str(json.loads(r.text)["id"])
    shortname = lgtmSlug.replace("/", "_")
    dbArchive = tmpDir + "/" + shortname + ".zip"
    print("Downloading " + dbArchive)
    r = requests.get("https://lgtm.com/api/v1.0/snapshots/" +
                     projectId + "/java")
    with open(dbArchive, "wb") as f:
        f.write(r.content)
    print("Unzipping " + dbArchive)
    targetDbPath = tmpDir + "lib-dbs/" + shortname
    import zipfile
    with zipfile.ZipFile(dbArchive, "r") as zip_ref:
        zip_ref.extractall(targetDbPath)
    return targetDbPath + "/" + os.listdir(targetDbPath)[0]


def findGitRoot():
    return subprocess.check_output(
        ["git", "rev-parse", "--show-toplevel"]).decode("utf-8").strip()


for lgtmSlug, modelFile in lgtmSlugToModelFile.items():
    tmpDir = tempfile.mkdtemp()
    print("============================================================")
    print("Generating models for " + lgtmSlug)
    print("============================================================")
    extractedDb = downloadLgtmDatabase(lgtmSlug)
    codeQlRoot = findGitRoot()
    targetModel = codeQlRoot + "/" + modelFile
    subprocess.check_call([codeQlRoot + "/java/ql/src/utils/model-generator/GenerateFlowModel.py", extractedDb,
                           targetModel])
    print("Regenerated " + targetModel)
    shutil.rmtree(tmpDir)
