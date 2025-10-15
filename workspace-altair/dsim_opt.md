
Altair tool usage: dsim [option(s)] [file(s)]

valid options:

=============================== General options ===============================

  -error MsgName                 Promote severity of MsgName (or "info" / "warning") to the "error" level
  -help                          Print summary of generally available command line options
  -info MsgName                  Demote severity of MsgName (or "warning" / "error") to the "info" level
  -io_dir ...                    Record read/written files and put reports in given directory.
  -l dsim.log                    Specify log file (compile/run)
  -meter-env-vars ...            Specify environment variables, an optional values, to pass to licensing system
  -repro dsim.env                Reproduce compile/run from file
  -suppress MsgName              Suppress emission of MsgName (or "info" / "warning" / "error")
  -warn MsgName                  Change severity of MsgName (or "info" / "error") to the "warning" level

=================== Classic Verilog compile-time arguments ====================

  +define+name[=value]...        Define macros
  -gen-proto                     Generate prototypes for VHDL direct instantiation
  +ignore+item[+...]             Set 'item as ignored if it is not defined or a supported directive
  +incdir+dir[+...]              Set search path for include files
  +libext+.v[+...]               Set extension(s) for library files
  -v lib.v                       Set library file to search for modules
  -y dir                         Set directory to search for modules

============================= Manifest arguments ==============================

  -f manifest.f                  Read options relative to invocation directory
  -F manifest.f                  Read options relative to manifest file

==================== DSim-specific compile-time arguments =====================

  +acc[+rwcbfsWF]                Generate support for waveform dump, VPI, and toggle coverage
  -acc-specs file                Specify file from which detailed +acc specs are read
  -all-class-spec                Create default class specializations
  -all-pkgs                      Compile all packages, even if unreferenced
  -allow-ext-vif                 Allow use of implicitly-specialized interfaces as virtual interfaces
  -allow-fwd-pkg                 Allow references to items in packages declared later in the code
  -allow-int-enum-assign         Allow assignment from integers to enums without explicit cast
  -allow-self-vif                Allow use of bare interface identifier as self virtual interface reference
  -allow-string-int-assign       Allow assignment between strings and integers without explicit cast
  -build-all                     Build all modules (not incremental)
  -c-opts options                Additional options to pass to the C compiler.
  -cc cmd                        The C/C++ compiler (default: gcc)
  -cc-verbose                    Elevate verbosity when compiling C/C++ files
  -comp-maxdelays                Compile maximum delays
  -comp-mindelays                Compile minimum delays
  -comp-typdelays                Compile typical delays
  -compile-top name              Specify top-level module(s) to compile and optionally enable at run time
  -debug-verbose ...             Verbose debugging information for pp=pre-processing lib=libmap, hier=module, config and instance hierarchy
  -dedupe-all                    Force deduplication flow for all non-library cells
  -define name[=value]           name...:Define macros
  -defparam name=value           Override parameters for top-level modules or paths
  +delay_mode_distributed        Remove path delays simulate with distributed delays
  +delay_mode_path               For modules with path delays, remove distributed delays simulate with path delays
  +delay_mode_unit               Use 1 time unit for distributed delays & remove path delays and timing checks
  +delay_mode_zero               Remove distributed delays, path delays and timing checks
  -dpiheader ...                 Generate C header for DPI export
  -expr-cov-row-limit n           Set row limit for focused expression coverage (default: 256)
  -g                             Generate info for GDB debugging
  -gen-profile                   Instrument code to track call counts when profiling
  -genimage image                Generate compiled code; do not run
  -heed-synth-on-off             respect synthesis translate_off/on in comments
  -implicit-bitstream-assign     Allow assignment between bitstream types without explicit cast
  -incdir dir[...]               Set search path for include files
  -initial-var-assign            Force Verilog-2005 semantics for variable initialization in SystemVerilog
  -int-time-literal              Treat time literals as integers where possible
  -j N                           Specify number of parallel compile jobs (default: 1)
  -L ...                         Compiled library search order
  -ld-opts options               Additional options to pass to the linker.
  -lib name                      Sets default design library name (default: work)
  -libmap name                   Specify name of lib.map file
  -max-inst-depth n               Specify maximum depth of instance tree (default: DEFAULT_INST_DEPTH)
  -no-incr-compile               Do not perform overhead tasks required for incremental compile
  -no-sva                        Disables concurrent assertions
  -nonegtchk                     Turn off negative timing check limits by setting negatives to 0
  +nonegtchk                     Turn off negative timing check limits by setting negatives to 0
  -noopt                         Disable high-level optimizations
  -noopt-comb-shadow             Disable combinational shadowing
  -nospecify                     Turn off specify blocks, including timing checks, excluding specparams
  +nospecify                     Turn off specify blocks, including timing checks, excluding specparams
  -notimingchecks                Turn off timing checks
  +notimingchecks                Turn off timing checks
  -opt-comb-glitch               Enable combinational glitch mitigation
  -opt-switch-allow-delay        Allow delays on switch-optimized devices
  -separate-unit-scopes          Use a compilation-unit scope per file
  -seq-udp-nba-region            Schedule an update of a sequential UDP output into the NBA region (default Active)
  -shared-unit-scope             Use a shared compilation-unit scope
  -show-ld                       Show linker command
  -sv                            Make -sv20XX options apply to all files regardless of suffix
  -sv2005                        Treat SystemVerilog-2005 keywords as reserved in .sv files
  -sv2009                        Treat SystemVerilog-2009 keywords as reserved in .sv files
  -sv2012                        Treat SystemVerilog-2012 keywords as reserved in .sv files (default)
  -sv2017                        Treat SystemVerilog-2017 keywords as reserved in .sv files
  -sysvlog-ext .ext[,...]        Specify extensions for SystemVerilog files (default:.sv)
  -timescale 1ns/1ps             Set default timescale (default: 1ns/1ns)
  -top name                      Specify top-level module(s); default is to use LRM procedure
  -vhdl-no-ov-chk                Disable VHDL arithmetic overflow checking (analysis and code generation)
  -vlog-ext .ext[,...]           Specify extensions for Verilog files (default:)
  -vlog1995                      Treat only Verilog-1995 keywords as reserved in non-.sv files
  -vlog2001                      Treat Verilog-2001 keywords as reserved in non-.sv files
  -vlog2005                      Treat Verilog-2005 keywords as reserved in non-.sv files (default)
  -vlog_sv2005                   Treat SystemVerilog-2005 keywords as reserved in non-.sv files
  -vlog_sv2009                   Treat SystemVerilog-2009 keywords as reserved in non-.sv files
  -vlog_sv2012                   Treat SystemVerilog-2012 keywords as reserved in non-.sv files

