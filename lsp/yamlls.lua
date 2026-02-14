return {
    cmd = { 'yaml-language-server', '--stdio' },
    filetypes = { 'yaml', 'yaml.docker-compose' },
    root_markers = {
        '.git',
    },
    settings = {
        yaml = {
            schemas = {
                ['https://json.schemastore.org/github-workflow.json'] = '/.github/workflows/*',
                ['https://raw.githubusercontent.com/compose-spec/compose-spec/master/schema/compose-spec.json'] = {
                    'docker-compose*.yml',
                    'docker-compose*.yaml',
                    'compose*.yml',
                    'compose*.yaml',
                },
            },
            validate = true,
            completion = true,
            hover = true,
        },
    },
}
