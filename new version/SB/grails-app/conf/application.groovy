

// Added by the Spring Security Core plugin:
grails.plugin.springsecurity.userLookup.userDomainClassName = 'com.login.User'
grails.plugin.springsecurity.userLookup.authorityJoinClassName = 'com.login.UserRole'
grails.plugin.springsecurity.authority.className = 'com.login.Role'
grails.plugin.springsecurity.providerManager.eraseCredentialsAfterAuthentication = 'false'
grails.plugin.springsecurity.controllerAnnotations.staticRules = [
	[pattern: '/',               access: ['permitAll']],
	[pattern: '/error',          access: ['permitAll']],
    [pattern: '/index',          access: ['permitAll']],
    [pattern: '/index.gsp',      access: ['permitAll']],
	[pattern: '/**/logoff',      access: ['permitAll']],
	[pattern: '/cliente',      access: ['permitAll']],
	[pattern: '/cliente/**',      access: ['permitAll']],
	[pattern: '/contacto',      access: ['permitAll']],
	[pattern: '/contacto/**',      access: ['permitAll']],
	[pattern: '/motivoSalida',      access: ['permitAll']],
	[pattern: '/motivoSalida/**',      access: ['permitAll']],
	[pattern: '/autor',      access: ['permitAll']],
	[pattern: '/autor/**',      access: ['permitAll']],
	[pattern: '/salida',      access: ['permitAll']],
	[pattern: '/sa/**lida',      access: ['permitAll']],
	[pattern: '/salida',      access: ['permitAll']],
	[pattern: '/salida/**',      access: ['permitAll']],
	[pattern: '/shutdown',       access: ['permitAll']],
	[pattern: '/assets/**',      access: ['permitAll']],
	[pattern: '/**/js/**',       access: ['permitAll']],
	[pattern: '/**/css/**',      access: ['permitAll']],
	[pattern: '/**/images/**',   access: ['permitAll']],
	[pattern: '/**/favicon.ico', access: ['permitAll']]
]

grails.plugin.springsecurity.filterChain.chainMap = [
	[pattern: '/assets/**',      filters: 'none'],
	[pattern: '/**/js/**',       filters: 'none'],
	[pattern: '/**/css/**',      filters: 'none'],
	[pattern: '/**/images/**',   filters: 'none'],
	[pattern: '/**/favicon.ico', filters: 'none'],
	[pattern: '/**',             filters: 'JOINED_FILTERS']
]

grails.plugin.springsecurity.providerNames = [
		'myAuthenticationProvider',
		'anonymousAuthenticationProvider',
		'rememberMeAuthenticationProvider']

//grails.plugin.springsecurity.rememberMe.persistent = true
//grails.plugin.springsecurity.rememberMe.persistentToken.domainClassName = 'com.login.PersistentLogin'

