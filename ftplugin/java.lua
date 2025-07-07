JDK8 = "C:\\Dev\\Apps\\java\\jdk8u452-b09"
JDK21 = "C:\\Dev\\Apps\\java\\jdk-21.0.7+6"
JDTLS_PATH ="C:\\Dev\\Apps\\jdtls\\1_48_0\\" 
JDTLS_BAT_PATH = JDTLS_PATH .. "bin\\jdtls.bat"
EQUINOX_JAR = "org.eclipse.equinox.launcher_1.7.0.v20250519-0528.jar"
EQUINOX_PATH = JDTLS_PATH .. "plugins\\" .. EQUINOX_JAR
CONFIG_WIN_PATH = JDTLS_PATH .. "\\config_win"
CWD = vim.fn.getcwd()
local config = {
    cmd = { 

    -- 💀
    'java', -- or '/path/to/java21_or_newer/bin/java'
            -- depends on if `java` is in your $PATH env variable and if it points to the right version.

    '-Declipse.application=org.eclipse.jdt.ls.core.id1',
    '-Dosgi.bundles.defaultStartLevel=4',
    '-Declipse.product=org.eclipse.jdt.ls.core.product',
    '-Dlog.protocol=true',
    '-Dlog.level=ALL',
    '-Xmx1g',
    '--add-modules=ALL-SYSTEM',
    '--add-opens', 'java.base/java.util=ALL-UNNAMED',
    '--add-opens', 'java.base/java.lang=ALL-UNNAMED',

    -- 💀
    '-jar', EQUINOX_PATH,
         -- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^                                       ^^^^^^^^^^^^^^
         -- Must point to the                                                     Change this to
         -- eclipse.jdt.ls installation                                           the actual version


    -- 💀
    '-configuration', CONFIG_WIN_PATH,
                    -- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^        ^^^^^^
                    -- Must point to the                      Change to one of `linux`, `win` or `mac`
                    -- eclipse.jdt.ls installation            Depending on your system.


    -- 💀
    -- See `data directory configuration` section in the README
    '-data', CWD 

    },

    root_dir = vim.fs.dirname(vim.fs.find({'gradlew', 'gradlew.bat','.git', 'mvnw'}, { upward = true })[1]),
    settings = {
	java = {
	    configuration = {
	    
		runtimes = {
		    {
			name = "JavaSE-21",
			path = JDK21
		    },
		    {
			name = "JavaSE-1.8",
			path = JDK8
		    }

		}
	    },
	    import = {
		gradle = {
		    enabled = true,
		    java = JDK8,
		    wrapper = {
			enabled = true
		    }
		}
	    }
	}
    }
}
require('jdtls').start_or_attach(config)
