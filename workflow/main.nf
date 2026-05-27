nextflow.enable.dsl=2

process TEST_PROCESS {

    publishDir '../results/test', mode: 'copy'

    output:
    path "test_output.txt"

    script:
    """
    echo "AutoRNASeq Pipeline Initialized Successfully" > test_output.txt
    """
}

workflow {
    TEST_PROCESS()
}
