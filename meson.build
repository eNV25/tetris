project(
	'tetris', 'c',
	version: '7.0',
)

cpp_flags = ['-D_GNU_SOURCE', '-D__dead=', '-DOXTABS=XTABS', '-Dunveil(...)=0', '-Dpledge(...)=0']

c_flags = ['-Wno-format-truncation']

add_project_arguments(cpp_flags, c_flags, language: 'c')

executable(
	'tetris',
	sources: ['input.c', 'scores.c', 'screen.c', 'shapes.c', 'tetris.c'],
	dependencies: [
		dependency('ncurses'),
		dependency('libbsd-overlay'),
	],
	install: true,
)

install_man('tetris.6')
