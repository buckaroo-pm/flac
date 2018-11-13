macos_flags = [
  '-DHAVE_SYS_PARAM_H',
]

windows_sources = [
  'src/libFLAC/windows_unicode_filenames.c',
]

cxx_library(
  name = 'flac',
  header_namespace = '',
  exported_headers = subdir_glob([
    ('include', 'FLAC/**/*.h'),
    ('include', 'share/**/*.h'),
    ('src/libFLAC/include', '**/*.h'),
  ]),
  srcs = glob([
    'src/libFLAC/**/*.c', 
  ],
  excludes = windows_sources),
  compiler_flags = [
    '-std=gnu99',
    '-DPACKAGE_VERSION="1.3.2"',
    '-DFLAC__HAS_OGG=1',
    '-DHAVE_LROUND',
  ],
  platform_compiler_flags = [
    ('default', macos_flags),
    ('^macos.*', macos_flags),
  ], 
  deps = [
    'buckaroo.github.buckaroo-pm.xiph-ogg//:ogg', 
  ], 
  visibility = [
    'PUBLIC',
  ],
)

cxx_library(
  name = 'flac++',
  header_namespace = '',
  exported_headers = subdir_glob([
    ('include', 'FLAC++/**/*.h'),
    # ('include', 'share/**/*.h'),
    # ('src/libFLAC++/include', '**/*.h'),
  ]),
  srcs = glob([
    'src/libFLAC++/**/*.cpp',
  ],
  excludes = windows_sources),
  visibility = [
    'PUBLIC',
  ],
  deps = [
    '//:flac',
  ],
)