====================== Options for both compile and run =======================

  -code-cov ...                  Enables coverage for b[lock], e[xpression], t[oggle] or a[ll] code coverage features
  -code-cov-scope-specs file     Specifies a file which indicates the detailed scopes for code coverage
  -exit-on-error n               Terminate the execution after n errors (default: no limit)
  +nosdf                         Turn off sdf annotation
  -nosdf                         Turn off sdf annotation
  -pli_lib libpli.so             Load PLI shared library
  -sdf-fa-keywords               Treat SDF forward annotation keywords as reserved in files read with $sdf_annotate
  -uvm indicator                 Incorporate the indicated UVM package. Provide a version, a custom path, or 'default' . Explicit version or path are recommended
  -version                       Print version string
  -version-verbose               Print verbose version string
  -work dsim_work                Specify directory to create to hold intermediate build files

============================= Run-time arguments ==============================

  -cov-db metrics.db             Specify coverage database file
  -cs-array-max n                Set max value for randomized array.size (default: 1000000)
  -cs-randc-max n                Set max number of bits in randc variables (default: 16)
  -cs-use-bdd                    Use BDD constraint solver
  -cs-use-sat                    Use SAT constraint solver (default)
  -debug-resolve-end time        End net resolver debug at given time (default: end of simulation)
  -debug-resolve-start time      Start net resolver debug at given time (default: 0)
  -debug-sched-end time          End scheduler debug at given time (default: end of simulation)
  -debug-sched-start time        Start scheduler debug at given time (default: 0)
  -debug-toggle-cov              Debug toggle coverage
  -debug-vpi                     Log illegal/unsupported VPI calls
  -dump-agg                      Dump aggregates (arrays/structs)
  -dump-end time                 End wave dump at given time (default: end of simulation)
  -dump-start time               Start wave dump at given time (default: 0)
  -dump-vcd-9s                   Do not coerce VHDL std_logic items to 4-state in VCD
  -fcov-save-empty-bins          Record the existance of empty bins (often artifacts of an ignore directive) in the coverage database
  -heartbeat time                Enable heartbeat messages (default: none)
  -image name                    Run previously compiled image
  -iter-limit n                  Set scheduler iteration limit to detect infinite zero-delay loops (default: 1000000)
  -limit-enum-bins               Subject enum coverage bins to auto_bin_max
  -linebuf                       Force line-buffered stdout
  -maxdelays                     Use maximum delays
  -mindelays                     Use minimum delays
  +multisource_int_delays        Turns on interconnect multisource and pulse handling with SDF annotation
  -no-cs-range                   Disable range analysis recoding
  -no-demangle                   Do not demangle SV function names in runtime logs
  -no-fcov                       Disable functional coverage collection
  -no-linebuf                    Do not force line-buffered stdout
  -no_tchk_msg                   Turn off timing check violation messages, notifier still toggles
  +no_tchk_msg                   Turn off timing check violation messages, notifier still toggles
  +nonotifier                    Turn off timing check notifier toggling
  -nonotifier                    Turn off timing check notifier toggling
  -noshowcancelled               Do not show negative pulses
  -ntcnotchk                     Turn off timing checks, however delayed signals wrt negative timing checks
  +ntcnotchk                     Turn off timing checks, however delayed signals wrt negative timing checks
  -override-finish-completion n  Override the diagnostics type for $finish by 0, 1 or 2
  -pathpulse                     Filters pulses using $PATHPULSE specparams
  -profile ...                   Enable time profiling
  -profile-end time              End profiling at given time (default: end of simulation)
  -profile-start time            Start profiling at given time (default: 0)
  -pulse_e n                     Set percent of module path delay for error limit (default: 100)
  -pulse_e-no-cancelled-msg      Turn off warnings when negative pulses are cancelled
  -pulse_e-no-warn-msg           Turn off warnings when pulses cause error state
  -pulse_e-ondetect              Indicate pulse errors on detection
  -pulse_e-onevent               Indicate pulse errors on event
  -pulse_r n                     Set percent of module path delay for reject limit (default: 100)
  -reseed time=seed              Reset RNGs with a new seed at start of given time
  -run-top name                  Enable top-level module(s) at run time
  -run-until time                Run until given time (default: no limit)
  -sdf-verbose                   Log SDF annotation information about all errors
  -showcancelled                 Show negative pulses as X
  -sig-xpose                     Enable X detection
  -sig-xpose-start time          Enable X detection at given time
  -specify-unit unit              Override module path delays with a unit (if no unit given the option is ignored)
  -specify-zero                  Overrides specify path delays with zero unless annotated by SDF
  -sv_lib libdpi.so              Load DPI shared library
  -sv_seed n                     SystemVerilog random seed. Specify n as a hex number or 'random'. (default: 1)
  -tchk_msg_start time           Start timing check violation messages at time (default: 1)
  -timingcheck-specs file        Specifies a file from which detailed timing check specs are read
  -trace-dpi                     Trace DPI library loading
  -trace-vpi                     Log all VPI calls
  +transport_path_delays         Transmit pulses using pulse limits = 0, unless otherwise filtered
  -try-all-soft-first            Try all soft constraints prior to binary search
  -typdelays                     Use typical delays (default)
  -vacuous                       Execute action blocks for assertions on vacuous success
  -wave-scope-specs file         Specifies a file which indicates the detailed scopes to dump
  -waves file.vcd                Enable wave dump to file.vcd; +acc is required at compile time
  -wildcard-limit n              Set limit on number of ranges created when expanding wildcard coverage bins (default: 1000)
  -write-sql                     Write coverage as SQLite database

