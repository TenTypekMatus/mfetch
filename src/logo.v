[translated]
module logo

struct Lldiv_t { 
	quot i64
	rem i64
}
struct Random_data { 
	fptr &int
	rptr &int
	state &int
	rand_type int
	rand_deg int
	rand_sep int
	end_ptr &int
}
struct Drand48_data { 
	__x [3]u16
	__old_x [3]u16
	__c u16
	__init u16
	__a i64
}
struct FFstrbuf { 
	allocated u32
	length u32
	chars &i8
}
struct FFlist { 
	data &i8
	elementSize u32
	length u32
	capacity u32
}
struct FFPlatform { 
	homeDir FFstrbuf
	cacheDir FFstrbuf
	configDirs FFlist
	dataDirs FFlist
	userName FFstrbuf
	hostName FFstrbuf
	domainName FFstrbuf
	userShell FFstrbuf
	systemName FFstrbuf
	systemRelease FFstrbuf
	systemVersion FFstrbuf
	systemArchitecture FFstrbuf
}
enum FFLogoType {
	ff_logo_type_auto
	ff_logo_type_builtin
	ff_logo_type_file
	ff_logo_type_file_raw
	ff_logo_type_data
	ff_logo_type_data_raw
	ff_logo_type_image_sixel
	ff_logo_type_image_kitty
	ff_logo_type_image_iterm
	ff_logo_type_image_chafa
	ff_logo_type_image_raw
	ff_logo_type_none
}

enum FFSoundType {
	ff_sound_type_main
	ff_sound_type_active
	ff_sound_type_all
}

enum FFLocalIpCompactType {
	ff_localip_compact_type_none
	ff_localip_compact_type_multiline
	ff_localip_compact_type_oneline
}

enum FFBinaryPrefixType {
	ff_binary_prefix_type_iec
	ff_binary_prefix_type_si
	ff_binary_prefix_type_jedec
}

enum FFGLType {
	ff_gl_type_auto
	ff_gl_type_egl
	ff_gl_type_glx
	ff_gl_type_osmesa
}

struct FFModuleArgs { 
	key FFstrbuf
	outputFormat FFstrbuf
	errorFormat FFstrbuf
}
struct FFconfig { 
	logo (unnamed at ./fastfetch.h
	colorKeys FFstrbuf
	colorTitle FFstrbuf
	separator FFstrbuf
	showErrors bool
	recache bool
	allowSlowOperations bool
	disableLinewrap bool
	hideCursor bool
	escapeBedrock bool
	binaryPrefixType FFBinaryPrefixType
	glType FFGLType
	pipe bool
	multithreading bool
	stat bool
	os FFModuleArgs
	host FFModuleArgs
	bios FFModuleArgs
	board FFModuleArgs
	brightness FFModuleArgs
	chassis FFModuleArgs
	kernel FFModuleArgs
	uptime FFModuleArgs
	processes FFModuleArgs
	packages FFModuleArgs
	shell FFModuleArgs
	display FFModuleArgs
	de FFModuleArgs
	wifi FFModuleArgs
	wm FFModuleArgs
	wmTheme FFModuleArgs
	theme FFModuleArgs
	icons FFModuleArgs
	font FFModuleArgs
	cursor FFModuleArgs
	terminal FFModuleArgs
	terminalFont FFModuleArgs
	cpu FFModuleArgs
	cpuUsage FFModuleArgs
	gpu FFModuleArgs
	memory FFModuleArgs
	swap FFModuleArgs
	disk FFModuleArgs
	battery FFModuleArgs
	powerAdapter FFModuleArgs
	locale FFModuleArgs
	localIP FFModuleArgs
	publicIP FFModuleArgs
	weather FFModuleArgs
	player FFModuleArgs
	media FFModuleArgs
	dateTime FFModuleArgs
	date FFModuleArgs
	time FFModuleArgs
	vulkan FFModuleArgs
	openGL FFModuleArgs
	openCL FFModuleArgs
	users FFModuleArgs
	bluetooth FFModuleArgs
	sound FFModuleArgs
	gamepad FFModuleArgs
	libPCI FFstrbuf
	libVulkan FFstrbuf
	libWayland FFstrbuf
	libXcbRandr FFstrbuf
	libXcb FFstrbuf
	libXrandr FFstrbuf
	libX11 FFstrbuf
	libGIO FFstrbuf
	libDConf FFstrbuf
	libDBus FFstrbuf
	libXFConf FFstrbuf
	libSQLite3 FFstrbuf
	librpm FFstrbuf
	libImageMagick FFstrbuf
	libZ FFstrbuf
	libChafa FFstrbuf
	libEGL FFstrbuf
	libGLX FFstrbuf
	libOSMesa FFstrbuf
	libOpenCL FFstrbuf
	libcJSON FFstrbuf
	libfreetype FFstrbuf
	libPulse FFstrbuf
	libwlanapi FFstrbuf
	libnm FFstrbuf
	cpuTemp bool
	gpuTemp bool
	batteryTemp bool
	gpuHideIntegrated bool
	gpuHideDiscrete bool
	titleFQDN bool
	shellVersion bool
	terminalVersion bool
	diskFolders FFstrbuf
	diskShowRemovable bool
	diskShowHidden bool
	diskShowUnknown bool
	diskShowSubvolumes bool
	bluetoothShowDisconnected bool
	batteryDir FFstrbuf
	separatorString FFstrbuf
	localIpShowLoop bool
	localIpV6First bool
	localIpShowIpV4 bool
	localIpShowIpV6 bool
	localIpNamePrefix FFstrbuf
	localIpCompactType FFLocalIpCompactType
	publicIpUrl FFstrbuf
	publicIpTimeout u32
	weatherOutputFormat FFstrbuf
	weatherTimeout u32
	soundType FFSoundType
	osFile FFstrbuf
	playerName FFstrbuf
	percentType u32
	commandShell FFstrbuf
	commandKeys FFlist
	commandTexts FFlist
}
struct FFstate { 
	logoWidth u32
	logoHeight u32
	keysHeight u32
	platform FFPlatform
}
struct FFinstance { 
	config FFconfig
	state FFstate
}
fn C.ffLogoPrint(instance &FFinstance) 

pub fn fflogoprint(instance &FFinstance)  {
	C.ffLogoPrint(instance)
}

struct FFlogo { 
	data &i8
	names &&u8
	builtinColors &&u8
	colorKeys &i8
	colorTitle &i8
}
type GetLogoMethod = fn () &FFlogo
fn C.ffLogoPrintChars(instance &FFinstance, data &i8, docolorreplacement bool) 

pub fn fflogoprintchars(instance &FFinstance, data &i8, docolorreplacement bool)  {
	C.ffLogoPrintChars(instance, data, docolorreplacement)
}

fn C.ffLogoBuiltinGetUnknown() &FFlogo

pub fn fflogobuiltingetunknown() &FFlogo {
	return C.ffLogoBuiltinGetUnknown()
}

fn C.ffLogoBuiltinGetAll() &GetLogoMethod

pub fn fflogobuiltingetall() &GetLogoMethod {
	return C.ffLogoBuiltinGetAll()
}

fn C.ffLogoPrintImageIfExists(instance &FFinstance, type_ FFLogoType, printerror bool) bool

pub fn fflogoprintimageifexists(instance &FFinstance, type_ FFLogoType, printerror bool) bool {
	return C.ffLogoPrintImageIfExists(instance, type_, printerror)
}

