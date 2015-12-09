IDS, = glob_wildcards("{id}.fastq")

rule all:
  input:
    expand("{id}_fastqc.zip", id=IDS)

rule fastqc:
  input:
    "{d1}.fastq"
  output:
    "{d1}_fastqc.zip"
  shell:
    "fastqc {input}"
