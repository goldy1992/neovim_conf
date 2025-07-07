local config = {
    cmd = {'C:\\Dev\\Workspace\\eclipse.jdt.ls\\org.eclipse.jdt.ls.product\\target\\repository\\bin\\jdtls.bat'},
    root_dir = vim.fs.dirname(vim.fs.find({'gradlew', '.git', 'mvnw'}, { upward = true })[1]),
    settings = {
	java = {
	    configuration = {
	    
		runtimes = {
		    {
			name = "JDK8",
			path = "C:\\Dev\\Apps\\java\\jdk8u452-9"
		    }

		}
	    }
	}
    }
}
require('jdtls').start_or_attach(config)
