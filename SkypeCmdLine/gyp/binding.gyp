{
	"targets": [{
		"target_name": "SkypeCmdLine",
		"cflags": ["-Wall",
		'/MP1',
		'/EHsc'],
		'xcode_settings': {
			'OTHER_CFLAGS': ['-stdlib=libc++'],
			
		},
		'conditions': [['OS=="mac"',
		{
			'xcode_settings': {
				'GCC_ENABLE_CPP_EXCEPTIONS': 'YES',
				'GCC_ENABLE_CPP_RTTI': 'YES'
			},
			"direct_dependent_settings": {

				"defines": ["BUILDING_NODE_EXTENSION"]},
			"libraries": [
			"Foundation.framework",
			"/Users/admin/Desktop/SkypeTest/SkypeCmdLine/SkypeCmdLine/Skype.framework/Skype"
			],
			"mac_framework_dirs":["/Users/admin/Desktop/SkypeTest/SkypeCmdLine/SkypeCmdLine/Skype.framework/"],
			
			"sources": ["../SkypeCmdLine/CPPSkypeAPIWrapper.cpp",
			"../SkypeCmdLine/CPPWrapper.mm",
			"../SkypeCmdLine/CSkypeCommandWrapper.mm",
			"../SkypeCmdLine/main.cpp",
			"../SkypeCmdLine/SkypeController.m",
			],
			
		}],
		]
	}]
}